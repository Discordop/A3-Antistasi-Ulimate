/*
Author: Wurzel0701, Triada, jaj22, Spoffy, Barbolani
    Defines and executes the behaviour of AI in case of a KIA in their group

Arguments:
    <GROUP> The group of which a unit has been killed
    <OBJECT> The unit which has killed the group unit

Return Value:
    <NIL>

Scope: Server/HC
Environment: Scheduled
Public: Yes
Dependencies:
    <ARRAY> allMachineGuns
    <BOOL> haveNV
    <ARRAY> squadLeaders

Example:
[_group, _killer] spawn A3A_fnc_AIreactOnKill;
//(_x getVariable "unitType") in squadLeaders
*/

params ["_group", "_killer"];

private _enemy = objNull;
private _aliveGroupMembers = (units _group) select {[_x] call A3A_fnc_canFight};
private _unitCount = count _aliveGroupMembers;

//No group member left in fighting condition,
if(_unitCount == 0) exitWith {};

//If _killer is not set or the same side (collision for example), abort here
if((isNil "_killer") || {(isNull _killer) || {side (group _killer) == side _group}}) exitWith {};

//Call help if possible
if(_group getVariable ["canCallSupportAt", -1] < dateToNumber date) then
{
    private _supportTypes = [_group, _killer] call A3A_fnc_chooseSupport;
    if((count _supportTypes) > 0) then
    {
        //Check if we are attacking the vehicle or man
        private _enemyVehicle = objectParent _killer;
        if(isNull _enemyVehicle && {!(_killer isKindOf "Man")}) then
        {
            _enemyVehicle = _enemy;
        };
        //Call the support on the unit or its vehicle
        if(isNull _enemyVehicle) then
        {
            [_group, _supportTypes, _killer] spawn A3A_fnc_callForSupportInfantry;
        }
        else
        {
            [_group, _supportTypes, _enemyVehicle] spawn A3A_fnc_callForSupportInfantry;
        };
    };
};

{
    if (fleeing _x) then
	{
        if ([_x] call A3A_fnc_canFight) then
		{
            _enemy = _x findNearestEnemy _x;
            if (!isNull _enemy) then
			{
                if ((_x distance _enemy < 50) && (vehicle _x == _x)) then
				{
                    private _fleeChance =  if (side _x == Occupants) then {aggressionOccupants/2} else {aggressionInvaders/2};

                    if (_fleeChance < 8) then {
                        _fleeChance = 8;
                    } else {
                        if (_fleeChance > 30) then {
                            _fleeChance = 30;
                        };
                    };

                    if ((random 100) < _fleeChance) then {
                        [_x] spawn SCRT_fnc_common_panicFlee;
                    } else {
                        [_x] spawn A3A_fnc_surrenderAction;
                    };
				}
                else
				{
                    if (([primaryWeapon _x] call BIS_fnc_baseWeapon) in allMachineGuns) then
                    {
                        [_x,_enemy] call A3A_fnc_suppressingFire
                    }
                    else
                    {
                        if ((random 100) < 35) then {
                            [_x,_x,_enemy] spawn A3A_fnc_chargeWithSmoke
                        };
                    };
				};
			};
		};
	}
    else
	{
        if ([_x] call A3A_fnc_canFight) then
		{
            //check if there is at least one soldier in squad without NVG
            private _squad = units _group;
            private _noNvgIndex = _squad findIf {hmd _x == ""};

            _enemy = _x findNearestEnemy _x;
            if (!isNull _enemy) then
			{
               //machinegunner will suppress
                if (([primaryWeapon _x] call BIS_fnc_baseWeapon) in allMachineGuns) then {
                    [_x,_enemy] call A3A_fnc_suppressingFire;
                }
                else {
                    //ordinary soldier will throw smoke
                    if (sunOrMoon == 1) then {
                        if ((random 100) < 35) then {
                            [_x,_x,_enemy] spawn A3A_fnc_chargeWithSmoke;
                        };
                    } else {
                        //soldier with underbarrel launcher will launch flare if there is someone in his squad without NVG goggles, else smoke
                        if (_noNvgIndex != -1 && count (getArray (configfile >> "CfgWeapons" >> primaryWeapon _x >> "muzzles")) == 2) then {
                            [_x,_enemy] spawn A3A_fnc_useFlares;
                        } else {
                            if ((random 100) < 35) then {
                                
                                [_x,_x,_enemy] spawn A3A_fnc_chargeWithSmoke;
                            };
                        };
					};
				};
			}
            else {
                //if there is not a day, there are people in squad without NVG goggles and there are underbarrel launcher, then flares
               if ((sunOrMoon <1) && _noNvgIndex != -1 && count (getArray (configfile >> "CfgWeapons" >> primaryWeapon _x >> "muzzles")) == 2) then {
if ((hasIFA and (typeOf _x in squadLeaders)) or (count (getArray (configfile >> "CfgWeapons" >> primaryWeapon _x >> "muzzles")) == 2)) then
					{
                    [_x] call A3A_fnc_useFlares;
                    };
				};
			};

            if (random 1 < 0.5) then {
                if (count units _group > 0) then {
                    _x allowFleeing (1 -(_x skill "courage") + (_unitCount/(count units _group)));
                };
            };
		};
	};
    sleep 1 + (random 1);
} forEach _aliveGroupMembers;

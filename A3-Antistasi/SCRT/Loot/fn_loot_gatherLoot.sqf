/*
	author: Socrates
	description: Loots all the bodies and crates near the vehicle or loot crate.
	returns: nothing
*/
params ["_vehicle", "_radius", ["_overridePosition",[]]];

private _time = serverTime;

if ((_time - (_vehicle getVariable ["lastLooted", -15])) < 15) exitWith {
	if (hasInterface) then {
        {
            [localize "STR_antistasi_actions_looter_cooldown_text"] remoteExec ["systemChat", _x];
        } forEach ([_radius, _vehicle, teamPlayer] call SCRT_fnc_common_getNearPlayers);
	};
};
_vehicle setVariable ["lastLooted", _time, true];

private _supplies = [];
private _position = if (!(_overridePosition isEqualTo [])) then {_overridePosition} else {position _vehicle};

_supplies = (_position nearSupplies _radius) select {
    (_x isKindOf "Man" && !(alive _x)) || 
    {(typeOf _x) in ([CSATSurrenderCrate, NATOSurrenderCrate, "WeaponHolderSimulated", "GroundWeaponHolder", "WeaponHolder"] + arrayMoneyLand)}
};

if(count _supplies < 1) exitWith {
    {
        localize "STR_antistasi_actions_no_bodies_text" remoteExec ["systemChat", _x];
    } forEach ([_radius, _vehicle, teamPlayer] call SCRT_fnc_common_getNearPlayers);
};

private _moneyEarned = 0;

{
    _lootContainer = _x;

    _magazines = magazineCargo _lootContainer;
    if (count _magazines > 0) then {
        {
            if(_x in arrayMoney) then {
               _moneyIndex = arrayMoney find _x;
               if(_moneyIndex != -1) then {
                    _moneyEarned = _moneyEarned + (arrayMoneyAmount select _moneyIndex);
                };
            } else {
                _vehicle addMagazineCargoGlobal [_x, 1];
            };
        } forEach _magazines;
    };

    _backpacks = backpackCargo _lootContainer;
    if (count _backpacks > 0) then {
        {
            _vehicle addBackpackCargoGlobal [_x, 1];
        } forEach _backpacks;
    };

    _items = itemCargo _lootContainer;
    if (count _items > 0) then {
        {
            _vehicle addItemCargoGlobal [_x, 1];
        } forEach _items;
    };

     _weaponsWithAttachments = weaponsItems _lootContainer;
    if(count _weaponsWithAttachments > 0) then {
        {
            _vehicle addWeaponWithAttachmentsCargoGlobal [_x, 1];
        } forEach _weaponsWithAttachments;
    };

    if(_lootContainer isKindOf "Man") then {
        _body = _lootContainer;

        _assignedItems = assignedItems _body;
        if(count _assignedItems > 0) then {
            {
                _vehicle addItemCargoGlobal [_x,1];
                _body unassignItem _x;
                _body removeItem _x;
            } forEach _assignedItems;
        };

        _bodyMagazines = magazines _body;
        if (count _bodyMagazines > 0) then {
            {
                if(_x in arrayMoney) then {
                    _moneyIndex = arrayMoney find _x;
                    if(_moneyIndex != -1) then {
                        _moneyEarned = _moneyEarned + (arrayMoneyAmount select _moneyIndex);
                    };
                } else {
                    _vehicle addMagazineCargoGlobal [_x, 1];
                };
                _body removeMagazines _x;
            } forEach _bodyMagazines;
        };

        _vest = vest _body;
        if (_vest != "") then {
            _vehicle addItemCargoGlobal [_vest,1];
            removeVest _body;
        };

        _headgear = headgear _body;
        if (_headgear != "") then {
            _vehicle addItemCargoGlobal [_headgear,1];
            removeHeadgear _body;
        };

        _backpack = backpack _body;
        if (_backpack != "") then {
            _vehicle addBackpackCargoGlobal [_backpack,1];
            removeBackpackGlobal _body;
        };

        _bodyWeapons = weapons _body;
        if(count _bodyWeapons > 0) then {
            {
                
                _vehicle addWeaponCargoGlobal [_x, 1];
                _body removeWeaponGlobal _x;
            } forEach _bodyWeapons;
        };

        removeAllWeapons _body;
    };

    if !(_lootContainer isKindOf "Man") then {
        deleteVehicle _lootContainer;
    };

} forEach _supplies;


if(_moneyEarned > 0) then {
    _allPlayers = (call BIS_fnc_listPlayers) select { side _x == teamPlayer || side _x == civilian };
    _playersCount = count _allPlayers;
    
    if(_playersCount > 0) then {
        _incomePerPlayer = round((_moneyEarned / _playersCount) / 10);
        {
            [_incomePerPlayer, _x] call A3A_fnc_playerScoreAdd;
        } forEach _allPlayers;

        [localize "STR_antistasi_actions_common_notifications_money_found_title", localize "STR_antistasi_actions_common_notifications_money_found_text"] remoteExecCall ["A3A_fnc_customHint", [teamPlayer, civilian]];
    };
};

//notification on success
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "audio\lootSuccess.ogg";

playSound3D [_soundToPlay, _vehicle, false, getPosASL _vehicle, 3, 1, _radius];

{
    localize "STR_antistasi_actions_successful_loot_text" remoteExec ["systemChat", _x];
} forEach ([_radius, _vehicle, teamPlayer] call SCRT_fnc_common_getNearPlayers);
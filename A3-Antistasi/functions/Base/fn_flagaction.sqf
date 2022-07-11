private ["_flag","_typeX"];

if (!hasInterface) exitWith {};

_flag = _this select 0;
_typeX = _this select 1;

switch _typeX do
{
    case "take":
    {
        removeAllActions _flag;
        _actionX = _flag addAction ["<t>Take the Flag<t> <img image='\A3\ui_f\data\igui\cfg\actions\takeflag_ca.paa' size='1.8' shadow=2 />", A3A_fnc_mrkWIN,nil,6,true,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
        _flag setUserActionText [_actionX,"Take the Flag","<t size='2'><img image='\A3\ui_f\data\igui\cfg\actions\takeflag_ca.paa'/></t>"];
    };
    case "unit":
    {
        _flag addAction ["Unit Recruitment", {if ([player,300] call A3A_fnc_enemyNearCheck) then {["Unit Recruitment", "You cannot recruit units while there are enemies near you."] call A3A_fnc_customHint;} else { [] spawn A3A_fnc_unit_recruit; };},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4]
    };
    case "vehicle":
    {
        _flag addAction ["Buy Vehicle", {if ([player,300] call A3A_fnc_enemyNearCheck) then {["Buy Vehicle", "You cannot buy vehicles while there are enemies near you."] call A3A_fnc_customHint;} else {[] call SCRT_fnc_ui_createBuyVehicleMenu}},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
    };
    case "mission":
    {
        petros addAction ["Mission Request", {CreateDialog "missionMenu";},nil,0,false,true,"","(isPlayer _this) and (vehicle _this == _this) and (_this == _this getVariable ['owner',objNull]) and (_this call A3A_fnc_isMember) and (petros == leader group petros)",4];
        if (A3A_hasCW) then {
			petros addAction [
				"Mandalorian Workshop", 
				{call SCRT_fnc_trader_tryOpenMandoWorkshopMenu},
				nil,
				5,
				false,
				true,
				"",
				"(isPlayer _this) and (vehicle _this == _this) and (_this == _this getVariable ['owner',objNull])",
				3
			];
        };
        petros addAction ["HQ Management", {
            closeDialog 0;
		    closeDialog 0;
            createDialog "commanderMenu";
            isMenuOpen = true;
            [] spawn SCRT_fnc_misc_orbitingCamera;
		    [] call SCRT_fnc_ui_populateHqMenu;
        },nil,0,false,true,"","(isPlayer _this) and (_this == theBoss) and (vehicle _this == _this) and (petros == leader group petros)", 4];
        petros addAction ["Move this asset", A3A_fnc_moveHQObject,nil,0,false,true,"","(_this == theBoss)"];
    };
    case "truckX":
    {
        actionX = _flag addAction ["<t>Transfer Ammobox to Truck<t> <img image='\A3\ui_f\data\igui\cfg\actions\unloadVehicle_ca.paa' size='1.8' shadow=2 />", A3A_fnc_transfer,nil,6,true,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])"]
    };
    case "heal":
    {
        if (player != _flag) then
        {
            _actionX = _flag addAction [format ["<t>Revive %1 </t> <img size='1.8' <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa' />",name _flag], A3A_fnc_actionRevive,nil,6,true,true,"","!(_this getVariable [""helping"",false]) and (isNull attachedTo _target)",4];
            _flag setUserActionText [_actionX,format ["Revive %1",name _flag],"<t size='2'><img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa'/></t>"];
        };
    };
    case "heal1":
    {
        if (player != _flag) then
        {
            _actionX = _flag addAction [format ["<t>Revive %1</t> <img size='1.8' <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa' />",name _flag], A3A_fnc_actionRevive,nil,6,true,false,"","!(_this getVariable [""helping"",false]) and (isNull attachedTo _target)",4];
            _flag setUserActionText [_actionX,format ["Revive %1",name _flag],"<t size='2'><img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa'/></t>"];

            _actionX = _flag addAction [format ["<t>Carry %1</t> <img image='\A3\ui_f\data\igui\cfg\actions\take_ca.paa' size='1.6' shadow=2 />",name _flag], A3A_fnc_carry,nil,5,true,false,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (isNull attachedTo _target) and !(_this getVariable [""helping"",false]);",4];
            _flag setUserActionText [_actionX,format ["Carry %1",name _flag],"<t size='2'><img image='\A3\ui_f\data\igui\cfg\actions\take_ca.paa'/></t>"];
            [_flag] call A3A_fnc_logistics_addLoadAction;
        };
    };
    case "moveS":
    {
        _flag addAction ["Move this asset", A3A_fnc_moveHQObject,nil,0,false,true,"","_this == theBoss"]
    };
    case "remove":
    {
        if (player == _flag) then
        {
            if (isNil "actionX") then
            {
                removeAllActions _flag;
                if (player == player getVariable ["owner",player]) then {[] call SA_Add_Player_Tow_Actions};
            }
            else
            {
                _flag removeAction actionX;
            };
        }
        else
        {
            removeAllActions _flag;
        };
    };
    case "refugee":
    {
        _flag addAction ["<t>Liberate</t> <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa' size='1.6' shadow=2 />", A3A_fnc_liberaterefugee,nil,6,true,true,"","(isPlayer _this) && (_this == _this getVariable ['owner',objNull]) && alive _target",4]
    };
    case "prisonerX":
    {
        _flag addAction ["<t>Liberate POW</t> <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa' size='1.6' shadow=2 />", A3A_fnc_liberatePOW,nil,6,true,true,"","(isPlayer _this) && (_this == _this getVariable ['owner',objNull]) && alive _target",4]
    };
    case "prisonerFlee":
    {
        _flag addAction ["<t>Liberate POW</t> <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa' size='1.6' shadow=2 />", A3A_fnc_liberateFlee,nil,6,true,true,"","(isPlayer _this) && (_this == _this getVariable ['owner',objNull]) && alive _target",4]
    };
    case "captureX":
    {
        // Uses the optional param to determine whether the call of captureX is a release or a recruit
        _flag addAction [format ["<t>%1</t> <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa' size='1.6' shadow=2 />", localize "STR_release_action"], { _this spawn A3A_fnc_captureX; },false,6,true,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
        _flag addAction [localize "STR_recruit_action", { _this spawn A3A_fnc_captureX; },true,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
        _flag addAction [format ["<t>%1</t> <img image='\a3\ui_f\data\IGUI\Cfg\Actions\talk_ca.paa' size='1.6' shadow=2 />", localize "STR_reveal_action"],SCRT_fnc_common_reveal,false,6,true,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
    };
    case "buildHQ":
    {
        _flag addAction ["Build HQ here", A3A_fnc_buildHQ,nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4]
    };
    case "seaport":
    {
        _flag addAction ["Buy Boat", {[vehSDKBoat] spawn A3A_fnc_addFIAVeh},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
    };
    case "garage":
    {
        [_flag] call HR_GRG_fnc_initGarage;
    };
    case "SDKFlag":
    {
        removeAllActions _flag;
        _flag addAction ["Unit Recruitment", {if ([player,300] call A3A_fnc_enemyNearCheck) then {["Unit Recruitment", "You cannot recruit units while there are enemies near you."] call A3A_fnc_customHint;} else { [] spawn A3A_fnc_unit_recruit; };},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
        _flag addAction ["Buy Vehicle", {if ([player,300] call A3A_fnc_enemyNearCheck) then {["Buy Vehicle", "You cannot buy vehicles while there are enemies near you."] call A3A_fnc_customHint;} else {[] call SCRT_fnc_ui_createBuyVehicleMenu}},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
        _flag addAction ["Buy Loot Crate", {[] call SCRT_fnc_loot_createLootCrate},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull])",4];
        [_flag] call HR_GRG_fnc_initGarage;
    };
    case "Intel_Small":
    {
        _flag addAction [
            format ["<t>%1</t> <img image='\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa' size='1.6' shadow=2 />", localize "STR_search_intel_text"],
            A3A_fnc_searchIntelOnLeader,
            nil,
            4,
            true,
            false,
            "",
            "([_target] call A3A_fnc_canFight == false) && (_target getVariable ['intelSearchDone', false] != true) && isPlayer _this",
            4
        ];
    };
    case "Intel_Medium":
    {
        _flag addAction ["Take Intel", A3A_fnc_searchIntelOnDocument, nil, 4, true, false, "", "isPlayer _this", 4];
    };
    case "Intel_Large":
    {
        _flag addAction ["Download Intel", A3A_fnc_searchIntelOnLaptop, nil, 4, true, false, "", "isPlayer _this", 4];
    };
    case "Intel_Encrypted":
    {
        _flag addAction ["Decifer Intel", A3A_fnc_searchEncryptedIntel, nil, 4, true, false, "", "isPlayer _this", 4];
    };
    case "Move_Outpost_Static":
    {
        _flag addAction ["Move Emplacement Static", SCRT_fnc_common_moveOutpostStatic, nil, 4, true, false, "", "isPlayer _this", 4];
    };
    case "static":
    {
        private _cond = "(_target getVariable ['ownerSide', teamPlayer] == teamPlayer) and (isNull attachedTo _target) and (_this call A3A_fnc_isMember) and ";
        _flag addAction ["Allow AIs to use this weapon", A3A_fnc_unlockStatic, nil, 1, false, false, "", _cond+"!isNil {_target getVariable 'lockedForAI'}", 4];
        _flag addAction ["Prevent AIs using this weapon", A3A_fnc_lockStatic, nil, 1, false, false, "", _cond+"isNil {_target getVariable 'lockedForAI'}", 4];
        _flag addAction ["Kick AI off this weapon", A3A_fnc_lockStatic, nil, 1, true, false, "", _cond+"isNil {_target getVariable 'lockedForAI' and {!(isNull gunner _target) and {!(isPlayer gunner _target)}}}", 4];
        _flag addAction ["Move this asset", A3A_fnc_moveHQObject, nil, 1.5, false, false, "",  _cond+"(count crew _target == 0)", 4];
    };
};

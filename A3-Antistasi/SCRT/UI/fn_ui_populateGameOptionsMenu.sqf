disableSerialization;

menuComplete = false;

menuSliderArray = [
	["GAME OPTIONS", 5000],
	["GAME INFO", 6000]
];

menuSliderCurrent = 0;

ctrlSetFocus ((findDisplay 60000) displayCtrl 1151);

((findDisplay 60000) displayCtrl 1050) ctrlSetText "Options";

{	
	if (!(ctrlIDC _x in [1055, 1056, 1140, 1700, 1701, 1750, 1751, 1702, 1703, 1704, 1710, 1711, 1712])) then {
		((findDisplay 60000) displayCtrl (ctrlIDC _x)) ctrlSetFade 0;
	};

	((findDisplay 60000) displayCtrl (ctrlIDC _x)) ctrlCommit 0.3;	
} forEach (allControls findDisplay 60000);

["MAIN", 5100, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5200, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5400, false] call SCRT_fnc_ui_switchButton;

// Max constructions limit
sliderSetRange [5041, 1, 300];
sliderSetPosition [5041, maxConstructions];
((findDisplay 60000) displayCtrl 5040) ctrlSetText format ["Maximum Persistent Constuctions: %1", maxConstructions];
// max spawn distance
sliderSetRange [5061, 600, 2000];
sliderSetPosition [5061, distanceSPWN];
((findDisplay 60000) displayCtrl 5060) ctrlSetText format ["Maximum Spawn Distance: %1", distanceSPWN];

// AI Limiter
sliderSetRange [5081, 80, 250];
sliderSetPosition [5081, maxUnits];
((findDisplay 60000) displayCtrl 5080) ctrlSetText format ["AI Limit: %1", maxUnits];

private _gameInfoText = format [
    "Antistasi - %2, Version: %1, Antistasi Ultimate Version: %6, Difficulty: %3, Unlock Weapon Number: %4, Limited Fast Travel: %5, Time since GC: %7", 
    antistasiVersion, 
    worldName, 
    if (skillMult == 2) then {"Normal"} else {if (skillMult == 1) then {"Easy"} else {"Hard"}},
    minWeaps,
    if (limitedFT) then {"Yes"} else {"No"},
    antistasiPlusVersion,
	([[serverTime-A3A_lastGarbageCleanTime] call A3A_fnc_secondsToTimeSpan,1,0,false,2,false,true] call A3A_fnc_timeSpan_format)
];

((findDisplay 60000) displayCtrl 6011) ctrlSetText _gameInfoText;

private _serverMembersText = [] call A3A_fnc_membersList;
((findDisplay 60000) displayCtrl 6013) ctrlSetText _serverMembersText;

private _fiaTrainingText = format ["FIA Skill Level: %1", skillFIA];
((findDisplay 60000) displayCtrl 3102) ctrlSetText _fiaTrainingText;

menuComplete = true;

//Support menu is always first tab, the only workaround at the moment
[60000,'LEFT'] spawn SCRT_fnc_ui_changeTab;
sleep 0.1;
[60000,'LEFT'] spawn SCRT_fnc_ui_changeTab;
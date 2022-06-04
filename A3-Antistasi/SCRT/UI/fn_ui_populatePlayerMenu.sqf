disableSerialization;

menuComplete = false;

menuSliderArray = [
    ["GAME OPTIONS", 1140],
    ["GAME INFO", 2000]
];

menuSliderCurrent = 0;

((findDisplay 70000) displayCtrl 1050) ctrlSetText "Player Menu";
ctrlSetFocus ((findDisplay 70000) displayCtrl 1151);

{	
	if (ctrlIDC _x != 1055 && {ctrlIDC _x != 1056}) then {
		((findDisplay 70000) displayCtrl (ctrlIDC _x)) ctrlSetFade 0;
	};

	((findDisplay 70000) displayCtrl (ctrlIDC _x)) ctrlCommit 0.3;	
} forEach (allControls findDisplay 70000);

["MAIN", 5100, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5200, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5400, false] call SCRT_fnc_ui_switchButton;

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

((findDisplay 70000) displayCtrl 2011) ctrlSetText _gameInfoText;

if (player distance2D (getMarkerPos "Synd_HQ") > 50) then {
    ((findDisplay 70000) displayCtrl 5300) ctrlShow false;
};

menuComplete = true;
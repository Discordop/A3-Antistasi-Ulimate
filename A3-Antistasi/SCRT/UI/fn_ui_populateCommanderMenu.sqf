disableSerialization;

menuComplete = false;

private _hqMarkerPos = getMarkerPos "Synd_HQ";

if (theBoss distance2D _hqMarkerPos < 50) then {
	menuSliderArray = [
		["SUPPORT", 1140],
		["MANAGE GARRISONS", 2000],
		[format ["%1 MANAGEMENT", (toUpper nameTeamPlayer)], 3000],
		["ENVIRONMENT", 4000],
		["GAME OPTIONS", 5000],
		["GAME INFO", 6000]
	];
} else {
	menuSliderArray = [
		["SUPPORT", 1140],
		["MANAGE GARRISONS", 2000],
		["GAME OPTIONS", 5000]
	];

	[
		"INFO",
		"Commander Menu Options",  
		parseText "Some tabs can be accessible only at rebel HQ.", 
		10
	] spawn SCRT_fnc_ui_showMessage;
};

menuSliderCurrent = 0;

((findDisplay 60000) displayCtrl 1050) ctrlSetText "Commander Menu";
ctrlSetFocus ((findDisplay 60000) displayCtrl 1151);

supportType = "SMOKE";
outpostType = "WATCHPOST";
minefieldType = "APERSMine";

//Support Combobox 
lbAdd [1750, "Smoke Barrage"];
lbSetData [1750, 0, "SMOKE"];
lbSetTooltip [1750, 0, "Smoke barrage at position."];

lbAdd [1750, "Flare Barrage"];
lbSetData [1750, 1, "FLARE"];
lbSetTooltip [1750, 1, "Flare barrage at position."];

lbAdd [1750, "Light Vehicle Airdrop"];
lbSetData [1750, 2, "VEH_AIRDROP"];
lbSetTooltip [1750, 2, "Plane flies over and drops two-seated light vehicle to the specified position."];

lbAdd [1750, "Loot Crate Airdrop"];
lbSetData [1750, 3, "LOOTCRATE_AIRDROP"];
lbSetTooltip [1750, 3, "Plane flies over and drops loot crate to the specified position."];

lbAdd [1750, "HMG Airdrop"];
lbSetData [1750, 4, "STATIC_MG_AIRDROP"];
lbSetTooltip [1750, 4, "Plane flies over and drops crate with HMG to the specified position."];

lbAdd [1750, "Recon Plane Run"];
lbSetData [1750, 5, "RECON"];
lbSetTooltip [1750, 5, "Reconnaissance plane flies over and marks enemy positions at the specified location."];

lbAdd [1750, "Supply Crate Airdrop"];
lbSetData [1750, 6, "SUPPLY"];
lbSetTooltip [1750, 6, "Plane flies over and drops crate with ammunition and medical supplies to the specified position."];

lbAdd [1750, "HE Bomb Airstrike"];
lbSetData [1750, 7, "HE"];
lbSetTooltip [1750, 7, "Plane flies over and drops HE bombs at the specified location."];

lbAdd [1750, "Cluster Bomb Airstrike"];
lbSetData [1750, 8, "CLUSTER"];
lbSetTooltip [1750, 8, "Plane flies over and drops Cluster bombs at the specified location."];

lbAdd [1750, "Chemical Airstrike"];
lbSetData [1750, 9, "CHEMICAL"];
lbSetTooltip [1750, 9, "Plane flies over and drops bombs with hazardous chemicals at the specified location. Violates Geneva Protocol."];

if (napalmEnabled) then { 
	lbAdd [1750, "Napalm Airstrike"];
	lbSetData [1750, 10, "NAPALM"];
	lbSetTooltip [1750, 10, "Plane flies over and covers specified area with napalm."];

	lbAdd [1750, "Paradrop"];
	lbSetData [1750, 11, "PARADROP"];
	lbSetTooltip [1750, 11, "Plane flies over and drops players with parachutes at the specified location. Players must turn on paradrop attendance in game settings and be at rebel HQ to be successfully paradropped. If there are less seats in plane than players, it will choose them randomly."];

	lbAdd [1750, "Loot Helicopter"];
	lbSetData [1750, 12, "LOOTHELI"];
	lbSetTooltip [1750, 12, "Rebel helicopter helps with collecting scattered loot and drops crate with loot at the marked zone."];
} else {
	lbAdd [1750, "Paradrop"];
	lbSetData [1750, 10, "PARADROP"];
	lbSetTooltip [1750, 10, "Plane flies over and drops players with parachutes at the specified location. Players must turn on paradrop attendance in game settings and be at rebel HQ to be successfully paradropped. If there are less seats in plane than players, it will choose them randomly."];

	lbAdd [1750, "Loot Helicopter"];
	lbSetData [1750, 11, "LOOTHELI"];
	lbSetTooltip [1750, 11, "Rebel helicopter helps with collecting scattered loot and drops crate with loot at the marked zone."];
};

lbSetCurSel [1750, 0];

//Create Outpost Combobox 
lbAdd [2750, "Watchpost"];
lbSetData [2750, 0, "WATCHPOST"];
lbAdd [2750, "Roadblock"];
lbSetData [2750, 1, "ROADBLOCK"];
lbAdd [2750, "HMG Emplacement"];
lbSetData [2750, 2, "HMG"];
lbAdd [2750, "AA Emplacement"];
lbSetData [2750, 3, "AA"];
lbAdd [2750, "AT Emplacement"];
lbSetData [2750, 4, "AT"];
lbAdd [2750, "Mortar Emplacement"];
lbSetData [2750, 5, "MORTAR"];

lbSetCurSel [2750, 0];

//Minefield Combobox 
lbAdd [2758, "APERS Mines"];
lbSetData [2758, 0, "APERSMine"];
lbAdd [2758, "AT Mines"];
lbSetData [2758, 1, "ATMine"];

lbSetCurSel [2758, 0];

{	
	if (!(ctrlIDC _x in [1055, 1056, 6014])) then {
		((findDisplay 60000) displayCtrl (ctrlIDC _x)) ctrlSetFade 0;
	};

	((findDisplay 60000) displayCtrl (ctrlIDC _x)) ctrlCommit 0.3;	
} forEach (allControls findDisplay 60000);

["MAIN", 5100, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5200, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5400, false] call SCRT_fnc_ui_switchButton;

// fog
sliderSetRange [4041, 0, 100];
sliderSetPosition [4041, 50];
((findDisplay 60000) displayCtrl 4041) ctrlSetText format ["Fog: %1", 50];
fogValue = nil;

// weather
sliderSetRange [4061, 0, 100];
sliderSetPosition [4061, 50];
((findDisplay 60000) displayCtrl 4061) ctrlSetText format ["Overcast: %1", 50];
overcastValue = nil;

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
    "Antistasi - %2, Version: %1, Antistasi Plus Version: %6, Difficulty: %3, Unlock Weapon Number: %4, Limited Fast Travel: %5, Time since GC: %7", 
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

//hiding reroll button if conditions are not met
if (!(isTraderQuestCompleted || (!(isNil 'isTraderQuestAssigned') && {isTraderQuestAssigned}))) then {
	((findDisplay 60000) displayCtrl 6014) ctrlShow false;
};

if (player distance2D _hqMarkerPos > 50) then {
    ((findDisplay 60000) displayCtrl 5300) ctrlShow false;
};

menuComplete = true;

[] call SCRT_fnc_ui_updateSupportMenu;
["ADD"] call SCRT_fnc_ui_manageSupportTabEventHandler;
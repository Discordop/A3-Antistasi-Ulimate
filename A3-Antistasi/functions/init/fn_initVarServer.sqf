/*
 * This file is called after initVarCommon.sqf, on the server only.
 *
 * We also initialise anything in here that we don't want a client that's joining to overwrite, as JIP happens before initVar.
 */
scriptName "initVarServer.sqf";
private _fileName = "initVarServer.sqf";
[2,"initVarServer started",_fileName] call A3A_fnc_log;


//Little bit meta.
serverInitialisedVariables = ["serverInitialisedVariables"];

private _declareServerVariable = {
	params ["_varName", "_varValue"];

	serverInitialisedVariables pushBackUnique _varName;

	if (!isNil "_varValue") then {
		missionNamespace setVariable [_varName, _varValue];
	};
};

//Declares a variable that will be synchronised to all clients at the end of initVarServer.
//Only needs using on the first declaration.
#define ONLY_DECLARE_SERVER_VAR(name) [#name] call _declareServerVariable
#define DECLARE_SERVER_VAR(name, value) [#name, value] call _declareServerVariable
#define ONLY_DECLARE_SERVER_VAR_FROM_VARIABLE(name) [name] call _declareServerVariable
#define DECLARE_SERVER_VAR_FROM_VARIABLE(name, value) [name, value] call _declareServerVariable

////////////////////////////////////////
//     GENERAL SERVER VARIABLES      ///
////////////////////////////////////////
[2,"initialising general server variables",_fileName] call A3A_fnc_log;

//time to delete dead bodies, vehicles etc..
DECLARE_SERVER_VAR(cleantime, 3600);
//initial spawn distance. Less than 1Km makes parked vehicles spawn in your nose while you approach.
//User-adjustable variables are now declared in initParams
//DECLARE_SERVER_VAR(distanceSPWN, 1000);
DECLARE_SERVER_VAR(distanceSPWN1, distanceSPWN*1.3);
DECLARE_SERVER_VAR(distanceSPWN2, distanceSPWN*0.5);
//The furthest distance the AI can attack from using helicopters or planes
DECLARE_SERVER_VAR(distanceForAirAttack, 10000);
//The furthest distance the AI can attack from using trucks and armour
DECLARE_SERVER_VAR(distanceForLandAttack, 3000);

//Disabled DLC according to server parameters
DECLARE_SERVER_VAR(disabledMods, call A3A_fnc_initDisabledMods);

//Legacy tool for scaling AI difficulty. Could use a rewrite.
DECLARE_SERVER_VAR(difficultyCoef, if !(isMultiplayer) then {0} else {floor ((({side group _x == teamPlayer} count (call A3A_fnc_playableUnits)) - ({side group _x != teamPlayer} count (call A3A_fnc_playableUnits))) / 5)});


//Mostly state variables, used by various parts of Antistasi.
DECLARE_SERVER_VAR(bigAttackInProgress, false);
DECLARE_SERVER_VAR(AAFpatrols,0);
DECLARE_SERVER_VAR(smallCAmrk, []);
DECLARE_SERVER_VAR(smallCApos, []);

DECLARE_SERVER_VAR(attackPos, []);
DECLARE_SERVER_VAR(attackMrk, []);
DECLARE_SERVER_VAR(airstrike, []);

//Variables used for the internal support system
DECLARE_SERVER_VAR(occupantsSupports, []);
DECLARE_SERVER_VAR(invadersSupports, []);

DECLARE_SERVER_VAR(supportTargetsChanging, false);

DECLARE_SERVER_VAR(occupantsRadioKeys, 0);
DECLARE_SERVER_VAR(invaderRadioKeys, 0);

//Vehicles currently in the garage
DECLARE_SERVER_VAR(vehInGarage, []);

//Should vegetation around HQ be cleared
DECLARE_SERVER_VAR(chopForest, false);

DECLARE_SERVER_VAR(skillFIA, 1);																		//Initial skill level for FIA soldiers
//Initial Occupant Aggression
DECLARE_SERVER_VAR(aggressionOccupants, 0);
DECLARE_SERVER_VAR(aggressionStackOccupants, []);
DECLARE_SERVER_VAR(aggressionLevelOccupants, 1);
//Initial Invader Aggression
DECLARE_SERVER_VAR(aggressionInvaders, 0);
DECLARE_SERVER_VAR(aggressionStackInvaders, []);
DECLARE_SERVER_VAR(aggressionLevelInvaders, 1);
//Initial war tier.
DECLARE_SERVER_VAR(tierWar, 1);
DECLARE_SERVER_VAR(bombRuns, 0);
DECLARE_SERVER_VAR(supportPoints, 0);
//Should various units, such as patrols and convoys, be revealed.
DECLARE_SERVER_VAR(revealX, false);
//Whether the players have Nightvision unlocked
DECLARE_SERVER_VAR(haveNV, false);
DECLARE_SERVER_VAR(A3A_activeTasks, []);
DECLARE_SERVER_VAR(A3A_taskCount, 0);
//List of statics (MGs, AA, etc) that will be saved and loaded.
DECLARE_SERVER_VAR(staticsToSave, []);
//List of player-placed buildings that will be saved and loaded.
DECLARE_SERVER_VAR(constructionsToSave, []);
//Whether the players have access to radios.
DECLARE_SERVER_VAR(haveRadio, call A3A_fnc_checkRadiosUnlocked);
//List of vehicles that are reported (I.e - Players can't go undercover in them)
DECLARE_SERVER_VAR(reportedVehs, []);
//Whether the players have access to trader.
DECLARE_SERVER_VAR(isTraderQuestCompleted, false);
//Trader position.
DECLARE_SERVER_VAR(traderPosition, []);
//Trader discount.
DECLARE_SERVER_VAR(traderDiscount, 0);
//Latest pursuers spawn time
//Players who attend in parachute jumps
DECLARE_SERVER_VAR(paradropAttendants, []);
//Stores  custom AI rebel loadouts.
DECLARE_SERVER_VAR(rebelLoadouts, createHashMap);

//Check if occupants and invaders are defeated
DECLARE_SERVER_VAR(areOccupantsDefeated, false);
DECLARE_SERVER_VAR(areInvadersDefeated, false);

DECLARE_SERVER_VAR(A3A_coldWarMode, false);

//Currently destroyed buildings.
//DECLARE_SERVER_VAR(destroyedBuildings, []);
//Initial HR
server setVariable ["hr",8,true];
//Initial faction money pool
server setVariable ["resourcesFIA",1000,true];
// Time of last garbage clean. Note: serverTime may not reset to zero if server was not restarted. Therefore, it should capture the time at start of mission.
DECLARE_SERVER_VAR(A3A_lastGarbageCleanTime, serverTime);

////////////////////////////////////
//     SERVER ONLY VARIABLES     ///
////////////////////////////////////
//We shouldn't need to sync these.
[2,"Setting server only variables",_fileName] call A3A_fnc_log;

prestigeOPFOR = [75, 50] select cadetMode;												//Initial % support for NATO on each city
prestigeBLUFOR = 0;																	//Initial % FIA support on each city
// Indicates time in seconds before next counter attack.
attackCountdownOccupants = 2400;
attackCountdownInvaders = 2400;

cityIsSupportChanging = false;
resourcesIsChanging = false;
savingServer = false;

prestigeIsChanging = false;

zoneCheckInProgress = false;
garrisonIsChanging = false;
movingMarker = false;
markersChanging = [];

playerHasBeenPvP = [];

savedPlayers = [];
destroyedBuildings = [];		// synced only on join, to avoid spam on change

testingTimerIsActive = false;

A3A_tasksData = [];

///////////////////////////////////////////
//     INITIALISING ITEM CATEGORIES     ///
///////////////////////////////////////////
[2,"Initialising item categories",__FILE__] call A3A_fnc_log;

//We initialise a LOT of arrays based on the categories. Every category gets a 'allX' variables and an 'unlockedX' variable.

private _unlockableCategories = allCategoriesExceptSpecial + ["AA", "AT", "GrenadeLaunchers", "ArmoredVests", "ArmoredHeadgear", "BackpacksCargo"];

//Build list of 'allX' variables, such as 'allWeapons'
DECLARE_SERVER_VAR(allEquipmentArrayNames, allCategories apply {"all" + _x});

//Build list of 'unlockedX' variables, such as 'allWeapons'
DECLARE_SERVER_VAR(unlockedEquipmentArrayNames, _unlockableCategories apply {"unlocked" + _x});

//Various arrays used by the loot system. Could also be done using DECLARE_SERVER_VAR individually.
private _otherEquipmentArrayNames = [
	"initialRebelEquipment",
	"lootBasicItem",
	"lootNVG",
	"lootItem",
	"lootWeapon",
	"lootAttachment",
	"lootMagazine",
	"lootGrenade",
	"lootExplosive",
	"lootBackpack",
	"lootHelmet",
	"lootVest",
	"lootDevice",
	"invaderStaticWeapon",
	"occupantStaticWeapon",
	"rebelStaticWeapon",
	"invaderBackpackDevice",
	"occupantBackpackDevice",
	"rebelBackpackDevice",
	"civilianBackpackDevice"
];

DECLARE_SERVER_VAR(otherEquipmentArrayNames, _otherEquipmentArrayNames);

//We're going to use this to sync the variables later.
everyEquipmentRelatedArrayName = allEquipmentArrayNames + unlockedEquipmentArrayNames + otherEquipmentArrayNames;

//Initialise them all as empty arrays.
{
	DECLARE_SERVER_VAR_FROM_VARIABLE(_x, []);
} forEach everyEquipmentRelatedArrayName;

//Create a global namespace for custom unit types.
DECLARE_SERVER_VAR(A3A_customUnitTypes, [true] call A3A_fnc_createNamespace);

////////////////////////////////////
//          MOD CONFIG           ///
////////////////////////////////////
[2,"Setting mod configs",_fileName] call A3A_fnc_log;

//TFAR config
if (A3A_hasTFAR) then
{
	if (isServer) then
	{
		[] spawn {
			waitUntil {sleep 1; !isNil "TF_server_addon_version"};
			[2,"Initializing TFAR settings","initVar.sqf"] call A3A_fnc_log;
			["TF_no_auto_long_range_radio", true, true,"mission"] call CBA_settings_fnc_set;						//set to false and players will spawn with LR radio.
			tf_teamPlayer_radio_code = "";publicVariable "tf_teamPlayer_radio_code";								//to make enemy vehicles usable as LR radio
			tf_east_radio_code = tf_teamPlayer_radio_code; publicVariable "tf_east_radio_code";					//to make enemy vehicles usable as LR radio
			tf_guer_radio_code = tf_teamPlayer_radio_code; publicVariable "tf_guer_radio_code";					//to make enemy vehicles usable as LR radio
			["TF_same_sw_frequencies_for_side", true, true,"mission"] call CBA_settings_fnc_set;						//synchronize SR default frequencies
			["TF_same_lr_frequencies_for_side", true, true,"mission"] call CBA_settings_fnc_set;						//synchronize LR default frequencies
		};
	};
};

////////////////////////////////////
//      CIVILIAN UNITS LIST      ///
////////////////////////////////////
[2,"Creating civilians",_fileName] call A3A_fnc_log;

//No real reason we initialise this on the server right now...
private _arrayCivs = [];

switch (true) do {
	case (toLower worldName in ["tanoa", "rhspkl", "cam_lao_nam", "vn_khe_sanh"]): {
		_arrayCivs append ["C_man_sport_1_F_tanoan","C_man_polo_1_F_asia"];
	};
	default {
		_arrayCivs append ["C_man_polo_1_F","C_man_polo_1_F_asia","C_man_polo_1_F_euro"];
	};
	//TODO: Africans when some Africa terrain will be supported
};

DECLARE_SERVER_VAR(arrayCivs, _arrayCivs);

//money magazines
private _arrayMoney = ["Money_bunch","Money_roll","Money_stack","Money"];
DECLARE_SERVER_VAR(arrayMoney, _arrayMoney);

//money props
private _arrayMoneyLand = ["Item_Money_bunch","Item_Money_roll","Item_Money_stack","Item_Money"];
DECLARE_SERVER_VAR(arrayMoneyLand, _arrayMoneyLand);

//SHOULD BE SYNCHRONIZED WITH arrayMoney VARIABLE
private _arrayMoneyAmount = [
	HALs_money_oldManItemsPrice select 0,
	HALs_money_oldManItemsPrice select 1,
	HALs_money_oldManItemsPrice select 2,
	HALs_money_oldManItemsPrice select 3
];
DECLARE_SERVER_VAR(arrayMoneyAmount, _arrayMoneyAmount);

//////////////////////////////////////
//         TEMPLATE SELECTION      ///
//////////////////////////////////////
[2,"Reading templates",_fileName] call A3A_fnc_log;

private _templateVariables = [
	//Rebels
	"nameTeamPlayer",
	"SDKFlag",
	"SDKFlagTexture",
	"SDKFlagMarkerType",
	"typePetros",
	"staticCrewTeamPlayer",
	"SDKUnarmed",
	"SDKSniper",
	"SDKATman",
	"SDKMedic",
	"SDKMG",
	"SDKExp",
	"SDKGL",
	"SDKMil",
	"SDKSL",
	"SDKEng",
	"groupsSDKmid",
	"groupsSDKAT",
	"groupsSDKSquad",
	"groupsSDKSquadEng",
	"groupsSDKSquadSupp",
	"groupsSDKSniper",
	"groupsSDKCrew",
	"groupsSDKSentry",
	"sdkTier1",
	"sdkTier2",
	"sdkTier3",
	"soldiersSDK",
	"vehSDKBike",
	"vehSDKLightArmed",
	"vehSDKAT",
	"vehSDKLightUnarmed",
	"vehSDKTruck",
	"vehSDKPlane",
	"vehSDKPayloadPlane",
	"vehSDKBoat",
	"vehSDKRepair",
	"vehSDKFuel",
	"vehSDKAA",
	"civCar",
	"civTruck",
	"civHeli",
	"civBoat",
	"SDKMGStatic",
	"staticATTeamPlayer",
	"staticAATeamPlayer",
	"SDKMortar",
	"SDKMortarHEMag",
	"SDKMortarSmokeMag",
	"MGStaticSDKB",
	"ATStaticSDKB",
	"AAStaticSDKB",
	"MortStaticSDKB",
	"supportStaticsSDKB2",
	"supportStaticsSDKB3",
	"ATMineMags",
	"APERSMineMags",

	//@Spoffy, is the correct like this?
	"breachingExplosivesAPC",
	"breachingExplosivesTank",

	//Occupants
	"nameOccupants",
	"NATOFlag",
	"NATOFlagTexture",
	"flagNATOmrk",
	"NATOAmmobox",
    "NATOSurrenderCrate",
    "NATOEquipmentBox",
	"NATOPlayerLoadouts",
	"vehNATOPVP",
	"NATOGrunt",
	"NATOOfficer",
	"NATOOfficer2",
	"NATOCrew",
	"NATOUnarmed",
	"NATOMarksman",
	"staticCrewOccupants",
	"NATOPilot",
	"FIARifleman",
	"FIAMarksman",
	"policeOfficer",
	"policeGrunt",
	"groupsNATOSentry",
	"groupsNATOSniper",
	"groupsNATOAA",
	"groupsNATOAT",
	"groupsNATOmid",
	"NATOSquad",
	"NATOSpecOp",
	"groupsNATOSquadT1",
	"groupsNATOSquadT2",
	"groupsNATOSquadT3",
	"groupsFIASmall",
	"groupsFIAMid",
	"groupsFIASquad",
	"vehNATOBike",
	"vehNATOLightArmed",
	"vehNATOLightUnarmed",
	"vehNATOTrucks",
	"vehNATOCargoTrucks",
	"vehNATOAmmoTruck",
	"vehNATOFuelTruck",
	"vehNATOMedical",
	"vehNATORepairTruck",
	"vehNATOLight",
	"vehNATOAPC",
	"vehNATOLightAPC",
	"vehNATOTanks",
	"vehNATOAA",
	"vehNATOAttack",
	"vehNATOBoat",
	"vehNATORBoat",
	"vehNATOBoats",
	"vehNATOPlanes",
	"vehNATOPlanesAA",
	"vehNATOTransportPlanes",
	"vehNATOPatrolHeli",
	"vehNATOTransportHelis",
	"vehNATOAttackHelis",
	"vehNATOUAV",
	"vehNATOUAVSmall",
	"vehNATOMRLS",
	"vehNATOMRLSMags",
	"vehNATONormal",
	"vehNATOUtilityTrucks",
	"vehNATOAir",
	"vehFIAArmedCars",
	"vehFIATrucks",
	"vehFIAAPC",
	"vehFIATanks",
	"vehFIACars",
	"NATOMG",
	"staticATOccupants",
	"staticAAOccupants",
	"NATOMortar",
	"NATOHowitzer",
	"NATOAARadar",
	"NATOAASam",
	"NATOmortarMagazineHE",
	"NATOHowitzerMagazineHE",

	"vehPoliceCars",

	//Invaders
	"nameInvaders",
	"CSATFlag",
	"CSATFlagTexture",
	"flagCSATmrk",
	"CSATAmmoBox",
    "CSATSurrenderCrate",
    "CSATEquipmentBox",
	"CSATPlayerLoadouts",
	"vehCSATPVP",
	"CSATGrunt",
	"CSATOfficer",
	"CSATOfficer2",
	"CSATCrew",
	"CSATUnarmed",
	"CSATMarksman",
	"staticCrewInvaders",
	"CSATPilot",
	"WAMRifleman",
	"WAMMarksman",
	"groupsCSATSentry",
	"groupsCSATSniper",
	"groupsCSATsmall",
	"groupsCSATAA",
	"groupsCSATAT",
	"groupsCSATmid",
	"CSATSquad",
	"CSATSpecOp",
	"groupsCSATSquadT1",
	"groupsCSATSquadT2",
	"groupsCSATSquadT3",
	"groupsWAMSmall",
	"groupsWAMMid",
	"groupsWAMSquad",
	"vehWAMArmedCars",
	"vehWAMTrucks",
	"vehWAMAPC",
	"vehWAMTanks",
	"vehWAMCars",
	"vehCSATBike",
	"vehCSATLightArmed",
	"vehCSATLightUnarmed",
	"vehCSATTrucks",
	"vehCSATCargoTrucks",
	"vehCSATAmmoTruck",
	"vehCSATFuelTruck",
	"vehCSATMedical",
	"vehCSATRepairTruck",
	"vehCSATLight",
	"vehCSATAPC",
	"vehCSATLightAPC",
	"vehCSATTanks",
	"vehCSATAA",
	"vehCSATAttack",
	"vehCSATBoat",
	"vehCSATRBoat",
	"vehCSATBoats",
	"vehCSATPlanes",
	"vehCSATPlanesAA",
	"vehCSATTransportPlanes",
	"vehCSATPatrolHeli",
	"vehCSATTransportHelis",
	"vehCSATAttackHelis",
	"vehCSATUAV",
	"vehCSATUAVSmall",
	"vehCSATMRLS",
	"vehCSATMRLSMags",
	"vehCSATNormal",
	"vehCSATUtilityTrucks",
	"vehCSATAir",
	"CSATMG",
	"staticATInvaders",
	"staticAAInvaders",
	"CSATMortar",
	"CSATHowitzer",
	"CSATAARadar",
	"CSATAASam",
	"CSATmortarMagazineHE",
	"CSATHowitzerMagazineHE",
	"shop_UAV",
    "shop_AA",
    "shop_MRAP",
    "shop_wheel_apc",
    "shop_track_apc",
    "shop_heli",
    "shop_tank",
	"shop_plane",
	"additionalShopLight",
	"additionalShopAtgmVehicles",
	"additionalShopManpadsVehicles",
	"additionalShopArtillery",

	"smallBunker",
	"sandbag",
	"lootCrate",
	"rallyPoint",
	"civSupplyVehicle"
];

//CUP-only technical variables
if(A3A_hasCup) then {
	_templateVariables append ["vehSDKLightUnarmedArmored", "technicalArmoredBtr", "technicalArmoredAa", "technicalArmoredSpg", "technicalArmoredMg"];
};

{
	ONLY_DECLARE_SERVER_VAR_FROM_VARIABLE(_x);
} forEach _templateVariables;

call compile preProcessFileLineNumbers "Templates\selector.sqf";
//Set SDKFlagTexture on FlagX
if (local flagX) then { flagX setFlagTexture SDKFlagTexture } else { [flagX, SDKFlagTexture] remoteExec ["setFlagTexture", owner flagX] };

////////////////////////////////////
//     TEMPLATE SANITY CHECK      //
////////////////////////////////////
[2,"Sanity-checking templates",_fileName] call A3A_fnc_log;

// modify these appropriately when adding new template vars
private _nonClassVars = ["nameTeamPlayer", "SDKFlagTexture", "SDKFlagMarkerType", "nameOccupants", "NATOPlayerLoadouts", "NATOFlagTexture", "flagNATOmrk", "nameInvaders", "CSATPlayerLoadouts", "CSATFlagTexture", "flagCSATmrk"];
private _magazineVars = ["SDKMortarHEMag", "SDKMortarSmokeMag", "vehNATOMRLSMags", "vehCSATMRLSMags", "breachingExplosivesAPC", "breachingExplosivesTank", "NATOmortarMagazineHE", "NATOHowitzerMagazineHE", "CSATmortarMagazineHE", "CSATHowitzerMagazineHE"];

private _missingVars = [];
private _badCaseVars = [];
{
	call {
		private _varName = _x;
		private _var = missionNamespace getVariable _varName;
		if (isNil "_var") exitWith { [1, "Missing template var " + _varName, _filename] call A3A_fnc_log };

		if !(_var isEqualType []) then {_var = [_var]};									// plain string case, eg factions, some units
		if (_varname find "breachingExplosives" != -1) then { _var = _var apply {_x#0} };		// ["class", n] case for breaching explosives
		if (_var#0 isEqualType []) then {												// arrays of arrays case, used for infantry groups
			private _classes = [];
			{ _classes append _x } forEach _var;
			_var = _classes;
		};

		private _section = if (_x in _magazineVars) then {"CfgMagazines"} else {"CfgVehicles"};
		{
			if ("loadouts_" in _x) then {continue};
			if ("not_supported" in _x) then {continue};
			if !(_x isEqualType "") exitWith { [1, "Bad template var " + _varName, _filename] call A3A_fnc_log };
			if !(_x isEqualTo configName (configFile >> _section >> _x)) then
			{
			    if !(isClass (configFile >> _section >> _x)) then {
			        _missingVars pushBackUnique _x;
			    } else {
					_badCaseVars pushBackUnique _x;
				};
			};
		} forEach _var;
	};
} forEach (_templateVariables - _nonClassVars);

if (count _missingVars > 0) then {
	[1, format ["Missing classnames: %1", _missingVars], _filename] call A3A_fnc_log;
};
if (count _badCaseVars > 0) then {
	[1, format ["Miscased classnames: %1", _badCaseVars], _filename] call A3A_fnc_log;
};

////////////////////////////////////
//      CIVILIAN VEHICLES       ///
////////////////////////////////////
[2,"Creating civilian vehicles lists",_fileName] call A3A_fnc_log;

private _fnc_vehicleIsValid = {
	params ["_type"];
	private _configClass = configFile >> "CfgVehicles" >> _type;
	if !(isClass _configClass) exitWith {
		[1, format ["Vehicle class %1 not found", _type], _filename] call A3A_fnc_log;
		false;
	};
	if (_configClass call A3A_fnc_getModOfConfigClass in disabledMods) then {false} else {true};
};

private _fnc_filterAndWeightArray = {

	params ["_array", "_targWeight"];
	private _output = [];
	private _curWeight = 0;

	// first pass, filter and find total weight
	for "_i" from 0 to (count _array - 2) step 2 do {
		if ((_array select _i) call _fnc_vehicleIsValid) then {
			_output pushBack (_array select _i);
			_output pushBack (_array select (_i+1));
			_curWeight = _curWeight + (_array select (_i+1));
		};
	};
	if (_curWeight == 0) exitWith {_output};

	// second pass, re-weight
	private _weightMod = _targWeight / _curWeight;
	for "_i" from 0 to (count _output - 2) step 2 do {
		_output set [_i+1, _weightMod * (_output select (_i+1))];
	};
	_output;
};

private _civVehicles = [];
private _civVehiclesWeighted = [];

_civVehiclesWeighted append ([civVehCommonData, 4] call _fnc_filterAndWeightArray);
_civVehiclesWeighted append ([civVehIndustrialData, 1] call _fnc_filterAndWeightArray);
_civVehiclesWeighted append ([civVehMedicalData, 0.1] call _fnc_filterAndWeightArray);
_civVehiclesWeighted append ([civVehRepairData, 0.1] call _fnc_filterAndWeightArray);
_civVehiclesWeighted append ([civVehRefuelData, 0.1] call _fnc_filterAndWeightArray);

for "_i" from 0 to (count _civVehiclesWeighted - 2) step 2 do {
	_civVehicles pushBack (_civVehiclesWeighted select _i);
};

_civVehicles append [civCar, civTruck, civSupplyVehicle];			// Civ car/truck from rebel template, in case they're different

DECLARE_SERVER_VAR(arrayCivVeh, _civVehicles);
DECLARE_SERVER_VAR(civVehiclesWeighted, _civVehiclesWeighted);


private _civBoats = [];
private _civBoatsWeighted = [];

// Boats don't need any re-weighting, so just copy the data

for "_i" from 0 to (count civBoatData - 2) step 2 do {
	private _boat = civBoatData select _i;
	if (_boat call _fnc_vehicleIsValid) then {
		_civBoats pushBack _boat;
		_civBoatsWeighted pushBack _boat;
		_civBoatsWeighted pushBack (civBoatData select (_i+1));
	};
};

DECLARE_SERVER_VAR(civBoats, _civBoats);
DECLARE_SERVER_VAR(civBoatsWeighted, _civBoatsWeighted);

private _undercoverVehicles = (arrayCivVeh - ["C_Quadbike_01_F"]) + civBoats + [civHeli];
DECLARE_SERVER_VAR(undercoverVehicles, _undercoverVehicles);

//////////////////////////////////////
//      GROUPS CLASSIFICATION      ///
//////////////////////////////////////
[2,"Identifying unit types",_fileName] call A3A_fnc_log;
//Identify Squad Leader Units
private _squadLeaders = [
	"loadouts_reb_militia_SquadLeader",
	"loadouts_occ_militia_SquadLeader",
	"loadouts_occ_military_SquadLeader",
	"loadouts_occ_elite_SquadLeader",
	"loadouts_occ_SF_SquadLeader",
	"loadouts_inv_militia_SquadLeader",
	"loadouts_inv_military_SquadLeader",
	"loadouts_inv_elite_SquadLeader",
	"loadouts_inv_SF_SquadLeader"
];
DECLARE_SERVER_VAR(squadLeaders, _squadLeaders);
//Identify radio-capable units
private _radioMen = [
	"loadouts_occ_militia_Radioman",
	"loadouts_occ_military_Radioman",
	"loadouts_occ_elite_Radioman",
	"loadouts_occ_SF_Radioman",
	"loadouts_inv_militia_Radioman",
	"loadouts_inv_military_Radioman",
	"loadouts_inv_elite_Radioman",
	"loadouts_inv_SF_Radioman"
];
DECLARE_SERVER_VAR(radioMen, _radioMen);
//Identify Medic Units
private _medics = [
	"loadouts_reb_militia_medic",
	"loadouts_occ_militia_Medic",
	"loadouts_occ_military_Medic",
	"loadouts_occ_elite_Medic",
	"loadouts_occ_SF_Medic",
	"loadouts_inv_militia_Medic",
	"loadouts_inv_military_Medic",
	"loadouts_inv_elite_Medic",
	"loadouts_inv_SF_Medic"
];
DECLARE_SERVER_VAR(medics, _medics);
//Define Sniper Groups and Units
private _sniperGroups = [
	"loadouts_occ_militia_Sniper",
	"loadouts_occ_military_Sniper",
	"loadouts_occ_elite_Sniper",
	"loadouts_inv_militia_Sniper",
	"loadouts_inv_military_Sniper",
	"loadouts_inv_elite_Sniper"
];
DECLARE_SERVER_VAR(sniperGroups, _sniperGroups);

if (A3A_has3CBFactions && {(threecbfOccupantFaction == 4 || A3A_hasGlobMob)}) then {
  A3A_coldWarMode = true;
  publicVariable "A3A_coldWarMode";

  [2,"3CB Factions and US Cold War template or 3CBF+GM detected, Cold War Mode to be initiated.",_fileName] call A3A_fnc_log;
};

//////////////////////////////////////
//        ITEM INITIALISATION      ///
//////////////////////////////////////
//This is all very tightly coupled.
//Beware when changing these, or doing anything with them, really.

[2,"Initializing hardcoded categories",_fileName] call A3A_fnc_log;
[] call A3A_fnc_categoryOverrides;
[2,"Scanning config entries for items",_fileName] call A3A_fnc_log;
[A3A_fnc_equipmentIsValidForCurrentModset] call A3A_fnc_configSort;
[2,"Categorizing vehicle classes",_fileName] call A3A_fnc_log;
[] call A3A_fnc_vehicleSort;
[2,"Categorizing equipment classes",_fileName] call A3A_fnc_log;
[] call A3A_fnc_equipmentSort;
[2,"Sorting grouped class categories",_fileName] call A3A_fnc_log;
[] call A3A_fnc_itemSort;
[2,"Building loot lists",_fileName] call A3A_fnc_log;
[] call A3A_fnc_loot;

////////////////////////////////////
//   CLASSING TEMPLATE VEHICLES  ///
////////////////////////////////////
[2,"Identifying vehicle types",_fileName] call A3A_fnc_log;

//little experiment with hashmap
private _vehNormal = (vehNATONormal + vehCSATNormal + vehNATOCargoTrucks + vehCSATCargoTrucks + vehFIACars + vehFIATrucks + vehFIAArmedCars + vehWAMCars + vehWAMTrucks + vehWAMArmedCars + vehPoliceCars + [vehNATOBike,vehCSATBike,vehSDKTruck,vehSDKLightArmed,vehSDKAT,vehSDKBike,vehSDKRepair,vehSDKFuel]) createHashMapFromArray [];
DECLARE_SERVER_VAR(vehNormal, _vehNormal);

private _vehMilitia = vehFIATrucks + vehFIACars + vehFIAAPC + vehFIAArmedCars + vehFIATanks + vehWAMTrucks + vehWAMCars + vehWAMAPC + vehWAMArmedCars + vehWAMTanks;
DECLARE_SERVER_VAR(vehMilitia, _vehMilitia);

private _vehBoats = [vehNATOBoat,vehNATORBoat,vehCSATBoat,vehCSATRBoat,vehSDKBoat];
DECLARE_SERVER_VAR(vehBoats, _vehBoats);

private _vehAttack = vehNATOAttack + vehCSATAttack;
DECLARE_SERVER_VAR(vehAttack, _vehAttack);

private _vehPlanes = (vehNATOAir + vehCSATAir + [vehSDKPlane, vehSDKPayloadPlane]);
DECLARE_SERVER_VAR(vehPlanes, _vehPlanes);

private _vehAttackHelis = vehCSATAttackHelis + vehNATOAttackHelis;
DECLARE_SERVER_VAR(vehAttackHelis, _vehAttackHelis);

private _vehHelis = vehNATOTransportHelis + vehCSATTransportHelis + vehAttackHelis + [vehNATOPatrolHeli,vehCSATPatrolHeli];
DECLARE_SERVER_VAR(vehHelis, _vehHelis);

private _vehFixedWing = vehNATOPlanes + vehNATOPlanesAA + vehCSATPlanes + vehCSATPlanesAA + vehNATOTransportPlanes + vehCSATTransportPlanes + [vehSDKPlane,vehSDKPayloadPlane];
DECLARE_SERVER_VAR(vehFixedWing, _vehFixedWing);

private _vehUAVs = [vehNATOUAV,vehCSATUAV,vehNATOUAVSmall,vehCSATUAVSmall];
DECLARE_SERVER_VAR(vehUAVs, _vehUAVs);

private _vehAmmoTrucks = [vehNATOAmmoTruck,vehCSATAmmoTruck];
DECLARE_SERVER_VAR(vehAmmoTrucks, _vehAmmoTrucks);

private _vehSupplyTrucks = [vehNATOFuelTruck,vehNATOMedical,vehNATORepairTruck, vehCSATFuelTruck, vehCSATRepairTruck, vehCSATMedical];
DECLARE_SERVER_VAR(vehSupplyTrucks, _vehSupplyTrucks);

private _vehAPCs = vehNATOAPC + vehCSATAPC + vehFIAAPC + vehWAMAPC + vehNATOLightAPC + vehCSATLightAPC;
DECLARE_SERVER_VAR(vehAPCs, _vehAPCs);

private _vehTanks = vehNATOTanks + vehCSATTanks + vehFIATanks + vehWAMTanks;
DECLARE_SERVER_VAR(vehTanks, _vehTanks);

private _vehTrucks = vehNATOTrucks + vehCSATTrucks + vehFIATrucks + vehWAMTrucks + [vehSDKTruck];
DECLARE_SERVER_VAR(vehTrucks, _vehTrucks);

private _vehAA = vehNATOAA + vehCSATAA;
DECLARE_SERVER_VAR(vehAA, _vehAA);

private _vehMRLS = [vehCSATMRLS, vehNATOMRLS];
DECLARE_SERVER_VAR(vehMRLS, _vehMRLS);

private _vehArmor = vehTanks + vehAA + vehMRLS + vehAPCs;
DECLARE_SERVER_VAR(vehArmor, _vehArmor);

private _vehTransportAir = vehNATOTransportHelis + vehCSATTransportHelis + vehNATOTransportPlanes + vehCSATTransportPlanes;
DECLARE_SERVER_VAR(vehTransportAir, _vehTransportAir);

private _vehFastRope = ["O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_camo_F","RHS_UH60M_d","UK3CB_BAF_Merlin_HC3_18_GPMG_DDPM_RM","UK3CB_BAF_Merlin_HC3_18_GPMG_Tropical_RM","RHS_Mi8mt_vdv","RHS_Mi8mt_vv","RHS_Mi8mt_Cargo_vv"];
DECLARE_SERVER_VAR(vehFastRope, _vehFastRope);

private _vehUnlimited = vehNATONormal + vehCSATNormal + [vehNATORBoat,vehNATOPatrolHeli,vehCSATRBoat,vehCSATPatrolHeli,vehNATOUAV,vehNATOUAVSmall,NATOMortar,NATOHowitzer,NATOAARadar,NATOAASam,vehCSATUAV,vehCSATUAVSmall, CSATMortar, CSATHowitzer, CSATAARadar, CSATAASam] + CSATMG + NATOMG;
DECLARE_SERVER_VAR(vehUnlimited, _vehUnlimited);

private _vehFIA = [vehSDKBike,vehSDKAT,vehSDKLightArmed,SDKMGStatic,vehSDKLightUnarmed,vehSDKTruck,vehSDKBoat,SDKMortar,staticATteamPlayer,staticAAteamPlayer,vehSDKRepair,vehSDKFuel,vehSDKPlane,vehSDKPayloadPlane];
if (vehSDKAA != "not_supported") then { _vehFIA pushBack vehSDKAA };
DECLARE_SERVER_VAR(vehFIA, _vehFIA);

private _vehCargoTrucks = (vehTrucks + vehNATOCargoTrucks + vehCSATCargoTrucks) select { [_x] call A3A_fnc_logistics_getVehCapacity > 1 };
DECLARE_SERVER_VAR(vehCargoTrucks, _vehCargoTrucks);

private _vehClassToCrew = call A3A_fnc_initVehClassToCrew;
DECLARE_SERVER_VAR(A3A_vehClassToCrew,_vehClassToCrew);



///////////////////////////
//     MOD TEMPLATES    ///
///////////////////////////
//Please respect the order in which these are called,
//and add new entries to the bottom of the list.
if (A3A_hasACE) then {
	[] call A3A_fnc_aceModCompat;
};
if (A3A_hasRHS) then {
	[] call A3A_fnc_rhsModCompat;
};
if (A3A_hasCup) then {
	[] call A3A_fnc_cupModCompat;
};

if (A3A_coldWarMode && {toLower	worldName != "blud_vidda"}) then { //vidda has unique lightning config
	setDate [1991, 5, 10, 7, 0];
};

////////////////////////////////////
//     ACRE ITEM MODIFICATIONS   ///
////////////////////////////////////
if (A3A_hasACRE) then {initialRebelEquipment append ["ACRE_PRC343","ACRE_PRC148","ACRE_PRC152","ACRE_SEM52SL"];};
if (A3A_hasACRE && startWithLongRangeRadio) then {initialRebelEquipment append ["ACRE_SEM70", "ACRE_PRC117F", "ACRE_PRC77"];};

////////////////////////////////////
//    UNIT AND VEHICLE PRICES    ///
////////////////////////////////////
[2,"Creating pricelist",_fileName] call A3A_fnc_log;
server setVariable [SDKMil,50,true];
{server setVariable [_x,75,true]} forEach (sdkTier1 - [SDKMil]);
{server setVariable [_x,100,true]} forEach  sdkTier2;
{server setVariable [_x,150,true]} forEach sdkTier3;
{timer setVariable [_x,3,true]} forEach [staticATOccupants] + staticAAOccupants;
{timer setVariable [_x,6,true]} forEach  [staticATInvaders] + staticAAInvaders;
{timer setVariable [_x,0,true]} forEach vehNATOAPC;
{timer setVariable [_x,10,true]} forEach vehCSATAPC;
{timer setVariable [_x,0,true]} forEach vehNATOTanks;
{timer setVariable [_x,10,true]} forEach vehCSATTanks;
{timer setVariable [_x,0,true]} forEach vehNATOAA;
{timer setVariable [_x,3,true]} forEach vehCSATAA;
timer setVariable [vehNATOBoat,3,true];
timer setVariable [vehCSATBoat,3,true];
{timer setVariable [_x,0,true]} forEach vehNATOPlanes;
{timer setVariable [_x,10,true]} forEach vehCSATPlanes;
{timer setVariable [_x,0,true]} forEach vehNATOPlanesAA;
{timer setVariable [_x,10,true]} forEach vehCSATPlanesAA;
{timer setVariable [_x,1,true]} forEach vehNATOTransportPlanes;
{timer setVariable [_x,1,true]} forEach vehNATOTransportHelis - [vehNATOPatrolHeli];
{timer setVariable [_x,1,true]} forEach vehCSATTransportPlanes;
{timer setVariable [_x,10,true]} forEach vehCSATTransportHelis - [vehCSATPatrolHeli];
{timer setVariable [_x,0,true]} forEach vehNATOAttackHelis;
{timer setVariable [_x,10,true]} forEach vehCSATAttackHelis;
timer setVariable [vehNATOMRLS,0,true];
timer setVariable [vehCSATMRLS,5,true];

server setVariable [civCar,350,true];
server setVariable [civTruck,700,true];
server setVariable [civHeli, 5000,true];
server setVariable [civBoat,200,true];
server setVariable [vehSDKBike, 100, true];
server setVariable [vehSDKLightUnarmed,200,true];
server setVariable [vehSDKTruck,300,true];
server setVariable [vehSDKLightArmed, 1000, true];
server setVariable [vehSDKAT, 1500, true];
server setVariable [vehSDKAA, 1750, true];
server setVariable [vehSDKFuel, 550, true];
server setVariable [vehSDKPlane, 3500, true];

server setVariable [staticATteamPlayer, 1500, true];
server setVariable [staticAAteamPlayer, 1300, true];
server setVariable [SDKMortar, 2000, true];

{server setVariable [_x,700,true]} forEach [SDKMGStatic,vehSDKBoat,vehSDKRepair];

//black market costs
{server setVariable [_x,2000,true]} forEach shop_UAV;
{server setVariable [_x,6000,true]} forEach shop_AA;
{server setVariable [_x,4500,true]} forEach shop_MRAP;
{server setVariable [_x,8000,true]} forEach shop_wheel_apc;
{server setVariable [_x,9500,true]} forEach shop_track_apc;
{server setVariable [_x,25000,true]} forEach shop_heli;
{server setVariable [_x,35000,true]} forEach shop_plane;

if (!(shop_tank isEqualTo [])) then {
	private _firstTank = shop_tank select 0;
	if (!isNil "_firstTank") then {
		server setVariable [_firstTank, 10500, true];
	};

	private _secondTank = shop_tank select 1;
	if (!isNil "_secondTank") then {
		server setVariable [_secondTank, 15000, true];
	};

	private _thirdTank = shop_tank select 2;
	if (!isNil "_thirdTank") then {
		server setVariable [_thirdTank, 17500, true];
	};
};

if (!(additionalShopArtillery isEqualTo [])) then {
	if (A3A_hasCup) then {
		server setVariable [(additionalShopArtillery select 0), 2000, true];
		server setVariable [(additionalShopArtillery select 1), 15000, true];
		server setVariable [(additionalShopArtillery select 2), 20000, true];
	};
	if (A3A_has3CBFactions) then {
		server setVariable [(additionalShopArtillery select 0), 15000, true];
		server setVariable [(additionalShopArtillery select 1), 25000, true];
		server setVariable [(additionalShopArtillery select 2), 30000, true];
	};
};

{server setVariable [_x,1500,true]} forEach additionalShopLight;
{server setVariable [_x,5000,true]} forEach additionalShopAtgmVehicles;
{server setVariable [_x,7500,true]} forEach additionalShopManpadsVehicles;

//technicals cost
if(A3A_hasCup) then {
	server setVariable [vehSDKLightUnarmedArmored, 400, true];
	server setVariable [technicalArmoredBtr, 3250, true];
	server setVariable [technicalArmoredAa, 3000, true];
	server setVariable [technicalArmoredSpg, 3000, true];
	server setVariable [technicalArmoredMg, 2250, true];
};

//lootcrate cost
server setVariable [lootCrate, 100, true];

//rally point cost
server setVariable [rallyPoint, 100, true];

///////////////////////
//     GARRISONS    ///
///////////////////////
[2,"Initialising Garrison Variables",_fileName] call A3A_fnc_log;

tierPreference = 1;
cityUpdateTiers = [4, 8];
cityStaticsTiers = [0.2, 1];
airportUpdateTiers = [3, 6, 8];
airportStaticsTiers = [0.5, 0.75, 1];
outpostUpdateTiers = [4, 7, 9];
outpostStaticsTiers = [0.4, 0.7, 1];
milbaseUpdateTiers = [3, 6, 8];
milbaseStaticsTiers = [0.5, 0.75, 1];
otherUpdateTiers = [3, 7];
otherStaticsTiers = [0.3, 1];
[] call A3A_fnc_initPreference;

////////////////////////////
//     REINFORCEMENTS    ///
////////////////////////////
[2,"Initialising Reinforcement Variables",_fileName] call A3A_fnc_log;
DECLARE_SERVER_VAR(reinforceMarkerOccupants, []);
DECLARE_SERVER_VAR(reinforceMarkerInvaders, []);
DECLARE_SERVER_VAR(canReinforceOccupants, []);
DECLARE_SERVER_VAR(canReinforceInvaders, []);

/////////////////////////////////////////
//     SYNCHRONISE SERVER VARIABLES   ///
/////////////////////////////////////////
[2,"Sending server variables",_fileName] call A3A_fnc_log;

//Declare this last, so it syncs last.
DECLARE_SERVER_VAR(initVarServerCompleted, true);
{
	publicVariable _x;
} forEach serverInitialisedVariables;

[2,"initVarServer completed",_fileName] call A3A_fnc_log;
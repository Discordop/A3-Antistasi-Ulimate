//////////////////////////
//   Side Information   //
//////////////////////////
// this is a plus template

["name", "Afrika Korps"] call _fnc_saveToTemplate;
["spawnMarkerName", "Afrika Korps Reinforcements"] call _fnc_saveToTemplate;

["flag", "LIB_FlagCarrier_GER"] call _fnc_saveToTemplate;
["flagTexture", "ww2\core_t\if_decals_t\german\flag_ger_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "LIB_faction_WEHRMACHT"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "LIB_GER_Unterofficer_w"],
	["militia_rifleman", "LIB_GER_Rifleman3_w"],
	["militia_radioman", "LIB_GER_Radioman_w"],
	["militia_medic", "LIB_GER_Medic_w"],
	["militia_engineer", "LIB_GER_Sapper_w"],
	["militia_explosivesexpert", "LIB_GER_ober_grenadier_w"],
	["militia_grenadier", "LIB_GER_ober_grenadier_w"],
	["militia_lat", "LIB_GER_Unterofficer_w"],
	["militia_at", "LIB_GER_AT_soldier_w"],
	["militia_aa", "LIB_GER_LAT_Rifleman_w"],
	["militia_machinegunner", "LIB_GER_Mgunner_w"],
	["militia_marksman", "LIB_GER_Scout_sniper_2_w"],
	["militia_sniper", "LIB_GER_Scout_sniper_2_w"],

	["military_squadleader", "LIB_GER_Unterofficer_w"],
	["military_rifleman", "LIB_GER_Rifleman3_w"],
	["military_radioman", "LIB_GER_Radioman_w"],
	["military_medic", "LIB_GER_Medic_w"],
	["military_engineer", "LIB_GER_Sapper_w"],
	["military_explosivesexpert", "LIB_GER_ober_grenadier_w"],
	["military_grenadier", "LIB_GER_ober_grenadier_w"],
	["military_lat", "LIB_GER_Unterofficer_w"],
	["military_at", "LIB_GER_AT_soldier_w"],
	["military_aa", "LIB_GER_LAT_Rifleman_w"],
	["military_machinegunner", "LIB_GER_Mgunner_w"],
	["military_marksman", "LIB_GER_Scout_sniper_2_w"],
	["military_sniper", "LIB_GER_Scout_sniper_2_w"],

	["elite_squadleader", "LIB_GER_Unterofficer_w"],
	["elite_rifleman", "LIB_GER_Rifleman3_w"],
	["elite_radioman", "LIB_GER_Radioman_w"],
	["elite_medic", "LIB_GER_Medic_w"],
	["elite_engineer", "LIB_GER_Sapper_w"],
	["elite_explosivesexpert", "LIB_GER_ober_grenadier_w"],
	["elite_grenadier", "LIB_GER_ober_grenadier_w"],
	["elite_lat", "LIB_GER_Unterofficer_w"],
	["elite_at", "LIB_GER_AT_soldier_w"],
	["elite_aa", "LIB_GER_LAT_Rifleman_w"],
	["elite_machinegunner", "LIB_GER_Mgunner_w"],
	["elite_marksman", "LIB_GER_Scout_sniper_2_w"],
	["elite_sniper", "LIB_GER_Scout_sniper_2_w"],

	["sf_squadleader", "LIB_GER_Unterofficer_w"],
	["sf_rifleman", "LIB_GER_Rifleman3_w"],
	["sf_radioman", "LIB_GER_Radioman_w"],
	["sf_medic", "LIB_GER_Medic_w"],
	["sf_engineer", "LIB_GER_Sapper_w"],
	["sf_explosivesexpert", "LIB_GER_ober_grenadier_w"],
	["sf_grenadier", "LIB_GER_ober_grenadier_w"],
	["sf_lat", "LIB_GER_Unterofficer_w"],
	["sf_at", "LIB_GER_AT_soldier_w"],
	["sf_aa", "LIB_GER_LAT_Rifleman_w"],
	["sf_machinegunner", "LIB_GER_Mgunner_w"],
	["sf_marksman", "LIB_GER_Scout_sniper_2_w"],
	["sf_sniper", "LIB_GER_Scout_sniper_2_w"],

	["other_crew", "LIB_GER_Gun_crew_w"],
	["other_unarmed", "LIB_GER_unequip"],
	["other_official", "LIB_GER_oberst"],
	["other_traitor", "LIB_GER_hauptmann"],
	["other_pilot", "LIB_GER_pilot"],
	["police_squadleader", "LIB_GER_ober_rifleman"],
	["police_standard", "LIB_GER_soldier_camo_base"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "LIB_AmmoCrate_Arty_SU"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["LIB_DAK_Kfz1"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["LIB_DAK_Kfz1","LIB_DAK_Kfz1_Hood"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["LIB_DAK_Kfz1_MG42"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["LIB_DAK_OpelBlitz_Open","LIB_DAK_OpelBlitz_Tent","LIB_DAK_SdKfz_7"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["LIB_DAK_OpelBlitz_Open","LIB_DAK_SdKfz_7"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["LIB_OpelBlitz_Ammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["LIB_OpelBlitz_Parm"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["LIB_OpelBlitz_Fuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["LIB_OpelBlitz_Ambulance"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["LIB_DAK_SdKfz251_FFV","LIB_DAK_SdKfz251"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["LIB_DAK_PzKpfwIV_H","LIB_DAK_PzKpfwIV_H","LIB_DAK_PzKpfwVI_E","LIB_DAK_FlakPanzerIV_Wirbelwind"]] call _fnc_saveToTemplate;
["vehiclesAA", ["LIB_DAK_SdKfz_7_AA"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["not_supported"]] call _fnc_saveToTemplate;			
["vehiclesIFVs", ["not_supported"]] call _fnc_saveToTemplate;				

["vehiclesSam", ["LIB_DAK_FlaK_36_AA","LIB_DAK_FlaK_36"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["LIB_LCA"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["LIB_UK_LCI"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["not_supported"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["LIB_DAK_Ju87"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["LIB_DAK_FW190F8"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["LIB_C47_RAF_snafu"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["LIB_DAK_OpelBlitz_Open"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["LIB_DAK_OpelBlitz_Tent","LIB_DAK_SdKfz251","LIB_DAK_SdKfz251_FFV"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["LIB_DAK_PzKpfwVI_E"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [["LIB_SdKfz124", ["LIB_20x_Shell_105L28_Gr39HlC_HE","LIB_20x_Shell_105L28_Gr38_HE"]]]] call _fnc_saveToTemplate;

["uavsAttack", ["not_supported"]] call _fnc_saveToTemplate;
["uavsPortable", ["not_supported"]] call _fnc_saveToTemplate;

//Config special vehicles
["vehiclesMilitiaLightArmed", ["LIB_DAK_Kfz1_MG42","LIB_DAK_Kfz1_MG42_camo"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["LIB_DAK_OpelBlitz_Open","LIB_DAK_OpelBlitz_Tent"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["LIB_DAK_Kfz1","LIB_DAK_Kfz1_Hood"]] call _fnc_saveToTemplate;

["vehiclesMilitiaApcs", ["LIB_DAK_SdKfz251", "LIB_DAK_SdKfz_7"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["LIB_T34_76_captured"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["LIB_DAK_Kfz1"]] call _fnc_saveToTemplate;

["staticMGs", ["I_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["LIB_DAK_Pak40"]] call _fnc_saveToTemplate;
["staticAA", ["LIB_FlaK_38"]] call _fnc_saveToTemplate;
["staticMortars", ["LIB_GrWr34"]] call _fnc_saveToTemplate;

["staticHowitzers", ["LIB_leFH18"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "LIB_8Rnd_81mmHE_GRWR34"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "LIB_81mm_GRWR34_SmokeShell"] call _fnc_saveToTemplate;

["howitzerMagazineHE", ["LIB_20x_Shell_105L28_Gr38_HE"]] call _fnc_saveToTemplate;

//Bagged weapon definitions
["baggedMGs", [["I_HMG_02_support_high_F", "I_G_HMG_02_high_weapon_F"]]] call _fnc_saveToTemplate;
["baggedAT", [[]]] call _fnc_saveToTemplate;
["baggedAA", [[]]] call _fnc_saveToTemplate;
["baggedMortars", [["LIB_GrWr34_Barrel","LIB_GrWr34_Tripod_Deployed"]]] call _fnc_saveToTemplate;

//Minefield definition
//Not Magazine type would be: ["APERSBoundingMine", "APERSMine", "ATMine"]
["minefieldAT", ["LIB_TMI_42_MINE"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["LIB_shumine_42_MINE"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", []] call _fnc_saveToTemplate;
["pvpVehicles", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
//     "Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []];
_loadoutData setVariable ["carbines", []];
_loadoutData setVariable ["grenadeLaunchers", []];
_loadoutData setVariable ["SMGs", []];
_loadoutData setVariable ["shotguns", []];
_loadoutData setVariable ["machineGuns", []];
_loadoutData setVariable ["marksmanrifles", []];
_loadoutData setVariable ["sniperrifles", []];
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["ATLaunchers", [
["LIB_RPzB", "", "", "",["LIB_1Rnd_RPzB"], [], ""]]];
_loadoutData setVariable ["lightATLaunchers", [
["LIB_PzFaust_30m", "", "", "",[""], [], ""], 
["LIB_PzFaust_60m", "", "", "",[""], [], ""], 
["LIB_Faustpatrone", "", "", "",[""], [], ""]]];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["GLsidearms", []];

_loadoutData setVariable ["ATMines", ["LIB_STMI_MINE_mag"]];
_loadoutData setVariable ["APMines", ["LIB_SMI_35_MINE_mag"]];

_loadoutData setVariable ["lightExplosives", ["LIB_Ladung_Small_MINE_mag"]];
_loadoutData setVariable ["heavyExplosives", ["LIB_Ladung_Big_MINE_mag"]];

_loadoutData setVariable ["antiTankGrenades", ["lib_shg24x7"]];
_loadoutData setVariable ["antiInfantryGrenades", ["lib_shg24"]];
_loadoutData setVariable ["smokeGrenades", ["LIB_NB39"]];

_loadoutData setVariable ["antiTankGrenades", ["lib_shg24x7"]];
_loadoutData setVariable ["antiInfantryGrenades", ["lib_shg24"]];
_loadoutData setVariable ["smokeGrenades", ["LIB_NB39"]];

_loadoutData setVariable ["signalsmokeGrenades", ["LIB_RDG"]];


_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["LIB_GER_ItemWatch"]];
_loadoutData setVariable ["compasses", ["LIB_GER_ItemCompass_deg"]];
_loadoutData setVariable ["radios", []];
_loadoutData setVariable ["gpses", []];
_loadoutData setVariable ["NVGs", []];
_loadoutData setVariable ["binoculars", ["LIB_Binocular_GER"]];
_loadoutData setVariable ["rangefinder", ["LIB_Binocular_GER"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["MGvests", []];
_loadoutData setVariable ["MEDvests", []];
_loadoutData setVariable ["SLvests", []];
_loadoutData setVariable ["SNIvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["Atbackpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", ["Toolkit", "ACE_Clacker", "ACE_DefusalKit"]];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit"]];
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", []];
_loadoutData setVariable ["items_sniper_extras", []];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData setVariable ["uniforms", ["U_LIB_DAK_Sentry","U_LIB_DAK_Sentry_2","U_LIB_DAK_NCO"]];
_sfLoadoutData setVariable ["vests", ["V_LIB_DAK_VestMP40","V_LIB_DAK_VestKar98","V_LIB_DAK_VestG43","V_LIB_DAK_OfficerVest"]];

_sfLoadoutData setVariable ["MGvests", ["V_LIB_DAK_VestMP40"]]; 
_sfLoadoutData setVariable ["MEDvests", ["V_LIB_DAK_OfficerVest"]]; 
_sfLoadoutData setVariable ["GLvests", ["V_LIB_DAK_VestG43"]]; 

_sfLoadoutData setVariable ["backpacks", ["B_LIB_GER_Tonister34_cowhide","B_LIB_GER_Backpack"]];

_sfLoadoutData setVariable ["helmets", ["H_LIB_DAK_Helmet_2","H_LIB_DAK_Helmet_net_2"]];
_sfLoadoutData setVariable ["NVGs", []];
_sfLoadoutData setVariable ["binoculars", ["LIB_Binocular_GER"]];
_sfLoadoutData setVariable ["antiInfantryGrenades", ["lib_shg24"]];
_sfLoadoutData setVariable ["AALaunchers", []];

_sfLoadoutData setVariable ["rifles", [["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_SMK","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_T2"], [], ""],
        ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""]]];
_sfLoadoutData setVariable ["carbines", [["LIB_MP44", "", "", "", ["LIB_30Rnd_792x33","LIB_30Rnd_792x33","LIB_30rnd_792x33_t"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19","LIB_32Rnd_9x19","LIB_32rnd_9x19_t"], [], ""]]];
_sfLoadoutData setVariable ["grenadeLaunchers", [["LIB_MP44", "lib_acc_gw_sb_empty", "", "", ["LIB_30Rnd_792x33","LIB_30Rnd_792x33","LIB_30rnd_792x33_t"], ["LIB_1Rnd_G_PZGR_40"], ""],
        ["LIB_K98", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_30"], ""],
	["LIB_K98_Late", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_40"], ""]]];
_sfLoadoutData setVariable ["SMGs", [["LIB_FG42G", "", "", "", ["LIB_20Rnd_792x57"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19","LIB_32Rnd_9x19","LIB_32rnd_9x19_t"], [], ""]]];
_sfLoadoutData setVariable ["machineGuns", [["LIB_MG42", "", "", "", ["LIB_50Rnd_792x57_SMK"], [], ""],
        ["LIB_MG34", "", "", "", ["LIB_50Rnd_792x57_SMK"], [], ""]]];
_sfLoadoutData setVariable ["marksmanRifles", [["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_SMK","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_T2"], [], ""],
        ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""]]];
_sfLoadoutData setVariable ["sniperRifles", [	
	["LIB_K98ZF39", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_sS","LIB_5Rnd_792x57_t"], [], ""]]];

_sfLoadoutData setVariable ["lightATLaunchers", [
["LIB_PzFaust_30m", "", "", "",[""], [], ""], 
["LIB_PzFaust_60m", "", "", "",[""], [], ""]]];

_sfLoadoutData setVariable ["ATLaunchers", [
["LIB_RPzB", "", "", "",["LIB_1Rnd_RPzB"], [], ""]]];

_sfLoadoutData setVariable ["sidearms", [["LIB_P08", "", "", "", ["LIB_8Rnd_9x19_P08"], [], ""],
        ["LIB_P38", "", "", "", ["LIB_8Rnd_9x19"], [], ""]]];

_sfLoadoutData setVariable ["GLsidearms", []];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["U_LIB_DAK_Soldier","U_LIB_DAK_Soldier_2","U_LIB_DAK_Soldier_3"]];
_militaryLoadoutData setVariable ["vests", ["V_LIB_DAK_VestMP40","V_LIB_DAK_VestKar98","V_LIB_DAK_VestG43","V_LIB_DAK_OfficerVest"]];

_militaryLoadoutData setVariable ["MGvests", ["V_LIB_DAK_VestMG"]];
_militaryLoadoutData setVariable ["MEDvests", ["V_LIB_DAK_PioneerVest"]];
_militaryLoadoutData setVariable ["SLvests", ["V_LIB_DAK_VestUnterofficer"]];
_militaryLoadoutData setVariable ["SNIvests", ["V_LIB_DAK_VestKar98"]];
_militaryLoadoutData setVariable ["GLvests", ["V_LIB_DAK_VestKar98"]];
_militaryLoadoutData setVariable ["backpacks", ["B_LIB_GER_Tonister34_cowhide","B_LIB_GER_Backpack"]];
_militaryLoadoutData setVariable ["helmets", ["H_LIB_DAK_Helmet_ns","H_LIB_DAK_Helmet"]];

_militaryLoadoutData setVariable ["antiInfantryGrenades", ["lib_shg24"]];

_militaryLoadoutData setVariable ["AALaunchers", []];

_militaryLoadoutData setVariable ["rifles", [["LIB_K98", "", "", "", ["LIB_5Rnd_792x57"], [], ""],
        ["LIB_K98_Late", "", "", "", ["LIB_5Rnd_792x57"], [], ""]]];

_militaryLoadoutData setVariable ["carbines", [
	["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_T2"], [], ""],
    ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""],
	["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19","LIB_32Rnd_9x19","LIB_32rnd_9x19_t"], [], ""]
	]];

_militaryLoadoutData setVariable ["SMGs", [["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19","LIB_32Rnd_9x19","LIB_32rnd_9x19_t"], [], ""]]];

_militaryLoadoutData setVariable ["grenadeLaunchers", [["LIB_MP44", "lib_acc_gw_sb_empty", "", "", ["LIB_30Rnd_792x33","LIB_30Rnd_792x33","LIB_30rnd_792x33_t"], ["LIB_1Rnd_G_PZGR_40"], ""],
        ["LIB_K98", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_30"], ""],
	["LIB_K98_Late", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_40"], ""]]];

_militaryLoadoutData setVariable ["machineGuns", [["LIB_MG42", "", "", "", ["LIB_50Rnd_792x57_sS"], [], ""],
        ["LIB_MG34", "", "", "", ["LIB_50Rnd_792x57_sS"], [], ""]]];

_militaryLoadoutData setVariable ["marksmanRifles", [["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_T2"], [], ""],
        ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""]]];

_militaryLoadoutData setVariable ["sniperRifles", [
	["LIB_K98ZF39", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_sS","LIB_5Rnd_792x57_t"], [], ""]
	]];

_militaryLoadoutData setVariable ["lightATLaunchers", [
"LIB_PzFaust_60m",
"LIB_PzFaust_30m"
]]; 

_militaryLoadoutData setVariable ["ATLaunchers", [
["LIB_RPzB", "", "", "", ["LIB_1Rnd_RPzB"], [], ""]
]]; 

_militaryLoadoutData setVariable ["missileATLaunchers", [
["LIB_RPzB", "", "", "", ["LIB_1Rnd_RPzB"], [], ""]
]]; 

_militaryLoadoutData setVariable ["sidearms", [["LIB_P08", "", "", "", ["LIB_8Rnd_9x19_P08"], [], ""],
        ["LIB_P38", "", "", "", ["LIB_8Rnd_9x19"], [], ""]]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData setVariable ["uniforms", ["U_LIB_GER_Tank_crew_leutnant"]];
_policeLoadoutData setVariable ["vests", ["V_LIB_GER_TankPrivateBelt"]];
_policeLoadoutData setVariable ["helmets", ["H_LIB_GER_TankPrivateCap"]];

_policeLoadoutData setVariable ["shotguns", []];
_policeLoadoutData setVariable ["SMGs", [["LIB_MP38", "", "", "", ["LIB_32rnd_9x19"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32rnd_9x19"], [], ""]]];
_policeLoadoutData setVariable ["sidearms", [
	["LIB_P08", "", "", "", ["LIB_8Rnd_9x19_P08"], [], ""],
        ["LIB_P38", "", "", "", ["LIB_8Rnd_9x19"], [], ""],
	["LIB_M1896", "", "", "", ["LIB_10Rnd_9x19_M1896"], [], ""]
]];
////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["U_LIB_DAK_Shorts","U_LIB_DAK_Shorts_2","U_LIB_DAK_Shorts_3"]];
_militiaLoadoutData setVariable ["vests", ["V_LIB_GER_VestKar98","V_LIB_GER_VestMP40"]];
_militiaLoadoutData setVariable ["backpacks", ["B_LIB_GER_A_frame"]];
_militiaLoadoutData setVariable ["helmets", ["H_LIB_DAK_Helmet","H_LIB_DAK_PithHelmet"]];
_militiaLoadoutData setVariable ["rifles", [["LIB_K98", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""],
        ["LIB_K98_Late", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""]]];
_militiaLoadoutData setVariable ["carbines", [
	["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_T"], [], ""],
    ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""],
	["LIB_K98", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""],
	["LIB_K98_Late", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""]
	]]; 

_militiaLoadoutData setVariable ["grenadeLaunchers", [["LIB_K98", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_30"], ""],
        ["LIB_K98_Late", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_40"], ""]]];
_militiaLoadoutData setVariable ["SMGs", [["LIB_MP38", "", "", "", ["LIB_32rnd_9x19"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32rnd_9x19"], [], ""]
		]];

_militiaLoadoutData setVariable ["shotguns", [["LIB_K98", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""],
	["LIB_K98_Late", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""]]];

_militiaLoadoutData setVariable ["machineGuns", [["LIB_MG34", "", "", "", ["LIB_50Rnd_792x57"], [], ""],
        ["LIB_MG42", "", "", "", ["LIB_50Rnd_792x57"], [], ""]
		]];

_militiaLoadoutData setVariable ["marksmanRifles", [["LIB_K98", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""],
        ["LIB_K98_Late", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""]]];

_militiaLoadoutData setVariable ["sniperRifles", [["LIB_K98ZF39", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""],
        ["LIB_K98", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""],
	["LIB_K98_Late", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_t"], [], ""]
	]];

_militiaLoadoutData setVariable ["lightATLaunchers",  ["LIB_Faustpatrone"]]; 
_militiaLoadoutData setVariable ["ATLaunchers", [
["LIB_RPzB", "", "", "", ["LIB_1Rnd_RPzB"], [], ""] 
]]; 

_militiaLoadoutData setVariable ["sidearms", [["LIB_P38", "", "", "", ["LIB_8Rnd_9x19"], [], ""]]];
_militiaLoadoutData setVariable ["antiInfantryGrenades", ["LIB_Shg24"]];


/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["U_LIB_DAK_Sentry","U_LIB_DAK_Sentry_2","U_LIB_DAK_NCO"]];
_eliteLoadoutData setVariable ["vests", ["V_LIB_DAK_VestMP40","V_LIB_DAK_VestKar98","V_LIB_DAK_VestG43","V_LIB_DAK_OfficerVest"]];
_eliteLoadoutData setVariable ["MGvests", ["V_LIB_DAK_VestMG"]];
_eliteLoadoutData setVariable ["MEDvests", ["V_LIB_DAK_PioneerVest"]];
_eliteLoadoutData setVariable ["GLvests", ["V_LIB_DAK_VestKar98"]];

_eliteLoadoutData setVariable ["backpacks", ["B_LIB_GER_Tonister34_cowhide","B_LIB_GER_Backpack"]];
_eliteLoadoutData setVariable ["helmets", ["H_LIB_DAK_Helmet_2","H_LIB_DAK_Helmet_net_2"]];
_eliteLoadoutData setVariable ["NVGs", []];
_eliteLoadoutData setVariable ["binoculars", ["LIB_Binocular_GER"]];
_eliteLoadoutData setVariable ["antiInfantryGrenades", ["lib_shg24"]];


_eliteLoadoutData setVariable ["rifles", [["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_SMK","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_T2"], [], ""],
        ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""]]];
_eliteLoadoutData setVariable ["carbines", [["LIB_MP44", "", "", "", ["LIB_30Rnd_792x33","LIB_30Rnd_792x33","LIB_30rnd_792x33_t"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19","LIB_32Rnd_9x19","LIB_32rnd_9x19_t"], [], ""]]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [["LIB_MP44", "lib_acc_gw_sb_empty", "", "", ["LIB_30Rnd_792x33","LIB_30Rnd_792x33","LIB_30rnd_792x33_t"], ["LIB_1Rnd_G_PZGR_40"], ""],
        ["LIB_K98", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_30"], ""],
	["LIB_K98_Late", "lib_acc_gw_sb_empty", "", "", ["LIB_5Rnd_792x57"], ["LIB_1Rnd_G_PZGR_40"], ""]]];
_eliteLoadoutData setVariable ["SMGs", [["LIB_FG42G", "", "", "", ["LIB_20Rnd_792x57"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19","LIB_32Rnd_9x19","LIB_32rnd_9x19_t"], [], ""]]];
_eliteLoadoutData setVariable ["machineGuns", [["LIB_MG42", "", "", "", ["LIB_50Rnd_792x57_SMK"], [], ""],
        ["LIB_MG34", "", "", "", ["LIB_50Rnd_792x57_SMK"], [], ""]]];
_eliteLoadoutData setVariable ["marksmanRifles", [["LIB_G43", "", "", "", ["LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57","LIB_10Rnd_792x57_SMK","LIB_10Rnd_792x57_T","LIB_10Rnd_792x57_sS","LIB_10Rnd_792x57_T2"], [], ""],
        ["LIB_G41", "", "", "", ["LIB_10Rnd_792x57_clip"], [], ""]]];
_eliteLoadoutData setVariable ["sniperRifles", [	
	["LIB_K98ZF39", "", "", "", ["LIB_5Rnd_792x57","LIB_5Rnd_792x57_sS","LIB_5Rnd_792x57_t"], [], ""]]];

_eliteLoadoutData setVariable ["lightATLaunchers", [
"LIB_PzFaust_60m",
"LIB_PzFaust_30m"
]]; 
_eliteLoadoutData setVariable ["ATLaunchers", [
["LIB_RPzB", "", "", "", ["LIB_1Rnd_RPzB"], [], ""]
]]; 
_eliteLoadoutData setVariable ["sidearms", [["LIB_P08", "", "", "", ["LIB_8Rnd_9x19_P08"], [], ""],
        ["LIB_P38", "", "", "", ["LIB_8Rnd_9x19"], [], ""]]];

_eliteLoadoutData setVariable ["GLsidearms", [["LIB_P38", "", "", "", ["LIB_8Rnd_9x19"], [], ""]]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
["LIB_RPzB", "", "", "", ["LIB_1Rnd_RPzB"], [], ""]
]]; 



//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData setVariable ["uniforms", ["U_LIB_GER_Spg_crew_private","U_LIB_GER_Spg_crew_leutnant","U_LIB_GER_Spg_crew_unterofficer"]];
_crewLoadoutData setVariable ["vests", ["V_LIB_GER_TankPrivateBelt"]];
_crewLoadoutData setVariable ["helmets", ["H_LIB_GER_Cap"]];

_crewLoadoutData setVariable ["carbines", []];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["U_LIB_GER_LW_pilot","U_LIB_GER_LW_pilot"]];
_pilotLoadoutData setVariable ["vests", ["V_LIB_GER_OfficerBelt"]];
_pilotLoadoutData setVariable ["helmets", ["H_LIB_GER_LW_PilotHelmet"]];

_pilotLoadoutData setVariable ["SMGs", [
["LIB_MP40", "", "", "", ["LIB_32Rnd_9x19"], [], ""],
["LIB_MP38", "", "", "", ["LIB_32Rnd_9x19"], [], ""]]];
// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["SLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["longRangeRadios"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["MEDvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[["shotguns", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	[["GLsidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
	["handgun", 3] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["antiTankGrenades", 3] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[["shotguns", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_engineer_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Atbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "lightATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;
	["launcher", 2] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Atbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[["missileATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;
	["launcher", 2] call _fnc_addAdditionalMuzzleMagazines;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Atbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["MGvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["marksmanrifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["SNIvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["sniperrifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	[selectRandom ["SMGs", "shotguns"]] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
	call _unarmedTemplate;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
	params ["_name", "_loadoutTemplate"];
	private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
	private _finalName = _prefix + _name;
	[_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate],
	["Standard", _policeTemplate]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;


/////////////////////////////
//  Elite Units  //
/////////////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["Radioman", _radiomanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////


["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Official", _policeTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Unarmed", _unarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

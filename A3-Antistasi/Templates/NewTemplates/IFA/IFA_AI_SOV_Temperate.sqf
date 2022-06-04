//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Soviet"] call _fnc_saveToTemplate;
["spawnMarkerName", "Soviet Reinforcements"] call _fnc_saveToTemplate;

["flag", "LIB_FlagCarrier_SU"] call _fnc_saveToTemplate;
["flagTexture", "\WW2\Core_t\IF_Decals_t\Ussr\flag_SU_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "LIB_Faction_RKKA"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

//CHANGE BASE CHARACTER BEFORE UPLOADING
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "LIB_SOV_sergeant"],
	["militia_rifleman", "LIB_SOV_rifleman"],
	["militia_radioman", "LIB_SOV_rifleman"],
	["militia_medic", "LIB_SOV_medic"],
	["militia_engineer", "LIB_SOV_sapper"],
	["militia_explosivesexpert", "LIB_SOV_operator"],
	["militia_grenadier", "LIB_SOV_grenadier"],
	["militia_lat", "LIB_SOV_AT_grenadier"],
	["militia_at", "LIB_SOV_AT_M1A1_soldier"],
	["militia_aa", "LIB_SOV_LAT_Soldier"],
	["militia_machinegunner", "LIB_SOV_mgunner"],
	["militia_marksman", "LIB_SOV_scout_sniper"],
	["militia_sniper", "LIB_SOV_scout_sniper"],

	["military_squadleader", "LIB_SOV_sergeant"],
	["military_rifleman", "LIB_SOV_rifleman"],
	["military_radioman", "LIB_SOV_rifleman"],
	["military_medic", "LIB_SOV_medic"],
	["military_engineer", "LIB_SOV_sapper"],
	["military_explosivesexpert", "LIB_SOV_operator"],
	["military_grenadier", "LIB_SOV_grenadier"],
	["military_lat", "LIB_SOV_AT_grenadier"],
	["military_at", "LIB_SOV_AT_M1A1_soldier"],
	["military_aa", "LIB_SOV_LAT_Soldier"],
	["military_machinegunner", "LIB_SOV_mgunner"],
	["military_marksman", "LIB_SOV_scout_sniper"],
	["military_sniper", "LIB_SOV_scout_sniper"],

	["elite_squadleader", "LIB_SOV_sergeant"],
	["elite_rifleman", "LIB_SOV_rifleman"],
	["elite_radioman", "LIB_SOV_rifleman"],
	["elite_medic", "LIB_SOV_medic"],
	["elite_engineer", "LIB_SOV_sapper"],
	["elite_explosivesexpert", "LIB_SOV_operator"],
	["elite_grenadier", "LIB_SOV_grenadier"],
	["elite_lat", "LIB_SOV_AT_grenadier"],
	["elite_at", "LIB_SOV_AT_M1A1_soldier"],
	["elite_aa", "LIB_SOV_LAT_Soldier"],
	["elite_machinegunner", "LIB_SOV_mgunner"],
	["elite_marksman", "LIB_SOV_scout_sniper"],
	["elite_sniper", "LIB_SOV_scout_sniper"],

	["sf_squadleader", "LIB_SOV_scout_p_officer"],
	["sf_rifleman", "LIB_SOV_scout_rifleman"],
	["sf_radioman", "LIB_SOV_scout_rifleman"],
	["sf_medic", "LIB_SOV_medic"],
	["sf_engineer", "LIB_SOV_sapper"],
	["sf_explosivesexpert", "LIB_SOV_operator"],
	["sf_grenadier", "LIB_SOV_grenadier"],
	["sf_lat", "LIB_SOV_AT_grenadier"],
	["sf_at", "LIB_SOV_AT_M1A1_soldier"],
	["sf_aa", "LIB_SOV_LAT_Soldier"],
	["sf_machinegunner", "LIB_SOV_mgunner"],
	["sf_marksman", "LIB_SOV_scout_sniper"],
	["sf_sniper", "LIB_SOV_scout_sniper"],

	["other_crew", "LIB_SOV_rifleman"],
	["other_unarmed", "LIB_SOV_unequip"],
	["other_official", "LIB_SOV_lieutenant"],
	["other_traitor", "LIB_SOV_staff_sergeant"],
	["other_pilot", "LIB_SOV_pilot"],
	["police_squadleader", "LIB_NKVD_first_lieutenant"],
	["police_standard", "LIB_NKVD_rifleman"]
]] call _fnc_saveToTemplate;
//CHANGE THIS FOR SOVIETS SOLDIERS

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "LIB_AmmoCrate_Arty_SU"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["LIB_GazM1_SOV"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["LIB_Willys_MB","LIB_Willys_MB_Hood"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["LIB_UK_Willys_MB_M1919","LIB_Scout_M3"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["LIB_Zis5v","LIB_US6_Tent","LIB_US6_Open"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["LIB_US6_Open_Cargo","LIB_US6_Tent_Cargo"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["LIB_US_GMC_Ammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["LIB_Zis6_Parm"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["LIB_Zis5v_Fuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["LIB_Zis5v_Med"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["LIB_Scout_M3_FFV","LIB_SOV_M3_Halftrack"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["LIB_T34_76","LIB_T34_85","LIB_JS2_43","LIB_SU85"]] call _fnc_saveToTemplate;
["vehiclesAA", ["LIB_Zis5v_61K"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["not_supported"]] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", ["not_supported"]] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesSam", ["LIB_61k", "LIB_61k"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["LIB_LCA"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["LIB_UK_LCI"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", ["not_supported"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["LIB_Pe2"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["LIB_P39", "LIB_RA_P39_2", "LIB_RA_P39_3"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["LIB_Li2"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["LIB_US6_Open"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["LIB_SOV_M3_Halftrack"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["LIB_JS2_43"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [["LIB_US6_BM13", ["LIB_16Rnd_BM13","LIB_16Rnd_BM13"]]]] call _fnc_saveToTemplate;


["uavsAttack", ["not_supported"]] call _fnc_saveToTemplate;
["uavsPortable", ["not_supported"]] call _fnc_saveToTemplate;


["vehiclesMilitiaLightArmed", ["LIB_UK_Willys_MB_M1919"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["LIB_US6_Open"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["LIB_Willys_MB"]] call _fnc_saveToTemplate;

["vehiclesMilitiaApcs", ["LIB_SdKfz251_captured_FFV"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["LIB_M4A2_SOV"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["LIB_GazM1_SOV_camo_sand"]] call _fnc_saveToTemplate;

["staticMGs", ["I_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["LIB_Zis3"]] call _fnc_saveToTemplate;
["staticAA", ["LIB_61k"]] call _fnc_saveToTemplate;
["staticMortars", ["LIB_BM37"]] call _fnc_saveToTemplate;
["staticHowitzers", ["LIB_Nebelwerfer41_Camo"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "LIB_8Rnd_82mmHE_BM37"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "LIB_82mm_BM37_SmokeShell"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "LIB_6Rnd_NbW41"] call _fnc_saveToTemplate;

//Bagged weapon definitions
["baggedMGs", [["I_HMG_02_support_high_F", "I_G_HMG_02_high_weapon_F"]]] call _fnc_saveToTemplate;
["baggedAT", [[]]] call _fnc_saveToTemplate;
["baggedAA", [[]]] call _fnc_saveToTemplate;
["baggedMortars", [["LIB_BM37_Barrel","LIB_BM37_Tripod_Deployed"]]] call _fnc_saveToTemplate;

//Minefield definition
//Not Magazine type would be: ["APERSBoundingMine", "APERSMine", "ATMine"]
["minefieldAT", ["LIB_TM44_MINE"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["LIB_PMD6_MINE"]] call _fnc_saveToTemplate;

//PvP definitions
["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", []] call _fnc_saveToTemplate;
["pvpVehicles", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []];
_loadoutData setVariable ["carbines", []];
_loadoutData setVariable ["grenadeLaunchers", []];
_loadoutData setVariable ["SMGs", []];
_loadoutData setVariable ["machineGuns", []];
_loadoutData setVariable ["marksmanRifles", []];
_loadoutData setVariable ["sniperRifles", []];

_loadoutData setVariable ["lightATLaunchers", [
["LIB_PzFaust_30m", "", "", "",[""], [], ""], 
["LIB_PzFaust_60m", "", "", "",[""], [], ""]]];
_loadoutData setVariable ["ATLaunchers", []];
_loadoutData setVariable ["missileATLaunchers", [
["LIB_M1A1_Bazooka", "", "", "",["LIB_1Rnd_60mm_M6"], [], ""]]];
_loadoutData setVariable ["AALaunchers", [["LIB_M1A1_Bazooka", "", "", "",["LIB_1Rnd_60mm_M6"], [], ""]]];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", ["LIB_TM44_MINE_mag"]];
_loadoutData setVariable ["APMines", ["LIB_PMD6_MINE_mag"]];
_loadoutData setVariable ["lightExplosives", ["LIB_Ladung_Small_MINE_mag"]];
_loadoutData setVariable ["heavyExplosives", ["LIB_Ladung_Big_MINE_mag"]];

_loadoutData setVariable ["antiInfantryGrenades", ["LIB_Rg42"]];
_loadoutData setVariable ["antiTankGrenades", ["LIB_Rpg6"]];
_loadoutData setVariable ["smokeGrenades", ["LIB_RDG"]];
_loadoutData setVariable ["signalsmokeGrenades", ["not_supported"]];

_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["LIB_GER_ItemWatch"]];
_loadoutData setVariable ["compasses", ["LIB_GER_ItemCompass_deg"]];
_loadoutData setVariable ["radios", []];
_loadoutData setVariable ["gpses", []];
_loadoutData setVariable ["NVGs", []];
_loadoutData setVariable ["binoculars", ["LIB_Binocular_SU"]];
_loadoutData setVariable ["rangefinder", ["LIB_Binocular_SU"]];

_loadoutData setVariable ["uniforms", [""]];
_loadoutData setVariable ["offuniforms", []];
_loadoutData setVariable ["vests", ["",""]];
_loadoutData setVariable ["Hvests", [""]];
_loadoutData setVariable ["GLvests", [""]];
_loadoutData setVariable ["backpacks", [""]];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", [""]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", ["Toolkit", "MineDetector"]];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];
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
_sfLoadoutData setVariable ["uniforms", ["U_LIB_SOV_Razvedchik_am"]];
_sfLoadoutData setVariable ["vests", ["V_LIB_SOV_IShBrVestPPShMag","V_LIB_SOV_IShBrVestPPShDisc","V_LIB_SOV_IShBrVestMG"]];
_sfLoadoutData setVariable ["MGvests", ["V_LIB_SOV_IShBrVestPPShMag"]]; 
_sfLoadoutData setVariable ["MEDvests", ["V_LIB_SOV_IShBrVestMG"]]; 
_sfLoadoutData setVariable ["GLvests", ["V_LIB_SOV_IShBrVestPPShDisc"]]; 
_sfLoadoutData setVariable ["backpacks", ["B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green"]];
_sfLoadoutData setVariable ["helmets", ["H_LIB_SOV_RA_Helmet"]];
_sfLoadoutData setVariable ["NVGs", []];
_sfLoadoutData setVariable ["binoculars", ["LIB_Binocular_SU"]];
_sfLoadoutData setVariable ["missileATLaunchers", [
["LIB_M1A1_Bazooka", "", "", "",["LIB_1Rnd_60mm_M6"], [], ""],
["LIB_M1A1_Bazooka", "", "", "",["LIB_1Rnd_60mm_M6"], [], ""]
]];

//SF Weapons
_sfLoadoutData setVariable ["rifles", [["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54_b30","LIB_5Rnd_762x54_D"], [], ""],
        ["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""]]];
_sfLoadoutData setVariable ["carbines", [["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""],
        ["LIB_PPSh41_m", "", "", "", ["LIB_35Rnd_762x25_t"], [], ""]]];
_sfLoadoutData setVariable ["grenadeLaunchers", [["LIB_M9130_DYAKONOV", "LIB_ACC_GL_DYAKONOV_Empty", "", "", ["LIB_5Rnd_762x54"], ["LIB_1Rnd_G_DYAKONOV"], ""]]];
_sfLoadoutData setVariable ["SMGs", [["LIB_PPSh41_d", "", "", "", ["LIB_71Rnd_762x25_ap"], [], ""],
        ["LIB_PPSh41_m", "", "", "", ["LIB_35Rnd_762x25_t"], [], ""]]];
_sfLoadoutData setVariable ["machineGuns", [["LIB_DT_OPTIC", "", "", "", ["LIB_63Rnd_762x54d"], [], ""],
        ["LIB_DT", "", "", "", ["LIB_63Rnd_762x54"], [], ""],
	["LIB_DP28", "", "", "", ["LIB_47Rnd_762x54"], [], ""]]];
_sfLoadoutData setVariable ["marksmanRifles", [["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""],
        ["LIB_PPSh41_d", "", "", "", ["LIB_71Rnd_762x25"], [], ""]]];
_sfLoadoutData setVariable ["sniperRifles", [["LIB_M9130PU", "", "", "", ["LIB_5Rnd_762x54_b30"], [], ""]]];
_sfLoadoutData setVariable ["sidearms", [["LIB_TT33", "", "", "", ["LIB_8Rnd_762x25"], [], ""]]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["U_LIB_SOV_Strelok_summer"]];
_militaryLoadoutData setVariable ["offuniforms", ["U_LIB_SOV_Kapitan_summer"]];
_militaryLoadoutData setVariable ["vests", ["V_LIB_SOV_RA_MosinBelt","V_LIB_SOV_RA_PPShBelt"]];
_militaryLoadoutData setVariable ["GLvests", ["V_LIB_SOV_RA_SVTBelt"]]; 
_militaryLoadoutData setVariable ["Hvests", ["V_LIB_SOV_RA_OfficerVest"]]; 
_militaryLoadoutData setVariable ["backpacks", ["B_LIB_SOV_RA_Rucksack_Green"]];
_militaryLoadoutData setVariable ["helmets", ["H_LIB_SOV_RA_PrivateCap","H_LIB_SOV_RA_Helmet"]];
_militaryLoadoutData setVariable ["binoculars", ["LIB_Binocular_SU"]];

_militaryLoadoutData setVariable ["rifles", [
	["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""],
    ["LIB_M38", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""],
	["LIB_M44", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""]
	]];
_militaryLoadoutData setVariable ["carbines", [
	["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""],
        ["LIB_M38", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""],
	["LIB_M44", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""]
	]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [["LIB_M9130_DYAKONOV", "LIB_ACC_GL_DYAKONOV_Empty", "", "", ["LIB_5Rnd_762x54"], ["LIB_1Rnd_G_DYAKONOV"], ""]]];
_militaryLoadoutData setVariable ["SMGs", [["LIB_PPSh41_m", "", "", "", ["LIB_35Rnd_762x25_t"], [], ""],
        ["LIB_PPSh41_d", "", "", "", ["LIB_71Rnd_762x25_t2"], [], ""]]];
_militaryLoadoutData setVariable ["machineGuns", [["LIB_DT", "", "", "", ["LIB_63Rnd_762x54"], [], ""],
        ["LIB_DP28", "", "", "", ["LIB_47Rnd_762x54"], [], ""]]];
_militaryLoadoutData setVariable ["marksmanRifles", [["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""],
        ["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54"], [], ""]]];
_militaryLoadoutData setVariable ["sniperRifles", [["LIB_M9130PU", "", "", "", ["LIB_5Rnd_762x54_b30","LIB_5Rnd_762x54","LIB_5Rnd_762x54"], [], ""]]];
_militaryLoadoutData setVariable ["sidearms", [["LIB_TT33", "", "", "", ["LIB_8Rnd_762x25"], [], ""]]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["U_LIB_NKVD_Leutenant"]];
_policeLoadoutData setVariable ["vests", ["V_LIB_SOV_RA_OfficerVest"]];
_policeLoadoutData setVariable ["helmets", ["H_LIB_NKVD_OfficerCap"]];
_policeLoadoutData setVariable ["SMGs", [["LIB_PPSh41_m", "", "", "", ["LIB_35Rnd_762x25"], [], ""]]];
_policeLoadoutData setVariable ["sidearms", [["LIB_TT33", "", "", "", ["LIB_8Rnd_762x25"], [], ""],
        ["LIB_M1896", "", "", "", ["LIB_10Rnd_9x19_M1896"], [], ""]]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["U_LIB_SOV_Strelok_summer"]];
_militiaLoadoutData setVariable ["offuniforms", ["U_LIB_SOV_Sergeant"]]; 
_militiaLoadoutData setVariable ["vests", ["V_LIB_SOV_RA_MosinBelt","V_LIB_SOV_RA_PPShBelt"]];
_militiaLoadoutData setVariable ["GLvests", ["V_LIB_SOV_RA_SVTBelt"]];
_militiaLoadoutData setVariable ["Hvests", ["V_LIB_SOV_RA_OfficerVest"]];
_militiaLoadoutData setVariable ["backpacks", ["B_LIB_SOV_RA_Rucksack_Green"]];
_militiaLoadoutData setVariable ["helmets", ["H_LIB_SOV_RA_PrivateCap"]];
_militiaLoadoutData setVariable ["rifles", [["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54"], [], ""],
        ["LIB_M38", "", "", "", ["LIB_5Rnd_762x54"], [], ""],
	["LIB_M44", "", "", "", ["LIB_5Rnd_762x54"], [], ""]]];
_militiaLoadoutData setVariable ["carbines", [["LIB_M38", "", "", "", ["LIB_5Rnd_762x54"], [], ""],
        ["LIB_M44", "", "", "", ["LIB_5Rnd_762x54"], [], ""]]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [["LIB_M9130_DYAKONOV", "LIB_ACC_GL_DYAKONOV_Empty", "", "", ["LIB_5Rnd_762x54"], ["LIB_1Rnd_G_DYAKONOV"], ""]]];
_militiaLoadoutData setVariable ["SMGs", [["LIB_PPSh41_m", "", "", "", ["LIB_35Rnd_762x25_t"], [], ""],
        ["LIB_MP40", "", "", "", ["LIB_32rnd_9x19"], [], ""]]];
_militiaLoadoutData setVariable ["machineGuns", [["LIB_DP28", "", "", "", ["LIB_47Rnd_762x54"], [], ""]]];
_militiaLoadoutData setVariable ["marksmanRifles", [["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54_t30"], [], ""],
        ["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""]]];
_militiaLoadoutData setVariable ["sniperRifles", [["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54_t46"], [], ""],
        ["LIB_M9130PU", "", "", "", ["LIB_5Rnd_762x54"], [], ""]]];
_militiaLoadoutData setVariable ["sidearms", [["LIB_TT33", "", "", "", ["LIB_8Rnd_762x25"], [], ""],
        ["LIB_M1896", "", "", "", ["LIB_10Rnd_9x19_M1896"], [], ""]]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["U_LIB_SOV_Razvedchik_am"]];
_eliteLoadoutData setVariable ["offuniforms", ["U_LIB_SOV_Razvedchik_mix"]];
_eliteLoadoutData setVariable ["vests", ["V_LIB_SOV_IShBrVestMG"]];
_eliteLoadoutData setVariable ["GLvests", ["V_LIB_SOV_IShBrVestPPShMag"]];
_eliteLoadoutData setVariable ["Hvests", ["V_LIB_SOV_IShBrVestPPShDisc"]];
_eliteLoadoutData setVariable ["backpacks", ["B_LIB_SOV_RA_Rucksack_Gas_Kit_Green", "B_LIB_SOV_RA_Rucksack2_Gas_Kit_Green"]];
_eliteLoadoutData setVariable ["helmets", ["H_LIB_SOV_RA_Helmet", "H_LIB_SOV_RA_OfficerCap"]];
_eliteLoadoutData setVariable ["binoculars", ["LIB_Binocular_SU"]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
["LIB_M1A1_Bazooka", "", "", "",["LIB_1Rnd_60mm_M6"], [], ""],
["LIB_M1A1_Bazooka", "", "", "",["LIB_1Rnd_60mm_M6"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
	["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""],
    ["LIB_M38", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""],
	["LIB_M44", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""]
	]];
_eliteLoadoutData setVariable ["carbines", [
	["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""],
    ["LIB_M38", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""],
	["LIB_M44", "", "", "", ["LIB_5Rnd_762x54_D"], [], ""]
	]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
	["LIB_M9130_DYAKONOV", "LIB_ACC_GL_DYAKONOV_Empty", "", "", ["LIB_5Rnd_762x54"], ["LIB_1Rnd_G_DYAKONOV"], ""]
	]];
	
_eliteLoadoutData setVariable ["SMGs", [
	["LIB_PPSh41_m", "", "", "", ["LIB_35Rnd_762x25_t"], [], ""],
    ["LIB_M1A1_Thompson", "", "", "", ["LIB_30Rnd_45ACP_t"], [], ""],
    ["LIB_PPSh41_d", "", "", "", ["LIB_71Rnd_762x25_t2"], [], ""]
	]];

_eliteLoadoutData setVariable ["machineGuns", [
	["LIB_DT", "", "", "", ["LIB_63Rnd_762x54"], [], ""],
        ["LIB_DP28", "", "", "", ["LIB_47Rnd_762x54"], [], ""],
	    ["LIB_DT_OPTIC", "", "", "", ["LIB_47Rnd_762x54"], [], ""]
		]];		
_eliteLoadoutData setVariable ["marksmanRifles", [
	["LIB_SVT_40", "", "", "", ["LIB_10Rnd_762x54"], [], ""],
    ["LIB_M9130", "", "", "", ["LIB_5Rnd_762x54"], [], ""]
	]];

_eliteLoadoutData setVariable ["sniperRifles", [
	["LIB_M9130PU", "", "", "", ["LIB_5Rnd_762x54_b30","LIB_5Rnd_762x54","LIB_5Rnd_762x54"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
	["LIB_TT33", "", "", "", ["LIB_8Rnd_762x25"], [], ""]
	]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData setVariable ["uniforms", ["U_LIB_SOV_Tank_ryadovoi"]];
_crewLoadoutData setVariable ["vests", ["V_LIB_SOV_RAZV_MGBelt"]];
_crewLoadoutData setVariable ["helmets", ["H_LIB_SOV_TankHelmet"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["U_LIB_SOV_Pilot"]];
_pilotLoadoutData setVariable ["vests", ["V_LIB_SOV_RA_Belt"]];
_pilotLoadoutData setVariable ["helmets", ["H_LIB_SOV_PilotHelmet"]];


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
	[["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
	[["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

  	[selectRandom ["carbines", "smgs"]] call _fnc_setPrimary;
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

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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

	[selectRandom ["carbines", "smgs"]] call _fnc_setPrimary;
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
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
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
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
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
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
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


	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
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
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["sniperRifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
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


	["smgs"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

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

	[selectRandom ["carbines", "smgs"]] call _fnc_setPrimary;
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

///////////////////////
//  Elite Units   //
///////////////////////
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

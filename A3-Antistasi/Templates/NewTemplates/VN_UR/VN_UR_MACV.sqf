//////////////////////////
//   Side Information   //
//////////////////////////

["name", "MACV"] call _fnc_saveToTemplate;
["spawnMarkerName", "MACV Support Corridor"] call _fnc_saveToTemplate;

["flag", "vn_flag_usa"] call _fnc_saveToTemplate;
["flagTexture", "vn\objects_f_vietnam\flags\data\vn_flag_01_usa_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "vn_flag_usa"] call _fnc_saveToTemplate;


//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "uns_men_ROK_WH68_PL"],
	["militia_rifleman", "uns_men_ROK_WH68_RF1"],
	["militia_radioman", "uns_men_ROK_WH68_RTO"],
	["militia_medic", "uns_men_ROK_WH68_MED"],
	["militia_engineer", "uns_men_ROK_WH68_ENG"],
	["militia_explosivesexpert", "uns_men_ROK_WH68_DEM"],
	["militia_grenadier", "uns_men_ROK_WH68_GL"],
	["militia_lat", "uns_men_ROK_WH68_AT"],
	["militia_at", "uns_men_ROK_WH68_AT"],
	["militia_aa", "uns_men_ROK_WH68_RF1"],
	["militia_machinegunner", "uns_men_ROK_WH68_HMG"],
	["militia_marksman", "uns_men_ROK_WH68_MRK"],
	["militia_sniper", "uns_men_ROK_WH68_MRK"],

	["military_squadleader", "vn_b_men_army_02"],
	["military_rifleman", "vn_b_men_army_15"],
	["military_radioman", "vn_b_men_army_08"],
	["military_medic", "vn_b_men_army_03"],
	["military_engineer", "vn_b_men_army_04"],
	["military_explosivesexpert", "vn_b_men_army_05"],
	["military_grenadier", "vn_b_men_army_07"],
	["military_lat", "vn_b_men_army_12"],
	["military_at", "vn_b_men_army_12"],
	["military_aa", "vn_b_men_army_15"],
	["military_machinegunner", "vn_b_men_army_06"],
	["military_marksman", "vn_b_men_army_10"],
	["military_sniper", "vn_b_men_army_11"],

	["elite_squadleader", "vn_b_men_army_02"],
	["elite_rifleman", "vn_b_men_army_15"],
	["elite_radioman", "vn_b_men_army_08"],
	["elite_medic", "vn_b_men_army_03"],
	["elite_engineer", "vn_b_men_army_04"],
	["elite_explosivesexpert", "vn_b_men_army_05"],
	["elite_grenadier", "vn_b_men_army_07"],
	["elite_lat", "vn_b_men_army_12"],
	["elite_at", "vn_b_men_army_12"],
	["elite_aa", "vn_b_men_army_15"],
	["elite_machinegunner", "vn_b_men_army_06"],
	["elite_marksman", "vn_b_men_army_10"],
	["elite_sniper", "vn_b_men_army_11"],

	["sf_squadleader", "vn_b_men_army_02"],
	["sf_rifleman", "vn_b_men_army_15"],
	["sf_radioman", "vn_b_men_army_08"],
	["sf_medic", "vn_b_men_army_03"],
	["sf_engineer", "vn_b_men_army_04"],
	["sf_explosivesexpert", "vn_b_men_army_05"],
	["sf_grenadier", "vn_b_men_army_07"],
	["sf_lat", "vn_b_men_army_12"],
	["sf_at", "vn_b_men_army_12"],
	["sf_aa", "vn_b_men_army_15"],
	["sf_machinegunner", "vn_b_men_army_06"],
	["sf_marksman", "vn_b_men_army_10"],
	["sf_sniper", "vn_b_men_army_11"],

	["other_crew", "vn_b_men_army_24"],
	["other_unarmed", "vn_b_men_army_15"],
	["other_official", "vn_b_men_army_01"],
	["other_traitor", "B_G_Soldier_F"],
	["other_pilot", "vn_b_men_aircrew_05"],
	["police_squadleader", "vn_b_men_army_22"],
	["police_standard", "vn_b_men_army_22"]
]] call _fnc_saveToTemplate;

//////////////////////////
//  Mission/HQ Objects  //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "vn_o_ammobox_04"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

// All fo bellow are optional overrides
["firstAidKits", ["vn_b_item_firstaidkit"]] call _fnc_saveToTemplate;  // Relies on autodetection. However, item is tested for for help and reviving.
["mediKits", ["vn_b_item_medikit_01"]] call _fnc_saveToTemplate;  // Relies on autodetection. However, item is tested for for help and reviving.

["placeIntel_desk", ["Land_vn_us_common_table_01",0]] call _fnc_saveToTemplate;  // [classname,azimuth].
["placeIntel_itemMedium", ["Land_vn_file1_f",-25,false]] call _fnc_saveToTemplate;  // [classname,azimuth,isComputer].
["placeIntel_itemLarge", ["Land_vn_filephotos_f",-25,false]] call _fnc_saveToTemplate;  // [classname,azimuth,isComputer].

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesBasic", ["vn_b_wheeled_m151_01","uns_m274"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["vn_b_wheeled_m151_01","vn_b_wheeled_m151_02"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["vn_b_wheeled_m151_mg_02","vn_b_wheeled_m151_mg_03","vn_b_wheeled_m151_mg_04"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["vn_b_wheeled_m54_01","vn_b_wheeled_m54_02"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", []] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["vn_b_wheeled_m54_ammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["vn_b_wheeled_m54_repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["vn_b_wheeled_m54_fuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["vn_b_wheeled_m54_02_sog"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["uns_xm706e1", "uns_xm706e2","vn_b_armor_m113_acav_01","vn_b_armor_m113_acav_02","vn_b_armor_m113_acav_03","vn_b_armor_m113_acav_04","vn_b_armor_m113_acav_05","vn_b_armor_m113_acav_06"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["uns_m48a3", "uns_M67A", "vn_b_armor_m41_01_02"]] call _fnc_saveToTemplate;
["vehiclesAA", ["uns_m163","vn_b_wheeled_m54_mg_02"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;			//this line determines light APCs
["vehiclesIFVs", []] call _fnc_saveToTemplate;				//this line determines IFVs

["vehiclesSam", ["",""]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["vn_o_boat_02_01"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["vn_b_boat_06_02","vn_b_boat_05_02","uns_pbr_mk18", "uns_pbr", "uns_PBR_M10","vn_b_boat_10_01","vn_b_boat_12_04","vn_b_boat_11_01","vn_b_boat_12_03", "vn_b_boat_13_04","vn_b_boat_13_03"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["vn_b_air_f4c_hcas", "uns_A4E_skyhawk_CAS", "uns_A6_Intruder_CAS", "uns_A7N_CAS"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["vn_b_air_f4c_cap","uns_A4E_skyhawk_CAP", "uns_A7N_CAP", "uns_f100b_CAP", "uns_f105D_CAP"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["uns_C130_H"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["vn_b_air_ch34_01_01"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["uns_ch47_m60_army","vn_b_air_uh1c_07_01","vn_b_air_uh1d_02_01", "vn_b_air_ch34_01_01","vn_b_air_ch34_03_01"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["vn_b_air_ah1g_02","vn_b_air_ah1g_03","vn_b_air_ah1g_04","vn_b_air_uh1c_01_01","vn_b_air_uh1c_02_01", "vn_b_air_uh1c_03_01"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [
["vn_b_army_static_m101_02", ["vn_cannon_m101_mag_he_x8"]],
["vn_b_army_static_m101_02", ["vn_cannon_m101_mag_ab_x8"]],	//Airburst
["vn_b_army_static_m101_02", ["vn_cannon_m101_mag_wp_x8"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["not_supported"]] call _fnc_saveToTemplate;
["uavsPortable", ["not_supported"]] call _fnc_saveToTemplate;

//Config special vehicles
["vehiclesMilitiaLightArmed", ["vn_i_wheeled_m151_mg_01_mp"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["vn_b_wheeled_m54_02_sog"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["vn_i_wheeled_m151_01_mp"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["vn_b_armor_m113_01","vn_b_wheeled_m54_mg_03","vn_b_wheeled_m54_mg_01"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["uns_m551"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["vn_b_wheeled_m151_02_mp", "vn_b_wheeled_m151_01_mp"]] call _fnc_saveToTemplate;

["staticMGs", ["vn_b_army_static_m1919a4_high", "vn_b_army_static_m2_high", "vn_b_army_static_m60_high"]] call _fnc_saveToTemplate;
["staticAT", ["vn_b_army_static_tow"]] call _fnc_saveToTemplate;
["staticAA", ["vn_b_army_static_m45"]] call _fnc_saveToTemplate;
["staticMortars", ["vn_b_army_static_mortar_m29"]] call _fnc_saveToTemplate;
["staticHowitzers", ["vn_b_sf_static_m101_02"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "vn_mortar_m29_mag_he_x8"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "vn_mortar_m29_mag_wp_x8"] call _fnc_saveToTemplate;
["howitzerMagazineHE", "vn_cannon_m101_mag_he_x8"] call _fnc_saveToTemplate;

//Bagged weapon definitions
["baggedMGs", [["vn_b_pack_static_base_01","vn_b_pack_static_m2_high_01"]]] call _fnc_saveToTemplate;
["baggedAT", [["vn_b_pack_static_base_01","vn_b_pack_static_tow"]]] call _fnc_saveToTemplate;
["baggedAA", [[]]] call _fnc_saveToTemplate;
["baggedMortars", [["vn_b_pack_static_base_01","vn_b_pack_static_m29_01"]]] call _fnc_saveToTemplate;

//Minefield definition
//CFGVehicles variant of Mines are needed "ATMine", "APERSTripMine", "APERSMine"
["minefieldAT", ["vn_mine_m15"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["vn_mine_m14"]] call _fnc_saveToTemplate;

//PvP definitions

["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
		//Team Leader
		["vn_blufor"] call A3A_fnc_getLoadout,
		//Medic
		["vn_blufor"] call A3A_fnc_getLoadout,
		//Autorifleman
		["vn_blufor"] call A3A_fnc_getLoadout,
		//Marksman
		["vn_blufor"] call A3A_fnc_getLoadout,
		//Anti-tank Scout
		["vn_blufor"] call A3A_fnc_getLoadout,
		//AT2
		["vn_blufor"] call A3A_fnc_getLoadout
	]
] call _fnc_saveToTemplate;

["pvpVehicles", ["vn_b_wheeled_m151_01", "vn_b_wheeled_m151_mg_02"]] call _fnc_saveToTemplate;



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
_loadoutData setVariable ["shotguns", []];

_loadoutData setVariable ["ATLaunchers", [
	["uns_m20_bazooka", "", "", "", ["uns_M28A2_mag", "uns_M28A2_mag", "uns_M30_smoke_mag"], [], ""]
]];
_loadoutData setVariable ["lightATLaunchers", ["vn_m72"]];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", ["vn_mine_m15_mag"]];
_loadoutData setVariable ["APMines", ["vn_mine_m14_mag"]];
_loadoutData setVariable ["lightExplosives", ["vn_mine_m112_remote_mag"]];
_loadoutData setVariable ["heavyExplosives", ["vn_mine_satchel_remote_02_mag"]];

_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["antiInfantryGrenades", ["vn_m67_grenade_mag", "vn_m61_grenade_mag", "vn_m34_grenade_mag", "vn_m14_early_grenade_mag", "vn_m14_grenade_mag"]];
_loadoutData setVariable ["smokeGrenades", ["vn_m18_white_mag"]];
_loadoutData setVariable ["signalsmokeGrenades", ["vn_m18_yellow_mag", "vn_m18_red_mag", "vn_m18_purple_mag", "vn_m18_green_mag"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData setVariable ["maps", ["vn_b_item_map"]];
_loadoutData setVariable ["watches", ["vn_b_item_watch"]];
_loadoutData setVariable ["compasses", ["vn_b_item_compass"]];
_loadoutData setVariable ["radios", ["vn_b_item_radio_urc10"]];
_loadoutData setVariable ["binoculars", ["vn_mk21_binocs"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["Snivests", []];
_loadoutData setVariable ["Medvests", []];
_loadoutData setVariable ["Engvests", []];
_loadoutData setVariable ["MGvests", []];
_loadoutData setVariable ["Offvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["vn_b_pack_trp_04_02_m16_pl"]];
_loadoutData setVariable ["SLbackpacks", []];
_loadoutData setVariable ["MGbackpacks", []];
_loadoutData setVariable ["Medbackpacks", []];
_loadoutData setVariable ["ENGbackpacks", []];
_loadoutData setVariable ["helmets", []];
_loadoutData setVariable ["GLhelmets", []];
_loadoutData setVariable ["MGhelmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", ["vn_b_item_toolkit", "vn_b_item_trapkit", "ACE_Clacker", "ACE_DefusalKit"]];
_loadoutData setVariable ["items_engineer_extras", ["vn_b_item_toolkit", "vn_b_item_trapkit"]];
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", ["ACE_RangeCard"]];
_loadoutData setVariable ["items_sniper_extras", ["ACE_RangeCard"]];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////
private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData setVariable ["uniforms", ["vn_b_uniform_sog_02_02", "vn_b_uniform_sog_02_05", "vn_b_uniform_macv_06_02", "vn_b_uniform_macv_04_02"]];
_sfLoadoutData setVariable ["vests", ["uns_simc_flak_55_M61", "uns_simc_flak_55_M61_open"]];
_sfLoadoutData setVariable ["GLvests", ["uns_simc_flak_55_M61_79_belt"]];
_sfLoadoutData setVariable ["Medvests", ["uns_Simc_flak_55_M61_med"]];
_sfLoadoutData setVariable ["Engvests", ["uns_simc_flak_55_M61_open_bandoleer"]];
_sfLoadoutData setVariable ["MGvests", ["uns_simc_flak_55_M61_60_2"]];
_sfLoadoutData setVariable ["Offvests", ["uns_simc_flak_55_M61_open_bandoleer"]];
_sfLoadoutData setVariable ["backpacks", ["vn_b_pack_trp_02", "vn_b_pack_lw_03"]];
_sfLoadoutData setVariable ["MGbackpacks", ["vn_b_pack_trp_01", "vn_b_pack_trp_01_02"]];
_sfLoadoutData setVariable ["Medbackpacks", ["vn_b_pack_lw_07", "vn_b_pack_m5_01"]];
_sfLoadoutData setVariable ["ENGbackpacks", ["vn_b_pack_lw_04", "vn_b_pack_trp_03_02"]];
_sfLoadoutData setVariable ["longRangeRadios", ["vn_b_pack_lw_06", "vn_b_pack_prc77_01"]];
_sfLoadoutData setVariable ["helmets", ["vn_b_boonie_02_02", "vn_b_boonie_02_01", "vn_b_beret_01_01", "vn_b_beret_01_06", "vn_b_bandana_02"]];
_sfLoadoutData setVariable ["binoculars", ["vn_anpvs2_binoc"]];

_sfLoadoutData setVariable ["rifles", [
["vn_m16_camo", "vn_s_m16", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m16_camo", "vn_s_m16", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m63a", "", "", "", ["vn_m63a_30_mag", "vn_m63a_30_mag", "vn_m63a_30_t_mag"], [], ""],
["vn_m63a_cdo", "", "", "", ["vn_m63a_150_mag", "vn_m63a_150_mag", "vn_m63a_150_t_mag"], [], ""]
]];
_sfLoadoutData setVariable ["SLrifles", [
["vn_m16_camo", "vn_s_m16", "", "vn_o_4x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_xm177_fg", "", "", "vn_o_4x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m16_camo", "vn_s_m16", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_xm177_fg", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m63a", "", "", "", ["vn_m63a_30_mag", "vn_m63a_30_mag", "vn_m63a_30_t_mag"], [], ""]
]];
_sfLoadoutData setVariable ["SLsidearms", [
["vn_m79_p", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79_p", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["vn_xm177_short", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_xm177_short", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["vn_m16_xm148", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ""],
["vn_m16_xm148", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["vn_m60", "", "", "", [], [], ""],
["vn_m60_shorty_camo", "", "", "", [], [], ""],
["vn_m63a_lmg", "", "", "", ["vn_m63a_100_mag", "vn_m63a_100_mag", "vn_m63a_100_t_mag"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["vn_m16_camo", "vn_s_m16", "", "vn_o_9x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m16_camo", "vn_s_m16", "", "vn_o_4x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m14_camo", "vn_s_m14", "", "vn_o_9x_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"],
["vn_m14_camo", "vn_s_m14", "", "vn_o_9x_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["uns_model70_iron", "uns_s_M14", "uns_o_RedfieldART_m70", ["uns_model70mag", "uns_model70mag", "uns_model70mag_T"], [], ""],
["vn_m40a1_camo", "vn_s_m14", "", "vn_o_9x_m40a1", ["vn_m40a1_mag", "vn_m40a1_mag", "vn_m40a1_t_mag"], [], "vn_b_camo_m40a1"],
["vn_m40a1_camo", "vn_s_m14", "", "vn_o_9x_m40a1", ["vn_m40a1_mag", "vn_m40a1_mag", "vn_m40a1_t_mag"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["vn_mx991_m1911", "vn_s_m1911", "", "", [], [], ""],
["vn_mk22", "vn_s_mk22", "", "", [], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["vn_b_uniform_macv_02_01", "vn_b_uniform_macv_02_07", "vn_b_uniform_macv_01_01", "vn_b_uniform_macv_06_01", "vn_b_uniform_macv_04_01"]];
_militaryLoadoutData setVariable ["vests", ["vn_b_vest_usarmy_02", "vn_b_vest_usarmy_03", "uns_simc_flak_M56_open", "uns_simc_flak_M56"]];
_militaryLoadoutData setVariable ["GLvests", ["vn_b_vest_usarmy_05", "uns_simc_flak_M56_open_79"]];
_militaryLoadoutData setVariable ["Snivests", ["vn_b_vest_usarmy_08"]];
_militaryLoadoutData setVariable ["Medvests", ["vn_o_vest_06", "vn_b_vest_usarmy_12", "uns_Simc_flak_M56_open_Medic"]];
_militaryLoadoutData setVariable ["Engvests", ["vn_b_vest_usarmy_12", "vn_b_vest_usarmy_11"]];
_militaryLoadoutData setVariable ["MGvests", ["vn_b_vest_usarmy_06", "uns_simc_flak_M56_open_60"]];
_militaryLoadoutData setVariable ["Offvests", ["vn_b_vest_usarmy_09", "vn_b_vest_usarmy_11"]];
_militaryLoadoutData setVariable ["backpacks", ["vn_b_pack_lw_01", "vn_b_pack_lw_03"]];
_militaryLoadoutData setVariable ["MGbackpacks", ["vn_b_pack_lw_02", "vn_b_pack_lw_05", "vn_b_pack_trp_01_02"]];
_militaryLoadoutData setVariable ["Medbackpacks", ["vn_b_pack_lw_07", "vn_b_pack_m5_01"]];
_militaryLoadoutData setVariable ["ENGbackpacks", ["vn_b_pack_lw_04", "vn_b_pack_trp_03_02"]];
_militaryLoadoutData setVariable ["helmets", ["vn_b_helmet_m1_02_01", "vn_b_helmet_m1_03_01", "vn_b_helmet_m1_05_01", "vn_b_helmet_m1_06_01", "vn_b_helmet_m1_07_01"]];
_militaryLoadoutData setVariable ["GLhelmets", ["vn_b_helmet_m1_04_02"]];
_militaryLoadoutData setVariable ["MGhelmets", ["vn_b_helmet_m1_08_01"]];
_militaryLoadoutData setVariable ["binoculars", ["vn_anpvs2_binoc"]];

_militaryLoadoutData setVariable ["rifles", [
["vn_m16", "", "", "", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], [], ""],
["vn_m16", "", "vn_b_m16", "", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["SLrifles", [
["vn_m16", "", "", "vn_o_4x_m16", ["vn_m16_30_mag", "vn_m16_30_mag", "vn_m16_30_t_mag"], [], ""],
["vn_xm177", "", "", "vn_o_4x_m16", ["vn_m16_30_mag", "vn_m16_30_mag", "vn_m16_30_t_mag"], [], ""],
["vn_m16", "", "", "", ["vn_m16_30_mag", "vn_m16_30_mag", "vn_m16_30_t_mag"], [], ""],
["vn_xm177", "", "", "", ["vn_m16_30_mag", "vn_m16_30_mag", "vn_m16_30_t_mag"], [], ""],
["vn_m63a", "", "", "", ["vn_m63a_30_mag", "vn_m63a_30_mag", "vn_m63a_30_t_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["SLsidearms", [
"vn_mx991_m1911",
["vn_m79_p", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79_p", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["vn_m2carbine", "", "vn_b_carbine", "", ["vn_carbine_30_mag", "vn_carbine_30_mag", "vn_carbine_30_t_mag"], [], ""],
["vn_m2carbine", "", "", "", ["vn_carbine_30_mag", "vn_carbine_30_mag", "vn_carbine_30_t_mag"], [], ""],
["vn_m1a1_tommy", "", "", "", ["vn_m1a1_20_mag", "vn_m1a1_20_mag", "vn_m1a1_20_t_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["vn_m2carbine_gl", "", "", "", ["vn_carbine_30_mag", "vn_carbine_30_mag", "vn_carbine_30_t_mag"], ["vn_22mm_m1a2_frag_mag", "vn_22mm_m1a2_frag_mag", "vn_22mm_m17_frag_mag", "vn_22mm_m9_heat_mag", "vn_22mm_lume_mag", "vn_22mm_m22_smoke_mag"], ""],
["vn_m16_xm148", "", "", "", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ""],
["vn_m16_xm148", "", "", "", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["vn_m1928a1_tommy", "", "", "", ["vn_m1a1_30_mag", "vn_m1a1_30_mag", "vn_m1a1_30_t_mag"], [], ""],
["vn_m1928_tommy", "", "", "", ["vn_m1928_mag", "vn_m1928_mag", "vn_m1928_t_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["vn_m60", "", "", "", [], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["vn_m16", "", "", "vn_o_9x_m16", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], [], ""],
["vn_m16", "", "", "vn_o_anpvs2_m16", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], [], ""],
["vn_m16", "", "", "vn_o_4x_m16", ["vn_m16_20_mag", "vn_m16_20_mag", "vn_m16_20_t_mag"], [], ""],
["vn_m14_camo", "", "", "vn_o_9x_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"],
["vn_m14_camo", "", "", "vn_o_anpvs2_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"],
["vn_m14_camo", "", "", "vn_o_9x_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["vn_m40a1_camo", "", "", "vn_o_9x_m40a1", ["vn_m40a1_mag", "vn_m40a1_mag", "vn_m40a1_t_mag"], [], "vn_b_camo_m40a1"],
["vn_m40a1_camo", "", "", "vn_o_9x_m40a1", ["vn_m40a1_mag", "vn_m40a1_mag", "vn_m40a1_t_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
"vn_m1911",
"vn_mx991_m1911",
"vn_p38s"
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["vn_b_uniform_sog_02_02", "vn_b_uniform_sog_02_05", "vn_b_uniform_macv_06_02", "vn_b_uniform_macv_04_02"]];
_eliteLoadoutData setVariable ["vests", ["uns_simc_flak_55_M61", "uns_simc_flak_55_M61_open"]];
_eliteLoadoutData setVariable ["GLvests", ["uns_simc_flak_55_M61_79_belt"]];
_eliteLoadoutData setVariable ["Medvests", ["uns_Simc_flak_55_M61_med"]];
_eliteLoadoutData setVariable ["Engvests", ["uns_simc_flak_55_M61_open_bandoleer"]];
_eliteLoadoutData setVariable ["MGvests", ["uns_simc_flak_55_M61_60_2"]];
_eliteLoadoutData setVariable ["Offvests", ["uns_simc_flak_55_M61_open_bandoleer"]];
_eliteLoadoutData setVariable ["backpacks", ["vn_b_pack_trp_02", "vn_b_pack_lw_03"]];
_eliteLoadoutData setVariable ["MGbackpacks", ["vn_b_pack_trp_01", "vn_b_pack_trp_01_02"]];
_eliteLoadoutData setVariable ["Medbackpacks", ["vn_b_pack_lw_07", "vn_b_pack_m5_01"]];
_eliteLoadoutData setVariable ["ENGbackpacks", ["vn_b_pack_lw_04", "vn_b_pack_trp_03_02"]];
_eliteLoadoutData setVariable ["longRangeRadios", ["vn_b_pack_lw_06", "vn_b_pack_prc77_01"]];
_eliteLoadoutData setVariable ["helmets", ["vn_b_boonie_02_02", "vn_b_boonie_02_01", "vn_b_beret_01_01", "vn_b_beret_01_06", "vn_b_bandana_02"]];
_eliteLoadoutData setVariable ["binoculars", ["vn_anpvs2_binoc"]];

_eliteLoadoutData setVariable ["rifles", [
["vn_m16_camo", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m16_camo", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m63a", "", "", "", ["vn_m63a_30_mag", "vn_m63a_30_mag", "vn_m63a_30_t_mag"], [], ""],
["uns_M63a_drum", "", "", "", ["uns_m63amag", "uns_m63amag", "uns_m63amag"], [], ""]
]];
_eliteLoadoutData setVariable ["SLrifles", [
["vn_m16_camo", "", "", "vn_o_4x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_xm177_fg", "", "", "vn_o_4x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m16_camo", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_xm177_fg", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m63a", "", "", "", ["vn_m63a_30_mag", "vn_m63a_30_mag", "vn_m63a_30_t_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["SLsidearms", [
["vn_m79_p", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79_p", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["vn_xm177_short", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_xm177_short", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["vn_m16_xm148", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ""],
["vn_m16_xm148", "", "", "", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["vn_m60", "", "", "", [], [], ""],
["vn_m60_shorty_camo", "", "", "", [], [], ""],
["uns_M63a_LMG", "", "", "", ["uns_m63abox", "uns_m63abox", "uns_m63abox"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["vn_m16_camo", "", "", "vn_o_9x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m16_camo", "", "", "vn_o_4x_m16", ["vn_m16_40_mag", "vn_m16_40_mag", "vn_m16_40_t_mag"], [], ""],
["vn_m14_camo", "", "", "vn_o_9x_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"],
["vn_m14_camo", "", "", "vn_o_9x_m14", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], "vn_b_camo_m14"]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["uns_model70_iron", "", "uns_o_RedfieldART_m70", ["uns_model70mag", "uns_model70mag", "uns_model70mag_T"], [], ""],
["vn_m40a1_camo", "", "", "vn_o_9x_m40a1", ["vn_m40a1_mag", "vn_m40a1_mag", "vn_m40a1_t_mag"], [], "vn_b_camo_m40a1"],
["vn_m40a1_camo", "", "", "vn_o_9x_m40a1", ["vn_m40a1_mag", "vn_m40a1_mag", "vn_m40a1_t_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["vn_mx991_m1911", "", "", "", [], [], ""],
["vn_mk22", "", "", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData setVariable ["uniforms", ["vn_b_uniform_macv_01_03"]];
_policeLoadoutData setVariable ["vests", ["vn_b_vest_usarmy_10"]];
_policeLoadoutData setVariable ["helmets", ["vn_b_helmet_m1_01_02","vn_b_boonie_02_01"]];

_policeLoadoutData setVariable ["rifles", [
["vn_m1a1_tommy", "", "", "", ["vn_m1a1_20_mag", "vn_m1a1_20_mag", "vn_m1a1_20_t_mag"], [], ""],
["vn_m1carbine", "", "", "", ["vn_carbine_15_mag", "vn_carbine_15_mag", "vn_carbine_15_t_mag"], [], ""],
["vn_m1897", "", "", "", ["vn_m1897_buck_mag", "vn_m1897_fl_mag"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", [
"vn_m1911",
"vn_mx991_m1911"
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["UNS_ARMY_BDU_ROKArmy9thIDipatch"]];
_militiaLoadoutData setVariable ["vests", ["uns_simc_56_frag", "uns_simc_56_frag_alt"]];
_militiaLoadoutData setVariable ["GLvests", ["uns_simc_61_79"]];
_militiaLoadoutData setVariable ["Medvests", ["uns_Simc_56_med", "uns_Simc_56_med_side_ass"]];
_militiaLoadoutData setVariable ["MGvests", ["uns_Simc_56_60_doppel_ligt", "uns_Simc_56_60_doppel"]];
_militiaLoadoutData setVariable ["Offvests", ["uns_simc_56_45"]];
_militiaLoadoutData setVariable ["backpacks", ["uns_simc_USMC65_M41_flat", "uns_simc_USMC65_M41_M43"]];
_militiaLoadoutData setVariable ["helmets", ["uns_h_simc_Boon_green_6", "uns_simc_m1_bitch_ns", "vn_b_bandana_04", "vn_b_headband_02", "uns_simc_m1_bitch_swdg", "vn_b_bandana_06"]];
_militiaLoadoutData setVariable ["binoculars", ["vn_mk21_binocs"]];
_militiaLoadoutData setVariable ["longRangeRadios", ["uns_simc_MC_rajio_base"]];

_militiaLoadoutData setVariable ["rifles", [
["uns_m1garand", "", "", "", ["uns_m1garandmag", "uns_m1garandmag", "uns_m1garandmag_T"], [], ""],
["uns_m1garand", "", "uns_b_m1", "", ["uns_m1garandmag", "uns_m1garandmag", "uns_m1garandmag_T"], [], ""],
["uns_m1903", "", "", "", ["uns_springfieldmag", "uns_springfieldmag", "uns_springfieldmag_T"], [], ""],
["uns_m1903", "", "uns_b_m1", "", ["uns_springfieldmag", "uns_springfieldmag", "uns_springfieldmag_T"], [], ""]
]];
_militiaLoadoutData setVariable ["shotguns", [
["uns_ithaca37", "", "", "", ["uns_12gaugemag_4", "uns_12gaugemag_4f"], [], ""]
]];
_militiaLoadoutData setVariable ["SLrifles", [
["vn_m14", "", "", "", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], ""],
["vn_m14", "", "vn_b_m14", "", ["vn_m14_mag", "vn_m14_mag", "vn_m14_t_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["vn_m1carbine", "", "vn_b_carbine", "", ["vn_carbine_15_mag", "vn_carbine_15_mag", "vn_carbine_15_t_mag"], [], ""],
["vn_m1carbine", "", "", "", ["vn_carbine_15_mag", "vn_carbine_15_mag", "vn_carbine_15_t_mag"], [], ""],
["vn_m3a1", "", "", "", ["vn_m3a1_mag", "vn_m3a1_mag", "vn_m3a1_t_mag"], [], ""],
["vn_m1a1_tommy", "", "", "", ["vn_m1a1_20_mag", "vn_m1a1_20_mag", "vn_m1a1_20_t_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["vn_m3a1", "", "", "", ["vn_m3a1_mag", "vn_m3a1_mag", "vn_m3a1_t_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["vn_m1carbine_gl", "", "", "", ["vn_carbine_15_mag", "vn_carbine_15_mag", "vn_carbine_15_t_mag"], ["vn_22mm_m1a2_frag_mag", "vn_22mm_m1a2_frag_mag", "vn_22mm_m9_heat_mag", "vn_22mm_lume_mag", "vn_22mm_m22_smoke_mag"], ""],
["vn_m1carbine_gl", "", "", "", ["vn_carbine_15_mag", "vn_carbine_15_mag", "vn_carbine_15_t_mag"], ["vn_22mm_m17_frag_mag", "vn_22mm_m17_frag_mag", "vn_22mm_m9_heat_mag", "vn_22mm_lume_mag", "vn_22mm_m19_wp_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m433_hedp_mag", "vn_40mm_m397_ab_mag", "vn_40mm_m680_smoke_w_mag"], ["vn_40mm_m576_buck_mag"], ""],
["vn_m79", "", "", "", ["vn_40mm_m381_he_mag", "vn_40mm_m680_smoke_w_mag", "vn_40mm_m661_flare_g_mag"], ["vn_40mm_m576_buck_mag"], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["uns_m1919a6", "", "", "", ["uns_100Rnd_m1919"], [], ""],
["uns_bar", "", "", "", ["uns_barmag", "uns_barmag_NT", "uns_barmag_T"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["uns_m1garand", "", "", "uns_o_M84", ["uns_m1garandmag", "uns_m1garandmag", "uns_m1garandmag_T"], [], ""],
["uns_m1garand", "", "uns_b_m1", "uns_o_M84", ["uns_m1garandmag", "uns_m1garandmag", "uns_m1garandmag_T"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["uns_m1903", "", "", "uns_o_Unertl8x", ["uns_springfieldmag", "uns_springfieldmag", "uns_springfieldmag_T"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", [
"vn_m1911",
"vn_p38s"
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData setVariable ["uniforms", ["vn_b_uniform_macv_01_01"]];
_crewLoadoutData setVariable ["vests", ["vn_b_vest_usarmy_13"]];
_crewLoadoutData setVariable ["helmets", ["vn_b_helmet_t56_02_02", "vn_b_helmet_t56_02_01"]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["vn_b_uniform_heli_01_01"]];
_pilotLoadoutData setVariable ["vests", ["vn_b_vest_aircrew_05"]];
_pilotLoadoutData setVariable ["helmets", ["vn_b_helmet_svh4_02_06", "vn_b_helmet_svh4_02_03", "vn_b_helmet_svh4_02_04"]];


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

	[selectRandom ["grenadeLaunchers", "SLrifles"]] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;
	["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;

	[["SLsidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
	["handgun", 4] call _fnc_addMagazines;
	["handgun", 4] call _fnc_addAdditionalMuzzleMagazines;
	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;

	["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["lightATLaunchers"] call _fnc_setLauncher;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

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
	[["Medvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Medbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;
  	[["shotguns", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

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
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	[["SLsidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
	["handgun", 4] call _fnc_addMagazines;
	["handgun", 2] call _fnc_addAdditionalMuzzleMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Engvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Engbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	[["shotguns", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;


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
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Engvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["Engbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	[["shotguns", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

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
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;

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
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	[["ATLaunchers", "lightATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;

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
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;

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
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["MGvests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["MGbackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Snivests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

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
	["binoculars"] call _fnc_addBinoculars;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	[["Snivests", "vests"] call _fnc_fallback] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["sniperRifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

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
	["binoculars"] call _fnc_addBinoculars;
};

private _policeTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["rifles"] call _fnc_setPrimary;
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

	["smgs"] call _fnc_setPrimary;
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

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout of the pilots
["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _policeTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

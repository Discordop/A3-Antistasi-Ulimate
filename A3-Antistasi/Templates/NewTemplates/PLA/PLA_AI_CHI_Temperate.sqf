//////////////////////////
//   Side Information   //
//////////////////////////

["name", "PLA"] call _fnc_saveToTemplate;
["spawnMarkerName", "PLA Support Corridor"] call _fnc_saveToTemplate;

["flag", "mas_chi_FlagCarrier_opf"] call _fnc_saveToTemplate;
["flagTexture", "A3\Data_F\Flags\Flag_CSAT_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "mas_chi_Marker_opf"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "O_T_Soldier_SL_F"],
	["militia_rifleman", "O_T_Soldier_F"],
	["militia_radioman", "O_T_Soldier_F"],
	["militia_medic", "O_T_Medic_F"],
	["militia_engineer", "O_T_Engineer_F"],
	["militia_explosivesexpert", "O_T_Soldier_Exp_F"],
	["militia_grenadier", "O_T_Soldier_GL_F"],
	["militia_lat", "O_T_Soldier_LAT_F"],
	["militia_at", "O_T_Soldier_AT_F"],
	["militia_aa", "O_T_Soldier_AA_F"],
	["militia_machinegunner", "O_T_Soldier_AR_F"],
	["militia_marksman", "O_T_Soldier_M_F"],
	["militia_sniper", "O_T_Sniper_F"],

	["military_squadleader", "O_T_Soldier_SL_F"],
	["military_rifleman", "O_T_Soldier_F"],
	["military_radioman", "O_T_Soldier_F"],
	["military_medic", "O_T_Medic_F"],
	["military_engineer", "O_T_Engineer_F"],
	["military_explosivesexpert", "O_T_Soldier_Exp_F"],
	["military_grenadier", "O_T_Soldier_GL_F"],
	["military_lat", "O_T_Soldier_LAT_F"],
	["military_at", "O_T_Soldier_AT_F"],
	["military_aa", "O_T_Soldier_AA_F"],
	["military_machinegunner", "O_T_Soldier_AR_F"],
	["military_marksman", "O_T_Soldier_M_F"],
	["military_sniper", "O_T_Sniper_F"],

	["elite_squadleader", "O_T_Soldier_SL_F"],
	["elite_rifleman", "O_T_Soldier_F"],
	["elite_radioman", "O_T_Soldier_F"],
	["elite_medic", "O_T_Medic_F"],
	["elite_engineer", "O_T_Engineer_F"],
	["elite_explosivesexpert", "O_T_Soldier_Exp_F"],
	["elite_grenadier", "O_T_Soldier_GL_F"],
	["elite_lat", "O_T_Soldier_LAT_F"],
	["elite_at", "O_T_Soldier_AT_F"],
	["elite_aa", "O_T_Soldier_AA_F"],
	["elite_machinegunner", "O_T_Soldier_AR_F"],
	["elite_marksman", "O_T_Soldier_M_F"],
	["elite_sniper", "O_T_Sniper_F"],

	["sf_squadleader", "O_V_Soldier_TL_ghex_F"],
	["sf_rifleman", "O_V_Soldier_ghex_F"],
	["sf_radioman", "O_V_Soldier_ghex_F"],
	["sf_medic", "O_V_Soldier_Medic_ghex_F"],
	["sf_engineer", "O_recon_F"],
	["sf_explosivesexpert", "O_V_Soldier_Exp_ghex_F"],
	["sf_grenadier", "O_T_Soldier_GL_F"],
	["sf_lat", "O_V_Soldier_LAT_ghex_F"],
	["sf_at", "O_V_Soldier_LAT_ghex_F"],
	["sf_aa", "O_T_Soldier_AA_F"],
	["sf_machinegunner", "O_T_Soldier_AR_F"],
	["sf_marksman", "O_V_Soldier_M_ghex_F"],
	["sf_sniper", "O_sniper_F"],

	["other_crew", "O_T_Crew_F"],
	["other_unarmed", "O_T_Soldier_unarmed_F"],
	["other_official", "O_T_Officer_F"],
	["other_traitor", "O_G_Soldier_F"],
	["other_pilot", "O_T_Helipilot_F"],
	["police_squadleader", "O_GEN_Commander_F"],
	["police_standard", "O_GEN_Soldier_F"]
]] call _fnc_saveToTemplate;


//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["O_mas_chi_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["O_mas_chi_LSV_02_unarmed_F", "O_mas_chi_MRAP_02_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["O_mas_chi_LSV_02_armed_F", "O_mas_chi_LSV_02_AT_F", "O_mas_chi_MRAP_02_hmg_F", "O_mas_chi_MRAP_02_gmg_F"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["O_mas_chi_Truck_02_transport_F","O_mas_chi_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["O_mas_chi_Truck_02_transport_F"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["O_mas_chi_Truck_02_reammo_F"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["O_mas_chi_Truck_02_repair_F"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["O_mas_chi_Truck_02_refuel_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["O_T_Truck_03_medical_ghex_F","O_T_Truck_02_Medical_F"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["O_mas_chi_APC_Tracked_02_cannon_F", "O_mas_chi_APC_Wheeled_02_rcws_F", "O_ZBD04A", "O_ZBL09", "O_ZTL11"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["O_ZTQ15", "O_ZTZ96B", "O_ZTZ99", "O_ZTZ99A", "O_mas_chi_MBT_02_cannon_F"]] call _fnc_saveToTemplate;
["vehiclesAA", ["O_PGZ09_AA", "O_mas_chi_APC_Tracked_02_AA_F"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;
["vehiclesIFVs", []] call _fnc_saveToTemplate;

["vehiclesSam", ["O_mas_chi_Radar_System_02_F","O_mas_chi_SAM_System_04_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM


["vehiclesTransportBoats", ["O_mas_chi_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["O_mas_chi_Boat_Armed_01_F"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["O_mas_chi_Plane_CAS_02_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["O_mas_chi_Plane_Fighter_02_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["Z20"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["Z8L","O_mas_chi_Heli_Light_02_F","Z11WA"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["Z19","Z10", "O_mas_chi_Heli_Attack_02_F"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [
["O_mas_chi_MBT_02_arty_F",["32Rnd_155mm_Mo_shells_O"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["O_mas_chi_UAV_02_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["O_mas_chi_UAV_01_F"]] call _fnc_saveToTemplate;


["vehiclesMilitiaLightArmed", ["O_mas_chi_LSV_02_armed_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["O_mas_chi_Truck_02_transport_F", "O_mas_chi_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["O_mas_chi_LSV_02_unarmed_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["O_mas_chi_APC_Wheeled_02_rcws_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["O_ZTZ96B"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] call _fnc_saveToTemplate;

["staticMGs", ["O_mas_chi_HMG_01_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["O_mas_chi_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["O_mas_chi_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["O_mas_chi_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_O_D30_RU"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_122mmHE_D30_M"] call _fnc_saveToTemplate;

["baggedMGs", [["O_G_HMG_02_high_F", "O_G_HMG_02_support_high_F"]]] call _fnc_saveToTemplate;
["baggedAT", [["O_AT_01_weapon_F", "O_HMG_01_support_F"]]] call _fnc_saveToTemplate;
["baggedAA", [["O_AA_01_weapon_F", "O_HMG_01_support_F"]]] call _fnc_saveToTemplate;
["baggedMortars", [["O_Mortar_01_weapon_F", "O_Mortar_01_support_F"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets


["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	//Team Leader
	["vanilla_opfor_teamLeader_enoch"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_opfor_medic_enoch"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_opfor_machineGunner_enoch"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_opfor_marksman_enoch"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_opfor_AT_enoch"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_opfor_AT2_enoch"] call A3A_fnc_getLoadout
]] call _fnc_saveToTemplate;
["pvpVehicles", ["O_MRAP_02_F","O_MRAP_02_hmg_F"]] call _fnc_saveToTemplate;



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
["CUP_launch_RPG18", "", "", "", [], [], ""],
["CUP_launch_RPG26", "", "", "", [], [], ""]
]];
_loadoutData setVariable ["ATLaunchers", [["launch_mas_chi_RPG32_F", "", "", "", ["RPG32_F", "RPG32_HE_F"], [], ""]]];
_loadoutData setVariable ["missileATLaunchers", []];
_loadoutData setVariable ["AALaunchers", [
["launch_mas_chi_Strela_F", "", "", "", ["Strela_mas_chi"], [], ""]
]];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData setVariable ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData setVariable ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData setVariable ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["smokeGrenades", ["SmokeShell"]];
_loadoutData setVariable ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];



_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", ["NVGoggles_mas_chi_H"]];
_loadoutData setVariable ["binoculars", ["Binocular"]];
_loadoutData setVariable ["Rangefinder", ["Rangefinder"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["offuniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["B_RadioBag_01_black_F"]];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", ["ACE_microDAGR", "ACE_DAGR", "Laserbatteries", "Laserbatteries", "Laserbatteries"]];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", ["Toolkit", "MineDetector", "ACE_Clacker","ACE_DefusalKit"]];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_sniper_extras", ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData setVariable ["uniforms", ["U_mas_chi_O_sold2_swt"]];
_sfLoadoutData setVariable ["vests", ["V_mas_chi_PlateCarrier_sf", "V_PlateCarrier1_blk", "V_PlateCarrier1_rgr_noflag_F","CUP_V_PMC_IOTV_Black_Empty"]];
_sfLoadoutData setVariable ["backpacks", ["O_mas_chi_Kitbag_b", "O_mas_chi_Kitbag_b2"]];			//this line determines backpacks for special forces -- Example: ["B_AssaultPack_mcamo","B_Kitbag_mcamo"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["helmets", ["H_mas_chi_beret_ON", "H_mas_chi_HelmetO_SF"]];				//this line determines helmets for special forces -- Example: ["H_HelmetB_camo","H_HelmetB_desert"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["NVGs", ["NVGoggles_mas_chi_H"]];
_sfLoadoutData setVariable ["binoculars", ["Rangefinder"]];
_sfLoadoutData setVariable ["missileATLaunchers", [
["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_OG7_M"], [], ""]
]];

//SF Weapons
_sfLoadoutData setVariable ["rifles", [
["arifle_mas_qbz95", "muzzle_snds_58_blk_F", "CUP_acc_LLM_black", "CUP_optic_SB_11_4x20_PM", ["30Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_G36K_KSK_AFG", "CUP_muzzle_snds_M16", "CUP_acc_LLM_black", "optic_MRCO", ["CUP_30Rnd_556x45_G36"], [""], ""],
["CUP_arifle_AUG_A1", "CUP_muzzle_snds_M16", "", "", ["CUP_30Rnd_556x45_AUG"], [""], ""],
["CUP_arifle_AK19_black", "CUP_muzzle_snds_M16", "CUP_acc_LLM_black", "CUP_optic_HensoldtZO", ["CUP_30Rnd_556x45_AK19_M"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["arifle_mas_qbz95", "muzzle_snds_58_blk_F", "CUP_acc_LLM_black", "CUP_optic_SB_11_4x20_PM", ["30Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_G36K_KSK_AFG", "CUP_muzzle_snds_M16", "CUP_acc_LLM_black", "optic_MRCO", ["CUP_30Rnd_556x45_G36"], [""], ""],
["CUP_arifle_AUG_A1", "CUP_muzzle_snds_M16", "", "", ["CUP_30Rnd_556x45_AUG"], [""], ""],
["CUP_arifle_AK19_black", "CUP_muzzle_snds_M16", "CUP_acc_LLM_black", "CUP_optic_HensoldtZO", ["CUP_30Rnd_556x45_AK19_M"], [""], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_Sa58RIS2_gl", "CUP_muzzle_Bizon", "CUP_acc_LLM_black", "CUP_optic_HensoldtZO", ["CUP_30Rnd_Sa58_M"], ["1Rnd_HE_Grenade_shell"], ""],
["CUP_glaunch_6G30", "", "", "", ["CUP_6Rnd_HE_GP25_M"], ["", "", ""], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["CUP_smg_UZI", "CUP_muzzle_snds_UZI", "", "", ["CUP_32Rnd_9x19_UZI_M"], [], ""],
["CUP_arifle_SR3M_Vikhr_VFG", "CUP_muzzle_snds_SR3M", "", "CUP_optic_OKP_7", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""],
["CUP_smg_bizon", "CUP_muzzle_Bizon", "", "CUP_optic_OKP_7", ["CUP_64Rnd_9x19_Bizon_M"], [], ""],
["CUP_arifle_AKS74U", "CUP_muzzle_PBS4", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
["SMG_03C_black", "muzzle_snds_570", "", "", ["50Rnd_570x28_SMG_03"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["arifle_mas_qbz95_mg", "muzzle_snds_58_blk_F", "CUP_acc_LLM_black", "CUP_optic_HensoldtZO", ["100Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_RPK74M", "CUP_muzzle_PBS4", "CUP_acc_LLM_black", "CUP_optic_1p63", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_M14_DMR", "CUP_muzzle_snds_M14", "", "optic_KHS_old", ["ACE_20Rnd_762x51_M993_AP_Mag", "20Rnd_762x51_Mag"], [], "bipod_03_F_oli"],
["CUP_arifle_Steyr_Stg58_railed", "CUP_muzzle_snds_socom762rc", "", "CUP_optic_HensoldtZO", ["CUP_20Rnd_762x51_FNFAL_M"], [], ""]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["arifle_mas_qbz95_snp", "CUP_muzzle_snds_socom762rc", "optic_DMS", "", ["20Rnd_650x39_Cased_Mag_F"], [], ""],
["CUP_srifle_SVD_wdl", "CUP_muzzle_snds_KZRZP_SVD", "CUP_optic_PSO_3_open", "", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["hgun_Rook40_F", "CUP_muzzle_snds_M9", "", "", ["16Rnd_9x21_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["U_mas_chi_O_sold1"]];
_militaryLoadoutData setVariable ["offuniforms", ["U_mas_chi_O_officer1"]];
_militaryLoadoutData setVariable ["vests", ["V_mas_chi_TacVest", "V_mas_chi_PlateCarrier_o"]];
_militaryLoadoutData setVariable ["GLvests", ["V_mas_chi_TacVest", "V_mas_chi_PlateCarrier_o"]];
_militaryLoadoutData setVariable ["Hvests", ["V_mas_chi_TacVest", "V_mas_chi_PlateCarrier_o"]];
_militaryLoadoutData setVariable ["backpacks", ["O_mas_chi_Kitbag_m", "O_mas_chi_Kitbag_m2"]];
_militaryLoadoutData setVariable ["helmets", ["H_mas_chi_HelmetO", "H_mas_chi_HelmetO_gog"]];
_militaryLoadoutData setVariable ["binoculars", ["binoculars"]];

_militaryLoadoutData setVariable ["rifles", [
["arifle_mas_qbz95", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["arifle_mas_qbz95_cqb", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_AK109", "", "", "", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["arifle_mas_qbz95", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["arifle_mas_qbz95_cqb", "", "", "", ["30Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_AK109", "", "", "", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_AK109_GL", "", "", "", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "", ""], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["CUP_smg_UZI", "", "", "", ["CUP_32Rnd_9x19_UZI_M"], [], ""],
["CUP_arifle_SR3M_Vikhr_VFG", "", "", "", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""],
["CUP_smg_bizon", "", "", "", ["CUP_64Rnd_9x19_Bizon_M"], [], ""],
["CUP_arifle_AKS74U", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["LMG_mas_chi_pkm_F", "", "", "", ["150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_M14_DMR", "", "", "optic_KHS_old", ["ACE_20Rnd_762x51_M993_AP_Mag", "20Rnd_762x51_Mag"], [], "bipod_03_F_oli"],
["CUP_arifle_Steyr_Stg58_railed", "", "", "CUP_optic_HensoldtZO", ["CUP_20Rnd_762x51_FNFAL_M"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["arifle_mas_qbz95_snp", "", "optic_DMS", "", ["20Rnd_650x39_Cased_Mag_F"], [], ""],
["CUP_srifle_SVD_wdl", "", "CUP_optic_PSO_3_open", "", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["hgun_Rook40_F", "", "", "", ["16Rnd_9x21_Mag"], [], ""]
]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["U_mas_chi_O_sold4_swt"]];
_policeLoadoutData setVariable ["vests", ["V_mas_chi_PlateCarrier_sf"]];
_policeLoadoutData setVariable ["helmets", ["H_mas_chi_beret_ON"]];
_policeLoadoutData setVariable ["smgs", [
["CUP_arifle_AKS74U_railed", "", "", "", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
["CUP_smg_BallisticShield_Sa61", "", "", "", ["CUP_20Rnd_B_765x17_Ball_M"], [], ""],
["CUP_hgun_BallisticShield_PMM", "", "", "", ["CUP_12Rnd_9x18_PMM_M"], [], ""],
["CUP_smg_SA61", "", "", "", ["CUP_20Rnd_B_765x17_Ball_M"], [], ""],
["CUP_smg_Mac10", "", "", "", ["CUP_30Rnd_45ACP_MAC10_M"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["CUP_hgun_TT"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["CUP_U_O_Partisan_TTsKO", "CUP_U_O_Partisan_TTsKO_Mixed"]];
_militiaLoadoutData setVariable ["offuniforms", ["CUP_U_O_Partisan_TTsKO"]];
_militiaLoadoutData setVariable ["vests", ["CUP_V_B_RRV_Light", "CUP_V_B_RRV_Scout", "CUP_V_B_RRV_Scout2", "CUP_V_B_RRV_Scout3_GRN", "CUP_V_B_RRV_Medic"]];
_militiaLoadoutData setVariable ["GLvests", ["CUP_V_B_RRV_TL"]];
_militiaLoadoutData setVariable ["Hvests", ["CUP_V_B_RRV_MG_GRN"]];
_militiaLoadoutData setVariable ["backpacks", ["CUP_O_RUS_Patrol_bag_Green_Shovel", "CUP_O_RUS_Patrol_bag_Green"]];
_militiaLoadoutData setVariable ["helmets", ["H_mas_chi_beret_O", "CUP_H_WZ67", "CUP_H_WZ67", "CUP_H_WZ67", "H_mas_chi_beanie_O", "CUP_H_RUS_ZSH_1", "CUP_H_RUS_SSH68_olive", "CUP_H_RUS_SSH68_green", "CUP_H_SLA_Helmet_OD_worn"]];
_militiaLoadoutData setVariable ["rifles", [
["CUP_arifle_AK47_Early", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKM_Early", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKM", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKMS_Early", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AK47", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_Sa58V", "", "", "", ["CUP_30Rnd_Sa58_M"], [], ""],
["CUP_arifle_AKS", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["CUP_arifle_AKS74U", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
["CUP_arifle_Sa58_sporter_compact", "", "", "", ["CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M_TracerR", "CUP_20Rnd_Sa58_M_TracerG", "CUP_20Rnd_Sa58_M_TracerY"], [], ""],
["CUP_arifle_Sa58s", "", "", "", ["CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M", "CUP_20Rnd_Sa58_M_TracerR", "CUP_20Rnd_Sa58_M_TracerG", "CUP_20Rnd_Sa58_M_TracerY"], [], ""],
["CUP_arifle_AKMS", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKS", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_AKM_GL_Early", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AK47_GL_Early", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKM_GL", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKMS_GL_Early", "", "", "", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["CUP_arifle_AKS74U", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
["CUP_smg_SA61", "", "", "", ["CUP_20Rnd_B_765x17_Ball_M"], [], ""],
["CUP_smg_Mac10", "", "", "", ["CUP_30Rnd_45ACP_MAC10_M"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["CUP_arifle_Sa58_Klec", "", "", "", ["CUP_45Rnd_Sa58_M"], [], ""],
["CUP_arifle_RPK74", "", "", "", ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["CUP_SKS", "", "", "", ["CUP_10Rnd_762x39_SKS_M"], [], ""],
["CUP_arifle_Galil_black", "", "", "", ["CUP_25Rnd_762x51_Galil_Mag", "CUP_25Rnd_762x51_Galil_Mag", "CUP_25Rnd_762x51_Galil_Mag", "CUP_25Rnd_762x51_Red_Tracers_Galil_Mag", "CUP_25Rnd_762x51_Green_Tracers_Galil_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_Mosin_Nagant", "", "", "", ["CUP_5Rnd_762x54_Mosin_M"], [], ""],
["CUP_srifle_LeeEnfield", "", "", "", ["CUP_10x_303_M"], [], ""],
["CUP_srifle_LeeEnfield", "", "", "cup_optic_no23mk2", ["CUP_10x_303_M"], [], ""],
["CUP_srifle_Mosin_Nagant", "", "", "CUP_optic_PEM", ["CUP_5Rnd_762x54_Mosin_M"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_TT"]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["U_mas_chi_O_sf1"]];
_eliteLoadoutData setVariable ["offuniforms", ["U_mas_chi_O_officer3"]];
_eliteLoadoutData setVariable ["vests", ["CUP_Vest_RUS_6B45_Sh117_VOG_Green"]];
_eliteLoadoutData setVariable ["GLvests", ["CUP_Vest_RUS_6B45_Sh117_VOG_Green"]];
_eliteLoadoutData setVariable ["Hvests", ["CUP_Vest_RUS_6B45_Sh117_VOG_Green"]];
_eliteLoadoutData setVariable ["backpacks", ["CUP_O_RUS_Patrol_bag_Green"]];
_eliteLoadoutData setVariable ["helmets", ["H_mas_chi_HelmetO_SF"]];
_eliteLoadoutData setVariable ["binoculars", ["Laserdesignator_02"]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_OG7_M"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["arifle_mas_qbz95_gl", "", "", "CUP_optic_Elcan_SpecterDR_RMR_black", ["100Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_RPK74M_railed", "", "", "optic_MRCO", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["arifle_mas_qbz95_gl", "", "", "CUP_optic_Elcan_SpecterDR_RMR_black", ["100Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_RPK74M_railed", "", "", "optic_MRCO", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["arifle_mas_qbz95_gl", "", "", "", ["100Rnd_580x42_Mag_F"], ["1Rnd_HE_Grenade_shell"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["CUP_smg_UZI", "", "", "", ["CUP_32Rnd_9x19_UZI_M"], [], ""],
["CUP_arifle_SR3M_Vikhr_VFG", "", "", "CUP_optic_OKP_7", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""],
["CUP_smg_bizon", "", "", "CUP_optic_OKP_7", ["CUP_64Rnd_9x19_Bizon_M"], [], ""],
["CUP_arifle_AKS74U", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
["SMG_03C_black", "", "", "", ["50Rnd_570x28_SMG_03"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["arifle_mas_qbz95_mg", "", "CUP_acc_LLM_black", "CUP_optic_HensoldtZO", ["100Rnd_580x42_Mag_F"], [], ""],
["CUP_arifle_RPK74M", "", "CUP_acc_LLM_black", "CUP_optic_1p63", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["CUP_arifle_Steyr_Stg58_railed", "", "", "CUP_optic_HensoldtZO", ["CUP_20Rnd_762x51_FNFAL_M"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["arifle_mas_qbz95_snp", "", "optic_DMS", "", ["20Rnd_650x39_Cased_Mag_F"], [], ""],
["CUP_srifle_SVD_wdl", "", "CUP_optic_PSO_3_open", "", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["hgun_Rook40_F", "", "", "", ["16Rnd_9x21_Mag"], [], ""]
]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData setVariable ["uniforms", ["U_mas_chi_O_sold1_swt"]];
_crewLoadoutData setVariable ["vests", ["CUP_V_PMC_CIRAS_OD_Veh"]];
_crewLoadoutData setVariable ["helmets", ["H_mas_chi_HelmetCrew_O"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["U_mas_chi_O_sold1_swt"]];
_pilotLoadoutData setVariable ["vests", ["CUP_V_PMC_CIRAS_OD_Veh"]];
_pilotLoadoutData setVariable ["helmets", ["H_mas_chi_HelmetPilot_O"]];


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

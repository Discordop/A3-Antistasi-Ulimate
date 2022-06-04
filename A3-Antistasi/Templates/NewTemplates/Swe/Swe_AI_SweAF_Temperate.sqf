//////////////////////////
//   Side Information   //
//////////////////////////

["name", "SweAF"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "SweAF Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "sfp_flagcarrier_sweden"] call _fnc_saveToTemplate; 						
["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] call _fnc_saveToTemplate; 				
["flagMarkerType", "sfp_marker_sweden"] call _fnc_saveToTemplate; 			

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "CUP_B_BAF_Soldier_SquadLeader_MTP"],
	["militia_rifleman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["militia_radioman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["militia_medic", "CUP_B_BAF_Soldier_Medic_MTP"],
	["militia_engineer", "CUP_B_BAF_Soldier_Engineer_MTP"],
	["militia_explosivesexpert", "CUP_B_BAF_Soldier_Explosive_MTP"],
	["militia_grenadier", "CUP_B_BAF_Soldier_Grenadier_MTP"],
	["militia_lat", "CUP_B_BAF_Soldier_RiflemanLAT_MTP"],
	["militia_at", "CUP_B_BAF_Soldier_RiflemanAT_MTP"],
	["militia_aa", "CUP_B_BAF_Soldier_AA_MTP"],
	["militia_machinegunner", "CUP_B_BAF_Soldier_AutoRifleman_MTP"],
	["militia_marksman", "CUP_B_BAF_Soldier_Marksman_MTP"],
	["militia_sniper", "CUP_B_BAF_Sniper_MTP"],

	["military_squadleader", "CUP_B_BAF_Soldier_SquadLeader_MTP"],
	["military_rifleman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["military_radioman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["military_medic", "CUP_B_BAF_Soldier_Medic_MTP"],
	["military_engineer", "CUP_B_BAF_Soldier_Engineer_MTP"],
	["military_explosivesexpert", "CUP_B_BAF_Soldier_Explosive_MTP"],
	["military_grenadier", "CUP_B_BAF_Soldier_Grenadier_MTP"],
	["military_lat", "CUP_B_BAF_Soldier_RiflemanLAT_MTP"],
	["military_at", "CUP_B_BAF_Soldier_RiflemanAT_MTP"],
	["military_aa", "CUP_B_BAF_Soldier_AA_MTP"],
	["military_machinegunner", "CUP_B_BAF_Soldier_AutoRifleman_MTP"],
	["military_marksman", "CUP_B_BAF_Soldier_Marksman_MTP"],
	["military_sniper", "CUP_B_BAF_Sniper_MTP"],

	["elite_squadleader", "CUP_B_BAF_Soldier_SquadLeader_MTP"],
	["elite_rifleman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["elite_radioman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["elite_medic", "CUP_B_BAF_Soldier_Medic_MTP"],
	["elite_engineer", "CUP_B_BAF_Soldier_Engineer_MTP"],
	["elite_explosivesexpert", "CUP_B_BAF_Soldier_Explosive_MTP"],
	["elite_grenadier", "CUP_B_BAF_Soldier_Grenadier_MTP"],
	["elite_lat", "CUP_B_BAF_Soldier_RiflemanLAT_MTP"],
	["elite_at", "CUP_B_BAF_Soldier_RiflemanAT_MTP"],
	["elite_aa", "CUP_B_BAF_Soldier_AA_MTP"],
	["elite_machinegunner", "CUP_B_BAF_Soldier_AutoRifleman_MTP"],
	["elite_marksman", "CUP_B_BAF_Soldier_Marksman_MTP"],
	["elite_sniper", "CUP_B_BAF_Sniper_MTP"],

	["sf_squadleader", "CUP_B_BAF_Soldier_SquadLeader_MTP"],
	["sf_rifleman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["sf_radioman", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["sf_medic", "CUP_B_BAF_Soldier_Medic_MTP"],
	["sf_engineer", "CUP_B_BAF_Soldier_Engineer_MTP"],
	["sf_explosivesexpert", "CUP_B_BAF_Soldier_Explosive_MTP"],
	["sf_grenadier", "CUP_B_BAF_Soldier_Grenadier_MTP"],
	["sf_lat", "CUP_B_BAF_Soldier_RiflemanLAT_MTP"],
	["sf_at", "CUP_B_BAF_Soldier_RiflemanAT_MTP"],
	["sf_aa", "CUP_B_BAF_Soldier_AA_MTP"],
	["sf_machinegunner", "CUP_B_BAF_Soldier_AutoRifleman_MTP"],
	["sf_marksman", "CUP_B_BAF_Soldier_Marksman_MTP"],
	["sf_sniper", "CUP_B_BAF_Sniper_MTP"],

	["other_crew", "CUP_B_BAF_Soldier_Crew_MTP"],
	["other_unarmed", "CUP_B_BAF_Soldier_Survivor_MTP"],
	["other_official", "CUP_B_BAF_Soldier_Officer_MTP"],
	["other_traitor", "B_G_officer_F"],
	["other_pilot", "CUP_B_BAF_Soldier_Pilot_MTP"],
	["police_squadleader", "CUP_B_BAF_Soldier_Rifleman_MTP"],
	["police_standard", "CUP_B_BAF_Soldier_Rifleman_MTP"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["sfp_cykel42"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["sfp_tgb11", "sfp_81_tgb1112", "sfp_tgb1317"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["sfp_tgb13_ksp58", "sfp_tgb1111", "sfp_tgb1111_sog_rbs56"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["sfp_tgb20"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["B_T_Truck_01_cargo_F", "B_T_Truck_01_flatbed_F"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["CUP_B_MTVR_Ammo_BAF_WOOD"]] call _fnc_saveToTemplate; 		
["vehiclesRepairTrucks", ["CUP_B_MTVR_Repair_BAF_WOOD"]] call _fnc_saveToTemplate; 		
["vehiclesFuelTrucks", ["CUP_B_MTVR_Refuel_BAF_WOOD"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["sfp_tgb1314"]] call _fnc_saveToTemplate;			
["vehiclesAPCs", ["sfp_bv206", "sfp_pbv302", "sfp_pbv302", "sfp_strf90c", "sfp_patgb360"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["sfp_strv103b", "sfp_strv121", "sfp_strv122", "sfp_81_strv102"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["sfp_lvkv90c"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;			
["vehiclesIFVs", []] call _fnc_saveToTemplate;				

["vehiclesSam", ["B_Radar_System_01_F","B_SAM_System_03_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["sfp_gruppbat"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["sfp_strb90"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", []] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["sfp_jas39_gbu39"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["sfp_jas39_gbu39"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", ["CUP_B_C130J_USMC"]] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["sfp_hkp9", "sfp_hkp6"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["sfp_hkp9_sog", "sfp_hkp16", "sfp_hkp16_ffv","sfp_hkp4"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["sfp_hkp9_rb55"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["sfp_grkpbv90120",["sfp_2Rnd_120mm_Mo_shells"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["CUP_B_USMC_DYN_MQ9"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate; 				

["vehiclesMilitiaLightArmed", ["sfp_tgb16_ksp58", "sfp_tgb16_rws"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["sfp_tgb20"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["sfp_tgb16"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["sfp_bv206"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["sfp_81_ikv91"]] call _fnc_saveToTemplate;


["vehiclesPolice", ["sfp_tgb16_ksp58_mp"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_US"]] call _fnc_saveToTemplate; 					
["staticAT", ["sfp_rbs56"]] call _fnc_saveToTemplate; 					
["staticAA", ["sfp_81_rbs70"]] call _fnc_saveToTemplate; 					
["staticMortars", ["sfp_grk84"]] call _fnc_saveToTemplate;
["staticHowitzers", ["sfp_fh77"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "32Rnd_155mm_Mo_shells"] call _fnc_saveToTemplate;

["baggedMGs", [["CUP_B_M2_Gun_Bag", "CUP_B_M2_Tripod_Bag"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["sfp_rbs56_weapon_bag", "sfp_rbs56_support_bag"]]] call _fnc_saveToTemplate; 					
["baggedAA", ["sfp_rbs70_weapon_bag", "sfp_rbs70_support_bag"]] call _fnc_saveToTemplate; 					
["baggedMortars", [["sfp_grkm84_support_bag", "sfp_grkm84_weapon_bag"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets


["minefieldAT", ["ATMine", "CUP_Mine_M"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	//Team Leader
	["cup_blufor_EUROFOR_teamLeader_temp"] call A3A_fnc_getLoadout,
	//Medic
	["cup_blufor_EUROFOR_medic_temp"] call A3A_fnc_getLoadout,
	//Autorifleman
	["cup_blufor_EUROFOR_machineGunner_temp"] call A3A_fnc_getLoadout,
	//Marksman
	["cup_blufor_EUROFOR_marksman_temp"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["cup_blufor_EUROFOR_AT_temp"] call A3A_fnc_getLoadout,
	//AT2
	["cup_blufor_EUROFOR_AT2_temp"] call A3A_fnc_getLoadout
]] call _fnc_saveToTemplate;

["pvpVehicles", ["CUP_B_BAF_Coyote_L2A1_W", "CUP_B_Jackal2_L2A1_GB_W"]] call _fnc_saveToTemplate;


//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []]; 					
_loadoutData setVariable ["carbines", []]; 					
_loadoutData setVariable ["grenadeLaunchers", []]; 			
_loadoutData setVariable ["SMGs", []]; 		
_loadoutData setVariable ["shotguns", []];				
_loadoutData setVariable ["machineGuns", []]; 				
_loadoutData setVariable ["marksmanRifles", []]; 			
_loadoutData setVariable ["sniperRifles", []]; 				
_loadoutData setVariable ["lightATLaunchers", []]; 
_loadoutData setVariable ["ATLaunchers", ["sfp_pskott68"]];  				
_loadoutData setVariable ["missileATLaunchers", []]; 		
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []]; 					

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]]; 					
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]]; 					
_loadoutData setVariable ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			
_loadoutData setVariable ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			

_loadoutData setVariable ["antiInfantryGrenades", ["sfp_handgrenade_shgr2000", "sfp_handgrenade_shgr07"]]; 		
_loadoutData setVariable ["antiTankGrenades", []]; 			
_loadoutData setVariable ["smokeGrenades", ["SmokeShell"]];
_loadoutData setVariable ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", ["CUP_NVG_PVS15_black"]];
_loadoutData setVariable ["binoculars", ["Binocular"]];		
_loadoutData setVariable ["Rangefinder", ["Rangefinder"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["sfp_lk35_ra145", "sfp_stridssack2000_ra_ksk90"]];
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
_sfLoadoutData setVariable ["uniforms", ["sfp_m90w_uniform", "sfp_m90w_uniform_ksk90_modern", "sfp_m90w_uniform_ksk90", "sfp_m90w_uniform_boots_m08", "sfp_m90w_uniform_m08", "sfp_m90w_uniform_modern", "sfp_m90w_uniform_dirty"]];	
_sfLoadoutData setVariable ["vests", ["sfp_stridsvast2000", "sfp_stridsvast2000_ar", "sfp_stridsvast2000_light"]];
_sfLoadoutData setVariable ["Hvests", ["sfp_stridsvast2000_mg"]];
_sfLoadoutData setVariable ["GLvests", ["sfp_stridsvast2000_gl"]];
_sfLoadoutData setVariable ["backpacks", ["sfp_backpack_stridssack08"]];		
_sfLoadoutData setVariable ["helmets", ["sfp_m90w_booniehat", "sfp_m37w_helmet_dok_camo", "sfp_m37w_helmet_cap1"]];		
_sfLoadoutData setVariable ["ATLaunchers", ["sfp_pskott86"]];  
_sfLoadoutData setVariable ["binoculars", ["CUP_LRTV"]];
_sfLoadoutData setVariable ["lightATLaunchers", [
	["sfp_grg86", "", "", "", ["CUP_MAAWS_HEDP_M", "sfp_grg_heat_mag"], [], ""]
]];
_sfLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_Javelin", "", "", "", ["CUP_Javelin_M"], [], ""]
]]; 
_sfLoadoutData setVariable ["AALaunchers", [
	["sfp_rbs69", "", "", "", ["sfp_rbs69_mag"], [], ""]
]];

_sfLoadoutData setVariable ["rifles", [
["sfp_ak5c", "", "sfp_dbal2", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["spf_g36c", "", "sfp_dbal2", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c", "", "sfp_dbal2", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c_alt", "", "", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c_alt", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5d", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["sfp_ak5dmk2", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["spf_g36c", "", "sfp_dbal2", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5d", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["sfp_ak5c_m203", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""]
]];

_sfLoadoutData setVariable ["SMGs", [
["sfp_cbj_ms", "", "", "", ["sfp_30Rnd_650x25mag", "sfp_30Rnd_650x25mag_subsonic"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["sfp_ksp90b", "", "", "cup_optic_acog2", ["sfp_200Rnd_556x45_ksp90"], [], ""],
["sfp_ksp90c", "", "sfp_dbal2", "cup_optic_acog2", ["sfp_200Rnd_556x45_ksp90"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["sfp_ak4", "", "", "sfp_optic_kikarsikte09_4x", ["sfp_20Rnd_762x51_ak4_ap", "sfp_20Rnd_762x51_ak4"], [], ""],
["sfp_ak5c", "muzzle_snds_m", "", "sfp_optic_susat_4x", ["sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_plastic"], [], ""]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["sfp_ag90_base", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["sfp_10Rnd_127x99_ag90"], [], ""],
["sfp_psg90_camo", "", "", "sfp_optic_kikarsikte90b_10x", ["sfp_9Rnd_762x51_psg90"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["CUP_hgun_Glock17", "muzzle_snds_L", "CUP_acc_MLPLS_Laser", "optic_MRD_black", [], [], ""],
["CUP_hgun_Glock17_blk", "muzzle_snds_L", "CUP_acc_MLPLS_Laser", "optic_MRD_black", [], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", ["sfp_m90w_uniform", "sfp_m90w_uniform_ksk90_modern", "sfp_m90w_uniform_ksk90", "sfp_m90w_uniform_boots_m08", "sfp_m90w_uniform_m08", "sfp_m90w_uniform_modern", "sfp_m90w_uniform_dirty"]];		
_militaryLoadoutData setVariable ["vests", ["sfp_stridsbalte_304k", "sfp_stridsbalte_304k_extrabag", "sfp_stridsbalte_304k_ar"]];			
_militaryLoadoutData setVariable ["Hvests", ["sfp_stridsbalte_304k_gl"]];
_militaryLoadoutData setVariable ["GLvests", ["sfp_stridsbalte_304k_gl"]];
_militaryLoadoutData setVariable ["backpacks", ["sfp_backpack_stridssack2000","sfp_backpack_lk35"]];		
_militaryLoadoutData setVariable ["helmets", ["sfp_m90w_helmet", "sfp_m90w_helmet_headset_nvg", "sfp_m90w_helmet_headset", "sfp_m90w_helmet_nvg", "sfp_m90w_helmet_peltor_nomic", "sfp_m90w_helmet_peltor_nvg", "sfp_m90w_helmet_peltor"]];		
_militaryLoadoutData setVariable ["ATLaunchers", ["sfp_pskott86"]];  
_militaryLoadoutData setVariable ["lightATLaunchers", [
	["sfp_grg48", "", "", "", ["CUP_MAAWS_HEDP_M", "sfp_grg_heat_mag"], [], ""],
	["sfp_grg86", "", "", "", ["CUP_MAAWS_HEDP_M", "sfp_grg_heat_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["AALaunchers", [
	["sfp_rbs69", "", "", "", ["sfp_rbs69_mag"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["sfp_ak5", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5b", "", "", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5b", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c", "", "sfp_dbal2", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c", "", "sfp_dbal2", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c_alt", "", "", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c_alt", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5d", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["sfp_ak5dmk2", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5d", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["sfp_ak5c_m203", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""],
["sfp_ak5_m203", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["sfp_mp5", "", "", "", ["sfp_30Rnd_9mm_mp5", "sfp_30Rnd_9mm_mp5_JHP"], [], ""],
["sfp_cbj_ms", "", "", "", ["sfp_30Rnd_650x25mag", "sfp_30Rnd_650x25mag_subsonic"], [], ""],
["sfp_mp5_rail", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_9mm_mp5", "sfp_30Rnd_9mm_mp5_JHP"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["sfp_ksp58B2", "", "", "sfp_optic_susat_4x", ["sfp_100Rnd_762x51_ksp58"], [], ""],
["sfp_ksp58f", "", "sfp_dbal2", "sfp_optic_susat_4x", ["sfp_100Rnd_762x51_ksp58"], [], ""],
["sfp_ksp90b", "", "", "cup_optic_acog2", ["sfp_200Rnd_556x45_ksp90"], [], ""],
["sfp_ksp90c", "", "sfp_dbal2", "cup_optic_acog2", ["sfp_200Rnd_556x45_ksp90"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["sfp_ak4", "", "", "sfp_optic_kikarsikte09_4x", ["sfp_20Rnd_762x51_ak4_ap", "sfp_20Rnd_762x51_ak4"], [], ""],
["sfp_ak5c", "muzzle_snds_m", "", "sfp_optic_susat_4x", ["sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_plastic"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["sfp_psg90_base", "", "", "sfp_optic_kikarsikte90b_10x", ["sfp_9Rnd_762x51_psg90"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["CUP_hgun_Glock17", "", "", "", [], [], ""],
["CUP_hgun_Glock17_blk", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", ["sfp_m90w_uniform", "sfp_m90w_uniform_ksk90_modern", "sfp_m90w_uniform_ksk90", "sfp_m90w_uniform_boots_m08", "sfp_m90w_uniform_m08", "sfp_m90w_uniform_modern", "sfp_m90w_uniform_dirty"]];	
_eliteLoadoutData setVariable ["vests", ["sfp_kroppsskydd12", "sfp_kroppsskydd12_holster", "sfp_kroppsskydd12_medic", "sfp_kroppsskydd12_mg", "sfp_kroppsskydd12_tl"]];
_eliteLoadoutData setVariable ["Hvests", ["sfp_kroppsskydd12_holster"]];
_eliteLoadoutData setVariable ["GLvests", ["sfp_kroppsskydd12_gl"]];
_eliteLoadoutData setVariable ["backpacks", ["sfp_backpack_stridssack2000","sfp_backpack_lk35"]];		
_eliteLoadoutData setVariable ["helmets", ["sfp_m90w_helmet", "sfp_m90w_helmet_headset_nvg", "sfp_m90w_helmet_headset", "sfp_m90w_helmet_nvg", "sfp_m90w_helmet_peltor_nomic", "sfp_m90w_helmet_peltor_nvg", "sfp_m90w_helmet_peltor"]];		
_eliteLoadoutData setVariable ["ATLaunchers", ["sfp_rb57"]];  
_eliteLoadoutData setVariable ["lightATLaunchers", [
	["sfp_grg86", "", "", "", ["CUP_MAAWS_HEDP_M", "sfp_grg_heat_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_Javelin", "", "", "", ["CUP_Javelin_M"], [], ""]
]]; 
_eliteLoadoutData setVariable ["AALaunchers", [
	["sfp_rbs69", "", "", "", ["sfp_rbs69_mag"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["sfp_ak5", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5b", "", "", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5b", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c", "", "sfp_dbal2", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c", "", "sfp_dbal2", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c_alt", "", "", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5c_alt", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5d", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["sfp_ak5dmk2", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
["sfp_ak5d", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["sfp_ak5c_m203", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""],
["sfp_ak5_m203", "", "", "", ["sfp_30Rnd_556x45_Stanag_plastic", "sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["sfp_mp5", "", "", "", ["sfp_30Rnd_9mm_mp5", "sfp_30Rnd_9mm_mp5_JHP"], [], ""],
["sfp_cbj_ms", "", "", "", ["sfp_30Rnd_650x25mag", "sfp_30Rnd_650x25mag_subsonic"], [], ""],
["sfp_mp5_rail", "", "", "sfp_optic_aimpoint_t1", ["sfp_30Rnd_9mm_mp5", "sfp_30Rnd_9mm_mp5_JHP"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["sfp_ksp90b", "", "", "cup_optic_acog2", ["sfp_200Rnd_556x45_ksp90"], [], ""],
["sfp_ksp90c", "", "sfp_dbal2", "cup_optic_acog2", ["sfp_200Rnd_556x45_ksp90"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["sfp_ak4", "", "", "sfp_optic_kikarsikte09_4x", ["sfp_20Rnd_762x51_ak4_ap", "sfp_20Rnd_762x51_ak4"], [], ""],
["sfp_ak5c", "muzzle_snds_m", "", "sfp_optic_susat_4x", ["sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_plastic"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["sfp_ag90_base", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["sfp_10Rnd_127x99_ag90"], [], ""],
["sfp_psg90_base", "", "", "sfp_optic_kikarsikte90b_10x", ["sfp_9Rnd_762x51_psg90"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["CUP_hgun_Glock17_blk", "", "CUP_acc_Glock17_Flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData setVariable ["uniforms", ["sfp_police_uniform_modern", "sfp_police_uniform_modern_tactical"]];
_policeLoadoutData setVariable ["vests", ["sfp_police_belt", "sfp_kroppsskydd_police", "sfp_police_tacVest"]];
_policeLoadoutData setVariable ["helmets", ["sfp_police_hat", "sfp_police_helmet"]];
_policeLoadoutData setVariable ["smgs", [
	["sfp_remington870", "", "", "", ["sfp_12Gauge_8rd_Pellets", "sfp_12Gauge_8rd_Slug"], [], ""],
	["sfp_remington870_chrome", "", "", "", ["sfp_12Gauge_8rd_Pellets", "sfp_12Gauge_8rd_Slug"], [], ""],
	["sfp_cga5p", "", "", "", ["sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_tracer"], [], ""],
	["sfp_mp5", "", "", "", ["sfp_30Rnd_9mm_mp5", "sfp_30Rnd_9mm_mp5_JHP"], [], ""],
	["sfp_mp5_rail", "", "", "", ["sfp_30Rnd_9mm_mp5", "sfp_30Rnd_9mm_mp5_JHP"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["CUP_hgun_Glock17"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData setVariable ["uniforms", [
	"sfp_m58w_uniform", 
	"sfp_m58w_uniform_alt1", 
	"sfp_m59w_uniform",
	"sfp_m59w_uniform_alt1"
]];		
_militiaLoadoutData setVariable ["vests", ["sfp_stridssele", "sfp_stridssele_extrabag"]];			
_militiaLoadoutData setVariable ["backpacks", ["sfp_stridssele_backpack", "sfp_stridssele_backpack", "sfp_stridssele_backpack_grg"]];		
_militiaLoadoutData setVariable ["helmets", ["sfp_m37w_helmet", "sfp_m37w_helmet_dok3", "sfp_m37w_helmet_dok4", "sfp_m37w_helmet_dok2", "sfp_m37w_helmet_dok"]];		
_militiaLoadoutData setVariable ["lightATLaunchers", [
	["sfp_grg48", "", "", "", ["CUP_MAAWS_HEDP_M", "sfp_grg_heat_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["ATLaunchers", ["sfp_pskott68"]];  

_militiaLoadoutData setVariable ["rifles", [
["sfp_ak4", "", "", "", ["sfp_20Rnd_762x51_ak4", "sfp_20Rnd_762x51_ak4_tracer"], [], ""],
["sfp_ak5b", "", "", "sfp_optic_aimpoint", ["sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_plastic"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["sfp_ak4", "", "", "sfp_optic_kikarsikte09_4x", ["sfp_20Rnd_762x51_ak4_ap", "sfp_20Rnd_762x51_ak4"], [], ""],
["sfp_ak5c", "muzzle_snds_m", "", "sfp_optic_susat_4x", ["sfp_30Rnd_556x45_Stanag", "sfp_30Rnd_556x45_Stanag_plastic"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["sfp_ak4_m203", "", "", "", ["sfp_20Rnd_762x51_ak4", "sfp_20Rnd_762x51_ak4_tracer"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["sfp_kpistm45", "", "", "", ["sfp_36Rnd_9mm_kpistm45"], [], ""],
["sfp_kpistm45", "", "", "", ["sfp_71Rnd_9mm_kpistm45"], [], ""],
["sfp_kpistm45b", "", "", "", ["sfp_36Rnd_9mm_kpistm45"], [], ""]
]];
_militiaLoadoutData setVariable ["shotguns", [
	["sfp_remington870", "", "", "", ["sfp_12Gauge_8rd_Pellets", "sfp_12Gauge_8rd_Slug"], [], ""],
	["sfp_remington870_chrome", "", "", "", ["sfp_12Gauge_8rd_Pellets", "sfp_12Gauge_8rd_Slug"], [], ""],
	["sfp_remington870_wood_chrome", "", "", "", ["sfp_12Gauge_8rd_Pellets", "sfp_12Gauge_8rd_Slug"], [], ""],
	["sfp_remington870_wood_blue", "", "", "", ["sfp_12Gauge_8rd_Pellets", "sfp_12Gauge_8rd_Slug"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["sfp_ksp58", "", "", "", ["sfp_50Rnd_762x51_ksp58"], [], ""],
["sfp_ksp58B2", "", "", "", ["sfp_50Rnd_762x51_ksp58"], [], ""],
["sfp_ksp58f", "", "", "", ["sfp_50Rnd_762x51_ksp58"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["sfp_ak4", "", "", "sfp_optic_hensoldt_4x", ["sfp_20Rnd_762x51_ak4_ap", "sfp_20Rnd_762x51_ak4"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["sfp_psg90_base", "", "", "sfp_optic_kikarsikte90b_10x", ["sfp_9Rnd_762x51_psg90"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_Glock17"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["sfp_m69p_uniform", "sfp_m69p_uniform_hood"]];			
_crewLoadoutData setVariable ["vests", ["sfp_kroppsskydd12_crew"]];				
_crewLoadoutData setVariable ["helmets", ["CUP_H_CZ_Helmet05"]];			


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["sfp_m87_flying_suit"]];
_pilotLoadoutData setVariable ["vests", ["V_Rangemaster_belt"]];
_pilotLoadoutData setVariable ["helmets", ["sfp_flighthelmet116"]];

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
	[["GLvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
	["primary", 7] call _fnc_addMagazines;

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


["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Official", _policeTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Unarmed", _unarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

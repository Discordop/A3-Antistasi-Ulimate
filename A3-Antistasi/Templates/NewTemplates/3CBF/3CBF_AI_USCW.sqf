//////////////////////////
//   Side Information   //
//////////////////////////

["name", "US Army"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "US Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "Flag_US_F"] call _fnc_saveToTemplate; 						
["flagTexture", "a3\data_f\flags\flag_us_co.paa"] call _fnc_saveToTemplate; 				
["flagMarkerType", "flag_USA"] call _fnc_saveToTemplate; 			

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "rhsusf_usmc_marpat_wd_squadleader"],
	["militia_rifleman", "rhsusf_usmc_marpat_wd_rifleman"],
	["militia_radioman", "rhsusf_usmc_marpat_wd_rifleman"],
	["militia_medic", "rhsusf_army_ucp_medic"],
	["militia_engineer", "rhsusf_usmc_marpat_wd_engineer"],
	["militia_explosivesexpert", "rhsusf_army_ucp_explosives"],
	["militia_grenadier", "rhsusf_usmc_marpat_wd_grenadier"],
	["militia_lat", "rhsusf_army_ucp_maaws"],
	["militia_at", "rhsusf_army_ucp_maaws"],
	["militia_aa", "rhsusf_usmc_marpat_wd_stinger"],
	["militia_machinegunner", "rhsusf_usmc_marpat_wd_machinegunner"],
	["militia_marksman", "rhsusf_usmc_marpat_wd_marksman"],
	["militia_sniper", "rhsusf_usmc_marpat_wd_sniper_M107"],

	["military_squadleader", "rhsusf_army_ocp_squadleader"],
	["military_rifleman", "rhsusf_army_ocp_rifleman"],
	["military_radioman", "rhsusf_army_ocp_rifleman"],
	["military_medic", "rhsusf_army_ocp_medic"],
	["military_engineer", "rhsusf_army_ocp_engineer"],
	["military_explosivesexpert", "rhsusf_army_ocp_explosives"],
	["military_grenadier", "rhsusf_army_ocp_grenadier"],
	["military_lat", "rhsusf_army_ocp_riflemanat"],
	["military_at", "rhsusf_army_ocp_maaws"],
	["military_aa", "rhsusf_army_ocp_aa"],
	["military_machinegunner", "rhsusf_army_ocp_machinegunner"],
	["military_marksman", "rhsusf_army_ocp_marksman"],
	["military_sniper", "rhsusf_army_ucp_sniper"],

	["elite_squadleader", "rhsusf_army_ocp_squadleader"],
	["elite_rifleman", "rhsusf_army_ocp_rifleman"],
	["elite_radioman", "rhsusf_army_ocp_rifleman"],
	["elite_medic", "rhsusf_army_ocp_medic"],
	["elite_engineer", "rhsusf_army_ocp_engineer"],
	["elite_explosivesexpert", "rhsusf_army_ocp_explosives"],
	["elite_grenadier", "rhsusf_army_ocp_grenadier"],
	["elite_lat", "rhsusf_army_ocp_riflemanat"],
	["elite_at", "rhsusf_army_ocp_maaws"],
	["elite_aa", "rhsusf_army_ocp_aa"],
	["elite_machinegunner", "rhsusf_army_ocp_machinegunner"],
	["elite_marksman", "rhsusf_army_ocp_marksman"],
	["elite_sniper", "rhsusf_army_ucp_sniper"],

	["sf_squadleader", "rhsusf_socom_marsoc_teamleader"],
	["sf_rifleman", "rhsusf_socom_marsoc_cso"],
	["sf_radioman", "rhsusf_socom_marsoc_cso"],
	["sf_medic", "rhsusf_socom_marsoc_sarc"],
	["sf_engineer", "rhsusf_socom_marsoc_cso_mechanic"],
	["sf_explosivesexpert", "rhsusf_army_ocp_explosives"],
	["sf_grenadier", "rhsusf_socom_marsoc_cso_grenadier"],
	["sf_lat", "rhsusf_army_ocp_maaws"],
	["sf_at", "rhsusf_army_ocp_maaws"],
	["sf_aa", "rhsusf_army_ocp_aa"],
	["sf_machinegunner", "rhsusf_army_ocp_machinegunner"],
	["sf_marksman", "rhsusf_army_ocp_marksman"],
	["sf_sniper", "rhsusf_army_ucp_sniper"],

	["other_crew", "rhsusf_army_ucp_crewman"],
	["other_unarmed", "B_Survivor_F"],
	["other_official", "rhsusf_army_ucp_officer"],
	["other_traitor", "B_G_Soldier_F"],
	["other_pilot", "rhsusf_army_ucp_helipilot"],
	["police_squadleader", "rhsusf_usmc_marpat_wd_rifleman"],
	["police_standard", "rhsusf_usmc_marpat_wd_rifleman"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["UK3CB_CW_US_B_LATE_M1025_Unarmed"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed", ["UK3CB_CW_US_B_LATE_M1025_MK19", "UK3CB_CW_US_B_LATE_M1025_M2", "UK3CB_CW_US_B_LATE_M1025_TOW"]] call _fnc_saveToTemplate; 		
["vehiclesTrucks", ["UK3CB_CW_US_B_LATE_M939", "UK3CB_CW_US_B_LATE_M939_Guntruck", "UK3CB_CW_US_B_LATE_M939_Open"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["rhsusf_M977A4_usarmy_wd"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["rhsusf_M977A4_AMMO_usarmy_wd", "UK3CB_CW_US_B_LATE_M939_Reammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["rhsusf_M977A4_REPAIR_usarmy_wd", "UK3CB_CW_US_B_LATE_M939_Repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["rhsusf_M978A4_usarmy_wd", "UK3CB_CW_US_B_LATE_M939_Fuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["UK3CB_CW_US_B_LATE_M113_AMB"]] call _fnc_saveToTemplate;	
["vehiclesAPCs", ["UK3CB_CW_US_B_LATE_AAV", "UK3CB_CW_US_B_LATE_LAV25", "UK3CB_CW_US_B_LATE_LAV25_HQ", "UK3CB_CW_US_B_LATE_M2A2"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["UK3CB_CW_US_B_LATE_M60a3","UK3CB_CW_US_B_LATE_M1A1", "rhsusf_m1a1hc_wd"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["RHS_M6_wd"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", ["UK3CB_CW_US_B_LATE_LAV25"]] call _fnc_saveToTemplate;			
["vehiclesIFVs", []] call _fnc_saveToTemplate;				

["vehiclesSam", ["B_Radar_System_01_F","B_SAM_System_03_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", ["rhsusf_m113d_usarmy", "rhsusf_m113d_usarmy_M240", "rhsusf_m113d_usarmy_MK19"]] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["RHS_A10"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["rhsusf_f22"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", ["RHS_C130J"]] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["UK3CB_CW_US_B_EARLY_UH1H_M240"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["UK3CB_CW_US_B_EARLY_UH1H_M240","rhsusf_CH53E_USMC_GAU21", "RHS_UH60M", "RHS_CH_47F"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["UK3CB_CW_US_B_EARLY_AH1Z", "UK3CB_CW_US_B_EARLY_UH1H_GUNSHIP", "UK3CB_CW_US_B_LATE_AH64_AA"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["rhsusf_m109_usarmy", ["rhs_mag_155mm_m795_28"]],
["RHS_M119_D", ["RHS_mag_m1_he_12"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["not_supported"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["not_supported"]] call _fnc_saveToTemplate; 				

["vehiclesMilitiaLightArmed", ["UK3CB_CW_US_B_LATE_M1025_M2"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["UK3CB_CW_US_B_LATE_M939_Open", "UK3CB_CW_US_B_LATE_M939_Guntruck", "UK3CB_CW_US_B_LATE_M939"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["UK3CB_CW_US_B_LATE_M998_2DR", "UK3CB_CW_US_B_LATE_M998_4DR"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["UK3CB_CW_US_B_LATE_M113_M2", "UK3CB_CW_US_B_LATE_M113_M240"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["UK3CB_CW_US_B_LATE_M60a3"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["UK3CB_CW_US_B_EARLY_M151_Jeep_Closed", "UK3CB_CW_US_B_EARLY_M151_Jeep_Open"]] call _fnc_saveToTemplate;

["staticMGs", ["RHS_M2StaticMG_D", "UK3CB_CW_US_B_LATE_M240_High"]] call _fnc_saveToTemplate; 					
["staticAT", ["RHS_TOW_TriPod_D"]] call _fnc_saveToTemplate; 					
["staticAA", ["RHS_Stinger_AA_pod_D"]] call _fnc_saveToTemplate; 					
["staticMortars", ["RHS_M252_D"]] call _fnc_saveToTemplate;
["staticHowitzers", ["RHS_M119_WD"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "rhs_12Rnd_m821_HE"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;


["baggedMGs", [["RHS_M2_Gun_Bag", "RHS_M2_Tripod_Bag"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["rhs_Tow_Gun_Bag", "rhs_TOW_Tripod_Bag"]]] call _fnc_saveToTemplate; 					
["baggedAA", []] call _fnc_saveToTemplate; 					
["baggedMortars", [["rhs_M252_Gun_Bag", "rhs_M252_Bipod_Bag"]]] call _fnc_saveToTemplate; 			

["howitzerMagazineHE", "RHS_mag_m1_he_12"] call _fnc_saveToTemplate;

["minefieldAT", ["rhsusf_mine_M19"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["rhsusf_mine_m14"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	["rhs_usaf_teamLeader"] call A3A_fnc_getLoadout,
	//Medic
	["rhs_usaf_medic"] call A3A_fnc_getLoadout,
	//Autorifleman
	["rhs_usaf_machineGunner"] call A3A_fnc_getLoadout,
	//Marksman
	["rhs_usaf_marksman"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["rhs_usaf_AT"] call A3A_fnc_getLoadout,
	//AT2
	["rhs_usaf_rifleman"] call A3A_fnc_getLoadout
]] call _fnc_saveToTemplate;
["pvpVehicles", ["rhsusf_m1240a1_usarmy_wd","rhsusf_M1220_M153_M2_usarmy_wd"]] call _fnc_saveToTemplate;

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
_loadoutData setVariable ["AALaunchers", ["rhs_weap_fim92"]];
_loadoutData setVariable ["ATLaunchers", []];
_loadoutData setVariable ["lightATLaunchers", []];
_loadoutData setVariable ["sidearms", []];
_loadoutData setVariable ["GLsidearms", []];
_loadoutData setVariable ["ATMines", ["rhs_mine_M19_mag"]]; 					
_loadoutData setVariable ["APMines", ["rhsusf_mine_m14_mag"]]; 					
_loadoutData setVariable ["lightExplosives", ["rhsusf_m112_mag"]]; 			
_loadoutData setVariable ["heavyExplosives", ["rhsusf_m112x4_mag"]]; 			

_loadoutData setVariable ["antiInfantryGrenades", []]; 		
_loadoutData setVariable ["antiTankGrenades", []]; 			
_loadoutData setVariable ["smokeGrenades", ["rhs_mag_an_m8hc"]]; 			
_loadoutData setVariable ["signalsmokeGrenades", ["rhs_mag_m18_green", "rhs_mag_m18_purple", "rhs_mag_m18_red", "rhs_mag_m18_yellow"]];			

_loadoutData setVariable ["maps", ["ItemMap"]];				
_loadoutData setVariable ["watches", ["ItemWatch"]];		
_loadoutData setVariable ["compasses", ["ItemCompass"]];	
_loadoutData setVariable ["radios", ["ItemRadio"]];			
_loadoutData setVariable ["gpses", ["ItemGPS"]];			
_loadoutData setVariable ["NVGs", ["UK3CB_ANPVS7"]];						
_loadoutData setVariable ["binoculars", ["Binocular"]];		
_loadoutData setVariable ["Rangefinder", ["rhsusf_bino_lerca_1200_black"]];

_loadoutData setVariable ["uniforms", []];					
_loadoutData setVariable ["MGvests", []];						
_loadoutData setVariable ["MEDvests", []];
_loadoutData setVariable ["SLvests", []];
_loadoutData setVariable ["SNIvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["backpacks", []];					
_loadoutData setVariable ["Atbackpacks", ["rhsgref_hidf_alicepack"]];
_loadoutData setVariable ["longRangeRadios", ["UK3CB_B_B_Radio_Backpack"]];			
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
_loadoutData setVariable ["items_explosivesExpert_extras", ["Toolkit", "MineDetector", "ACE_Clacker", "ACE_DefusalKit"]];
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
_sfLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_02_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_03_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_04_WDL", "UK3CB_CW_US_B_LATE_U_JNR_OFFICER_Uniform_01_WDL"]];			
_sfLoadoutData setVariable ["vests", ["UK3CB_TKA_B_V_GA_LITE_WDL", "UK3CB_TKA_B_V_GA_HEAVY_WDL"]];										
_sfLoadoutData setVariable ["backpacks", ["UK3CB_CW_US_B_LATE_B_RIF", "rhsgref_hidf_alicepack"]];			
_sfLoadoutData setVariable ["helmets", ["UK3CB_CW_US_B_LATE_H_BoonieHat_WDL_01", "rhsgref_helmet_pasgt_woodland_rhino"]];				
_sfLoadoutData setVariable ["binoculars", ["Laserdesignator"]];
_sfLoadoutData setVariable ["antiInfantryGrenades", ["rhs_mag_m67", "rhs_mag_an_m14_th3", "rhs_grenade_m15_mag"]]; 
_sfLoadoutData setVariable ["rifles", [ 					
["UK3CB_M16A3", "rhsusf_acc_nt4_black", "", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16A3", "rhsusf_acc_nt4_black", "", "rhsusf_acc_RX01", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16A3", "rhsusf_acc_nt4_black", "", "", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [ 					
["UK3CB_M16_Carbine", "rhsusf_acc_nt4_black", "", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16_Carbine", "rhsusf_acc_nt4_black", "", "rhsusf_acc_RX01", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16_Carbine", "rhsusf_acc_nt4_black", "", "", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [ 					
["UK3CB_M16A2_UGL", "rhsusf_acc_nt4_black", "", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], ["rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["UK3CB_MP5SD5", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["rhs_weap_m249_pip", "rhsusf_acc_nt4_black", "", "rhsusf_acc_ELCAN", ["rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_saw_bipod"],
["rhs_weap_m240G", "muzzle_snds_H_MG_blk_F", "", "rhsusf_acc_ELCAN", ["rhsusf_100Rnd_762x51_m80a1epr", "rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""],
["rhs_weap_m240G", "muzzle_snds_H_MG_blk_F", "", "rhsusf_acc_anpas13gv1", ["rhsusf_100Rnd_762x51_m80a1epr", "rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanrifles", [
["rhs_weap_sr25", "rhsusf_acc_SR25S", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25", "rhsusf_acc_SR25S", "", "rhsusf_acc_ACOG", ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25", "rhsusf_acc_SR25S", "", "rhsusf_acc_anpas13gv1", ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"]
]];
_sfLoadoutData setVariable ["sniperrifles", [
["rhs_weap_m24sws", "rhsusf_acc_m24_silencer_black", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m82a1", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""]
]];
_sfLoadoutData setVariable ["lightATLaunchers", [
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp"
]];
_sfLoadoutData setVariable ["ATLaunchers", [
["rhs_weap_smaw", "", "", "rhs_weap_optic_smaw", ["rhs_mag_smaw_HEAA", "rhs_mag_smaw_HEAA", "rhs_mag_smaw_HEDP"], ["rhs_mag_smaw_SR"],""]
]];
_sfLoadoutData setVariable ["sidearms", [
["rhsusf_weap_glock17g4", "rhsusf_acc_omega9k", "acc_flashlight_pistol", "", ["rhsusf_mag_17Rnd_9x19_FMJ"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_02_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_03_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_04_WDL", "UK3CB_CW_US_B_LATE_U_JNR_OFFICER_Uniform_01_WDL"]];		
_militaryLoadoutData setVariable ["vests", ["UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest"]];			
_militaryLoadoutData setVariable ["MGvests", ["UK3CB_CW_US_B_LATE_V_PASGT_MG_Vest"]];						
_militaryLoadoutData setVariable ["MEDvests", ["UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest"]];
_militaryLoadoutData setVariable ["SLvests", []];
_militaryLoadoutData setVariable ["SNIvests", []];
_militaryLoadoutData setVariable ["GLvests", []];
_militaryLoadoutData setVariable ["backpacks", ["UK3CB_CW_US_B_LATE_B_RIF", "rhsgref_hidf_alicepack"]];		
_militaryLoadoutData setVariable ["helmets", ["UK3CB_CW_US_B_LATE_H_PASGT_01_WDL", "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL", "UK3CB_CW_US_B_LATE_H_Patrol_Cap_WDL_01"]];		
_militaryLoadoutData setVariable ["antiInfantryGrenades", ["rhs_mag_m67"]]; 

_militaryLoadoutData setVariable ["rifles", [
["UK3CB_M16A2", "", "", "", ["rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
	["UK3CB_M16_Carbine", "", "", "", ["rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["UK3CB_MP5A2", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""],
["UK3CB_MP5A3", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["UK3CB_M16A2_UGL", "", "", "", ["rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_m714_White"], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["rhs_weap_m249", "", "", "", ["rhsusf_200rnd_556x45_mixed_box"], [], "rhsusf_acc_saw_bipod"],
["rhs_weap_m240B", "", "", "rhsusf_acc_ELCAN", ["rhsusf_100Rnd_762x51", "rhsusf_100Rnd_762x51", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanrifles", [
["UK3CB_M14DMR", "", "", "uk3cb_optic_artel_m14", ["UK3CB_DMR_20rnd_762x51", "UK3CB_DMR_20rnd_762x51", "UK3CB_DMR_20rnd_762x51_RT"], [], ""],
["UK3CB_M14DMR", "", "", "uk3cb_optic_PVS4_M14", ["UK3CB_DMR_20rnd_762x51", "UK3CB_DMR_20rnd_762x51", "UK3CB_DMR_20rnd_762x51_RT"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperrifles", [
["rhs_weap_m24sws", "rhsusf_acc_m24_muzzlehider_black", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], "rhsusf_acc_harris_swivel"]
]];
_militaryLoadoutData setVariable ["lightATLaunchers", [
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp"
]];
_militaryLoadoutData setVariable ["ATLaunchers", [
["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_militaryLoadoutData setVariable ["missileATLaunchers", []];
_militaryLoadoutData setVariable ["sidearms", [
["rhsusf_weap_m9", "", "", "", ["rhsusf_mag_15Rnd_9x19_FMJ", "rhsusf_mag_15Rnd_9x19_JHP"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_Early_U_JNR_OFFICER_Uniform_01_OLI", "UK3CB_CW_US_B_Early_U_CombatUniform_01_OLI"]];
_policeLoadoutData setVariable ["vests", ["V_TacVest_oli"]];
_policeLoadoutData setVariable ["helmets", ["rhsgref_hat_M1951"]];
_policeLoadoutData setVariable ["shotguns", [
["rhs_weap_M590_8RD", "", "", "", ["rhsusf_8Rnd_00Buck", "rhsusf_8Rnd_Slug"], [], ""],
["rhs_weap_M590_5RD", "", "", "", ["rhsusf_5Rnd_00Buck", "rhsusf_5Rnd_Slug"], [], ""]
]];
_policeLoadoutData setVariable ["SMGs", [
["UK3CB_MP5K", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""],
["UK3CB_MP5K_PDW", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", [
["rhsusf_weap_m1911a1", "", "", "", ["rhsusf_mag_7x45acp_MHP"], [], ""]
]];
////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_Early_U_SF_CombatUniform_04_ERDL_OLI", "UK3CB_CW_US_B_Early_U_SF_CombatUniform_02_ERDL"]];
_militiaLoadoutData setVariable ["vests", ["rhsgref_alice_webbing", "rhsgref_TacVest_ERDL"]];
_militiaLoadoutData setVariable ["backpacks", ["UK3CB_B_Alice_K"]];		
_militiaLoadoutData setVariable ["helmets", ["UK3CB_MDF_B_H_M1", "UK3CB_MDF_B_H_M1_ALT", "rhsgref_helmet_M1_erdl", "rhsgref_hat_M1951"]];
_militiaLoadoutData setVariable ["rifles", [
["UK3CB_M16A1", "", "", "", ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16A1_LSW", "", "", "", ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["UK3CB_M16_Carbine", "", "", "", ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""]
]]; 			
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["rhs_weap_m79", "", "", "", ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M583A1_white", "rhs_mag_m714_White"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M583A1_white", "rhs_mag_m714_White"], ""],
["UK3CB_M16A2_UGL", "", "", "", ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"], ["rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_M441_HE", "rhs_mag_m714_White"], ""]
]]; 			
_militiaLoadoutData setVariable ["SMGs", [
["rhs_weap_m3a1", "", "", "", ["rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1T_SMG"], [], ""]
]]; 	
_militiaLoadoutData setVariable ["shotguns", [
["rhs_weap_M590_8RD", "", "", "", ["rhsusf_8Rnd_00Buck", "rhsusf_8Rnd_Slug"], [], ""]
]];				
_militiaLoadoutData setVariable ["machineGuns", [
["UK3CB_M60", "", "", "", ["UK3CB_M60_100rnd_762x51_R", "UK3CB_M60_100rnd_762x51_R", "UK3CB_M60_100rnd_762x51_RT"], [], ""]
]]; 					
_militiaLoadoutData setVariable ["marksmanrifles", [
["UK3CB_M14", "", "", "uk3cb_optic_artel_m14", ["UK3CB_M14_20rnd_762x51", "UK3CB_M14_20rnd_762x51", "UK3CB_M14_20rnd_762x51_RT"], [], ""]
]]; 			
_militiaLoadoutData setVariable ["sniperrifles", [
["rhs_weap_m24sws", "", "", "rhsusf_acc_LEUPOLDMK4", ["rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m118_special_Mag", "rhsusf_5Rnd_762x51_m62_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["lightATLaunchers", ["rhs_weap_m72a7"]];
_militiaLoadoutData setVariable ["ATLaunchers", [
["rhs_weap_maaws", "", "", "", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["rhsusf_weap_m1911a1"]]; 					
_militiaLoadoutData setVariable ["antiInfantryGrenades", ["rhs_grenade_mkii_mag"]];


/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_02_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_03_WDL", "UK3CB_CW_US_B_LATE_U_CombatUniform_04_WDL", "UK3CB_CW_US_B_LATE_U_JNR_OFFICER_Uniform_01_WDL"]];			
_eliteLoadoutData setVariable ["vests", ["UK3CB_TKA_B_V_GA_LITE_WDL", "UK3CB_TKA_B_V_GA_HEAVY_WDL"]];				
_eliteLoadoutData setVariable ["backpacks", ["UK3CB_CW_US_B_LATE_B_RIF", "rhsgref_hidf_alicepack"]];			
_eliteLoadoutData setVariable ["helmets", ["rhsgref_helmet_pasgt_woodland_rhino"]];				
_eliteLoadoutData setVariable ["binoculars", ["Laserdesignator"]];
_eliteLoadoutData setVariable ["antiInfantryGrenades", ["rhs_mag_m67", "rhs_mag_an_m14_th3", "rhs_grenade_m15_mag"]];
			
_eliteLoadoutData setVariable ["rifles", [ 					
["UK3CB_M16A3", "", "", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16A3", "", "", "rhsusf_acc_RX01", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16A3", "", "", "", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [ 					
["UK3CB_M16_Carbine", "", "", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16_Carbine", "", "", "rhsusf_acc_RX01", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""],
["UK3CB_M16_Carbine", "", "", "", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [ 					
["UK3CB_M16A2_UGL", "", "", "rhsusf_acc_ACOG", ["rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"], ["rhs_mag_M441_HE", "rhs_mag_M433_HEDP", "rhs_mag_M433_HEDP", "rhs_mag_m714_White"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["UK3CB_MP5A2", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""],
["UK3CB_MP5A3", "", "", "", ["UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["rhs_weap_m249_pip", "", "", "rhsusf_acc_ELCAN", ["rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_100Rnd_556x45_M995_soft_pouch"], [], "rhsusf_acc_saw_bipod"],
["rhs_weap_m240G", "", "", "rhsusf_acc_ELCAN", ["rhsusf_100Rnd_762x51_m80a1epr", "rhsusf_100Rnd_762x51_m61_ap", "rhsusf_100Rnd_762x51_m62_tracer"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanrifles", [
["rhs_weap_sr25", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"],
["rhs_weap_sr25", "", "", "rhsusf_acc_ACOG", ["rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag"], [], "rhsusf_acc_harris_bipod"]
]];
_eliteLoadoutData setVariable ["sniperrifles", [
["rhs_weap_m24sws", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_5Rnd_762x51_m993_Mag"], [], "rhsusf_acc_harris_swivel"],
["rhs_weap_m82a1", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["rhsusf_mag_10Rnd_STD_50BMG_M33"], [], ""]
]];

_eliteLoadoutData setVariable ["lightATLaunchers", [
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp"
]];
_eliteLoadoutData setVariable ["ATLaunchers", [
["rhs_weap_smaw", "", "", "rhs_weap_optic_smaw", ["rhs_mag_smaw_HEAA", "rhs_mag_smaw_HEAA", "rhs_mag_smaw_HEDP"], ["rhs_mag_smaw_SR"],""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["rhsusf_weap_glock17g4", "", "", "", ["rhsusf_mag_17Rnd_9x19_FMJ"], [], ""]
]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["rhs_weap_fgm148", "", "", "", ["rhs_fgm148_magazine_AT"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL"]];			
_crewLoadoutData setVariable ["vests", ["UK3CB_CW_US_B_LATE_V_PASGT_Crew_Vest"]];				
_crewLoadoutData setVariable ["helmets", ["rhsusf_cvc_green_helmet", "rhsusf_cvc_green_alt_helmet", "rhsusf_cvc_helmet", "rhsusf_cvc_alt_helmet"]];			
_crewLoadoutData setVariable ["carbines", [
["UK3CB_M16_Carbine", "", "", "", ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""]
]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["UK3CB_CW_US_B_LATE_U_J_Pilot_Uniform_01_NATO"]];			
_pilotLoadoutData setVariable ["vests", ["UK3CB_V_Pilot_Vest"]];			
_pilotLoadoutData setVariable ["helmets", ["rhsusf_hgu56p", "rhsusf_hgu56p_mask", "rhsusf_hgu56p_visor", "rhsusf_hgu56p_visor_mask"]];			
_pilotLoadoutData setVariable ["carbines", [
["UK3CB_M16_Carbine", "", "", "", ["rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M193_Stanag", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red"], [], ""]
]];
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

	["carbines"] call _fnc_setPrimary;
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

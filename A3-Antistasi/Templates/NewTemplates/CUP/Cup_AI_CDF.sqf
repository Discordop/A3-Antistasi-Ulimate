//////////////////////////
//   Side Information   //
//////////////////////////

["name", "CDF"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "CDF Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "Flag_Green_F"] call _fnc_saveToTemplate; 						
["flagTexture", "\A3\Data_F\Flags\Flag_green_CO.paa"] call _fnc_saveToTemplate; 			
["flagMarkerType", "b_unknown"] call _fnc_saveToTemplate; 			

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "CUP_B_CDF_Soldier_TL_FST"],
	["militia_rifleman", "CUP_B_CDF_Soldier_FST"],
	["militia_radioman", "CUP_B_CDF_Soldier_FST"],
	["militia_medic", "CUP_B_CDF_Medic_FST"],
	["militia_engineer", "CUP_B_CDF_Engineer_FST"],
	["militia_explosivesexpert", "CUP_B_CDF_Soldier_FST"],
	["militia_grenadier", "CUP_B_CDF_Soldier_GL_FST"],
	["militia_lat", "CUP_B_CDF_Soldier_LAT_FST"],
	["militia_at", "CUP_B_CDF_Soldier_LAT_FST"],
	["militia_aa", "CUP_B_CDF_Soldier_AA_FST"],
	["militia_machinegunner", "CUP_B_CDF_Soldier_MG_FST"],
	["militia_marksman", "CUP_B_CDF_Soldier_Marksman_FST"],
	["militia_sniper", "CUP_B_CDF_Sniper_FST"],

	["military_squadleader", "CUP_B_CDF_Soldier_TL_FST"],
	["military_rifleman", "CUP_B_CDF_Soldier_FST"],
	["military_radioman", "CUP_B_CDF_Soldier_FST"],
	["military_medic", "CUP_B_CDF_Medic_FST"],
	["military_engineer", "CUP_B_CDF_Engineer_FST"],
	["military_explosivesexpert", "CUP_B_CDF_Soldier_FST"],
	["military_grenadier", "CUP_B_CDF_Soldier_GL_FST"],
	["military_lat", "CUP_B_CDF_Soldier_LAT_FST"],
	["military_at", "CUP_B_CDF_Soldier_LAT_FST"],
	["military_aa", "CUP_B_CDF_Soldier_AA_FST"],
	["military_machinegunner", "CUP_B_CDF_Soldier_MG_FST"],
	["military_marksman", "CUP_B_CDF_Soldier_Marksman_FST"],
	["military_sniper", "CUP_B_CDF_Sniper_FST"],

	["elite_squadleader", "CUP_B_CDF_Soldier_TL_FST"],
	["elite_rifleman", "CUP_B_CDF_Soldier_FST"],
	["elite_radioman", "CUP_B_CDF_Soldier_FST"],
	["elite_medic", "CUP_B_CDF_Medic_FST"],
	["elite_engineer", "CUP_B_CDF_Engineer_FST"],
	["elite_explosivesexpert", "CUP_B_CDF_Soldier_FST"],
	["elite_grenadier", "CUP_B_CDF_Soldier_GL_FST"],
	["elite_lat", "CUP_B_CDF_Soldier_LAT_FST"],
	["elite_at", "CUP_B_CDF_Soldier_LAT_FST"],
	["elite_aa", "CUP_B_CDF_Soldier_AA_FST"],
	["elite_machinegunner", "CUP_B_CDF_Soldier_MG_FST"],
	["elite_marksman", "CUP_B_CDF_Soldier_Marksman_FST"],
	["elite_sniper", "CUP_B_CDF_Sniper_FST"],

	["sf_squadleader", "CUP_B_CDF_Soldier_TL_FST"],
	["sf_rifleman", "CUP_B_CDF_Soldier_FST"],
	["sf_radioman", "CUP_B_CDF_Soldier_FST"],
	["sf_medic", "CUP_B_CDF_Medic_FST"],
	["sf_engineer", "CUP_B_CDF_Engineer_FST"],
	["sf_explosivesexpert", "CUP_B_CDF_Soldier_FST"],
	["sf_grenadier", "CUP_B_CDF_Soldier_GL_FST"],
	["sf_lat", "CUP_B_CDF_Soldier_LAT_FST"],
	["sf_at", "CUP_B_CDF_Soldier_LAT_FST"],
	["sf_aa", "CUP_B_CDF_Soldier_AA_FST"],
	["sf_machinegunner", "CUP_B_CDF_Soldier_MG_FST"],
	["sf_marksman", "CUP_B_CDF_Soldier_Marksman_FST"],
	["sf_sniper", "CUP_B_CDF_Sniper_FST"],

	["other_crew", "CUP_B_CDF_Crew_FST"],
	["other_unarmed", "CUP_B_CDF_Soldier_Light_FST"],
	["other_official", "CUP_B_CDF_Officer_FST"],
	["other_traitor", "B_G_officer_F"],
	["other_pilot", "CUP_B_CDF_Pilot_FST"],
	["police_squadleader", "CUP_B_CDF_Soldier_FST"],
	["police_standard", "CUP_B_CDF_Soldier_FST"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["CUP_B_HMMWV_Unarmed_USMC","CUP_B_UAZ_Open_CDF", "CUP_B_UAZ_Unarmed_CDF"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["CUP_B_HMMWV_TOW_USMC", "CUP_B_HMMWV_MK19_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_M2_USMC", "CUP_B_BRDM2_CDF", "CUP_B_BRDM2_ATGM_CDF", "CUP_B_BRDM2_HQ_CDF", "CUP_B_Ural_ZU23_CDF"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["CUP_B_Kamaz_Open_CDF", "CUP_B_Kamaz_CDF"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["CUP_B_Ural_Open_CDF", "CUP_B_Kamaz_Open_CDF"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["CUP_B_Ural_Reammo_CDF"]] call _fnc_saveToTemplate; 		
["vehiclesRepairTrucks", ["CUP_B_Ural_Repair_CDF"]] call _fnc_saveToTemplate; 		
["vehiclesFuelTrucks", ["CUP_B_Kamaz_Refuel_CDF"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["CUP_B_S1203_Ambulance_CDF","CUP_B_BMP2_AMB_CDF"]] call _fnc_saveToTemplate;			
["vehiclesAPCs", ["CUP_B_M113_USA","CUP_B_BMP2_CDF", "CUP_B_BTR80_CDF", "CUP_B_BTR80A_CDF"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["CUP_B_T72_CDF","CUP_B_M60A3_USMC"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["CUP_B_ZSU23_CDF"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", ["CUP_B_MTLB_pk_CDF"]] call _fnc_saveToTemplate;			
["vehiclesIFVs", []] call _fnc_saveToTemplate;				

["vehiclesSam", ["B_Radar_System_01_F","B_SAM_System_03_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["CUP_B_RHIB2Turret_USMC", "CUP_B_RHIB_USMC"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", ["CUP_B_M113_USA"]] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["CUP_B_Su25_Dyn_CDF"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["CUP_B_SU34_CDF"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", ["CUP_B_C130J_USMC"]] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["CUP_B_Mi17_VIV_CDF"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["CUP_B_Mi17_CDF", "CUP_B_Mi24_D_MEV_Dynamic_CDF"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["CUP_B_Mi24_D_Dynamic_CDF"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["CUP_B_BM21_CDF",["CUP_40Rnd_GRAD_HE"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["not_supported"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate; 				

["vehiclesMilitiaLightArmed", ["CUP_B_UAZ_MG_CDF"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["CUP_B_Ural_Open_CDF", "CUP_B_Ural_CDF"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CUP_B_UAZ_Unarmed_CDF", "CUP_B_UAZ_Open_CDF"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["CUP_B_BTR60_CDF","CUP_B_MTLB_pk_CDF"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["CUP_I_T55_TK_GUE"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["CUP_LADA_LM_CIV", "CUP_C_S1203_Militia_CIV"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_USMC"]] call _fnc_saveToTemplate; 					
["staticAT", ["CUP_B_RBS70_ACR"]] call _fnc_saveToTemplate; 					
["staticAA", ["CUP_B_Igla_AA_pod_CDF", "CUP_B_ZU23_CDF"]] call _fnc_saveToTemplate; 					
["staticMortars", ["CUP_B_M252_USMC"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_B_D30_CDF"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_105mmHE_M119_M"] call _fnc_saveToTemplate;

["baggedMGs", [["CUP_B_M2_Gun_Bag", "CUP_B_M2_Tripod_Bag"]]] call _fnc_saveToTemplate; 					
["baggedAT", []] call _fnc_saveToTemplate; 					
["baggedAA", []] call _fnc_saveToTemplate; 					
["baggedMortars", [["CUP_B_M252_Bipod_Bag", "CUP_B_M252_Gun_Bag"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets


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

["pvpVehicles", ["CUP_B_UAZ_MG_CDF", "CUP_B_UAZ_Open_CDF"]] call _fnc_saveToTemplate;


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
_loadoutData setVariable ["ATLaunchers", ["CUP_launch_M136", "CUP_launch_M72A6"]];  				
_loadoutData setVariable ["missileATLaunchers", []]; 		
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []]; 					

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]]; 					
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]]; 					
_loadoutData setVariable ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			
_loadoutData setVariable ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			

_loadoutData setVariable ["antiInfantryGrenades", ["CUP_HandGrenade_RGD5", "CUP_HandGrenade_RGO"]]; 		
_loadoutData setVariable ["antiTankGrenades", []]; 			
_loadoutData setVariable ["smokeGrenades", ["SmokeShell"]];
_loadoutData setVariable ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", ["CUP_NVG_PVS7"]];
_loadoutData setVariable ["binoculars", ["Binocular"]];		
_loadoutData setVariable ["Rangefinder", ["Rangefinder"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["B_RadioBag_01_wdl_F", "CUP_B_Kombat_Radio_Olive"]];
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
_sfLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_MNT_1", "CUP_U_B_CDF_MNT_2"]];		
_sfLoadoutData setVariable ["vests", ["V_CarrierRigKBT_01_light_Olive_F", "V_CarrierRigKBT_01_Olive_F"]];			
_sfLoadoutData setVariable ["Hvests", ["V_CarrierRigKBT_01_heavy_Olive_F"]];
_sfLoadoutData setVariable ["GLvests", ["V_CarrierRigKBT_01_heavy_Olive_F"]];
_sfLoadoutData setVariable ["backpacks", ["B_Carryall_oli"]];		
_sfLoadoutData setVariable ["helmets", ["CUP_H_OpsCore_Green_NoHS", "CUP_H_OpsCore_Green"]];		
_sfLoadoutData setVariable ["binoculars", ["Laserdesignator"]];
_sfLoadoutData setVariable ["ATLaunchers", ["CUP_launch_NLAW"]]; 
_sfLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
]];
_sfLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_M47", "", "", "", ["CUP_Dragon_EP1_M"], [], ""]
]];
_sfLoadoutData setVariable ["AALaunchers", [
	["CUP_launch_FIM92Stinger", "", "", "", ["CUP_Stinger_M"], [], ""]
]];
_sfLoadoutData setVariable ["NVGs", ["CUP_NVG_GPNVG_green"]];

_sfLoadoutData setVariable ["rifles", [
["CUP_arifle_Mk16_SV_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD", "CUP_optic_ACOG_TA31_KF_Wood", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], "CUP_bipod_VLTOR_Modpod_black"],
["CUP_arifle_Mk16_SV_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], "CUP_bipod_VLTOR_Modpod_od"],
["CUP_arifle_Mk16_STD_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black", "CUP_optic_CompM2_low", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_FG_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_AFG_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_AIMM_M68_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_AFG_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_ACOG_TA31_KF", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_FG_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_CompM2_low_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_Eotech553_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_AFG_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD", "CUP_optic_AIMM_M68_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_AFG_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD", "CUP_optic_ACOG_TA31_KF_Wood", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["CUP_arifle_Mk16_CQC_AFG_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black", "CUP_optic_CompM2_low", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_AFG_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA31_KF", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_FG_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_AIMM_M68_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_CompM2_low_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_ACOG_TA31_KF_Wood", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_FG_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_Eotech553_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_AFG_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD", "CUP_optic_AIMM_M68_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_SOMMOD_Grip_green", "CUP_muzzle_snds_M16_camo", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_TrijiconRx01_od", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_SOMMOD_Grip_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15_Black", "CUP_optic_TrijiconRx01_kf_black", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_SOMMOD_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_AIMM_COMPM2_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_SOMMOD_green", "CUP_muzzle_snds_M16_camo", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_AIMM_COMPM2_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_mk18_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15_Black", "CUP_optic_MARS", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_Mk16_CQC_EGLM_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA31_KF", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_CQC_EGLM_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black", "CUP_optic_CompM2_low", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_STD_EGLM_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_CQC_EGLM_black", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_Black_Top", "CUP_optic_AIMM_M68_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_CQC_EGLM_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_CompM2_low_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_STD_EGLM_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD_Top", "CUP_optic_Eotech553_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_CQC_EGLM_woodland", "CUP_muzzle_snds_SCAR_L", "CUP_acc_ANPEQ_15_OD", "CUP_optic_AIMM_M68_OD", ["CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Olive", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_mk18_m203_black", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15_Black", "CUP_optic_MARS", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];

_sfLoadoutData setVariable ["SMGs", [
["CUP_smg_MP5SD6", "", "", "CUP_optic_HoloBlack", [], [], ""],
["CUP_smg_MP7", "CUP_muzzle_snds_MP7", "CUP_acc_ANPEQ_15_Black", "CUP_optic_TrijiconRx01_black", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Yellow_Tracer"], [], ""],
["CUP_smg_MP7_woodland", "CUP_muzzle_snds_MP7", "CUP_acc_ANPEQ_15_OD", "CUP_optic_TrijiconRx01_od", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Yellow_Tracer"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["CUP_arifle_HK_M27_VFG", "CUP_muzzle_snds_M16", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ElcanM145", ["CUP_60Rnd_556x45_SureFire_Tracer_Red", "CUP_60Rnd_556x45_SureFire_Tracer_Yellow", "CUP_60Rnd_556x45_SureFire_Tracer_Green"], [], "CUP_bipod_Harris_1A2_L_BLK"],
["CUP_lmg_m249_pip1", "CUP_muzzle_snds_M16", "", "CUP_optic_ElcanM145", ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch"], [], ""],
["CUP_lmg_M240", "", "", "CUP_optic_ElcanM145", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_Mk18_blk", "muzzle_snds_B", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "CUP_bipod_Harris_1A2_L_BLK"],
["CUP_arifle_Mk20_black", "muzzle_snds_B", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_B_SCAR_bkl", "CUP_20Rnd_762x51_B_SCAR_bkl", "CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR_bkl"], [], "CUP_bipod_Harris_1A2_L_BLK"],
["CUP_arifle_Mk20_woodland", "muzzle_snds_B", "CUP_acc_ANPEQ_15_OD", "CUP_optic_LeupoldMk4_10x40_LRT_Woodland", ["CUP_20Rnd_762x51_B_SCAR_wdl", "CUP_20Rnd_762x51_B_SCAR_wdl", "CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR_wdl"], [], "CUP_bipod_VLTOR_Modpod_od"]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_M107_Base", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", [], [], ""],
["CUP_srifle_M107_Woodland", "", "", "CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND", [], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["CUP_hgun_Mk23", "CUP_muzzle_snds_mk23", "CUP_acc_mk23_lam_f", "", [], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_MNT_1", "CUP_U_B_CDF_MNT_2"]];		
_militaryLoadoutData setVariable ["vests", ["CUP_V_CDF_6B3_1_MNT", "CUP_V_CDF_6B3_2_MNT","CUP_V_CDF_6B3_3_MNT", "CUP_V_CDF_6B3_5_MNT"]];			
_militaryLoadoutData setVariable ["Hvests", []];
_militaryLoadoutData setVariable ["GLvests", ["CUP_V_CDF_6B3_4_MNT"]];
_militaryLoadoutData setVariable ["backpacks", ["B_Kitbag_rgr", "B_Carryall_oli"]];		
_militaryLoadoutData setVariable ["helmets", ["CUP_H_CDF_H_PASGT_MNT", "CUP_H_CDF_OfficerCap_MNT", "H_Booniehat_mgrn"]];		
_militaryLoadoutData setVariable ["ATLaunchers", ["CUP_launch_RPG26","CUP_launch_RShG2"]];
_militaryLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7VL_M", "CUP_PG7VL_M", "CUP_PG7VM_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7VL_M", "CUP_PG7VL_M", "CUP_OG7_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7VL_M", "CUP_TBG7V_M", "CUP_OG7_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7VR_M", "CUP_PG7VR_M", "CUP_PG7VL_M"], [], ""]
]];
_militaryLoadoutData setVariable ["missileATLaunchers", []]; 
_militaryLoadoutData setVariable ["AALaunchers", [
	["CUP_launch_Igla", "", "", "", ["CUP_Igla_M"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["CUP_arifle_Sa58P", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_Sa58P_wood", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_Sa58V", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""],
["CUP_arifle_Sa58V_wood", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["CUP_arifle_Sa58s", "", "", "", ["rhs_30Rnd_762x39mm_Savz58", "rhs_30Rnd_762x39mm_Savz58", "rhs_30Rnd_762x39mm_Savz58_tracer"], [], ""],
["CUP_arifle_OTS14_GROZA_762", "", "", "", ["30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_Tracer_F"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_OTS14_GROZA_762_GL", "", "", "", ["30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_F", "30Rnd_762x39_Mag_Tracer_F"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["CUP_arifle_OTS14_GROZA", "", "", "", [], [], ""],
["CUP_arifle_OTS14_GROZA_Grip", "", "", "", [], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["CUP_lmg_PKMN", "", "", "CUP_optic_PechenegScope", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_PKM", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_arifle_Sa58_Klec", "", "", "", ["CUP_45Rnd_Sa58_M", "CUP_45Rnd_Sa58_M", "CUP_45Rnd_Sa58_M_TracerG"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_ksvk", "", "", "CUP_optic_PSO_3", ["CUP_5Rnd_127x108_KSVK_M"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["CUP_hgun_PMM", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_MNT_1", "CUP_U_B_CDF_MNT_2"]];		
_eliteLoadoutData setVariable ["vests", ["V_CarrierRigKBT_01_light_Olive_F", "V_CarrierRigKBT_01_Olive_F"]];			
_eliteLoadoutData setVariable ["Hvests", ["V_CarrierRigKBT_01_heavy_Olive_F"]];
_eliteLoadoutData setVariable ["GLvests", ["V_CarrierRigKBT_01_heavy_Olive_F"]];
_eliteLoadoutData setVariable ["backpacks", ["B_Carryall_oli"]];		
_eliteLoadoutData setVariable ["helmets", ["CUP_H_OpsCore_Green_NoHS", "CUP_H_OpsCore_Green"]];		
_eliteLoadoutData setVariable ["binoculars", ["Laserdesignator"]];
_eliteLoadoutData setVariable ["ATLaunchers", ["CUP_launch_NLAW"]]; 
_eliteLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_M47", "", "", "", ["CUP_Dragon_EP1_M"], [], ""]
]];
_eliteLoadoutData setVariable ["AALaunchers", [
	["CUP_launch_FIM92Stinger", "", "", "", ["CUP_Stinger_M"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["CUP_arifle_CZ805_A1_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], [], "CUP_bipod_VLTOR_Modpod_black"],
["CUP_arifle_CZ805_A1_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Elcan_reflex", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], [], ""],
["CUP_arifle_CZ805_A1_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["CUP_arifle_CZ805_A2_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], [], "CUP_bipod_VLTOR_Modpod_black"],
["CUP_arifle_CZ805_A2_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Elcan_reflex", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], [], ""],
["CUP_arifle_CZ805_A2_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_CZ805_GL_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Elcan_SpecterDR_black", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_CZ805_GL_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Elcan_reflex", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_CZ805_GL_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_556x45_CZ805", "CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["CUP_smg_EVO", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_HoloBlack", ["CUP_30Rnd_9x19_EVO", "30Rnd_9x21_Mag_SMG_02_Tracer_Green"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["CUP_lmg_PKM_top_rail_B50_vfg", "", "CUP_acc_ANPEQ_15_Black", "optic_tws_mg", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_RSASS_Black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA01B_Black", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], ""],
["CUP_srifle_RSASS_Black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "CUP_bipod_VLTOR_Modpod_black"]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_ksvk", "", "", "CUP_optic_PSO_3", ["CUP_5Rnd_127x108_KSVK_M"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["CUP_hgun_M17_Black", "", "CUP_acc_Glock17_Flashlight", "", [], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData setVariable ["uniforms", ["CUP_U_C_Policeman_01"]];
_policeLoadoutData setVariable ["vests", ["CUP_V_C_Police_Holster"]];
_policeLoadoutData setVariable ["helmets", ["CUP_H_C_Policecap_01"]];
_policeLoadoutData setVariable ["smgs", [
["CUP_smg_SA61", "", "", "", ["CUP_20Rnd_B_765x17_Ball_M"], [], ""],
["CUP_smg_vityaz", "", "", "", ["CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19AP_Vityaz"], [], ""],
["CUP_arifle_AKS74U", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""],
["CUP_arifle_SAIGA_MK03", "", "", "", ["CUP_10Rnd_762x39_SaigaMk03_M"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["CUP_hgun_Makarov"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_FST_1", "CUP_U_B_CDF_FST_2"]];		
_militiaLoadoutData setVariable ["vests", ["CUP_V_O_SLA_Flak_Vest03", "CUP_V_O_SLA_Flak_Vest01", "CUP_V_O_SLA_Flak_Vest02"]];			
_militiaLoadoutData setVariable ["backpacks", ["B_AssaultPack_rgr", "B_FieldPack_khk"]];		
_militiaLoadoutData setVariable ["helmets", ["CUP_H_SLA_Helmet_OD_worn", "CUP_H_RUS_SSH68_olive", "CUP_H_CDF_OfficerCap_FST"]];		
_militiaLoadoutData setVariable ["ATLaunchers", ["CUP_launch_RPG18"]];  
_militiaLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_PG7V_M", "CUP_OG7_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_PG7V_M", "CUP_PG7VL_M"], [], ""],
	["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_OG7_M", "CUP_OG7_M"], [], ""]
]];
_militiaLoadoutData setVariable ["AALaunchers", [
	["CUP_launch_9K32Strela", "", "", "", ["CUP_Strela_2_M"], [], ""]
]];

_militiaLoadoutData setVariable ["rifles", [
["CUP_arifle_M16A1", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_AKS74_Early", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""],
["CUP_arifle_AKS74", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""],
["CUP_arifle_AK74", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""],
["CUP_arifle_AK74_top_rail", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["CUP_arifle_Colt727", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_SKS", "", "", "", [], [], ""],
["CUP_arifle_AKS74U", "", "", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_Colt727_M203", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""],
["CUP_arifle_M16A1GL", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""],
["CUP_arifle_AK74_GL", "", "", "", ["CUP_20Rnd_545x39_AKSU_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AKS74_GL_Early", "", "", "", ["CUP_20Rnd_545x39_AKSU_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AKS74_GL", "", "", "", ["CUP_20Rnd_545x39_AKSU_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["CUP_smg_SA61", "", "", "", ["CUP_20Rnd_B_765x17_Ball_M"], [], ""]
]];
_militiaLoadoutData setVariable ["shotguns", [
	["CUP_sgun_Saiga12K", "", "", "", ["CUP_5Rnd_B_Saiga12_Buck_00", "CUP_5Rnd_B_Saiga12_Slug"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["CUP_arifle_RPK74_45", "", "", "", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_M14", "", "CUP_acc_Flashlight", "optic_MRCO", ["10Rnd_Mk14_762x51_Mag"], [], ""],
["CUP_SKS_rail", "", "", "optic_MRCO", ["CUP_10Rnd_762x39_SKS_M"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_Mosin_Nagant", "", "", "CUP_optic_PEM", [], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_Makarov"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_MNT_2"]];			
_crewLoadoutData setVariable ["vests", ["CUP_V_CDF_CrewBelt"]];				
_crewLoadoutData setVariable ["helmets", ["CUP_H_RUS_TSH_4_Brown"]];			


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["CUP_U_B_CDF_MNT_1"]];
_pilotLoadoutData setVariable ["vests", ["CUP_V_CDF_OfficerBelt"]];
_pilotLoadoutData setVariable ["helmets", ["CUP_H_RUS_ZSH_Shield_Up", "CUP_H_RUS_ZSH_Shield_Down"]];

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

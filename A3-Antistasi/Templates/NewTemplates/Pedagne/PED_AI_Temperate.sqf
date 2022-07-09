//////////////////////////
//   Side Information   //
//////////////////////////

["name", "IAF"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "IAF Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "Flag_Enoch_F"] call _fnc_saveToTemplate; 						
["flagTexture", "\A3\Data_F\Flags\flag_uk_CO.paa"] call _fnc_saveToTemplate; 				
["flagMarkerType", "flag_Italy"] call _fnc_saveToTemplate; 			

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "ASZ_EI_CB60_sl"],
	["militia_rifleman", "ASZ_EI_CB60_fuc"],
	["militia_radioman", "ASZ_EI_CB60_fuc_02"],
	["militia_medic", "ASZ_EI_CB60_med"],
	["militia_engineer", "ASZ_EI_CB60_fuc_02"],
	["militia_explosivesexpert", "ASZ_EI_CB60_gl"],
	["militia_grenadier", "ASZ_EI_CB60_gl"],
	["militia_lat", "ASZ_EI_CB60_at"],
	["militia_at", "ASZ_EI_CB60_at"],
	["militia_aa", "ASZ_EI_CB60_aa"],
	["militia_machinegunner", "ASZ_EI_CB60_mg"],
	["militia_marksman", "ASZ_EI_CB60_mrk"],
	["militia_sniper", "ASZ_Ghillie_SniperTOP_DES"],

	["military_squadleader", "ASZ_EI_CB60_sl"],
	["military_rifleman", "ASZ_EI_CB60_fuc"],
	["military_radioman", "ASZ_EI_CB60_fuc_02"],
	["military_medic", "ASZ_EI_CB60_med"],
	["military_engineer", "ASZ_EI_CB60_fuc_02"],
	["military_explosivesexpert", "ASZ_EI_CB60_gl"],
	["military_grenadier", "ASZ_EI_CB60_gl"],
	["military_lat", "ASZ_EI_CB60_at"],
	["military_at", "ASZ_EI_CB60_at"],
	["military_aa", "ASZ_EI_CB60_aa"],
	["military_machinegunner", "ASZ_EI_CB60_mg"],
	["military_marksman", "ASZ_EI_CB60_mrk"],
	["military_sniper", "ASZ_Ghillie_SniperTOP_DES"],

	["elite_squadleader", "ASZ_EI_CB60_sl"],
	["elite_rifleman", "ASZ_EI_CB60_fuc"],
	["elite_radioman", "ASZ_EI_CB60_fuc_02"],
	["elite_medic", "ASZ_EI_CB60_med"],
	["elite_engineer", "ASZ_EI_CB60_fuc_02"],
	["elite_explosivesexpert", "ASZ_EI_CB60_gl"],
	["elite_grenadier", "ASZ_EI_CB60_gl"],
	["elite_lat", "ASZ_EI_CB60_at"],
	["elite_at", "ASZ_EI_CB60_at"],
	["elite_aa", "ASZ_EI_CB60_aa"],
	["elite_machinegunner", "ASZ_EI_CB60_mg"],
	["elite_marksman", "ASZ_EI_CB60_mrk"],
	["elite_sniper", "ASZ_Ghillie_SniperTOP_DES"],

	["sf_squadleader", "ASZ_EI_CB60_sl"],
	["sf_rifleman", "ASZ_EI_CB60_fuc"],
	["sf_radioman", "ASZ_EI_CB60_fuc_02"],
	["sf_medic", "ASZ_EI_CB60_med"],
	["sf_engineer", "ASZ_EI_CB60_fuc_02"],
	["sf_explosivesexpert", "ASZ_EI_CB60_gl"],
	["sf_grenadier", "ASZ_EI_CB60_gl"],
	["sf_lat", "ASZ_EI_CB60_at"],
	["sf_at", "ASZ_EI_CB60_at"],
	["sf_aa", "ASZ_EI_CB60_aa"],
	["sf_machinegunner", "ASZ_EI_CB60_mg"],
	["sf_marksman", "ASZ_EI_CB60_mrk"],
	["sf_sniper", "ASZ_Ghillie_SniperTOP_DES"],

	["other_crew", "ASZ_EI_CB60_fuc_03"],
	["other_unarmed", "ASZ_EI_CB60_fuc_03"],
	["other_official", "ASZ_EI_CB60_off"],
	["other_traitor", "ASZ_EI_CB60_fuc_03"],
	["other_pilot", "ASZ_Pilot_CC"],
	["police_squadleader", "ASZ_EI_CB60_fuc"],
	["police_standard", "ASZ_EI_CB60_fuc_02"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["ASZ_LR90_EI"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["ASZ_LR110_CCpara_MG3", "ASZ_LR90_M2", "ASZ_LR90_MK19", "ASZ_LR90_TOW"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["ASZ_ACTL4x4_EI"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["ASZ_ACTL6x6_logistic"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["CUP_B_MTVR_Ammo_BAF_WOOD"]] call _fnc_saveToTemplate; 		
["vehiclesRepairTrucks", ["ASZ_ACTL6x6_repair", "ASZ_VCC2_rep", "ASZ_VM90_El_rep"]] call _fnc_saveToTemplate; 		
["vehiclesFuelTrucks", ["ASZ_ACTL6x6_fuel"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["ASZ_VM90_EI_amb", "ASZ_VCC2_EI_amb"]] call _fnc_saveToTemplate;			
["vehiclesAPCs", ["ASZ_PUMA4x4CC_MG3", "ASZ_PUMA4x4_M2", "ASZ_PUMA4x4_TOW", "ASZ_PUMA6x6_AT", "ASZ_PUMA6x6CC_MG3", "ASZ_PUMA6x6_hitrole", "ASZ_PUMA6x6_M2", "ASZ_VCC1_EI", "ASZ_VCC1_EI_camo", "ASZ_VCC1_EI_plus", "ASZ_VCC1_EI_camo_plus", "ASZ_VCC2_EI"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["ASZ_Ariete_camo", "ASZ_Ariete_plus", "ASZ_Ariete_camo_plus"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["CUP_B_HMMWV_Avenger_USMC"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", ["ASZ_PUMA4x4CC_MG3"]] call _fnc_saveToTemplate;			
["vehiclesIFVs", ["ASZ_Dardo", "ASZ_Freccia", "ASZ_Freccia_AT"]] call _fnc_saveToTemplate;				

["vehiclesSam", ["B_Radar_System_01_F","B_SAM_System_03_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["CUP_B_MK10_GB"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["B_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", ["ASZ_AAV_EI", "ASZ_AAV_EI_camo", "ASZ_SuperAV_EI", "ASZ_SuperAV_EI_battlefield", "ASZ_SuperAV_EI_Command"]] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["ASZ_EFA"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["ASZ_AV8B"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", ["ASZ_C130J_AM", "DDL_C27J_AM"]] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["ASZ_AB212_AM", "ASZ_AB212_MM", "ASZ_AB212_AM_ico"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["ASZ_CH47_EI", "ASZ_EH101_MM", "ASZ_NH90_EI_support","ASZ_NH90_MM", "ASZ_NH90_EI", "ASZ_NH90_EI_reos", "ASZ_NH90_MM_support"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["ASZ_A129", "ASZ_AH6_EI_ffar", "ASZ_AB212_EI_FFAR", "ASZ_AB212_EI_M21"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["CUP_B_M270_HE_BAF_WOOD",["CUP_12Rnd_MLRS_HE"]],
["CUP_B_M270_DPICM_BAF_WOOD",["CUP_12Rnd_MLRS_DPICM"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["CUP_B_USMC_DYN_MQ9"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate; 				

["vehiclesMilitiaLightArmed", ["ASZ_VTML_M2", "ASZ_VTML_M2_LR"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["ASZ_ACTL4x4_EI"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["ASZ_LR110_CCpara"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["ASZ_VCC2_EI"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["ASZ_Centauro_B1"]] call _fnc_saveToTemplate;


["vehiclesPolice", ["ASZ_LR110_CC"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_USMC"]] call _fnc_saveToTemplate; 					
["staticAT", ["CUP_B_TOW2_TriPod_USMC"]] call _fnc_saveToTemplate; 					
["staticAA", ["CUP_B_Stinger_AA_pod_Base_USMC"]] call _fnc_saveToTemplate; 					
["staticMortars", ["CUP_B_M252_USMC"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_B_M119_USMC"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_105mmHE_M119_M"] call _fnc_saveToTemplate;

["baggedMGs", [["CUP_B_M2_Gun_Bag", "CUP_B_M2_Tripod_Bag"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["CUP_B_TOW2_Tripod_Bag", "CUP_B_Tow_Gun_Bag"]]] call _fnc_saveToTemplate; 						
["baggedAA", []] call _fnc_saveToTemplate; 					
["baggedMortars", [["CUP_B_L16A2_Bipod_Bag", "CUP_B_L16A2_Gun_Bag"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets


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
_loadoutData setVariable ["ATLaunchers", ["CUP_launch_M136"]];  				
_loadoutData setVariable ["missileATLaunchers", []]; 		
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []]; 					

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]]; 					
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]]; 					
_loadoutData setVariable ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			
_loadoutData setVariable ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			

_loadoutData setVariable ["antiInfantryGrenades", ["CUP_HandGrenade_L109A2_HE", "CUP_HandGrenade_L109A1_HE"]]; 		
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
_loadoutData setVariable ["longRangeRadios", ["CUP_B_Motherlode_Radio_MTP", "CUP_B_Predator_Radio_MTP"]];
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
_sfLoadoutData setVariable ["uniforms", [
	"ASZ_Uniforme_EI_CBT"
]];	
_sfLoadoutData setVariable ["vests", ["ASZ_NC4_09_base", "ASZ_NC4_09", "ASZ_NC4_09_Medic", "ASZ_NC4_09_MarkS", "ASZ_NC4_09_TL", "ASZ_NC4_09_naja"]];
_sfLoadoutData setVariable ["Hvests", ["ASZ_NC4_09_MG"]];
_sfLoadoutData setVariable ["GLvests", ["ASZ_NC4_09_GL"]];
_sfLoadoutData setVariable ["backpacks", ["ASZ_BackPack_75lt_CB60", "ASZ_BackPack_75lt_Tan", "ASZ_BackPack_40lt_CB60", "ASZ_BackPack_30lt_CB60"]];		
_sfLoadoutData setVariable ["helmets", ["ASZ_Mich_ESS_CB60", "ASZ_Mich_ESS_CB60_alp", "ASZ_Mich_ESS_CB60_bers"]];		
_sfLoadoutData setVariable ["ATLaunchers", ["ASZ_PzF3_Loaded"]];  
_sfLoadoutData setVariable ["binoculars", ["CUP_LRTV"]];
_sfLoadoutData setVariable ["lightATLaunchers", ["ASZ_PzF3_Loaded"]];
_sfLoadoutData setVariable ["missileATLaunchers", ["ASZ_PzF3_Loaded"]]; 
_sfLoadoutData setVariable ["AALaunchers", [["ASZ_Launch_Stinger", "", "", "", ["ASZ_Stinger_Mag"], [], ""]]];

_sfLoadoutData setVariable ["rifles", [
["ASZ_AR7090", "asz_silencer_556_blk", "", "asz_aimpoint_pro_blk", ["30Rnd_556x45_Stanag_red", "20Rnd_556x45_Stanag_SD_ASZ", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_M4A1", "asz_silencer_m4a1", "", "asz_acog", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ", "20Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["APD_ARX200", "asz_aimpoint_compm4s", "", "asz_aimpoint_pro_blk", ["ASZ_20Rnd_762x51_Mag", "ASZ_20Rnd_762x51_Mag_AP", "ASZ_20Rnd_762x51_Mag_SD"], [], ""]
]];

_sfLoadoutData setVariable ["carbines", [
["ASZ_ARX160SF_CC", "", "", "asz_aimpoint_pro_des", ["30Rnd_556x45_Stanag_Tracer_Green", "30Rnd_556x45_Stanag_Tracer_Red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_ARX160", "", "", "asz_aimpoint_compm4s", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""]
]];

_sfLoadoutData setVariable ["grenadeLaunchers", [
["ASZ_ARX160_GLS", "", "asz_pointer_blk", "asz_acog", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HE_M203", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["ASZ_ARX160_GLS_CC", "", "asz_pointer_blk", "asz_acog", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HE_M203", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["ASZ_M32","","","",["6Rnd_HE_Grenade_shell_ASZ"],[],""],
["ASZ_Mk13","","","",["1Rnd_HE_Grenade_shell"],[],""]
]];

_sfLoadoutData setVariable ["SMGs", [
["asz_pointer_blk", "", "", "", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Green_Tracer", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""]
]];

_sfLoadoutData setVariable ["machineGuns", [
["ASZ_M249mk1_base", "", "", "", ["200Rnd_M249mag"], [], ""]
]];

_sfLoadoutData setVariable ["marksmanRifles", [
["ASZ_ARX160_C", "asz_silencer_556_blk", "asz_flashlight", "asz_aimpoint_pro_blk", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_ARX160SF_C", "", "", "", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], "asz_bipod_arx_des"]
]];

_sfLoadoutData setVariable ["sniperRifles", [
["ASZ_SakoTRG42", "", "", "asz_leupold_mk4_mrt_des", ["10Rnd_762x51_Mag_ASZ", "5Rnd_762x51_Mag_ASZ"], [], "asz_bipod_sakotrg42"]
]];

_sfLoadoutData setVariable ["sidearms", [
["ASZ_M84", "", "", "", ["15Rnd_9x19_M9_ASZ", "15Rnd_9x19_M9SD_ASZ"], [], ""],
["ASZ_M92", "asz_silencer_m9", "", "", ["15Rnd_9x19_M9_ASZ", "15Rnd_9x19_M9SD_ASZ"], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", [
	"ASZ_Uniforme_EI_CBT"
]];		
_militaryLoadoutData setVariable ["vests", ["ASZ_NC4_09_base", "ASZ_NC4_09", "ASZ_NC4_09_Medic", "ASZ_NC4_09_MarkS", "ASZ_NC4_09_TL", "ASZ_NC4_09_naja"]];			
_militaryLoadoutData setVariable ["Hvests", ["ASZ_NC4_09_MG"]];
_militaryLoadoutData setVariable ["GLvests", ["ASZ_NC4_09_GL"]];
_militaryLoadoutData setVariable ["backpacks", ["ASZ_BackPack_75lt_CB60", "ASZ_BackPack_75lt_Tan", "ASZ_BackPack_TSSI_M9_Med_Tan", "ASZ_BackPack_30lt_CB60"]];		
_militaryLoadoutData setVariable ["helmets", ["ASZ_Mich_ESS_CB60", "ASZ_Mich_ESS_CB60_alp", "ASZ_Mich_ESS_CB60_bers"]];		
_militaryLoadoutData setVariable ["ATLaunchers", ["ASZ_PzF3_Loaded"]];  
_militaryLoadoutData setVariable ["lightATLaunchers", ["ASZ_PzF3_Loaded"]];
_militaryLoadoutData setVariable ["AALaunchers", [["ASZ_Launch_Stinger", "", "", "", ["ASZ_Stinger_Mag"], [], ""]]];

_militaryLoadoutData setVariable ["rifles", [
["ASZ_ARX160_IV_L_CC", "", "", "", ["30Rnd_556x45_Stanag_red", "20Rnd_556x45_Stanag_SD_ASZ", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_M4A1", "", "", "", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ", "20Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["APD_ARX200", "", "", "", ["ASZ_20Rnd_762x51_Mag", "ASZ_20Rnd_762x51_Mag_AP", "ASZ_20Rnd_762x51_Mag_SD"], [], ""]
]];

_militaryLoadoutData setVariable ["carbines", [
["ASZ_ARX160SF_CC", "", "", "asz_eotech_blk", ["30Rnd_556x45_Stanag_Tracer_Green", "30Rnd_556x45_Stanag_Tracer_Red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_ARX160", "", "", "cup_optic_vortexrazor_uh1_black", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""]
]];

_militaryLoadoutData setVariable ["grenadeLaunchers", [
["ASZ_ARX160_GLS", "", "", "", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HE_M203", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["ASZ_ARX160_GLS_CC", "", "", "", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HE_M203", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["ASZ_M32","","","",["6Rnd_HE_Grenade_shell_ASZ"],[],""],
["ASZ_Mk13","","","",["1Rnd_HE_Grenade_shell"],[],""]
]];

_militaryLoadoutData setVariable ["SMGs", [
	["asz_pointer_blk", "", "", "", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Green_Tracer", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""]
]];

_militaryLoadoutData setVariable ["machineGuns", [
["ASZ_M249_base", "", "", "asz_eotech_blk", ["200Rnd_M249mag"], [], ""]
]];

_militaryLoadoutData setVariable ["marksmanRifles", [
["ASZ_ARX160_C", "", "", "asz_aimpoint_pro_blk", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_ARX160SF_C", "", "", "asz_aimpoint_pro_des", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""]
]];

_militaryLoadoutData setVariable ["sniperRifles", [
["ASZ_M40A3_Green", "", "", "asz_leupold_mk4_cqt", ["5Rnd_762x51_Mag_ASZ"], [], "asz_bipod_m40a3"],
["ASZ_M40A3_Des_ghillie", "", "", "asz_leupold_mk4_mrt_des", ["5Rnd_762x51_Mag_ASZ"], [], "asz_bipod_m40a3"]
]];

_militaryLoadoutData setVariable ["sidearms", [
["ASZ_M84", "", "", "", ["15Rnd_9x19_M9_ASZ", "15Rnd_9x19_M9SD_ASZ"], [], ""],
["ASZ_M92", "", "", "", ["15Rnd_9x19_M9_ASZ", "15Rnd_9x19_M9SD_ASZ"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", [
	"ASZ_Uniforme_EI_CBT"
]];	

_eliteLoadoutData setVariable ["vests", ["ASZ_NC4_09_base", "ASZ_NC4_09", "ASZ_NC4_09_Medic", "ASZ_NC4_09_MarkS", "ASZ_NC4_09_TL", "ASZ_NC4_09_naja"]];
_eliteLoadoutData setVariable ["Hvests", ["ASZ_NC4_09_MG"]];
_eliteLoadoutData setVariable ["GLvests", ["ASZ_NC4_09_GL"]];
_eliteLoadoutData setVariable ["backpacks", ["ASZ_BackPack_75lt_CB60", "ASZ_BackPack_30lt_CB60"]];		
_eliteLoadoutData setVariable ["helmets", ["ASZ_Mich_ESS_CB60", "ASZ_Mich_ESS_CB60_alp", "ASZ_Mich_ESS_CB60_bers"]];		
_eliteLoadoutData setVariable ["ATLaunchers", ["ASZ_PzF3_Loaded"]];  
_eliteLoadoutData setVariable ["lightATLaunchers", ["ASZ_PzF3_Loaded"]];

_eliteLoadoutData setVariable ["missileATLaunchers", ["ASZ_PzF3_Loaded"]]; 

_eliteLoadoutData setVariable ["AALaunchers", [["ASZ_Launch_Stinger", "", "", "", ["ASZ_Stinger_Mag"], [], ""]]];

_eliteLoadoutData setVariable ["rifles", [
["ASZ_ARX160_IV_L_CC", "", "", "", ["30Rnd_556x45_Stanag_red", "20Rnd_556x45_Stanag_SD_ASZ", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_M4A1", "", "", "", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ", "20Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["APD_ARX200", "", "", "", ["ASZ_20Rnd_762x51_Mag", "ASZ_20Rnd_762x51_Mag_AP", "ASZ_20Rnd_762x51_Mag_SD"], [], ""]
]];

_eliteLoadoutData setVariable ["carbines", [
["ASZ_ARX160SF_CC", "", "", "asz_eotech_blk", ["30Rnd_556x45_Stanag_Tracer_Green", "30Rnd_556x45_Stanag_Tracer_Red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_ARX160", "", "", "cup_optic_vortexrazor_uh1_black", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""]
]];

_eliteLoadoutData setVariable ["grenadeLaunchers", [
["ASZ_ARX160_GLS", "", "", "", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HE_M203", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["ASZ_ARX160_GLS_CC", "", "", "", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HE_M203", "1Rnd_HE_Grenade_shell", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["ASZ_M32","","","",["6Rnd_HE_Grenade_shell_ASZ"],[],""],
["ASZ_Mk13","","","",["1Rnd_HE_Grenade_shell"],[],""]
]];

_eliteLoadoutData setVariable ["SMGs", [
["asz_pointer_blk", "", "", "", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Green_Tracer", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""]
]];

_eliteLoadoutData setVariable ["machineGuns", [
["ASZ_M249mk1_base", "", "", "", ["200Rnd_M249mag"], [], ""]
]];

_eliteLoadoutData setVariable ["marksmanRifles", [
["ASZ_ARX160_C", "cup_muzzle_mfsup_flashhider_556x45_black", "", "asz_eotech_blk", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""],
["ASZ_ARX160SF_C", "cup_muzzle_mfsup_scar_l", "", "asz_acog", ["30Rnd_556x45_Stanag_green", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_SD_ASZ"], [], ""]
]];

_eliteLoadoutData setVariable ["sniperRifles", [
["ASZ_M40A3_Des_ghillie", "", "", "asz_leupold_mk4_mrt_des", ["5Rnd_762x51_Mag_ASZ"], [], "asz_bipod_m40a3"]
]];

_eliteLoadoutData setVariable ["sidearms", [
["ASZ_glock17", "", "", "", ["16Rnd_9x21_Mag"], [], ""]
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
["CUP_arifle_AKS74U", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["CUP_hgun_Makarov"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData setVariable ["uniforms", [
	"CUP_U_B_BAF_DPM_UBACSLONG_Gloves", 
	"CUP_U_B_BAF_DPM_UBACSLONGKNEE_Gloves", 
	"CUP_U_B_BAF_DPM_UBACSROLLED_Gloves", 
	"CUP_U_B_BAF_DPM_UBACSTSHIRT_Gloves", 
	"CUP_U_B_BAF_DPM_UBACSLONG", 
	"CUP_U_B_BAF_DPM_UBACSLONGKNEE", 
	"CUP_U_B_BAF_DPM_UBACSROLLED", 
	"CUP_U_B_BAF_DPM_UBACSROLLEDKNEE", 
	"CUP_U_B_BAF_DPM_UBACSTSHIRT",
	"CUP_U_B_BAF_DPM_UBACSTSHIRTKNEE"
]];		
_militiaLoadoutData setVariable ["vests", ["CUP_V_B_BAF_DPM_Osprey_Mk3_Pilot", "V_Chestrig_oli"]];			
_militiaLoadoutData setVariable ["backpacks", ["B_AssaultPack_sgg", "B_TacticalPack_blk"]];		
_militiaLoadoutData setVariable ["helmets", ["CUP_H_BAF_DPM_Mk6_EMPTY", "H_Bandanna_khk", "H_Booniehat_oli"]];		
_militiaLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_MAAWS", "", "", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""]
]];
_militiaLoadoutData setVariable ["ATLaunchers", ["CUP_launch_M136"]];  

_militiaLoadoutData setVariable ["rifles", [
["CUP_arifle_L85A2", "", "", "", ["CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_L85", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A2", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["CUP_arifle_Colt727", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_M16A2_GL", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""],
["CUP_arifle_Colt727_M203", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["CUP_smg_MP5A5", "", "", "", ["CUP_30Rnd_9x19_MP5", "30Rnd_9x21_Mag_SMG_02_Tracer_Red"], [], ""]
]];
_militiaLoadoutData setVariable ["shotguns", [
	["CUP_sgun_M1014", "", "", "", ["CUP_8Rnd_12Gauge_Pellets_No00_Buck", "CUP_8Rnd_12Gauge_Slug"], [], ""],
	["CUP_sgun_M1014_vfg", "", "", "", ["CUP_8Rnd_12Gauge_Pellets_No00_Buck", "CUP_8Rnd_12Gauge_Slug"], [], ""],
	["CUP_sgun_M1014_Entry", "", "", "", ["CUP_6Rnd_12Gauge_Pellets_No00_Buck", "CUP_6Rnd_12Gauge_Slug"], [], ""],
	["CUP_sgun_M1014_Entry_vfg", "", "", "", ["CUP_8Rnd_12Gauge_Pellets_No00_Buck", "CUP_6Rnd_12Gauge_Slug"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["CUP_lmg_L110A1", "", "", "", ["CUP_100Rnd_TE4_Green_Tracer_556x45_M249", "CUP_100Rnd_TE4_Red_Tracer_556x45_M249", "CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["CUP_arifle_FNFAL5061_wooden", "", "CUP_acc_Flashlight", "", ["CUP_10Rnd_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M", "CUP_10Rnd_TE1_Red_Tracer_762x51_FNFAL_M"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_LeeEnfield", "", "", "CUP_optic_no23mk2", [], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_Colt1911"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["CUP_U_B_BAF_MTP_UBACSROLLED"]];			
_crewLoadoutData setVariable ["vests", ["CUP_V_B_BAF_MTP_Osprey_Mk4_Crewman"]];				
_crewLoadoutData setVariable ["helmets", ["CUP_H_BAF_MTP_Mk6_CREW_PRR"]];			


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["CUP_U_B_BAF_MTP_UBACSLONG"]];
_pilotLoadoutData setVariable ["vests", ["CUP_V_B_BAF_DDPM_Osprey_Mk3_Pilot"]];
_pilotLoadoutData setVariable ["helmets", ["CUP_H_SPH4", "CUP_H_SPH4_visor"]];

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

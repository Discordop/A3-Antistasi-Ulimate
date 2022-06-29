//////////////////////////
//   Side Information   //
//////////////////////////

["name", "SpAF"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "Spanish Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "ffaa_bandera_espa"] call _fnc_saveToTemplate; 						
["flagTexture", "\A3\Data_F\Flags\flag_us_CO.paa"] call _fnc_saveToTemplate; 				
["flagMarkerType", "flag_Spain"] call _fnc_saveToTemplate; 			

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "ffaa_brilat_jefe_peloton"],
	["militia_rifleman", "ffaa_brilat_soldado"],
	["militia_radioman", "ffaa_brilat_soldado"],
	["militia_medic", "ffaa_brilat_medico"],
	["militia_engineer", "ffaa_brilat_ingeniero"],
	["militia_explosivesexpert", "ffaa_brilat_soldado"],
	["militia_grenadier", "ffaa_brilat_granadero"],
	["militia_lat", "ffaa_brilat_c90"],
	["militia_at", "ffaa_brilat_alcotan"],
	["militia_aa", "ffaa_brilat_proveedor_spike"],
	["militia_machinegunner", "ffaa_brilat_mg42"],
	["militia_marksman", "ffaa_brilat_tirador"],
	["militia_sniper", "ffaa_brilat_francotirador_accuracy"],

	["military_squadleader", "ffaa_brilat_jefe_peloton"],
	["military_rifleman", "ffaa_brilat_soldado"],
	["military_radioman", "ffaa_brilat_soldado"],
	["military_medic", "ffaa_brilat_medico"],
	["military_engineer", "ffaa_brilat_ingeniero"],
	["military_explosivesexpert", "ffaa_brilat_soldado"],
	["military_grenadier", "ffaa_brilat_granadero"],
	["military_lat", "ffaa_brilat_c90"],
	["military_at", "ffaa_brilat_alcotan"],
	["military_aa", "ffaa_brilat_proveedor_spike"],
	["military_machinegunner", "ffaa_brilat_mg4"],
	["military_marksman", "ffaa_brilat_tirador"],
	["military_sniper", "ffaa_brilat_francotirador_accuracy"],

	["elite_squadleader", "ffaa_brilat_jefe_peloton"],
	["elite_rifleman", "ffaa_brilat_soldado"],
	["elite_radioman", "ffaa_brilat_soldado"],
	["elite_medic", "ffaa_brilat_medico"],
	["elite_engineer", "ffaa_brilat_ingeniero"],
	["elite_explosivesexpert", "ffaa_brilat_soldado"],
	["elite_grenadier", "ffaa_brilat_granadero"],
	["elite_lat", "ffaa_brilat_c90"],
	["elite_at", "ffaa_brilat_alcotan"],
	["elite_aa", "ffaa_brilat_proveedor_spike"],
	["elite_machinegunner", "ffaa_brilat_mg4"],
	["elite_marksman", "ffaa_brilat_tirador"],
	["elite_sniper", "ffaa_brilat_francotirador_accuracy"],

	["sf_squadleader", "ffaa_ar_fgne_lider_bk"],
	["sf_rifleman", "ffaa_ar_fgne_soldado_bk"],
	["sf_radioman", "ffaa_ar_fgne_fusilero_mochila_bk"],
	["sf_medic", "ffaa_ar_fgne_medico_bk"],
	["sf_engineer", "ffaa_ar_fgne_sabot_bk"],
	["sf_explosivesexpert", "ffaa_ar_fgne_lg_bk"],
	["sf_grenadier", "ffaa_ar_fgne_lg_bk"],
	["sf_lat", "ffaa_ar_fgne_soldado_bk"],
	["sf_at", "ffaa_ar_fgne_at_bk"],
	["sf_aa", "ffaa_ar_fgne_at_bk"],
	["sf_machinegunner", "ffaa_ar_fgne_mg_bk"],
	["sf_marksman", "ffaa_ar_fgne_tirador_bk"],
	["sf_sniper", "ffaa_ar_fgne_tirador_bk"],

	["other_crew", "ffaa_brilat_carrista"],
	["other_unarmed", "ffaa_brilat_soldado"],
	["other_official", "ffaa_brilat_oficial"],
	["other_traitor", "ffaa_brilat_tirador_ameli"],
	["other_pilot", "ffaa_piloto_hmsd_famet"],
	["police_squadleader", "ffaa_brilat_soldado"],
	["police_standard", "ffaa_brilat_soldado"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["ffaa_et_neton_mk2"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["ffaa_et_vamtac_ume","ffaa_et_vamtac_trans", "ffaa_et_vamtac_trans_blind"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["ffaa_et_vamtac_st5_m2", "ffaa_et_vamtac_m2", "ffaa_et_lince_m2", "ffaa_et_vamtac_st5_lag40", "ffaa_vamtac_lag40", "ffaa_et_lince_lag40", "ffaa_et_vamtac_st5_spike", "ffaa_et_vamtac_tow", "ffaa_et_vamtac_crows", "ffaa_et_rg31_samson", "ffaa_et_vamtac_cardom"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["ffaa_et_pegaso_carga", "ffaa_et_m250_carga_blin", "ffaa_et_pegaso_carga_lona", "ffaa_et_m250_carga_lona_blin"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["ffaa_et_m250_recuperacion_blin"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["ffaa_et_pegaso_municion", "ffaa_et_m250_municion_blin"]] call _fnc_saveToTemplate; 		
["vehiclesRepairTrucks", ["ffaa_et_pegaso_repara_municion", "ffaa_et_m250_repara_municion_blin"]] call _fnc_saveToTemplate; 		
["vehiclesFuelTrucks", ["ffaa_et_pegaso_combustible", "ffaa_et_m250_combustible_blin"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["ffaa_et_toa_ambulancia"]] call _fnc_saveToTemplate;			
["vehiclesAPCs", ["ffaa_et_toa_m2", "ffaa_et_toa_zapador", "ffaa_et_toa_spike", "ffaa_et_pizarro_mauser", "ffaa_ar_piranhaIIIC_lance", "ffaa_ar_piranhaIIIC"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["ffaa_et_leopardo"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["ffaa_et_vamtac_mistral"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;			
["vehiclesIFVs", []] call _fnc_saveToTemplate;				

["vehiclesSam", ["B_Radar_System_01_F","ffaa_mk38"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["ffaa_ar_supercat", "ffaa_ar_zodiac_hurricane", "ffaa_ar_zodiac_hurricane_long"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["CUP_B_RHIB2Turret_USMC", "CUP_B_RHIB_USMC"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", []] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["ffaa_ar_harrier"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["ffaa_ea_ef18m"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", ["ffaa_ea_hercules"]] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["ffaa_famet_ec135", "ffaa_famet_cougar", "ffaa_nh90_tth_transport"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["ffaa_nh90_tth_armed", "ffaa_famet_cougar_armed", "ffaa_nh90_nfh_transport", "ffaa_famet_ch47_mg"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["ffaa_famet_tigre"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["ffaa_ar_m109",["32Rnd_155mm_Mo_Shells"]],
["ffaa_et_m109",["32Rnd_155mm_Mo_Shells"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["CUP_B_USMC_DYN_MQ9"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["ffaa_raven"]] call _fnc_saveToTemplate; 				

["vehiclesMilitiaLightArmed", ["ffaa_et_lince_mg3", "ffaa_et_vamtac_st5_mg3"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["ffaa_et_pegaso_carga"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["ffaa_et_anibal", "ffaa_et_neton_mk2"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["ffaa_et_toa_m2"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["ffaa_ar_piranhaIIIC_lance"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["CUP_LADA_LM_CIV", "CUP_C_S1203_Militia_CIV"]] call _fnc_saveToTemplate;

["staticMGs", ["I_HMG_02_high_F"]] call _fnc_saveToTemplate; 					
["staticAT", ["CUP_B_TOW2_TriPod_US"]] call _fnc_saveToTemplate; 					
["staticAA", ["ffaa_mistral_tripode"]] call _fnc_saveToTemplate; 					
["staticMortars", ["CUP_B_M252_USMC"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_B_M119_USMC"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_105mmHE_M119_M"] call _fnc_saveToTemplate;

["baggedMGs", [["I_HMG_02_high_weapon_F", "I_HMG_02_support_high_F"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["CUP_B_TOW2_Tripod_Bag", "CUP_B_Tow_Gun_Bag"]]] call _fnc_saveToTemplate; 					
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

["pvpVehicles", ["CUP_B_M1151_M2_USMC", "CUP_B_HMMWV_Transport_USA"]] call _fnc_saveToTemplate;


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
_loadoutData setVariable ["AALaunchers", [
	["CUP_launch_FIM92Stinger", "", "", "", ["CUP_Stinger_M"], [], ""]
]];
_loadoutData setVariable ["sidearms", []]; 					

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]]; 					
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]]; 					
_loadoutData setVariable ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			
_loadoutData setVariable ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			

_loadoutData setVariable ["antiInfantryGrenades", ["CUP_HandGrenade_M67", "MiniGrenade"]]; 		
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
_loadoutData setVariable ["longRangeRadios", ["B_RadioBag_01_mtp_F", "B_RadioBag_01_wdl_F"]];
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
_sfLoadoutData setVariable ["uniforms", ["CUP_U_CRYE_G3C_M81_US", "CUP_U_CRYE_G3C_M81_US_V2", "CUP_U_CRYE_G3C_M81_US_V3"]];			
_sfLoadoutData setVariable ["vests", ["CUP_V_CPC_communications_rngr", "CUP_V_CPC_tl_rngr", "CUP_V_CPC_weapons_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_medical_rngr"]];				
_sfLoadoutData setVariable ["Hvests", ["V_PlateCarrier2_rgr"]];
_sfLoadoutData setVariable ["backpacks", ["B_Kitbag_sgg", "B_Kitbag_rgr", "B_Carryall_mcamo", "B_Carryall_oli", "B_AssaultPack_rgr"]];			
_sfLoadoutData setVariable ["helmets", ["CUP_H_OpsCore_Green_SF", "CUP_H_OpsCore_Covered_MCAM_SF", "CUP_H_OpsCore_Spray_SF", "H_Booniehat_oli", "H_Bandanna_camo"]];				
_sfLoadoutData setVariable ["binoculars", ["CUP_LRTV"]];

_sfLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_Mk153Mod0_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEDP_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_NE_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0_blk", "", "", "", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0_blk", "", "", "", ["CUP_SMAW_HEDP_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_NE_M", "CUP_SMAW_Spotting"], [], ""]
]];
_sfLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_M47", "", "", "", ["CUP_Dragon_EP1_M"], [], ""],
	["CUP_launch_Javelin", "", "", "", ["CUP_Javelin_M"], [], ""]
]];


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
["CUP_hgun_Glock17", "muzzle_snds_L", "CUP_acc_MLPLS_Laser", "", [], [], ""],
["CUP_hgun_Glock17_blk", "muzzle_snds_L", "CUP_acc_MLPLS_Laser", "", [], [], ""],
["CUP_hgun_Mk23", "CUP_muzzle_snds_mk23", "CUP_acc_mk23_lam_f", "", [], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", ["CUP_U_B_USArmy_ACU_Kneepad_Gloves_OEFCP", "CUP_U_B_USArmy_ACU_Kneepad_OEFCP", "CUP_U_B_USArmy_ACU_Kneepad_Rolled_Gloves_OEFCP", "CUP_U_B_USArmy_ACU_Kneepad_Rolled_OEFCP", "CUP_U_B_USArmy_ACU_OEFCP", "CUP_U_B_USArmy_ACU_Rolled_Gloves_OEFCP", "CUP_U_B_USArmy_ACU_Rolled_OEFCP"]];		
_militaryLoadoutData setVariable ["vests", ["CUP_V_B_IOTV_OEFCP_Rifleman_USArmy", "CUP_V_B_IOTV_OEFCP_SAW_USArmy", "CUP_V_B_IOTV_OEFCP_SL_USArmy", "CUP_V_B_Armatus_MCam", "CUP_V_B_Armatus_BB_MCam", "CUP_V_JPC_communications_mc", "CUP_V_JPC_medicalbelt_mc", "CUP_V_JPC_lightbelt_mc"]];			
_militaryLoadoutData setVariable ["Hvests", ["CUP_V_B_IOTV_OEFCP_Rifleman_Deltoid_USArmy", "CUP_V_B_IOTV_OEFCP_Medic_USArmy"]];
_militaryLoadoutData setVariable ["GLvests", ["CUP_V_B_IOTV_OEFCP_Grenadier_USArmy", "V_PlateCarrierGL_mtp", "CUP_V_JPC_weaponsbelt_mc"]];
_militaryLoadoutData setVariable ["backpacks", ["B_AssaultPack_mcamo", "B_Carryall_mcamo", "B_Kitbag_rgr", "B_AssaultPack_rgr", "B_Kitbag_mcamo"]];		
_militaryLoadoutData setVariable ["helmets", ["CUP_H_USArmy_HelmetACH_OEFCP", "CUP_H_USArmy_HelmetACH_GCOVERED_OEFCP", "CUP_H_USArmy_HelmetACH_ESS_OEFCP", "CUP_H_USArmy_HelmetACH_ESS_Headset_OEFCP", "CUP_H_OpsCore_Covered_MTP_NoHS", "CUP_H_OpsCore_Covered_MCAM"]];		

_militaryLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_Mk153Mod0", "", "", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0", "", "", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEDP_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_NE_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0", "", "", "", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0", "", "", "", ["CUP_SMAW_HEDP_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_NE_M", "CUP_SMAW_Spotting"], [], ""]
]];
_militaryLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_M47", "", "", "", ["CUP_Dragon_EP1_M"], [], ""]
]]; 

_militaryLoadoutData setVariable ["rifles", [
["CUP_arifle_M16A4_Base", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Base", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Base", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Base", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Base", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Grip", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Grip", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Grip", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Grip", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M16A4_Grip", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["CUP_arifle_M4A1_black", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_black", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_black", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_black", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_black", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1_MOE_black", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A3_black", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A3_black", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A3_black", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A3_black", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A3_black", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_M16A4_GL", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M16A4_GL", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M16A4_GL", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M16A4_GL", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M16A4_GL", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_BUIS_GL", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_BUIS_GL", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_BUIS_GL", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_BUIS_GL", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_BUIS_GL", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_GL_carryhandle", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_GL_carryhandle", "", "CUP_acc_Flashlight", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_GL_carryhandle", "", "CUP_acc_Flashlight", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_GL_carryhandle", "", "CUP_acc_Flashlight", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_M4A1_GL_carryhandle", "", "CUP_acc_Flashlight", "CUP_optic_Eotech553_Black", ["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["CUP_smg_MP5A5", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""],
["CUP_smg_MP5A5_flashlight", "", "", "", ["CUP_30Rnd_9x19_MP5"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["CUP_lmg_m249_pip1", "", "", "CUP_optic_Eotech553_Black", ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch"], [], ""],
["CUP_lmg_M240_norail", "", "", "", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_m110_kac_black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA01B_Black", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], ""],
["CUP_srifle_m110_kac_black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "CUP_bipod_VLTOR_Modpod_black"],
["CUP_srifle_Mk18_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA01B_Black", ["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "CUP_bipod_Harris_1A2_L_BLK"],
["CUP_srifle_Mk18_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "CUP_bipod_Harris_1A2_L_BLK"],
["CUP_srifle_Mk18_blk", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"], [], "CUP_bipod_Harris_1A2_L_BLK"]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_M40A3", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["CUP_5Rnd_762x51_M24"], [], ""],
["CUP_srifle_M24_blk", "", "CUP_Mxx_camo_half", "CUP_optic_LeupoldMk4_25x50_LRT", ["CUP_5Rnd_762x51_M24"], [], "CUP_bipod_VLTOR_Modpod_black"]
]];
_militaryLoadoutData setVariable ["sidearms", [
["CUP_hgun_M9", "", "", "", [], [], ""],
["CUP_hgun_M9A1", "", "", "", [], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", ["CUP_U_B_USMC_MCCUU_gloves", "CUP_U_B_USMC_MCCUU_roll_2", "CUP_U_B_USMC_MCCUU_roll_2_gloves", "CUP_U_B_USMC_MCCUU_roll_2_pads", "CUP_U_B_USMC_MCCUU_roll_2_pads_gloves", "CUP_U_B_USMC_MCCUU_pads", "CUP_U_B_USMC_MCCUU_pads_gloves", "CUP_U_B_USMC_MCCUU_roll", "CUP_U_B_USMC_MCCUU_roll_gloves", "CUP_U_B_USMC_MCCUU_roll_pads", "CUP_U_B_USMC_MCCUU_roll_pads_gloves"]];		
_eliteLoadoutData setVariable ["vests", ["CUP_V_CPC_communications_rngr", "CUP_V_CPC_Fast_rngr", "CUP_V_CPC_light_rngr", "CUP_V_CPC_medical_rngr", "CUP_V_CPC_tl_rngr", "CUP_V_CPC_communicationsbelt_rngr", "CUP_V_CPC_Fastbelt_rngr", "CUP_V_CPC_lightbelt_rngr", "CUP_V_CPC_medicalbelt_rngr", "CUP_V_CPC_tlbelt_rngr"]];			
_eliteLoadoutData setVariable ["Hvests", ["CUP_V_B_IOTV_OCP_Rifleman_Deltoid_USArmy"]];
_eliteLoadoutData setVariable ["GLvests", ["CUP_V_CPC_weaponsbelt_rngr"]];
_eliteLoadoutData setVariable ["backpacks", ["B_Carryall_mcamo", "B_Kitbag_rgr"]];		
_eliteLoadoutData setVariable ["helmets", ["H_HelmetSpecB", "H_HelmetSpecB_paint1", "H_HelmetSpecB_snakeskin"]];		
_eliteLoadoutData setVariable ["binoculars", ["Laserdesignator"]];

_eliteLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_Mk153Mod0", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_Spotting"], [], ""],
	["CUP_launch_Mk153Mod0", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEDP_M", "CUP_SMAW_HEDP_M", "CUP_SMAW_NE_M", "CUP_SMAW_Spotting"], [], ""]
]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["CUP_launch_Javelin", "", "", "", ["CUP_Javelin_M"], [], ""]
]]; 

_eliteLoadoutData setVariable ["rifles", [
["CUP_arifle_Mk16_SV_black", "", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], "CUP_bipod_VLTOR_Modpod_od"],
["CUP_arifle_Mk16_STD_black", "", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_STD_black", "", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red"], [], ""],
["CUP_arifle_HK416_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_HK416_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_HK416_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_HK416_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["CUP_arifle_Mk16_CQC_black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red"], [], ""],
["CUP_arifle_Mk16_CQC_black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red"], [], ""],
["CUP_arifle_HK416_CQB_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""],
["CUP_arifle_HK416_CQB_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_Mk16_STD_EGLM_black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_Mk16_STD_EGLM_black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_Aimpoint_5000", ["CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black", "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_HK416_CQB_AG36", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_HK416_CQB_AG36", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_HK416_AGL_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_ACOG2", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""],
["CUP_arifle_HK416_AGL_Black", "CUP_muzzle_mfsup_Flashhider_556x45_Black", "CUP_acc_ANPEQ_15_Flashlight_Black_L", "CUP_optic_AIMM_COMPM4_BLK", ["CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP", "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red"], ["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_Smoke_M203"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["CUP_smg_MP7", "", "CUP_acc_Flashlight", "CUP_optic_HoloBlack", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""],
["CUP_smg_MP7_desert", "", "CUP_acc_Flashlight", "CUP_optic_HoloBlack", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""],
["CUP_smg_MP7_woodland", "", "CUP_acc_Flashlight", "CUP_optic_HoloBlack", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["CUP_lmg_M240_B", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ElcanM145", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_RSASS_Black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA01B_Black", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], ""],
["CUP_srifle_RSASS_Black", "", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110"], [], "CUP_bipod_VLTOR_Modpod_black"],
["CUP_arifle_HK417_20", "CUP_muzzle_mfsup_Flashhider_762x51_Black", "CUP_acc_ANPEQ_15_Black", "CUP_optic_ACOG_TA01B_Black", ["CUP_20Rnd_762x51_HK417", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417"], [], ""],
["CUP_arifle_HK417_20", "CUP_muzzle_mfsup_Flashhider_762x51_Black", "CUP_acc_ANPEQ_15_Black", "CUP_optic_LeupoldMk4", ["CUP_20Rnd_762x51_HK417", "CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Red_Tracer_762x51_HK417"], [], "CUP_bipod_VLTOR_Modpod_black"]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_M107_Base", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", [], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["CUP_hgun_Glock17_blk", "", "CUP_acc_Glock17_Flashlight", "", [], [], ""],
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
["CUP_arifle_AKS74U", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["CUP_hgun_Makarov"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData setVariable ["uniforms", [
	"CUP_U_B_USMC_MCCUU_gloves", 
	"CUP_U_B_USMC_MCCUU_roll_2", 
	"CUP_U_B_USMC_MCCUU_roll_2_gloves", 
	"CUP_U_B_USMC_MCCUU_roll_2_pads", 
	"CUP_U_B_USMC_MCCUU_roll_2_pads_gloves", 
	"CUP_U_B_USMC_MCCUU_pads", 
	"CUP_U_B_USMC_MCCUU_pads_gloves", 
	"CUP_U_B_USMC_MCCUU_roll"
]];		
_militiaLoadoutData setVariable ["vests", ["CUP_V_B_PASGT_OD", "CUP_V_B_PASGT_no_bags_OD"]];			
_militiaLoadoutData setVariable ["backpacks", ["B_AssaultPack_rgr", "B_TacticalPack_oli"]];		
_militiaLoadoutData setVariable ["helmets", ["CUP_H_LWHv2_MARPAT", "CUP_H_LWHv2_MARPAT_NVG_gog_cov2", "CUP_H_PASGTv2_NVG_OD", "H_Bandanna_cbr", "CUP_H_USMC_BOONIE_WDL"]];		
_militiaLoadoutData setVariable ["lightATLaunchers", [
	["CUP_launch_MAAWS", "", "", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""]
]];
_militiaLoadoutData setVariable ["shotguns", [
	["CUP_sgun_M1014", "", "", "", ["CUP_8Rnd_12Gauge_Pellets_No00_Buck", "CUP_8Rnd_12Gauge_Slug"], [], ""],
	["CUP_sgun_M1014_vfg", "", "", "", ["CUP_8Rnd_12Gauge_Pellets_No00_Buck", "CUP_8Rnd_12Gauge_Slug"], [], ""],
	["CUP_sgun_M1014_Entry", "", "", "", ["CUP_6Rnd_12Gauge_Pellets_No00_Buck", "CUP_6Rnd_12Gauge_Slug"], [], ""],
	["CUP_sgun_M1014_Entry_vfg", "", "", "", ["CUP_8Rnd_12Gauge_Pellets_No00_Buck", "CUP_6Rnd_12Gauge_Slug"], [], ""]
]];

_militiaLoadoutData setVariable ["rifles", [
["CUP_arifle_M16A2", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["CUP_arifle_Colt727", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""],
["CUP_arifle_M4A1", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_M16A2_GL", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""],
["CUP_arifle_Colt727_M203", "", "", "", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203", "CUP_1Rnd_StarCluster_White_M203"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["CUP_smg_M3A1_blk", "", "", "", ["CUP_30Rnd_45ACP_M3A1_BLK_M", "CUP_30Rnd_45ACP_Red_Tracer_M3A1_BLK_M"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["CUP_lmg_minimi", "", "", "", ["CUP_100Rnd_TE4_Green_Tracer_556x45_M249", "CUP_100Rnd_TE4_Red_Tracer_556x45_M249"], [], ""],
["CUP_lmg_M60", "", "", "", ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_M14", "", "CUP_acc_Flashlight", "optic_MRCO", ["10Rnd_Mk14_762x51_Mag"], [], ""],
["CUP_srifle_M14", "", "CUP_acc_Flashlight", "", ["10Rnd_Mk14_762x51_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_M40A3", "", "", "CUP_optic_LeupoldMk4_25x50_LRT", ["CUP_5Rnd_762x51_M24"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_Colt1911"]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["CUP_U_B_USArmy_ACU_OEFCP"]];			
_crewLoadoutData setVariable ["vests", ["CUP_V_B_IOTV_OEFCP_Rifleman_USArmy"]];				
_crewLoadoutData setVariable ["helmets", ["CUP_H_CVC"]];			


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["CUP_U_B_USArmy_PilotOverall"]];
_pilotLoadoutData setVariable ["vests", ["CUP_V_B_USArmy_PilotVest", "CUP_V_B_PilotVest"]];
_pilotLoadoutData setVariable ["helmets", ["CUP_H_SPH4_green", "CUP_H_SPH4_green_visor"]];

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

	[["shotguns", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
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

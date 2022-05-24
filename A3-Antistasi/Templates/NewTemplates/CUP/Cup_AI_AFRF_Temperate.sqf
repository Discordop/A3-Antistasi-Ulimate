//////////////////////////
//   Side Information   //
//////////////////////////

["name", "AFRF"] call _fnc_saveToTemplate; 						
["spawnMarkerName", "AFRF Support Corridor"] call _fnc_saveToTemplate; 			

["flag", "Flag_Red_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3\Data_F\Flags\Flag_red_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Russia"] call _fnc_saveToTemplate;
//
//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "CUP_O_RU_Soldier_SL_M_EMR"],
	["militia_rifleman", "CUP_O_RU_Soldier_M_EMR"],
	["militia_radioman", "CUP_O_RU_Soldier_M_EMR"],
	["militia_medic", "CUP_O_RU_Medic_M_EMR"],
	["militia_engineer", "CUP_O_RU_Engineer_M_EMR"],
	["militia_explosivesexpert", "CUP_O_RU_Explosive_Specialist_M_EMR"],
	["militia_grenadier", "CUP_O_RU_Soldier_GL_M_EMR"],
	["militia_lat", "CUP_O_RU_Soldier_LAT_M_EMR"],
	["militia_at", "CUP_O_RU_Soldier_AT_M_EMR"],
	["militia_aa", "CUP_O_RU_Soldier_AA_M_EMR"],
	["militia_machinegunner", "CUP_O_RU_Soldier_MG_M_EMR"],
	["militia_marksman", "CUP_O_RU_Soldier_Marksman_M_EMR"],
	["militia_sniper", "CUP_O_RU_Sniper_M_EMR"],

	["military_squadleader", "CUP_O_RU_Soldier_SL_M_EMR"],
	["military_rifleman", "CUP_O_RU_Soldier_M_EMR"],
	["military_radioman", "CUP_O_RU_Soldier_M_EMR"],
	["military_medic", "CUP_O_RU_Medic_M_EMR"],
	["military_engineer", "CUP_O_RU_Engineer_M_EMR"],
	["military_explosivesexpert", "CUP_O_RU_Explosive_Specialist_M_EMR"],
	["military_grenadier", "CUP_O_RU_Soldier_GL_M_EMR"],
	["military_lat", "CUP_O_RU_Soldier_LAT_M_EMR"],
	["military_at", "CUP_O_RU_Soldier_AT_M_EMR"],
	["military_aa", "CUP_O_RU_Soldier_AA_M_EMR"],
	["military_machinegunner", "CUP_O_RU_Soldier_MG_M_EMR"],
	["military_marksman", "CUP_O_RU_Soldier_Marksman_M_EMR"],
	["military_sniper", "CUP_O_RU_Sniper_M_EMR"],

	["elite_squadleader", "CUP_O_RU_Soldier_SL_M_EMR"],
	["elite_rifleman", "CUP_O_RU_Soldier_M_EMR"],
	["elite_radioman", "CUP_O_RU_Soldier_M_EMR"],
	["elite_medic", "CUP_O_RU_Medic_M_EMR"],
	["elite_engineer", "CUP_O_RU_Engineer_M_EMR"],
	["elite_explosivesexpert", "CUP_O_RU_Explosive_Specialist_M_EMR"],
	["elite_grenadier", "CUP_O_RU_Soldier_GL_M_EMR"],
	["elite_lat", "CUP_O_RU_Soldier_LAT_M_EMR"],
	["elite_at", "CUP_O_RU_Soldier_AT_M_EMR"],
	["elite_aa", "CUP_O_RU_Soldier_AA_M_EMR"],
	["elite_machinegunner", "CUP_O_RU_Soldier_MG_M_EMR"],
	["elite_marksman", "CUP_O_RU_Soldier_Marksman_M_EMR"],
	["elite_sniper", "CUP_O_RU_Sniper_M_EMR"],

	["sf_squadleader", "CUP_O_RUS_Soldier_TL_Autumn"],
	["sf_rifleman", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_radioman", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_medic", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_engineer", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_explosivesexpert", "CUP_O_RUS_Saboteur_Autumn"],
	["sf_grenadier", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_lat", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_at", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_aa", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_machinegunner", "CUP_O_RUS_SpecOps_Scout_Autumn"],
	["sf_marksman", "CUP_O_RUS_Soldier_Marksman_Autumn"],
	["sf_sniper", "CUP_O_RUS_SpecOps_Scout_Autumn"],

	["other_crew", "CUP_O_RU_Crew_M_EMR"],
	["other_unarmed", "CUP_O_RU_Soldier_Light_M_EMR"],
	["other_official", "CUP_O_RU_Officer_M_EMR"],
	["other_traitor", "O_G_officer_F"],
	["other_pilot", "CUP_O_RU_Pilot_M_EMR"],
	["police_squadleader", "CUP_O_RU_Soldier_M_EMR"],
	["police_standard", "CUP_O_RU_Soldier_M_EMR"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["O_Quadbike_01_F"]] call _fnc_saveToTemplate; 			
["vehiclesLightUnarmed", ["CUP_O_GAZ_Vodnik_Unarmed_RU"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed", ["CUP_O_BRDM2_RUS", "CUP_O_BRDM2_ATGM_RUS", "CUP_O_BRDM2_HQ_RUS", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_GAZ_Vodnik_AGS_RU", "CUP_O_GAZ_Vodnik_BPPU_RU", "CUP_O_GAZ_Vodnik_KPVT_RU"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["CUP_O_Kamaz_RU", "CUP_O_Kamaz_Open_RU", "CUP_O_Ural_Open_RU", "CUP_O_Ural_RU"]] call _fnc_saveToTemplate; 			
["vehiclesCargoTrucks", ["CUP_O_Kamaz_Open_RU", "CUP_O_Ural_Open_RU"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["CUP_O_Ural_Reammo_RU"]] call _fnc_saveToTemplate; 		
["vehiclesRepairTrucks", ["CUP_O_Kamaz_Repair_RU", "CUP_O_Ural_Repair_RU"]] call _fnc_saveToTemplate; 		
["vehiclesFuelTrucks", ["CUP_O_Kamaz_Refuel_RU", "CUP_O_Ural_Refuel_RU"]] call _fnc_saveToTemplate;		
["vehiclesMedical", ["CUP_O_GAZ_Vodnik_MedEvac_RU","CUP_O_BMP2_AMB_RU","CUP_O_UAZ_AMB_RU"]] call _fnc_saveToTemplate;			
["vehiclesAPCs", ["CUP_O_BMP2_RU", "CUP_O_BMP3_RU", "CUP_O_BTR60_Green_RU", "CUP_O_BTR80A_GREEN_RU", "CUP_O_BTR80_GREEN_RU", "CUP_O_BTR90_RU", "CUP_O_MTLB_pk_Green_RU"]] call _fnc_saveToTemplate; 				
["vehiclesTanks", ["CUP_O_T90_RU"]] call _fnc_saveToTemplate; 			
["vehiclesAA", ["CUP_O_2S6M_RU"]] call _fnc_saveToTemplate; 				
["vehiclesLightAPCs", ["CUP_O_BMP3_RU"]] call _fnc_saveToTemplate;			
["vehiclesIFVs", []] call _fnc_saveToTemplate;				

["vehiclesSam", ["",""]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM


["vehiclesTransportBoats", ["CUP_O_PBX_RU"]] call _fnc_saveToTemplate; 	
["vehiclesGunBoats", ["CUP_O_ZUBR_RU"]] call _fnc_saveToTemplate; 			
["vehiclesAmphibious", ["CUP_O_BMP3_RU"]] call _fnc_saveToTemplate; 		

["vehiclesPlanesCAS", ["CUP_O_Su25_Dyn_RU"]] call _fnc_saveToTemplate; 		
["vehiclesPlanesAA", ["CUP_O_SU34_RU"]] call _fnc_saveToTemplate; 			
["vehiclesPlanesTransport", []] call _fnc_saveToTemplate; 	

["vehiclesHelisLight", ["CUP_O_Mi8AMT_RU", "CUP_O_Ka60_Grey_RU"]] call _fnc_saveToTemplate; 		
["vehiclesHelisTransport", ["CUP_O_Mi8AMT_RU", "CUP_O_Ka60_Grey_RU", "CUP_O_Mi8_RU", "CUP_O_Mi24_V_Dynamic_RU"]] call _fnc_saveToTemplate; 	
["vehiclesHelisAttack", ["CUP_O_Ka50_DL_RU", "CUP_O_Ka52_RU", "CUP_O_Mi24_P_Dynamic_RU", "CUP_O_Mi24_V_Dynamic_RU"]] call _fnc_saveToTemplate; 		

["vehiclesArtillery", [
["CUP_O_BM21_RU",["CUP_40Rnd_GRAD_HE"]]
]] call _fnc_saveToTemplate; 		

["uavsAttack", ["O_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate; 				
["uavsPortable", ["CUP_O_Pchela1T_RU"]] call _fnc_saveToTemplate; 				


["vehiclesMilitiaLightArmed", ["CUP_O_UAZ_MG_RU"]] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", ["CUP_O_Ural_Empty_RU", "CUP_O_Ural_Open_RU"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CUP_O_UAZ_Unarmed_RU", "CUP_O_UAZ_Open_RU"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["CUP_O_MTLB_pk_WDL_RU","CUP_O_BTR60_Green_RU"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["CUP_O_T72_RU"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_O_KORD_high_RU"]] call _fnc_saveToTemplate; 					
["staticAT", ["CUP_O_Kornet_RU"]] call _fnc_saveToTemplate; 					
["staticAA", ["CUP_O_Igla_AA_pod_RU"]] call _fnc_saveToTemplate; 					
["staticMortars", ["CUP_O_D30_ChDKZ"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_O_D30_RU"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "CUP_30Rnd_122mmHE_D30_M"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "CUP_30Rnd_122mmSMOKE_D30_M"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_122mmHE_D30_M"] call _fnc_saveToTemplate;

["baggedMGs", [["CUP_B_Kord_Gun_Bag", "CUP_B_Kord_TripodHigh_Bag"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["CUP_B_Kornet_Gun_Bag", "CUP_B_Kornet_Tripod_Bag"]]] call _fnc_saveToTemplate; 					
["baggedAA", []] call _fnc_saveToTemplate; 					
["baggedMortars", []] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets


["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	//Team Leader
	["cup_opfor_teamLeader_temp"] call A3A_fnc_getLoadout,
	//Medic
	["cup_opfor_medic_temp"] call A3A_fnc_getLoadout,
	//Autorifleman
	["cup_opfor_machineGunner_temp"] call A3A_fnc_getLoadout,
	//Marksman
	["cup_opfor_marksman_temp"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["cup_opfor_AT_temp"] call A3A_fnc_getLoadout,
	//AT2
	["cup_opfor_AT2_temp"] call A3A_fnc_getLoadout
]] call _fnc_saveToTemplate;
["pvpVehicles", ["CUP_O_UAZ_MG_RU", "CUP_O_UAZ_Open_RU", "CUP_O_UAZ_Unarmed_RU"]] call _fnc_saveToTemplate;


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
_loadoutData setVariable ["lightATLaunchers", [
["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M", "CUP_PG7V_M", "CUP_OG7_M"], [], ""],
["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7V_M", "CUP_PG7VL_M", "CUP_PG7VR_M"], [], ""],
["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7VM_M", "CUP_PG7VR_M", "CUP_PG7VR_M"], [], ""],
["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7VM_M", "CUP_PG7VM_M", "CUP_PG7VM_M"], [], ""],
["CUP_launch_RPG7V", "", "", "", ["CUP_PG7VM_M", "CUP_TBG7V_M", "CUP_OG7_M", "CUP_OG7_M"], [], ""]
]];		
_loadoutData setVariable ["ATLaunchers", ["CUP_launch_RShG2", "CUP_launch_RPG18"]]; 				
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
_loadoutData setVariable ["NVGs", ["NVGoggles_OPFOR"]];						
_loadoutData setVariable ["binoculars", ["Binocular"]];
_loadoutData setVariable ["Rangefinder", ["Rangefinder"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["offuniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["B_RadioBag_01_eaf_F"]];
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
_sfLoadoutData setVariable ["uniforms", ["CUP_U_O_RUS_Gorka_Green", "CUP_U_O_RUS_Gorka_Green_gloves2", "CUP_U_O_RUS_Gorka_Partizan", "CUP_U_O_RUS_Gorka_Partizan_gloves2", "CUP_U_O_RUS_Gorka_Partizan_gloves_kneepads"]];			
_sfLoadoutData setVariable ["vests", ["CUP_V_RUS_Smersh_2", "CUP_V_RUS_Smersh_1", "CUP_V_RUS_6B3_2", "CUP_V_RUS_6B3_3"]];				
_sfLoadoutData setVariable ["GLvests", ["CUP_V_RUS_6B3_1"]];
_sfLoadoutData setVariable ["Hvests", ["CUP_V_RUS_6B3_3"]];
_sfLoadoutData setVariable ["backpacks", ["CUP_B_RUS_Pack_Saboteur"]];			
_sfLoadoutData setVariable ["helmets", ["CUP_H_RUS_ZSH_1", "CUP_H_RUS_ZSH_1_Goggles", "H_Bandanna_khk", "CUP_H_RUS_GSSh01_Headphones_black", "CUP_H_RUS_Balaclava_Ratnik_Headphones_v2"]];				
_sfLoadoutData setVariable ["binoculars", ["Laserdesignator_03"]];
_sfLoadoutData setVariable ["missileATLaunchers", [
["CUP_launch_Metis", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
]];
_sfLoadoutData setVariable ["AALaunchers", [
["CUP_launch_Igla", "", "", "", ["CUP_Igla_M"], [], ""]
]];

//SF Weapons
_sfLoadoutData setVariable ["rifles", [
["CUP_arifle_AK15_lush", "CUP_muzzle_Bizon", "", "CUP_optic_1P87_RIS_desert", ["CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AK15_VG_wood", "CUP_muzzle_Bizon", "", "CUP_optic_1P87_RIS_desert", ["CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKM", "CUP_muzzle_Bizon", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKM", "CUP_muzzle_Bizon", "", "CUP_optic_ekp_8_02", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKM", "CUP_muzzle_Bizon", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""]
]];			
_sfLoadoutData setVariable ["carbines", [
["CUP_arifle_AKMS", "CUP_muzzle_Bizon", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKMS", "CUP_muzzle_Bizon", "", "CUP_optic_ekp_8_02", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""],
["CUP_arifle_AKMS", "CUP_muzzle_Bizon", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], [], ""]
]]; 					
_sfLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_AK15_GP34_lush", "CUP_muzzle_Bizon", "", "CUP_optic_1P87_RIS_desert", ["CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AK15_GP34_wood", "CUP_muzzle_Bizon", "", "CUP_optic_1P87_RIS_desert", ["CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_762x39_AK15_OD_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKMS_GL", "CUP_muzzle_Bizon", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKMS_GL", "CUP_muzzle_Bizon", "", "CUP_optic_ekp_8_02", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKMS_GL", "CUP_muzzle_Bizon", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKM_GL", "CUP_muzzle_Bizon", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKM_GL", "CUP_muzzle_Bizon", "", "CUP_optic_ekp_8_02", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AKM_GL", "CUP_muzzle_Bizon", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["CUP_arifle_AS_VAL", "", "", "CUP_optic_ekp_8_02", ["CUP_20Rnd_9x39_SP5_VSS_M"], [], ""],
["CUP_arifle_AS_VAL", "", "", "CUP_optic_1p63", ["CUP_20Rnd_9x39_SP5_VSS_M"], [], ""],
["CUP_arifle_AS_VAL", "", "", "CUP_optic_Kobra", ["CUP_20Rnd_9x39_SP5_VSS_M"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["CUP_lmg_Pecheneg_B50_vfg", "CUP_muzzle_snds_KZRZP_PK", "", "CUP_optic_GOSHAWK", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_Pecheneg_B50_vfg", "CUP_muzzle_snds_KZRZP_PK", "", "CUP_optic_PechenegScope", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""]
]]; 				
_sfLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_VSSVintorez", "", "", "CUP_optic_PSO_1_1", ["CUP_10Rnd_9x39_SP5_VSS_M"], [], ""],
["CUP_srifle_SVD", "CUP_muzzle_snds_KZRZP_SVD", "CUP_SVD_camo_g", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]]; 			
_sfLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_ksvk", "", "", "CUP_optic_GOSHAWK", ["CUP_5Rnd_127x108_KSVK_M"], [], ""]
]]; 				
_sfLoadoutData setVariable ["sidearms", [
["CUP_hgun_PB6P9", "CUP_muzzle_PB6P9", "", "", ["CUP_8Rnd_9x18_MakarovSD_M"], [], ""]
]]; 					

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData setVariable ["uniforms", ["CUP_U_O_RUS_Ratnik_Summer"]];		
_militaryLoadoutData setVariable ["offuniforms", ["CUP_U_O_RUS_EMR_1"]];
_militaryLoadoutData setVariable ["vests", ["CUP_Vest_RUS_6B45_Sh117", "CUP_Vest_RUS_6B45_Sh117_PKP"]];			
_militaryLoadoutData setVariable ["GLvests", ["CUP_Vest_RUS_6B45_Sh117_VOG"]];
_militaryLoadoutData setVariable ["Hvests", ["CUP_V_RUS_6B45_4"]];
_militaryLoadoutData setVariable ["backpacks", ["CUP_O_RUS_Patrol_bag_Summer", "CUP_O_RUS_Patrol_bag_Summer_Shovel"]];		
_militaryLoadoutData setVariable ["helmets", ["CUP_H_RUS_6B47_v2_Summer", "CUP_H_RUS_6B47_v2_GogglesClosed_Summer", "CUP_H_RUS_6B47_v2_GogglesDown_Summer", "CUP_H_RUS_6B47_v2_GogglesUp_Summer"]];		
_militaryLoadoutData setVariable ["binoculars", ["Laserdesignator_03"]];
_militaryLoadoutData setVariable ["missileATLaunchers", [
["CUP_launch_Metis", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
]];
_militaryLoadoutData setVariable ["AALaunchers", [
["CUP_launch_Igla", "", "", "", ["CUP_Igla_M"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["CUP_arifle_AK74M", "", "acc_flashlight", "", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK74M", "", "acc_flashlight", "CUP_optic_ekp_8_02", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK74M", "", "acc_flashlight", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK74M", "", "acc_flashlight", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""]
]];			
_militaryLoadoutData setVariable ["carbines", [
["CUP_arifle_AKS74U", "", "acc_flashlight", "", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AKS74U", "", "acc_flashlight", "CUP_optic_ekp_8_02", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AKS74U", "", "acc_flashlight", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AKS74U", "", "acc_flashlight", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""]
]]; 					
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_AK74M_GL", "", "acc_flashlight", "", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AK74M_GL", "", "acc_flashlight", "CUP_optic_ekp_8_02", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AK74M_GL", "", "acc_flashlight", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""],
["CUP_arifle_AK74M_GL", "", "acc_flashlight", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M"], ""]
]]; 			
_militaryLoadoutData setVariable ["SMGs", [
["CUP_smg_bizon", "", "", "", ["CUP_64Rnd_9x19_Bizon_M", "CUP_64Rnd_Green_Tracer_9x19_Bizon_M"], [], ""],
["CUP_smg_vityaz", "", "", "", ["CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19AP_Vityaz"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["CUP_lmg_Pecheneg", "", "", "CUP_optic_PechenegScope", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_Pecheneg", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_PKMN", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_arifle_RPK74M", "", "acc_flashlight", "", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""],
["CUP_arifle_RPK74M", "", "acc_flashlight", "CUP_optic_ekp_8_02", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""],
["CUP_arifle_RPK74M", "", "acc_flashlight", "CUP_optic_Kobra", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""],
["CUP_arifle_RPK74M", "", "acc_flashlight", "CUP_optic_PSO_1_AK", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]]; 				
_militaryLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]]; 			
_militaryLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_ksvk", "", "", "CUP_optic_PSO_3", ["CUP_5Rnd_127x108_KSVK_M"], [], ""]
]]; 				
_militaryLoadoutData setVariable ["sidearms", ["hgun_Rook40_F"]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData setVariable ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];
_policeLoadoutData setVariable ["vests", ["V_TacVest_blk_POLICE"]];
_policeLoadoutData setVariable ["helmets", ["H_Cap_police"]];
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
_militiaLoadoutData setVariable ["uniforms", ["CUP_U_O_RUS_EMR_1", "CUP_U_O_RUS_EMR_gloves_pads", "CUP_U_O_RUS_EMR_2", "CUP_U_O_RUS_EMR_rolled_up_gloves_pads"]];		
_militiaLoadoutData setVariable ["offuniforms", ["CUP_U_O_RUS_EMR_1"]];
_militiaLoadoutData setVariable ["vests", ["CUP_V_RUS_Smersh_1", "CUP_V_RUS_Smersh_2"]];
_militiaLoadoutData setVariable ["GLvests", ["CUP_V_RUS_6B3_Flora_1"]];
_militiaLoadoutData setVariable ["Hvests", ["CUP_V_RUS_6B3_Flora_4"]];
_militiaLoadoutData setVariable ["backpacks", ["CUP_B_RUS_Pack_Medic"]];		
_militiaLoadoutData setVariable ["helmets", ["CUP_H_RUS_SSH68_green", "CUP_H_RUS_SSH68_olive", "CUP_H_RUS_SSH68_cover_vsr98"]];
_militiaLoadoutData setVariable ["AALaunchers", [
["CUP_launch_9K32Strela", "", "", "", ["CUP_Strela_2_M"], [], ""]
]];

_militiaLoadoutData setVariable ["rifles", [
["CUP_arifle_AKS74_Early", "", "CUP_acc_Flashlight", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]];			
_militiaLoadoutData setVariable ["carbines", [
["CUP_SKS", "", "", "", [], [], ""],
["CUP_arifle_AKS74U", "", "", "", ["CUP_20Rnd_545x39_AKSU_M"], [], ""]
]]; 					
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_AKS74_GL_Early", "", "", "", ["CUP_20Rnd_545x39_AKSU_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""]
]]; 			
_militiaLoadoutData setVariable ["SMGs", [
["CUP_smg_vityaz", "", "", "", ["CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19_Vityaz", "CUP_30Rnd_9x19AP_Vityaz"], [], ""]
]];
_militiaLoadoutData setVariable ["shotguns", [
	["CUP_sgun_Saiga12K", "", "", "", ["CUP_5Rnd_B_Saiga12_Buck_00", "CUP_5Rnd_B_Saiga12_Slug"], [], ""],
	["CUP_sgun_Saiga12K_top_rail", "", "", "", ["CUP_5Rnd_B_Saiga12_Buck_00", "CUP_5Rnd_B_Saiga12_Slug"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["CUP_arifle_RPK74_45", "", "", "", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"], [], ""],
["CUP_arifle_RPK74", "", "", "", ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", "CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"], [], ""]
]]; 				
_militiaLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""],
["CUP_SKS_rail", "", "", "optic_MRCO", ["CUP_10Rnd_762x39_SKS_M"], [], ""]
]]; 			
_militiaLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_Mosin_Nagant", "", "", "CUP_optic_PEM", [], [], ""]
]]; 				
_militiaLoadoutData setVariable ["sidearms", ["CUP_hgun_PMM"]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData setVariable ["uniforms", ["CUP_U_O_RUS_Ratnik_Summer"]];		
_eliteLoadoutData setVariable ["offuniforms", ["CUP_U_O_RUS_EMR_1"]];
_eliteLoadoutData setVariable ["vests", ["CUP_V_RUS_6B45_4"]];			
_eliteLoadoutData setVariable ["GLvests", ["CUP_Vest_RUS_6B45_Sh117_VOG"]];
_eliteLoadoutData setVariable ["Hvests", ["CUP_V_RUS_6B45_4"]];
_eliteLoadoutData setVariable ["backpacks", ["CUP_O_RUS_Patrol_bag_Summer", "CUP_O_RUS_Patrol_bag_Summer_Shovel"]];					
_eliteLoadoutData setVariable ["helmets", ["CUP_H_RUS_Altyn", "CUP_H_RUS_Altyn_Goggles", "CUP_H_RUS_Altyn_Shield_Down", "CUP_H_RUS_Altyn_Shield_Up"]];		
_eliteLoadoutData setVariable ["binoculars", ["Laserdesignator_02"]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
["CUP_launch_Metis", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
]]; 
_eliteLoadoutData setVariable ["AALaunchers", [
["CUP_launch_Igla", "", "", "", ["CUP_Igla_M"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["CUP_arifle_AK12_black", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK12_bicolor", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK107", "", "acc_pointer_IR", "", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK107", "", "acc_pointer_IR", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK107_top_rail", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK107_top_rail", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK107_railed", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], "bipod_02_F_blk"],
["CUP_arifle_AK107_railed", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], "bipod_02_F_blk"]
]];			
_eliteLoadoutData setVariable ["carbines", [
["CUP_arifle_AK105", "", "acc_pointer_IR", "", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK105", "", "acc_pointer_IR", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK105_top_rail", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK105_top_rail", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], ""],
["CUP_arifle_AK105_railed", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], "bipod_02_F_blk"],
["CUP_arifle_AK105_railed", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], [], "bipod_02_F_blk"]
]]; 					
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["CUP_arifle_AK12_GP34_black", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AK12_GP34_bicolor", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_545x39_AK12_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AK105", "", "acc_pointer_IR", "", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AK105", "", "acc_pointer_IR", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AK105_top_rail", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AK105_top_rail", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], ""],
["CUP_arifle_AK105_railed", "", "acc_pointer_IR", "CUP_optic_1P87_RIS", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], "bipod_02_F_blk"],
["CUP_arifle_AK105_railed", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_545x39_AK74M_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SMOKE_GP25_M", "CUP_IlumFlareWhite_GP25_M"], "bipod_02_F_blk"]
]]; 			
_eliteLoadoutData setVariable ["SMGs", [
["CUP_arifle_SR3M_Vikhr", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""],
["CUP_arifle_SR3M_Vikhr_VFG", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""],
["CUP_arifle_SR3M_Vikhr_top_rail", "", "", "CUP_optic_1P87_RIS", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""],
["CUP_arifle_SR3M_Vikhr_VFG_top_rail", "", "", "CUP_optic_1P87_RIS", ["CUP_30Rnd_9x39_SP5_VIKHR_M"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["CUP_lmg_Pecheneg_B50_vfg", "", "acc_pointer_IR", "CUP_optic_GOSHAWK", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_Pecheneg_B50_vfg", "", "acc_pointer_IR", "CUP_optic_PechenegScope", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_Pecheneg_top_rail_B50_vfg", "", "acc_pointer_IR", "optic_Arco_AK_blk_F", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""],
["CUP_lmg_Pecheneg_top_rail_B50_vfg", "", "acc_pointer_IR", "optic_tws", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"], [], ""]
]]; 				
_eliteLoadoutData setVariable ["marksmanRifles", [
["CUP_srifle_SVD_top_rail", "", "", "optic_SOS", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]]; 			
_eliteLoadoutData setVariable ["sniperRifles", [
["CUP_srifle_ksvk", "", "", "CUP_optic_PSO_3", ["CUP_5Rnd_127x108_KSVK_M"], [], ""]
]]; 				
_eliteLoadoutData setVariable ["sidearms", ["hgun_Rook40_F"]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData setVariable ["uniforms", ["CUP_U_O_RUS_EMR_2"]];			
_crewLoadoutData setVariable ["vests", ["CUP_V_RUS_6B45_1"]];				
_crewLoadoutData setVariable ["helmets", ["CUP_H_SLA_TankerHelmet"]];			


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["CUP_U_O_RUS_EMR_1"]];			
_pilotLoadoutData setVariable ["vests", ["CUP_V_RUS_6B45_1"]];			
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

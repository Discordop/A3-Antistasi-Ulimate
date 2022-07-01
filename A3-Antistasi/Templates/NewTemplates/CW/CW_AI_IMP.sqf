//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Empire"] call _fnc_saveToTemplate;
["spawnMarkerName", "Imperial support corridor"] call _fnc_saveToTemplate;

["flag", "Flag_JMSLLTE_Emp_black_F"] call _fnc_saveToTemplate;
["flagTexture", "\LS_statics_props\flags\data\flag_republic.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "JMSLLTE_emp_army_serg"],
	["militia_rifleman", "JMSLLTE_emp_army_trooper"],
	["militia_radioman", "JMSLLTE_emp_army_trooperL"],
	["militia_medic", "JMSLLTE_emp_army_medic"],
	["militia_engineer", "JMSLLTE_emp_army_trooperL"],
	["militia_explosivesexpert", "JMSLLTE_emp_army_trooper"],
	["militia_grenadier", "JMSLLTE_emp_army_trooper"],
	["militia_lat", "JMSLLTE_emp_army_trooperAT"],
	["militia_at", "JMSLLTE_emp_army_trooperAT"],
	["militia_aa", "JMSLLTE_emp_army_trooperAT"],
	["militia_machinegunner", "JMSLLTE_emp_army_trooperH"],
	["militia_marksman", "JMSLLTE_emp_army_trooperV"],
	["militia_sniper", "JMSLLTE_emp_army_trooperV"],

	["military_squadleader", "JMSLLTE_emp_storm_of"],
	["military_rifleman", "JMSLLTE_emp_storm_trooper"],
	["military_radioman", "JMSLLTE_emp_storm_trooperL"],
	["military_medic", "JMSLLTE_emp_storm_trooperL"],
	["military_engineer", "JMSLLTE_emp_storm_trooperL"],
	["military_explosivesexpert", "JMSLLTE_emp_storm_trooper"],
	["military_grenadier", "JMSLLTE_emp_storm_trooper"],
	["military_lat", "JMSLLTE_emp_storm_trooperAT"],
	["military_at", "JMSLLTE_emp_storm_trooperAT"],
	["military_aa", "JMSLLTE_emp_storm_trooperAT"],
	["military_machinegunner", "JMSLLTE_emp_storm_trooperH"],
	["military_marksman", "JMSLLTE_emp_storm_trooperV"],
	["military_sniper", "JMSLLTE_emp_storm_trooperV"],

	["elite_squadleader", "JMSLLTE_emp_storm_of"],
	["elite_rifleman", "JMSLLTE_emp_storm_trooper"],
	["elite_radioman", "JMSLLTE_emp_storm_trooperL"],
	["elite_medic", "JMSLLTE_emp_storm_trooperL"],
	["elite_engineer", "JMSLLTE_emp_storm_trooperL"],
	["elite_explosivesexpert", "JMSLLTE_emp_storm_trooper"],
	["elite_grenadier", "JMSLLTE_emp_storm_trooper"],
	["elite_lat", "JMSLLTE_emp_storm_trooperAT"],
	["elite_at", "JMSLLTE_emp_storm_trooperAT"],
	["elite_aa", "JMSLLTE_emp_storm_trooperAT"],
	["elite_machinegunner", "JMSLLTE_emp_storm_trooperH"],
	["elite_marksman", "JMSLLTE_emp_storm_trooperV"],
	["elite_sniper", "JMSLLTE_emp_storm_trooperV"],

	["sf_squadleader", "JMSLLTE_emp_spec_DTC"],
	["sf_rifleman", "JMSLLTE_emp_spec_DT"],
	["sf_radioman", "JMSLLTE_emp_spec_DT"],
	["sf_medic", "JMSLLTE_emp_spec_DTS"],
	["sf_engineer", "JMSLLTE_emp_spec_DTS"],
	["sf_explosivesexpert", "JMSLLTE_emp_spec_DTS"],
	["sf_grenadier", "JMSLLTE_emp_spec_DT"],
	["sf_lat", "JMSLLTE_emp_spec_DT"],
	["sf_at", "JMSLLTE_emp_spec_DTH"],
	["sf_aa", "JMSLLTE_emp_spec_DTH"],
	["sf_machinegunner", "JMSLLTE_emp_spec_DTH"],
	["sf_marksman", "JMSLLTE_emp_spec_DT"],
	["sf_sniper", "JMSLLTE_emp_spec_DTS"],

	["other_crew", "JMSLLTE_emp_navy_Crew"],
	["other_unarmed", "JLTS_Clone_P2_DC15S"],
	["other_official", "JMSLLTE_emp_navy_fieldOf"],
	["other_traitor", "JMSLLTE_emp_storm_scoutL"],
	["other_pilot", "JMSLLTE_emp_navy_TIEpilot"],
	["police_squadleader", "JMSLLTE_emp_navy_ofLt"],
	["police_standard", "JMSLLTE_emp_navy_navyLt"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["JMSLLTE_B_veh_74z_imp_F"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["CW_Ifrit_Empire"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["CW_Ifrit_Imperial_HMG", "CW_Offroad_Imperial_AT", "JMSLLTE_B_veh_74z_imp_F"]] call _fnc_saveToTemplate; 		
["vehiclesTrucks", ["442_argon_transport", "442_argon_covered"]] call _fnc_saveToTemplate; 		
["vehiclesCargoTrucks", ["442_argon_transport", "442_argon_covered"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["442_argon_ammo"]] call _fnc_saveToTemplate; 	
["vehiclesRepairTrucks", ["442_argon_repair"]] call _fnc_saveToTemplate; 	
["vehiclesFuelTrucks", ["442_argon_fuel"]] call _fnc_saveToTemplate;	
["vehiclesMedical", ["442_argon_medical"]] call _fnc_saveToTemplate;	
["vehiclesAPCs", ["3as_saber_m1", "JMSLLTE_B_veh_ITT_imp_F", "JMSLLTE_B_veh_ITT_imp_F"]] call _fnc_saveToTemplate; 		
["vehiclesTanks", ["3AS_ATJT_Base", "3as_UTAT", "3as_saber_super", "3as_saber_m1G"]] call _fnc_saveToTemplate; 	
["vehiclesAA", ["3as_saber_m1Recon"]] call _fnc_saveToTemplate; 		
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;
["vehiclesIFVs", []] call _fnc_saveToTemplate;

["vehiclesSam", ["B_Radar_System_01_F","3as_XX9"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 
["vehiclesGunBoats", ["442_boat_armed"]] call _fnc_saveToTemplate; 
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["JMSLLTE_TIEBomber_veh_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["JMSLLTE_TIEinterceptor_veh_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", []] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["ls_heli_laatle"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["JMSLLTE_veh_IDT_inf_empire"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["442_laat_empire"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [
["442_rx200_arty",["32Rnd_155mm_Mo_shells"]]]] call _fnc_saveToTemplate;

["uavsAttack", ["B_UAV_02_dynamicLoadout_F", "B_T_UAV_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["3as_uas2"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["CW_Offroad_Imperial_HMG"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["442_argon_transport", "442_argon_covered"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CW_Offroad_Imperial"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["JMSLLTE_B_veh_ITT_imp_F"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["3as_saber_m1"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["CW_Offroad_Imperial"]] call _fnc_saveToTemplate;

["staticMGs", ["3AS_HeavyRepeater_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["3as_ParticleCannon"]] call _fnc_saveToTemplate;
["staticAA", ["JMSLLTE_B_vehgr_XX91turbolaser_imp_F"]] call _fnc_saveToTemplate;
["staticMortars", ["3AS_Republic_Mortar"]] call _fnc_saveToTemplate;
["staticHowitzers", ["not_supported"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["baggedMGs", [["I_G_HMG_02_weapon_F", "I_G_HMG_02_support_high_F"]]] call _fnc_saveToTemplate;
["baggedAT", [["B_HMG_01_support_F", "B_AT_01_weapon_F"]]] call _fnc_saveToTemplate;
["baggedAA", [["B_HMG_01_support_F", "B_AA_01_weapon_F"]]] call _fnc_saveToTemplate;
["baggedMortars", [["B_Mortar_01_support_F", "B_Mortar_01_weapon_F"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets

["howitzerMagazineHE", "not_supported"] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
		//Team Leader
		["vanilla_blufor_teamLeader"] call A3A_fnc_getLoadout,
		//Medic
		["vanilla_blufor_medic"] call A3A_fnc_getLoadout,
		//Autorifleman
		["vanilla_blufor_machineGunner"] call A3A_fnc_getLoadout,
		//Marksman
		["vanilla_blufor_marksman"] call A3A_fnc_getLoadout,
		//Anti-tank Scout
		["vanilla_blufor_AT"] call A3A_fnc_getLoadout,
		//AT2
		["vanilla_blufor_rifleman"] call A3A_fnc_getLoadout
	]
] call _fnc_saveToTemplate;

["pvpVehicles", ["B_LSV_01_armed_F", "B_LSV_01_unarmed_F"]] call _fnc_saveToTemplate;


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
["ls_weapon_rps6", "", "", "", ["ls_mag_rpg_1rnd"], [], ""]
]];
_loadoutData setVariable ["ATLaunchers", ["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]];
_loadoutData setVariable ["missileATLaunchers", [
["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]
]];
_loadoutData setVariable ["AALaunchers", [
["SWLW_PLX1_AA", "", "", "", ["SWLW_plx1_aa_mag"], [], ""]
]];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData setVariable ["lightExplosives", ["SWLW_clones_spec_breach_mag"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData setVariable ["heavyExplosives", ["SWLW_clones_spec_demo_mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData setVariable ["antiInfantryGrenades", ["3AS_ThermalDetonator", "442_impact_mag"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData setVariable ["antiTankGrenades", []]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData setVariable ["smokeGrenades", ["SmokeShell"]];
_loadoutData setVariable ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];




_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["SWLB_comlink"]];			//this line determines radio
_loadoutData setVariable ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData setVariable ["NVGs", ["JMSLLTE_NVChip"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData setVariable ["binoculars", ["SWLB_clone_binocular"]];		//this line determines the binoculars
_loadoutData setVariable ["Rangefinder", ["SWLB_clone_commander_binocular"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["JMSLLTE_back_radio_v1"]];
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
_sfLoadoutData setVariable ["uniforms", ["JMSLLTE_DeathTrooper_F_CombatUniform"]];					//don't fill this line - this is only to set the variable
_sfLoadoutData setVariable ["vests", ["JMSLLTE_DeathtrooperVest_armor", "JMSLLTE_DeathtrooperCom_armor", "JMSLLTE_DeathtrooperSpec_armor"]];				//this line determines vests for special forces -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["Hvests", ["JMSLLTE_DeathtrooperHeavy_armor"]];
_sfLoadoutData setVariable ["backpacks", ["JMSLLTE_back_stormpack_v1", "JMSLLTE_back_stormpack_surv"]];			//this line determines backpacks for special forces -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["helmets", ["JMSLLTE_Deathtrooper_helmet"]];				//this line determines helmets for special forces -- Example: ["H_HelmetB_camo", "H_HelmetB_desert"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["binoculars", ["JMSLLTE_W_TD23_white_F"]];

_sfLoadoutData setVariable ["rifles", [
["JMSLLTE_e11d", "", "", "jmsllte_e11_bl_scope", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["JMSLLTE_e11d", "", "jmsllte_acc_flashlight", "jmsllte_e11_bl_scope", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["JLTS_EPL2", "", "", "", ["JLTS_EPL2_mag"], ["JLTS_EPL2_mag"], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["JMSLLTE_e11d", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["JMSLLTE_DLT19BlasterRifle", "", "", "", ["JMSLLTE_DLT19_75Rnd_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["JMSLLTE_E17DRifle", "", "", "", ["JMSLLTE_E17d_5Rnd_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["JMSLLTE_E17DRifle", "", "", "", ["JMSLLTE_E17d_5Rnd_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["JMSLLTE_ec17pistol", "", "", "", ["JMSLLTE_EC17_15rnd_Mag"], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["JMSLLTE_StormTrooper_dirty_F_CombatUniform"]];
_militaryLoadoutData setVariable ["vests", ["JMSLLTE_StormtrooperHidden_armor", "JMSLLTE_StormtrooperAmmo_armor", "JMSLLTE_StormtrooperBand_armor", "JMSLLTE_StormtrooperCape_dirty_armor", "JMSLLTE_StormtrooperHolster_armor"]];
_militaryLoadoutData setVariable ["Hvests", ["JMSLLTE_StormtrooperHeavy_armor", "JMSLLTE_StormtrooperCape_armor"]];
_militaryLoadoutData setVariable ["GLvests", ["JMSLLTE_StormtrooperBandCape_armor"]];
_militaryLoadoutData setVariable ["backpacks", ["JMSLLTE_back_stormpack_v1", "JMSLLTE_back_stormpack_surv"]];
_militaryLoadoutData setVariable ["helmets", ["JMSLLTE_Stormtrooper_dirty_helmet"]];
_militaryLoadoutData setVariable ["missileATLaunchers", [
	["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["JMSLLTE_e11", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""],
["JMSLLTE_e11", "", "jmsllte_acc_flashlight", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""],
["JMSLLTE_e11", "", "", "jmsllte_e11_bl_scope", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["JMSLLTE_e11carb", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_DC15A_ugl", "", "", "", ["SWLW_DC15A_Mag"], ["SWLW_DC15A_UGL_Mag", "SWLW_DC15A_UGL_smoke_white_Mag", "SWLW_DC15A_UGL_flare_white_Mag"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["JMSLLTE_e11carb", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["JMSLLTE_DLT19BlasterRifle", "", "", "", ["JMSLLTE_DLT19_75Rnd_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["JMSLLTE_DLT19xRifle", "", "", "", ["JMSLLTE_DLT19x_10Rnd_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["JMSLLTE_E17DRifle", "", "", "", ["JMSLLTE_E17d_5Rnd_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["JMSLLTE_se14pistol", "", "", "", ["JMSLLTE_SE14_30rnd_Mag"], [], ""]
]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["JMSLLTE_EmpOfficer_black_F_CombatUniform"]];
_policeLoadoutData setVariable ["vests", ["JMSLLTE_Officerrank_navy_lt_armor", "JMSLLTE_Officerrank_lt_armor"]];
_policeLoadoutData setVariable ["helmets", ["JMSLLTE_EmpOfficerCap_black_helmet"]];
_policeLoadoutData setVariable ["smgs", [
["JMSLLTE_dh17rifle", "", "", "jmsllte_dh17_bl_scope", ["JMSLLTE_DH17_60Rnd_Mag"], [], ""],
["JMSLLTE_dh17", "", "", "jmsllte_dh17_bl_scope", ["JMSLLTE_DH17_30Rnd_Mag"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["JMSLLTE_se14pistol", "", "", "", ["JMSLLTE_SE14_30rnd_Mag"], [], ""]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["JMSLLTE_EmpTrooper_F_CombatUniform", "JMSLLTE_EmpTrooperCamo_F_CombatUniform", "JMSLLTE_EmpTrooperDiry_F_CombatUniform"]];		//this line determines uniforms for militia loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_militiaLoadoutData setVariable ["vests", ["JMSLLTE_TrooperBelt_armor", "JMSLLTE_TrooperCape_armor", "JMSLLTE_TrooperCapeBelt_armor", "JMSLLTE_TrooperPouchCape_armor", "JMSLLTE_TrooperPouch_armor", "JMSLLTE_TrooperPouchBelt_armor"]];			//this line determines vests for militia loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_militiaLoadoutData setVariable ["backpacks", ["JMSLLTE_back_rebsmall_imp_v1"]];		//this line determines backpacks for militia loadouts -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets
_militiaLoadoutData setVariable ["helmets", ["JMSLLTE_EmpTrooper_helmet"]];		//this line determines helmets for police loadouts -- Example: ["H_HelmetB_camo", "H_HelmetB_desert"] -- Array, can contain multiple assets

_militiaLoadoutData setVariable ["rifles", [
["JMSLLTE_e10", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["JMSLLTE_e10", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["JMSLLTE_e10", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["JMSLLTE_dh17", "", "", "jmsllte_dh17_bl_scope", ["JMSLLTE_DH17_30Rnd_Mag"], [], ""],
["JMSLLTE_dc15s", "", "", "", ["JMSLLTE_DC15S_40Rnd_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["JMSLLTE_DLT19BlasterRifle", "", "", "", ["JMSLLTE_DLT19_75Rnd_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [["JMSLLTE_dlt20a", "", "", "", ["JMSLLTE_DLT20a_10Rnd_Mag"], [], ""]]];
_militiaLoadoutData setVariable ["sniperRifles", [["JMSLLTE_DLT19xRifle", "", "", "", ["JMSLLTE_DLT19x_10Rnd_Mag"], [], ""]]];
_militiaLoadoutData setVariable ["sidearms", ["JMSLLTE_se14pistol", "", "", "", ["JMSLLTE_SE14_30rnd_Mag"], [], ""]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["JMSLLTE_StormTrooper_clean_F_CombatUniform"]];
_eliteLoadoutData setVariable ["vests", ["JMSLLTE_StormtrooperHidden_armor"]];
_eliteLoadoutData setVariable ["Hvests", ["JMSLLTE_StormtrooperHeavy_armor"]];
_eliteLoadoutData setVariable ["GLvests", ["JMSLLTE_StormtrooperBand_armor"]];
_eliteLoadoutData setVariable ["backpacks", ["JMSLLTE_back_stormpack_v1", "JMSLLTE_back_stormpack_surv"]];
_eliteLoadoutData setVariable ["helmets", ["JMSLLTE_Stormtrooper_helmet"]];
_eliteLoadoutData setVariable ["binoculars", ["JMSLLTE_W_TD23_white_F"]];
_eliteLoadoutData setVariable ["ATLaunchers", [["ls_weapon_rps6", "", "", "", ["ls_mag_rpg_1rnd"], [], ""]]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["JMSLLTE_e11", "", "jmsllte_acc_flashlight", "jmsllte_e11_bl_scope", ["JMSLLTE_E11_60Rnd_Mag"], [], ""],
["JMSLLTE_e11", "", "", "jmsllte_e11_bl_scope", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["JMSLLTE_e11carb", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_DC15A_ugl", "", "", "", ["SWLW_DC15A_Mag"], ["SWLW_DC15A_UGL_Mag", "SWLW_DC15A_UGL_smoke_white_Mag", "SWLW_DC15A_UGL_flare_white_Mag"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["JMSLLTE_e11carb", "", "", "", ["JMSLLTE_E11_60Rnd_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["JMSLLTE_DLT19BlasterRifle", "", "", "", ["JMSLLTE_DLT19_75Rnd_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["JMSLLTE_DLT19xRifle", "", "", "", ["JMSLLTE_DLT19x_10Rnd_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["JMSLLTE_E17DRifle", "", "", "", ["JMSLLTE_E17d_5Rnd_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["JMSLLTE_se14pistol", "", "", "", ["JMSLLTE_SE14_30rnd_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_crewLoadoutData setVariable ["uniforms", ["JMSLLTE_EmpNavyCrew_black_F_CombatUniform"]];			//this line determines uniforms for vehicle crew loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_crewLoadoutData setVariable ["vests", ["JMSLLTE_StormtrooperHidden_armor"]];				//this line determines vests for vehicle crew loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_crewLoadoutData setVariable ["helmets", ["JMSLLTE_EmpOfficerCap_black_helmet"]];			//this line determines backpacks for vehicle crew loadouts -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets

//The following lines are determining the loadout of the pilots
private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["JMSLLTE_EmpTiePilot_black_F_CombatUniform"]];			//this line determines uniforms for pilot loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_pilotLoadoutData setVariable ["vests", ["JMSLLTE_TIEpilot_vest_armor"]];			//this line determines vests for pilot loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_pilotLoadoutData setVariable ["helmets", ["JMSLLTE_EmpTiePilot_helmet"]];	

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

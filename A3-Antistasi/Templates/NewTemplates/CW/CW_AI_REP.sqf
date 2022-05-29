//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Republic"] call _fnc_saveToTemplate;
["spawnMarkerName", "Republic support corridor"] call _fnc_saveToTemplate;

["flag", "ls_flag_republic"] call _fnc_saveToTemplate;
["flagTexture", "\LS_statics_props\flags\data\flag_republic.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_flag_Rep"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "JLTS_Clone_P2_captain"],
	["militia_rifleman", "JLTS_Clone_P2_DC15S"],
	["militia_radioman", "JLTS_Clone_P2_DC15S"],
	["militia_medic", "JLTS_Clone_P2_corporal"],
	["militia_engineer", "JLTS_Clone_P2_BARC"],
	["militia_explosivesexpert", "JLTS_Clone_P2_EOD"],
	["militia_grenadier", "JLTS_Clone_P2_DC15AUGL"],
	["militia_lat", "JLTS_Clone_P2_AT"],
	["militia_at", "JLTS_Clone_P2_AT"],
	["militia_aa", "JLTS_Clone_P2_AT"],
	["militia_machinegunner", "JLTS_Clone_P2_sergeant"],
	["militia_marksman", "JLTS_Clone_P2_marksman"],
	["militia_sniper", "JLTS_Clone_P2_marksman"],

	["military_squadleader", "JLTS_Clone_P2_captain"],
	["military_rifleman", "JLTS_Clone_P2_DC15S"],
	["military_radioman", "JLTS_Clone_P2_DC15S"],
	["military_medic", "JLTS_Clone_P2_corporal"],
	["military_engineer", "JLTS_Clone_P2_BARC"],
	["military_explosivesexpert", "JLTS_Clone_P2_EOD"],
	["military_grenadier", "JLTS_Clone_P2_DC15AUGL"],
	["military_lat", "JLTS_Clone_P2_AT"],
	["military_at", "JLTS_Clone_P2_AT"],
	["military_aa", "JLTS_Clone_P2_AT"],
	["military_machinegunner", "JLTS_Clone_P2_sergeant"],
	["military_marksman", "JLTS_Clone_P2_marksman"],
	["military_sniper", "JLTS_Clone_P2_marksman"],

	["elite_squadleader", "JLTS_Clone_P2_captain"],
	["elite_rifleman", "JLTS_Clone_P2_DC15S"],
	["elite_radioman", "JLTS_Clone_P2_DC15S"],
	["elite_medic", "JLTS_Clone_P2_corporal"],
	["elite_engineer", "JLTS_Clone_P2_BARC"],
	["elite_explosivesexpert", "JLTS_Clone_P2_EOD"],
	["elite_grenadier", "JLTS_Clone_P2_DC15AUGL"],
	["elite_lat", "JLTS_Clone_P2_AT"],
	["elite_at", "JLTS_Clone_P2_AT"],
	["elite_aa", "JLTS_Clone_P2_AT"],
	["elite_machinegunner", "JLTS_Clone_P2_sergeant"],
	["elite_marksman", "JLTS_Clone_P2_marksman"],
	["elite_sniper", "JLTS_Clone_P2_marksman"],

	["sf_squadleader", "SWLB_clone_commando_sl_base"],
	["sf_rifleman", "SWLB_clone_commando_sl_base"],
	["sf_radioman", "SWLB_clone_commando_sl_base"],
	["sf_medic", "SWLB_clone_commando_sl_base"],
	["sf_engineer", "SWLB_clone_commando_sl_base"],
	["sf_explosivesexpert", "SWLB_clone_commando_sl_base"],
	["sf_grenadier", "SWLB_clone_commando_sl_base"],
	["sf_lat", "SWLB_clone_commando_sl_base"],
	["sf_at", "SWLB_clone_commando_sl_base"],
	["sf_aa", "SWLB_clone_commando_sl_base"],
	["sf_machinegunner", "SWLB_clone_commando_sl_base"],
	["sf_marksman", "SWLB_clone_commando_sniper_base"],
	["sf_sniper", "SWLB_clone_commando_sniper_base"],

	["other_crew", "JLTS_Clone_P2_DC15S"],
	["other_unarmed", "JLTS_Clone_P2_DC15S"],
	["other_official", "JLTS_Clone_P2_commander"],
	["other_traitor", "JLTS_Clone_P2_sergeantmajor"],
	["other_pilot", "3AS_Clone_P2_Pilot"],
	["police_squadleader", "JLTS_Clone_P2_commander_CG"],
	["police_standard", "JLTS_Clone_P2_DC15S_CG"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["3AS_Barc"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["CW_Ifrit"]] call _fnc_saveToTemplate; 		
["vehiclesLightArmed",["3AS_BarcSideCar", "CW_Ifrit_HMG", "CW_Offroad_AT", "3AS_Barc"]] call _fnc_saveToTemplate; 		
["vehiclesTrucks", ["442_argon_transport", "442_argon_covered"]] call _fnc_saveToTemplate; 		
["vehiclesCargoTrucks", ["442_argon_transport", "442_argon_covered"]] call _fnc_saveToTemplate; 		
["vehiclesAmmoTrucks", ["442_argon_ammo"]] call _fnc_saveToTemplate; 	
["vehiclesRepairTrucks", ["442_argon_repair"]] call _fnc_saveToTemplate; 	
["vehiclesFuelTrucks", ["442_argon_fuel"]] call _fnc_saveToTemplate;	
["vehiclesMedical", ["442_argon_medical"]] call _fnc_saveToTemplate;	
["vehiclesAPCs", ["3as_saber_m1", "3as_RTT", "3as_RTT"]] call _fnc_saveToTemplate; 		
["vehiclesTanks", ["3as_UTAT", "3as_saber_super", "3as_saber_m1G"]] call _fnc_saveToTemplate; 	
["vehiclesAA", ["3as_saber_m1Recon"]] call _fnc_saveToTemplate; 		
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;
["vehiclesIFVs", []] call _fnc_saveToTemplate;

["vehiclesSam", ["B_Radar_System_01_F","B_SAM_System_02_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate; 
["vehiclesGunBoats", ["442_boat_armed"]] call _fnc_saveToTemplate; 
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["3AS_BTLB_Bomber"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["3as_Z95_Republic"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", []] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["3AS_Patrol_LAAT_Republic"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["3as_LAAT_Mk2", "3as_LAAT_Mk2", "3as_LAAT_Mk2", "3AS_Nuclass"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["3as_LAAT_Mk1"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [
["442_rx200_arty",["32Rnd_155mm_Mo_shells"]]]] call _fnc_saveToTemplate;

["uavsAttack", ["B_UAV_02_dynamicLoadout_F", "B_T_UAV_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["3as_uas2"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["CW_Offroad_HMG"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["442_argon_transport", "442_argon_covered"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CW_Offroad_Rep"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["3as_RTT"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["3as_saber_m1"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["CW_Offroad_Rep"]] call _fnc_saveToTemplate;

["staticMGs", ["3AS_HeavyRepeater_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["B_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["B_static_AA_F"]] call _fnc_saveToTemplate;
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
_loadoutData setVariable ["NVGs", ["lsd_gar_standardSPC_nvg"]];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData setVariable ["binoculars", ["SWLB_clone_binocular"]];		//this line determines the binoculars
_loadoutData setVariable ["Rangefinder", ["SWLB_clone_commander_binocular"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", ["SWLB_CEE_Recon_RTO_Backpack"]];
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
_sfLoadoutData setVariable ["uniforms", ["SWLB_clone_commando_uniform_k1"]];					//don't fill this line - this is only to set the variable
_sfLoadoutData setVariable ["vests", ["SWLB_clone_commando_basic_armor_k1", "SWLB_clone_commando_tech_armor_k1", "SWLB_clone_commando_sniper_armor_k1"]];				//this line determines vests for special forces -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["Hvests", ["SWLB_clone_commando_eod_armor_k1"]];
_sfLoadoutData setVariable ["backpacks", ["SWLB_clone_commando_backpack_k2", "SWLB_clone_commando_backpack_k2_eod", "SWLB_clone_commando_backpack_k2_tech", "SWLB_clone_commando_backpack_k2_rto"]];			//this line determines backpacks for special forces -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["helmets", ["SWLB_clone_commando_helmet_k1"]];				//this line determines helmets for special forces -- Example: ["H_HelmetB_camo", "H_HelmetB_desert"] -- Array, can contain multiple assets
_sfLoadoutData setVariable ["binoculars", ["SWLB_clone_commander_binocular"]];

_sfLoadoutData setVariable ["rifles", [
["SWLW_DC17M", "", "", "", ["SWLW_DC17M_Blaster_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["SWLW_DC17M", "", "", "", ["SWLW_DC17M_Blaster_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_DC17M", "", "", "", ["SWLW_DC17M_Blaster_Mag"], ["SWLW_DC17M_AT_Mag"], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["SWLW_DC17M", "", "", "", ["SWLW_DC17M_Blaster_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["JLTS_Z6", "", "", "", ["JLTS_Z6_mag"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["SWLW_DC17M", "", "", "swlw_attachment_scope_dc17m_sniper", ["SWLW_DC17M_Sniper_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["SWLW_DC17M", "", "", "swlw_attachment_scope_dc17m_sniper", ["SWLW_DC17M_Sniper_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["SWLW_DC15SA", "", "", "", ["SWLW_DC15SA_Mag"], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["SWLB_clone_uniform"]];
_militaryLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor", "SWLB_clone_basic_armor", "SWLB_clone_basic_armor", "SWLB_clone_basic_armor", "SWLB_clone_medic_armor", "SWLB_clone_kama_armor", "SWLB_clone_assault_armor", "SWLB_CEE_Engineer_Vest"]];
_militaryLoadoutData setVariable ["Hvests", ["SWLB_clone_officer_armor", "SWLB_clone_commander_armor"]];
_militaryLoadoutData setVariable ["GLvests", ["SWLB_clone_grenadier_armor"]];
_militaryLoadoutData setVariable ["backpacks", ["SWLB_clone_backpack", "SWLB_clone_backpack_heavy", "SWLB_clone_backpack_medic", "SWLB_clone_backpack_RTO"]];
_militaryLoadoutData setVariable ["helmets", ["SWLB_clone_P2_helmet"]];
_militaryLoadoutData setVariable ["missileATLaunchers", [
	["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["3AS_DC15C_F", "", "", "3as_optic_reflex_dc15c", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "3as_optic_red_dc15a", ["3AS_45Rnd_EC50_Mag"], [], ""],
["3AS_DC15C_F", "", "", "3as_optic_acog_dc15c", ["3AS_40Rnd_EC40_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "", "3as_optic_reflex_dc15c", ["3AS_40Rnd_EC40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "3Rnd_UGL_FlareWhite_F"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""],
["SWLW_DP20", "", "", "", ["SWLW_DP20_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["3AS_DC15L_F", "", "", "3as_optic_dc15l", ["3AS_200Rnd_EC40_Mag"], [], ""],
["3AS_DC15L_F", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""],
["JLTS_Z6", "", "", "", ["JLTS_Z6_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["3AS_DC15C_F", "", "", "3as_optic_acog_dc15c", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "3as_optic_lescope_dc15a", ["3AS_45Rnd_EC50_Mag"], [], ""],
["JLTS_DC15X", "", "", "jlts_dc15x_scope", ["JLTS_DC15X_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["JLTS_DC15X", "", "", "jlts_dc15x_scope", ["JLTS_DC15X_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["SWLW_DC17", "", "", "", ["SWLW_DC17_Mag"], [], ""]
]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["SWLB_clone_CGTrooper_Uniform"]];
_policeLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];
_policeLoadoutData setVariable ["helmets", ["SWLB_clone_CGTrooper_helmet"]];
_policeLoadoutData setVariable ["smgs", [
["SWLW_DP20", "", "", "", ["SWLW_DP20_Mag"], [], ""],
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["SWLW_DC17", "", "", "", ["SWLW_DC17_Mag"], [], ""]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["SWLB_clone_uniform", "SWLB_clone_uniform"]];		//this line determines uniforms for militia loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_militiaLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor", "SWLB_clone_basic_armor", "SWLB_clone_basic_armor", "SWLB_clone_basic_armor", "SWLB_clone_medic_armor", "SWLB_clone_grenadier_armor", "SWLB_clone_kama_armor", "SWLB_clone_assault_armor", "SWLB_CEE_Engineer_Vest"]];			//this line determines vests for militia loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_militiaLoadoutData setVariable ["backpacks", ["SWLB_clone_backpack", "SWLB_clone_backpack_heavy", "SWLB_clone_backpack_RTO"]];		//this line determines backpacks for militia loadouts -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets
_militiaLoadoutData setVariable ["helmets", ["SWLB_clone_P1_helmet"]];		//this line determines helmets for police loadouts -- Example: ["H_HelmetB_camo", "H_HelmetB_desert"] -- Array, can contain multiple assets

_militiaLoadoutData setVariable ["rifles", [
["3AS_DC15C_F", "", "", "", ["3AS_40Rnd_EC40_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "", "", ["3AS_40Rnd_EC40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "3Rnd_UGL_FlareWhite_F"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""],
["SWLW_DP20", "", "", "", ["SWLW_DP20_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["3AS_DC15L_F", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [["3AS_DC15C_F", "", "", "", ["3AS_40Rnd_EC40_Mag"], [], ""]]];
_militiaLoadoutData setVariable ["sniperRifles", [["3AS_DC15A_F", "", "", "3as_optic_lescope_dc15a", ["3AS_45Rnd_EC50_Mag"], [], ""]]];
_militiaLoadoutData setVariable ["sidearms", ["SWLW_DC17", "", "", "", ["SWLW_DC17_Mag"], [], ""]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["SWLB_clone_uniform"]];
_eliteLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];
_eliteLoadoutData setVariable ["Hvests", ["SWLB_clone_arc_armor"]];
_eliteLoadoutData setVariable ["GLvests", ["SWLB_clone_grenadier_armor"]];
_eliteLoadoutData setVariable ["backpacks", ["SWLB_clone_backpack", "SWLB_clone_backpack_heavy", "SWLB_clone_backpack_medic", "SWLB_clone_backpack_RTO"]];
_eliteLoadoutData setVariable ["helmets", ["SWLB_clone_P2_helmet"]];
_eliteLoadoutData setVariable ["binoculars", ["SWLB_clone_binocular"]];
_eliteLoadoutData setVariable ["ATLaunchers", [["ls_weapon_rps6", "", "", "", ["ls_mag_rpg_1rnd"], [], ""]]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["SWLW_PLX1", "", "", "", ["SWLW_plx1_at_mag"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["3AS_DC15C_F", "", "", "3as_optic_reflex_dc15c", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "3as_optic_red_dc15a", ["3AS_45Rnd_EC50_Mag"], [], ""],
["3AS_DC15C_F", "", "", "3as_optic_acog_dc15c", ["3AS_40Rnd_EC40_Mag"], [], ""]]];
_eliteLoadoutData setVariable ["carbines", [
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""]]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["3AS_DC15C_GL", "", "", "3as_optic_reflex_dc15c", ["3AS_40Rnd_EC40_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell", "3Rnd_UGL_FlareWhite_F"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["SWLW_DC15s", "", "", "", ["SWLW_DC15s_Mag"], [], ""],
["SWLW_DP20", "", "", "", ["SWLW_DP20_Mag"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["3AS_DC15L_F", "", "", "3as_optic_dc15l", ["3AS_200Rnd_EC40_Mag"], [], ""],
["3AS_DC15L_F", "", "", "", ["3AS_200Rnd_EC40_Mag"], [], ""],
["JLTS_Z6", "", "", "", ["JLTS_Z6_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["3AS_DC15C_F", "", "", "3as_optic_acog_dc15c", ["3AS_40Rnd_EC40_Mag"], [], ""],
["3AS_DC15A_F", "", "", "3as_optic_lescope_dc15a", ["3AS_45Rnd_EC50_Mag"], [], ""],
["JLTS_DC15X", "", "", "jlts_dc15x_scope", ["JLTS_DC15X_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["JLTS_DC15X", "", "", "jlts_dc15x_scope", ["JLTS_DC15X_mag"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["SWLW_DC17", "", "", "", ["SWLW_DC17_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_crewLoadoutData setVariable ["uniforms", ["SWLB_clone_uniform"]];			//this line determines uniforms for vehicle crew loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_crewLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];				//this line determines vests for vehicle crew loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_crewLoadoutData setVariable ["helmets", ["SWLB_clone_P2_helmet", "SWLB_clone_P1_helmet"]];			//this line determines backpacks for vehicle crew loadouts -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets

//The following lines are determining the loadout of the pilots
private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["SWLB_clone_uniform"]];			//this line determines uniforms for pilot loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_pilotLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];			//this line determines vests for pilot loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_pilotLoadoutData setVariable ["helmets", ["SWLB_P1_Pilot_Helmet", "SWLB_clone_pilot_P2_helmet"]];	

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

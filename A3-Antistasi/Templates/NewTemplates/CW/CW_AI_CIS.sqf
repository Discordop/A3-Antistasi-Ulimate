//////////////////////////
//   Side Information   //
//////////////////////////

["name", "CIS"] call _fnc_saveToTemplate;
["spawnMarkerName", "CIS Support Corridor"] call _fnc_saveToTemplate;

["flag", "ls_flag_cis"] call _fnc_saveToTemplate;
["flagTexture", "\LS_statics_props\flags\data\flag_cis.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "JLTS_Flag_CIS"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "lsd_cis_oomOfficer_standard"],
	["militia_rifleman", "lsd_cis_b1_standard"],
	["militia_radioman", "lsd_cis_b1_standard"],
	["militia_medic", "lsd_cis_b1Shotgun_standard"],
	["militia_engineer", "lsd_cis_b1Saboteur_standard"],
	["militia_explosivesexpert", "lsd_cis_b1Grenadier_standard"],
	["militia_grenadier", "lsd_cis_b1Grenadier_standard"],
	["militia_lat", "lsd_cis_b1At_standard"],
	["militia_at", "lsd_cis_b1AtMissile_standard"],
	["militia_aa", "lsd_cis_b1AaMissile_standard"],
	["militia_machinegunner", "lsd_cis_b1Heavy_standard"],
	["militia_marksman", "lsd_cis_b1Marksman_standard"],
	["militia_sniper", "lsd_cis_b1Marksman_standard"],

	["military_squadleader", "lsd_cis_oomOfficer_standard"],
	["military_rifleman", "lsd_cis_b1_standard"],
	["military_radioman", "lsd_cis_b1_standard"],
	["military_medic", "lsd_cis_b1Shotgun_standard"],
	["military_engineer", "lsd_cis_b1Saboteur_standard"],
	["military_explosivesexpert", "lsd_cis_b1Grenadier_standard"],
	["military_grenadier", "lsd_cis_b1Grenadier_standard"],
	["military_lat", "lsd_cis_b1At_standard"],
	["military_at", "lsd_cis_b1AtMissile_standard"],
	["military_aa", "lsd_cis_b1AaMissile_standard"],
	["military_machinegunner", "lsd_cis_b1Heavy_standard"],
	["military_marksman", "lsd_cis_b1Marksman_standard"],
	["military_sniper", "lsd_cis_b1Marksman_standard"],

	["elite_squadleader", "lsd_cis_oomOfficer_standard"],
	["elite_rifleman", "lsd_cis_b1_standard"],
	["elite_radioman", "lsd_cis_b1_standard"],
	["elite_medic", "lsd_cis_b1Shotgun_standard"],
	["elite_engineer", "lsd_cis_b1Saboteur_standard"],
	["elite_explosivesexpert", "lsd_cis_b1Grenadier_standard"],
	["elite_grenadier", "lsd_cis_b1Grenadier_standard"],
	["elite_lat", "lsd_cis_b1At_standard"],
	["elite_at", "lsd_cis_b1AtMissile_standard"],
	["elite_aa", "lsd_cis_b1AaMissile_standard"],
	["elite_machinegunner", "lsd_cis_b1Heavy_standard"],
	["elite_marksman", "lsd_cis_b1Marksman_standard"],
	["elite_sniper", "lsd_cis_b1Marksman_standard"],

	["sf_squadleader", "lsd_cis_bxCaptain_specops"],
	["sf_rifleman", "lsd_cis_bxdroid_specops"],
	["sf_radioman", "lsd_cis_bxdroid_specops"],
	["sf_medic", "lsd_cis_bxDiplomat_specops"],
	["sf_engineer", "lsd_cis_bxdroid_specops"],
	["sf_explosivesexpert", "lsd_cis_bxSaboteur_specops"],
	["sf_grenadier", "lsd_cis_bxSaboteur_specops"],
	["sf_lat", "lsd_cis_bxdroid_specops"],
	["sf_at", "lsd_cis_bxCloaker_specops"],
	["sf_aa", "lsd_cis_bxCloaker_specops"],
	["sf_machinegunner", "lsd_cis_bxdroid_specops"],
	["sf_marksman", "lsd_cis_bxAssassin_specops"],
	["sf_sniper", "lsd_cis_bxAssassin_specops"],

	["other_crew", "lsd_cis_oomCrew_standard"],
	["other_unarmed", "lsd_cis_b1_standard"],
	["other_official", "lsd_cis_oomOfficer_standard"],
	["other_traitor", "lsd_cis_oomSecurity_standard"],
	["other_pilot", "lsd_cis_oomPilot_standard"],
	["police_squadleader", "3AS_U_CIS_Officer"],
	["police_standard", "3AS_U_CIS_Light"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["lsd_car_ast"]] call _fnc_saveToTemplate; 			//this line determines basic vehicles, the lightest kind available. -- Example: ["vehiclesBasic", ["B_Quadbike_01_F"]] -- Array, can contain multiple assets
["vehiclesLightUnarmed", ["CW_Ifrit_CIS"]] call _fnc_saveToTemplate; 		//this line determines light and unarmed vehicles. -- Example: ["vehiclesLightUnarmed", ["B_MRAP_01_F"]] -- Array, can contain multiple assets
["vehiclesLightArmed",["CW_Ifrit_CIS_HMG", "CW_Offroad_CIS_AT", "lsd_car_ast"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["442_argon_covered_cis", "442_argon_transport_cis"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["442_argon_transport_cis", "442_argon_covered_cis"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["442_argon_covered_cis", "442_argon_transport_cis"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["442_argon_transport_cis", "442_argon_covered_cis"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["442_argon_ammo_cis"]] call _fnc_saveToTemplate; 		//this line determines ammo trucks -- Example: ["vehiclesAmmoTrucks", ["442_argon_ammo_cis"]] -- Array, can contain multiple assets
["vehiclesRepairTrucks", ["442_argon_repair_cis"]] call _fnc_saveToTemplate; 		//this line determines repair trucks -- Example: ["vehiclesRepairTrucks", ["442_argon_repair_cis"]] -- Array, can contain multiple assets
["vehiclesFuelTrucks", ["442_argon_fuel_cis"]] call _fnc_saveToTemplate;		//this line determines fuel trucks -- Array, can contain multiple assets
["vehiclesMedical", ["442_argon_medical_cis"]] call _fnc_saveToTemplate;			//this line determines medical vehicles -- Array, can contain multiple assets
["vehiclesAPCs", ["3as_SAC_Trade"]] call _fnc_saveToTemplate; 				//this line determines APCs -- Example: ["vehiclesAPCs", ["B_APC_Tracked_01_rcws_F", "B_APC_Tracked_01_CRV_F"]] -- Array, can contain multiple assets
["vehiclesTanks", ["3AS_AAT_CIS", "3AS_GAT", "3AS_n99"]] call _fnc_saveToTemplate; 			//this line determines tanks -- Example: ["vehiclesTanks", ["B_MBT_01_cannon_F", "B_MBT_01_TUSK_F"]] -- Array, can contain multiple assets
["vehiclesAA", ["3AS_GAT_Light"]] call _fnc_saveToTemplate; 				//this line determines AA vehicles -- Example: ["vehiclesAA", ["B_APC_Tracked_01_AA_F"]] -- Array, can contain multiple assets
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;
["vehiclesIFVs", []] call _fnc_saveToTemplate;

["vehiclesSam", ["B_Radar_System_01_F","3as_FlakCannon"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM


["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["442_boat_armed"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["3AS_BTLB_Bomber_Shadow"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["3as_Tri_Fighter_dynamicLoadout"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", []] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["3AS_Patrol_LAAT_Police"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["3AS_HMP_Transport"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisAttack", ["3AS_HMP_Gunship"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesArtillery", [
["3AS_Hailfire_Rocket",["12Rnd_230mm_rockets"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["O_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["3as_CIS_ScavDroid"]] call _fnc_saveToTemplate;


["vehiclesMilitiaLightArmed", ["CW_Offroad_CIS_HMG"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["442_argon_covered_cis", "442_argon_transport_cis"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CW_Offroad_CIS"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["3as_SAC_Trade"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["3AS_AAT_CIS"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["CW_Offroad_CIS"]] call _fnc_saveToTemplate;

["staticMGs", ["3AS_HeavyRepeater_Unarmoured"]] call _fnc_saveToTemplate;
["staticAT", ["O_static_AT_F"]] call _fnc_saveToTemplate;
["staticAA", ["O_static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["3as_CIS_Mortar"]] call _fnc_saveToTemplate;
["staticHowitzers", ["not_supported"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "not_supported"] call _fnc_saveToTemplate;

["baggedMGs", [["O_G_HMG_02_high_F", "O_G_HMG_02_support_high_F"]]] call _fnc_saveToTemplate;
["baggedAT", [["O_AT_01_weapon_F", "O_HMG_01_support_F"]]] call _fnc_saveToTemplate;
["baggedAA", [["O_AA_01_weapon_F", "O_HMG_01_support_F"]]] call _fnc_saveToTemplate;
["baggedMortars", [["O_Mortar_01_weapon_F", "O_Mortar_01_support_F"]]] call _fnc_saveToTemplate; 			//this line determines bagged static mortars -- Example: ["baggedMortars", [["B_Mortar_01_weapon_F", "B_Mortar_01_support_F"]]] -- Array, can contain multiple assets

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine_Range_Mag"]] call _fnc_saveToTemplate;


["playerDefaultLoadout", []] call _fnc_saveToTemplate;
["pvpLoadouts", [
	//Team Leader
	["vanilla_opfor_teamLeader_altis"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_opfor_medic_altis"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_opfor_machineGunner_altis"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_opfor_marksman_altis"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_opfor_AT_altis"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_opfor_AT2_altis"] call A3A_fnc_getLoadout
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
["ls_weapon_rps6_disposable"]
]];
_loadoutData setVariable ["ATLaunchers", [["ls_weapon_rps6", "", "", "", ["ls_mag_rpg_1rnd"], [], ""]]];
_loadoutData setVariable ["missileATLaunchers", [["SWLW_E60R", "", "", "", ["SWLW_e60r_at_mag"], [], ""]]];
_loadoutData setVariable ["AALaunchers", [
["SWLW_E60R_AA", "", "", "", ["SWLW_e60r_aa_mag"], [], ""]
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
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", ["JLTS_NVG_droid_chip_1"]];
_loadoutData setVariable ["binoculars", ["JLTS_DroidBinocular"]];		//this line determines the binoculars
_loadoutData setVariable ["Rangefinder", ["JLTS_DroidBinocular"]];

_loadoutData setVariable ["uniforms", []];
_loadoutData setVariable ["offuniforms", []];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["Hvests", []];
_loadoutData setVariable ["GLvests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", ["ACE_microDAGR", "ACE_DAGR", "Laserbatteries", "Laserbatteries", "Laserbatteries"]];
_loadoutData setVariable ["items_rifleman_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_medic_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_grenadier_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_explosivesExpert_extras", ["CW_DroidParts", "Toolkit", "MineDetector", "ACE_Clacker","ACE_DefusalKit"]];
_loadoutData setVariable ["items_engineer_extras", ["CW_DroidParts", "Toolkit", "MineDetector"]];
_loadoutData setVariable ["items_lat_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_at_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_aa_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_machineGunner_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_marksman_extras", ["CW_DroidParts", "ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_sniper_extras", ["CW_DroidParts", "ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"]];
_loadoutData setVariable ["items_police_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_crew_extras", ["CW_DroidParts"]];
_loadoutData setVariable ["items_unarmed_extras", ["CW_DroidParts"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData setVariable ["uniforms", ["lsd_cis_bxDroid_uniform"]];
_sfLoadoutData setVariable ["vests", ["ls_cis_bxCommando_vest"]];
_sfLoadoutData setVariable ["GLvests", ["ls_cis_bxCommando_vest"]];
_sfLoadoutData setVariable ["Hvests", ["ls_cis_bxCommando_vest"]];
_sfLoadoutData setVariable ["backpacks", ["lsd_cis_antennaGeonosis_backpack"]];
_sfLoadoutData setVariable ["helmets", []];
_sfLoadoutData setVariable ["binoculars", ["JLTS_DroidBinocular"]];
_sfLoadoutData setVariable ["missileATLaunchers", [
["SWLW_E60R", "", "", "", ["SWLW_e60r_at_mag"], [], ""]
]];

//SF Weapons
_sfLoadoutData setVariable ["rifles", [
["JLTS_E5", "", "", "", ["JLTS_E5_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["SWLW_ACPR", "", "", "", ["SWLW_acpr_mag"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_GL", "", "", "", ["SWLW_mag_40mm_1rnd"], [], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["SWLW_ACPA", "", "", "", ["SWLW_acpa_Mag"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["SWLW_E5C", "", "", "", ["SWLW_E5C_mag"], [], ""],
["SWLW_LS150", "", "", "", ["SWLW_LS150_mag"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["JLTS_E5S", "", "", "", ["JLTS_E5S_mag"], [], ""]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["JLTS_E5S", "", "", "", ["JLTS_E5S_mag"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["SWLW_RG4D", "", "", "", ["SWLW_RG4D_Mag"], [], ""]
]];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["ls_cis_b1droid_uniform"]];
_militaryLoadoutData setVariable ["offuniforms", ["ls_cis_b1droid_uniform"]];
_militaryLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];
_militaryLoadoutData setVariable ["GLvests", ["SWLB_clone_basic_armor"]];
_militaryLoadoutData setVariable ["Hvests", ["SWLB_clone_basic_armor"]];
_militaryLoadoutData setVariable ["backpacks", ["lsd_cis_standard_backpack"]];
_militaryLoadoutData setVariable ["helmets", ["ls_cis_b1_helmet"]];
_militaryLoadoutData setVariable ["binoculars", ["JLTS_DroidBinocular"]];

_militaryLoadoutData setVariable ["rifles", [
["SWLW_E5", "", "", "", ["SWLW_E5_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["SWLW_ACPR", "", "", "", ["SWLW_acpr_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_GL", "", "", "", ["SWLW_mag_40mm_1rnd"], [], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["SWLW_ACPA", "", "", "", ["SWLW_acpa_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["SWLW_E5C", "", "", "", ["SWLW_E5C_mag"], [], ""],
["SWLW_LS150", "", "", "", ["SWLW_LS150_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["JLTS_E5S", "", "", "", ["JLTS_E5S_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["JLTS_E5S", "", "", "", ["JLTS_E5S_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["SWLW_RG4D", "", "", "", ["SWLW_RG4D_Mag"], [], ""]
]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["3AS_U_CIS_Light_Armor", "3AS_U_CIS_Officer_Armor"]];
_policeLoadoutData setVariable ["vests", ["JLTS_CloneVestHolster"]];
_policeLoadoutData setVariable ["helmets", ["3as_CIS_Light_helmet"]];
_policeLoadoutData setVariable ["smgs", [
["SWLW_ACPR", "", "", "", ["SWLW_acpr_mag"], [], ""],
["SWLW_ACPA", "", "", "", ["SWLW_acpa_Mag"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["SWLW_RG4D", "", "", "", ["SWLW_RG4D_Mag"], [], ""]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["ls_cis_b1droid_uniform"]];
_militiaLoadoutData setVariable ["offuniforms", ["ls_cis_b1droid_uniform"]];
_militiaLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];
_militiaLoadoutData setVariable ["GLvests", ["SWLB_clone_basic_armor"]];
_militiaLoadoutData setVariable ["Hvests", ["SWLB_clone_basic_armor"]];
_militiaLoadoutData setVariable ["backpacks", ["lsd_cis_standard_backpack"]];
_militiaLoadoutData setVariable ["helmets", ["ls_cis_b1_helmet"]];
_militiaLoadoutData setVariable ["rifles", [
["SWLW_E5", "", "", "", ["SWLW_E5_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["SWLW_E5", "", "", "", ["SWLW_E5_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_GL", "", "", "", ["SWLW_mag_40mm_1rnd"], [], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["SWLW_ACPR", "", "", "", ["SWLW_acpr_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["SWLW_E5C", "", "", "", ["SWLW_E5C_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["SWLW_E5", "", "", "", ["SWLW_E5_Mag"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["SWLW_sniper", "", "", "swlw_sniper_scope", ["SWLW_sniper_mag"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["SWLW_RG4D", "", "", "", ["SWLW_RG4D_Mag"], [], ""]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["ls_cis_b1droid_uniform"]];
_eliteLoadoutData setVariable ["offuniforms", ["ls_cis_b1droid_uniform"]];
_eliteLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];
_eliteLoadoutData setVariable ["GLvests", ["SWLB_clone_basic_armor"]];
_eliteLoadoutData setVariable ["Hvests", ["ls_cis_bxCommando_vest"]];
_eliteLoadoutData setVariable ["backpacks", ["lsd_cis_standard_backpack"]];
_eliteLoadoutData setVariable ["helmets", ["ls_cis_b1_helmet"]];
_eliteLoadoutData setVariable ["binoculars", ["JLTS_DroidBinocular"]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
["SWLW_E60R", "", "", "", ["SWLW_e60r_at_mag"], [], ""]
]];

_militaryLoadoutData setVariable ["rifles", [
["SWLW_E5", "", "", "", ["SWLW_E5_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["SWLW_ACPR", "", "", "", ["SWLW_acpr_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["SWLW_GL", "", "", "", ["SWLW_mag_40mm_1rnd"], [], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["SWLW_ACPA", "", "", "", ["SWLW_acpa_Mag"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["SWLW_E5C", "", "", "", ["SWLW_E5C_mag"], [], ""],
["SWLW_LS150", "", "", "", ["SWLW_LS150_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["JLTS_E5S", "", "", "", ["JLTS_E5S_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["JLTS_E5S", "", "", "", ["JLTS_E5S_mag"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", [
["SWLW_RG4D", "", "", "", ["SWLW_RG4D_Mag"], [], ""]
]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData setVariable ["uniforms", ["lsd_cis_oomCrew_uniform"]];			//this line determines uniforms for vehicle crew loadouts -- Example: ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt"] -- Array, can contain multiple assets
_crewLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];				//this line determines vests for vehicle crew loadouts -- Example: ["V_PlateCarrierSpec_mtp", "V_PlateCarrierGL_mtp"] -- Array, can contain multiple assets
_crewLoadoutData setVariable ["helmets", ["ls_cis_b1_helmet"]];			//this line determines backpacks for vehicle crew loadouts -- Example: ["B_AssaultPack_mcamo", "B_Kitbag_mcamo"] -- Array, can contain multiple assets

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["lsd_cis_oomPilot_uniform"]];
_pilotLoadoutData setVariable ["vests", ["SWLB_clone_basic_armor"]];
_pilotLoadoutData setVariable ["helmets", ["ls_cis_b1_helmet"]];


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

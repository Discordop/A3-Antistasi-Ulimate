//////////////////////////
//   Side Information   //
//////////////////////////

["name", "URF"] call _fnc_saveToTemplate;
["spawnMarkerName", "URF Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_CSAT_F"] call _fnc_saveToTemplate;
["flagTexture", "A3\Data_F\Flags\Flag_CSAT_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_CSAT"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_squadleader", "OPTRE_Ins_URF_SquadLead"],
	["militia_rifleman", "OPTRE_Ins_URF_Rifleman_AR"],
	["militia_radioman", "OPTRE_Ins_URF_Radioman"],
	["militia_medic", "OPTRE_Ins_URF_Medic"],
	["militia_engineer", "OPTRE_Ins_URF_Engineer"],
	["militia_explosivesexpert", "OPTRE_Ins_URF_Demolitions"],
	["militia_grenadier", "OPTRE_Ins_URF_Grenadier"],
	["militia_lat", "OPTRE_Ins_URF_Rifleman_AT"],
	["militia_at", "OPTRE_Ins_URF_AT_Specialist"],
	["militia_aa", "OPTRE_Ins_URF_AA_Specialist"],
	["militia_machinegunner", "OPTRE_Ins_URF_Autorifleman"],
	["militia_marksman", "OPTRE_Ins_URF_Marksman"],
	["militia_sniper", "OPTRE_Ins_URF_Sniper"],

	["military_squadleader", "OPTRE_Ins_URF_SquadLead"],
	["military_rifleman", "OPTRE_Ins_URF_Rifleman_AR"],
	["military_radioman", "OPTRE_Ins_URF_Radioman"],
	["military_medic", "OPTRE_Ins_URF_Medic"],
	["military_engineer", "OPTRE_Ins_URF_Engineer"],
	["military_explosivesexpert", "OPTRE_Ins_URF_Demolitions"],
	["military_grenadier", "OPTRE_Ins_URF_Grenadier"],
	["military_lat", "OPTRE_Ins_URF_Rifleman_AT"],
	["military_at", "OPTRE_Ins_URF_AT_Specialist"],
	["military_aa", "OPTRE_Ins_URF_AA_Specialist"],
	["military_machinegunner", "OPTRE_Ins_URF_Autorifleman"],
	["military_marksman", "OPTRE_Ins_URF_Marksman"],
	["military_sniper", "OPTRE_Ins_URF_Sniper"],

	["elite_squadleader", "OPTRE_Ins_URF_SquadLead"],
	["elite_rifleman", "OPTRE_Ins_URF_Rifleman_AR"],
	["elite_radioman", "OPTRE_Ins_URF_Radioman"],
	["elite_medic", "OPTRE_Ins_URF_Medic"],
	["elite_engineer", "OPTRE_Ins_URF_Engineer"],
	["elite_explosivesexpert", "OPTRE_Ins_URF_Demolitions"],
	["elite_grenadier", "OPTRE_Ins_URF_Grenadier"],
	["elite_lat", "OPTRE_Ins_URF_Rifleman_AT"],
	["elite_at", "OPTRE_Ins_URF_AT_Specialist"],
	["elite_aa", "OPTRE_Ins_URF_AA_Specialist"],
	["elite_machinegunner", "OPTRE_Ins_URF_Autorifleman"],
	["elite_marksman", "OPTRE_Ins_URF_Marksman"],
	["elite_sniper", "OPTRE_Ins_URF_Sniper"],

	["sf_squadleader", "OPTRE_Ins_BJ_Soldier_TeamLeader"],
	["sf_rifleman", "OPTRE_Ins_BJ_Soldier_Rifleman_AR"],
	["sf_radioman", "OPTRE_Ins_BJ_Soldier_Rifleman_BR"],
	["sf_medic", "OPTRE_Ins_BJ_Soldier_Corpsman"],
	["sf_engineer", "OPTRE_Ins_BJ_Soldier_Engineer"],
	["sf_explosivesexpert", "OPTRE_Ins_BJ_Soldier_Engineer"],
	["sf_grenadier", "OPTRE_Ins_BJ_Soldier_Scout"],
	["sf_lat", "OPTRE_Ins_BJ_Soldier_Rifleman_AT"],
	["sf_at", "OPTRE_Ins_BJ_Soldier_Rifleman_AT"],
	["sf_aa", "OPTRE_Ins_BJ_Soldier_Rifleman_AT"],
	["sf_machinegunner", "OPTRE_Ins_BJ_Soldier_Automatic_Rifleman"],
	["sf_marksman", "OPTRE_Ins_BJ_Soldier_Marksman"],
	["sf_sniper", "OPTRE_Ins_BJ_Soldier_Scout_Sniper"],

	["other_crew", "OPTRE_Ins_URF_Crewman"],
	["other_unarmed", "OPTRE_Ins_URF_Unarmed"],
	["other_official", "OPTRE_Ins_URF_Officer"],
	["other_traitor", "OPTRE_Ins_URF_Observer"],
	["other_pilot", "OPTRE_Ins_URF_Pilot"],
	["police_squadleader", "OPTRE_Ins_URF_TeamLead"],
	["police_standard", "OPTRE_Ins_URF_Rifleman_Light"]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate;
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate;

["vehiclesBasic", ["OPTRE_M274_ATV_Ins"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["OPTRE_M12_FAV_ins", "OPTRE_M12_ins_APC"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["OPTRE_M12_LRV_ins", "OPTRE_M12_TD_ins", "OPTRE_M12A1_LRV_ins", "OPTRE_M12_LRV_ins"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["OPTRE_m1015_mule_cover_ins", "OPTRE_m1015_mule_ins"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["OPTRE_m1015_mule_cover_ins", "OPTRE_m1015_mule_ins"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["OPTRE_m1015_mule_ammo_ins"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["OPTRE_m1015_mule_repair_ins"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["OPTRE_m1015_mule_fuel_ins"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["OPTRE_m1015_mule_medical_ins"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["OPTRE_M494_INS"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["OPTRE_M808B_INS"]] call _fnc_saveToTemplate;
["vehiclesAA", ["OPTRE_M12R_AA_ins"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;
["vehiclesIFVs", []] call _fnc_saveToTemplate;

["vehiclesSam", ["O_Radar_System_02_F","O_SAM_System_04_F"]] call _fnc_saveToTemplate; 	//this line determines SAM systems, order: radar, SAM


["vehiclesTransportBoats", ["optre_catfish_ins_unarmed_f"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["optre_catfish_ins_mg_f"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["OPTRE_YSS_1000_A_VTOL"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["OPTRE_YSS_1000_A"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", []] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["OPTRE_UNSC_hornet_ins"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["OPTRE_ins_falcon_unarmed", "OPTRE_UNSC_hornet_ins", "OPTRE_ins_falcon_unarmed"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["OPTRE_ins_falcon", "OPTRE_Pelican_armed_70mm_ins"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [
["OPTRE_m1015_mule_mlr_ins",["12Rnd_230mm_rockets"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["OPTRE_Wombat_B"]] call _fnc_saveToTemplate;
["uavsPortable", ["O_UAV_01_F"]] call _fnc_saveToTemplate;


["vehiclesMilitiaLightArmed", ["OPTRE_M12_LRV_ins"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["OPTRE_m1015_mule_cover_ins", "OPTRE_m1015_mule_ins"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["OPTRE_M12_FAV_ins"]] call _fnc_saveToTemplate;
["vehiclesMilitiaApcs", ["OPTRE_M12_ins_APC"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTanks", ["OPTRE_M808B_INS"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["OPTRE_M12_FAV_ins"]] call _fnc_saveToTemplate;

["staticMGs", ["OPTRE_Static_M247H_Tripod"]] call _fnc_saveToTemplate;
["staticAT", ["OPTRE_Static_ATGM"]] call _fnc_saveToTemplate;
["staticAA", ["OPTRE_Static_AA"]] call _fnc_saveToTemplate;
["staticMortars", ["O_Mortar_01_F"]] call _fnc_saveToTemplate;
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
	["OPTRE_M41_SSR", "", "", "", ["OPTRE_M41_Twin_HE"], [], ""]
]];
_loadoutData setVariable ["ATLaunchers", [["OPTRE_M41_SSR", "", "", "", ["OPTRE_M41_Twin_HEAT"], [], ""]]];
_loadoutData setVariable ["missileATLaunchers", [["OPTRE_M41_SSR", "", "", "", ["OPTRE_M41_Twin_HEAT_G"], [], ""]]];
_loadoutData setVariable ["AALaunchers", [
	["OPTRE_M41_SSR", "", "", "", ["OPTRE_M41_Twin_HEAT_Thermal"], [], ""]
]];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", ["UNSCMine_Range_Mag"]];
_loadoutData setVariable ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData setVariable ["lightExplosives", ["C7_Remote_Mag", "C12_Remote_Mag"]];
_loadoutData setVariable ["heavyExplosives", ["M168_Remote_Mag"]];

_loadoutData setVariable ["antiInfantryGrenades", ["OPTRE_M9_Frag"]];
_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["smokeGrenades", ["OPTRE_M2_Smoke"]];
_loadoutData setVariable ["signalsmokeGrenades", ["OPTRE_M2_Yellow", "OPTRE_M2_Red", "OPTRE_M2_Purple", "OPTRE_M2_Orange", "OPTRE_M2_Green", "OPTRE_M2_Blue"]];



_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", ["OPTRE_NVG"]];
_loadoutData setVariable ["binoculars", ["OPTRE_Binoculars"]];
_loadoutData setVariable ["Rangefinder", ["OPTRE_Smartfinder"]];

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
_sfLoadoutData setVariable ["uniforms", ["OPTRE_Ins_BJ_Undersuit"]];
_sfLoadoutData setVariable ["vests", ["OPTRE_Ins_BJ_Armor"]];
_sfLoadoutData setVariable ["GLvests", ["OPTRE_Ins_BJ_Armor"]];
_sfLoadoutData setVariable ["Hvests", ["OPTRE_Ins_BJ_Armor"]];
_sfLoadoutData setVariable ["backpacks", ["OPTRE_B_TacticalPack_blk_Demo", "OPTRE_ANPRC_521_Black", "OPTRE_B_TacticalPack_blk_Demo", "OPTRE_ANPRC_521_URF"]];
_sfLoadoutData setVariable ["helmets", ["OPTRE_Ins_BJ_Helmet"]];
_sfLoadoutData setVariable ["binoculars", ["OPTRE_Smartfinder"]];
_sfLoadoutData setVariable ["missileATLaunchers", [
	["OPTRE_M41_SSR", "", "", "", ["OPTRE_M41_Twin_HEAT_G"], [], ""]
]];

//SF Weapons
_sfLoadoutData setVariable ["rifles", [
["OPTRE_MA5C", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5B", "", "", "optre_ma5_smartlink", ["OPTRE_60Rnd_762x51_Mag", "OPTRE_60Rnd_762x51_Mag_Tracer", "OPTRE_60Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5A", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_sfLoadoutData setVariable ["carbines", [
["OPTRE_MA37K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow", "OPTRE_32Rnd_762x51_Mag_UW"], [], ""]
]];
_sfLoadoutData setVariable ["grenadeLaunchers", [
["OPTRE_MA5CGL", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA5BGL", "", "", "optre_ma5_smartlink", ["OPTRE_60Rnd_762x51_Mag", "OPTRE_60Rnd_762x51_Mag_Tracer", "OPTRE_60Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA32BGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA37GL", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA32GL", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA5AGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA37BGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""]
]];
_sfLoadoutData setVariable ["SMGs", [
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""],
["OPTRE_M45TAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M45ATAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""]
]];
_sfLoadoutData setVariable ["machineGuns", [
["OPTRE_M73", "", "", "optre_m73_smartlink", ["OPTRE_100Rnd_95x40_Box", "OPTRE_100Rnd_95x40_Box_Tracer", "OPTRE_100Rnd_95x40_Box_Tracer_Yellow"], [], ""],
["OPTRE_M247", "", "", "optre_m393_eotech", ["OPTRE_100Rnd_762x51_Box", "OPTRE_100Rnd_762x51_Box_Tracer", "OPTRE_100Rnd_762x51_Box_Tracer_Yellow"], [], ""]
]];
_sfLoadoutData setVariable ["marksmanRifles", [
["OPTRE_M392_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393S_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_sfLoadoutData setVariable ["sniperRifles", [
["OPTRE_SRS99D", "", "", "optre_srs99_scope", ["OPTRE_4Rnd_145x114_APFSDS_Mag", "OPTRE_4Rnd_145x114_HEDP_Mag", "OPTRE_4Rnd_145x114_HVAP_Mag"], [], ""],
["OPTRE_M99A2S3", "", "", "", ["OPTRE_7Rnd_20mm_APFSDS_Mag", "OPTRE_7Rnd_20mm_HEDP_Mag"], [], ""],
["OPTRE_SRM77_S1", "", "", "optre_srm_sight", ["OPTRE_10Rnd_127x99"], [], ""]
]];
_sfLoadoutData setVariable ["sidearms", [
["OPTRE_M6B", "", "", "", ["OPTRE_8Rnd_127x40_Mag"], [], ""],
["OPTRE_M6C", "", "", "", ["OPTRE_16Rnd_127x40_Mag", "OPTRE_16Rnd_127x40_Mag_Tracer"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData setVariable ["uniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_militaryLoadoutData setVariable ["offuniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_militaryLoadoutData setVariable ["vests", ["OPTRE_Ins_URF_Armor1"]];
_militaryLoadoutData setVariable ["GLvests", ["OPTRE_Ins_URF_Armor1"]];
_militaryLoadoutData setVariable ["Hvests", ["OPTRE_Ins_URF_Armor1"]];
_militaryLoadoutData setVariable ["backpacks", ["OPTRE_ILCS_Rucksack_Black", "OPTRE_ILCS_Rucksack_Heavy", "OPTRE_ILCS_Rucksack_Medical", "OPTRE_ANPRC_521_URF"]];
_militaryLoadoutData setVariable ["helmets", ["OPTRE_Ins_URF_Helmet1", "OPTRE_Ins_URF_Helmet4", "OPTRE_Ins_URF_Helmet2", "OPTRE_Ins_URF_Helmet3"]];
_militaryLoadoutData setVariable ["binoculars", ["OPTRE_Binoculars"]];

_militaryLoadoutData setVariable ["rifles", [
["OPTRE_MA5C", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5A", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_militaryLoadoutData setVariable ["carbines", [
["OPTRE_MA37K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow", "OPTRE_32Rnd_762x51_Mag_UW"], [], ""]
]];
_militaryLoadoutData setVariable ["grenadeLaunchers", [
["OPTRE_MA5CGL", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA32BGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA37GL", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA32GL", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA5AGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA37BGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData setVariable ["SMGs", [
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""],
["OPTRE_M45TAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M45ATAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""]
]];
_militaryLoadoutData setVariable ["machineGuns", [
["OPTRE_M73", "", "", "optre_m73_smartlink", ["OPTRE_100Rnd_95x40_Box", "OPTRE_100Rnd_95x40_Box_Tracer", "OPTRE_100Rnd_95x40_Box_Tracer_Yellow"], [], ""],
["OPTRE_M247", "", "", "optre_m393_eotech", ["OPTRE_100Rnd_762x51_Box", "OPTRE_100Rnd_762x51_Box_Tracer", "OPTRE_100Rnd_762x51_Box_Tracer_Yellow"], [], ""]
]];
_militaryLoadoutData setVariable ["marksmanRifles", [
["OPTRE_M392_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393S_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_militaryLoadoutData setVariable ["sniperRifles", [
["OPTRE_SRM77_S2", "", "", "optre_srm_sight", ["OPTRE_10Rnd_127x99"], [], ""],
["OPTRE_SRM77_S1", "", "", "optre_srm_sight", ["OPTRE_10Rnd_127x99"], [], ""]
]];
_militaryLoadoutData setVariable ["sidearms", ["OPTRE_M6B"]];
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData setVariable ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];
_policeLoadoutData setVariable ["vests", ["OPTRE_Ins_URF_Armor1"]];
_policeLoadoutData setVariable ["helmets", ["H_Cap_police"]];
_policeLoadoutData setVariable ["smgs", [
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""],
["OPTRE_M45TAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M45ATAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""]
]];
_policeLoadoutData setVariable ["sidearms", ["hgun_Rook40_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData setVariable ["uniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_militiaLoadoutData setVariable ["offuniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_militiaLoadoutData setVariable ["vests", ["OPTRE_Ins_URF_Armor1"]];
_militiaLoadoutData setVariable ["GLvests", ["OPTRE_Ins_URF_Armor1"]];
_militiaLoadoutData setVariable ["Hvests", ["OPTRE_Ins_URF_Armor1"]];
_militiaLoadoutData setVariable ["backpacks", ["OPTRE_ILCS_Rucksack_Black", "OPTRE_ILCS_Rucksack_Heavy", "OPTRE_ILCS_Rucksack_Medical", "OPTRE_ANPRC_521_URF"]];
_militiaLoadoutData setVariable ["helmets", ["OPTRE_Ins_URF_Helmet1", "OPTRE_Ins_URF_Helmet4", "OPTRE_Ins_URF_Helmet2", "OPTRE_Ins_URF_Helmet3"]];
_militiaLoadoutData setVariable ["rifles", [
["OPTRE_MA5C", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5A", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_militiaLoadoutData setVariable ["carbines", [
["OPTRE_MA37K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow", "OPTRE_32Rnd_762x51_Mag_UW"], [], ""]
]];
_militiaLoadoutData setVariable ["grenadeLaunchers", [
["OPTRE_M319", "", "", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_M319n", "", "", "", ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData setVariable ["SMGs", [
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""],
["OPTRE_M45TAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M45ATAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""]
]];
_militiaLoadoutData setVariable ["machineGuns", [
["OPTRE_M247", "", "", "optre_m393_eotech", ["OPTRE_100Rnd_762x51_Box", "OPTRE_100Rnd_762x51_Box_Tracer", "OPTRE_100Rnd_762x51_Box_Tracer_Yellow"], [], ""]
]];
_militiaLoadoutData setVariable ["marksmanRifles", [
["OPTRE_M392_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393S_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_militiaLoadoutData setVariable ["sniperRifles", [
["OPTRE_SRM77_S2", "", "", "optre_srm_sight", ["OPTRE_10Rnd_127x99"], [], ""],
["OPTRE_SRM77_S1", "", "", "optre_srm_sight", ["OPTRE_10Rnd_127x99"], [], ""]
]];
_militiaLoadoutData setVariable ["sidearms", ["OPTRE_M6C"]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData setVariable ["uniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_eliteLoadoutData setVariable ["offuniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_eliteLoadoutData setVariable ["vests", ["OPTRE_Ins_URF_Armor1"]];
_eliteLoadoutData setVariable ["GLvests", ["OPTRE_Ins_URF_Armor1"]];
_eliteLoadoutData setVariable ["Hvests", ["OPTRE_Ins_URF_Armor1"]];
_eliteLoadoutData setVariable ["backpacks", ["OPTRE_ILCS_Rucksack_Black", "OPTRE_ILCS_Rucksack_Heavy", "OPTRE_ILCS_Rucksack_Medical", "OPTRE_ANPRC_521_URF"]];
_eliteLoadoutData setVariable ["helmets", ["OPTRE_Ins_URF_Helmet1", "OPTRE_Ins_URF_Helmet4", "OPTRE_Ins_URF_Helmet2", "OPTRE_Ins_URF_Helmet3"]];
_eliteLoadoutData setVariable ["binoculars", ["OPTRE_Smartfinder"]];
_eliteLoadoutData setVariable ["missileATLaunchers", [
	["OPTRE_M41_SSR", "", "", "", ["OPTRE_M41_Twin_HEAT_G"], [], ""]
]];

_eliteLoadoutData setVariable ["rifles", [
["OPTRE_MA5C", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5B", "", "", "optre_ma5_smartlink", ["OPTRE_60Rnd_762x51_Mag", "OPTRE_60Rnd_762x51_Mag_Tracer", "OPTRE_60Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA32", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5A", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA37B", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_eliteLoadoutData setVariable ["carbines", [
["OPTRE_MA37K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_MA5K", "", "", "optre_m7_sight", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow", "OPTRE_32Rnd_762x51_Mag_UW"], [], ""]
]];
_eliteLoadoutData setVariable ["grenadeLaunchers", [
["OPTRE_MA5CGL", "", "", "optre_ma5c_smartlink", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA5BGL", "", "", "optre_ma5_smartlink", ["OPTRE_60Rnd_762x51_Mag", "OPTRE_60Rnd_762x51_Mag_Tracer", "OPTRE_60Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA32BGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA37GL", "", "", "optre_ma37_smartlink_scope", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA32GL", "", "", "optre_m393_eotech", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA5AGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""],
["OPTRE_MA37BGL", "", "", "optre_m393_acog", ["OPTRE_32Rnd_762x51_Mag_Tracer", "OPTRE_32Rnd_762x51_Mag", "OPTRE_32Rnd_762x51_Mag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "OPTRE_1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData setVariable ["SMGs", [
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""],
["OPTRE_M45TAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M45ATAC", "", "", "", ["OPTRE_12Rnd_8Gauge_Pellets", "OPTRE_12Rnd_8Gauge_Slugs"], [], ""],
["OPTRE_M7", "", "", "optre_m7_sight", ["OPTRE_60Rnd_5x23mm_Mag", "OPTRE_60Rnd_5x23mm_Mag_tracer", "OPTRE_60Rnd_5x23mm_Mag_tracer_yellow"], [], ""]
]];
_eliteLoadoutData setVariable ["machineGuns", [
["OPTRE_M73", "", "", "optre_m73_smartlink", ["OPTRE_100Rnd_95x40_Box", "OPTRE_100Rnd_95x40_Box_Tracer", "OPTRE_100Rnd_95x40_Box_Tracer_Yellow"], [], ""],
["OPTRE_M247", "", "", "optre_m393_eotech", ["OPTRE_100Rnd_762x51_Box", "OPTRE_100Rnd_762x51_Box_Tracer", "OPTRE_100Rnd_762x51_Box_Tracer_Yellow"], [], ""]
]];
_eliteLoadoutData setVariable ["marksmanRifles", [
["OPTRE_M392_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""],
["OPTRE_M393S_DMR", "", "", "optre_m392_scope", ["OPTRE_15Rnd_762x51_Mag", "OPTRE_15Rnd_762x51_Mag_Tracer", "OPTRE_15Rnd_762x51_Mag_Tracer_Yellow"], [], ""]
]];
_eliteLoadoutData setVariable ["sniperRifles", [
["OPTRE_SRS99D", "", "", "optre_srs99_scope", ["OPTRE_4Rnd_145x114_APFSDS_Mag", "OPTRE_4Rnd_145x114_HEDP_Mag", "OPTRE_4Rnd_145x114_HVAP_Mag"], [], ""],
["OPTRE_M99A2S3", "", "", "", ["OPTRE_7Rnd_20mm_APFSDS_Mag", "OPTRE_7Rnd_20mm_HEDP_Mag"], [], ""],
["OPTRE_SRM77_S1", "", "", "optre_srm_sight", ["OPTRE_10Rnd_127x99"], [], ""]
]];
_eliteLoadoutData setVariable ["sidearms", [
["OPTRE_M6B", "", "", "", ["OPTRE_8Rnd_127x40_Mag"], [], ""],
["OPTRE_M6C", "", "", "", ["OPTRE_16Rnd_127x40_Mag", "OPTRE_16Rnd_127x40_Mag_Tracer"], [], ""]
]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData setVariable ["uniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_crewLoadoutData setVariable ["vests", ["OPTRE_Ins_URF_Armor1"]];
_crewLoadoutData setVariable ["helmets", ["OPTRE_Ins_URF_Helmet2"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData setVariable ["uniforms", ["OPTRE_Ins_URF_Combat_Uniform"]];
_pilotLoadoutData setVariable ["vests", ["OPTRE_UNSC_M52A_Armor_Pilot_AF"]];
_pilotLoadoutData setVariable ["helmets", ["OPTRE_UNSC_VX16_Helmet_MaskS"]];


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

//////////////////////////////
//   Civilian Informations   //
//////////////////////////////

["uniforms", [    
    "U_LIB_CIV_Citizen_1",
    "U_LIB_CIV_Citizen_2",
    "U_LIB_CIV_Citizen_3",
    "U_LIB_CIV_Citizen_4",
    "U_LIB_CIV_Citizen_5",
    "U_LIB_CIV_Citizen_6",
    "U_LIB_CIV_Citizen_7",
    "U_LIB_CIV_Citizen_8",
    "U_LIB_CIV_Schoolteacher",
    "U_LIB_CIV_Schoolteacher_2",
    "U_LIB_CIV_Assistant",
    "U_LIB_CIV_Assistant_2",
    "U_LIB_CIV_Doctor",
    "U_LIB_CIV_Functionary_4",
    "U_LIB_CIV_Functionary_3",
    "U_LIB_CIV_Functionary_2",
    "U_LIB_CIV_Functionary_1",
    "U_LIB_CIV_Villager_4",
    "U_LIB_CIV_Villager_3",
    "U_LIB_CIV_Villager_2",
    "U_LIB_CIV_Villager_1",
    "U_LIB_CIV_Woodlander_4",
    "U_LIB_CIV_Woodlander_2",
    "U_LIB_CIV_Woodlander_3",
    "U_LIB_CIV_Woodlander_1"
    ]] call _fnc_saveToTemplate;

["headgear", [
    "H_LIB_CIV_Villager_Cap_1",
    "H_LIB_CIV_Villager_Cap_2",
    "H_LIB_CIV_Villager_Cap_3",
    "H_LIB_CIV_Villager_Cap_4",
    "H_LIB_CIV_Worker_Cap_1",
    "H_LIB_CIV_Worker_Cap_2",
    "H_LIB_CIV_Worker_Cap_3",
    "H_LIB_CIV_Worker_Cap_4",
    "H_StrawHat",
    "H_StrawHat_dark",
    "H_Hat_brown",
    "H_Hat_grey",
    "H_Hat_tan",
    "H_LIB_GER_Ushanka"
]] call _fnc_saveToTemplate;


["vehiclesCivCar", [
    "LIB_GazM1", 0.5
	,"LIB_GazM1_dirty", 0.5
	,"LIB_GazM1_SOV", 0.4
	,"LIB_GazM1_SOV_camo_sand", 0.4
    ]] call _fnc_saveToTemplate; 			//this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", [
    "LIB_Zis5v", 0.5
	, "LIB_CIV_FFI_CitC4_3" , 0.5
    ]] call _fnc_saveToTemplate; 			//this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

["vehiclesCivHeli", ["not_supported"]] call _fnc_saveToTemplate; 			//this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets

["vehiclesCivBoat", ["LIB_UK_LCA", 0.1]] call _fnc_saveToTemplate; 			//this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", ["LIB_Zis6_Parm", 0.2]] call _fnc_saveToTemplate;			//this line determines civilian repair vehicles

["vehiclesCivMedical", ["LIB_Zis5v_Med", 0.2]] call _fnc_saveToTemplate;		//this line determines civilian medic vehicles

["vehiclesCivFuel", ["LIB_Zis5v_Fuel", 0.2]] call _fnc_saveToTemplate;			//this line determines civilian fuel vehicles


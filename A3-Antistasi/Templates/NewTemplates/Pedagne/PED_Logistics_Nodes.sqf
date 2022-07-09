//Each element is: [model name, [nodes]]
//Nodes are build like this: [Available(internal use,  always 1), Hardpoint location, Seats locked when node is in use]
A3A_logistics_vehicleHardpoints append [
    ["CUP_B_Ural_Open_CDF" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.2,-0.52],    [2,3,12,13]  ], 
        [1,         [0,-1,-0.52],      [4,5]  ],
        [1,         [0,-1.8,-0.52],    [6,7]  ],
        [1,         [0,-2.6,-0.52],    [8,9,10,11]  ]
    ]],

	["\ASZ_Wheel_A3\ASZ_ACTL\ибиэкќѓФ?ип.p3d",
		[[1,[0,0.5,1.6],[]],
		[1,[0,-0.3,1.6],[]],
		[1,[0,-1.1,1.6],[]],
		[1,[0,-1.9,1.6],[]],
		[1,[0,-2.7,1.6],[]],
		[1,[0,-3.5,1.6],[]]
	]],

	["\ASZ_Wheel_A3\ASZ_ACTL\д*Упн.ogg",[
		[1,[0,0.15,1.6],[]],
		[1,[0,-0.65,1.6],[]],
		[1,[0,-1.45,1.6],[]],
		[1,[0,-2.25,1.6],[]],
		[1,[0,-3.05,1.6],[]]
	]],

    ["CUP_B_HMMWV_Transport_USA" call A3A_fnc_classNameToModel,[
       [1,         [0,-1.7,-0.65],    []  ]
    ]]
];


//Offsets for adding new statics/boxes to the JNL script.
A3A_logistics_attachmentOffset append [
    //weapons                                                                   //location                  //rotation                  //size    //recoil            //description
    ["CUP_B_TOW_TriPod_USMC" call A3A_fnc_classNameToModel,                     [0.0, -0.7, 1.12],          [0, 1, 0],                   2,      250],               //TOW launcher
    ["CUP_B_2b14_82mm_ACR" call A3A_fnc_classNameToModel,                       [0, -0.55, 0.8],            [0, 1, 0],                  2,      2000],              //Podnos Mortar
    ["CUP_B_M252_USMC" call A3A_fnc_classNameToModel,                           [0, -0.55, 0.75],            [0, 1, 0],                  2,      2000],              //Podnos Mortar
//Crates
    ["CUP_BOX_US_ARMY_Ammo_F" call A3A_fnc_classNameToModel,                      [0,0,0.35],                 [0,0,0],                    1],
//Other
    ["CUP_I_TT650_NAPA" call A3A_fnc_classNameToModel,                           [0, 0, 1.65],                [0,1,0],                    2],
    ["CUP_B_M1030_USA" call A3A_fnc_classNameToModel,                            [0, 0, 1.65],                [0,1,0],                    2]
];

//all vehicles with jnl loading nodes where the nodes are not located in the open, this can be because its inside the vehicle or it has a cover over the loading plane.
A3A_logistics_coveredVehicles append [
    "ASZ_ACTL6x6_logistic", 
    "ASZ_ACTL4x4_EI"
];

private _commonBlacklist = [ "C_Boat_Civil_01_F" call A3A_fnc_classNameToModel, "B_Boat_Transport_01_F" call A3A_fnc_classNameToModel, "C_Boat_Transport_02_F" call A3A_fnc_classNameToModel];

//if you want a weapon to be loadable you need to add it to this as a array of [model, [blacklist specific vehicles]],
//if the vehicle is in the coveredVehicles array dont add it to the blacklist in this array.
A3A_logistics_weapons append [
    ["CUP_B_DSHkM_MiniTriPod_CDF" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_Igla_AA_pod_CDF" call A3A_fnc_classNameToModel, ["C_Boat_Civil_01_F" call A3A_fnc_classNameToModel, "B_Boat_Transport_01_F" call A3A_fnc_classNameToModel, "C_Boat_Transport_02_F" call A3A_fnc_classNameToModel, "CUP_I_Hilux_unarmed_IND_G_F" call A3A_fnc_classNameToModel]]
];

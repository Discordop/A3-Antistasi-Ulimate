//Each element is: [model name, [nodes]]
//Nodes are build like this: [Available(internal use,  always 1), Hardpoint location, Seats locked when node is in use]
A3A_logistics_vehicleHardpoints append [
    ["CUP_B_Ural_Open_CDF" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.2,-0.52],    [2,3,12,13]  ], 
        [1,         [0,-1,-0.52],      [4,5]  ],
        [1,         [0,-1.8,-0.52],    [6,7]  ],
        [1,         [0,-2.6,-0.52],    [8,9,10,11]  ]
    ]],

    ["CUP_C_Ural_Open_Civ_03" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.2,1.5],    [2,3]  ], 
        [1,         [0,-1,1.5],      [4,5]  ],
        [1,         [0,-1.8,1.5],    [6,7]  ],
        [1,         [0,-2.6,1.5],    [8,9,10,11]  ]
    ]],

    ["CUP_B_Ural_CDF" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.2,-0.52],    [2,3,12,13]  ], 
        [1,         [0,-1,-0.52],      [4,5]  ],
        [1,         [0,-1.8,-0.52],    [6,7]  ],
        [1,         [0,-2.6,-0.52],    [8,9,10,11]  ]
    ]],

    ["CUP_B_LR_Transport_CZ_W" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.4,-0.75],    [3,4]  ]
    ]],

    ["CUP_B_LR_Transport_GB_W" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.4,-0.75],    [3,4]  ]
    ]],

    ["CUP_V3S_Open_NAPA" call A3A_fnc_classNameToModel,[
        [1,         [0, 0.2,-0.63],    [1,2,11,12]],
        [1,         [0,-0.6,-0.63],    [3,4]],
        [1,         [0,-1.4,-0.63],    [5,6]],
        [1,         [0,-2.2,-0.63],    [7,8,9,10]]
    ]],

    ["CUP_O_V3S_Covered_TKA" call A3A_fnc_classNameToModel,[
        [1,         [0, 0.2,-0.68],    [1,2,11,12]],
        [1,         [0,-0.6,-0.68],    [3,4]],
        [1,         [0,-1.4,-0.68],    [5,6]],
        [1,         [0,-2.2,-0.68],    [7,8,9,10]]
    ]],

    ["CUP_B_UAZ_Unarmed_ACR" call A3A_fnc_classNameToModel,[
        [1,         [0, -1.3, 0.3],    [2,5]]
    ]],

    ["CUP_B_UAZ_Open_ACR" call A3A_fnc_classNameToModel,[
        [1,         [0, -0.8, 0.3],    [2,5]]
    ]],

    ["CUP_I_Hilux_unarmed_IND_G_F" call A3A_fnc_classNameToModel,[
        [1,         [0,-1,-0.75],    [1,2]  ],
        [1,         [0,-1.8,-0.75],    [3,4]  ]
    ]],

    ["CUP_C_Datsun" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.8,-1.19],    [2, 4]  ],
        [1,         [0,-1.4,-1.19],    []  ]
    ]],

    ["CUP_C_Datsun_Covered" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.8,-1.19],    [2, 4]  ],
        [1,         [0,-1.4,-1.19],    []  ]
    ]],

    ["CUP_B_BRDM2_HQ_CZ" call A3A_fnc_classNameToModel,[
        [1,         [0,0.4,-0.17],       []  ],
        [1,         [0,-0.3,-0.17],      []  ]
    ]],

    ["CUP_B_T810_Unarmed_CZ_WDL" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.3,-0.5],    [2,3]  ],
        [1,         [0,-1.1,-0.5],    [4,5]  ],
        [1,         [0,-1.9,-0.5],    [6,7,8,9]  ],
        [1,         [0,-2.8,-0.5],    [8,9,10,11]  ]
    ]],

    ["CUP_B_T810_Armed_CZ_DES" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.3,-1.3],    [1,2]  ],
        [1,         [0,-1.1,-1.3],    [3,4]  ],
        [1,         [0,-1.9,-1.3],    [5,6,7,8]  ],
        [1,         [0,-2.8,-1.3],    [7,8,9,10]  ]
    ]],

    ["CUP_B_MTVR_BAF_WOOD" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.3,-0.45],    [2,3,4,5]  ],
        [1,         [0,-1.1,-0.45],    [6,7,8,9]  ],
        [1,         [0,-1.9,-0.45],    [10,11]  ],
        [1,         [0,-2.8,-0.45],    []  ]
    ]],

    ["CUP_B_BAF_Coyote_L2A1_D" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.4,0.9],    [2,5,6,7,8]  ]
    ]],

    ["CUP_B_BAF_Coyote_L2A1_W" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.4,0.9],    [2,5,6,7,8]  ]
    ]],

    ["CUP_B_BAF_Coyote_GMG_W" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.4,0.9],    [2,5,6,7,8]  ]
    ]],

    ["CUP_B_BAF_Coyote_GMG_D" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.4,0.9],    [2,5,6,7,8]  ]
    ]],

    ["CUP_B_Wolfhound_GMG_GB_W" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.2,1.47],    [5,6]  ],
        [1,         [0,-4,1.47],      [7,8]  ]
    ]],

    ["CUP_B_Wolfhound_LMG_GB_D" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.2,1.47],    [5,6]  ],
        [1,         [0,-4,1.47],      [7,8]  ]
    ]],

    ["CUP_B_Wolfhound_HMG_GB_D" call A3A_fnc_classNameToModel,[
        [1,         [0,-3.2,1.47],    [5,6]  ],
        [1,         [0,-4,1.47],      [7,8]  ]
    ]],

    ["CUP_I_MTLB_pk_NAPA" call A3A_fnc_classNameToModel,[
        [1,         [0,-1.6,-0.35],    []  ],
        [1,         [0,-2.4,-0.35],    []  ]
    ]],

    ["CUP_B_M1152_USA" call A3A_fnc_classNameToModel,[
        [1,         [0,-0.8,-1.62],    []  ],
        [1,         [0,-1.8,-1.62],    []  ]
    ]],

    ["CUP_B_HMMWV_SOV_USA" call A3A_fnc_classNameToModel,[
        [1,         [0,-1.35,-1.4],    [2,3]  ]
    ]],

    ["CUP_B_HMMWV_SOV_M2_USA" call A3A_fnc_classNameToModel,[
        [1,         [0,-1.35,-1.4],    [2,3]  ]
    ]],

    ["CUP_B_M1151_USA" call A3A_fnc_classNameToModel,[
        [1,         [0,-1.7,-1.6],    []  ]
    ]],

    ["CUP_B_HMMWV_Unarmed_USMC" call A3A_fnc_classNameToModel,[
      [1,         [0,-1.7,-1.6],    []  ]
    ]],

    ["CUP_B_HMMWV_Transport_USA" call A3A_fnc_classNameToModel,[
       [1,         [0,-1.7,-0.65],    []  ]
    ]]
];


//Offsets for adding new statics/boxes to the JNL script.
A3A_logistics_attachmentOffset append [
    //weapons                                                                   //location                  //rotation                  //size    //recoil            //description
    ["CUP_B_TOW_TriPod_USMC" call A3A_fnc_classNameToModel,                     [0.0, -0.7, 1.12],          [0, 1, 0],                   2,      250],               //TOW launcher
    ["CUP_B_TOW2_TriPod_USMC" call A3A_fnc_classNameToModel,                    [0.0, -0.7, 1.12],          [0, 1, 0],                  2,      250],               //TOW launcher
    ["CUP_B_M2StaticMG_USMC" call A3A_fnc_classNameToModel,                     [0.35, -0.5, 1.1],          [0, 1, 0],                  4,      100],               //M2HB machinegun
    ["CUP_B_SearchLight_static_USMC" call A3A_fnc_classNameToModel,             [0, -0.1, 0.15],            [0, 1, 0],                  4,      100],               //M2HB machinegun
    ["CUP_O_KORD_high_RU" call A3A_fnc_classNameToModel,                        [0, -0.1, 1],             [0, 1, 0],                  4,      100],               //M2HB machinegun
    ["CUP_B_M2StaticMG_MiniTripod_USMC" call A3A_fnc_classNameToModel,          [0.3, -0.5, 0.95],          [0, 0, 0],                  4,      100],            //M2HB sitting machinegun
    ["CUP_B_DSHkM_MiniTriPod_CDF" call A3A_fnc_classNameToModel,                [-0.15, 0.3, 1.35],          [0, -1, 0],                  4,      100],            //M2HB sitting machinegun
    ["CUP_O_KORD_RU" call A3A_fnc_classNameToModel,                             [0, -0.20, 1.1],            [0, -1, 0],                  4,      100],            //M2HB sitting machinegun
    ["CUP_B_MK19_TriPod_USMC" call A3A_fnc_classNameToModel,                    [0, 0.3, 1.05],            [0, -1, 0],                 4,      100],        
    ["CUP_B_AGS_CDF" call A3A_fnc_classNameToModel,                             [0, 0.3, 1.07],             [0, -1, 0],                 4,      100],       
    ["CUP_O_Metis_RU" call A3A_fnc_classNameToModel,                            [0, 0.3, 1.13],            [0, -1, 0],                 4,      100],  
    ["CUP_O_SPG9_ChDKZ" call A3A_fnc_classNameToModel,                          [0, -0.5, 0.1],            [0, -1, 0],                 4,      100],     
    ["CUP_O_Kornet_RU" call A3A_fnc_classNameToModel,                           [0, -0.7, 0.77],            [0, 0, 0],                 2,      100],       
    ["CUP_B_DSHKM_ACR" call A3A_fnc_classNameToModel,                           [0.3, -0.5, 1.65],          [0, 1, 0],                  4,      100],             //DShKM
    ["CUP_B_ZU23_CDF" call A3A_fnc_classNameToModel,                            [-0.1,0,2],                 [0, -1, 0],                  2,        750],              //ZU-23
    ["CUP_B_Igla_AA_pod_CDF" call A3A_fnc_classNameToModel,                     [0.25,0,1.6],                  [0, 1, 0],                4,      250],
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
    "CUP_B_LR_Transport_GB_W", 
    "CUP_B_MTVR_BAF_WOOD", 
    "CUP_B_LR_Transport_CZ_W", 
    "CUP_B_T810_Unarmed_CZ_WDL", 
    "CUP_B_T810_Armed_CZ_WDL", 
    "CUP_B_BAF_Coyote_GMG_W", 
    "CUP_I_V3S_Covered_TKG",
    "CUP_B_Ural_CDF",
    "CUP_B_UAZ_Unarmed_ACR",
    "CUP_C_Datsun_Covered"
];

private _commonBlacklist = [ "C_Boat_Civil_01_F" call A3A_fnc_classNameToModel, "B_Boat_Transport_01_F" call A3A_fnc_classNameToModel, "C_Boat_Transport_02_F" call A3A_fnc_classNameToModel];

//if you want a weapon to be loadable you need to add it to this as a array of [model, [blacklist specific vehicles]],
//if the vehicle is in the coveredVehicles array dont add it to the blacklist in this array.
A3A_logistics_weapons append [
    ["CUP_B_DSHkM_MiniTriPod_CDF" call A3A_fnc_classNameToModel,[]],
    ["CUP_O_KORD_RU" call A3A_fnc_classNameToModel,[]],
    ["CUP_O_KORD_high_RU" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_SearchLight_static_USMC" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_TOW_TriPod_USMC" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_TOW2_TriPod_USMC" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_M2StaticMG_USMC" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_M2StaticMG_MiniTripod_USMC" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_MK19_TriPod_USMC" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_DSHKM_ACR" call A3A_fnc_classNameToModel,[]],
    ["CUP_O_Metis_RU" call A3A_fnc_classNameToModel,["CUP_I_Hilux_unarmed_IND_G_F" call A3A_fnc_classNameToModel]],
    ["CUP_O_Kornet_RU" call A3A_fnc_classNameToModel,[]],
    ["CUP_O_SPG9_ChDKZ" call A3A_fnc_classNameToModel,["CUP_I_Hilux_unarmed_IND_G_F" call A3A_fnc_classNameToModel]],
    ["CUP_B_AGS_CDF" call A3A_fnc_classNameToModel,[]],
    ["CUP_B_ZU23_CDF" call A3A_fnc_classNameToModel, ["C_Boat_Civil_01_F" call A3A_fnc_classNameToModel, "B_Boat_Transport_01_F" call A3A_fnc_classNameToModel, "C_Boat_Transport_02_F" call A3A_fnc_classNameToModel, "CUP_I_Hilux_unarmed_IND_G_F" call A3A_fnc_classNameToModel]],
    ["CUP_B_2b14_82mm_ACR" call A3A_fnc_classNameToModel, _commonBlacklist],
    ["CUP_B_M252_USMC" call A3A_fnc_classNameToModel, _commonBlacklist],
    ["CUP_B_Igla_AA_pod_CDF" call A3A_fnc_classNameToModel, ["C_Boat_Civil_01_F" call A3A_fnc_classNameToModel, "B_Boat_Transport_01_F" call A3A_fnc_classNameToModel, "C_Boat_Transport_02_F" call A3A_fnc_classNameToModel, "CUP_I_Hilux_unarmed_IND_G_F" call A3A_fnc_classNameToModel]]
];

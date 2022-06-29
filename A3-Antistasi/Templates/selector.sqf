/*
Author: Meerkat
  This file controls the selection of templates based on the mods loaded and map used.
  When porting new mods/maps be sure to add them to their respective sections!

Scope: Server
Environment: Any (Inherits scheduled from initVarServer)
Public: No
Dependencies:
  <SIDE> teamplayer The side of the rebels, usually only independent or west.
  <FILES> "Templates\" Assumes the existence of files under "Templates\". Please check here before deleting/renaming one.
*/
private _filename = "selector.sqf";
//Map checker
private _aridMaps = ["altis", "takistan"];

tropicalMaps = ["tanoa", "cam_lao_nam", "vn_khe_sanh", "rhspkl"]; //global because used by QRF code

private _temperateMaps = ["panthera3", "enoch", "vt7", "cup_chernarus_a3", "napf", "abramia", "taviana", "gm_weferlingen_summer", "blud_vidda"];
//Mod selector

private _terrainName = toLower worldName;

//Reb Templates
A3A_Reb_template = switch(true) do {
    case (A3A_has3CBFactions && {A3A_hasGlobMob}): {
        ["Templates\NewTemplates\3CBF\3CBF_Reb_CHDZZ_CW.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using 3CBF CW Template", _filename] call A3A_fnc_log;
        "GM_3CBFactions"
    };
    case (A3A_has3CBFactions): {
        switch(threecbfOccupantFaction) do {
            case(4): {
                ["Templates\NewTemplates\3CBF\3CBF_Reb_CHDZZ_CW.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using 3CBF CW Template", _filename] call A3A_fnc_log;
            };
            default {
                switch(true) do {
                    case (_terrainName in tropicalMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_Reb_SDK.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using Tropical SDK Template", _filename] call A3A_fnc_log;
                    };
                    case (_terrainName in _temperateMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_Reb_CHDZZ.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using Temperate CHDZZ Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\3CBF\3CBF_Reb_FIA.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using Arid FIA Template", _filename] call A3A_fnc_log;
                    };
                };
            };
        };
        "3CBFactions"
    };
    case (A3A_hasRHS): {
        switch(true) do {
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\RHS\RHS_Reb_SDK.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using SDK Template", _filename] call A3A_fnc_log;
            };
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\RHS\RHS_Reb_NAPA_Temperate.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Temperate Napa Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\RHS\RHS_Reb_FIA_Arid.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid Napa Templates", _filename] call A3A_fnc_log;
            };
        };
        "RHS"
    };
    case (A3A_hasCup): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\Cup\Cup_Reb_NAPA_Temperate.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Temperate NAPA Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\CUP\CUP_Reb_FIA_Arid.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid FIA Templates", _filename] call A3A_fnc_log;
            };
        };
        "CUP"
    };
    case (A3A_hasAegis): {
        switch(true) do {
            ["Templates\NewTemplates\Aegis\Aegis_Reb_CHDKZ.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
            [2, "Using Temperate CHDKZ Template", _filename] call A3A_fnc_log;
        };
    };
    case (A3A_hasEmp): {
        ["Templates\NewTemplates\CW\CW_Reb_ALLIANCE.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Rebel Alliance Template", _filename] call A3A_fnc_log;
        "Emp"
    };
    case (A3A_hasCW): {
        ["Templates\NewTemplates\CW\CW_Reb_MAN.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Mandalorian Template", _filename] call A3A_fnc_log;
        "CW"
    };
    case (A3A_hasHalo): {
        ["Templates\NewTemplates\Halo\Halo_Reb_Temperate.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Halo Reb Template", _filename] call A3A_fnc_log;
        "Halo"
    };
    case (A3A_hasIFA): {
        switch(true) do {
            case (_terrainName in tropicalMaps);
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\IFA\IFA_Reb_POL_Temperate.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Temperate WW2 Polish Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\IFA\IFA_Reb_POL_Arid.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Arid WW2 Polish Templates", _filename] call A3A_fnc_log;
            };
        };
        "IFA"
    };
    case (A3A_hasVN && {A3A_hasUR}): {
        ["Templates\NewTemplates\VN_UR\VN_UR_Reb_KPNLF.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Unsung KPNLF Template", _filename] call A3A_fnc_log;
        "VN"
    };
    case (A3A_hasVN): {
        ["Templates\NewTemplates\VN\VN_Reb_KPNLF.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using KPNLF Template", _filename] call A3A_fnc_log;
        "VN"
    };
    default {
        switch(true) do {
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_Reb_SDK.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using SDK Template", _filename] call A3A_fnc_log;
            };
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_Reb_FIA_Temperate.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using temperate FIA Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Vanilla\Vanilla_Reb_FIA_Arid.sqf", independent] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid FIA Templates", _filename] call A3A_fnc_log;
            };
        };
        "Vanilla"
    };
};

//Occ Templates
A3A_Occ_template = switch(true) do {
    case (A3A_hasGlobMobAaf): {
        ["Templates\NewTemplates\GM\GMAAF_AI_AAF.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using GM AAF Template", _filename] call A3A_fnc_log;
        "Vanilla" //intentionally, as GM expands vanilla
    };
    case (A3A_has3CBFactions && {A3A_hasGlobMob}): {
        ["Templates\NewTemplates\GM_3CBF\GM_3CBF_AI_NATO.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using GM_3CBF NATO Cold War Template", _filename] call A3A_fnc_log;
        "3CBFactions_GM"
    };
    case (A3A_has3CBFactions): {
        switch(threecbfOccupantFaction) do {
            case (0): {
                switch(true) do {
                    case (_terrainName in tropicalMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_USAF_Tropical.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using tropical USAF Template", _filename] call A3A_fnc_log;
                    };
                    case (_terrainName in _temperateMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_USAF_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using temperate USAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_USAF_Arid.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using arid USAF Template", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (1): {
                ["Templates\NewTemplates\3CBF\3CBF_AI_CDF.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using CDF Template", _filename] call A3A_fnc_log;
            };
            case (2): {
                ["Templates\NewTemplates\3CBF\3CBF_AI_HIL.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using HIL Template", _filename] call A3A_fnc_log;
            };
            case (3): {
                ["Templates\NewTemplates\3CBF\3CBF_AI_TKA.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using TKA Template", _filename] call A3A_fnc_log;
            };
            case (4): { //US Cold War
                ["Templates\NewTemplates\3CBF\3CBF_AI_USCW.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using US Cold War Template", _filename] call A3A_fnc_log;
            };
        };
        "3CBFactions"
    };
    case (A3A_hasRHS): {
        switch(rhsOccupantFaction) do {
            case (0): { //USAF
                switch(true) do {
                    case (_terrainName in tropicalMaps);
                    case (_terrainName in _temperateMaps): {
                        ["Templates\NewTemplates\RHS\RHS_AI_USAF_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using temperate USAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\RHS\RHS_AI_USAF_Arid.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using arid USAF Template", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (1): { //CDF
                ["Templates\NewTemplates\RHS\RHS_AI_CDF.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using CDF Template", _filename] call A3A_fnc_log;
            };
        };
        "RHS"
    };
    case (A3A_hasFFAA): {
        ["Templates\NewTemplates\FFAA\FFAA_AI_SPA_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using FFAA Spanish Template", _filename] call A3A_fnc_log;
        "FFAA"
    };
    case (A3A_hasSwe): {
        ["Templates\NewTemplates\Swe\Swe_AI_SweAF_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Swedish Forces Pack Template", _filename] call A3A_fnc_log;
        "Swe"
    };
    case (A3A_hasBun): {
        ["Templates\NewTemplates\BWMod\BW_AI_BUN_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Bundeswehr Template", _filename] call A3A_fnc_log;
        "Bun"
    };
    case (A3A_hasCup): {
        switch(cupOccupantFaction) do {
            case (0): { //USAF
                switch(true) do {
                    case (_terrainName in tropicalMaps): {
                        ["Templates\NewTemplates\CUP\CUP_AI_USAF_Tropical.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using tropical USAF Template", _filename] call A3A_fnc_log;
                    };
                    case (_terrainName in _temperateMaps): {
                        ["Templates\NewTemplates\CUP\CUP_AI_USAF_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using arctic USAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\CUP\Cup_AI_USAF_Arid.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using arid USAF Templates", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (1): { //BAF
                switch(true) do {
                    case (_terrainName in tropicalMaps): {
                        ["Templates\NewTemplates\Cup\Cup_AI_BAF_Tropical.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using tropical BAF Template", _filename] call A3A_fnc_log;
                    };
                    case (_terrainName in _temperateMaps): {
                        ["Templates\NewTemplates\Cup\Cup_AI_BAF_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using temperate BAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\Cup\Cup_AI_BAF_Arid.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using arid BAF Templates", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (2): { //CDF
                switch(true) do {
                    ["Templates\NewTemplates\Cup\Cup_AI_CDF.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                    [2, "Using CDF Template", _filename] call A3A_fnc_log;
                };
            };
            case (3): { //HIL
                ["Templates\NewTemplates\Cup\Cup_AI_HIL.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using HIL Template", _filename] call A3A_fnc_log;
            };
        };
        "CUP"
    };
        case (A3A_hasAegis): {
        ["Templates\NewTemplates\Aegis\Aegis_AI_EUROFOR.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Aegis EUROFOR Template", _filename] call A3A_fnc_log;
        "Vanilla" //intentionally, as aegis expands vanilla
    };
    case (A3A_hasEmp): {
        ["Templates\NewTemplates\CW\CW_AI_IMP.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Empire Template", _filename] call A3A_fnc_log;
        "Emp"
    };
    case (A3A_hasCW): {
        ["Templates\NewTemplates\CW\CW_AI_REP.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Republic Template", _filename] call A3A_fnc_log;
        "CW"
    };
    case (A3A_hasHalo): {
        ["Templates\NewTemplates\Halo\Halo_AI_UNSC_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Halo UNSC Template", _filename] call A3A_fnc_log;
        "Halo"
    };
    case (A3A_hasIFA): {
        switch(true) do {
            case (_terrainName in tropicalMaps);
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\IFA\IFA_AI_WEH_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Temperate WW2 German Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\IFA\IFA_AI_WEH_Arid.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Arid WW2 German Templates", _filename] call A3A_fnc_log;
            };
        };
        "IFA"
    };
    case (A3A_hasVN && {A3A_hasUR}): {
        ["Templates\NewTemplates\VN_UR\VN_UR_MACV.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Unsung VN MACV Template", _filename] call A3A_fnc_log;
        "VN"
    };
    case (A3A_hasVN): {
        ["Templates\NewTemplates\VN\VN_MACV.sqf", west] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using VN MACV Template", _filename] call A3A_fnc_log;
        "VN"
    };
    default {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_NATO_Temperate.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using temperate NATO Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_NATO_Arid.sqf", west] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid NATO Template", _filename] call A3A_fnc_log;
            };
        };
        "Vanilla"
    };
};

//Inv Templates
A3A_Inv_template = switch(true) do{
    case (A3A_has3CBFactions && {A3A_hasGlobMob}): {
        ["Templates\NewTemplates\GM_3CBF\GM_3CBF_AI_PACT.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using GM_3CBF Warsaw Pact Cold War Template", _filename] call A3A_fnc_log;
        "3CBFactions_GM"
    };
    case (A3A_has3CBFactions): {
        switch(threecbfOccupantFaction) do {
            case(4): {
                ["Templates\NewTemplates\3CBF\3CBF_AI_SOV.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using SOV Template", _filename] call A3A_fnc_log;
            };
            default {
                switch(true) do {
                    case (_terrainName in _temperateMaps);
                    case (_terrainName in tropicalMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_AFRF_Temperate.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using temperate AFRF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_AFRF_Arid.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using arid AFRF Template", _filename] call A3A_fnc_log;
                    };
                };
            };
        };
        "3CBFactions"
    };
    case (A3A_hasRHS): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\RHS\RHS_AI_AFRF_Temperate.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using temperate AFRF Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\RHS\RHS_AI_AFRF_Arid.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid AFRF Template", _filename] call A3A_fnc_log;
            };
        };
        "RHS"
    };
    case (A3A_hasCup): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\Cup\Cup_AI_AFRF_Temperate.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using temperate AFRF Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Cup\Cup_AI_AFRF_Arid.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid AFRF Template", _filename] call A3A_fnc_log;
            };
        };
        "CUP"
    };
        case (A3A_hasAegis): {
        ["Templates\NewTemplates\Aegis\Aegis_AI_AFRF.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Aegis Russia Template", _filename] call A3A_fnc_log;
        "Vanilla" //intentionally, as aegis expands vanilla
    };
    case (A3A_hasEmp): {
        ["Templates\NewTemplates\CW\CW_AI_CISHol.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using CIS Holdout Template", _filename] call A3A_fnc_log;
        "Emp"
    };
    case (A3A_hasCW): {
        ["Templates\NewTemplates\CW\CW_AI_CIS.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using CIS Template", _filename] call A3A_fnc_log;
        "CW"
    };
    case (A3A_hasHalo): {
        ["Templates\NewTemplates\Halo\Halo_AI_INS_Temperate.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Halo Ins Template", _filename] call A3A_fnc_log;
        "Halo"
    };
    case (A3A_hasIFA): {
        switch(true) do {
            case (_terrainName in tropicalMaps);
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\IFA\IFA_AI_SOV_Temperate.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Temperate WW2 Soviet Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\IFA\IFA_AI_SOV_Arid.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using Arid WW2 Soviet Templates", _filename] call A3A_fnc_log;
            };
        };
        "IFA"
    };
    case (A3A_hasVN && {A3A_hasUR}): {
        ["Templates\NewTemplates\VN_UR\VN_UR_PAVN.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Unsung VN PAVN Template", _filename] call A3A_fnc_log;
        "VN"
    };
    case (A3A_hasVN): {
        ["Templates\NewTemplates\VN\VN_PAVN.sqf", east] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using VN PAVN Template", _filename] call A3A_fnc_log;
        "VN"
    };
    default {
        switch(true) do {//This one (vanilla) works differently so that we don't get DLC kit on modded maps.
            case (_terrainName in _temperateMaps);
            case (_terrainName in tropicalMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_CSAT_Temperate.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using temperate CSAT Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_CSAT_Arid.sqf", east] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using arid CSAT Template", _filename] call A3A_fnc_log;
            };
        };
        "Vanilla"
    };
};

//Civ Templates
A3A_Civ_template = switch(true) do {
    case (A3A_hasGlobMobAaf): {
        ["Templates\NewTemplates\GM\GMAAF_Civ.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using GM AAF Civ template", _filename] call A3A_fnc_log;
        "Vanilla" //intentionally, as gm aaf expands vanilla
    };
    case (A3A_has3CBFactions && {A3A_hasGlobMob}): {
        if(_terrainName == "takistan") then {
            ["Templates\NewTemplates\3CBF\3CBF_Civ_Arid.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
            [2, "Using 3CB Civ Temperate template", _filename] call A3A_fnc_log;
        } else {
            ["Templates\NewTemplates\GM_3CBF\GM_3CBF_Civ.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
            [2, "Using 3CBF CW Civ template", _filename] call A3A_fnc_log;
        };
        "3CBFactions_GM"
    };
    case (A3A_has3CBFactions): {
        switch(threecbfOccupantFaction) do {
            case(4): {
                if(_terrainName == "takistan") then {
                    ["Templates\NewTemplates\3CBF\3CBF_Civ_Arid.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                    [2, "Using 3CB Civ Temperate template", _filename] call A3A_fnc_log;
                } else {
                    ["Templates\NewTemplates\3CBF\3CBF_CivCW.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                    [2, "Using 3CBF CW Civ template", _filename] call A3A_fnc_log;
                };
            };
            default {
                switch (true) do {
                    case (_terrainName in ["altis", "stratis"]): {
                        ["Templates\NewTemplates\3CBF\3CBF_Civ_Temperate.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using 3CB Civ Temperate template", _filename] call A3A_fnc_log;
                    };
                    case (_terrainName in _aridMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_Civ_Arid.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using 3CB Civ Temperate template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\3CBF\3CBF_Civ_Temperate.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                        [2, "Using 3CB Civ Temperate template", _filename] call A3A_fnc_log;
                    };
                };
            };
        };
        "3CBFactions"
    };
    case (A3A_hasCup): {
        switch (true) do {
            case (_terrainName in ["altis", "stratis"]): {
                ["Templates\NewTemplates\CUP\Cup_Civ_Temperate.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using CUP Civ Temperate template", _filename] call A3A_fnc_log;
            };
            case (_terrainName in _aridMaps): {
                ["Templates\NewTemplates\CUP\Cup_Civ_Arid.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using CUP Civ default template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\CUP\Cup_Civ_Temperate.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
                [2, "Using CUP Civ Temperate template", _filename] call A3A_fnc_log;
            };
        };
        "CUP"
    };
    case (A3A_hasRHS): {
        ["Templates\NewTemplates\RHS\RHS_Civ.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using RHS Civ Template", _filename] call A3A_fnc_log;
        "RHS"
    };
    case (A3A_hasCW): {
        ["Templates\NewTemplates\CW\CW_Civ.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Clone Wars Civ Template", _filename] call A3A_fnc_log;
        "CW"
    };
    case (A3A_hasIFA): {
        ["Templates\NewTemplates\IFA\IFA_Civ.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using IFA CIV Template", _filename] call A3A_fnc_log;
		"IFA"
    };
    case (A3A_hasVN): {
        ["Templates\NewTemplates\VN\VN_CIV.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using VN CIV Template", _filename] call A3A_fnc_log;
        "VN"
    };
    default {
        ["Templates\NewTemplates\Vanilla\Vanilla_Civ.sqf", civilian] call A3A_fnc_compatibilityLoadFaction;
        [2, "Using Vanilla Civ Template", _filename] call A3A_fnc_log;
        "Vanilla"
    };
};

// This will be adapted at a later step
[2,"Reading Addon mod files.",_fileName] call A3A_fnc_log;
//Addon pack loading goes here.
A3A_LoadedContentAddons = [];
if (A3A_hasIvory) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\ivory_Civ.sqf";
  A3A_LoadedContentAddons pushBack "IvoryCars";
  [2, "Using Addon Ivory Cars Template", _filename] call A3A_fnc_log;
};
if (A3A_hasTCGM) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\tcgm_Civ.sqf";
  A3A_LoadedContentAddons pushBack "TCGM_BikeBackPack";
  [2, "Using Addon TCGM_BikeBackPack Template", _filename] call A3A_fnc_log;
};
if (A3A_hasD3S) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\d3s_Civ.sqf";
  A3A_LoadedContentAddons pushBack "D3SCars";
  [2, "Using Addon D3S Cars Template", _filename] call A3A_fnc_log;
};
if (A3A_hasRDS) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\rds_Civ.sqf";
  A3A_LoadedContentAddons pushBack "RDSCars";
  [2, "Using Addon RDS Cars Template", _filename] call A3A_fnc_log;
};
A3A_LoadedContentAddons = A3A_LoadedContentAddons apply {toLower _x};

//Logistics node loading is done here
[2,"Reading Logistics Node files.",_fileName] call A3A_fnc_log;
call compileScript ["Templates\NewTemplates\Vanilla\Vanilla_Logistics_Nodes.sqf"];//Always call vanilla as it initialises the arrays.
if (A3A_hasRHS) then {call compileScript ["Templates\NewTemplates\RHS\RHS_Logistics_Nodes.sqf"]};
if (A3A_has3CBFactions) then {call compileScript ["Templates\NewTemplates\3CBF\3CBF_Logistics_Nodes.sqf"]};
if (A3A_hasCup) then {call compileScript ["Templates\NewTemplates\CUP\Cup_Logistics_Nodes.sqf"];};
if (A3A_hasAegis) then {call compileScript ["Templates\NewTemplates\Aegis\Aegis_Logistics_Nodes.sqf"];};
if (A3A_hasIFA) then {call compileScript ["Templates\NewTemplates\IFA\IFA_Logistics_Nodes.sqf"];};
if (A3A_hasGlobMob) then {call compileScript ["Templates\NewTemplates\GM\GM_Logistics_Nodes.sqf"];};
if (A3A_hasVN) then {call compile preProcessFileLineNumbers "Templates\NewTemplates\VN\VN_Logistics_Nodes.sqf"};
if (A3A_hasHalo) then {call compile preProcessFileLineNumbers "Templates\NewTemplates\Halo\Halo_Logistics_Nodes.sqf"};
if (A3A_hasCW) then {call compile preProcessFileLineNumbers "Templates\NewTemplates\CW\CW_Logistics_Nodes.sqf"};
if (A3A_hasUR) then {call compile preProcessFileLineNumbers "Templates\NewTemplates\VN_UR\VN_UR_Logistics_Nodes.sqf"};
if (A3A_hasSwe) then {call compile preProcessFileLineNumbers "Templates\NewTemplates\Swe\Swe_Logistics_Nodes.sqf"};
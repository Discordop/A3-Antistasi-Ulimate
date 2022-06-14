/*
Author: Meerkat
  This file handles the detection of mods.
  Best practice is to detect the presence of a CfgPatches entry, but there are alternatives.
  To add a new mod, give it a hadMod variable with the rest, then add an if (isClass) entry like the FFAA one. (You could even copy/paste the FFAA one and replace its calls with the ones you need.)

Scope: All
Environment: Any (Scheduled Inherited from fn_initVarCommon.sqf)
Public: No
*/

//Var initialisation
private _filename = "detector.sqf";

A3A_hasRHS = false;
A3A_has3CBFactions = false;
A3A_hasVN = false;
A3A_hasUR = false;
A3A_hasIvory = false;
A3A_hasTCGM = false;
A3A_hasADV = false;
A3A_hasD3S = false;
A3A_hasRDS = false;
A3A_hasCup = false;
A3A_hasIFA = false;
A3A_hasAegis = false;
A3A_hasGlobMob = false;
A3A_hasGlobMobAaf = false;
A3A_hasCW = false;
A3A_hasHalo = false;
A3A_hasSwe = false;
A3A_hasEmp = false;
A3A_hasBun = false;


//Aegis submods
private _activeAegis = false;
private _activeAtlas = false;
private _activeAtlasOpfor = false;
private _activePolice = false;

//CUP submods
private _activeCupVehicles = false;
private _activeCupUnits = false;
private _activeCupWeapons = false;

//RHS submods
private _activeGref = false;
private _activeAfrf = false;
private _activeUsaf = false;
private _activeSaf = false;

//Actual Detection
//IFA Detection
if (isClass (configfile >> "CfgPatches" >> "LIB_core")) then {
  A3A_hasIFA = true;
  [2,"Iront Front Detected.",_fileName] call A3A_fnc_log;
};

//Clone Wars Detection
if (isClass (configFile >> "CfgFactionClasses" >> "JLTS_CIS") && isClass (configFile >> "CfgFactionClasses" >> "442_CIS") && isClass (configFile >> "CfgFactionClasses" >> "3AS_CIS") && isClass (configFile >> "CfgFactionClasses" >> "LS_CIS")) then {
  A3A_hasCW = true;
  [2,"Clone Wars Detected.",_fileName] call A3A_fnc_log;
};

//Empire Detection
if (isClass (configFile >> "CfgFactionClasses" >> "JMSLLTE_empire_fact")) then {
  A3A_hasEmp = true;
  [2,"JMs Empire Detected.",_fileName] call A3A_fnc_log;
};


//Halo Detection
if (isClass (configFile >> "CfgFactionClasses" >> "OPTRE_UNSC")) then {
  A3A_hasHalo = true;
  [2,"Op Trebuchet Detected.",_fileName] call A3A_fnc_log;
};

//BWMod Detection
if (isClass (configFile >> "CfgFactionClasses" >> "BWA3_Faction_Fleck")) then {
  A3A_hasBun = true;
  [2,"BWMod Detected.",_fileName] call A3A_fnc_log;
};

if (isClass (configFile >> "CfgPatches" >> "vn_weapons")) then {
  A3A_hasVN = true;
  [2,"SOG PF Detected.",_fileName] call A3A_fnc_log;
};

if (A3A_hasVN && {isClass (configFile >> "CfgPatches" >> "uns_main")}) then {
  A3A_hasUR = true;
  [2,"Unsung Redux Detected.",_fileName] call A3A_fnc_log;
};

//3CB Factions Detection
if (isClass (configfile >> "CfgPatches" >> "UK3CB_Factions_Vehicles_SUV")) then {
  A3A_has3CBFactions = true;
  [2,"3CB Factions Detected.",_fileName] call A3A_fnc_log;
};

if (isClass (configfile >> "CfgPatches" >> "gm_core")) then {
  A3A_hasGlobMob = true;
  [2,"Global Mobilization Detected.",_fileName] call A3A_fnc_log;
};

if (A3A_hasGlobMob && {isClass (configfile >> "CfgVehicles" >> "gmx_aaf_leopard1a1a1_wdl")}) then {
  A3A_hasGlobMobAaf = true;
  [2,"GM AAF Detected.",_fileName] call A3A_fnc_log;
};

//FFAA Detection
if (isClass (configfile >> "CfgPatches" >> "ffaa_armas")) then {
  private _text = "FFAA detected, but it is no longer supported.";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
  ["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

//Ivory Car Pack Detection
if (isClass (configfile >> "CfgPatches" >> "Ivory_Data")) then {A3A_hasIvory = true; [2,"Ivory Cars Detected.",_fileName] call A3A_fnc_log;};

//TCGM_BikeBackpack Detection
if (isClass (configfile >> "CfgPatches" >> "TCGM_BikeBackpack")) then {A3A_hasTCGM = true; [2,"TCGM Detected.",_fileName] call A3A_fnc_log;};

//ADV-CPR Pike Edition detection
if (A3A_hasAceMedical && isClass (configFile >> "CfgPatches" >> "adv_aceCPR")) then {A3A_hasADV = true; [2,"ADV Detected.",_fileName] call A3A_fnc_log;};

//D3S Car Pack Detection !!!--- Currently using vehicle classname check. Needs config viewer to work to find cfgPatches. ---!!!
if (isClass (configfile >> "CfgVehicles" >> "d3s_baumaschinen")) then {A3A_hasD3S = true; [2,"D3S Detected.",_fileName] call A3A_fnc_log;};

//RDS Car Pack Detection
if (isClass (configfile >> "CfgPatches" >> "rds_A2_Civilians")) then {A3A_hasRDS = true; [2,"RDS Cars Detected.",_fileName] call A3A_fnc_log;};

//RHS AFRF Detection
if (isClass (configFile >> "CfgFactionClasses" >> "rhs_faction_vdv")) then {
	_activeAfrf = true;
	diag_log format ["%1: [Antistasi] | INFO | initVar | RHS AFRF Detected.",servertime];
};
if (isClass (configFile >> "CfgFactionClasses" >> "rhs_faction_usarmy")) then {
	_activeUsaf = true;
	diag_log format ["%1: [Antistasi] | INFO | initVar | RHS USAF Detected.",servertime];
};
if (isClass (configFile >> "CfgFactionClasses" >> "rhsgref_faction_tla")) then {
	_activeGref = true;
	diag_log format ["%1: [Antistasi] | INFO | initVar | RHS GREF Detected.",servertime];
};
if (isClass (configFile >> "CfgFactionClasses" >> "rhssaf_faction_army")) then {
	_activeSaf = true;
	diag_log format ["%1: [Antistasi] | INFO | initVar | RHS SAF Detected.",servertime];
};

if (_activeAfrf || _activeUsaf || _activeGref || _activeSaf) then {
	if !(_activeAfrf && _activeUsaf && _activeGref && _activeSaf) then {
    private _text = "RHS USAF or RHS GREF or RHS AFRF or RHS SAF detected, but not all of them. Ensure that RHS USAF, RHS GREF, RHS AFRF, RHS SAF mods are actually enabled and relaunch the mission.";
    systemChat _text;
    [1, _text, _fileName] call A3A_fnc_log;
		["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
	} else {
    A3A_hasRHS = true;
  };
};


//Arma 3 Aegis detection
if(isClass (configFile >> "CfgFactionClasses" >> "BLU_A_F")) then {
  _activeAegis = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | Arma 3 Aegis Detected.", servertime];
};


//Arma 3 Atlas detection
if (isClass (configFile >> "CfgFactionClasses" >> "Atlas_BLU_G_F")) then {
  _activeAtlas = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | Arma 3 Atlas Detected.", servertime];
};

//Arma 3 Atlas - Opposing Forces detection
if (isClass (configFile >> "CfgFactionClasses" >> "Opf_OPF_P_F")) then {
  _activeAtlasOpfor = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | Arma 3 Atlas Detected.", servertime];
};

//Arma 3 - Police detection
if (isClass (configFile >> "CfgFactionClasses" >> "Police_IND_P_F")) then {
  _activePolice = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | Arma 3 Police Detected.", servertime];
};

if(_activeAegis && _activeAtlas && _activeAtlasOpfor && _activePolice) then {
  A3A_hasAegis = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | All Aegis mods have been detected.", servertime];
}
else {
  if(_activeAegis || _activeAtlas || _activeAtlasOpfor || _activePolice) then {
    private _text = "Arma 3 Aegis or Arma 3 Atlas or Arma 3 Atlas - Opposing Forces or Arma 3 - Police detected, but not all of them. Ensure that Aegis, Atlas, Atlas - Oppsoing Forces and Police mods are actually enabled and relaunch the mission.";
    systemChat _text;
    [1, _text, _fileName] call A3A_fnc_log;
    ["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
  };
};

//CUP Units detection
if(isClass (configFile >> "CfgFactionClasses" >> "CUP_B_US")) then {
  _activeCupUnits = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | CUP Units Detected.", servertime];
};

//CUP Weapons detection
if (isClass (configFile >> "CfgWeapons" >> "CUP_lmg_M60")) then {
  _activeCupWeapons = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | CUP Weapons Detected.", servertime];
};

//CUP Vehicles detection
if (isClass (configFile >> "CfgVehicles" >> "CUP_B_T72_CDF")) then {
  _activeCupVehicles = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | CUP Vehicles Detected.", servertime];
};

if(_activeCupUnits && _activeCupWeapons && _activeCupVehicles) then {
  A3A_hasCup = true;
  diag_log format ["%1: [Antistasi] | INFO | initVar | All CUP mods have been detected.",servertime];
} else {
  //if at least one of these mods enabled - shut down mission
  if(_activeCupUnits || _activeCupWeapons || _activeCupVehicles) then {
    private _text = "One of CUP mods detected, but not all of them. Ensure that CUP Vehicles, CUP Units and CUP Weapons mods are actually enabled and relaunch the mission.";
    systemChat _text;
    [1, _text, _fileName] call A3A_fnc_log;
    ["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
  };
};

//Swedish Forces Pack Detection
if (isClass (configfile >> "CfgFactionClasses" >> "sfp_swe_1990")) then {
  A3A_hasSwe = true;
  [2,"Swedish Forces Pack Detected.",_fileName] call A3A_fnc_log;
};

if (A3A_has3CBFactions && (!_activeAfrf || !_activeUsaf || !_activeGref || !_activeSaf)) then {
  private _text = "3CB Factions should be used together with all RHS mods - AFRF, USAF, GREF and SAF. Enable those mods to proceed.";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

if((_activeAfrf || _activeUsaf || _activeGref || _activeSaf) && (_activeCupUnits || _activeCupWeapons || _activeCupVehicles)) then {
	private _text = "CUP Units/Vehicles/Weapons and RHS simultaneously are not supported and leads to inconsistent and buggy experience. Choose either RHS or CUP modset to proceed.";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

if (A3A_hasAceMedical && isClass (configFile >> "CfgPatches" >> "LIB_core")) then {
	private _text = "IFA is detected but also Ace is loaded. Please remove Ace to fix this error.";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

if (!A3A_hasAceMedical && A3A_hasCW) then {
	private _text = "Clone Wars modset loaded but Ace is missing, please load Ace";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

if (!A3A_hasCup && A3A_hasSwe) then {
	private _text = "Swedish Forces Pack detected but CUP is not loaded";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

if (!A3A_hasCup && A3A_hasBun) then {
	private _text = "BWMod detected but CUP is not loaded";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

if (!A3A_hasCW && A3A_hasEmp) then {
	private _text = "JM's Empire detected but Clone Wars Mods are not loaded";
  systemChat _text;
  [1, _text, _fileName] call A3A_fnc_log;
	["modUnautorized",false,1,false,false] call BIS_fnc_endMission;
};

//No Mods found logging
if (!A3A_hasRHS && !A3A_hasCup && !A3A_hasAegis && !A3A_hasIFA && !A3A_hasCW && !A3A_hasHalo && !A3A_hasSwe && !A3A_hasEmp && !A3A_hasBun) then {[2,"No Side Replacement Mods Detected.",_fileName] call A3A_fnc_log;};
if (!A3A_hasIvory && !A3A_hasTCGM && !A3A_hasADV) then {[2,"No Addon Mods Detected.",_fileName] call A3A_fnc_log;};

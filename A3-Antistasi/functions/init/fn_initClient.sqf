#include "..\Garage\defineGarage.inc"

private _fileName = "initClient.sqf";

//Make sure logLevel is always initialised.
//This should be overridden by the server, as appropriate. Hence the nil check.
if (isNil "logLevel") then { logLevel = 2 };
scriptName "initClient.sqf";


[2,"initClient started",_fileName] call A3A_fnc_log;

//enables Discord Rich Presence if game client uses English language and mod is turned on
private _richPresenceFunc = missionNamespace getVariable "DiscordRichPresence_fnc_update";
private _isEnglish = ((localize "STR_antistasi_dialogs_generic_button_yes_text") == "Yes");
isDiscordRichPresenceActive = if (isNil "_richPresenceFunc" || {!_isEnglish}) then {false} else {true};
[2,format ["Discord Rich Presence: %1", str isDiscordRichPresenceActive],_fileName] call A3A_fnc_log;

call A3A_fnc_installSchrodingersBuildingFix;

if (!isServer) then {
	// get server to send us the current destroyedBuildings list, hide them locally
	"destroyedBuildings" addPublicVariableEventHandler {
		{ hideObject _x } forEach (_this select 1);
	};
	// need to wait until server has loaded the save
	[] spawn {
		waitUntil {(!isNil "serverInitDone")};
		[clientOwner, "destroyedBuildings"] remoteExecCall ["publicVariableClient", 2];
	};
};

// Headless clients install some support functions, register with the server and bail out
if (!hasInterface) exitWith {
	call A3A_fnc_initFuncs;
	call A3A_fnc_initVar;
	call A3A_fnc_loadNavGrid;
	[2,format ["Headless client version: %1",localize "STR_antistasi_credits_generic_version_text"],_fileName] call A3A_fnc_log;
	[2,format ["Headless client Antistasi Plus version: %1",localize "STR_antistasi_plus_credits_generic_version_text"],_fileName] call A3A_fnc_log;
	[clientOwner] remoteExec ["A3A_fnc_addHC",2];
};


waitUntil {!isNull player};
waitUntil {player == player};
//Disable player saving until they're fully ready, and have chosen whether to load their save.
player setVariable ["canSave", false, true];

if (!isServer) then {
	waitUntil {!isNil "initParamsDone"};
	call A3A_fnc_initFuncs;
	call A3A_fnc_initVar;
	[2,format ["MP client Antistasi version: %1",localize "STR_antistasi_credits_generic_version_text"],_fileName] call A3A_fnc_log;
	[2,format ["MP client Antistasi Plus version: %1",localize "STR_antistasi_plus_credits_generic_version_text"],_fileName] call A3A_fnc_log;
}
else {
	// SP or hosted, initFuncs/var run in serverInit
	waitUntil {sleep 0.5;(!isNil "serverInitDone")};
};
[] execVM "briefing.sqf";

_isJip = _this select 1;
if (side player == teamPlayer) then {
    player setVariable ["eligible",true,true];
};
musicON = false;
disableUserInput true;
cutText ["Waiting for Players and Server Init","BLACK",0];
[2,"Waiting for server...",_fileName] call A3A_fnc_log;
waitUntil {(!isNil "serverInitDone")};
cutText ["Starting Mission","BLACK IN",0];
[2,"Server loaded!",_fileName] call A3A_fnc_log;
[2,format ["JIP client: %1",_isJIP],_fileName] call A3A_fnc_log;
if (A3A_hasTFAR || A3A_hasTFARBeta) then {
    [] execVM "orgPlayers\radioJam.sqf";
};

[] call SCRT_fnc_common_set3dIcons;

if (!isNil "placementDone") then {_isJip = true};//workaround for BIS fail on JIP detection
private ["_colourTeamPlayer", "_colorInvaders"];
_colourTeamPlayer = teamPlayer call BIS_fnc_sideColor;
_colorInvaders = Invaders call BIS_fnc_sideColor;
_positionX = if (side player isEqualTo teamPlayer) then {position petros} else {getMarkerPos "respawn_west"};

{
	_x set [3, 0.33]
} forEach [_colourTeamPlayer, _colorInvaders];

_introShot = [
	_positionX, // Target position
	format ["%1",worldName], // SITREP text
	50, //  altitude
	50, //  radius
	90, //  degrees viewing angle
	0, // clockwise movement
	[
		["\a3\ui_f\data\map\markers\Nato\o_inf.paa", _colourTeamPlayer, markerPos "insertMrk", 1, 1, 0, "Insertion Point", 0],
		["\a3\ui_f\data\map\markers\Nato\o_inf.paa", _colorInvaders, markerPos "towerBaseMrk", 1, 1, 0, "Radio Towers", 0]
	]
] spawn BIS_fnc_establishingShot;

disableUserInput false;
player setVariable ["spawner",true,true];

if (isMultiplayer && {playerMarkersEnabled}) then {
	[] spawn A3A_fnc_playerMarkers;
};

[player] spawn A3A_fnc_initRevive;		// with ACE medical, only used for helmet popping & TK checks
[] spawn A3A_fnc_outOfBounds;
[] spawn A3A_fnc_darkMapFix;

if (!A3A_hasACE) then {
	[] spawn A3A_fnc_tags;
};

if (player getVariable ["pvp",false]) exitWith {
	lastVehicleSpawned = objNull;
	[player] call A3A_fnc_pvpCheck;
	[player] call A3A_fnc_dress;
	if (A3A_hasACE) then {[] call A3A_fnc_ACEpvpReDress};
	respawnTeamPlayer setMarkerAlphaLocal 0;

	player addEventHandler ["GetInMan", {_this call A3A_fnc_ejectPvPPlayerIfInvalidVehicle}];
	player addEventHandler ["SeatSwitchedMan", {[_this select 0, assignedVehicleRole (_this select 0) select 0, _this select 2] call A3A_fnc_ejectPvPPlayerIfInvalidVehicle}];
	player addEventHandler ["InventoryOpened", {
		_override = false;
		_boxX = typeOf (_this select 1);
		if ((_boxX == NATOAmmoBox) or (_boxX == CSATAmmoBox)) then {_override = true};
		_override
	}];

	_nameX = if (side player == Occupants) then {nameOccupants} else {nameInvaders};
	waituntil {!isnull (finddisplay 46)};
	gameMenu = (findDisplay 46) displayAddEventHandler ["KeyDown", {
		_handled = FALSE;
		if (_this select 1 == 207) then {
			if (!A3A_hasACEhearing) then {
				if (soundVolume <= 0.5) then {
					0.5 fadeSound 1;
					["Ear Plugs", "You've taken out your ear plugs.", true] call A3A_fnc_customHint;
				}
				else {
					0.5 fadeSound 0.1;
					["Ear Plugs", "You've inserted your ear plugs.", true] call A3A_fnc_customHint;
				};
			};
		}
		else {
			if (_this select 1 == 21) then {
				closedialog 0;
				_nul = createDialog "NATOPlayer";
			};
		};
		_handled
	}];
};

// Placeholders, should get replaced globally by the server
player setVariable ["score",0];
player setVariable ["moneyX",0];
player setVariable ["rankX",rank player];

player setVariable ["owner",player,true];
player setVariable ["punish",0,true];

stragglers = creategroup teamPlayer;
(group player) enableAttack false;

//Give the player the base loadout.
[player] call A3A_fnc_dress;

player setvariable ["compromised",0];
player addEventHandler ["FiredMan", {
	_player = _this select 0;
	if (captive _player) then {
		//if ({((side _x== Invaders) or (side _x== Occupants)) and (_x knowsAbout player > 1.4)} count allUnits > 0) then
		if ({if (((side _x == Occupants) or (side _x == Invaders)) and (_x distance player < 300)) exitWith {1}} count allUnits > 0) then {
			[_player,false] remoteExec ["setCaptive",0,_player];
			_player setCaptive false;
		}
		else {
			_city = [citiesX,_player] call BIS_fnc_nearestPosition;
			_size = [_city] call A3A_fnc_sizeMarker;
			_dataX = server getVariable _city;
			if (random 100 < _dataX select 2) then {
				if (_player distance getMarkerPos _city < _size * 1.5) then {
					[_player,false] remoteExec ["setCaptive",0,_player];
					_player setCaptive false;
					if (vehicle _player != _player) then {
						{if (isPlayer _x) then {[_x,false] remoteExec ["setCaptive",0,_x]; _x setCaptive false}} forEach ((assignedCargo (vehicle _player)) + (crew (vehicle _player)) - [player]);
					};
				};
			};
		};
	};
}];

if (isProjectileCamEnabled) then {
	["ADD"] call SCRT_fnc_misc_toggleProjectileCamEventHandler;
};

player addEventHandler ["InventoryOpened", {
	private ["_playerX","_containerX","_typeX"];
	_control = false;
	_playerX = _this select 0;
	if (captive _playerX) then {
		_containerX = _this select 1;
		_typeX = typeOf _containerX;
		if (((_containerX isKindOf "Man") and (!alive _containerX)) or (_typeX == NATOAmmoBox) or (_typeX == CSATAmmoBox)) then {
			if ({if (((side _x== Invaders) or (side _x== Occupants)) and (_x knowsAbout _playerX > 1.4)) exitWith {1}} count allUnits > 0) then{
				[_playerX,false] remoteExec ["setCaptive",0,_playerX];
				_playerX setCaptive false;
			}
			else {
				_city = [citiesX,_playerX] call BIS_fnc_nearestPosition;
				_size = [_city] call A3A_fnc_sizeMarker;
				_dataX = server getVariable _city;
				if (random 100 < _dataX select 2) then {
					if (_playerX distance getMarkerPos _city < _size * 1.5) then {
						[_playerX,false] remoteExec ["setCaptive",0,_playerX];
						_playerX setCaptive false;
					};
				};
			};
		};
	};
	_control
}];

player addEventHandler ["HandleHeal", {
	_player = _this select 0;
	if (captive _player) then {
		if ({((side _x== Invaders) or (side _x== Occupants)) and (_x knowsAbout player > 1.4)} count allUnits > 0) then {
			[_player,false] remoteExec ["setCaptive",0,_player];
			_player setCaptive false;
		}
		else {
			_city = [citiesX,_player] call BIS_fnc_nearestPosition;
			_size = [_city] call A3A_fnc_sizeMarker;
			_dataX = server getVariable _city;
			if (random 100 < _dataX select 2) then {
				if (_player distance getMarkerPos _city < _size * 1.5) then {
					[_player,false] remoteExec ["setCaptive",0,_player];
					_player setCaptive false;
				};
			};
		};
	};
}];

// notes:
// Static weapon objects are persistent through assembly/disassembly
// The bags are not persistent, object IDs change each time
// Static weapon position seems to follow bag1, but it's not an attached object
// Can use objectParent to identify backpack of static weapon

player addEventHandler ["WeaponAssembled", {
	private _veh = _this select 1;
	[_veh, teamPlayer] call A3A_fnc_AIVEHinit;		// will flip/capture if already initialized
	if (_veh isKindOf "StaticWeapon") then {
		if (not(_veh in staticsToSave)) then {
			staticsToSave pushBack _veh;
			publicVariable "staticsToSave";
		};
		_markersX = markersX select {sidesX getVariable [_x,sideUnknown] == teamPlayer};
		_pos = position _veh;
		[_veh] call A3A_fnc_logistics_addLoadAction;
		if (_markersX findIf {_pos inArea _x} != -1) then {["Static Deployed", "Static weapon has been deployed for use in a nearby zone, and will be used by garrison militia if you leave it here the next time the zone spawns."] call A3A_fnc_customHint;};
	};
}];

player addEventHandler ["WeaponDisassembled", {
	private _bag1 = _this select 1;
	private _bag2 = _this select 2;
	[_bag1] remoteExec ["A3A_fnc_postmortem", 2];
	[_bag2] remoteExec ["A3A_fnc_postmortem", 2];
}];

player addEventHandler ["GetInMan", {
	private ["_unit","_veh"];
	_unit = _this select 0;
	_veh = _this select 2;
	_exit = false;
	if !(player call A3A_fnc_isMember) then {
		_owner = _veh getVariable "ownerX";
		if (!isNil "_owner") then {
			if (_owner isEqualType "") then {
				if ({getPlayerUID _x == _owner} count (units group player) == 0) then {
					["Warning", "You cannot board other player vehicle if you are not in the same group."] call A3A_fnc_customHint;
					moveOut _unit;
					_exit = true;
				};
			};
		};
	};
	if (!_exit) then {
		if ((typeOf _veh) in undercoverVehicles) then {
			if (!(_veh in reportedVehs)) then {
				[] spawn A3A_fnc_goUndercover;
			};
		};
	};
}];

if (A3A_hasCup || {A3A_has3CBFactions}) then {
	player addEventHandler ["GetInMan", {
		params ["_unit", "_role", "_vehicle", "_turret"];
		private _vehType = typeOf _vehicle;
		private _model = _vehType call A3A_fnc_classNameToModel;

		if (_model in noArtilleryComputerVehicles) then {
			enableEngineArtillery false;
		};
	}];

	player addEventHandler ["GetOutMan", {
		params ["_unit", "_role", "_vehicle", "_turret"];
		private _vehType = typeOf _vehicle;
		private _model = _vehType call A3A_fnc_classNameToModel;

		if (_model in noArtilleryComputerVehicles) then {
			enableEngineArtillery true;
		};
	}];
};

if(isDiscordRichPresenceActive) then {
	player addEventHandler ["GetInMan", {
		params ["_unit", "_role", "_vehicle", "_turret"];

		private _vehicleName = getText (configFile >> "CfgVehicles" >> typeOf _vehicle >> "displayName");

		switch (true) do {
			case (_vehicle isKindOf "StaticWeapon"): {
				[["UpdateState", format ["Operates %1", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
			};
			case (_vehicle isKindOf "Air"): {
				private _isDriver = if ((driver (vehicle player)) isEqualTo player) then {true} else {false};
				private _isGunner = if ((gunner (vehicle player)) isEqualTo player) then {true} else {false};

				switch (true) do {
					case (_isDriver): {
						[["UpdateState", format ["Pilots %1", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
					};
					case (_isGunner): {
						[["UpdateState", format ["Operates %1's turret", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
					};
					default {
						[["UpdateState", format ["Rides %1", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
					};
				};
			};
			default {
				private _isDriver = if ((driver (vehicle player)) isEqualTo player) then {true} else {false};
				private _isGunner = if ((gunner (vehicle player)) isEqualTo player) then {true} else {false};

				switch (true) do {
					case (_isDriver): {
						[["UpdateState", format ["Drives %1", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
					};
					case (_isGunner): {
						[["UpdateState", format ["Operates %1's turret", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
					};
					default {
						[["UpdateState", format ["Sits in %1 as passenger", _vehicleName]]] call SCRT_fnc_misc_updateRichPresence;
					};
				};
			};
		};
	}];

	player addEventHandler ["GetOutMan", {
		[] call SCRT_fnc_misc_updateRichPresence;
	}];

	player addEventHandler ["HandleHeal", {
		params ["_injured", "_healer"];
		if (!isPlayer _injured || {_injured == _healer}) exitWith {};

		_this spawn {
			params ["_injured", "_healer"];
			private _injuredName = name _injured;
			private _damage = damage _injured;
			[["UpdateState", format ["Heals %1", _injuredName]]] call SCRT_fnc_misc_updateRichPresence;
			waitUntil {sleep 0.1; damage _injured != _damage};
			[] call SCRT_fnc_misc_updateRichPresence;
		};
	}];
};

if (A3A_hasACE) then {
    ["ace_explosives_place", {
        params ["_explosive","_dir","_pitch","_unit"];
		if (_unit == player) then { player setCaptive false };
    }] call CBA_fnc_addEventHandler;
};

call A3A_fnc_initUndercover;

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;//Exec on client
if (membershipEnabled) then {
	if !(player call A3A_fnc_isMember) then {
		private _isMember = false;
		if (isServer) then {
			_isMember = true;
		};
		if (serverCommandAvailable "#logout") then {
			_isMember = true;
			["General Info", "You are not in the member's list, but as you are Server Admin, you have been added. Welcome!"] call A3A_fnc_customHint;
		};

		if (_isMember) then {
			membersX pushBack (getPlayerUID player);
			publicVariable "membersX";
		} else {
			["General Info", "Welcome Guest<br/><br/>You have joined this server as guest."] call A3A_fnc_customHint;
		};
	};
};

// Make player group leader, because if they disconnected with AI squadmates, they may not be
// In this case, the group will also no longer be local, so we need the remoteExec
if !(isPlayer leader group player) then {
	[group player, player] remoteExec ["selectLeader", groupOwner group player];
};

waitUntil { scriptDone _introshot };

cutText ["","BLACK IN", 3];

[] remoteExec ["A3A_fnc_assignBossIfNone", 2];

if (_isJip) then {
	[2,"Joining In Progress (JIP)",_filename] call A3A_fnc_log;
} else {
	[2,"Not Joining in Progress (JIP)",_filename] call A3A_fnc_log;
};

[] spawn A3A_fnc_modBlacklist;

//Move this
//HC_commanderX synchronizeObjectsAdd [player];
//player synchronizeObjectsAdd [HC_commanderX];
A3A_customHintEnable = true; // Was false in initVarCommon to allow debug progress  hints to flow in and overwrite each other.

if (isServer || player isEqualTo theBoss || (call BIS_fnc_admin) > 0) then {  // Local Host || Commander || Dedicated Admin
	private _modsAndLoadText = [
		[A3A_hasTFAR || A3A_hasTFARBeta,"TFAR","Players will use TFAR radios."],
		[A3A_hasACRE,"ACRE","Players will use ACRE radios. Unconscious players' radios will be muted."],
		[A3A_hasACE,"ACE 3","ACE items added to arsenal and ammo-boxes."],
		[A3A_hasACEMedical,"ACE 3 Medical","Default revive system will be disabled"],
		[A3A_hasRHS,"RHS","All factions will be replaced by RHS (AFRF &amp; USAF &amp; GREF &amp; SAF)."],
		[A3A_hasAegis,"Aegis","Some factions and units will be replaced by Aegis (Opposing Force &amp; Police &amp; Atlas)."],
		[A3A_hasCup,"CUP","All factions will be replaced by CUP."],
		[A3A_has3CBFactions,"3CB Factions","RHS Factions will be expanded by 3CB Factions."],
		[A3A_hasIvory,"Ivory Cars","Mod cars will be added to civilian car spawns."]
	] select {_x#0};

	private _loadedTemplateInfoXML = A3A_loadedTemplateInfoXML apply {[true,_x#0,_x#1]};	// Remove and simplify when the list above is empty and can be deleted.
	_modsAndLoadText append _loadedTemplateInfoXML;

	if (count _modsAndLoadText isEqualTo 0) exitWith {};
	private _textXML = "<t align='left'>" + ((_modsAndLoadText apply { "<t color='#f0d498'>" + _x#1 + ":</t>" + _x#2 }) joinString "<br/>") + "</t>";
	["Loaded Mods",_textXML] call A3A_fnc_customHint;
};

waituntil {!isnull (finddisplay 46)};
gameMenu = (findDisplay 46) displayAddEventHandler ["KeyDown",A3A_fnc_keys];

if (A3A_hasACE) then
{
	if (isNil "ace_interact_menu_fnc_compileMenu" || isNil "ace_interact_menu_fnc_compileMenuSelfAction") exitWith {
		[1, "ACE non-public functions have changed, rebel group join/leave actions will not be removed.", _filename] call A3A_fnc_log;
	};
	// Remove group join action from all rebel unit types
	// Need to compile the menus first, because ACE delays creating menus until a unit of that class is created
	private _playerUnits = ["I_G_soldier_F", "I_G_Soldier_TL_F", "I_G_Soldier_AR_F", "I_G_medic_F", "I_G_engineer_F", "I_G_Soldier_GL_F"];
	{
		[_x] call ace_interact_menu_fnc_compileMenu;
		[_x] call ace_interact_menu_fnc_compileMenuSelfAction;
		[_x, 1,["ACE_SelfActions", "ACE_TeamManagement", "ACE_LeaveGroup"]] call ace_interact_menu_fnc_removeActionFromClass;
		[_x, 0,["ACE_MainActions", "ACE_JoinGroup"]] call ace_interact_menu_fnc_removeActionFromClass;
	} forEach (_playerUnits + [typePetros, staticCrewTeamPlayer, SDKUnarmed, SDKSniper, SDKATman, SDKMedic, SDKMG, SDKExp, SDKGL, SDKMil, SDKSL, SDKEng]);
};

boxX allowDamage false;
boxX addAction ["Transfer Vehicle cargo to Ammobox", {[] spawn A3A_fnc_empty;}, 4];
boxX addAction ["Move this asset", A3A_fnc_moveHQObject,nil,0,false,true,"","(_this == theBoss)", 4];
if (A3A_hasACE) then { [boxX, boxX] call ace_common_fnc_claim;};	//Disables ALL Ace Interactions
flagX allowDamage false;
flagX addAction ["Unit Recruitment", {if ([player,300] call A3A_fnc_enemyNearCheck) then {["Recruit Unit", "You cannot recruit units while there are enemies near you."] call A3A_fnc_customHint;} else { [] spawn A3A_fnc_unit_recruit; }},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (side (group _this) == teamPlayer)"];
flagX addAction ["Travel to rally point", {[] spawn SCRT_fnc_rally_travelToRallyPoint},nil,0,false,true,"","(isPlayer _this) && (_this == _this getVariable ['owner',objNull]) && (side (group _this) == teamPlayer) && (!isNil 'isRallyPointPlaced' && {isRallyPointPlaced})",4];
flagX addAction ["Move this asset", A3A_fnc_moveHQObject,nil,0,false,true,"","(_this == theBoss)", 4];

//Adds a light to the flag
private _flagLight = "#lightpoint" createVehicle (getPos flagX);
_flagLight setLightDayLight true;
_flagLight setLightColor [1, 1, 0.9];
_flagLight setLightBrightness 0.2;
_flagLight setLightAmbient [1, 1, 0.9];
_flagLight lightAttachObject [flagX, [0, 0, 4]];
_flagLight setLightAttenuation [7, 0, 0.5, 0.5];

vehicleBox allowDamage false;
vehicleBox addAction ["Heal nearby units", A3A_fnc_vehicleBoxHeal,nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (side (group _this) == teamPlayer)", 4];
[vehicleBox] call HR_GRG_fnc_initGarage;
if (A3A_hasACE) then { [vehicleBox, VehicleBox] call ace_common_fnc_claim;};	//Disables ALL Ace Interactions
vehicleBox addAction ["Buy Vehicle", {if ([player,300] call A3A_fnc_enemyNearCheck) then {["Purchase Vehicle", "You cannot buy vehicles while there are enemies near you."] call A3A_fnc_customHint;} else {[] call SCRT_fnc_ui_createBuyVehicleMenu}},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (side (group _this) == teamPlayer)", 4];
vehicleBox addAction ["Buy Loot Crate", {[] call SCRT_fnc_loot_createLootCrate},nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (side (group _this) == teamPlayer)",4];
vehicleBox addAction ["Move this asset", A3A_fnc_moveHQObject,nil,0,false,true,"","(_this == theBoss)", 4];

mapX allowDamage false;
mapX addAction ["Map Info", A3A_fnc_cityinfo,nil,0,false,true,"","(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) && (side (group _this) == teamPlayer)", 4];
mapX addAction [
	"Game Options",
	{
		closeDialog 0;
		closeDialog 0;
		createDialog "commanderMenu";
		isMenuOpen = true;
		[] spawn SCRT_fnc_misc_orbitingCamera;
		[] call SCRT_fnc_ui_populateGameOptionsMenu;
	},
	nil,
	0,
	false,
	true,
	"",
	"(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (side (group _this) == teamPlayer) and player == theBoss",
	4
];
mapX addAction [
	"Game Options",
	{
		closeDialog 0;
		closeDialog 0;
		createDialog "playerMenu";
		isMenuOpen = true;
		[] spawn SCRT_fnc_misc_orbitingCamera;
		[] call SCRT_fnc_ui_populatePlayerMenu;
	},
	nil,
	0,
	false,
	true,
	"",
	"(isPlayer _this) and (_this == _this getVariable ['owner',objNull]) and (side (group _this) == teamPlayer) and player != theBoss",
	4
];
mapX addAction ["Move this asset", A3A_fnc_moveHQObject,nil,0,false,true,"","(_this == theBoss)", 4];
mapX addAction ["AI Load Info", { [] remoteExec ["A3A_fnc_AILoadInfo",2];},nil,0,false,true,"","((_this == theBoss) || (serverCommandAvailable ""#logout""))"];
[] spawn SCRT_fnc_common_setUnitTraits;

// only add petros actions if he's static
if (petros == leader group petros) then {
	group petros setGroupId ["Petros","GroupColor4"];
	[petros,"remove"] call A3A_fnc_flagaction;		// in case we already created them in initserver
	[petros,"mission"] call A3A_fnc_flagaction;
};
petros setIdentity "friendlyX";
if (worldName == "Tanoa") then {petros setName "Maru"} else {petros setName "Petros"};

disableSerialization;
_layer = ["statisticsX"] call bis_fnc_rscLayer;
_layer cutRsc ["H8erHUD","PLAIN",0,false];
[] spawn A3A_fnc_statistics;

//Check if we need to relocate HQ
if (isNil "placementDone") then {
	if (isNil "playerPlacingHQ" || {!(playerPlacingHQ in (call A3A_fnc_playableUnits))}) then {
		playerPlacingHQ = player;
		publicVariable "playerPlacingHQ";
		call A3A_fnc_placementSelection;
	};
};

//Load the player's personal save.
[] spawn A3A_fnc_createDialog_shouldLoadPersonalSave;

//Move the player to HQ now they're initialised.
player setPos (getMarkerPos respawnTeamPlayer);

//Disables rabbits and snakes, because they cause the log to be filled with "20:06:39 Ref to nonnetwork object Agent 0xf3b4a0c0"
//Can re-enable them if we find the source of the bug.
enableEnvironment [false, true];

if (magRepack) then {
	[2,format ["%1: [Antistasi] | INFO | Initializing Mag Repack script.", servertime],_fileName] call A3A_fnc_log;
	[] execVM "MagRepack\MagRepack_init_sv.sqf";
};

[] call SCRT_fnc_misc_updateRichPresence;

//adding player as paradrop attendant by default
[] spawn {
	private _paradropAttendants = [missionNamespace, "paradropAttendants", nil] call BIS_fnc_getServerVariable;

	while {isNil "_paradropAttendants"} do {
		sleep 3;
		_paradropAttendants = [missionNamespace, "paradropAttendants", nil] call BIS_fnc_getServerVariable;
	};

	private _uid = getPlayerUID player;
	_paradropAttendants pushBackUnique _uid;
	[missionNamespace, "paradropAttendants", _paradropAttendants] call BIS_fnc_setServerVariable;
};

if (saveZeusBuildings) then {
	[2,"Initializing Curator Persistent Save.",_fileName, true] call A3A_fnc_log;
	private _curator = allCurators select 0;
	_curator addEventHandler ["CuratorObjectPlaced", {
		params ["_curator", "_entity"];
		if !(_entity isKindOf "Building") exitWith {};
		[_entity] remoteExecCall ["SCRT_fnc_build_saveConstruction", 2];
	}];
	_curator addEventHandler ["CuratorObjectEdited", {
		params ["_curator", "_entity"];
		if !(_entity isKindOf "Building") exitWith {};
		[_entity] remoteExecCall ["SCRT_fnc_build_updateConstruction", 2];
	}];
	_curator addEventHandler ["CuratorObjectDeleted", {
		params ["_curator", "_entity"];
		if !(_entity isKindOf "Building") exitWith {};
		[_entity] remoteExecCall ["SCRT_fnc_build_removeConstruction", 2];
	}];
};

[2,"initClient completed",_fileName] call A3A_fnc_log;
A3A_customHintEnable = true; // Was false in initVarCommon to allow hints to flow in and overwrite each other.
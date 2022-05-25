//===========================================================================
//ADD VARIABLES TO THIS ARRAY THAT NEED SPECIAL SCRIPTING TO LOAD
/*specialVarLoads =
[
	"weaponsPlayer",
	"magazinesPlayer",
	"backpackPlayer",
	"mrkNATO",
	"mrkSDK",
	"prestigeNATO","prestigeCSAT", "hr","planesAAFcurrent","helisAAFcurrent","APCAAFcurrent","tanksAAFcurrent","armas","items","backpcks","ammunition","dateX", "WitemsPlayer","prestigeOPFOR","prestigeBLUFOR","resourcesAAF","resourcesFIA","skillFIA"];
*/

private _translateMarker = {
	params ["_mrk"];
	if (_mrk find "puesto" == 0) exitWith { "outpost" + (_mrk select [6]) };
	if (_mrk find "puerto" == 0) exitWith { "seaport" + (_mrk select [6]) };
	_mrk;
};

private _specialVarLoads = [
	"watchpostsFIA", "roadblocksFIA", "aapostsFIA", "atpostsFIA", "mortarpostsFIA", "hmgpostsFIA", "minesX","staticsX","constructionsX","attackCountdownOccupants","antennas","mrkNATO","mrkSDK","prestigeNATO",
	"prestigeCSAT","posHQ","hr","armas","items","backpcks","ammunition","dateX","prestigeOPFOR",
	"prestigeBLUFOR","resourcesFIA","skillFIA", "maxConstructions", "destroyedSites",
	"garrison","tasks","smallCAmrk","membersX","vehInGarage","destroyedBuildings","idlebases",
	"idleassets","chopForest","weather","killZones","jna_dataList","controlsSDK","mrkCSAT","nextTick",
	"bombRuns","wurzelGarrison","aggressionOccupants", "aggressionInvaders", "attackCountdownInvaders", "testingTimerIsActive",
	"traderDiscount", "supportPoints", "isTraderQuestCompleted", "traderPosition", "areOccupantsDefeated", "areInvadersDefeated",
	"rebelLoadouts",
	"version", "HR_Garage"
];

private _varName = _this select 0;
private _varValue = _this select 1;
if (isNil '_varValue') exitWith {};

if (_varName in _specialVarLoads) then {
	if (_varName == 'version') then {
		_s = _varValue splitString ".";
		if (count _s < 2) exitWith {
			diag_log format ["Bad version string: %1", _varValue];
		};
		A3A_saveVersion = 10000*parsenumber(_s#0) + 100*parseNumber(_s#1) + parseNumber(_s#2);
	};
	if (_varName == 'attackCountdownOccupants') then {attackCountdownOccupants = _varValue; publicVariable "attackCountdownOccupants"};
	if (_varName == 'attackCountdownInvaders') then {attackCountdownInvaders = _varValue; publicVariable "attackCountdownInvaders"};
	if (_varName == 'bombRuns') then {bombRuns = _varValue; publicVariable "bombRuns"};
	if (_varName == 'supportPoints') then {supportPoints = _varValue; publicVariable "supportPoints"};
	if (_varName == 'nextTick') then {nextTick = time + _varValue};
	if (_varName == 'membersX') then {membersX = +_varValue; publicVariable "membersX"};
	if (_varName == 'smallCAmrk') then {};		// Ignore. These are not persistent.
	if (_varName == 'mrkNATO') then {{sidesX setVariable [[_x] call _translateMarker,Occupants,true]} forEach _varValue;};
	if (_varName == 'mrkCSAT') then {{sidesX setVariable [[_x] call _translateMarker,Invaders,true]} forEach _varValue;};
	if (_varName == 'mrkSDK') then {{sidesX setVariable [[_x] call _translateMarker,teamPlayer,true]} forEach _varValue;};
	if (_varName == 'controlsSDK') then {
		{
			sidesX setVariable [_x,teamPlayer,true]
		} forEach _varValue;
	};
	if (_varName == 'chopForest') then {chopForest = _varValue; publicVariable "chopForest"};
	if (_varName == 'jna_dataList') then {jna_dataList = +_varValue};
	//Keeping these for older saves
	if (_varName == 'prestigeNATO') then {[Occupants, _varValue, 120] call A3A_fnc_addAggression};
	if (_varName == 'prestigeCSAT') then {[Invaders, _varValue, 120] call A3A_fnc_addAggression};
	if (_varName == 'aggressionOccupants') then
	{
		aggressionLevelOccupants = _varValue select 0;
		aggressionStackOccupants = +(_varValue select 1);
		[true] spawn A3A_fnc_calculateAggression;
	};
	if (_varName == 'aggressionInvaders') then
	{
		aggressionLevelInvaders = _varValue select 0;
		aggressionStackInvaders = +(_varValue select 1);
		[true] spawn A3A_fnc_calculateAggression;
	};
	if (_varName == 'hr') then {server setVariable ["HR",_varValue,true]};
	if (_varName == 'dateX') then {setDate _varValue};
	if (_varName == 'weather') then {
		// Avoid persisting potentially-broken fog values
		private _fogParams = _varValue select 0;
		0 setFog [_fogParams#0, (_fogParams#1) max 0, (_fogParams#2) max 0];
		0 setOvercast (_varValue select 1);
		forceWeatherChange
	};
	if (_varName == 'resourcesFIA') then {server setVariable ["resourcesFIA",_varValue,true]};
	if (_varName == 'destroyedSites') then {destroyedSites = +_varValue; publicVariable "destroyedSites"};
	if (_varName == 'skillFIA') then {
		skillFIA = _varValue; publicVariable "skillFIA";
	};
	if (_varName == 'maxConstructions') then {maxConstructions=_varValue; publicVariable "maxConstructions"};
    if (_varname == "HR_Garage") then {
        [_varValue] call HR_GRG_fnc_loadSaveData;
    };
	if (_varName == 'vehInGarage') then { //convert old garage to new garage
        vehInGarage= [];
        publicVariable "vehInGarage";
        [_varValue, ""] call HR_GRG_fnc_addVehiclesByClass;
    };
	if (_varName == 'destroyedBuildings') then {
		{
			// nearestObject sometimes picks the wrong building and is several times slower
			// Example: Livonia Land_Cargo_Tower_V2_F at [6366.63,3880.88,0] ATL

			private _building = nearestObjects [_x, ["House"], 1, true] select 0;
			call {
				if (isNil "_building") exitWith { diag_log format ["No building found at %1", _x] };
				if (_building in antennas) exitWith { diag_log "Antenna in destroyed building list, ignoring" };

				private _ruin = [_building] call BIS_fnc_createRuin;
				if (isNull _ruin) exitWith {
					diag_log format ["Loading Destroyed Buildings: Unable to create ruin for %1", typeOf _building];
				};

				destroyedBuildings pushBack _building;
			};
		} forEach _varValue;
	};
	if (_varName == 'minesX') then {
		for "_i" from 0 to (count _varvalue) - 1 do {
			(_varvalue select _i) params ["_typeMine", "_posMine", "_detected", "_dirMine"];
			private _mineX = createVehicle [_typeMine, _posMine, [], 0, "CAN_COLLIDE"];
			if !(isNil "_dirMine") then { _mineX setDir _dirMine };
			{_x revealMine _mineX} forEach _detected;
		};
	};
	if (_varName == 'garrison') then {
		{
			private _garrison = [];
			{
				if !(_x isEqualType "") then { continue };		// skip garbage created by old bugs
				if (_x isEqualTo "") then { continue };
				if (_x find "loadouts_rebel" == 0) then {
					// fix for 2.4 -> 2.5 rebel garrison incompatibility
					_garrison pushBack ("loadouts_reb" + (_x select [14]));
				} else {
					_garrison pushBack _x;
				};
			} forEach (_x select 1);

			garrison setVariable [[_x select 0] call _translateMarker, _garrison, true];
			if (count _x > 2) then { garrison setVariable [(_x select 0) + "_lootCD", _x select 2, true] };
		} forEach _varvalue;
	};
	if (_varName == 'wurzelGarrison') then {
		{
			garrison setVariable [format ["%1_garrison", (_x select 0)], +(_x select 1), true];
			garrison setVariable [format ["%1_requested", (_x select 0)], +(_x select 2), true];
			garrison setVariable [format ["%1_over", (_x select 0)], +(_x select 3), true];
			[(_x select 0)] call A3A_fnc_updateReinfState;
		} forEach _varvalue;
	};
	if (_varName == 'watchpostsFIA') then {
		if (count (_varValue select 0) == 2) then {
			{
				_positionX = _x select 0;
				_garrison = _x select 1;
				_mrk = createMarker [format ["FIAWatchpost%1", random 1000], _positionX];
				_mrk setMarkerShape "ICON";
				_mrk setMarkerType "n_recon";
				_mrk setMarkerColor colorTeamPlayer;
				_mrk setMarkerText format ["%1 Watchpost",nameTeamPlayer];
				spawner setVariable [_mrk,2,true];
				if (count _garrison > 0) then {garrison setVariable [_mrk,_garrison,true]};
				watchpostsFIA pushBack _mrk;
				sidesX setVariable [_mrk,teamPlayer,true];
			} forEach _varvalue;
		};
	};
	if (_varName == 'roadblocksFIA') then {
		if (count (_varValue select 0) == 2) then {
			{
				_positionX = _x select 0;
				_garrison = _x select 1;
				_mrk = createMarker [format ["FIARoadblock%1", random 1000], _positionX];
				_mrk setMarkerShape "ICON";
				_mrk setMarkerType "n_support";
				_mrk setMarkerColor colorTeamPlayer;
				_mrk setMarkerText format ["%1 Roadblock",nameTeamPlayer];
				spawner setVariable [_mrk,2,true];
				if (count _garrison > 0) then {garrison setVariable [_mrk,_garrison,true]};
				roadblocksFIA pushBack _mrk;
				sidesX setVariable [_mrk,teamPlayer,true];
			} forEach _varvalue;
		};
	};
	if (_varName == 'aapostsFIA') then {
		if (count (_varValue select 0) >= 2) then {
			{
				_positionX = _x select 0;
				_garrison = _x select 1;
				_staticPositions = _x select 2;
				_mrk = createMarker [format ["FIAAApost%1", random 1000], _positionX];
				_mrk setMarkerShape "ICON";
				_mrk setMarkerType "n_antiair";
				_mrk setMarkerColor colorTeamPlayer;
				_mrk setMarkerText format ["%1 AA Emplacement",nameTeamPlayer];
				spawner setVariable [_mrk,2,true];
				if (count _garrison > 0) then {garrison setVariable [_mrk,_garrison,true]};
				if (count _staticPositions > 0) then {staticPositions setVariable [_mrk,_staticPositions,true]};
				aapostsFIA pushBack _mrk;
				sidesX setVariable [_mrk,teamPlayer,true];
			} forEach _varvalue;
		};
	};
	if (_varName == 'atpostsFIA') then {
		if (count (_varValue select 0) >= 2) then {
			{
				_positionX = _x select 0;
				_garrison = _x select 1;
				_staticPositions = _x select 2;
				_mrk = createMarker [format ["FIAATpost%1", random 1000], _positionX];
				_mrk setMarkerShape "ICON";
				_mrk setMarkerType "n_armor";
				_mrk setMarkerColor colorTeamPlayer;
				_mrk setMarkerText format ["%1 AT Emplacement",nameTeamPlayer];
				spawner setVariable [_mrk,2,true];
				if (count _garrison > 0) then {garrison setVariable [_mrk,_garrison,true]};
				if (count _staticPositions > 0) then {staticPositions setVariable [_mrk,_staticPositions,true]};
				atpostsFIA pushBack _mrk;
				sidesX setVariable [_mrk,teamPlayer,true];
			} forEach _varvalue;
		};
	};
	if (_varName == 'mortarpostsFIA') then {
		if (count (_varValue select 0) >= 2) then {
			{
				_positionX = _x select 0;
				_garrison = _x select 1;
				_staticPositions = _x select 2;
				_mrk = createMarker [format ["FIAMortarpost%1", random 1000], _positionX];
				_mrk setMarkerShape "ICON";
				_mrk setMarkerType "n_mortar";
				_mrk setMarkerColor colorTeamPlayer;
				_mrk setMarkerText format ["%1 Mortar Emplacement",nameTeamPlayer];
				spawner setVariable [_mrk,2,true];
				if (count _garrison > 0) then {garrison setVariable [_mrk,_garrison,true]};
				if (count _staticPositions > 0) then {staticPositions setVariable [_mrk,_staticPositions,true]};
				mortarpostsFIA pushBack _mrk;
				sidesX setVariable [_mrk,teamPlayer,true];
			} forEach _varvalue;
		};
	};
	if (_varName == 'hmgpostsFIA') then {
		if (count (_varValue select 0) >= 2) then {
			{
				_positionX = _x select 0;
				_garrison = _x select 1;
				_staticPositions = _x select 2;
				_mrk = createMarker [format ["FIAHmgpost%1", random 1000], _positionX];
				_mrk setMarkerShape "ICON";
				_mrk setMarkerType "n_unknown";
				_mrk setMarkerColor colorTeamPlayer;
				_mrk setMarkerText format ["%1 HMG Emplacement",nameTeamPlayer];
				spawner setVariable [_mrk,2,true];
				if (count _garrison > 0) then {garrison setVariable [_mrk,_garrison,true]};
				if (count _staticPositions > 0) then {staticPositions setVariable [_mrk,_staticPositions,true]};
				hmgpostsFIA pushBack _mrk;
				sidesX setVariable [_mrk,teamPlayer,true];
			} forEach _varvalue;
		};
	};
	if (_varName == 'antennas') then {
		antennasDead = [];
		for "_i" from 0 to (count _varvalue - 1) do {
			_posAnt = _varvalue select _i;
			_mrk = [mrkAntennas, _posAnt] call BIS_fnc_nearestPosition;
			_antenna = [antennas,_mrk] call BIS_fnc_nearestPosition;
			{if ([antennas,_x] call BIS_fnc_nearestPosition == _antenna) then {[_x,false] spawn A3A_fnc_blackout}} forEach citiesX;
			antennas = antennas - [_antenna];
			antennasDead pushBack _antenna;
			_antenna removeAllEventHandlers "Killed";

			private _ruin = [_antenna] call BIS_fnc_createRuin;

			if !(isNull _ruin) then {
				//JIP on the _ruin, as repairRuinedBuilding will delete the ruin.
				[_antenna, true] remoteExec ["hideObject", 0, _ruin];
			} else {
				diag_log format ["Loading Antennas: Unable to create ruin for %1", typeOf _antenna];
			};

			deleteMarker _mrk;
		};
		publicVariable "antennas";
		publicVariable "antennasDead";
	};
	if (_varname == 'prestigeOPFOR') then {
		for "_i" from 0 to (count citiesX) - 1 do {
			_city = citiesX select _i;
			_dataX = server getVariable _city;
			_numCiv = _dataX select 0;
			_numVeh = _dataX select 1;
			_prestigeOPFOR = _varvalue select _i;
			_prestigeBLUFOR = _dataX select 3;

			if (isNil "_prestigeOPFOR") then {
				_prestigeOPFOR = 50;
			};

			if (isNil "_prestigeBLUFOR") then {
				_prestigeBLUFOR = 50;
			};

			_dataX = [_numCiv,_numVeh,_prestigeOPFOR,_prestigeBLUFOR];
			server setVariable [_city,_dataX,true];
		};
	};
	if (_varname == 'prestigeBLUFOR') then {
		for "_i" from 0 to (count citiesX) - 1 do {
			_city = citiesX select _i;
			_dataX = server getVariable _city;
			_numCiv = _dataX select 0;
			_numVeh = _dataX select 1;
			_prestigeOPFOR = _dataX select 2;
			_prestigeBLUFOR = _varvalue select _i;

			if (isNil "_prestigeOPFOR") then {
				_prestigeOPFOR = 50;
			};

			if (isNil "_prestigeBLUFOR") then {
				_prestigeBLUFOR = 50;
			};

			_dataX = [_numCiv,_numVeh,_prestigeOPFOR,_prestigeBLUFOR];
			server setVariable [_city,_dataX,true];
		};
	};
	if (_varname == 'idlebases') then {
		{
			server setVariable [(_x select 0),(_x select 1),true];
		} forEach _varValue;
	};
	if (_varname == 'idleassets') then {
		{
			timer setVariable [(_x select 0),(_x select 1),true];
		} forEach _varValue;
	};
	if (_varname == 'killZones') then {
		{
			killZones setVariable [(_x select 0),(_x select 1),true];
		} forEach _varValue;
	};
	if (_varName == 'posHQ') then {
		_posHQ = if (count _varValue >3) then {_varValue select 0} else {_varValue};
		{
			if (getMarkerPos _x distance _posHQ < 1000) then {
				sidesX setVariable [_x,teamPlayer,true];
			};
		} forEach controlsX;
		respawnTeamPlayer setMarkerPos _posHQ;
		posHQ = getMarkerPos respawnTeamPlayer;
		petros setPos _posHQ;
		"Synd_HQ" setMarkerPos _posHQ;
		if (chopForest) then {
			if (!isMultiplayer) then {{ _x hideObject true } foreach (nearestTerrainObjects [position petros,["tree","bush"],70])} else {{ _x hideObjectGlobal true } foreach (nearestTerrainObjects [position petros,["tree","bush"],70])};
		};
		if (count _varValue == 3) then {
			[] spawn A3A_fnc_buildHQ;
		} else {
			boxX setDir ((_varValue select 1) select 0);
			boxX setPos ((_varValue select 1) select 1);
			mapX setDir ((_varValue select 2) select 0);
			mapX setPos ((_varValue select 2) select 1);
			flagX setPos (_varValue select 3);
			vehicleBox setDir ((_varValue select 4) select 0);
			vehicleBox setPos ((_varValue select 4) select 1);
		};
		{_x setPos _posHQ} forEach ((call A3A_fnc_playableUnits) select {side _x == teamPlayer});
	};
	if (_varname == 'staticsX') then {
		for "_i" from 0 to (count _varvalue) - 1 do {
            (_varValue#_i) params ["_typeVehX", "_posVeh", "_xVectorUp", "_xVectorDir", "_state"];
			private _veh = createVehicle [_typeVehX,[0,0,1000],[],0,"CAN_COLLIDE"];
			// This is only here to handle old save states. Could be removed after a few version itterations. -Hazey
			if (_xVectorUp isEqualType 0) then { // We have to check number because old save state might still be using getDir. -Hazey
				_veh setDir _xVectorUp; //is direction due to old save
				_veh setVectorUp surfaceNormal (_posVeh);
				_veh setPosATL _posVeh;
			} else {
				if (A3A_saveVersion >= 20401) then { _veh setPosWorld _posVeh } else { _veh setPosATL _posVeh };
				_veh setVectorDirAndUp [_xVectorDir,_xVectorUp];
			};
			[_veh, teamPlayer] call A3A_fnc_AIVEHinit;
			if ((_veh isKindOf "StaticWeapon") or (_veh isKindOf "Building")) then {
				staticsToSave pushBack _veh;
			}
			else {
                if (!isNil "_state") then {
                    [_veh, _state] call HR_GRG_fnc_setState;
                };
				[_veh] spawn A3A_fnc_vehDespawner;
			};
		};
		publicVariable "staticsToSave";
	};
	if (_varname == 'constructionsX') then {
		for "_i" from 0 to (count _varvalue) - 1 do {
			_typeVehX = _varvalue select _i select 0;
			_posVeh = _varvalue select _i select 1;
			_xVectorUp = _varvalue select _i select 2;
			_xVectorDir = _varvalue select _i select 3;
			private _veh = createVehicle [_typeVehX,[0,0,1000],[],0,"CAN_COLLIDE"];
			_veh setPosWorld _posVeh;
			_veh setVectorDirAndUp [_xVectorDir,_xVectorUp];
			constructionsToSave pushBack _veh;
		};
		publicVariable "constructionsToSave";
	};
	if (_varname == 'tasks') then {
		{
			if (_x == "rebelAttack") then {
                if(attackCountdownInvaders > attackCountdownOccupants) then
                {
                    [Invaders] spawn A3A_fnc_rebelAttack;
                }
                else
                {
                    [Occupants] spawn A3A_fnc_rebelAttack;
                };
			} else {
				switch (_x) do {
					case "DEF_HQ": {
						[] spawn A3A_fnc_attackHQ;
					};
					case "ENC": {
						isTraderQuestAssigned = true;
						publicVariable "isTraderQuestAssigned";
						[] remoteExec ["SCRT_fnc_trader_prepareTraderQuest", 2];
					};
					default {
						[_x,clientOwner,true] call A3A_fnc_missionRequest;
					};
				};
			};
		} forEach _varvalue;
	};
	if(_varname == 'testingTimerIsActive') then
	{
		if(_varValue) then
		{
			[] spawn A3A_fnc_startTestingTimer;
		};
		testingTimerIsActive = _varValue;
	};
	if(_varname == 'isTraderQuestCompleted') then {
        diag_log format ["Trader Quest Completed: %1", str _varvalue];
        isTraderQuestCompleted = _varvalue;  publicVariable "isTraderQuestCompleted";
    };

	if(_varName == 'traderDiscount') then {
		if(_varValue > 0) then {
			[_varValue] call SCRT_fnc_trader_setTraderDiscount;
		};
		traderDiscount = _varValue;
		publicVariable "traderDiscount";
	};

    if(_varname == 'traderPosition') then {
        if(count _varvalue > 0) then {
            traderX = [_varvalue] call SCRT_fnc_trader_createTrader; publicVariable "traderX";
            [traderX] call SCRT_fnc_trader_setTraderStock;
            [traderX] remoteExecCall ["SCRT_fnc_trader_addVehicleMarketAction", 0, true];
            traderPosition = _varvalue; publicVariable "traderPosition";
        };
    };

	if(_varname == 'areOccupantsDefeated') then {
        diag_log format ["Occupants defeated: %1", str _varvalue];
        areOccupantsDefeated = _varvalue;
		publicVariable "areOccupantsDefeated";
		if (areOccupantsDefeated) then {
			"NATO_carrier" setMarkerAlpha 0;
			"respawn_west" setMarkerAlpha 0;
		};
    };

	if(_varname == 'areInvadersDefeated') then {
        diag_log format ["Invaders defeated: %1", str _varvalue];
        areInvadersDefeated = _varvalue;
		publicVariable "areInvadersDefeated";
		if (areInvadersDefeated) then {
			"CSAT_carrier" setMarkerAlpha 0;
			"respawn_east" setMarkerAlpha 0;
		};
    };

	if(_varname == 'rebelLoadouts') then {
        diag_log format ["Rebel Loadouts: %1", str _varvalue];
        rebelLoadouts = _varvalue;  publicVariable "rebelLoadouts";
    };

} else {
	call compile format ["%1 = %2",_varName,_varValue];
};

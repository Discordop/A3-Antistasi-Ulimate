//Mission: Capture/destroy the convoy
if (!isServer and hasInterface) exitWith {};
params ["_mrkDest", "_mrkOrigin", ["_convoyType", ""], ["_startDelay", -1], ["_visible", false]];
private _fileName = "fn_convoy";

private _difficult = if (random 10 < tierWar) then {true} else {false};
private _sideX = if (sidesX getVariable [_mrkOrigin,sideUnknown] == Occupants) then {Occupants} else {Invaders};
private _isMilitia = (_sideX == Occupants and (random 10 >= tierWar) and !_difficult);
private _isMilitia = switch(true) do {
    case (_sideX == Occupants and (random 10 >= tierWar) and !_difficult): {
        true;
    };
    case (gameMode == 4 && ({_sideX == Invaders && (random 10 >= tierWar) && !_difficult})): {
        true;
    };
    default  {
        false;
    };
};

private _posSpawn = getMarkerPos _mrkOrigin;			// used for spawning infantry before moving them into vehicles
private _posHQ = getMarkerPos respawnTeamPlayer;

private _soldiers = [];
private _vehiclesX = [];
private _markNames = [];
private _POWS = [];
private _reinforcementsX = [];


// Setup start time

if (_startDelay < 0) then { _startDelay = random 5 + ([15, 5] select _difficult) }; 		// start delay, 5-10 or 15-20 mins real time
private _startDateNum = dateToNumber date + _startDelay * timeMultiplier / (365*24*60);
private _startDate = numberToDate [date select 0, _startDateNum];
private _displayTime = [_startDate] call A3A_fnc_dateToTimeString;

private _nameDest = [_mrkDest] call A3A_fnc_localizar;
private _nameOrigin = [_mrkOrigin] call A3A_fnc_localizar;
[_mrkOrigin, 30] call A3A_fnc_addTimeForIdle;


// Determine convoy type from destination

private _convoyTypes = [];
if ((_mrkDest in airportsX) or (_mrkDest in outposts)) then
{
    _convoyTypes = ["Ammunition","Armor"];
    if (_mrkDest in outposts) then {if (((count (garrison getVariable [_mrkDest, []]))/2) >= [_mrkDest] call A3A_fnc_garrisonSize) then {_convoyTypes pushBack "Reinforcements"}};
}
else
{
    if (_mrkDest in citiesX) then
    {
        if (sidesX getVariable [_mrkDest,sideUnknown] == Occupants) then {_convoyTypes = ["Supplies"]} else {_convoyTypes = ["Supplies"]}
    }
    else
    {
        if ((_mrkDest in resourcesX) or (_mrkDest in factories)) then {_convoyTypes = ["Money", "Fuel"]} else {_convoyTypes = ["Prisoners"]};
        if (((count (garrison getVariable [_mrkDest, []]))/2) >= [_mrkDest] call A3A_fnc_garrisonSize) then {_convoyTypes pushBack "Reinforcements"};
    };
};

if (_convoyType == "") then { _convoyType = selectRandom _convoyTypes };

private _textX = "";
private _taskState = "CREATED";
private _taskTitle = "";
private _taskIcon = "";
private _taskState1 = "CREATED";
private _typeVehObj = "";

switch (_convoyType) do
{
    case "Ammunition":
    {
        _textX = format ["A convoy from %1 is about to depart at %2. It will provide ammunition to %3. Try to intercept it. Steal or destroy that truck before it reaches it's destination.",_nameOrigin,_displayTime,_nameDest];
        _taskTitle = "Ammo Convoy";
        _taskIcon = "rearm";
        _typeVehObj = if (_sideX == Occupants) then {vehNATOAmmoTruck} else {vehCSATAmmoTruck};
    };
    case "Fuel":
	{
		_textX = format ["A convoy from %1 is about to depart at %2. It will provide fuel to %3. Try to intercept it. Steal or destroy that truck before it reaches it's destination.",_nameOrigin,_displayTime,_nameDest];
		_taskTitle = "Fuel Convoy";
		_taskIcon = "refuel";
		_typeVehObj = if (_sideX == Occupants) then {vehNATOFuelTruck} else {vehCSATFuelTruck};
	};
    case "Armor":
    {
        _textX = format ["A convoy from %1 is about to depart at %2. It will reinforce %3 with armored vehicles. Try to intercept it. Steal or destroy that thing before it reaches it's destination.",_nameOrigin,_displayTime,_nameDest];
        _taskTitle = "Armored Convoy";
        _taskIcon = "Destroy";
        _typeVehObj = if (_sideX == Occupants) then {selectRandom vehNATOAA} else {selectRandom vehCSATAA};
    };
    case "Prisoners":
    {
        _textX = format ["A group of POWs is being transported from %1 to %3, and it's about to depart at %2. Try to intercept it. Kill or capture the truck driver to make them join you and bring them to HQ. Alive if possible.",_nameOrigin,_displayTime,_nameDest];
        _taskTitle = "Prisoner Convoy";
        _taskIcon = "run";
        _typeVehObj = if (_sideX == Occupants) then {selectRandom vehNATOTrucks} else {selectRandom vehCSATTrucks};
    };
    case "Reinforcements":
    {
        _textX = format ["Reinforcements are being sent from %1 to %3 in a convoy, and it's about to depart at %2. Try to intercept and kill all the troops and vehicle objective.",_nameOrigin,_displayTime,_nameDest];
        _taskTitle = "Reinforcements Convoy";
        _taskIcon = "run";
        _typeVehObj = if (_sideX == Occupants) then {selectRandom vehNATOTrucks} else {selectRandom vehCSATTrucks};
    };
    case "Money":
    {
        _textX = format ["A truck with plenty of money is being moved from %1 to %3, and it's about to depart at %2. Steal that truck and bring it to HQ. Those funds will be very welcome.",_nameOrigin,_displayTime,_nameDest];
        _taskTitle = "Money Convoy";
        _taskIcon = "move";
        _typeVehObj = civSupplyVehicle;
    };
    case "Supplies":
    {
        _textX = format ["A truck with medical supplies destination %3 it's about to depart at %2 from %1. Steal that truck bring it to %3 and let people in there know it is %4 who's giving those supplies.",_nameOrigin,_displayTime,_nameDest,nameTeamPlayer];
        _taskTitle = "Supply Convoy";
        _taskIcon = "heal";
        _typeVehObj = civSupplyVehicle;
    };
};


// Find suitable nav points for origin/dest
private _posOrigin = navGrid select ([_mrkOrigin] call A3A_fnc_getMarkerNavPoint) select 0;
private _posDest = navGrid select ([_mrkDest] call A3A_fnc_getMarkerNavPoint) select 0;

private _taskId = "CONVOY" + str A3A_taskCount;
[[teamPlayer,civilian],_taskId,[_textX,_taskTitle,_mrkDest],_posDest,false,0,true,_taskIcon,true] call BIS_fnc_taskCreate;
[_taskId, "CONVOY", "CREATED"] remoteExecCall ["A3A_fnc_taskUpdate", 2];

[2, format ["%1 convoy mission created from %2 to %3", _convoyType, _mrkOrigin, _mrkDest], _filename, true] call A3A_fnc_log;

// *********** Convoy vehicle spawning ***********************

private _route = [(getMarkerPos _mrkOrigin), (getMarkerPos _mrkDest)] call A3A_fnc_findPath;

private _markers = [];
if (_visible) then {
	private _markerColor = if (_sideX == Occupants) then {colorOccupants} else {colorInvaders};
	
	{ 
		private _node = _x; 
		private _waypointPosition = _node select 0;  
		private _marker = createMarker [format ["%1convoyNode%2", random 10000, random 10000], _waypointPosition]; 
		_marker setMarkerType "hd_dot"; 
		_marker setMarkerSize [1, 1]; 
		_marker setMarkerText ""; 
		_marker setMarkerColor _markerColor; 
		_marker setMarkerAlpha 1; 
		_markers pushBack _marker;
	} forEach _route;
};

_route = _route apply { _x select 0 };			// reduce to position array
if (_route isEqualTo []) then { _route = [_posOrigin, _posDest] };

// *********** Convoy vehicle spawning ***********************

private _vehPool = [_sideX, ["Air"]] call A3A_fnc_getVehiclePoolForQRFs;
private _pathState = [];			// Set the scope so that state is preserved between findPosOnRoute calls


// Spawning worker functions

private _fnc_spawnConvoyVehicle = {
    params ["_vehType", "_markName"];
    [1, format ["Spawning vehicle type %1", _vehType], _filename, true] call A3A_fnc_log;

    // Find location down route
    _pathState = [_route, [20, 0] select (count _pathState == 0), _pathState] call A3A_fnc_findPosOnRoute;
    while {true} do {
        // make sure there are no other vehicles within 10m
        if (count (ASLtoAGL (_pathState#0) nearEntities 10) == 0) exitWith {};
        _pathState = [_route, 10, _pathState] call A3A_fnc_findPosOnRoute;
    };

    private _veh = createVehicle [_vehType, ASLtoAGL (_pathState#0) vectorAdd [0,0,0.5]];               // Give it a little air
    private _vecUp = (_pathState#1) vectorCrossProduct [0,0,1] vectorCrossProduct (_pathState#1);       // correct pitch angle
    _veh setVectorDirAndUp [_pathState#1, _vecUp];
    _veh allowDamage false;

    private _group = [_sideX, _veh] call A3A_fnc_createVehicleCrew;
    { [_x] call A3A_fnc_NATOinit; _x allowDamage false; } forEach (units _group);
    _soldiers append (units _group);
    (driver _veh) stop true;
    deleteWaypoint [_group, 0];													// groups often start with a bogus waypoint

    [_veh, _sideX] call A3A_fnc_AIVEHinit;
    if (_vehType in vehArmor) then { _veh allowCrewInImmobile true };			// move this to AIVEHinit at some point?
    _vehiclesX pushBack _veh;
    _markNames pushBack _markName;
    _veh;
};

private _fnc_spawnEscortVehicle = {
    private _typeVehEsc = selectRandomWeighted _vehPool;
    private _veh = [_typeVehEsc, "Convoy Escort"] call _fnc_spawnConvoyVehicle;

    private _typeGroup = [_typeVehEsc, _sideX] call A3A_fnc_cargoSeats;
    if (count _typeGroup == 0) exitWith {};
    private _groupEsc = [_posSpawn, _sideX, _typeGroup] call A3A_fnc_spawnGroup;				// Unit limit?
    {[_x] call A3A_fnc_NATOinit;_x assignAsCargo _veh;_x moveInCargo _veh;} forEach units _groupEsc;
    _soldiers append (units _groupEsc);
};


// Tail escort
[] call _fnc_spawnEscortVehicle;

// Objective vehicle 
sleep 2;
private _objText = if (_difficult) then {" Convoy Objective"} else {"Convoy Objective"};
private _vehObj = [_typeVehObj, _objText] call _fnc_spawnConvoyVehicle;

//if (_convoyType == "Armor") then {_vehObj allowCrewInImmobile true;};
if (_convoyType == "Prisoners") then
{
    private _grpPOW = createGroup teamPlayer;
    for "_i" from 1 to (1+ round (random 11)) do
    {
        private _unit = [_grpPOW, SDKUnarmed, _posSpawn, [], 0, "NONE"] call A3A_fnc_createUnit;
        _unit setCaptive true;
        _unit disableAI "MOVE";
        _unit setBehaviour "CARELESS";
        _unit allowFleeing 0;
        _unit assignAsCargo _vehObj;
        _unit moveInCargo [_vehObj, _i + 3];
        removeAllWeapons _unit;
        removeAllAssignedItems _unit;
        [_unit,"refugee"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_unit];
        _POWS pushBack _unit;
        [_unit] call A3A_fnc_reDress;
    };
};
if (_convoyType == "Reinforcements") then
{
    private _typeGroup = [_typeVehObj,_sideX] call A3A_fnc_cargoSeats;
    private _groupEsc = [_posSpawn,_sideX,_typeGroup] call A3A_fnc_spawnGroup;
    {[_x] call A3A_fnc_NATOinit;_x assignAsCargo _vehObj;_x moveInCargo _vehObj;} forEach units _groupEsc;
    _soldiers append (units _groupEsc);
    _reinforcementsX append (units _groupEsc);
};
if ((_convoyType == "Money") or (_convoyType == "Supplies")) then
{
    reportedVehs pushBack _vehObj;
    publicVariable "reportedVehs";
};
if (_convoyType == "Ammunition") then
{
    [_vehObj] spawn A3A_fnc_fillLootCrate;
};

// Initial escort vehicles
private _countX = if (_difficult) then {2} else {1};
for "_i" from 1 to _countX do
{
    sleep 2;
    [] call _fnc_spawnEscortVehicle;
};

// Lead vehicle
sleep 2;
private _typeVehX = if (_sideX == Occupants) then {
    if (!_isMilitia) then {
        selectRandom vehNATOLightArmed
    } else {
        selectRandom vehPoliceCars
    };
} else {
    if (!_isMilitia) then {
        selectRandom vehCSATLightArmed
    } else {
        selectRandom vehPoliceCars
    };
};

private _vehLead = [_typeVehX, "Convoy Lead"] call _fnc_spawnConvoyVehicle;

// Remove spawn-suicide protection
sleep 2;
{_x allowDamage true} forEach _vehiclesX;
{_x allowDamage true; if (vehicle _x == _x) then {deleteVehicle _x}} forEach _soldiers;

[2, format ["Spawn performed: %1 ground vehicles, %2 soldiers", count _vehiclesX, count _soldiers], _filename, true] call A3A_fnc_log;

// Send the vehicles after the delay 

sleep (60*_startDelay);
_route = _route select [_pathState#2, count _route];        // remove navpoints that we already passed while spawning
[2, "Convoy mission under way", _fileName] call A3A_fnc_log;

// This array is used to share remaining convoy vehicles between threads
private _convoyVehicles = +_vehiclesX;
reverse _convoyVehicles;
{
    (driver _x) stop false;
    [_x, _route, _convoyVehicles, 30, _x == _vehObj] spawn A3A_fnc_vehicleConvoyTravel;
	[_x, _markNames#_forEachIndex, false] spawn A3A_fnc_inmuneConvoy;			// Disabled the stuck-vehicle hacks
    sleep 3;
} forEach _convoyVehicles;



// **************** Termination condition handling ********************************

private _bonus = if (_difficult) then {2} else {1};
private _arrivalDist = 100;
private _timeout = time + 3600;

private _fnc_applyResults =
{
    params ["_success", "_success1", "_adjustCA", "_adjustBoss", "_aggroMod", "_aggroTime", "_type"];

    _taskState = if (_success) then { "SUCCEEDED" } else { "FAILED" };
    _taskState1 = if (_success1) then { "SUCCEEDED" } else { "FAILED" };

    [_adjustCA, _sideX] remoteExec ["A3A_fnc_timingCA", 2];
    [_adjustBoss, theBoss] call A3A_fnc_playerScoreAdd;

    [_sideX, _aggroMod, _aggroTime] remoteExec["A3A_fnc_addAggression", 2];

    if !(_success1) then {
        _killZones = killZones getVariable [_mrkOrigin,[]];
        _killZones = _killZones + [_mrkDest,_mrkDest];
        killZones setVariable [_mrkOrigin,_killZones,true];
    };

    [1, format ["Rebels %1 a %2 convoy mission", ["lost", "won"] select _success, _type], _filename, true] call A3A_fnc_log;
};

if (_convoyType == "Ammunition") then
{
    waitUntil {sleep 1; (time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or (not alive _vehObj) or (side group driver _vehObj != _sideX)};
    if ((_vehObj distance _posDest < _arrivalDist) or (time > _timeout)) then
    {
        [false, true, -1200*_bonus, -10*_bonus, -5, 60, "ammo"] call _fnc_applyResults;
        clearMagazineCargoGlobal _vehObj;
        clearWeaponCargoGlobal _vehObj;
        clearItemCargoGlobal _vehObj;
        clearBackpackCargoGlobal _vehObj;
    }
    else
    {
        [true, false, 1800*_bonus, 5*_bonus, 25, 120, "ammo"] call _fnc_applyResults;
        [0,300*_bonus] remoteExec ["A3A_fnc_resourcesFIA",2];
        {
            if (isPlayer _x) then
            {
                [10*_bonus,_x] call A3A_fnc_playerScoreAdd
            };
        } forEach ([500,0,_vehObj,teamPlayer] call A3A_fnc_distanceUnits);
    };
};

if (_convoyType == "Armor") then
{
    waitUntil {sleep 1; (time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or (not alive _vehObj) or (side group driver _vehObj != _sideX)};
    if ((_vehObj distance _posDest < _arrivalDist) or (time > _timeout)) then
    {
        [false, true, -1200*_bonus, -10*_bonus, -5, 60, "armor"] call _fnc_applyResults;
        server setVariable [_mrkDest,dateToNumber date,true];
    }
    else
    {
        [true, false, 1800*_bonus, 5*_bonus, 20, 90, "armor"] call _fnc_applyResults;
        [0,5*_bonus,_posDest] remoteExec ["A3A_fnc_citySupportChange",2];
        {
            if (isPlayer _x) then
            {
                [10*_bonus,_x] call A3A_fnc_playerScoreAdd
            };
        } forEach ([500,0,_vehObj,teamPlayer] call A3A_fnc_distanceUnits);
    };
};

if (_convoyType == "Prisoners") then
{
    waitUntil {sleep 1; (time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or (side group driver _vehObj != _sideX) or ({alive _x} count _POWs == 0)};
    if ((_vehObj distance _posDest < _arrivalDist) or ({alive _x} count _POWs == 0) or (time > _timeout)) then
    {
        [false, true, 0, -10*_bonus, -10, 60, "prisoner"] call _fnc_applyResults;
    };
    if (side group driver _vehObj != _sideX) then
    {
        {_x enableAI "MOVE"; [_x] orderGetin false} forEach _POWs;
        waitUntil {sleep 2; ({alive _x} count _POWs == 0) or ({(alive _x) and (_x distance _posHQ < 50)} count _POWs > 0) or (time > _timeout)};

        if (({alive _x} count _POWs == 0) or (time > _timeout)) then
        {
            [false, false, 0, -10*_bonus, 20, 120, "prisoner"] call _fnc_applyResults;
        }
        else
        {
            _countX = {(alive _x) and (_x distance _posHQ < 150)} count _POWs;
            [true, false, 0, _bonus*_countX/2, 10, 120, "prisoner"] call _fnc_applyResults;

            [_countX,_countX*300*_bonus] remoteExec ["A3A_fnc_resourcesFIA",2];
            [0,10*_bonus,_posSpawn] remoteExec ["A3A_fnc_citySupportChange",2];
            {[_countX,_x] call A3A_fnc_playerScoreAdd} forEach (allPlayers - (entities "HeadlessClient_F"));
        };
    };
};

if (_convoyType == "Reinforcements") then
{
    waitUntil {sleep 1; (time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or ({_x call A3A_fnc_canFight} count _reinforcementsX == 0)};
    if ({_x call A3A_fnc_canFight} count _reinforcementsX == 0) then
    {
        [true, false, 0, 5*_bonus, 10, 90, "reinforcement"] call _fnc_applyResults;
        [0,10*_bonus,_posSpawn] remoteExec ["A3A_fnc_citySupportChange",2];
        {if (_x distance _vehObj < 500) then {[10*_bonus,_x] call A3A_fnc_playerScoreAdd}} forEach (allPlayers - (entities "HeadlessClient_F"));
    }
    else
    {
        [false, true, 0, -10*_bonus, -10, 60, "reinforcement"] call _fnc_applyResults;
        _countX = {alive _x} count _reinforcementsX;
        if (_countX <= 8) then {_taskState1 = "FAILED"};
        if (sidesX getVariable [_mrkDest,sideUnknown] == _sideX) then
        {
            _typesX = [];
            {_typesX pushBack (_x getVariable "unitType")} forEach (_reinforcementsX select {alive _x});
            [_typesX,_sideX,_mrkDest,0] remoteExec ["A3A_fnc_garrisonUpdate",2];
        };
    };
};

if (_convoyType == "Money") then
{
    waitUntil {sleep 1; (time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or (not alive _vehObj) or (side group driver _vehObj != _sideX)};
    if ((time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or (not alive _vehObj)) then
    {
        if ((time > _timeout) or (_vehObj distance _posDest < _arrivalDist)) then
        {
            [false, true, -1200, -10*_bonus, -5, 60, "money"] call _fnc_applyResults;
        }
        else
        {
            [false, false, 1200, 0, -5, 60, "money"] call _fnc_applyResults;
        };
    }
    else
    {
        waitUntil {sleep 2; (_vehObj distance _posHQ < 50) or (not alive _vehObj) or (time > _timeout)};
        if ((not alive _vehObj) or (time > _timeout)) then
        {
            [false, false, 1200, 0, -5, 60, "money"] call _fnc_applyResults;
        };
        if (_vehObj distance _posHQ < 50) then
        {
            [true, false, 1200, 5*_bonus, 25, 120, "money"] call _fnc_applyResults;
            [0,5000*_bonus] remoteExec ["A3A_fnc_resourcesFIA",2];
            {if (_x distance _vehObj < 500) then {[10*_bonus,_x] call A3A_fnc_playerScoreAdd}} forEach (allPlayers - (entities "HeadlessClient_F"));
        };
    };
    reportedVehs = reportedVehs - [_vehObj];
    publicVariable "reportedVehs";
};

if (_convoyType == "Supplies") then
{
    waitUntil {sleep 1; (time > _timeout) or (_vehObj distance _posDest < _arrivalDist) or (not alive _vehObj) or (side group driver _vehObj != _sideX)};
    if (not alive _vehObj) then
    {
        [false, false, 0, -10*_bonus, 20, 120, "supply"] call _fnc_applyResults;
    }
    else
    {
        if (side group driver _vehObj != _sideX) then
        {
            waitUntil {sleep 1; (_vehObj distance _posDest < _arrivalDist) or (not alive _vehObj) or (time > _timeout)};
            if (_vehObj distance _posDest < _arrivalDist) then
            {
                [true, false, 0, 5*_bonus, 10, 90, "supply"] call _fnc_applyResults;
                [0,15*_bonus,_mrkDest] remoteExec ["A3A_fnc_citySupportChange",2];
                {if (_x distance _vehObj < 500) then {[10*_bonus,_x] call A3A_fnc_playerScoreAdd}} forEach (allPlayers - (entities "HeadlessClient_F"));
            }
            else
            {
                [false, false, 0, -10*_bonus, -10, 60, "supply"] call _fnc_applyResults;
                [5*_bonus,-10*_bonus,_mrkDest] remoteExec ["A3A_fnc_citySupportChange",2];
            };
        }
        else
        {
            [false, true, 0, -10*_bonus, -10, 60, "supply"] call _fnc_applyResults;
            [15*_bonus,0,_mrkDest] remoteExec ["A3A_fnc_citySupportChange",2];
        };
    };
    reportedVehs = reportedVehs - [_vehObj];
    publicVariable "reportedVehs";
};

[_taskId, "CONVOY", _taskState] call A3A_fnc_taskSetState;
[_taskId+"B",_taskState1] call BIS_fnc_taskSetState;		// Do this manually because both sides can fail


// Cleanup

{ deleteVehicle _x } forEach _POWs;

[_taskId, "CONVOY", 600, true] spawn A3A_fnc_taskDelete;

// Clear this array so the vehicleConvoyTravel spawns exit and merge groups
_convoyVehicles resize 0;
sleep 5;

// Groups change due to convoy crew group split/merge, so we recreate them
private _groups = [];
{ if (alive _x) then {_groups pushBackUnique (group _x)} } forEach _soldiers;
{ [_x] spawn A3A_fnc_groupDespawner } forEach _groups;
{ [_x] spawn A3A_fnc_VEHdespawner } forEach _vehiclesX;

{
    deleteMarker _x;
} forEach _markers;

// Hang around for a bit, and then send all escorts back to the source base
sleep 60;
{
    if (count units _x > 0) then {
        private _wp = _x addWaypoint [_posOrigin, 50];
        _wp setWaypointType "MOVE";
        _x setCurrentWaypoint _wp;
    };
} forEach _groups - [group driver _vehObj];
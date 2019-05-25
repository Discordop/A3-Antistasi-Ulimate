if (!isServer and hasInterface) exitWith{};

private ["_pos","_markerX","_vehiclesX","_grupos","_soldiers","_positionX","_busy","_buildings","_pos1","_pos2","_grupo","_cuenta","_typeVehX","_veh","_unit","_arrayVehAAF","_nVeh","_frontierX","_size","_ang","_mrk","_typeGroup","_flagX","_perro","_typeUnit","_garrison","_lado","_cfg","_max","_vehicle","_vehCrew","_groupVeh","_roads","_dist","_road","_roadscon","_roadcon","_dirveh","_bunker","_typeGroup","_positionXes","_posMG","_posMort","_posTank"];
_markerX = _this select 0;

_vehiclesX = [];
_grupos = [];
_soldiers = [];

_positionX = getMarkerPos (_markerX);
_pos = [];

_size = [_markerX] call A3A_fnc_sizeMarker;
//_garrison = garrison getVariable _markerX;

_frontierX = [_markerX] call A3A_fnc_isFrontline;
_busy = if (dateToNumber date > server getVariable _markerX) then {false} else {true};
_nVeh = round (_size/60);

_lado = lados getVariable [_markerX,sideUnknown];

_positionXes = roadsX getVariable [_markerX,[]];
_posMG = _positionXes select {(_x select 2) == "MG"};
_posMort = _positionXes select {(_x select 2) == "Mort"};
_posTank = _positionXes select {(_x select 2) == "Tank"};
_posAA = _positionXes select {(_x select 2) == "AA"};
_posAT = _positionXes select {(_x select 2) == "AT"};

if (spawner getVariable _markerX != 2) then
	{
	_typeVehX = if (_lado == Occupants) then {vehNATOAA} else {vehCSATAA};
	if ([_typeVehX] call A3A_fnc_vehAvailable) then
		{
		_max = if (_lado == Occupants) then {1} else {2};
		for "_i" from 1 to _max do
			{
			_pos = [_positionX, 50, _size, 10, 0, 0.3, 0] call BIS_Fnc_findSafePos;
			//_pos = _positionX findEmptyPosition [_size - 200,_size+50,_typeVehX];
			_vehicle=[_pos, random 360,_typeVehX, _lado] call bis_fnc_spawnvehicle;
			_veh = _vehicle select 0;
			_vehCrew = _vehicle select 1;
			{[_x,_markerX] call A3A_fnc_NATOinit} forEach _vehCrew;
			[_veh] call A3A_fnc_AIVEHinit;
			_groupVeh = _vehicle select 2;
			_soldiers = _soldiers + _vehCrew;
			_grupos pushBack _groupVeh;
			_vehiclesX pushBack _veh;
			sleep 1;
			};
		};
	};

if ((spawner getVariable _markerX != 2) and _frontierX) then
	{
	_roads = _positionX nearRoads _size;
	if (count _roads != 0) then
		{
		_grupo = createGroup _lado;
		_grupos pushBack _grupo;
		_dist = 0;
		_road = objNull;
		{if ((position _x) distance _positionX > _dist) then {_road = _x;_dist = position _x distance _positionX}} forEach _roads;
		_roadscon = roadsConnectedto _road;
		_roadcon = objNull;
		{if ((position _x) distance _positionX > _dist) then {_roadcon = _x}} forEach _roadscon;
		_dirveh = [_roadcon, _road] call BIS_fnc_DirTo;
		_pos = [getPos _road, 7, _dirveh + 270] call BIS_Fnc_relPos;
		_bunker = "Land_BagBunker_01_small_green_F" createVehicle _pos;
		_vehiclesX pushBack _bunker;
		_bunker setDir _dirveh;
		_pos = getPosATL _bunker;
		_typeVehX = if (_lado==Occupants) then {staticATOccupants} else {staticATInvaders};
		_veh = _typeVehX createVehicle _positionX;
		_vehiclesX pushBack _veh;
		_veh setPos _pos;
		_veh setDir _dirVeh + 180;
		_typeUnit = if (_lado==Occupants) then {staticCrewOccupants} else {staticCrewInvaders};
		_unit = _grupo createUnit [_typeUnit, _positionX, [], 0, "NONE"];
		[_unit,_markerX] call A3A_fnc_NATOinit;
		[_veh] call A3A_fnc_AIVEHinit;
		_unit moveInGunner _veh;
		_soldiers pushBack _unit;
		};
	};
_mrk = createMarkerLocal [format ["%1patrolarea", random 100], _positionX];
_mrk setMarkerShapeLocal "RECTANGLE";
_mrk setMarkerSizeLocal [(distanceSPWN/2),(distanceSPWN/2)];
_mrk setMarkerTypeLocal "hd_warning";
_mrk setMarkerColorLocal "ColorRed";
_mrk setMarkerBrushLocal "DiagGrid";
_ang = markerDir _markerX;
_mrk setMarkerDirLocal _ang;
if (!debug) then {_mrk setMarkerAlphaLocal 0};
_garrison = garrison getVariable [_markerX,[]];
_garrison = _garrison call A3A_fnc_garrisonReorg;
_tam = count _garrison;
private _patrol = true;
if (_tam < ([_markerX] call A3A_fnc_garrisonSize)) then
	{
	_patrol = false;
	}
else
	{
	if ({if ((getMarkerPos _x inArea _mrk) and (lados getVariable [_x,sideUnknown] != _lado)) exitWIth {1}} count markersX > 0) then {_patrol = false};
	};
if (_patrol) then
	{
	_cuenta = 0;
	while {(spawner getVariable _markerX != 2) and (_cuenta < 4)} do
		{
		_arrayGrupos = if (_lado == Occupants) then {gruposNATOsmall} else {gruposCSATsmall};
		if ([_markerX,false] call A3A_fnc_fogCheck < 0.3) then {_arrayGrupos = _arrayGrupos - sniperGroups};
		_typeGroup = selectRandom _arrayGrupos;
		_grupo = [_positionX,_lado, _typeGroup,false,true] call A3A_fnc_spawnGroup;
		if !(isNull _grupo) then
			{
			sleep 1;
			if ((random 10 < 2.5) and (not(_typeGroup in sniperGroups))) then
				{
				_perro = _grupo createUnit ["Fin_random_F",_positionX,[],0,"FORM"];
				[_perro] spawn A3A_fnc_guardDog;
				sleep 1;
				};
			_nul = [leader _grupo, _mrk, "SAFE","SPAWNED", "RANDOM", "NOVEH2"] execVM "scripts\UPSMON.sqf";
			_grupos pushBack _grupo;
			{[_x,_markerX] call A3A_fnc_NATOinit; _soldiers pushBack _x} forEach units _grupo;
			};
		_cuenta = _cuenta +1;
		};
	};
_cuenta = 0;

_grupo = createGroup _lado;
_grupos pushBack _grupo;
_typeUnit = if (_lado==Occupants) then {staticCrewOccupants} else {staticCrewInvaders};
_typeVehX = if (_lado == Occupants) then {NATOMortar} else {CSATMortar};
{
if (spawner getVariable _markerX != 2) then
	{
	_veh = _typeVehX createVehicle [0,0,1000];
	_veh setDir (_x select 1);
	_veh setPosATL (_x select 0);
	_nul=[_veh] execVM "scripts\UPSMON\MON_artillery_add.sqf";
	_unit = _grupo createUnit [_typeUnit, _positionX, [], 0, "NONE"];
	[_unit,_markerX] call A3A_fnc_NATOinit;
	_unit moveInGunner _veh;
	_soldiers pushBack _unit;
	_vehiclesX pushBack _veh;
	_nul = [_veh] call A3A_fnc_AIVEHinit;
	sleep 1;
	};
} forEach _posMort;
_typeVehX = if (_lado == Occupants) then {NATOMG} else {CSATMG};
{
if (spawner getVariable _markerX != 2) then
	{
	_proceed = true;
	if ((_x select 0) select 2 > 0.5) then
		{
		_bld = nearestBuilding (_x select 0);
		if !(alive _bld) then {_proceed = false};
		};
	if (_proceed) then
		{
		_veh = _typeVehX createVehicle [0,0,1000];
		_veh setDir (_x select 1);
		_veh setPosATL (_x select 0);
		_unit = _grupo createUnit [_typeUnit, _positionX, [], 0, "NONE"];
		[_unit,_markerX] call A3A_fnc_NATOinit;
		_unit moveInGunner _veh;
		_soldiers pushBack _unit;
		_vehiclesX pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		};
	};
} forEach _posMG;
_typeVehX = if (_lado == Occupants) then {staticAAOccupants} else {staticAAInvaders};
{
if (spawner getVariable _markerX != 2) then
	{
	if !([_typeVehX] call A3A_fnc_vehAvailable) exitWith {};
	_proceed = true;
	if ((_x select 0) select 2 > 0.5) then
		{
		_bld = nearestBuilding (_x select 0);
		if !(alive _bld) then {_proceed = false};
		};
	if (_proceed) then
		{
		_veh = _typeVehX createVehicle [0,0,1000];
		_veh setDir (_x select 1);
		_veh setPosATL (_x select 0);
		_unit = _grupo createUnit [_typeUnit, _positionX, [], 0, "NONE"];
		[_unit,_markerX] call A3A_fnc_NATOinit;
		_unit moveInGunner _veh;
		_soldiers pushBack _unit;
		_vehiclesX pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		};
	};
} forEach _posAA;
_typeVehX = if (_lado == Occupants) then {staticATOccupants} else {staticATInvaders};
{
if (spawner getVariable _markerX != 2) then
	{
	if !([_typeVehX] call A3A_fnc_vehAvailable) exitWith {};
	_proceed = true;
	if ((_x select 0) select 2 > 0.5) then
		{
		_bld = nearestBuilding (_x select 0);
		if !(alive _bld) then {_proceed = false};
		};
	if (_proceed) then
		{
		_veh = _typeVehX createVehicle [0,0,1000];
		_veh setDir (_x select 1);
		_veh setPosATL (_x select 0);
		_unit = _grupo createUnit [_typeUnit, _positionX, [], 0, "NONE"];
		[_unit,_markerX] call A3A_fnc_NATOinit;
		_unit moveInGunner _veh;
		_soldiers pushBack _unit;
		_vehiclesX pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		};
	};
} forEach _posAT;

_ret = [_markerX,_size,_lado,_frontierX] call A3A_fnc_milBuildings;
_grupos pushBack (_ret select 0);
_vehiclesX append (_ret select 1);
_soldiers append (_ret select 2);

if (!_busy) then
	{
	_buildings = nearestObjects [_positionX, ["Land_LandMark_F","Land_runway_edgelight"], _size / 2];
	if (count _buildings > 1) then
		{
		_pos1 = getPos (_buildings select 0);
		_pos2 = getPos (_buildings select 1);
		_ang = [_pos1, _pos2] call BIS_fnc_DirTo;

		_pos = [_pos1, 5,_ang] call BIS_fnc_relPos;
		_grupo = createGroup _lado;
		_grupos pushBack _grupo;
		_cuenta = 0;
		while {(spawner getVariable _markerX != 2) and (_cuenta < 5)} do
			{
			_typeVehX = if (_lado == Occupants) then {selectRandom (vehNATOAir select {[_x] call A3A_fnc_vehAvailable})} else {selectRandom (vehCSATAir select {[_x] call A3A_fnc_vehAvailable})};
			_veh = createVehicle [_typeVehX, _pos, [],3, "NONE"];
			_veh setDir (_ang + 90);
			sleep 1;
			_vehiclesX pushBack _veh;
			_nul = [_veh] call A3A_fnc_AIVEHinit;
			_pos = [_pos, 50,_ang] call BIS_fnc_relPos;
			/*
			_typeUnit = if (_lado==Occupants) then {NATOpilot} else {CSATpilot};
			_unit = _grupo createUnit [_typeUnit, _positionX, [], 0, "NONE"];
			[_unit,_markerX] call A3A_fnc_NATOinit;
			_soldiers pushBack _unit;
			*/
			_cuenta = _cuenta + 1;
			};
		_nul = [leader _grupo, _markerX, "SAFE","SPAWNED","NOFOLLOW","NOVEH"] execVM "scripts\UPSMON.sqf";
		};
	};

_typeVehX = if (_lado == Occupants) then {NATOFlag} else {CSATFlag};
_flagX = createVehicle [_typeVehX, _positionX, [],0, "CAN_COLLIDE"];
_flagX allowDamage false;
[_flagX,"take"] remoteExec ["A3A_fnc_flagaction",[buenos,civilian],_flagX];
_vehiclesX pushBack _flagX;
if (_lado == Occupants) then
	{
	_veh = NATOAmmoBox createVehicle _positionX;
	_nul = [_veh] call A3A_fnc_NATOcrate;
	_vehiclesX pushBack _veh;
	_veh call jn_fnc_logistics_addAction;
	}
else
	{
	_veh = CSATAmmoBox createVehicle _positionX;
	_nul = [_veh] call A3A_fnc_CSATcrate;
	_vehiclesX pushBack _veh;
	_veh call jn_fnc_logistics_addAction;
	};

if (!_busy) then
	{
	{
	_arrayVehAAF = if (_lado == Occupants) then {vehNATOAttack select {[_x] call A3A_fnc_vehAvailable}} else {vehCSATAttack select {[_x] call A3A_fnc_vehAvailable}};
	if ((spawner getVariable _markerX != 2) and (count _arrayVehAAF > 0)) then
		{
		_veh = createVehicle [selectRandom _arrayVehAAF, (_x select 0), [], 0, "NONE"];
		_veh setDir (_x select 1);
		_vehiclesX pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		_nVeh = _nVeh -1;
		sleep 1;
		};
	} forEach _posTank;
	};
_arrayVehAAF = if (_lado == Occupants) then {vehNATONormal} else {vehCSATNormal};

_cuenta = 0;
while {(spawner getVariable _markerX != 2) and (_cuenta < _nVeh)} do
	{
	_typeVehX = selectRandom _arrayVehAAF;
	_pos = [_positionX, 10, _size/2, 10, 0, 0.3, 0] call BIS_Fnc_findSafePos;
	_veh = createVehicle [_typeVehX, _pos, [], 0, "NONE"];
	_veh setDir random 360;
	_vehiclesX pushBack _veh;
	_nul = [_veh] call A3A_fnc_AIVEHinit;
	sleep 1;
	_cuenta = _cuenta + 1;
	};

_array = [];
_subArray = [];
_cuenta = 0;
_tam = _tam -1;
while {_cuenta <= _tam} do
	{
	_array pushBack (_garrison select [_cuenta,7]);
	_cuenta = _cuenta + 8;
	};
for "_i" from 0 to (count _array - 1) do
	{
	_grupo = if (_i == 0) then {[_positionX,_lado, (_array select _i),true,false] call A3A_fnc_spawnGroup} else {[_positionX,_lado, (_array select _i),false,true] call A3A_fnc_spawnGroup};
	_grupos pushBack _grupo;
	{[_x,_markerX] call A3A_fnc_NATOinit; _soldiers pushBack _x} forEach units _grupo;
	if (_i == 0) then {_nul = [leader _grupo, _markerX, "SAFE", "RANDOMUP","SPAWNED", "NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf"} else {_nul = [leader _grupo, _markerX, "SAFE","SPAWNED", "RANDOM","NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf"};
	};

waitUntil {sleep 1; (spawner getVariable _markerX == 2)};

deleteMarker _mrk;
{if (alive _x) then
	{
	deleteVehicle _x
	};
} forEach _soldiers;
//if (!isNull _periodista) then {deleteVehicle _periodista};
{deleteGroup _x} forEach _grupos;
{
if (!(_x in staticsToSave)) then
	{
	if ((!([distanceSPWN-_size,1,_x,buenos] call A3A_fnc_distanceUnits))) then {deleteVehicle _x}
	};
} forEach _vehiclesX;



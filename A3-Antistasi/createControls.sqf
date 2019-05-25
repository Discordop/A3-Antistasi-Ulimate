if (!isServer) exitWith {};

private ["_markerX","_pos","_roads","_road","_posroad","_nearX","_cuenta"];

_markerX = _this select 0;

_pos = getMarkerPos _markerX;
_cuenta = 0;

{if (getMarkerPos _x distance _pos < 1000) then {_cuenta = _cuenta + 1}} forEach controlsX;

if (_cuenta > 3) exitWith {};

_roads = _pos nearRoads 500;

_roads = _roads call BIS_Fnc_arrayShuffle;
{
_road = _x;
_posroad = getPos _road;
if (_cuenta > 4) exitWith {};

if (_posroad distance _pos > 400) then
	{
        _roadsCon = roadsConnectedto _road;
        if (count _roadsCon > 0) then
                {
        	_nearX = [controlsX,_posroad] call BIS_fnc_nearestPosition;
        	if (getMarkerPos _nearX distance _posroad > 1000) then
        		{
        		_nombre = format ["control_%1", count controlsX];
        		_mrk = createmarker [format ["%1", _nombre], _posroad];
                        _mrk setMarkerSize [30,30];
                        _mrk setMarkerShape "RECTANGLE";
                        _mrk setMarkerBrush "SOLID";
                        _mrk setMarkerColor colourTeamPlayer;
                        _mrk setMarkerText _nombre;
                        if (not debug) then {_mrk setMarkerAlpha 0};
                        if (lados getVariable [_markerX,sideUnknown] == Occupants) then
                                {
                                lados setVariable [_nombre,Occupants,true];
                                }
                        else
                                {
                                if (lados getVariable [_markerX,sideUnknown] == ) then {lados setVariable [_nombre,,true]} else {lados setVariable [_nombre,buenos,true]};
                                };
                        controlsX pushBackUnique _nombre;
                        markersX pushBackUnique _nombre;
                        spawner setVariable [_nombre,2,true];
                        _cuenta = _cuenta + 1;
        		};
                };
	};
} forEach _roads;
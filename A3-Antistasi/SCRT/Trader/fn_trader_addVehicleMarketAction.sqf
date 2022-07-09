params ["_traderX"];

_traderX addAction [
	localize "STR_antistasi_actions_common_access_vehicle_marker_text", 
	{call SCRT_fnc_trader_tryOpenVehicleMarketMenu},
	nil,
	5,
	false,
	true,
	"",
	"(isPlayer _this) and (vehicle _this == _this) and (_this == _this getVariable ['owner',objNull])",
	3
];

if (A3A_hasCW) then {
	_traderX addAction ["Mandalorian Workshop",{call SCRT_fnc_trader_tryOpenMandoWorkshopMenu}];
};

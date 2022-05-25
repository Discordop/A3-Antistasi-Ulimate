params ["_campaignID", "_worldname"];

private _postfix = format["%1%2AntistasiPlus%3",serverID,_campaignID,_worldName]; 

// Delete all known player data for specified campaign
private _savedPlayers = profileNamespace getVariable ["savedPlayers" + _postfix, []];
{
	private _playerID = _x;
	{
		private _varName = format ["player_%1_%2", _playerID, _x];
		profileNameSpace setVariable [_varname + _postfix, nil];

	} forEach ["loadoutPlayer", "scorePlayer", "rankPlayer", "personalGarage", "moneyX"];

} forEach _savedPlayers;


// Delete all server data for specified campaign
{
	profileNameSpace setVariable [_x + _postfix, nil];

} forEach ["gameMode", "difficultyX", "bombRuns", "supportPoints", "smallCAmrk", "membersX", "antennas",
	"mrkSDK", "mrkCSAT", "posHQ", "dateX", "skillFIA", "destroyedSites", "distanceSPWN",
	"chopForest", "maxUnits", "maxConstructions", "nextTick", "weather", "destroyedBuildings", "aggressionOccupants",
	"aggressionInvaders", "resourcesFIA", "hr", "vehInGarage", "staticsX", "constructionsX", "jna_datalist",
	"prestigeOPFOR", "prestigeBLUFOR", "garrison", "wurzelGarrison", "usesWurzelGarrison", "minesX",
	"watchpostsFIA", "roadblocksFIA", "aapostsFIA", "mortarpostsFIA", "atpostsFIA", "hmgpostsFIA", "tasks", "idlebases", 
	"idleassets", "killZones", "controlsSDK", "params",
	"attackCountdownOccupants", "attackCountdownInvaders", "prestigeNATO", "prestigeCSAT",
	"savedPlayers", "testingTimerIsActive", "traderPosition", "isTraderQuestCompleted", "traderDiscount", "areOccupantsDefeated", "areInvadersDefeated", "rebelLoadouts"];


// Remove this campaign from the save list, if present
private _saveList = [profileNamespace getVariable "antistasiPlusSavedGames"] param [0, [], [[]]];
private _saveIndex = -1;
{
	if (_x select 0 == _campaignID) exitWith { _saveIndex = _forEachIndex };
} forEach _saveList;

_saveList deleteAt _saveIndex;
profileNamespace setVariable ["antistasiPlusSavedGames", _saveList];


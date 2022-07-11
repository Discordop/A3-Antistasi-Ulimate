_index = lbCurSel 7100;
_droidType = lbData [7100, _index];
_input = parseNumber ctrlText 7700;
resourcesFIADroid = server getVariable ["resourcesFIA", 1000];
switch (_droidType) do
{
	case "3AS_CIS_TS_F": {moneyRequired = 0, partsRequired = 5, droidDescription = "T-Series Droid, Not very useful in fights."};
	case "JLTS_Droid_B1_Training_AR": {moneyRequired = 0, partsRequired = 6, droidDescription = "standard B1 Droid, programmed to use a heavy gun."};
	case "JLTS_Droid_B1_Training_E5": {moneyRequired = 0, partsRequired = 3, droidDescription = "This is the standard for a B1 Droid. It works... ish."};
	case "JLTS_Droid_B1_Training_Sniper": {moneyRequired = 0, partsRequired = 6, droidDescription = "A deadly shot... sometimes!"};
	case "CWDependencies_Mando_Droid": {moneyRequired = 0, partsRequired = 5, droidDescription = "Deadly B1 Droid, programmed to fight."};
	case "lsd_cis_bxDiplomat_specops": {moneyRequired = 0, partsRequired = 11, droidDescription = "No longer certain that one ever does win a war, I am. - Yoda"};
	case "lsd_cis_bxAssassin_specops": {moneyRequired = 0, partsRequired = 10, droidDescription = "*BOING BOING BOING*"};
};

partsRequired = partsRequired * _input;

if (player == player) then {
	_money = player getVariable "moneyX";
	_scrap = {_x == "CW_DroidParts"} count magazines player;
	if (_scrap >= partsRequired) then {
		_script = [_scrap, _droidType, partsRequired, _input] spawn
		{
			params ["_scrap", "_droidType", "_partsRequired", "_input"];
			private _result = ["Confirm shipment?", "Confirm", true, true] call BIS_fnc_guiMessage;
			
			waitUntil {!isNil "_result"};

			if (_result) then {
				if (finite _input && _input >= 1) then {
					["Mandalorian Workshop", "Order Has Been Approved."] remoteExec ["A3A_fnc_customHint", 0, false];
					{
						if (_x == "CW_DroidParts" && {_x == "CW_DroidParts"} count magazines player != _scrap - _partsRequired) then {
							player removeMagazine _x;
						};
					} forEach magazines player;
					_pos = [player, 1, 30, 3, 0, 20, 0] call BIS_fnc_findSafePos;
					for "_i" from 1 to _input do {
						_droidType createUnit [position player, group player, "thisUnit = this"];
						thisUnit setPos _pos;
					};
					
				} else {
					["Mandalorian Workshop", "Shipment amount has to be over 1."] remoteExec ["A3A_fnc_customHint", 0, false];
				};
			} else {
				["Mandalorian Workshop", "Order Has Been Cancelled."] remoteExec ["A3A_fnc_customHint", 0, false];
			};
		};
	} else {
		["Mandalorian Workshop", "You do not have enough droid scrap in your inventory."] remoteExec ["A3A_fnc_customHint", 0, false];
	};
	/*
	if (player != theBoss) then {
		["Mandalorian Workshop - ignore this one, is debug", "Clan funds not deducted. Your personal money was taken as you're not the commander role."] remoteExec ["A3A_fnc_customHint", 0, false];
	};
	*/
};
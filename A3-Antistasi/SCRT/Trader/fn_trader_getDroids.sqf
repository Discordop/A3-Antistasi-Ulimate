_allowedDroids = [];
unitArray = 
[
	"3AS_CIS_TS_F",
	"JLTS_Droid_B1_Training_AR",
	"JLTS_Droid_B1_Training_E5",
	"JLTS_Droid_B1_Training_Sniper",
	"3AS_CIS_B2_F",
	"lsd_cis_bxAssassin_specops",
	"lsd_cis_bxDiplomat_specops",
	"CWDependencies_Mando_Droid"
];

weaponArray = 
[

];

partsRequired = 0;
_input = "1";
picturePath = "";
droidDescription = "";

{
	_droidName = getText (configFile >> "cfgVehicles" >> _x >> "displayName");
	lbAdd [7100, _droidName];
	lbSetData [7100, _forEachIndex, _x];
} forEach unitArray;

_script = [] spawn {

	while {true} do 
	{
		_index = lbCurSel 7100;
		_droidType = lbData [7100, _index];
		_scrap = {_x == "CW_DroidParts"} count magazines player;
		_input = parseNumber ctrlText 7700;
		
		switch (_droidType) do
		{
			case "3AS_CIS_TS_F": {moneyRequired = 0, partsRequired = 5, droidDescription = "T-Series Droid, Not very useful in fights."};
			case "3AS_CIS_B2_F": {moneyRequired = 0, partsRequired = 15, droidDescription = "WATCH THOSE WRIST ROCKETS!"};
			case "JLTS_Droid_B1_Training_AR": {moneyRequired = 0, partsRequired = 6, droidDescription = "standard B1 Droid, programmed to use a heavy gun."};
			case "JLTS_Droid_B1_Training_E5": {moneyRequired = 0, partsRequired = 3, droidDescription = "This is the standard for a B1 Droid. It works... ish."};
			case "JLTS_Droid_B1_Training_Sniper": {moneyRequired = 0, partsRequired = 6, droidDescription = "A deadly shot... sometimes!"};
			case "lsd_cis_bxAssassin_specops": {moneyRequired = 0, partsRequired = 10, droidDescription = "*BOING BOING BOING*"};
			case "lsd_cis_bxDiplomat_specops": {moneyRequired = 0, partsRequired = 11, droidDescription = "No longer certain that one ever does win a war, I am. - Yoda"};
			case "CWDependencies_Mando_Droid": {moneyRequired = 0, partsRequired = 5, droidDescription = "Deadly B1 Droid, programmed to fight."};
		};
		
		partsRequired = partsRequired * _input;
		
		_picture = getText (configFile >> "cfgVehicles" >> _droidType >> "editorPreview");
		_description = getText (configFile >> "cfgVehicles" >> _droidType >> "role");
		/*
		if !(_droidType in vehiclesArray) then {
			ctrlSetText [7600, str partsRequired];
		};
		*/
		ctrlSetText [7500, format["%1 | Parts Required: %2", droidDescription, partsRequired] ];
		ctrlSetText [8300, format["%1", _scrap] ];
		sleep 0.1;
	};

};
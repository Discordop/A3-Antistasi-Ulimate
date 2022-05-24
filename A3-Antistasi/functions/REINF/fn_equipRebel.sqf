// Fully equips a rebel infantry unit based on their class and unlocked gear
// _recruitType param allows some variation based on recruiting method: 0 recruit, 1 HC squad, 2 garrison

params ["_unit", "_recruitType", ["_forceClass", ""]];
private _filename = "fn_equipRebel";

// Mostly exists because BIS_fnc_addWeapon won't use backpack space properly with AT launchers
private _addWeaponAndMags = {
	params["_unit", "_weapon", "_magCount"];

	if !(isClass (configFile / "CfgWeapons" / _weapon)) exitwith {
		[1, format ["Bad weapon class: %1", _weapon], _filename] call A3A_fnc_log;
	};

	_unit addWeapon _weapon;
	private _magazine = getArray (configFile / "CfgWeapons" / _weapon / "magazines") select 0;
	_unit addSecondaryWeaponItem _magazine;
	_unit addMagazines [_magazine, _magCount-1];
};

private _unitClass = if (_forceClass != "") then {_forceClass} else {_unit getVariable "unitType"};
private _customLoadout = rebelLoadouts get _unitClass;

if (!isNil "_customLoadout") exitWith {
	if (randomizeRebelLoadoutUniforms) then {
		private _uniforms = A3A_faction_reb getVariable "uniforms";
		private _uniformItems = uniformItems _unit;

		_unit setUnitLoadout _customLoadout;

		_unit forceAddUniform (selectRandom _uniforms);
		{_unit addItemToUniform _x} forEach _uniformItems;

		private _headgear = headgear _unit;

		//if it isn't a helmet - randomize
		if !(_headgear in allArmoredHeadgear) then {
			_unit addHeadgear (selectRandom (A3A_faction_reb getVariable "headgear"));
		};
	} else {
		_unit setUnitLoadout _customLoadout;
	};

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	if (haveRadio) then {_unit linkItem selectrandom (unlockedRadios)};

	if (_unitClass == SDKExp) then {
		_unit enableAIFeature ["MINEDETECTION", true]; //This should prevent them from Stepping on the Mines as an "Expert" (It helps, they still step on them)
	};

	[4, format["Class %1, type %2, loadout %3", _unitClass, _recruitType, str (getUnitLoadout _unit)], _filename] call A3A_fnc_log;
};

// Clear everything except standard items and empty uniform
// Actually fast, unlike a setUnitLoadout with a full loadout
_unit setUnitLoadout [ [], [], [],    [uniform _unit, []], [], [],    "", "", [],
	["ItemMap","","","ItemCompass","ItemWatch",""] ];		// no GPS, radio, NVG
if (haveRadio) then {_unit linkItem selectrandom (unlockedRadios)};

// Chance of picking armored rather than random vests and headgear, rising with unlocked gear counts
if !(unlockedHeadgear isEqualTo []) then {
	if (count unlockedArmoredHeadgear * 20 < random(100)) then { _unit addHeadgear (selectRandom (A3A_faction_reb getVariable "headgear")) }
	else { _unit addHeadgear (selectRandom unlockedArmoredHeadgear) };
};
if !(unlockedVests isEqualTo []) then {
	if (count unlockedArmoredVests * 20 < random(100)) then { _unit addVest (selectRandom unlockedVests) }
	else { _unit addVest (selectRandom unlockedArmoredVests); };
};

if !(unlockedBackpacksCargo isEqualTo []) then {
	private _backpack = selectRandom unlockedBackpacksCargo;
	_unit addBackpack _backpack;

	//check for backpacks with zero cargo space
	if(!(_unit canAddItemToBackpack "FirstAidKit")) then {
		private _iterations = 0;

		while {_iterations < 10} do {
			removeBackpack _unit;
			_backpack = selectRandom unlockedBackpacksCargo;
			_unit addBackpack _backpack;
			if(_unit canAddItemToBackpack "FirstAidKit") exitWith {};
			_iterations = _iterations + 1;
		};
	};
};

// this should be improved by categorising grenades properly
private _unlockedSmokes = allSmokeGrenades arrayIntersect unlockedMagazines;
if !(_unlockedSmokes isEqualTo []) then { _unit addMagazines [selectRandom _unlockedSmokes, 2] };

switch (true) do {
	case (_unitClass == SDKSniper): {
		if (count unlockedSniperRifles > 0) then {
			[_unit, selectRandom unlockedSniperRifles, 8] call _addWeaponAndMags;
			if (count unlockedOptics > 0) then {
				private _compatibleX = [primaryWeapon _unit] call BIS_fnc_compatibleItems;
				private _potentials = unlockedOptics select {_x in _compatibleX};
				if (count _potentials > 0) then {_unit addPrimaryWeaponItem (_potentials select 0)};
			};
		} else {
			[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		};
	};
	case (_unitClass == SDKMil): {
		[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		// Adding AA launchers to garrison riflemen because explosives guys can't currently be purchased there
		if (_recruitType == 2 && {count unlockedAA > 0}) then {
			[_unit, selectRandom unlockedAA, 1] call _addWeaponAndMags;
		};
	};
	case (_unitClass == SDKMG): {
		[_unit,unlockedMachineGuns] call A3A_fnc_randomRifle;
	};
	case (_unitClass == SDKGL): {
		[_unit,unlockedGrenadeLaunchers] call A3A_fnc_randomRifle;
	};
	case (_unitClass == SDKExp): {
		[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		_unit enableAIFeature ["MINEDETECTION", true]; //This should prevent them from Stepping on the Mines as an "Expert" (It helps, they still step on them)
		if (count unlockedAA > 0) then {
			[_unit, selectRandom unlockedAA, 1] call _addWeaponAndMags;
		};
			_unit addItemToBackpack (selectRandom unlockedToolkits);
			_unit addItemToBackpack (selectRandom unlockedMineDetectors);
		// TODO: explosives. Not that they know what to do with them.
	};
	case (_unitClass == SDKEng): {
		[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		_unit addItemToBackpack (selectRandom unlockedToolkits);
	};
	case (_unitClass == SDKMedic): {
		[_unit,unlockedSMGs] call A3A_fnc_randomRifle;
		// temporary hack
		private _medItems = [];
		{
			for "_i" from 1 to (_x#1) do { _medItems pushBack (_x#0) };
		} forEach (["MEDIC",independent] call A3A_fnc_itemset_medicalSupplies);
		{
			_medItems deleteAt (_medItems find _x);
		} forEach items _unit;
		{
			_unit addItemToBackpack _x;
		} forEach _medItems;
	};
	case (_unitClass == SDKATman): {
		[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		if !(unlockedAT isEqualTo []) then {
			[_unit, selectRandom unlockedAT, 4] call _addWeaponAndMags;
		};
	};
	case (_unitClass in squadLeaders): {
		[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		if (_recruitType == 1) then {_unit linkItem selectrandom (unlockedRadios)};
	};
 	case (_unitClass isEqualTo staticCrewTeamPlayer): {
		[_unit,unlockedRifles] call A3A_fnc_randomRifle;
		if (_recruitType == 1) then {_unit linkItem selectrandom (unlockedRadios)};
	};
	default {
		[_unit,unlockedSMGs] call A3A_fnc_randomRifle;
		[1, format["Unknown unit class: %1", _unitClass], _filename] call A3A_fnc_log;
	};
};

if (sunOrMoon < 1) then {
	if !(haveNV) then {
		// horrible, although at least it stops once you unlock NV
		private _flashlights = allLightAttachments arrayIntersect unlockedItems;
		if !(_flashlights isEqualTo []) then {
			_flashlights = _flashlights arrayIntersect ((primaryWeapon _unit) call BIS_fnc_compatibleItems);
			if !(_flashlights isEqualTo []) then {
				private _flashlight = selectRandom _flashlights;
				_unit addPrimaryWeaponItem _flashlight;
				_unit assignItem _flashlight;
				_unit enableGunLights _flashlight;
			};
		};
	} else {
		// inclined to hand these out even in daytime, but whatever
		_unit linkItem (selectRandom unlockedNVGs);
	};
};

// remove backpack if empty, otherwise squad troops will throw it on the ground
if (backpackItems _unit isEqualTo []) then { removeBackpack _unit };

[4, format["Class %1, type %2, loadout %3", _unitClass, _recruitType, str (getUnitLoadout _unit)], _filename] call A3A_fnc_log;
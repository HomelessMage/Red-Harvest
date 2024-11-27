waitUntil {alive player};
life_markers = false;
waitUntil { !isNull (findDisplay 46) };
[] spawn {(findDisplay 46) displayAddEventHandler['KeyDown','if (_this select 1 == 207) then { call turnOn; };'];};

turnOn = {
	life_markers = !life_markers;
	if (life_markers) then {
		hint "Маркеры включены!";
		life_markers_active = findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", "
			private _vehicles = [];
			private _crewNames = [];
			private _entitiesInVehicle = [];
			private _allUnits = [];
			private ['_text','_vehicleTexture','_sideColor'];
			{_entitiesInVehicle pushBackUnique _x;} forEach (allUnits select {!(isNull objectParent _x) && !(isNull _x) && (side _x == side player)});
			{_vehicles pushBackUnique _x;} forEach (vehicles select {((_x isKindOf ""LandVehicle"")||(_x isKindOf ""Air"")||(_x isKindOf ""Ship"")) && !(isNull _x) && !(crew _x isEqualTo []) &&(side group _x == side player)});
			{_allUnits pushBackUnique _x;} forEach (allUnits select {(!isNull _x) && (side _x == side player)});
			{
				if !(isNull _x) then {
					_vehicleTexture = [getText (configfile >> ""CfgVehicles"" >> typeOf _x >> ""icon"")] call BIS_fnc_textureVehicleIcon;
					_sideColor = [side group _x] call BIS_fnc_sideColor;
					if (_x in _vehicles) then {
						_crewNames = [];
						{_crewNames pushBackUnique (_x getVariable['realname',name _x]);} forEach (crew _x select {alive _x});
						_text = format ['%1',_crewNames joinString ' , '];
					} else {
						_text = _x getVariable['realname',name _x];
					};
	 
					_this select 0 drawIcon [_vehicleTexture, _sideColor, getPosASLVisual _x, 24.0, 24.0, getDirVisual _x, _text, 0, 0.04, 'TahomaB', 'right'];
				};
			} forEach (_allUnits + _vehicles - _entitiesInVehicle);
		"];
	} else {
		hint "Маркеры выключены!";
		findDisplay 12 displayCtrl 51 ctrlRemoveEventHandler ["Draw", life_markers_active];
	};	
};
call turnOn;
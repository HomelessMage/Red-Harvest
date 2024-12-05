params ["_side"];

if (_side == WEST) then {
	_position = getPosATL BLUFOR_HELIPAD;
	_medicine = "ACE_medicalSupplyCrate_advanced" createVehicle _position;
	// This is not going to be saved by default
	// [_medicine] call grad_persistence_fnc_blacklistObjects;
	["TaskSucceeded", ["", "Медицинские припасы на вертолётной площадке"]] call BIS_fnc_showNotification;
};

if (_side == EAST) then {
	_position = getPosATL OPFOR_HELIPAD;
	_medicine = "ACE_medicalSupplyCrate_advanced" createVehicle _position;
	// This is not going to be saved by default
	// [_medicine] call grad_persistence_fnc_blacklistObjects;
	["TaskSucceeded", ["", "Медицинские припасы на вертолётной площадке"]] call BIS_fnc_showNotification;
};
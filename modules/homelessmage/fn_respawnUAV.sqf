params ["_newVehicle"];
// Disable pylons for assault UAV
_newVehicle setPylonLoadout [1, ""];
_newVehicle setPylonLoadout [2, ""];
// Not really necessary as TI is disabled through Draw3D in init.sqf event handler
// _newVehicle disableTIEquipment true;
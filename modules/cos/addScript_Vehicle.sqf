/*
Add Script to vehicles spawned by COS.
_veh = Vehicle. Refer to vehicle as _veh.
*/

_veh = _this select 0;
[_veh, _veh] call ace_common_fnc_claim;
vehicle _veh lockInventory true; 
_veh setVehicleLock "LOCKED";

[_veh] call grad_persistence_fnc_blacklistObjects;

// _openLock = ["OpenLock","Вскрыть замок","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
// 	_veh = _this select 0;
// 	_veh setVehicleLock "UNLOCKED";
// 	},{
// 		true
// 		},{},[_veh],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
// [_veh, 0, ["ACE_MainActions"], _openLock] call ace_interact_menu_fnc_addActionToObject;
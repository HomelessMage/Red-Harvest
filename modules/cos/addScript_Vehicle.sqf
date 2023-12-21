/*
Add Script to vehicles spawned by COS.
_veh = Vehicle. Refer to vehicle as _veh.
*/

_veh = _this select 0;
[_veh, _veh] call ace_common_fnc_claim;
vehicle _veh lockInventory true; 
_veh setVehicleLock "LOCKED";

[_veh] call grad_persistence_fnc_blacklistObjects;

_veh setVariable ["isOpen", "locked"];

_openLock = ["OpenLock","Вскрыть замок","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	params ["_target", "_player", "_params"];
	_params params ["_veh"];
	_player playAction "Medic";
	_veh setVehicleLock "UNLOCKED";
	[_veh] call grad_persistence_fnc_unblacklistObjects;
	_veh setVariable ["isOpen", "unlocked"];
	},{
		true
		},{},[_veh],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_veh, 0, ["ACE_MainActions"], _openLock] call ace_interact_menu_fnc_addActionToObject;


while {true} do {
	sleep 5;
	_isOpen = _veh getVariable "isOpen";
	if (_isOpen isEqualTo "unlocked") exitWith {
		[_veh,0,["ACE_MainActions", "OpenLock"]] call ace_interact_menu_fnc_removeActionFromObject;
		[objNull, _veh] call ace_common_fnc_claim;
	};
};
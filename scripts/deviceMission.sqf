params ["_devicePos"];

_device = createVehicle ["Land_USB_Dongle_01_F_AE3", _devicePos, [], 0, "CAN_COLLIDE"];

[_device] call grad_persistence_fnc_blacklistObjects;

[_device] execVM "scripts\armaOS\initUSB.sqf";

_randomIndexEAST = str round(random 1000);
_randomIndexWEST = str round(random 1000);
_randomIndexRESISTANCE = str round(random 1000);
_taskDescription = ["Необходимо захватить USB накопитель с вирусом, который позволит выполнять вредоносный код", "Захватить USB накопитель"];

[EAST, _randomIndexEAST, _taskDescription, _device, "CREATED", -1, false, "Upload", false] call BIS_fnc_taskCreate;
[RESISTANCE, _randomIndexWEST, _taskDescription, _device, "CREATED", -1, false, "Upload", false] call BIS_fnc_taskCreate;
[WEST, _randomIndexRESISTANCE, _taskDescription, _device, "CREATED", -1, false, "Upload", false] call BIS_fnc_taskCreate;



_deviceTrigger = createTrigger ["EmptyDetector", _devicePos];
_deviceTrigger setTriggerArea [300, 300, 0, false];


waitUntil {(!alive _device) or !(_device inArea _deviceTrigger);};
/*
if (!alive _device) then {
	[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
	[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
	[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
};
*/

waitUntil {!(_device inArea _deviceTrigger);};

while {alive _device} do {
	if (_device inArea gradTriggerGUER) exitWith {
		[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "SUCCEEDED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
	};
	if (_device inArea gradTriggerEAST) exitWith {
		[_randomIndexEAST, "SUCCEEDED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
	};
	if (_device inArea gradTriggerWEST) exitWith {
		[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "SUCCEEDED"] call BIS_fnc_taskSetState;
	};
	sleep 60;
};
params ["_locationsArray", "_locationType"];
_randomLocation = selectRandom _locationsArray;
_nearestLocation = nearestLocation [_randomLocation, _locationType];
_nearestLocationName = text _nearestLocation;

_randomNameIndex = random 1000;
_randomName = "WEST_" + str _randomNameIndex;
_triggerMarker = createMarker [_randomName, _randomLocation];
_triggerMarker setMarkerShape "ELLIPSE";
_triggerMarker setMarkerSize [300, 300];
// 1 - невидимый
_triggerMarker setMarkerAlpha 1;

_houseGroups = [1, 5] call BIS_fnc_randomInt;
_patrolGroups = [1, 2] call BIS_fnc_randomInt;
_lightVehicles = [1, 2] call BIS_fnc_randomInt;
_armouredVehicles = [1, 2] call BIS_fnc_randomInt;
_helicopters = [0, 1] call BIS_fnc_randomInt;
_staticVehicles = [1, 5] call BIS_fnc_randomInt;
_ETA = [120, 300] call BIS_fnc_randomInt;

null = [
	[_triggerMarker],
	// [HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY]
	[_houseGroups,1,100],
	// [PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],
	[_patrolGroups,1,100],
	// [LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY]
	[_lightVehicles,0,100],
	// [ARMOURED VEHICLES,PROBABILITY]
	[_armouredVehicles,50],
	// [STATIC VEHICLES,PROBABILITY]
	[_staticVehicles, 100],
	// [HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY]
	[0,0,0],
	// [FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]
	[6,1,500,RESISTANCE]
] execVM "modules\eos\core\eos_launch.sqf";

_randomIndex = str round(random 1000);

_taskDescription = [format ["Освободить город %1 от присутствия сил противника", str _nearestLocationName], "Освободить город"];
[WEST, _randomIndex, _taskDescription, _triggerMarker, "CREATED", -1, false, "Attack", false] call BIS_fnc_taskCreate;

_missionTrigger = createTrigger ["EmptyDetector", _randomLocation];
_missionTrigger setTriggerArea [500,500,0,false];

waitUntil {player inArea _missionTrigger};
 
while {true} do {
	_sideUnits = {alive _x && side _x == RESISTANCE} count (allUnits inArea _missionTrigger);
	if (_sideUnits == 0) exitWith {
			[_randomIndex, 'SUCCEEDED'] call BIS_fnc_taskSetState;
			[WEST, 1000] call HMG_fnc_giveMoneyToSide;
			['Награда за освобождение города: 1000Р. Деньги отправлены на банковский счёт.'] remoteExec ['systemChat', WEST];
	};
	sleep 5;
};
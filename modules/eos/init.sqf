EOS_Spawn = compile preprocessfilelinenumbers "modules\eos\core\eos_launch.sqf";
Bastion_Spawn=compile preprocessfilelinenumbers "modules\eos\core\b_launch.sqf";
null=[] execVM "modules\eos\core\spawn_fnc.sqf";
onplayerConnected {[] execVM "modules\eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=false;		// Counts killed units






// _locationsArray = nearestLocations [[worldSize / 2, worldsize / 2, 0], ["CityCenter"], 25000];
// _randomLocation = selectRandom _locationsArray;
// _randomLocationPosition = locationPosition _randomLocation;
// _housesArray = nearestObjects [_randomLocationPosition, ["building", "house"], 400];

// _housesArray = _housesArray select {_x isNotEqualTo objNull};

// _randomHouse = selectRandom _housesArray;
// _isHouseEnterable  = [_randomHouse] call BIS_fnc_isBuildingEnterable;
// _positionsArray = [_randomHouse] call BIS_fnc_buildingPositions;
// _randomHousePosition = selectRandom _positionsArray;

// systemChat str _randomHousePosition;
// player setPos _randomHousePosition;




// _locationsArray = nearestLocations [[worldSize / 2, worldsize / 2, 0], ["NameVillage"], 25000];
// _randomPos = getPos (_locationsArray select (floor (random (count _locationsArray))));

// _locationsArray = _locationsArray - [_randomPos];
// _HamasMarker = createMarker ["HamasMarker", _randomPos];
// _HamasMarker setMarkerShape "ELLIPSE";
// _HamasMarker setMarkerSize [300, 300];
// _HamasMarker setMarkerAlpha 0;
// _TribalTaskMarker = createMarker ["TribalTaskMarker", _hamasRandomPos];
// _TribalTaskMarker setMarkerType "Faction_CUP_INDFOR";
// _TribalTaskMarker setMarkerColor "colorBlack";
// _TribalTaskMarker setMarkerShadow true;
// _TribalTaskMarker setMarkerSize [1,1];
// _TribalTaskMarker setMarkerText "Угандийские повстанцы";
// [WEST, "HamasAttackZone", ["Уничтожить ячейку ХАМАС", "Ликвидация террористов", "HamasMarker"], _randomPos, "CREATED", -1, true] call BIS_fnc_taskCreate;




// null = [
// 	["828"],
// 	// [HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY]
// 	[5,1,100],
// 	// [PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],
// 	[5,1,100],
// 	// [LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY]
// 	[2,0,100],
// 	// [ARMOURED VEHICLES,PROBABILITY]
// 	[1,100],
// 	// [STATIC VEHICLES,PROBABILITY]
// 	[4, 100],
// 	// [HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY]
// 	[1,0,100],
// 	// [FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]
// 	[11,0,500,WEST]
// ] call EOS_Spawn;






// _locationType = "NameCity";
// _locationsArray = nearestLocations [[worldSize / 2, worldsize / 2, 0], [_locationType], 25000];
// _locationsArray resize 1;
// {
// 	_locationPosition = getPos _x;
// 	_locationName = name _x;
//     _randomNameIndex = random 1000;
//     _randomName = "CDF" + str _randomNameIndex;
//     _triggerMarker = createMarker [_randomName, _locationPosition];
//     _triggerMarker setMarkerShape "ELLIPSE";
//     _triggerMarker setMarkerSize [300, 300];
//     _triggerMarker setMarkerAlpha 1;
// 	// _iconMarker = createMarker [_randomName + _randomName, _locationPosition];
// 	// _iconMarker setMarkerShape "ICON";
// 	// _iconMarker setMarkerType "Faction_CDF";
// 	// _iconMarker setMarkerColor "colorBlue";
// 	// _iconMarker setMarkerShadow true;
// 	// _iconMarker setMarkerSize [1,1];
// 	// _iconMarker setMarkerText "ЧСО";




// 	_nearestLocation = nearestLocation [_locationPosition, _locationType];
// 	_nearestLocationName = text _nearestLocation;
// 	_locationTrigger = createTrigger ["EmptyDetector", _locationPosition, false];
// 	_locationTrigger setTriggerArea [300, 300, 0, false];
// 	_taskName = format ["%1", _nearestLocationName];
// 	_taskDescription = format ["%1", _nearestLocationName];
// 	// Спавним сектор
// 	[_locationPosition, _nearestLocationName, _nearestLocationName, _locationTrigger, [EAST,WEST,RESISTANCE], WEST,"",0,1,_taskName,_taskDescription,1,1,1,1,0,0,1] execVM "scripts\fn_spawnSector.sqf";
// 	// Спавним лутбокс
// 	_housesArray = nearestObjects [_locationPosition, ["house"], 300] select {
// 		[_x] call BIS_fnc_isBuildingEnterable;
// 		count (_x buildingPos -1) > 4;
// 	};
// 	_randomHouse = selectRandom _housesArray;//Pick an object found in the above nearestObjects array
// 	_housePositions = _randomHouse buildingPos -1;//Finds list of all available building positions in the selected building
// 	_randomPosition = selectRandom _housePositions;//Picks a building position from the list of building positions
// 	_cachePos = _randomPosition;
// 	[_cachePos] execVM "scripts\fn_spawnCache.sqf";
// 	// Спавним задание на взрыв здания
// 	_demoBuidling = selectRandom _housesArray;
// 	[_demoBuidling] execVM "scripts\fn_demoMission.sqf";

// 	_houseGroups = [1, 5] call BIS_fnc_randomInt;
// 	_patrolGroups = [1, 5] call BIS_fnc_randomInt;
// 	_lightVehicles = [1, 5] call BIS_fnc_randomInt;
// 	_armouredVehicles = [1, 5] call BIS_fnc_randomInt;
// 	_helicopters = [0, 1] call BIS_fnc_randomInt;
// 	_staticVehicles = [1, 5] call BIS_fnc_randomInt;
// 	_ETA = [120, 300] call BIS_fnc_randomInt;

// 	// null = [
// 	// 	[_triggerMarker],
// 	// 	// [HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY]
// 	// 	[_houseGroups,1,100],
// 	// 	// [PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],
// 	// 	[_patrolGroups,1,100],
// 	// 	// [LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY]
// 	// 	[_lightVehicles,0,100],
// 	// 	// [ARMOURED VEHICLES,PROBABILITY]
// 	// 	[_armouredVehicles,100],
// 	// 	// [STATIC VEHICLES,PROBABILITY]
// 	// 	[_staticVehicles, 100],
// 	// 	// [HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY]
// 	// 	[0,0,0],
// 	// 	// [FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]
// 	// 	[5,1,500,WEST]
// 	// ] call EOS_Spawn;


// 	null = [
// 		[_triggerMarker],
// 		// PATROL GROUPS,SIZE OF GROUPS
// 		[_patrolGroups,1],
// 		// LIGHT VEHICLES,SIZE OF CARGO
// 		[_lightVehicles,1],
// 		// ARMOURED VEHICLES
// 		[_armouredVehicles],
// 		// HELICOPTERS,SIZE OF HELICOPTER CARGO
// 		[_helicopters,0],
// 		// FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG
// 		[5,1,WEST,false,false],
// 		// INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS
// 		[_ETA,1,120,true,false]
// 	] call Bastion_Spawn;

// } forEach _locationsArray;







// params ["_locationType"];
// if (!isServer) exitWith {};


_locationType = "NameVillage";

_cfgPath = configFile >> "CfgWorlds" >> worldName >> "Names";
_cfgClasses = [];
{
    _className = configName (_x);
    if (getText (_cfgPath >> _className >> "type") == _locationType) then {
        _cfgClasses pushBack _className;
    };
} forEach ("true" configClasses _cfgPath);

_locationsArray = [];
{
    _location = _x;
    _locationPos = getArray (_cfgPath >> _location >> "position");
    _locationsArray pushBack _locationPos;
} forEach _cfgClasses;
// systemChat str count _locations;


// _locationsArray = nearestLocations [[worldSize / 2, worldsize / 2, 0], [_locationType], 25000] select {
// 		count (_x nearestObjects [getPos _x, ["house"], 300]) > 5;
// };

// Если _locationsArray пустой то НЕ выполняем код ниже.
if (_locationsArray isEqualTo []) exitWith {};

// ["Тулга","Мста","Старое","Шаховка","Долина","Орловец","Бор","Новый Собор","Кабанино","Могилевка","Надеждино","Гуглово","Камышово","Пуста","Дубровка","Хельм","Ольша","Гвоздно","Гришино","Рогово","Погоревка","Пустошка","Козловка","Поляна","Балота","Комарово","Каменка","Мышкино","Павлово","Лопатино","Вышное","Пригородки","Дрожино","Сосновка","Нижнее","Пулково","Zvir","Bogtyrka","Vavilovo","Zabolotye","Sinystok","Topolniki","Tisy","Zaprudnoe","Ratnoe","Polesovo","Skalka","Krasnoe","Stary Yar","Kamensk","Kalinovka","Arsenovo","Svergino","Nagornoe","Karmanovka","Dobroye","Belaya Polyana","Turovo","Berezhki"]
// Убираю не локализованные места 
_locationsArray resize 35;



// // Миксуем элементы массива
_locationsArray = [_locationsArray] call CBA_fnc_shuffle;
// Меняем количество элементов массива
// Только 1 сектор доступен, из-за моей тупости. 1 глобальная переменная для сектора
_locationsArray resize 2;
{

	_locationPosition = _x;
	_nearestLocation = nearestLocation [_locationPosition, _locationType];
	_nearestLocationName = text _nearestLocation;


	// Спавним сектор
	_locationTrigger = createTrigger ["EmptyDetector", _locationPosition, true];
	_locationTrigger setTriggerArea [300, 300, 0, false];
	_taskName = format ["%1", _nearestLocationName];
	_taskDescription = format [localize "STR_TAG_townTaskDescription" + " %1", _nearestLocationName];
	// _codeAsString = "[_sector, _owner, _oldOwner] execVM ""scripts\fn_sectorReward.sqf""";
	[
		// _pos (Array, Object, Marker, Group, Location) - Position to spawn sector at
		_locationPosition,
		// _name (String) - Name of sector as shown on map
		_nearestLocationName,
		// _designation (String) - Designation shown on both map and in sectors ui 
		_nearestLocationName,
		// _sectorArea (Array, Object "Trigger" or "LocationArea_F") - Sectors trigger area in [ radius X, radius Y, direction, isRectangle ] see setTriggerArea OR an existing trigger or locationArea_F( with trigger attached, same as a default setup in the editor )
		_locationTrigger,
		// _sides (Array) - Array of sides that can capture the sector, if [] used sides will be [east,west,resistance,civilian], if nil defaults to [east,west], not available through editor attributes and is usually defined by syncing side logics to the sector module
		[EAST,WEST,RESISTANCE],
		// _defaultOwner (Number, Side) - Initial owner of the sector when created, for no owner use either sideUnknown or -1
		-1,
		// _onOwnerChange (String) - Code as STRING that runs when a sector is captured, code is passed [ _sector, _owner, _oldOwner ] in _this, code is also run at sector initialisation _owner will be default owner and _oldOwner will be sideUnknown
		"
			params['_sector','_owner','_oldOwner'];
			[_sector, _owner, _oldOwner] call LARs_fnc_sectorReward;
		",
		// _scoreReward (Number) - Score given to side for capturing sector
		0,
		// _taskOwner (Number) - 0 = no task, 1 = everyone, 2 = default owner, 3 = all but default owner
		0,
		// _taskTitle (String) - Task title, use %1 to insert sector name
		_taskName,
		// _taskDescription (String) - Task Description, use %1 to inser sector name, %2 to insert sector rewards ( vehicles and respawn positions, these will need to be created seperately and synced with a existing trigger that is passed in param 3 ), %3 for capture costs description
		_taskDescription,
		// _ownerLimit (Number) - Range <0-1> that a side must be dominent to cpature sector
		1,
		// _costInfantry (Number) - Ratio of how fast Infantry will capture area
		1,
		// _costWheeled (Number) - Ratio of how fast Wheeled vehicles will capture area
		1,
		// _costTracked (Number) - Ratio of how fast Tracked vehicles will capture area
		1,
		// _costWater (Number) - Ratio of how fast Naval vehicles will capture area
		0,
		// _costAir (Number) - Ratio of how fast Air vehicles will capture area
		0,
		// _costPlayers (Number) - Ratio of how fast Players will capture area
		1
	// ] call compile preProcessFileLineNumbers "scripts\fn_spawnSector.sqf";
	] call LARs_fnc_spawnSector;



    _randomNameIndex = random 1000;
    _randomName = "CDF" + str _randomNameIndex;
    _triggerMarker = createMarker [_randomName, _locationPosition];
    _triggerMarker setMarkerShape "ELLIPSE";
    _triggerMarker setMarkerSize [300, 300];
    _triggerMarker setMarkerAlpha 1;

    _houseGroups = [1, 5] call BIS_fnc_randomInt;
    _patrolGroups = [1, 2] call BIS_fnc_randomInt;
    _lightVehicles = [1, 2] call BIS_fnc_randomInt;
    _armouredVehicles = [1, 2] call BIS_fnc_randomInt;
    _helicopters = [0, 1] call BIS_fnc_randomInt;
    _staticVehicles = [1, 5] call BIS_fnc_randomInt;
    _ETA = [120, 300] call BIS_fnc_randomInt;


// if (random 100 > 75) then {

    // null = [
    // 	[_triggerMarker],
    // 	// [HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY]
    // 	[_houseGroups,1,100],
    // 	// [PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],
    // 	[_patrolGroups,1,100],
    // 	// [LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY]
    // 	[_lightVehicles,0,100],
    // 	// [ARMOURED VEHICLES,PROBABILITY]
    // 	[_armouredVehicles,50],
    // 	// [STATIC VEHICLES,PROBABILITY]
    // 	[_staticVehicles, 100],
    // 	// [HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY]
    // 	[_helicopters,0,25],
    // 	// [FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]
    // 	[5,1,500,WEST]
    // ] execVM "modules\eos\core\eos_launch.sqf";

// } else {
//     null = [
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
// 	] execVM "modules\eos\core\b_Launch.sqf";
// };


	// Задание на лутбокс
	_housesArray = nearestObjects [_locationPosition, ["house"], 300] select {
		[_x] call BIS_fnc_isBuildingEnterable;
		count (_x buildingPos -1) > 5;
	};
	_randomHouse = selectRandom _housesArray;//Pick an object found in the above nearestObjects array
	_housePositions = _randomHouse buildingPos -1;//Finds list of all available building positions in the selected building
	_randomPosition = selectRandom _housePositions;//Picks a building position from the list of building positions
	_cachePos = _randomPosition;

	_cacheMission = true;
    if (_cacheMission == true) then {
		[_cachePos] execVM "scripts\cacheMission.sqf";
    };
	// Задание на взрыв здания
	_demoMission = true;
	_demoBuilding = selectRandom _housesArray;
    if (_demoMission == true) then {
		[_demoBuilding] execVM "scripts\demoMission.sqf";
    };
    // Задание на убийство агента ЧДКЗ
    _agentBuilding = selectRandom _housesArray;
    _agentBuildingPositions = _agentBuilding buildingPos -1;
    _agentPosition = selectRandom _agentBuildingPositions;
	_agentMission = true;
	if (_agentMission == true) then {
		[_agentPosition] execVM "scripts\agentMission.sqf";
	};
	
	// systemChat str isNil "_agentBuilding";    // should be fine
	// systemChat str count _agentBuildingPositions;    // may be empty
	// systemChat str isNil "_agentPosition";  // may be nil

} forEach _locationsArray;
/*
Add Script to individual units spawned by COS.
_unit = unit. Refer to Unit as _unit.
*/

// _unit =(_this select 0);
// _unit addAction ["Hello", {hint "Open AddScript_Unit.sqf to apply pedestrian scripts"}];// EXAMPLE SCRIPT



_civ = _this select 0;

// [_civ, _civ] call ace_common_fnc_claim;


// [_civ, [0, 50] call BIS_fnc_randomInt, false] call grad_moneymenu_fnc_addFunds;
["ace_captives_setSurrendered",[_civ, true]] call CBA_fnc_globalEvent;
["ace_captives_setSurrendered",[_civ, false]] call CBA_fnc_globalEvent;


_civ addEventHandler["FiredNear", {
	params ["_unit"];

		switch(round(random 2))do{
			case 0:{
				_unit switchMove "ApanPercMstpSnonWnonDnon_G01";
				_unit setSpeedMode "FULL";
			};
			case 1:{
				_unit playMoveNow "ApanPknlMstpSnonWnonDnon_G01";
				_unit setSpeedMode "FULL";
			};
			case 2:{
				_unit playMoveNow "ApanPpneMstpSnonWnonDnon_G01";
				_unit setSpeedMode "FULL";
			};
			default{
				_unit playMoveNow "ApanPknlMstpSnonWnonDnon_G01";
				_unit setSpeedMode "FULL";
			};
		};
		_housesArray = nearestObjects [_unit, ["house"], 300] select {
				[_x] call BIS_fnc_isBuildingEnterable
		};
		_randomHouse = selectRandom _housesArray;//Pick an object found in the above nearestObjects array
		_housePositions = _randomHouse buildingPos -1;//Finds list of all available building positions in the selected building
		_randomPosition = selectRandom _housePositions;//Picks a building position from the list of building positions
		_unit doMove _randomPosition;//Orders the civilian to move to the building position
		//Remove the eventHandler to prevent spamming
		_unit removeAllEventHandlers "FiredNear";
	}
];

_housesArray = nearestObjects [_civ, ["house"], 300] select {
		[_x] call BIS_fnc_isBuildingEnterable
};
if (_housesArray isEqualTo []) exitWith {};
_randomHouse = selectRandom _housesArray;//Pick an object found in the above nearestObjects array
_housePositions = _randomHouse buildingPos -1;//Finds list of all available building positions in the selected building
if (_housePositions isEqualTo []) exitWith {};
_randomPosition = selectRandom _housePositions;//Picks a building position from the list of building positions
_civ setPos _randomPosition;//Orders the civilian to move to the building position

// _civ addEventHandler ["FiredNear", {
// 	params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];







// 	// _unit setUnitPosWeak "UP";
// 	// if (count waypoints _unit > 0) then {
// 	// 	{
// 	// 		deleteWaypoint ((waypoints _unit) select 0);
// 	// 	} forEach waypoints _unit;
// 	// };
// 	// _housesArray = nearestObjects [_unit, ["house"], 300] select {
// 	// 		[_x] call BIS_fnc_isBuildingEnterable
// 	// };
// 	// _randomHouse = selectRandom _housesArray;
// 	// _positionsArray = [_randomHouse] call BIS_fnc_buildingPositions;
// 	// _randomPosition = selectRandom _positionsArray;
// 	// _unitGroup = group _unit;
// 	// _waypoint = _unitGroup addWaypoint [_randomPosition, 1];
// 	// _unit setCurrentWaypoint [_unitGroup, 1];
// 	_unit setSpeedMode "FULL";
// 	_unit playAction "Panic";

// }];



	
// _chanceToBeActivist = random 100;
// if (_chanceToBeActivist > 0) then {
// 	_interrogateActivist = ["SaveProgress","Interrogate","\a3\ui_f\data\igui\cfg\simpletasks\types\Talk_ca.paa",{
// 		// RUN CODE HERE
// 			_intel = "HELLO WORLD!";
// 			format ["The suspects are supposed to be somewhere nearby %1", _intel] remoteExec ["hint", west];
// 		},{
// 			side player == west
// 			},{},[player],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
// 	[_civ, 0, ["ACE_MainActions"], _interrogateActivist] call ace_interact_menu_fnc_addActionToObject; 
// };


// _playerList = if (isMuliplayer) then 
// { playableUnits; } else { switchableUnits; }; // For testing in editor mostly
// _randomPlayer = _playerList call BIS_fnc_selectRandom;

// Создает много игровых логик!
// _animationsArray = ["STAND_U1", "STAND_U2", "STAND_U3"];
// _randomAnimation = selectRandom _animationsArray;
// [_civ, _randomAnimation, "NONE"] call BIS_fnc_ambientAnim;

// _allPositions = nearestBuilding _civ buildingPos -1;
// _randomPosition = selectRandom _allPositions;
// _civ setPos _randomPosition;
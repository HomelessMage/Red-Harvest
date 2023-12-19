params ["_demoBuilding"];

_demoBuilding = _this select 0;

_randomIndex = str round(random 1000);
_taskDescription = [format ["Взорвать %1", str _demoBuilding], "Взорвать здание"];

_randomIndexWEST = str round(random 1000);
_taskDescriptionWEST = [format [localize "STR_TAG_defend" + " %1", str _demoBuilding], localize "STR_TAG_defendBuilding"];

// {
// 	_group = createGroup CIVILIAN;
// 	_unit = "UK3CB_CHC_C_CIV" createUnit [_x, _group];
// } forEach (_demoBuilding buildingPos -1);

[EAST, _randomIndex, _taskDescription, _demoBuilding, "CREATED", -1, false, "Destroy", false] call BIS_fnc_taskCreate;
[RESISTANCE, _randomIndex, _taskDescription, _demoBuilding, "CREATED", -1, false, "Destroy", false] call BIS_fnc_taskCreate;
[WEST, _randomIndexWEST, _taskDescriptionWEST, _demoBuilding, "CREATED", -1, false, "Defend", false] call BIS_fnc_taskCreate;


while {alive _demoBuilding} do {
	sleep 120;
	[WEST, 10] call HMG_fnc_giveMoneyToSide;
	["Награда за сохранность здания: 10Р. Деньги отправлены на банковский счёт."] remoteExec ["systemChat", WEST];
};



waitUntil {!alive _demoBuilding};
[_randomIndex, "SUCCEEDED"] call BIS_fnc_taskSetState;
[RESISTANCE, 1000] call HMG_fnc_giveMoneyToSide;
[EAST, 1000] call HMG_fnc_giveMoneyToSide;
["Награда за уничтожение здания: 1000Р. Деньги отправлены на банковский счёт."] remoteExec ["systemChat", [RESISTANCE, EAST]];
[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;

// _indexVariable setVariable ["indexVar",_randomIndex];

// _demoBuilding addEventHandler ["Killed",{

// 	// "Spawn" code to allow for delay
// 	_delay = _this spawn {
// 		sleep 5; // Wait for 5 seconds

// 		// Set the task to SUCCEEDED
// 		[_randomIndex, "SUCCEEDED"] call BIS_fnc_taskSetState;
// 	};
// }];
// Сохраняем прогресс
[] spawn {
	_saveZones = ["BLUFOR_BASE", "OPFOR_BASE"];
	while {true} do {
		sleep 900;
		{
			[false, 30, _x] call grad_persistence_fnc_saveMission;
		} forEach _saveZones;
	};
};
/*
[
	{
		[false, 30, "BLUFOR_BASE"] call grad_persistence_fnc_saveMission;
		[false, 40, "OPFOR_BASE"] call grad_persistence_fnc_saveMission;
	}, 
	600,
	[]
] call CBA_fnc_addPerFrameHandler;
*/
// Alive Static Data
[] execVM "scripts\aliveStaticData.sqf";
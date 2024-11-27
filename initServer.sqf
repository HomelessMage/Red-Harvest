if (isServer) then {
    save_everest = 1;

    [] execVM "omzh_scripts\ehKillCrew.sqf";
    [] spawn {execVM "omzh_scripts\ini_markerFPS.sqf"};
    [] execVM "omzh_script_base\saver.sqf";
    [] execVM "omzh_scripts\detectHeight.sqf";
    [] execVM "omzh_scripts\ini_zeus.sqf";
    [] execVM "omzh_script_base\defineJammers.sqf";

    db_name = "everest";

    /* Get extDB3 version */
	_ret = "extDB3" callExtension "9:VERSION";
	if(_ret == "") exitWith { diag_log "extDB3: Initialization failed" };
	diag_log format ["extDB3 - Version %1", _ret];

	/* Add database */
	_ret = call compile ("extDB3" callExtension format["9:ADD_DATABASE:%1", db_name]);
	if (_ret select 0 == 0) exitWith { diag_log format ["extDB3 - Database error %1", _ret] };
	diag_log "extDB3 - Database connected";

	/* Compute a random protocol ID */
	protocol = ceil random 9999;

	/* Add custom SQL protocol */
	_ret = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:everest:SQL:protocol");
	//_ret = call compile ("extDB3" callExtension format["9:ADD_DATABASE_PROTOCOL:%1:SQL:%2:TEXT",db_name,protocol]);
	if (_ret select 0 == 0) exitWith { diag_log format ["extDB3 - Database error %1", _ret] };
	diag_log "extDB3 - Custom protocol added";

	/* Store protocol ID */
	uiNamespace setVariable ["protocol",protocol];
};

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
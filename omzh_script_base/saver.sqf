loop_saving = [] spawn {
    while {true} do {
        if (save_everest == 1) then {
            [false,0] call grad_persistence_fnc_saveMission;
        } else {};
        sleep 60;
    };
};
if (isDedicated) then {

} else {
    // null
};

if (!isDedicated) then {
    ["zvezda - Сохранения", "Форс сохранение миссии", { 
        [false,0] call grad_persistence_fnc_saveMission;
    }] call zen_custom_modules_fnc_register;

    ["zvezda - Сохранения", "Форс загрузка", { 
        [false,0] call grad_persistence_fnc_loadMission;
    }] call zen_custom_modules_fnc_register;

    ["zvezda - Сохранения", "Удаление сейва", { 
        ["EVRST_DONBASS_mission"] call grad_persistence_fnc_clearMissionData;
    }] call zen_custom_modules_fnc_register;

    ////////////////////////////////

    ["Zvezda - Ивентологи", "Старт ивента", { 
        [] call zvezda_fnc_start;
    }] call zen_custom_modules_fnc_register;

    ["Zvezda - Ивентологи", "Победа ЧДКЗ", { 
        [] call zvezda_fnc_winchdkz;
    }] call zen_custom_modules_fnc_register;

    ["Zvezda - Ивентологи", "Победа ЧСО", { 
        [] call zvezda_fnc_winchso;
    }] call zen_custom_modules_fnc_register;

    ["Zvezda - Ивентологи", "Конец ивента", { 
        [] call zvezda_fnc_end;
    }] call zen_custom_modules_fnc_register;
} else {
    // null
};

zvezda_fnc_end = {
    [{
        [] spawn {
            ["audio\battle_end.paa"] spawn BIS_fnc_textTiles;
            titleText ["<t color='#ff0000' size='8'>ВНИМАНИЕ!</t><br/>", "PLAIN", -1, true, true];
            sleep 3;
            titleText ["<t color='#f06767' size='4'>До конца</t><br/>", "PLAIN", -1, true, true];
            sleep 2;
            titleText ["<t color='#69f067' size='3'>3</t><br/>", "PLAIN", -1, true, true];
            sleep 1;
            titleText ["<t color='#7567f0' size='2'>2</t><br/>", "PLAIN", -1, true, true];
            sleep 1;
            titleText ["<t color='#f09b67' size='1'>1</t><br/>", "PLAIN", -1, true, true];
            sleep 1;
            titleText ["<t color='#f06767' size='4'>Подсчёт очков, ожидайте!</t><br/>", "PLAIN", -1, true, true];
            playSound "battle_end";
        };
    }] remoteExec ["call", -2, false];
    {
        [_x,1500] call grad_lbm_fnc_addFunds;
    } forEach allPlayers;
};

zvezda_fnc_start = {
    [{
        [] spawn {
            ["audio\prigo.paa"] spawn BIS_fnc_textTiles;
            titleText ["<t color='#ff0000' size='8'>ВНИМАНИЕ!</t><br/>", "PLAIN", -1, true, true];
            sleep 3;
            titleText ["<t color='#f06767' size='4'>Старт через...</t><br/>", "PLAIN", -1, true, true];
            sleep 2;
            titleText ["<t color='#69f067' size='3'>3</t><br/>", "PLAIN", -1, true, true];
            sleep 1;
            titleText ["<t color='#7567f0' size='2'>2</t><br/>", "PLAIN", -1, true, true];
            sleep 1;
            titleText ["<t color='#f09b67' size='1'>1</t><br/>", "PLAIN", -1, true, true];
            sleep 1;
            titleText ["<t color='#f06767' size='4'>В бой!</t><br/>", "PLAIN", -1, true, true];
            playSound "battle_start";
        };
    }] remoteExec ["call", -2, false];
    {
        [_x,1500] call grad_lbm_fnc_addFunds;
    } forEach allPlayers;
};

zvezda_fnc_winCHDKZ = {
    [{
        [] spawn {
            playSound "chdkz_victory";
            ["audio\chdkz_victory.paa"] spawn BIS_fnc_textTiles;
            titleText ["<t color='#ffffff' size='8'>Победа</t><t color='#ff0000' size='8'> ЧДКЗ!</t><br/>", "PLAIN", -1, true, true];
        };
    }] remoteExec ["call", -2, false];
    {
	    if (side _x == west) then
        {
            [_x,1500] call grad_lbm_fnc_addFunds;
        };
        if (side _x == east) then
        {
            [_x,4500] call grad_lbm_fnc_addFunds;
        };
    } forEach allPlayers;
};

zvezda_fnc_winCHSO = {
    [{
        [] spawn {
            playSound "chso_victory";
            ["audio\chso_victory.paa"] spawn BIS_fnc_textTiles;
            titleText ["<t color='#ffffff' size='8'>Победа</t><t color='#0000FF' size='8'> ЧСО!</t><br/>", "PLAIN", -1, true, true];
        };
    }] remoteExec ["call", -2, false];
    {
    	if (side _x == west) then
        {
            [_x,4500] call grad_lbm_fnc_addFunds;
        };
        if (side _x == east) then
        {
            [_x,1500] call grad_lbm_fnc_addFunds;
        };
    } forEach allPlayers;
};
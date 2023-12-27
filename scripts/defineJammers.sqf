// РЭП инициализация
if (isServer) then {
	waitUntil {kyk_ew_initComplete};
	call kyk_ew_fnc_removeAllJammers;
    radio_jammer_tower setVariable ["jamming", false, true];
};
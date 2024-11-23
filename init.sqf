// Инициализация арсеналов
[BLUFOR_ARSENAL] execVM "scripts\BLUFOR\arsenal.sqf";
[OPFOR_ARSENAL] execVM "scripts\OPFOR\arsenal.sqf";

// Инициализация офицеров
[BLUFOR_OFFICER] execVM "scripts\BLUFOR\officer.sqf";
[OPFOR_OFFICER] execVM "scripts\OPFOR\officer.sqf";

// Чёрный список зданий для мебели
_furnitureBlacklist = [BLUFOR_GARAGE, OPFOR_GARAGE];
{
	_x setVariable ["tint_house_blacklisted", true];
} forEach _furnitureBlacklist;

// Показываем маркеры только той стороне, для которой они предназначены
// Маркеру нужен префикс WEST, EAST, GUER, CIV
[] spawn {
    while { !isDedicated } do {
        waitUntil { sleep 1; alive player};
        {
            _arr = _x splitString "_";
            _pre = _arr select 0;
            if (_pre in ["WEST","EAST","GUER","CIV"]) then {
                if (format["%1",side player] == _pre) then {
                    _x setMarkerAlphaLocal 1;
                } else {
                    _x setMarkerAlphaLocal 0;
                };
            };
        } count allMapMarkers;
    };
};


// Крепим маркер на КШМ
[] spawn {
    while {true} do {
        "WEST_MHQ" setmarkerpos getpos BLUFOR_MHQ;
        "EAST_MHQ" setmarkerpos getpos OPFOR_MHQ;
        sleep 5;
    };
};
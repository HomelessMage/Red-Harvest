// Восстановление экипировки
if (hasinterface) then {
    [] spawn {
        waitUntil {
            alive player
        };
        player setVariable ["loadout", getUnitloadout player, false];
        player addEventHandler ["Respawn", {
            player setUnitLoadout (player getVariable "loadout");
        }];
    };
};

// Лут
/*
[] execVM "modules\lootsystem\init.sqf";
*/

// Настройки ландшафта
CHVD_allowNoGrass = false; // Set 'false' if you want to disable "None" option for terrain (default: true)
CHVD_maxView = 2500; // Set maximum view distance (default: 12000)
CHVD_maxObj = 2500; // Set maximimum object view distance (default: 12000)

// civilian setFriend [west, 1];
// west setFriend [civilian, 1];

//EOS SYSTEM
[] execVM "modules\eos\init.sqf";
// COS SYSTEM IS DEFINED VIA SERVER VARIABLE IN EDITOR



// while {true} do {

//     sleep 0.5;
// };


// Проверяем мусор на базе
// while {true} do {
//     _trashArray = gradTrigger nearObjects ["GroundWeaponHolder", 100];
//     if (count _trashArray > 0) then {
//         format ["На базе обнаружен мусор на земле! Земля будет очищена через 30 секунд! Количество мусорных куч: %1", count _trashArray] remoteExec ["systemChat"];
//         sleep 30;
//         ["Производится очистка мусора на базе! Следующая проверка через 5 минут."] remoteExec ["systemChat"];
//             for "_i" from 0 to count _trashArray - 1 do {
//             deleteVehicle (_trashArray select _i);
//             sleep 0.056;
//         };
//     };
//     sleep 300;
// };



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



// [] spawn {
//     while {true} do {
//         "EAST_teleportMarker" setmarkerpos getpos teleportItemEAST;
//         "GUER_teleportMarker" setmarkerpos getpos teleportItemGUER;
//         "WEST_teleportMarker" setmarkerpos getpos teleportItemWEST;
//         sleep 5;
//     };
// };
// Крепим маркер на КШМ
 



// Сохраняем прогресс
[] spawn {
	_gradTriggers = [gradTrigger];
	while {true} do {
		if (!isServer) exitWith {};
		sleep 900;
		{
			[false, 30, _x] call grad_persistence_fnc_saveMission;
		} forEach _gradTriggers;
	};
};


// Отключаем тепловизор
/*
[] spawn {
	while {true} do
	{
		{
			_x disableTIEquipment true;
		}
		forEach vehicles;
		// hint "disabled TI";
		sleep 100;
		
	};
};
*/

// Отключаем тепловизор
addMissionEventHandler ["Draw3D",
{
	if (currentVisionMode player isEqualTo 2) then
	{
		if (isNil "A3W_thermalOffline") then
		{
			"A3W_thermalOffline" cutText ["ТЕПЛОВИЗОР ОТКЛЮЧЁН", "BLACK", 0.001, false];
			A3W_thermalOffline = true;
		};
	}
	else
	{
		if (!isNil "A3W_thermalOffline") then
		{
			"A3W_thermalOffline" cutText ["", "PLAIN", 0.001, false];
			A3W_thermalOffline = nil;
		};
	};
}];



// Infinite ammo
/*
this addEventHandler ["Fired",
	{
		(_this select 0) setVehicleAmmo 1;
	}
];
*/



// Задержка отключения от сервера
/* 
addMissionEventHandler ["Draw3d", {
	if(!isNull(findDisplay 49)) then {
		_abort = (findDisplay 49 displayCtrl 104);
		if(isNil "client_abortText") then {
			client_abortText = ctrlText _abort;
		};
		if(uiNamespace getVariable ["abort_button", controlNull] != _abort) then {
			uiNamespace setVariable ["abort_button", _abort];
			client_abortAt = diag_tickTime + 10;
		};

		if(diag_tickTime < client_abortAt) then {
			_abort ctrlEnable false;
			_abort ctrlSetText format ["%1: %2s", client_abortText, ceil(client_abortAt - diag_tickTime)];
		} else {
			_abort ctrlEnable true;
			_abort ctrlSetText client_abortText;
		};
	};	
}];
*/
[] execVM "scripts\armaOS\initLaptops.sqf";

if (isServer) then {
	[] execVM "scripts\missionFramework.sqf";
	// [] execVM "scripts\missionPVEFramework.sqf";
};

// while {true} do {
// 	sleep 900;
// 	[false, 30, gradTriggerEAST] call grad_persistence_fnc_saveMission;
// 	sleep 10;
// 	// [false, 30, gradTriggerGUER] call grad_persistence_fnc_saveMission;
// 	// sleep 10;
// 	[false, 30, gradTriggerWEST] call grad_persistence_fnc_saveMission;
// };



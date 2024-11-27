[] call compile preProcessFilelineNumbers "omzh_script_base\chat\config.sqf";
[] call compile preProcessFilelineNumbers "omzh_script_base\chat\commands.sqf";
[] execVM "ROS_hitreaction\scripts\ROS_HitReaction.sqf";
[] execVM "omzh_scripts\ini_arsenalRestrict.sqf";
[] execVM "omzh_script_base\zeusList.sqf";
[] execVM "omzh_script_base\zeus\opened_eh.sqf";

pvpfw_chatIntercept_executeCommand = compile preProcessFilelineNumbers "omzh_script_base\chat\executeCommand.sqf";

0 enableChannel [false, false]; // Global (can't be disabled for admins)
1 enableChannel [false, true]; // Side
2 enableChannel [false, false]; // Command
3 enableChannel [false, false]; // Group
4 enableChannel [false, false]; // Vehicle
5 enableChannel [true, false]; // Direct

// Reset and old EH IDs and scripthandles
if (!isNil "pvpfw_chatIntercept_handle")then{
	terminate pvpfw_chatIntercept_handle
};
if (!isNil "pvpfw_chatIntercept_EHID")then{
	(findDisplay 24) displayRemoveEventHandler ["KeyDown",pvpfw_chatIntercept_EHID];
	pvpfw_chatIntercept_EHID = nil;
};

pvpfw_chatIntercept_handle = [] spawn {
	private["_equal","_chatArr"];
	
	while{true}do{
		pvpfw_chatString = "";
		
		waitUntil{sleep 0.22;!isNull (finddisplay 24 displayctrl 101)};
		
		pvpfw_chatIntercept_EHID = (findDisplay 24) displayAddEventHandler["KeyDown",{
			if ((_this select 1) != 28) exitWith{false};
			
			_equal = false;
			
			_chatArr = toArray pvpfw_chatString;
			//_chatArr resize 1;
			if ((_chatArr select 0) isEqualTo ((toArray pvpfw_chatIntercept_commandMarker) select 0))then{
				if (pvpfw_chatIntercept_debug)then{
					systemChat format["Intercepted: %1",pvpfw_chatString];
				};
				_equal = true;
				closeDialog 0;
				(findDisplay 24) closeDisplay 1;
				
				[_chatArr] call pvpfw_chatIntercept_executeCommand;
			};
			
			_equal
		}];
		
		waitUntil{
			if (isNull (finddisplay 24 displayctrl 101))exitWith{
				if (!isNil "pvpfw_chatIntercept_EHID")then{
					(findDisplay 24) displayRemoveEventHandler ["KeyDown",pvpfw_chatIntercept_EHID];
				};
				pvpfw_chatIntercept_EHID = nil;
				true
			};
			pvpfw_chatString = (ctrlText (finddisplay 24 displayctrl 101));
			false
		};
	};
};

addMissionEventHandler ["EntityKilled", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	class = missionNamespace getVariable ([(getDescription _unit) select 0, 0]);
	if (class > 0) then {
		missionNamespace setVariable [(getDescription _unit) select 0, class - 1];
	};
}];

addMissionEventHandler ["HandleDisconnect", { false }];

if (!isDedicated) then {
	sleep 1.5;
	[[play_zone],[], true, true, false] execVM "omzh_scripts\ini_zone.sqf";
};

// Headless Client
execVM "scripts\passToHC.sqf";

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
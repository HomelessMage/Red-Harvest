params ["_player"];

// Не выполняем на HC
if (!hasInterface) exitWith {};

/*
if (isNil {_player getVariable "SquadAssignment"}) exitWith {
	hintSilent "SquadAssignment is nil";
	switch (playerSide) do {
		case "WEST": {
			_player setVariable ["SquadAssignment", "1-ШО", true];
		};
		case "EAST": {
			_player setVariable ["SquadAssignment", "1-ШО", true];
		};
		default { };
	}; 
};
*/

_riflemanSquad = "Мотострелковое отделение, 1/1 омср";
_radioSquad = "Расчёт связи, 2/1 омср";
_ATSquad = "Противотанковый расчёт, 2/1 омср";
_MGSquad = "Пулемётный расчёт, 2/1 омср";
_vehicleSquad = "Экипаж боевой машины, 2/1 омср";

switch (getPlayerUID _player) do {
	// Демьян Терентьев
	case "76561198040777688": { 
		_player setVariable ["SquadAssignment", _radioSquad, true];
	};
	default {
		_player setVariable ["SquadAssignment", _riflemanSquad, true];
	 };
};
_squad = _player getVariable "SquadAssignment";

_squad
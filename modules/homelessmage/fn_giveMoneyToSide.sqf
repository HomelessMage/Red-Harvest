params ["_side", "_money"];

// Выполняем только на сервере
if (!isServer) exitWith {};

private _allPlayers = allPlayers select {side group _x == _side};
{
	[_x, _money, true] call grad_moneymenu_fnc_addFunds;
} forEach _allPlayers;
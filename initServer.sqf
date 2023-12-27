// Подожду пока инициализируется точка
waitUntil { 
	time > 2 
};

_allSectors = entities "ModuleSector_F";
// Итерация на выдачу денег игрокам, контролирующим точку
while {true} do {
	_westPlayers = allPlayers select {side _x == west};
	_resistancePlayers = allPlayers select {side _x == resistance};
	_eastPlayers = allPlayers select {side _x == east};
	{
		_ownerVariable = _x getVariable "currentOwner";
		if (
			(_ownerVariable != west && (count _westPlayers > 0))
			|| (_ownerVariable != resistance && (count _resistancePlayers > 0))
			|| (_ownerVariable != east && (count _eastPlayers > 0))
		) then {
			[_ownerVariable, 50] call hmg_fnc_giveMoneyToSide;
			["Вы получили 50Р за контроль точки. Деньги поступили на банковский счёт."] remoteExec ["systemChat", _ownerVariable];
		} else {
			["Вы не получили деньги за контроль точки, поскольку нет противника."] remoteExec ["systemChat", _ownerVariable];
		};
		
		// systemChat format ["Сектор: %1, Владелец: %2", str _x, str _ownerVariable];
	} forEach _allSectors;
	sleep 120;
};

// ModuleSector_F

/*
private _allPlayers = allPlayers select {side group _x == _ownerVariable}
{
// Code without if here
} forEach _allPlayers;
*/

// Иницилиазация глушилки
radio_jammer_tower spawn {
	waitUntil {
		time > 3
	};
	params ["_this"];
	[_this, 0, 0, 0, 0, 0, 0] call kyk_ew_fnc_broadcastJammerAdd;
	missionNamespace setVariable ["jamming", false, true];
};
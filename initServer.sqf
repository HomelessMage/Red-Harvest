// Подожду пока инициализируется точка
waitUntil { 
	time > 2 
};

_allSectors = entities "ModuleSector_F";
// Итерация на выдачу денег игрокам, контролирующим точку
while {true} do {

	{
		_ownerVariable = _x getVariable "currentOwner";
		[_ownerVariable, 50] call hmg_fnc_giveMoneyToSide;
		["Вы получили 50Р за контроль точки. Деньги поступили на банковский счёт."] remoteExec ["systemChat", _ownerVariable];
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



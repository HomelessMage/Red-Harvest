_laptops = [laptopEAST, laptopWEST, laptopRESISTANCE];
{
	[_x, "root", ""] call AE3_armaos_fnc_computer_addUser;
	[_x, true, true] call AE3_armaos_fnc_computer_addSecurityCommands;
	// [_x] execVM "scripts\armaOS\initUSB.sqf";
} forEach _laptops;

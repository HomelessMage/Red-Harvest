_laptops = [laptopEAST, laptopWEST, laptopRESISTANCE];
{
	[_x, false] call ace_dragging_fnc_setCarryable;
	[_x, "root", ""] call AE3_armaos_fnc_computer_addUser;
	[_x, true, true] call AE3_armaos_fnc_computer_addSecurityCommands;
} forEach _laptops;

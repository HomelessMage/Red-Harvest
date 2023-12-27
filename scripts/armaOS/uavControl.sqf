params ["_computer", "_options", "_commandName"];

[_computer, "uavControl.cpp v0.1 - © 2023 HomelessMage"] call AE3_armaos_fnc_shell_stdout; 
[_computer, "__________________________________________"] call AE3_armaos_fnc_shell_stdout;

uav joinAsSilent [createGroup (side player), 5];

["Артиллерийский БПА получил сигнал взлома."] remoteExec ["systemChat"];

["warning_uav"] remoteExec ["playSound"];

[_computer, format ["БПА подключена к стороне: %1", side player]] call AE3_armaos_fnc_shell_stdout;

[_computer, "SHELL"] call AE3_armaos_fnc_terminal_setInputMode;


/*
private _turretPassword = "passwd";

[_computer, "Введите пароль чтобы взять БПА под контроль: "] call AE3_armaos_fnc_shell_stdout; 
private _password = [_computer] call AE3_armaos_fnc_shell_stdin; 

if (_password isEqualTo _turretPassword) then
{
  turret1 joinAsSilent [createGroup (side player), 5];
  [_computer, format ["БПА подключена к стороне: %1", side turret1]] call AE3_armaos_fnc_shell_stdout;
  [_computer, "SHELL"] call AE3_armaos_fnc_terminal_setInputMode;
}
else
{
    [_computer, "Неверный пароль"] call AE3_armaos_fnc_shell_stdout;
    [_computer, "SHELL"] call AE3_armaos_fnc_terminal_setInputMode;
};
*/

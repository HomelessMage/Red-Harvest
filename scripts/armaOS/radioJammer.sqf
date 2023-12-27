params ["_computer", "_options", "_commandName"];
// [_computer, _options, _commandName] execVM "executedCode.sqf";

_jamming = radio_jammer_tower getVariable ["jamming", false];

[_computer, "radioJammer.cpp v0.1 - © 2023 HomelessMage"] call AE3_armaos_fnc_shell_stdout;
[_computer, "__________________________________________"] call AE3_armaos_fnc_shell_stdout;

private _nextOperation = "";
private _currentOperation = "";
if (_jamming) then {
  _nextOperation = "Отключить";
  _currentOperation = "Активна";
} else {
  _nextOperation = "Активировать";
  _currentOperation = "Отключена";
};

[_computer, (format ["Статус РЭП: %1", _currentOperation])] call AE3_armaos_fnc_shell_stdout; 
[_computer, (format ["%1 РЭП (Y/N)?", _nextOperation])] call AE3_armaos_fnc_shell_stdout; 
_userInput = [_computer] call AE3_armaos_fnc_shell_stdin; 

if (toLower _userInput isEqualTo "n") exitWith {
  [_computer, "SHELL"] call AE3_armaos_fnc_terminal_setInputMode;
};

_nextJammingValue = !(_jamming);

radio_jammer_tower setVariable ["jamming", _nextJammingValue, true];

if (_nextJammingValue) then {
  [radio_jammer_tower, 20000, 20000, 20000, 20000, 20000, 20000] call kyk_ew_fnc_broadcastJammerAdd;
  [_computer, "РЭП активирована"] call AE3_armaos_fnc_shell_stdout;
  ["Активирована РЭП. Связь недоступна."] remoteExec ["systemChat"];
  ["warning_jammer"] remoteExec ["playSound"];
  [_computer, "SHELL"] call AE3_armaos_fnc_terminal_setInputMode;
} else {
  [radio_jammer_tower, 0] call kyk_ew_fnc_jammerArrayRemove;
  [_computer, "РЭП отключена"] call AE3_armaos_fnc_shell_stdout;
  ["РЭП отключена. Связь восстановлена."] remoteExec ["systemChat"];
  [_computer, "SHELL"] call AE3_armaos_fnc_terminal_setInputMode;
};
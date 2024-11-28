pvpfw_chatIntercept_allCommands = 
[
	[
		"help",
		{
			_commands = "";
			{
				_commands = _commands + (pvpfw_chatIntercept_commandMarker + (_x select 0)) + ", ";
			} forEach pvpfw_chatIntercept_allCommands;
			systemChat format ["Available Commands: %1", _commands];
		}
	],
	[
		"roll",
		{
			_r0 = round (random 20);
			_r1 = round (random 20);
			_r2 = round (random 20);
			_r3 = round (random 20);
			_r4 = round (random 20);
			_allR = _r0 + _r1 + _r2 + _r3 + _r4;
			_rShans = format ["Удача благосклонна к %3 на %1%2", _allR, "%", name player];
			[_rShans] remoteExec ["systemChat"];
		}
	],
	[
        "try",
        {
            _argument = _this select 0;
            _r0 = round (random 20);
			_r1 = round (random 20);
			_r2 = round (random 20);
			_r3 = round (random 20);
			_r4 = round (random 20);
			_allR = _r0 + _r1 + _r2 + _r3 + _r4;
            private _msg = if (_allR >= 50) then {format ["%1 удачно %2", name player, _argument]} else {format ["%1 не удачно %2", name player, _argument]};
            [_msg] remoteExec ["systemChat"];
        }
    ],
    [
        "do",
        {
            _argument = _this select 0;
            _msg = format["Окружение: %1", _argument];
            [_msg] remoteExec ["systemChat"];
        }
    ],
	[
        "me",
        {
			_act = (_this select 0);
			_rpchat = format ["RP  %1: %2", name player, _act];
			[_rpchat] remoteExec ["systemChat"];
        }
    ]
];
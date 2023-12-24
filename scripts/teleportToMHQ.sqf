params ["_MHQ", "_unit"];
// _MHQ = _this select 0;
// _unit = _this select 1;

[0,"BLACK",2] remoteExec ["BIS_fnc_fadeEffect", _unit];

sleep 5;

_unit moveInCargo _MHQ;

sleep 5;

[1,"BLACK",2] remoteExec ["BIS_fnc_fadeEffect", _unit];






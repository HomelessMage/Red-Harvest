params ["_MHQ", "_unit"];
[0,"BLACK",2] remoteExec ["BIS_fnc_fadeEffect", _unit];
sleep 5;
_unit moveInCargo _MHQ;
sleep 5;
[1,"BLACK",2] remoteExec ["BIS_fnc_fadeEffect", _unit];
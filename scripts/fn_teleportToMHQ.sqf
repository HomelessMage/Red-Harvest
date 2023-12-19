params ["_MHQ", "_unit"];
// _MHQ = _this select 0;
// _unit = _this select 1;



[0,"BLACK",2] remoteExec ["BIS_fnc_fadeEffect", _unit];

// [0,"BLACK",2] call BIS_fnc_fadeEffect;  //[fade out, to black, 2 second fade, blurred]
sleep 5;

_unit moveInCargo _MHQ;

sleep 5;

[1,"BLACK",2] remoteExec ["BIS_fnc_fadeEffect", _unit];

// [1,"BLACK",2] call BIS_fnc_fadeEffect;  //[fade in, from black, 2 second fade, blurred]





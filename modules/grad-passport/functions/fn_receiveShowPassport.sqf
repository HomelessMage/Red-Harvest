#include "script_component.hpp"
#include "..\dialog\defines.hpp"

params [["_target",objNull],["_passportOwner",objNull],["_showing",true],["_isForced",false]];

// target is local, but not the currently controlled unit
if (_target != ACE_player) exitWith {[_target,_passportOwner,0] remoteExec [QFUNC(updateShowPassportDialog),remoteExecutedOwner,false]};

// already viewing other passport >> exit and send busy state
if (!isNull (findDisplay GRAD_IDD_VIEWPASSPORT)) exitWith {
    if (_target != _passportOwner) then {
        hint format ["%1 пытался показать свое удостоверение.",[_passportOwner] call ace_common_fnc_getName];
    };
    [_target,_passportOwner,2] remoteExec [QFUNC(updateShowPassportDialog),remoteExecutedOwner,false];
};

if (_target != _passportOwner && !_isForced) then {
    hint format ["%1 %2 показывает свое удостоверение.",[_passportOwner] call ace_common_fnc_getName,["больше не",""] select _showing];
};

[_target,_passportOwner,0] remoteExec [QFUNC(updateShowPassportDialog),remoteExecutedOwner,false];
[_target,_passportOwner,_showing] call FUNC(viewPassport);

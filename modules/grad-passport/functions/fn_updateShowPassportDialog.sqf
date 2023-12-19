#include "script_component.hpp"
#include "..\dialog\defines.hpp"

params [["_target",objNull],["_passportOwner",objNull],["_state",-1]];

// user is currently remote controlling AI
if (ACE_player != _passportOwner) exitWith {};

if (_state < 0) exitWith {ERROR("State -1")};

private _display = findDisplay GRAD_IDD_DISPLAYSHOWPASSPORT;
if (isNull _display) exitWith {};

private _stateText = switch (_state) do {
    case (0): {"%1 " + localize "STR_TAG_isCheckingYourID"};
    case (1): {"%1 " + localize "STR_TAG_isNoMoreCheckingYourID"};
    case (2): {"%1 " + localize "STR_TAG_isBusyAndCannotCheckID"};
};

private _infoText = _display displayCtrl GRAD_IDC_SHOWPASSPORT_INFOTEXT;
_infoText ctrlSetText format [_stateText,name _target];

playSound "hint";
["GRAD_passport_showStateChanged", [_target, _passportOwner, _state]] call CBA_fnc_globalEvent;

if (_state > 0) then {

    _stopButton = _display displayCtrl GRAD_IDC_SHOWPASSPORT_STOPBUTTON;
    _stopButton ctrlEnable false;

    [{
        if (isNull _this) exitWith {};
        _this closeDisplay 1;
    },_display,3] call CBA_fnc_waitAndExecute;
};

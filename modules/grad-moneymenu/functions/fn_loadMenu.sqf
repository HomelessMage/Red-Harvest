#include "..\dialog\defines.hpp"
disableSerialization;

params ["_target",["_mode","GIVE"]];

if (_mode in ["ATM_TRANSFER", "DIRECT_SEND"]) then {createDialog "grad_moneyMenu_ATM"} else {createDialog "grad_moneyMenu"};

_dialog = findDisplay grad_moneymenu_DIALOG;
_title = _dialog displayCtrl grad_moneymenu_title;
_myMoney = _dialog displayCtrl grad_moneymenu_myfunds;

uiNamespace setVariable ["grad_moneymenu_currentMode", _mode];
uiNamespace setVariable ["grad_moneymenu_currentTarget",_target];

switch (_mode) do {
    case ("GIVE"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", _target];
        _secure = if (!isNil {_target getVariable "grad_moneymenu_owner"}) then {"secured"} else {"unsecured"};
        _text = if (_target isKindOf "Man") then {toUpper format ["Передать деньги %1", (name _target)]} else {toUpper format ["Store Money (%1)", _secure]};
        _title ctrlSetText _text;
        [player,_mode] call grad_moneymenu_fnc_updateMoney;
    };

    case ("TAKE"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", player];
        _secure = if (!isNil {_target getVariable "grad_moneymenu_owner"}) then {"secured"} else {"unsecured"};
        _text = if (_target isKindOf "Man") then {toUpper format ["Взять деньги у %1", _target getVariable ["ace_name",name _target]]} else {toUpper format ["Взять деньги из хранилища (%1)", _secure]};
        _title ctrlSetText _text;
        [_target,_mode] call grad_moneymenu_fnc_updateMoney;
    };

    case ("ATM_TRANSFER"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", _target];
        _title ctrlSetText "ПЕРЕВОД СРЕДСТВ";
        [] call grad_moneymenu_fnc_updatePlayerList;
        [player,_mode] call grad_moneymenu_fnc_updateMoney;
    };

    case ("ATM_DEPOSIT"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", _target];
        _title ctrlSetText "ВНЕСЕНИЕ СРЕДСТВ";
        [player,_mode] call grad_moneymenu_fnc_updateMoney;
    };

    case ("ATM_WITHDRAW"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", player];
        _title ctrlSetText "СНЯТИЕ СРЕДСТВ";
        [_target,_mode] call grad_moneymenu_fnc_updateMoney;
    };

    case ("DIRECT_SEND"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", _target];
        _title ctrlSetText "ПЕРЕДАЧА ДЕНЕГ";
        [] call grad_moneymenu_fnc_updatePlayerList;
        [player,_mode] call grad_moneymenu_fnc_updateMoney;
    };
};

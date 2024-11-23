#include "..\dialog\defines.hpp"
disableSerialization;

params [["_target",player],["_mode","GIVE"]];

_dialog = findDisplay grad_moneymenu_DIALOG;
_myMoney = _dialog displayCtrl grad_moneymenu_myfunds;
_myMoneyDesc = _dialog displayCtrl grad_moneymenu_myfundsDesc;

_money = if (_mode in ["ATM_WITHDRAW","ATM_TRANSFER"]) then {player getVariable ["grad_moneymenu_myBankBalance",0]} else {_target getVariable ["grad_lbm_myFunds",0]};

switch (true) do {
    case (_mode in ["ATM_WITHDRAW","ATM_TRANSFER"]): {
        _myMoneyDesc ctrlSetText "Мой счёт:";
    };

    case (_target == player): {
        _myMoneyDesc ctrlSetText "Мои средства:";
    };

    default {
        _myMoneyDesc ctrlSetText "Средства:";
    };
};

_text = format ["%1 Р", _money];
_myMoney ctrlSetText _text;

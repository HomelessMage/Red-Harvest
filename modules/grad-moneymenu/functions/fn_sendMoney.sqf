params ["_target", "_recipient", ["_amount",0], ["_mode","GIVE"]];

if (_amount <= 0) exitWith {player say "AddItemFailed"};

switch (_mode) do {
    case ("GIVE"): {
        player setVariable ["grad_lbm_myFunds", ((player getVariable ["grad_lbm_myFunds",0]) - _amount) max 0, true];

        if (player != _recipient) then {
            _desc = if (_target isKindOf "Man") then {format ["<t color='#00FF00'>%1</t> Р передано %2.", _amount, name _target]} else {format ["<t color='#00FF00'>%1</t> Cr put into storage.", _amount]};

            [
                _desc,
                format ["Кошелёк: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_lbm_myFunds",0]]
            ] call grad_moneymenu_fnc_formattedHint;
        };
    };

    case ("ATM_DEPOSIT"): {
        player setVariable ["grad_lbm_myFunds", ((player getVariable ["grad_lbm_myFunds",0]) - _amount) max 0, true];
        player setVariable ["grad_moneymenu_myBankBalance", (player getVariable ["grad_moneymenu_myBankBalance",0]) + _amount, true];

        [
            format ["Вы внесли <t color='#00FF00'>%1</t> Р на счёт.", _amount],
            format ["Банковский счёт: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_moneymenu_myBankBalance",0]],
            format ["Кошелёк: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };

    case ("ATM_WITHDRAW"): {
        player setVariable ["grad_lbm_myFunds", ((player getVariable ["grad_lbm_myFunds",0]) + _amount) max 0, true];
        player setVariable ["grad_moneymenu_myBankBalance", (player getVariable ["grad_moneymenu_myBankBalance",0]) - _amount, true];

        [
            format ["Вы сняли <t color='#00FF00'>%1</t> Р со счёта.", _amount],
            format ["Банковский счёт: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_moneymenu_myBankBalance",0]],
            format ["Кошелёк: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };

    case ("ATM_TRANSFER"): {
        player setVariable ["grad_moneymenu_myBankBalance", ((player getVariable ["grad_moneymenu_myBankBalance",0]) - _amount) max 0, true];

        [
            format ["Вы перевели <t color='#00FF00'>%1</t> Р на счёт %2.", _amount, name _recipient],
            format ["Банковский счёт: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_moneymenu_myBankBalance",0]],
            format ["Кошелёк: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };

    case ("DIRECT_SEND"): {
        player setVariable ["grad_lbm_myFunds", ((player getVariable ["grad_lbm_myFunds",0]) - _amount) max 0, true];

        [
            format ["Вы передали <t color='#00FF00'>%1</t> Р %2.", _amount, name _recipient],
            format ["Кошелёк: <t color='#00FF00'>%1</t> Р", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };
};

[_target,_recipient,_amount,_mode,player] remoteExec ["grad_moneymenu_fnc_receiveMoney",0,false];

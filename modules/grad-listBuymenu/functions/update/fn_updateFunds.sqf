/*  Updates funds text (top right) in buy menu
*
*/

#include "..\..\dialog\defines.hpp"
disableSerialization;

_dialog = findDisplay grad_lbm_DIALOG;
if (isNull _dialog) exitWith {};

_funds = [] call grad_lbm_fnc_getCurrentFunds;

_myfundsCtrl = _dialog displayCtrl grad_lbm_MYFUNDS;
_myfundsCtrl ctrlSetText format ["ДЕНЬГИ: %1",_funds];

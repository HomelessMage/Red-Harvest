#include "script_component.hpp"


private _showPassportAction = [
     QGVAR(showPassportAction),
     localize "STR_TAG_showDocuments",
     "\a3\ui_f\data\igui\cfg\simpletasks\types\Talk_ca.paa",
     {[FUNC(showPassport),_this] call CBA_fnc_execNextFrame},
     {alive (_this select 0) && !((_this select 0) getVariable ["ACE_isUnconscious",false])}
 ] call ace_interact_menu_fnc_createAction;
["CAManBase",0,["ACE_MainActions"],_showPassportAction,true] call ace_interact_menu_fnc_addActionToClass;

private _checkPassportAction = [
     QGVAR(checkPassportAction),
     localize "STR_TAG_checkID",
     "\a3\ui_f\data\igui\cfg\simpletasks\types\search_ca.paa",
     {[FUNC(receiveShowPassport),[ACE_player,_this select 0,true,true]] call CBA_fnc_execNextFrame},
     {!alive (_this select 0) || (_this select 0) getVariable ["ace_captives_isHandcuffed",false] || (_this select 0) getVariable ["ACE_isUnconscious",false] || (_this select 0) getVariable ["ace_captives_isSurrendering",false]}
 ] call ace_interact_menu_fnc_createAction;
["CAManBase",0,["ACE_MainActions"],_checkPassportAction,true] call ace_interact_menu_fnc_addActionToClass;

private _checkOwnPassport = [
     QGVAR(checkOwnPassport),
     localize "STR_TAG_checkOwnID",
     "\a3\ui_f\data\igui\cfg\simpletasks\types\search_ca.paa",
     {[FUNC(receiveShowPassport),[ACE_player,_this select 0,true]] call CBA_fnc_execNextFrame},
     {!((_this select 0) getVariable ["ace_captives_isSurrendering",false]) && !((_this select 0) getVariable ["ace_captives_isHandcuffed",false])}
 ] call ace_interact_menu_fnc_createAction;
["CAManBase",1,["ACE_SelfActions","ACE_Equipment"],_checkOwnPassport,true] call ace_interact_menu_fnc_addActionToClass;

if (isServer) then {
    disableSerialization;
    GVAR(allLocations) = (nearestLocations [[worldSize/2,worldSize/2], ["NameVillage","NameCity","NameCityCapital"], sqrt(2 * worldSize * worldSize)]) apply {text _x};
    publicVariable QGVAR(allLocations);
};

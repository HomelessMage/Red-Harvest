params ["_unit"];

[_unit, _unit] call ace_common_fnc_claim;
_unit disableAI "ALL";
_unit allowDamage false;

// Not required
// [_unit] call grad_moneymenu_fnc_setStorage;

// Rework this logic
/*
[_unit,"westShop",BLUFOR_ARSENAL,BLUFOR_HELIPAD,"Барахолка","Барахолка",{
	playerSide == WEST
}] call grad_lbm_fnc_addInteraction;
*/

_saveProgress = ["SaveProgress","Сохранить прогресс","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",
	{
		// Rework this logic to use extDB3
		// [true, 30, "BLUFOR_BASE"] call grad_persistence_fnc_saveMission;
	},
	{playerSide == WEST},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer","Получить медицинскую помощь","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{
	[player] execVM "scripts\healPlayer.sqf";
	},{
	playerSide == WEST
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_requestMedicine = ["RequestMedicine","Запросить медицинские припасы","images\medicineBox.paa",{
	[WEST] execVM "scripts\requestMedicine.sqf";
	},{
	playerSide == WEST
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _requestMedicine] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy","Высадиться на КШМ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	[BLUFOR_MHQ, player] execVM "scripts\moveToMHQ.sqf";
	},{
		playerSide == WEST
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;
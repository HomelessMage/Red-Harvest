params ["_unit"];

[_unit, _unit] call ace_common_fnc_claim;
_unit disableAI "ALL";
_unit allowDamage false;

_shopMenu = ["ShopMenu", "Магазин", "modules\hoverguy\UI\Icons\money.paa",{nil},{playerSide == EAST}] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _shopMenu] call ace_interact_menu_fnc_addActionToObject; 

_vehicleShop = ["VehicleShop", localize "STR_HG_VEHICLES_SHOP", "modules\hoverguy\UI\Icons\money.paa",
	{
		[_unit, player, nil, "HG_EASTShop"] call HG_fnc_dialogOnLoadVehicles;
	},
	{playerSide == EAST},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions", "ShopMenu"], _vehicleShop] call ace_interact_menu_fnc_addActionToObject;

_gearShop = ["GearShop", localize "STR_HG_GEAR_SHOP", "modules\hoverguy\UI\Icons\money.paa",
	{
		[_unit, player, nil, "HG_EASTShop"] call HG_fnc_dialogOnLoadGear;
	},
	{playerSide == EAST},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions", "ShopMenu"], _gearShop] call ace_interact_menu_fnc_addActionToObject;

_saveProgress = ["SaveProgress","Сохранить прогресс","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",
	{
		// [true, 30, "OPFOR_BASE"] call grad_persistence_fnc_saveMission;
	},
	{playerSide == EAST},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer","Получить медицинскую помощь","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{
	[player] execVM "scripts\healPlayer.sqf";
	},{
	playerSide == EAST
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_requestMedicine = ["RequestMedicine","Запросить медицинские припасы","images\medicineBox.paa",{
	[EAST] execVM "scripts\requestMedicine.sqf";
	},{
	playerSide == EAST
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _requestMedicine] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy","Высадиться на КШМ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	[OPFOR_MHQ, player] execVM "scripts\moveToMHQ.sqf";
	},{
		playerSide == EAST
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;
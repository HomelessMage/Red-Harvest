params ["_object"];

_openGarage = ["OpenGarage", localize "STR_HG_GARAGE", "modules\hoverguy\UI\Icons\garage.paa",
	{
		[_object, player, nil, "HG_EASTGarage"] call HG_fnc_dialogOnLoadGarage;
	},
	{playerSide == EAST},{},[_object],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_object, 0, ["ACE_MainActions"], _openGarage] call ace_interact_menu_fnc_addActionToObject;

_storeVehicle = ["StoreVehicle", localize "STR_HG_GARAGE_PARK", "modules\hoverguy\UI\Icons\garage.paa",
	{
		[_object, player, nil, "HG_EASTGarage"] call HG_fnc_storeVehicleClient;
	},
	{playerSide == EAST},{},[_object],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_object, 0, ["ACE_MainActions"], _storeVehicle] call ace_interact_menu_fnc_addActionToObject;
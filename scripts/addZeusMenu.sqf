params ["_player"];

_uidArray = [
	// Терентьев
	"76561198040777688",
	// Волков
	"76561198806755399",
	// Прохоров
	"76561198891652549"
];

private _uid = getPlayerUID _player;
private _uidCheck = _uidArray find _uid;
private _playerObject = _uid call BIS_fnc_getUnitByUID;

if (_uidCheck != -1) then {
	_assignCurator=["AssignCurator","Zeus","\A3\ui_f_orange\data\cfgmarkers\culturalproperty_ca.paa",{
		try {
		[moduleCurator] remoteExec ["unassignCurator", 2];
		[player, moduleCurator] remoteExec["assignCurator", 2];
		} catch {
			systemChat str _exception;
		};
	}, {
    	true
	}
    ] call ace_interact_menu_fnc_createAction;
    [_playerObject,1,["ACE_SelfActions", "ACE_Equipment"],_assignCurator]call ace_interact_menu_fnc_addActionToObject;
};





_addMoneyMeny = ["AddMoneyMenu","Выдать деньги","\A3\ui_f\data\map\markers\military\destroy_CA.paa", {nil}, {true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions"], _addMoneyMeny] call ace_interact_menu_fnc_addActionToZeus;

_addMoney10000 = ["AddMoney","Добавить себе 10000 рублей","\A3\ui_f\data\map\markers\military\destroy_CA.paa",{[player, 10000] call grad_moneymenu_fnc_addFunds},{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "AddMoneyMenu"], _addMoney10000] call ace_interact_menu_fnc_addActionToZeus;

_addMoney1000 = ["AddMoney","Добавить себе 1000 рублей","\A3\ui_f\data\map\markers\military\destroy_CA.paa",{[player, 1000] call grad_moneymenu_fnc_addFunds},{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "AddMoneyMenu"], _addMoney1000] call ace_interact_menu_fnc_addActionToZeus;

_addMoney500 = ["AddMoney","Добавить себе 500 рублей","\A3\ui_f\data\map\markers\military\destroy_CA.paa",{[player, 500] call grad_moneymenu_fnc_addFunds},{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "AddMoneyMenu"], _addMoney500] call ace_interact_menu_fnc_addActionToZeus;

_purgeDataMenu = ["PurgeDataMenu","Меню удаления сохранений","\a3\Ui_F_Curator\Data\CfgMarkers\minefield_ca.paa", {nil}, {true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions"], _purgeDataMenu] call ace_interact_menu_fnc_addActionToZeus;

_purgeData = ["PurgeData", "ОЧИСТИТЬ СОХРАНЕНИЯ", "\a3\Ui_F_Curator\Data\CfgMarkers\minefieldAP_ca.paa",
		{
			[] remoteExec ["grad_persistence_fnc_clearMissionData", 2];
			[] remoteExec ["ALiVE_fnc_ProfileNameSpaceWipe", 2];
		},
		{
			true
		}
] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "PurgeDataMenu"], _purgeData] call ace_interact_menu_fnc_addActionToZeus;
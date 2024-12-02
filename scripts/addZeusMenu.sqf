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


_moneyMenu = ["MoneyMenu","Денежное меню","\A3\ui_f\data\map\markers\military\destroy_CA.paa", {nil}, {true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions"], _moneyMenu] call ace_interact_menu_fnc_addActionToZeus;



// /*
_checkAllCurrentPlayersBalance = ["CheckPlayersBalance", "Проверить баланс всех игроков", "\a3\ui_f\data\igui\cfg\simpletasks\types\search_ca.paa", 
	{
		private _players = allPlayers - entities "HeadlessClient_F";
		_dataArray = [];
		{
			_cashMoney = [_x, false] call grad_lbm_fnc_getFunds;
			_bankMoney = _x getVariable "grad_moneymenu_myBankBalance";
			_playerData = [name _x, getPlayerUID _x, _cashMoney, _bankMoney];
			_dataArray pushBack _playerData;

		} forEach _players;
		systemChat str _dataArray;
		diag_log str _dataArray;
		copyToClipboard str _dataArray;
		systemChat "Данные скопированы в буфер обмена.";
	}, 
	{
		true
	}
] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "MoneyMenu"], _checkAllCurrentPlayersBalance] call ace_interact_menu_fnc_addActionToZeus;
// */

_addMoneyToSide = ["AddMoney", "Добавить деньги стороне", "",
	{
		// Disable cancel option
		[
			[
				[
					[
						["ЧСО"],
						[format["%1 активных игроков",west countSide allPlayers]],
						[
							getText(configfile >> "RscDisplayMultiplayerSetup" >> "west"),
							(configfile >> "RscDisplayMultiplayerSetup" >> "controls" >> "CA_B_West" >> "colorActive") call BIS_fnc_colorConfigToRGBA
						],
						[], 
						"Чернорусские Силы Обороны", "WEST", 1
					],
					[
						["ЧДКЗ"],
						[format["%1 активных игроков",east countSide allPlayers]],
						[
							getText(configfile >> "RscDisplayMultiplayerSetup" >> "east"),
							(configfile >> "RscDisplayMultiplayerSetup" >> "controls" >> "CA_B_East" >> "colorActive") call BIS_fnc_colorConfigToRGBA
						],
						[], 
						"Чернорусское Движение Красной Звезды", "EAST", 0
					]
				],
				0,false
			],
			"Выбор стороны",
			[
				{
					player setVariable ["SelectedAwardSide", _data];
					[
						[false, "1000"],
						"Введите сумму",
						{
							_data = player getVariable "SelectedAwardSide";
							_keys = ["WEST", "EAST", "INDEPENDENT", "CIVILIAN"];
							_values = [WEST, EAST, INDEPENDENT, CIVILIAN];
							_sideVariable = _values select (_keys find _data);
							if _confirmed then {
								[_sideVariable, _text call BIS_fnc_parseNumber] call hmg_fnc_giveMoneyToSide;
								systemchat format["Стороне %1 выдано: %2Р", _sideVariable, _text];
								player setVariable ["SelectedAwardSide", nil];
							} else {
								systemchat "Выдача отменена";
								player setVariable ["SelectedAwardSide", nil];
							};
						},
						"Подтвердить",
						"Отменить" 
					] call CAU_UserInputMenus_fnc_text;
				},
				_confirmed, _index, _data, _value

			],
			/*
			{
				if (!_confirmed) exitWith {
					systemChat "Выдача отменена";
				};
				systemchat format["_confirmed: %1",_confirmed];
				systemchat format["_index: %1",_index];
				systemchat format["_data: %1",_data];
				systemchat format["_value: %1",_value];

			},
			*/
			"Подтвердить",
			"Отменить"
		] call CAU_UserInputMenus_fnc_listbox;
	},
	{true}
] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "MoneyMenu"], _addMoneyToSide] call ace_interact_menu_fnc_addActionToZeus;



_addMoney10000 = ["AddMoney","Добавить себе 10.000 рублей","\A3\ui_f\data\map\markers\military\destroy_CA.paa",{[player, 10000] call grad_moneymenu_fnc_addFunds},{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "MoneyMenu"], _addMoney10000] call ace_interact_menu_fnc_addActionToZeus;

_addMoney1000 = ["AddMoney","Добавить себе 1.000 рублей","\A3\ui_f\data\map\markers\military\destroy_CA.paa",{[player, 1000] call grad_moneymenu_fnc_addFunds},{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "MoneyMenu"], _addMoney1000] call ace_interact_menu_fnc_addActionToZeus;

_addMoney500 = ["AddMoney","Добавить себе 500 рублей","\A3\ui_f\data\map\markers\military\destroy_CA.paa",{[player, 500] call grad_moneymenu_fnc_addFunds},{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions", "MoneyMenu"], _addMoney500] call ace_interact_menu_fnc_addActionToZeus;

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







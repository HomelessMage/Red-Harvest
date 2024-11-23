params ["_arsenal"];

vehicle _arsenal lockInventory true;
[_arsenal, _arsenal] call ace_common_fnc_claim;
_arsenal allowDamage false;


_selectClass = ["SelectClass", "Специализации", "\a3\ui_f\data\igui\cfg\simpletasks\types\meet_ca.paa", {nil}, {playerSide == WEST}] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _selectClass] call ace_interact_menu_fnc_addActiontoObject;


_selectRifleman = ["SelectClassRifleman", "Стрелок", "\a3\ui_f\data\igui\cfg\simpletasks\types\rifle_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Стрелок", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectRifleman] call ace_interact_menu_fnc_addActiontoObject;

_selectGrenadier = ["SelectClassGrenadier", "Специалист ГП", "\a3\ui_f\data\igui\cfg\simpletasks\types\mine_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Специалист ГП", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectGrenadier] call ace_interact_menu_fnc_addActiontoObject;

_selectAT = ["SelectClassAT", "Специалист ПТ", "\a3\ui_f\data\igui\cfg\simpletasks\types\destroy_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Специалист ПТ", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectAT] call ace_interact_menu_fnc_addActiontoObject;

_selectMG = ["SelectClassMG", "Пулемётчик", "\a3\ui_f\data\igui\cfg\simpletasks\types\defend_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Пулемётчик", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectMG] call ace_interact_menu_fnc_addActiontoObject;

_selectMedic= ["SelectClassMedic", "Санинструктор", "\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Санинструктор", true];
		player setVariable ["ace_medical_medicclass", 1, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectMedic] call ace_interact_menu_fnc_addActiontoObject;

_selectEngineer = ["SelectClassEngineer", "Инженер-сапёр", "\a3\ui_f\data\igui\cfg\simpletasks\types\repair_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Инженер-сапёр", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", true];
		player setUnitTrait ["engineer", true];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectEngineer] call ace_interact_menu_fnc_addActiontoObject;

_selectUAV= ["SelectClassUAV", "Оператор БПЛА", "\a3\ui_f\data\igui\cfg\simpletasks\types\Heli_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Оператор БПЛА", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectUAV] call ace_interact_menu_fnc_addActiontoObject;

_selectEW = ["SelectClassEW", "Специалист РЭБ", "\a3\ui_f\data\igui\cfg\simpletasks\types\Use_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Специалист РЭБ", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectEW] call ace_interact_menu_fnc_addActiontoObject;

_selectRadio = ["SelectClassRadio", "Связист", "\a3\ui_f\data\igui\cfg\simpletasks\types\Radio_ca.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Связист", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectRadio] call ace_interact_menu_fnc_addActiontoObject;

_selectLeader = ["SelectClassLeader", "Командир", "\A3\ui_f_orange\data\cfgmarkers\civildefense.paa", {
		if (!isNil {player getVariable "CombatClass"}) exitWith {
			["TaskFailed", ["", format ["Вы уже выбрали специализацию %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
		};
		player setVariable ["CombatClass", "Командир", true];
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		["TaskSucceeded", ["", format ["Получена специализация: %1", player getVariable "CombatClass"]]] call BIS_fnc_showNotification;
}, {
	playerSide == WEST && (getPlayerUID player == "76561198415894788")
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions", "SelectClass"], _selectLeader] call ace_interact_menu_fnc_addActiontoObject;


_openArsenal = ["OpenArsenal", "Арсенал", "\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa", {
		params ["_arsenal"];
		if (isNil {player getVariable "CombatClass"}) exitWith { 
			["TaskFailed", ["", "Сначала нужно получить специализацию"]] call BIS_fnc_showNotification;
		};
		_arsenalItems = [
			// WEAPONS
			"rhs_weap_ak74n",
			"rhs_weap_ak74n_2",
			"rhs_weap_aks74n",
			"rhs_weap_aks74n_2",
			"rhs_weap_aks74un",
			"rhs_weap_ak74m",
			"rhs_weap_ak74m_fullplum",
			// MAGS
			"rhs_30Rnd_545x39_7N10_AK",
			"rhs_30Rnd_545x39_7N22_AK",
			"rhs_45Rnd_545X39_7N10_AK",
			"rhs_45Rnd_545X39_7N22_AK",
			// UNIFORMS
			// Digital
			"cdf_bdu_clothes_1",
			"cdf_bdu_clothes_2",
			"cdf_bdu_clothes_7",
			"cdf_bdu_clothes_8",
			// DD16
			"acm_cdf_r_clothes1_1",
			"acm_cdf_r_clothes1_2",
			"acm_cdf_r_clothes1_3",
			"acm_cdf_r_clothes1_4",
			"acm_cdf_r_clothes1_5",
			"acm_cdf_r_clothes1_6",
			// BACKPACKS
			"rhs_assault_umbts",
			// VESTS
			// Digital
			"acm_cdf_r_vest_mbav_empty",
			"rhsgref_6b23_ttsko_digi",
			// HEADGEAR
			// Digital
			"rhsgref_fieldcap_ttsko_digi",
			"rhssaf_booniehat_digital",
			"rhsgref_ssh68_ttsko_digi",
			"rhsgref_6b27m_ttsko_digi",
			"CDF_M15V_1",
			"CDF_M15V_2",
			"CDF_M15V_3",
			"rhs_beanie_green",
			// Misc
			"ItemGPS",
			"ItemGPS",
			"ItemMap",
			"Binocular",
			"ItemWatch",
			// TFAR
			"TFAR_rf7800str",
			"TFAR_microdagr",
			// ACE
			"ACE_CableTie", 
			"ACE_EarPlugs", 
			"ACE_SpareBarrel", 
			"ACE_UAVBattery",
			"ACE_EntrenchingTool",

			"rhs_mag_f1", 
			"rhs_mag_rdg2_white", 

			"ACE_adenosine", 
			"ACE_fieldDressing", 
			"ACE_elasticBandage", 
			"ACE_packingBandage", 
			"ACE_quikclot", 
			"ACE_bloodIV", 
			"ACE_bloodIV_250", 
			"ACE_bloodIV_500", 
			"ACE_bodyBag", 
			"ACE_bodyBag_blue", 
			"ACE_bodyBag_white", 
			"ACE_epinephrine", 
			"ACE_morphine", 
			"ACE_painkillers", 
			"ACE_personalAidKit", 
			"ACE_plasmaIV", 
			"ACE_plasmaIV_250", 
			"ACE_plasmaIV_500", 
			"ACE_salineIV", 
			"ACE_salineIV_250", 
			"ACE_salineIV_500", 
			"ACE_splint", 
			"ACE_surgicalKit", 
			"ACE_suture", 
			"ACE_tourniquet", 
			"ACE_ATNAA_AntidoteInjector", 
			"kat_IV_16", 
			"kat_aatKit", 
			"kat_accuvac", 
			"kat_AFAK", 
			"kat_X_AED", 
			"kat_amiodarone", 
			"kat_Carbonate", 
			"kat_atropine", 
			"kat_AED", 
			"kat_plate", 
			"kat_BVM", 
			"kat_Caffeine", 
			"kat_chestSeal", 
			"kat_clamp", 
			"kat_coag_sense", 
			"kat_Painkiller", 
			"kat_vacuum", 
			"kat_EACA", 
			"kat_oxygenTank_150_Empty", 
			"kat_oxygenTank_300_Empty", 
			"kat_etomidate", 
			"kat_IO_FAST", 
			"kat_fentanyl", 
			"KAT_Empty_bloodIV_250", 
			"KAT_Empty_bloodIV_500", 
			"kat_fluidWarmer", 
			"kat_flumazenil", 
			"kat_guedel", 
			"kat_handWarmer", 
			"kat_ultrasound", 
			"kat_IFAK", 
			"kat_epinephrineIV", 
			"kat_ketamine", 
			"kat_larynx", 
			"kat_lidocaine", 
			"kat_lorazepam", 
			"kat_lorazepam", 
			"kat_MFAK", 
			"kat_nalbuphine", 
			"kat_naloxone", 
			"kat_nasal", 
			"kat_ncdKit", 
			"kat_nitroglycerin", 
			"kat_norepinephrine", 
			"kat_Penthrox", 
			"kat_Pervitin", 
			"kat_phenylephrine", 
			"kat_phenylephrineAuto", 
			"kat_pocketBVM", 
			"kat_oxygenTank_150", 
			"kat_oxygenTank_300", 
			"kat_Pulseoximeter", 
			"kat_reboa", 
			"kat_retractor", 
			"kat_scalpel", 
			"kat_stethoscope", 
			"kat_TXA", 

			"G_Balaclava_Flecktarn", 
			"G_Balaclava_blk", 
			"G_Balaclava_oli", 
			"rhs_googles_yellow", 
			"rhs_balaclava1_olive", 
			"rhsusf_oakley_goggles_blk", 
			"rhsusf_oakley_goggles_clr", 
			"rhsusf_oakley_goggles_ylw", 
			"rhs_googles_clear", 
			"rhs_googles_orange", 
			"rhs_googles_yellow"
		];
		switch (player getVariable "CombatClass") do {
			case "Стрелок": {
				_itemsToAdd = [
					// Жилеты
					"acm_cdf_r_vest_mbav_rifleman",
					"rhsgref_6b23_ttsko_digi_rifleman",
					"acm_cdf_r_vest_spc_rifleman"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Специалист ГП": {
				_itemsToAdd = [
					// Оружие
					"rhs_weap_ak74m_gp25",
					"rhs_weap_ak74m_fullplum_gp25",
					"rhs_weap_ak74n_gp25",
					"rhs_weap_ak74n_2_gp25",
					"rhs_weap_aks74n_gp25",
					// Боеприпасы
					"rhs_GDM40",
					"rhs_GRD40_Green",
					"rhs_GRD40_Red",
					"rhs_GRD40_White",
					"rhs_VG40MD",
					"rhs_VG40OP_green",
					"rhs_VG40OP_red",
					"rhs_VG40OP_white",
					"rhs_VG40SZ",
					"rhs_VG40TB",
					"rhs_VOG25",
					"rhs_VOG25P",
					// Жилеты
					"acm_cdf_r_vest_mbav_grenadier",
					"acm_cdf_r_vest_spc_teamlead"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Специалист ПТ": {
				_itemsToAdd = [
					// Оружие
					"rhs_weap_rpg7",
					// Боеприпасы
					"rhs_rpg7_OG7V_mag",
					"rhs_rpg7_PG7V_mag",
					"rhs_rpg7_PG7VL_mag",
					"rhs_rpg7_PG7VM_mag",
					"rhs_rpg7_PG7VR_mag",
					"rhs_rpg7_PG7VS_mag",
					"rhs_rpg7_TBG7V_mag",
					"rhs_rpg7_type69_airburst_mag",
					// Жилеты
					"acm_cdf_r_vest_mbav_light",
					"acm_cdf_r_vest_spc_light",
					// Рюкзаки
					"B_Carryall_oli"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Пулемётчик": {
				_itemsToAdd = [
					// Оружие
					"rhs_weap_pkm",
					"rhs_weap_pkp",
					"rhs_weap_rpk74m",
					// Боеприпасы
					"rhs_100Rnd_762x54mmR",
					"rhs_100Rnd_762x54mmR_7BZ3",
					"rhs_100Rnd_762x54mmR_7N13",
					"rhs_100Rnd_762x54mmR_7N26",
					"rhs_100Rnd_762x54mmR_green",
					// Жилеты
					"acm_cdf_r_vest_mbav_mg",
					"acm_cdf_r_vest_spc_mg",
					// Рюкзаки
					"B_Carryall_oli"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Санинструктор": {
				_itemsToAdd = [
					// Жилеты
					"acm_cdf_r_vest_mbav_medic",
					"rhsgref_6b23_ttsko_digi_medic",
					// Рюкзаки
					"B_Carryall_oli"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Инженер-сапёр": {
				_itemsToAdd = [
					// Оружие
					"ACE_VMH3",
					// Жилеты
					"acm_cdf_r_vest_mbav_light",
					"acm_cdf_r_vest_spc_light",
					// Рюкзаки
					"rhs_assault_umbts_engineer_empty",
					// Инструменты
					"ACE_DefusalKit",
					"ToolKit",
					"ACE_Clacker",
					// Взрывчатка
					"ClaymoreDirectionalMine_Remote_Mag", 
					"ATMine_Range_Mag", 
					"rhs_ec75_mag", 
					"rhs_ec200_mag", 
					"rhs_ec400_mag"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Оператор БПЛА": {
				_itemsToAdd = [
					// Жилеты
					"acm_cdf_r_vest_mbav_light",
					"acm_cdf_r_vest_spc_light",
					// Инструменты
					"Item_Mavic",
					"B_UavTerminal",
					// Гранаты
					"Mavic_F1",
					"Mavic_M433",
					"mavick_V40_Impact_Grenade",
					"mavick_M67_Impact_Grenade",
					"Mavic_tbg",
					"Mavic_Vog25"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Специалист РЭБ": {
				_itemsToAdd = [
					// Жилеты
					"acm_cdf_r_vest_mbav_light",
					"acm_cdf_r_vest_spc_light",
					// Рюкзаки
					"Sania_Bag",
					// Оружие
					"hgun_esd_01_F",
					// Инструменты
					"NER_item_bulatv3",
					"Item_JammerSania"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Связист": {
				_itemsToAdd = [
					// Жилеты
					"acm_cdf_r_vest_mbav_light",
					"acm_cdf_r_vest_spc_light",
					// Рюкзаки
					"TFAR_rt1523g_bwmod"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			case "Командир": {
				_itemsToAdd = [
					// Жилеты
					"acm_cdf_r_vest_spc_corps",
					"acm_cdf_r_vest_spc_squadleader",
					"rhsgref_6b23_ttsko_digi_nco",
					"rhsgref_6b23_ttsko_digi_officer",
					// Рюкзаки
					"TFAR_rt1523g_bwmod",
					// Инструменты
					"ALIVE_Tablet"
				];
				{
					_arsenalItems pushBackUnique _x; 
				} forEach _itemsToAdd;
			};
			default {};
		};
		[_arsenal, true, false] call ace_arsenal_fnc_removeVirtualItems;
		[_arsenal, _arsenalItems] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
	}, {
		playerSide == WEST
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActiontoObject;

_openStorage = ["OpenStorage", "Склад", "\a3\ui_f\data\igui\cfg\simpleTasks\types\box_ca.paa", {
	params ["_arsenal"];
    player action ["Gear", _arsenal];
}, {
	playerSide == WEST
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActiontoObject;
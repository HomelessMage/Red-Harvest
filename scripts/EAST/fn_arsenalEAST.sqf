params ["_arsenal"];
// _arsenal = _this select 0;

vehicle _arsenal lockInventory true;
[_arsenal, _arsenal] call ace_common_fnc_claim;
_arsenal allowDamage false;


_openArsenal = ["OpenArsenal", localize "STR_TAG_arsenal", "\a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa", {
		params ["_target", "_player", "_params"];
		_params params ["_arsenal"];
		_uniformsArray = ["UK3CB_LSM_B_U_CombatSmock_13", "UK3CB_LSM_B_U_CombatSmock_16", "UK3CB_LSM_B_U_CombatSmock_17", "UK3CB_LSM_B_U_CombatSmock_15", "UK3CB_LSM_B_U_CombatSmock_14", "UK3CB_LSM_B_U_Crew_CombatSmock_10", "UK3CB_LSM_B_U_CombatSmock_09", "UK3CB_LSM_B_U_Crew_CombatSmock_04"];
		_backpackArray = ["UK3CB_B_Invisible", "UK3CB_B_O_Backpack_Radio_Chem_OLI"];
		_headgearArray = ["UK3CB_H_Beret_Officer_Red_Star", "UK3CB_LSM_B_H_BoonieHat_PART", "UK3CB_LSM_B_H_Field_Cap_PART", "UK3CB_LSM_B_H_M88_Field_Cap_PART", "UK3CB_H_Beanie_02_Camo", "UK3CB_H_Beanie_02_BLK", "UK3CB_H_Beanie_02_GRY", "UK3CB_LSM_B_H_Field_Cap_BLK", "UK3CB_LSM_B_H_Field_Cap_KHK", "UK3CB_LSM_B_H_Field_Cap_OLI", "UK3CB_LSM_B_H_Field_Cap_PART"];
		_faceGearArray = ["UK3CB_G_Balaclava_CHD", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Bandanna_green_check", "UK3CB_G_Face_Wrap_01", "G_Balaclava_blk", "G_Balaclava_oli"];
		_vestsArray = ["UK3CB_V_Chestrig_OLI", "UK3CB_V_Chestrig_TKA_OLI"];
		_weaponsArray = ["rhs_weap_akmn", "rhs_acc_dtkakm"];
		_weaponMagazines = ["rhs_30Rnd_762x39mm_bakelite"];
		_aceItems = ["ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_bodyBag","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","ACE_Clacker","ACE_morphine","ACE_personalAidKit","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ToolKit","ACE_tourniquet","ACE_wirecutter","CUP_PipeBomb_M","ItemGPS","ItemWatch","ItemCompass","ItemMap","Binocular","ACE_artilleryTable","ACE_RangeTable_82mm","ACE_ATragMX","ACE_Flashlight_MX991","ACE_RangeCard","ACE_MapTools","ACE_surgicalKit","ACE_UAVBattery","ACE_quikclot","ACE_DAGR"];
		_grenadesItems = ["rhs_mag_rdg2_white", "rhs_mag_f1", "rhs_mag_nspd", "ACE_Chemlight_White"];
		_radioItem = ["TFAR_fadak"];
		_explosives = ["rhs_charge_M2tet_x2_mag"];
		_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _weaponMagazines + _aceItems + _grenadesItems + _radioItem + _explosives;
		[_arsenal, _arsenalArray] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
}, {
	side player == east
}, {}, [_arsenal], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActiontoObject;


_openStorage = ["OpenStorage", localize "STR_TAG_storage", "\a3\ui_f\data\igui\cfg\simpleTasks\types\box_ca.paa", {
	lootBoxEAST setPos position player;
    player action ["Gear", lootBoxEAST];
}, {
    side player == east
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActiontoObject;
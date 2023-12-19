params ["_arsenal"];
// _arsenal = _this select 0;

vehicle _arsenal lockInventory true;
[_arsenal, _arsenal] call ace_common_fnc_claim;
_arsenal allowDamage false;

/*
_openArsenalUSMC = ["OpenArsenalUSMC", localize "STR_TAG_arsenal", "\a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa", {
		params ["_arsenal"];
		_uniformsArray = ["rhs_uniform_FROG01_wd"];
		_backpackArray = ["UK3CB_B_invisible", "UK3CB_B_O_Backpack_Radio_Chem_OLI", "B_UGV_02_Demining_backpack_F", "B_UAV_01_backpack_F"];
		_headgearArray = ["rhsusf_mich_helmet_marpatwd", "rhsusf_mich_helmet_marpatwd_alt", "rhsusf_mich_helmet_marpatwd_alt_headset", "rhsusf_mich_helmet_marpatwd_headset", "rhsusf_mich_helmet_marpatwd_norotos", "rhsusf_mich_helmet_marpatwd_norotos_headset", "rhs_booniehat2_marpatwd", "UK3CB_H_MilCap_MAR", "UK3CB_H_Cap_MAR", "UK3CB_H_BoonieHat_MAR", "UK3CB_H_Bandanna_MAR"];
		_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_tan", "UK3CB_G_Tactical_Black"];
		_vestsArray = ["UK3CB_V_MBAV_LIGHT_OLI", "UK3CB_V_MBAV_MG_OLI", "UK3CB_V_MBAV_MEDIC_OLI", "UK3CB_V_MBAV_RifLEMAN_OLI"];
		_weaponsArray = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d10_LMT_wd", "rhs_weap_hk416d145", "rhs_weap_hk416d145_wd", "rhs_weap_hk416d145_wd_2"];
		_launchersArray = ["rhs_weap_M136", "rhs_weap_fgm148", "rhs_weap_fim92"];
		_attachmentsArray = ["rhsusf_acc_nt4_black", "optic_MRCO", "B_UavTerminal"];
		_weaponmagazines = ["rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_fgm148_magazine_AT", "rhs_fim92_mag"];
		_aceitems = ["ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "ACE_CableTie", "ACE_bodyBag", "ACE_DefusalKit", "ACE_EarPlugs", "ACE_Entrenchingtool", "ACE_epinephrine", "ACE_Clacker", "ACE_morphine", "ACE_personalAidKit", "ACE_SpareBarrel_Item", "ACE_splint", "ACE_SpottingScope", "toolKit", "ACE_tourniquet", "ACE_wirecutter", "CUP_pipeBomb_M", "ItemGPS", "ItemWatch", "ItemCompass", "ItemMap", "binocular", "ACE_artilleryTable", "ACE_RangeTable_82mm", "ACE_ATragMX", "ACE_Flashlight_MX991", "ACE_RangeCard", "ACE_Maptools", "ACE_surgicalKit", "ACE_UAVBattery", "ACE_quikclot", "ACE_DAGR"];
		_grenadesitems = ["rhs_mag_mk84", "rhs_mag_m67", "rhs_mag_mk3a2", "rhs_mag_an_m8hc"];
		_radioItem = ["TFAR_anprc152"];
		// private _arsenalArray = [];
		// {
		// 	_arsenalArray pushBack _x; 
		// } forEach [_uniformsArray, _backpackArray, _headgearArray, _facegearArray, _vestsArray, _weaponsArray, _launchersArray, _attachmentsArray, _weaponmagazines, _aceitems, _grenadesitems, _radioItem];
		_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _launchersArray + _attachmentsArray + _weaponmagazines + _aceitems + _grenadesitems + _radioItem;
		[_arsenal, _arsenalArray] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
}, {
	side player == west && typeOf player == "rhsusf_usmc_recon_marpat_wd_rifleman"
}, {}, [_arsenal], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenalUSMC] call ace_interact_menu_fnc_addActiontoObject;
*/

_openArsenalCDF = ["OpenArsenalCDF", localize "STR_TAG_arsenal", "\a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa", {
		params ["_arsenal"];
		_uniformsArray = ["UK3CB_GAF_B_U_CombatSmock_01_DIGI"];
		_backpackArray = ["UK3CB_B_invisible", "UK3CB_B_B_Backpack_Radio_Chem_OLI"];
		_headgearArray = ["UK3CB_GAF_B_H_Beret_Army", "UK3CB_GAF_B_H_Off_Beret", "UK3CB_GAF_B_H_BoonieHat_DIGI", "UK3CB_GAF_B_H_Field_Cap_DIGI", "UK3CB_GAF_B_H_Patrol_Cap_DIGI"];
		_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_tan", "UK3CB_G_Tactical_Black"];
		_vestsArray = ["UK3CB_V_Chestrig_TKA_OLI", "UK3CB_V_Chestrig_OLI"];
		_weaponsArray = ["rhs_weap_ak74m", "rhs_weap_ak74m_fullplum", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_desert"];
		// _launchersArray = ["rhs_weap_M136", "rhs_weap_fgm148", "rhs_weap_fim92"];
		_launchersArray = [];
		_attachmentsArray = ["rhs_acc_ak5"];
		_weaponMagazines = ["rhs_30Rnd_545x39_7N22_plum_AK"];
		_aceitems = ["ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "ACE_CableTie", "ACE_bodyBag", "ACE_DefusalKit", "ACE_EarPlugs", "ACE_Entrenchingtool", "ACE_epinephrine", "ACE_Clacker", "ACE_morphine", "ACE_personalAidKit", "ACE_SpareBarrel_Item", "ACE_splint", "ACE_SpottingScope", "toolKit", "ACE_tourniquet", "ACE_wirecutter", "CUP_pipeBomb_M", "ItemGPS", "ItemWatch", "ItemCompass", "ItemMap", "binocular", "ACE_artilleryTable", "ACE_RangeTable_82mm", "ACE_ATragMX", "ACE_Flashlight_MX991", "ACE_RangeCard", "ACE_Maptools", "ACE_surgicalKit", "ACE_UAVBattery", "ACE_quikclot", "ACE_DAGR"];
		_grenadesitems = ["rhs_mag_mk84", "rhs_mag_m67", "rhs_mag_mk3a2", "rhs_mag_an_m8hc"];
		_radioItem = ["TFAR_anprc152"];
		_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _launchersArray + _attachmentsArray + _weaponMagazines + _aceitems + _grenadesitems + _radioItem;
		[_arsenal, _arsenalArray] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
}, {
	// side player == west && typeOf player == "rhsgref_cdf_b_reg_rifleman"
	side player == west
}, {}, [_arsenal], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenalCDF] call ace_interact_menu_fnc_addActiontoObject;

/*
_openArsenalMVD = ["OpenArsenalMVD", localize "STR_TAG_arsenal", "\a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa", {
		params ["_arsenal"];
		private _uniformsArray = ["UK3CB_CPD_B_U_CombatUniform_01_Grey", "UK3CB_CPD_B_U_CombatUniform_01_Urban", "UK3CB_CPD_B_U_Policeman_01"];
		private _backpackArray = ["UK3CB_B_invisible"];
		private _headgearArray = ["UK3CB_CPD_B_H_Beret", "UK3CB_H_Police_Cap", "UK3CB_ANP_B_H_6b27m_ess_BLK", "UK3CB_ANP_B_H_6b27m_BLK", "UK3CB_H_Beanie_02_BLK"];
		private _facegearArray = [];
		private _vestsArray = ["UK3CB_CPD_B_V_6b23_ml_BLU", "UK3CB_CPD_B_V_6b23_ml_BLU_02"];
		private _weaponsArray = ["rhs_weap_aks74n", "rhs_weap_aks74n_2"];
		private _launchersArray = [];
		private _attachmentsArray = ["rhs_acc_dtk1983"];
		private _weaponmagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
		private _aceitems = ["ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "ACE_CableTie", "ACE_bodyBag", "ACE_DefusalKit", "ACE_EarPlugs", "ACE_Entrenchingtool", "ACE_epinephrine", "ACE_Clacker", "ACE_morphine", "ACE_personalAidKit", "ACE_SpareBarrel_Item", "ACE_splint", "ACE_SpottingScope", "toolKit", "ACE_tourniquet", "ACE_wirecutter", "CUP_pipeBomb_M", "ItemGPS", "ItemWatch", "ItemCompass", "ItemMap", "binocular", "ACE_artilleryTable", "ACE_RangeTable_82mm", "ACE_ATragMX", "ACE_Flashlight_MX991", "ACE_RangeCard", "ACE_Maptools", "ACE_surgicalKit", "ACE_UAVBattery", "ACE_quikclot", "ACE_DAGR"];
		private _grenadesitems = ["rhs_mag_mk84", "rhs_mag_m67", "rhs_mag_mk3a2", "rhs_mag_an_m8hc"];
		private _radioItem = ["TFAR_anprc152"];
		_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _launchersArray + _attachmentsArray + _weaponmagazines + _aceitems + _grenadesitems + _radioItem;
		[_arsenal, _arsenalArray] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
}, {
	side player == west && typeOf player == "rhsgref_cdf_b_ngd_rifleman"
}, {}, [_arsenal], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenalMVD] call ace_interact_menu_fnc_addActiontoObject;
*/


_openStorage = ["OpenStorage", localize "STR_TAG_storage", "\a3\ui_f\data\igui\cfg\simpleTasks\types\box_ca.paa", {
	lootBoxWEST setPos position player;
    player action ["Gear", lootBoxWEST];
}, {
    side player == west
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActiontoObject;
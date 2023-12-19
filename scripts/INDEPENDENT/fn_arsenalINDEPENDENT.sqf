params ["_arsenal"];
// _arsenal = _this select 0;

vehicle _arsenal lockInventory true;
[_arsenal, _arsenal] call ace_common_fnc_claim;
_arsenal allowDamage false;

/*
// NAPA
_openArsenal = ["OpenArsenal", localize "STR_TAG_arsenal", "\a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa", {
		params ["_target", "_player", "_params"];
		_params params ["_arsenal"];
		_uniformsArray = ["UK3CB_NAP_B_U_CombatUniform_FLK", "UK3CB_NAP_B_U_CombatUniform_WDL", "UK3CB_NAP_B_U_Officer_Uniform_FLK_BLK", "UK3CB_NAP_B_U_Officer_Uniform_FLK_GRN", "UK3CB_NAP_B_U_Officer_Uniform_GRN_BLK", "UK3CB_NAP_B_U_Officer_Uniform_GRN", "UK3CB_NAP_B_U_Officer_Uniform_WDL_BLK", "UK3CB_NAP_B_U_Officer_Uniform_WDL_GRN"]; 
		_backpackArray = ["UK3CB_B_Invisible", "UK3CB_B_O_Backpack_Radio_Chem_OLI"]; 
		_headgearArray = ["rhsgref_ssh68_vsr", "rhsgref_ssh68_ttsko_dark", "rhsgref_ssh68_ttsko_digi"]; 
		_faceGearArray = ["UK3CB_G_Balaclava_CHD", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Bandanna_green_check", "UK3CB_G_Face_Wrap_01", "G_Balaclava_blk", "G_Balaclava_oli"]; 
		_vestsArray = ["UK3CB_MD99_VEST_Net_Rifleman_KHK", "UK3CB_MD99_VEST_Net_Rifleman_Radio_KHK", "UK3CB_MD99_VEST_Rifleman_KHK", "UK3CB_MD99_VEST_Rifleman_Radio_KHK", "UK3CB_MD99_VEST_Net_Rifleman_OLI", "UK3CB_MD99_VEST_Net_Rifleman_Radio_OLI", "UK3CB_MD99_VEST_Rifleman_OLI", "UK3CB_MD99_VEST_Rifleman_Radio_OLI"]; 
		_weaponsArray = ["rhs_weap_ak74", "rhs_weap_aks74"]; 
		_weaponMagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
		_launchersArray = ["rhs_weap_rpg26"];
		_aceItems = ["ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_bodyBag","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","ACE_Clacker","ACE_morphine","ACE_personalAidKit","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ToolKit","ACE_tourniquet","ACE_wirecutter","CUP_PipeBomb_M","ItemGPS","ItemWatch","ItemCompass","ItemMap","Binocular","ACE_artilleryTable","ACE_RangeTable_82mm","ACE_ATragMX","ACE_Flashlight_MX991","ACE_RangeCard","ACE_MapTools","ACE_surgicalKit","ACE_UAVBattery","ACE_quikclot","ACE_DAGR"]; 
		_grenadesItems = ["rhs_mag_rdg2_white", "rhs_mag_f1", "rhs_mag_nspd", "ACE_Chemlight_White"];
		_radioItem = ["TFAR_anprc148jem"];
		_explosives = ["IEDUrbanBig_Remote_Mag", "IEDLandBig_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag"];

		_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _weaponMagazines + _aceItems + _launchersArray + _grenadesItems + _explosives + _radioItem;
		[_arsenal, _arsenalArray] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
}, {
	side player == independent
}, {}, [_arsenal], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActiontoObject;
*/


// PMC
_openArsenal = ["OpenArsenal", localize "STR_TAG_arsenal", "\a3\ui_f\data\igui\cfg\simpleTasks\types\rifle_ca.paa", {
		params ["_target", "_player", "_params"];
		_params params ["_arsenal"];
		_uniformsArray = ["UK3CB_LNM_B_U_CombatSmock_25", "UK3CB_LNM_B_U_CombatSmock_26", "UK3CB_LNM_B_U_CombatSmock_19", "UK3CB_LNM_B_U_CombatSmock_30", "UK3CB_LNM_B_U_CombatSmock_31", "UK3CB_LNM_B_U_CombatSmock_20", "UK3CB_LNM_B_U_CombatSmock_35", "UK3CB_LNM_B_U_CombatSmock_36", "UK3CB_LNM_B_U_CombatSmock_21", "UK3CB_LSM_B_U_CombatSmock_31"]; 
		_backpackArray = ["UK3CB_B_Invisible", "UK3CB_B_I_Backpack_Radio_Chem_OLI"]; 
		_headgearArray = ["UK3CB_H_Bandanna_WDL_01", "UK3CB_H_Bandanna_WDL_02", "UK3CB_H_Bandanna_WDL_03", "UK3CB_H_BoonieHat_WDL_01", "UK3CB_LNM_B_H_BoonieHat_WDL_01", "UK3CB_H_BoonieHat_WDL_02", "UK3CB_LNM_B_H_BoonieHat_WDL_02", "UK3CB_H_BoonieHat_WDL_03", "UK3CB_LNM_B_H_BoonieHat_WDL_03", "UK3CB_LSM_B_H_BoonieHat_WDL", "UK3CB_CW_US_B_LATE_H_BoonieHat_WDL_01", "UK3CB_CW_US_B_LATE_H_BoonieHat_WDL_02", "UK3CB_ANA_B_H_BoonieHat_WDL", "UK3CB_TKA_B_H_BoonieHat_WDL", "UK3CB_H_Cap_WDL_01", "UK3CB_H_Cap_WDL_02", "UK3CB_H_Cap_WDL_03", "UK3CB_H_MilCap_WDL_01", "UK3CB_H_MilCap_WDL_02", "UK3CB_H_MilCap_WDL_03", "UK3CB_ANA_B_H_Patrolcap_wdl", "UK3CB_TKA_B_H_Patrolcap_WDL", "UK3CB_CW_US_B_LATE_H_Patrol_Cap_WDL_01", "rhs_fieldcap_m88_woodland", "rhs_fieldcap_m88_woodland_back", "rhssaf_booniehat_woodland"]; 
		_faceGearArray = ["UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Bandanna_green_check", "UK3CB_G_Face_Wrap_01", "G_Balaclava_blk", "G_Balaclava_oli"]; 
		_vestsArray = ["UK3CB_V_Chestrig_WDL_02", "UK3CB_V_Chestrig_WDL_01"]; 
		_weaponsArray = ["rhs_weap_ak104", "rhs_weap_ak105"];
		_weaponMagazines = ["rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_545x39_7N10_AK"];
		_launchersArray = [];
		_aceItems = ["ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_bodyBag","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","ACE_Clacker","ACE_morphine","ACE_personalAidKit","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ToolKit","ACE_tourniquet","ACE_wirecutter","CUP_PipeBomb_M","ItemGPS","ItemWatch","ItemCompass","ItemMap","Binocular","ACE_artilleryTable","ACE_RangeTable_82mm","ACE_ATragMX","ACE_Flashlight_MX991","ACE_RangeCard","ACE_MapTools","ACE_surgicalKit","ACE_UAVBattery","ACE_quikclot","ACE_DAGR"]; 
		_grenadesItems = ["rhs_mag_rdg2_white", "rhs_mag_f1", "rhs_mag_nspd", "ACE_Chemlight_White"];
		_radioItem = ["TFAR_anprc148jem"];
		_explosives = ["IEDUrbanBig_Remote_Mag", "IEDLandBig_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag"];

		_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _weaponMagazines + _aceItems + _launchersArray + _grenadesItems + _explosives + _radioItem;
		[_arsenal, _arsenalArray] call ace_arsenal_fnc_addVirtualitems;
		[_arsenal, player] call ace_arsenal_fnc_openBox;
}, {
	side player == independent
}, {}, [_arsenal], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActiontoObject;


_openStorage = ["OpenStorage", localize "STR_TAG_storage", "\a3\ui_f\data\igui\cfg\simpleTasks\types\box_ca.paa", {
	lootBoxGUER setPos position player;
    player action ["Gear", lootBoxGUER];
}, {
    side player == independent
}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createaction;
[_arsenal, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActiontoObject;

// В магазин!
// _headgearArray = ["rhssaf_helmet_m97_woodland_black_ess_bare", "rhssaf_helmet_m97_woodland_black_ess", "rhssaf_helmet_m97_woodland", "rhsgref_helmet_pasgt_woodland_rhino", "rhsgref_helmet_pasgt_woodland", "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL", "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL", "UK3CB_ANA_B_H_6b27m_WDL", "UK3CB_ANA_B_H_6b27m_ESS_WDL"];
// _vestsArray = ["rhssaf_vest_md99_woodland", "rhssaf_vest_md99_woodland_radio", "rhssaf_vest_md99_woodland_rifleman", "rhssaf_vest_md99_woodland_rifleman_radio", "rhssaf_vest_md98_woodland", "rhssaf_vest_md98_rifleman"];
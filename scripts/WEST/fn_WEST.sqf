// WEST
params ["_unit"];
// _unit = _this select 0;

// Интендант
[_unit, _unit] call ace_common_fnc_claim;
_unit allowDamage false; 

// [_unit] call grad_moneymenu_fnc_setStorage;
/*
[_unit,"americanShop",lootBoxWEST,aHelipadWEST,localize "STR_TAG_militaryShop",localize "STR_TAG_militaryShop",{
	side player == west && typeOf player == "rhsusf_usmc_recon_marpat_wd_rifleman"
	}] call grad_lbm_fnc_addInteraction;

[_unit,"russianShop",lootBoxWEST,aHelipadWEST,localize "STR_TAG_militaryShop",localize "STR_TAG_militaryShop",{
	side player == west && typeOf player == "rhsgref_cdf_b_reg_rifleman"
	}] call grad_lbm_fnc_addInteraction;
*/

[_unit,"westShop",lootBoxWEST,aHelipadWEST,localize "STR_TAG_militaryShop",localize "STR_TAG_militaryShop",
	{
		side player == west
	}
] call grad_lbm_fnc_addInteraction;

_saveProgress = ["SaveProgress",localize "STR_TAG_saveProgress","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",{[true, 30, gradTriggerWEST] call grad_persistence_fnc_saveMission},{side player == west},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer",localize "STR_TAG_medicalAssistance","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{
	player playAction "Medic";
	[player] call ace_medical_treatment_fnc_fullHealLocal;
	},{
	side player == west
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy",localize "STR_TAG_deployToMHQ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	[teleportItemWEST, player] call HMG_fnc_teleportToMHQ;
	},{
		side player == west
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;

/*
_giveUSMCEquipment = ["USMCEquipment",localize "STR_TAG_getEquipment","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["rhs_uniform_FROG01_wd"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["rhsusf_mich_helmet_marpatwd", "rhsusf_mich_helmet_marpatwd_alt", "rhsusf_mich_helmet_marpatwd_alt_headset", "rhsusf_mich_helmet_marpatwd_headset", "rhsusf_mich_helmet_marpatwd_norotos", "rhsusf_mich_helmet_marpatwd_norotos_headset"];
	_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_Tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_Tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_Tan", "UK3CB_G_Tactical_Black"];
	_vestsArray = ["UK3CB_V_MBAV_LIGHT_OLI", "UK3CB_V_MBAV_MG_OLI", "UK3CB_V_MBAV_MEDIC_OLI", "UK3CB_V_MBAV_RIFLEMAN_OLI"];
	_weaponsArray = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d10_LMT_wd", "rhs_weap_hk416d145", "rhs_weap_hk416d145_wd", "rhs_weap_hk416d145_wd_2"];
	_radioItem = "TFAR_anprc152";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomFacegear = selectRandom _facegearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"rhsusf_acc_nt4_black","","optic_MRCO",[_weaponAmmo,30],[],""],["rhs_weap_M136","","","",[],[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_m67",1,1],["rhs_mag_an_m8hc",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,_randomFacegear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{
		side player == west && typeOf player == "rhsusf_usmc_recon_marpat_wd_rifleman"
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveUSMCEquipment] call ace_interact_menu_fnc_addActionToObject;
*/


_giveCDFEquipment = ["CDFEquipment",localize "STR_TAG_getEquipment","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_GAF_B_U_CombatSmock_01_DIGI"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["UK3CB_GAF_B_H_Beret_Army", "UK3CB_GAF_B_H_Off_Beret", "UK3CB_GAF_B_H_BoonieHat_DIGI", "UK3CB_GAF_B_H_Field_Cap_DIGI", "UK3CB_GAF_B_H_Patrol_Cap_DIGI"];
	_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_Tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_Tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_Tan", "UK3CB_G_Tactical_Black"];
	_vestsArray = ["UK3CB_V_Chestrig_TKA_OLI", "UK3CB_V_Chestrig_OLI"];
	_weaponsArray = ["rhs_weap_ak74m", "rhs_weap_ak74m_fullplum", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_desert"];
	_radioItem = "TFAR_anprc152";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomFacegear = selectRandom _facegearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"rhs_acc_ak5","","",[_weaponAmmo,30],[],""],["","","","",[],[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_m67",1,1],["rhs_mag_an_m8hc",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,_randomFacegear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{
		side player == west && typeOf player == "rhsgref_cdf_b_reg_rifleman"
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveCDFEquipment] call ace_interact_menu_fnc_addActionToObject;

/*
_giveMVDEquipment = ["MVDEquipment",localize "STR_TAG_getEquipment","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_CPD_B_U_CombatUniform_01_Grey", "UK3CB_CPD_B_U_CombatUniform_01_Urban"];
	_backpackArray = ["UK3CB_B_invisible"];
	_headgearArray = ["UK3CB_ANP_B_H_6b27m_ess_BLK", "UK3CB_ANP_B_H_6b27m_BLK"];
	_facegearArray = [];
	_vestsArray = ["UK3CB_CPD_B_V_6b23_ml_BLU", "UK3CB_CPD_B_V_6b23_ml_BLU_02"];
	_weaponsArray = ["rhs_weap_aks74n", "rhs_weap_aks74n_2"];
	_weaponmagazines = ["rhs_30Rnd_545x39_7N6M_AK"];
	_radioItem = "TFAR_anprc152";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomFacegear = selectRandom _facegearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"rhs_acc_dtk1983","","",[_weaponAmmo,30],[],""],["","","","",[],[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_m67",1,1],["rhs_mag_an_m8hc",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,_randomFacegear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{
		side player == west && typeOf player == "rhsgref_cdf_b_ngd_rifleman"
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveMVDEquipment] call ace_interact_menu_fnc_addActionToObject;
*/
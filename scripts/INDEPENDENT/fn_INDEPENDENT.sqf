// INDEPENDENT
params ["_unit"];
// _unit = _this select 0;

// Интендант
[_unit, _unit] call ace_common_fnc_claim;
_unit allowDamage false; 

// [_unit] call grad_moneymenu_fnc_setStorage;



// independentShop for future Use
[_unit,"independentShop",lootBoxGUER,aHelipadGUER,localize "STR_TAG_militaryShop",localize "STR_TAG_militaryShop",
	// Condition
	{
		side player == independent
	}
] call grad_lbm_fnc_addInteraction;
	

_saveProgress = ["SaveProgress",localize "STR_TAG_saveProgress","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",{[true, 30, gradTriggerGUER] call grad_persistence_fnc_saveMission},{side player == independent},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer",localize "STR_TAG_medicalAssistance","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{
	player playAction "Medic";
	[player] call ace_medical_treatment_fnc_fullHealLocal;
	},{
	side player == independent
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy",localize "STR_TAG_deployToMHQ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	[teleportItemGUER, player] execVM "scripts\fn_teleportToMHQ.sqf";
	},{
		side player == independent
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;

/*
// NAPA
_giveRecruitEquipment = ["RecruitEquipment","Получить базовую экипировку","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_NAP_B_U_CombatUniform_FLK", "UK3CB_NAP_B_U_CombatUniform_WDL", "UK3CB_NAP_B_U_Officer_Uniform_FLK_BLK", "UK3CB_NAP_B_U_Officer_Uniform_FLK_GRN", "UK3CB_NAP_B_U_Officer_Uniform_GRN_BLK", "UK3CB_NAP_B_U_Officer_Uniform_GRN", "UK3CB_NAP_B_U_Officer_Uniform_WDL_BLK", "UK3CB_NAP_B_U_Officer_Uniform_WDL_GRN"]; 
	_backpackArray = ["UK3CB_B_Invisible"]; 
	_headgearArray = ["rhsgref_ssh68_vsr", "rhsgref_ssh68_ttsko_dark", "rhsgref_ssh68_ttsko_digi"]; 
	_vestsArray = ["UK3CB_MD99_VEST_Net_Rifleman_KHK", "UK3CB_MD99_VEST_Net_Rifleman_Radio_KHK", "UK3CB_MD99_VEST_Rifleman_KHK", "UK3CB_MD99_VEST_Rifleman_Radio_KHK", "UK3CB_MD99_VEST_Net_Rifleman_OLI", "UK3CB_MD99_VEST_Net_Rifleman_Radio_OLI", "UK3CB_MD99_VEST_Rifleman_OLI", "UK3CB_MD99_VEST_Rifleman_Radio_OLI"]; 
	_weaponsArray = ["rhs_weap_ak74", "rhs_weap_aks74"]; 
	_radioItem = "TFAR_anprc148jem"; 
	_randomUniform = selectRandom _uniformsArray; 
	_randomBackpack = selectRandom _backpackArray; 
	_randomHeadgear = selectRandom _headgearArray; 
	_randomVest = selectRandom _vestsArray; 
	_randomWeapon = selectRandom _weaponsArray; 
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines"); 
	_weaponAmmo = _weaponMagazines select 0; 
	_defaultPreset = [[_randomWeapon,"rhs_acc_dtk1983","","",[_weaponAmmo,30],[],""],["","","","","",[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_f1",1,1],["rhs_mag_rdg2_white",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,"",["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]]; 
	player setUnitLoadout _defaultPreset;
	},{side player == independent},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveRecruitEquipment] call ace_interact_menu_fnc_addActionToObject;
*/

// PMC
_giveRecruitEquipment = ["RecruitEquipment","Получить базовую экипировку","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_LNM_B_U_CombatSmock_25", "UK3CB_LNM_B_U_CombatSmock_26", "UK3CB_LNM_B_U_CombatSmock_19", "UK3CB_LNM_B_U_CombatSmock_30", "UK3CB_LNM_B_U_CombatSmock_31", "UK3CB_LNM_B_U_CombatSmock_20", "UK3CB_LNM_B_U_CombatSmock_35", "UK3CB_LNM_B_U_CombatSmock_36", "UK3CB_LNM_B_U_CombatSmock_21", "UK3CB_LSM_B_U_CombatSmock_31"]; 
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["UK3CB_H_Bandanna_WDL_01", "UK3CB_H_Bandanna_WDL_02", "UK3CB_H_Bandanna_WDL_03", "UK3CB_H_BoonieHat_WDL_01", "UK3CB_LNM_B_H_BoonieHat_WDL_01", "UK3CB_H_BoonieHat_WDL_02", "UK3CB_LNM_B_H_BoonieHat_WDL_02", "UK3CB_H_BoonieHat_WDL_03", "UK3CB_LNM_B_H_BoonieHat_WDL_03", "UK3CB_LSM_B_H_BoonieHat_WDL", "UK3CB_CW_US_B_LATE_H_BoonieHat_WDL_01", "UK3CB_CW_US_B_LATE_H_BoonieHat_WDL_02", "UK3CB_ANA_B_H_BoonieHat_WDL", "UK3CB_TKA_B_H_BoonieHat_WDL", "UK3CB_H_Cap_WDL_01", "UK3CB_H_Cap_WDL_02", "UK3CB_H_Cap_WDL_03", "UK3CB_H_MilCap_WDL_01", "UK3CB_H_MilCap_WDL_02", "UK3CB_H_MilCap_WDL_03", "UK3CB_ANA_B_H_Patrolcap_wdl", "UK3CB_TKA_B_H_Patrolcap_WDL", "UK3CB_CW_US_B_LATE_H_Patrol_Cap_WDL_01", "rhs_fieldcap_m88_woodland", "rhs_fieldcap_m88_woodland_back", "rhssaf_booniehat_woodland"]; 
	_vestsArray = ["UK3CB_V_Chestrig_WDL_02", "UK3CB_V_Chestrig_WDL_01"]; 
	_weaponsArray = ["rhs_weap_ak104", "rhs_weap_ak105"]; 
	_radioItem = "TFAR_anprc148jem"; 
	_randomUniform = selectRandom _uniformsArray; 
	_randomBackpack = selectRandom _backpackArray; 
	_randomHeadgear = selectRandom _headgearArray; 
	_randomVest = selectRandom _vestsArray; 
	_randomWeapon = selectRandom _weaponsArray; 
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines"); 
	_weaponAmmo = _weaponMagazines select 0; 
	_defaultPreset = [[_randomWeapon,"rhs_acc_ak5","","",[_weaponAmmo,30],[],""],["","","","","",[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_f1",1,1],["rhs_mag_rdg2_white",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,"",["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]]; 
	player setUnitLoadout _defaultPreset;
	},{side player == independent},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveRecruitEquipment] call ace_interact_menu_fnc_addActionToObject;

_giveCivilianEquipment = ["CivilianEquipment","Получить гражданскую одежду","\a3\ui_f\data\igui\cfg\simpletasks\types\Container_ca.paa",{
	_uniformsArray = ["UK3CB_CHC_C_U_HIKER_03", "UK3CB_CHC_C_U_HIKER_04", "UK3CB_CHC_C_U_HIKER_02", "UK3CB_CHC_C_U_HIKER_01", "UK3CB_CHC_C_U_CIT_05", "UK3CB_CHC_C_U_CIT_01", "UK3CB_CHC_C_U_CIT_04", "UK3CB_CHC_C_U_CIT_02", "UK3CB_CHC_C_U_CIT_03", "UK3CB_CHC_C_U_ACTIVIST_03", "UK3CB_CHC_C_U_ACTIVIST_01", "UK3CB_CHC_C_U_ACTIVIST_04", "UK3CB_CHC_C_U_ACTIVIST_02", "UK3CB_CHC_C_U_CAN_01", "UK3CB_CHC_C_U_COACH_04", "UK3CB_CHC_C_U_COACH_01", "UK3CB_CHC_C_U_COACH_03", "UK3CB_CHC_C_U_COACH_05", "UK3CB_CHC_C_U_COACH_02", "UK3CB_CHC_C_U_WORK_03", "UK3CB_CHC_C_U_WORK_04", "UK3CB_NAP_B_U_WORK_01", "UK3CB_CHC_C_U_WORK_02", "UK3CB_CHC_C_U_WORK_01", "UK3CB_CHC_C_U_PROF_04", "UK3CB_CHC_C_U_PROF_03", "UK3CB_CHC_C_U_PROF_01", "UK3CB_CHC_C_U_PROF_02", "UK3CB_ADC_C_U_Pilot_02", "UK3CB_ADC_C_Hunter_U_07", "UK3CB_ADC_C_Hunter_U_09", "UK3CB_ADC_C_Hunter_U_08", "UK3CB_ADC_C_Hunter_U_06", "UK3CB_CHC_C_U_Overall_01", "UK3CB_CHC_C_U_Overall_02", "UK3CB_CHC_C_U_Overall_05", "UK3CB_CHC_C_U_Overall_04", "UK3CB_CHC_C_U_Overall_03", "UK3CB_CHC_C_U_Pilot_03", "UK3CB_CHC_C_U_Pilot_01", "UK3CB_CHC_C_U_Pilot_02", "UK3CB_CHC_C_U_VILL_01", "UK3CB_CHC_C_U_VILL_03", "UK3CB_CHC_C_U_VILL_04", "UK3CB_CHC_C_U_VILL_02", "UK3CB_CHC_C_U_WOOD_01", "UK3CB_CHC_C_U_WOOD_02", "UK3CB_ADC_C_Shorts_U_02", "UK3CB_ADC_C_Shorts_U_03", "UK3CB_ADC_C_Shorts_U_06", "UK3CB_ADC_C_Shorts_U_04", "UK3CB_ADC_C_Shorts_U_01", "UK3CB_ADC_C_Shorts_U_05"]; 
	_headgearsArray = ["H_Cap_tan", "H_Cap_red", "H_Cap_surfer", "H_Cap_blu", "H_StrawHat", "H_StrawHat_dark", "UK3CB_H_Woolhat_BLK", "UK3CB_H_Beanie_02_BLK", "UK3CB_H_Woolhat_BLU", "UK3CB_H_Beanie_02_BRN", "UK3CB_H_Woolhat_CBR", "UK3CB_H_Woolhat_GRN", "UK3CB_H_Beanie_02_GRY", "UK3CB_H_Woolhat_KHK", "UK3CB_CHC_C_H_Can_Cap", "UK3CB_H_Profiteer_Cap_01", "UK3CB_H_Safari_Hat_Brown", "UK3CB_H_Ushanka_Cap_01", "UK3CB_H_Villager_Cap_01", "UK3CB_H_WideBrim_Hat", "UK3CB_H_Worker_Cap_01", "rhs_ushanka"]; 
	_randomUniform = selectRandom _uniformsArray;
	_randomHeadgear = selectRandom _headgearsArray;
	_radioItem = "TFAR_anprc148jem";
	_civillianPreset = [[],[],[],[_randomUniform,[]],[],[],_randomHeadgear,"",[],["ItemMap","ItemGPS",_radioItem,"ItemCompass","ItemWatch",""]]; 
	player setUnitLoadout _civillianPreset;
	},{
		side player == independent
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveCivilianEquipment] call ace_interact_menu_fnc_addActionToObject;
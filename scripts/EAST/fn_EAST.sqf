// WEST
params ["_unit"];
// _unit = _this select 0;

// Интендант
[_unit, _unit] call ace_common_fnc_claim;
_unit allowDamage false; 

// [_unit] call grad_moneymenu_fnc_setStorage;


[_unit,"eastShop",lootBoxEAST,aHelipadEAST,localize "STR_TAG_militaryShop",localize "STR_TAG_militaryShop",{
	side player == east
	}] call grad_lbm_fnc_addInteraction;

_saveProgress = ["SaveProgress",localize "STR_TAG_saveProgress","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",{[true, 30, gradTriggerEAST] call grad_persistence_fnc_saveMission},{side player == east},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer",localize "STR_TAG_medicalAssistance","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{
	player playAction "Medic";
	[player] call ace_medical_treatment_fnc_fullHealLocal;
	},{
	side player == east
	},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[_unit, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy",localize "STR_TAG_deployToMHQ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	[teleportItemEAST, player] call HMG_fnc_teleportToMHQ;
	},{
		side player == east
		},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;

/*
_giveRecruitEquipment = ["RecruitEquipment","Получить базовую экипировку","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_CHD_B_U_H_Pilot_Uniform_03", "UK3CB_CHD_B_U_CombatUniform_04", "UK3CB_CHD_B_U_CombatUniform_07", "UK3CB_CHD_B_U_H_Pilot_Uniform_02", "UK3CB_CHD_B_U_H_Pilot_Uniform_01"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["UK3CB_TKP_I_H_SSh68_BLK", "UK3CB_TKA_I_H_SSh68_Oli", "UK3CB_LSM_B_H_SSh68_OLI"];
	_facegearArray = ["UK3CB_G_Balaclava_CHD", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Bandanna_green_check", "UK3CB_G_Face_Wrap_01", "G_Balaclava_oli", "G_Balaclava_blk"];
	_vestsArray = ["rhs_6b2_chicom"];
	_weaponsArray = ["rhs_weap_akm", "rhs_weap_akms"];
	_radioItem = "TFAR_fadak";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomFacegear = selectRandom _facegearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"","","",[_weaponAmmo,30],[],""],["","","","","",[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_f1",1,1],["rhs_mag_rdg2_white",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,_randomFacegear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{side player == east},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveRecruitEquipment] call ace_interact_menu_fnc_addActionToObject;
*/

// New ChDKZ
_giveRecruitEquipment = ["RecruitEquipment","Получить базовую экипировку","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_LSM_B_U_CombatSmock_13", "UK3CB_LSM_B_U_CombatSmock_16", "UK3CB_LSM_B_U_CombatSmock_17", "UK3CB_LSM_B_U_CombatSmock_15", "UK3CB_LSM_B_U_CombatSmock_14", "UK3CB_LSM_B_U_Crew_CombatSmock_10", "UK3CB_LSM_B_U_CombatSmock_09", "UK3CB_LSM_B_U_Crew_CombatSmock_04"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["UK3CB_LSM_B_H_BoonieHat_PART", "UK3CB_LSM_B_H_Field_Cap_PART", "UK3CB_LSM_B_H_M88_Field_Cap_PART"];
	_facegearArray = ["UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Bandanna_green_check", "UK3CB_G_Face_Wrap_01"];
	_vestsArray = ["UK3CB_V_Chestrig_OLI", "UK3CB_V_Chestrig_TKA_OLI"];
	_weaponsArray = ["rhs_weap_akmn"];
	_radioItem = "TFAR_fadak";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomFacegear = selectRandom _facegearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"rhs_acc_dtkakm","","",[_weaponAmmo,30],[],""],["","","","","",[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_f1",1,1],["rhs_mag_rdg2_white",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,_randomFacegear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{side player == east},{},[_unit],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"], _giveRecruitEquipment] call ace_interact_menu_fnc_addActionToObject;

/*
_uniformsArray = ["UK3CB_LSM_B_U_CombatSmock_13", "UK3CB_LSM_B_U_CombatSmock_16", "UK3CB_LSM_B_U_CombatSmock_17", "UK3CB_LSM_B_U_CombatSmock_15", "UK3CB_LSM_B_U_CombatSmock_14", "UK3CB_LSM_B_U_Crew_CombatSmock_10", "UK3CB_LSM_B_U_CombatSmock_09", "UK3CB_LSM_B_U_Crew_CombatSmock_04"];
_headgearArray = ["UK3CB_LSM_B_H_BoonieHat_PART", "UK3CB_LSM_B_H_Field_Cap_PART", "UK3CB_LSM_B_H_M88_Field_Cap_PART"];
_vestsArray = ["UK3CB_V_Chestrig_OLI", "UK3CB_V_Chestrig_TKA_OLI"];
*/
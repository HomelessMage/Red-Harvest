// OPFOR



// Интендант
[this, this] call ace_common_fnc_claim;
this allowDamage false; 

[this] call grad_moneymenu_fnc_setStorage;

[this,"russianShop",lootBoxEAST,aHelipadEAST,"[ЧДКЗ] Военная барахолка","[ЧДКЗ] Военная барахолка",{side player == EAST}] call grad_lbm_fnc_addInteraction;

_saveProgress = ["SaveProgress","Сохранить прогресс","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",{
	[true, 30, gradTriggerEAST] call grad_persistence_fnc_saveMission
	},{
		side player == east
		},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[this, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer","Получить медицинскую помощь","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{
	[player] call ace_medical_treatment_fnc_fullHealLocal
	},{
		side player == east
		},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[this, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy","Высадка на КШМ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	// waitUntil {teleportItemEAST};
	player moveInCargo teleportItemEAST
	},{
		side player == east
		},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;

_giveRecruitEquipment = ["RecruitEquipment","Получить базовую экипировку","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_CHD_B_U_H_Pilot_Uniform_03", "UK3CB_CHD_B_U_CombatUniform_04", "UK3CB_CHD_B_U_CombatUniform_07", "UK3CB_CHD_B_U_H_Pilot_Uniform_02", "UK3CB_CHD_B_U_H_Pilot_Uniform_01"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["UK3CB_TKP_I_H_SSh68_BLK", "UK3CB_TKA_I_H_SSh68_Oli", "UK3CB_LSM_B_H_SSh68_OLI"];
	_vestsArray = ["rhs_6b2_chicom"];
	_weaponsArray = ["rhs_weap_akm", "rhs_weap_akms"];
	_radioItem = "tf_fadak";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"","","",[_weaponAmmo,30],[],""],["","","","","",[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_f1",1,1],["rhs_mag_rdg2_white",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,"",["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{side player == east},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _giveRecruitEquipment] call ace_interact_menu_fnc_addActionToObject;

_giveCivilianEquipment = ["CivilianEquipment","Получить гражданскую одежду","\a3\ui_f\data\igui\cfg\simpletasks\types\Container_ca.paa",{
		_uniformsArray = ["UK3CB_CHC_C_U_HIKER_03", "UK3CB_CHC_C_U_HIKER_04", "UK3CB_CHC_C_U_HIKER_02", "UK3CB_CHC_C_U_HIKER_01", "UK3CB_CHC_C_U_CIT_05", "UK3CB_CHC_C_U_CIT_01", "UK3CB_CHC_C_U_CIT_04", "UK3CB_CHC_C_U_CIT_02", "UK3CB_CHC_C_U_CIT_03", "UK3CB_CHC_C_U_ACTIVIST_03", "UK3CB_CHC_C_U_ACTIVIST_01", "UK3CB_CHC_C_U_ACTIVIST_04", "UK3CB_CHC_C_U_ACTIVIST_02", "UK3CB_CHC_C_U_CAN_01", "UK3CB_CHC_C_U_COACH_04", "UK3CB_CHC_C_U_COACH_01", "UK3CB_CHC_C_U_COACH_03", "UK3CB_CHC_C_U_COACH_05", "UK3CB_CHC_C_U_COACH_02", "UK3CB_CHC_C_U_WORK_03", "UK3CB_CHC_C_U_WORK_04", "UK3CB_NAP_B_U_WORK_01", "UK3CB_CHC_C_U_WORK_02", "UK3CB_CHC_C_U_WORK_01", "UK3CB_CHC_C_U_PROF_04", "UK3CB_CHC_C_U_PROF_03", "UK3CB_CHC_C_U_PROF_01", "UK3CB_CHC_C_U_PROF_02", "UK3CB_ADC_C_U_Pilot_02", "UK3CB_ADC_C_Hunter_U_07", "UK3CB_ADC_C_Hunter_U_09", "UK3CB_ADC_C_Hunter_U_08", "UK3CB_ADC_C_Hunter_U_06", "UK3CB_CHC_C_U_Overall_01", "UK3CB_CHC_C_U_Overall_02", "UK3CB_CHC_C_U_Overall_05", "UK3CB_CHC_C_U_Overall_04", "UK3CB_CHC_C_U_Overall_03", "UK3CB_CHC_C_U_Pilot_03", "UK3CB_CHC_C_U_Pilot_01", "UK3CB_CHC_C_U_Pilot_02", "UK3CB_CHC_C_U_VILL_01", "UK3CB_CHC_C_U_VILL_03", "UK3CB_CHC_C_U_VILL_04", "UK3CB_CHC_C_U_VILL_02", "UK3CB_CHC_C_U_WOOD_01", "UK3CB_CHC_C_U_WOOD_02", "UK3CB_ADC_C_Shorts_U_02", "UK3CB_ADC_C_Shorts_U_03", "UK3CB_ADC_C_Shorts_U_06", "UK3CB_ADC_C_Shorts_U_04", "UK3CB_ADC_C_Shorts_U_01", "UK3CB_ADC_C_Shorts_U_05"];
		_headgearsArray = ["H_Cap_tan", "H_Cap_red", "H_Cap_surfer", "H_Cap_blu", "H_StrawHat", "H_StrawHat_dark", "UK3CB_H_Woolhat_BLK", "UK3CB_H_Beanie_02_BLK", "UK3CB_H_Woolhat_BLU", "UK3CB_H_Beanie_02_BRN", "UK3CB_H_Woolhat_CBR", "UK3CB_H_Woolhat_GRN", "UK3CB_H_Beanie_02_GRY", "UK3CB_H_Woolhat_KHK", "UK3CB_CHC_C_H_Can_Cap", "UK3CB_H_Profiteer_Cap_01", "UK3CB_H_Safari_Hat_Brown", "UK3CB_H_Ushanka_Cap_01", "UK3CB_H_Villager_Cap_01", "UK3CB_H_WideBrim_Hat", "UK3CB_H_Worker_Cap_01", "rhs_ushanka"];
		_randomUniform = selectRandom _uniformsArray;
		_randomHeadgear = selectRandom _headgearsArray;
		_radioItem = "tf_fadak";
		_civillianPreset = [[],[],[],[_randomUniform,[]],[],[],_randomHeadgear,"",[],["ItemMap","ItemGPS",_radioItem,"ItemCompass","ItemWatch",""]];
		player setUnitLoadout _civillianPreset;
	},{
		side player == east
		},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _giveCivilianEquipment] call ace_interact_menu_fnc_addActionToObject;




// Мусорка
_openTrashBin = ["OpenStorage","Мусорный бак","\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",{ 
 trashBinEAST setpos position (_this select 1); 
 (_this select 1) action ["Gear", trashBinEAST]; 
 },{side player == east},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _openTrashBin] call ace_interact_menu_fnc_addActionToObject; 

_removeTrashFromBin = ["RestoreEquipment","Уничтожить мусор в баке","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
 clearMagazineCargoGlobal trashBinEAST; 
 clearWeaponCargoGlobal trashBinEAST; 
 clearItemCargoGlobal trashBinEAST; 
 hintSilent "Мусорный бак очищен!"; 
 },{side player == east},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _removeTrashFromBin] call ace_interact_menu_fnc_addActionToObject; 
 
_removeTrash = ["RemoveTrash","Уничтожить мусор на базе","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
  _radius = 1000; 
  _trashArray = gradTriggerEAST nearObjects ["GroundWeaponHolder", _radius]; 
  for "_i" from 0 to count _trashArray - 1 do { 
    deleteVehicle (_trashArray select _i); 
  }; 
  hintSilent "Мусор на базе удалён!"; 
},{side player == east}] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _removeTrash] call ace_interact_menu_fnc_addActionToObject; 
 
_restoreEquipment = ["RestoreEquipment","Сбросить экипировку","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
 player setUnitLoadout (player getVariable "loadout"); 
 hintSilent "Экипировка сброшена!"; 
 },{side player == east},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _restoreEquipment] call ace_interact_menu_fnc_addActionToObject;




// Арсенал
vehicle this lockInventory true; 
[this, this] call ace_common_fnc_claim; 
this allowDamage false;

_openArsenal = ["OpenArsenal","Арсенал","\a3\ui_f\data\igui\cfg\simpletasks\types\rifle_ca.paa",{ 
	_uniformsArray = ["UK3CB_CHD_B_U_H_Pilot_Uniform_03", "UK3CB_CHD_B_U_CombatUniform_04", "UK3CB_CHD_B_U_CombatUniform_07", "UK3CB_CHD_B_U_H_Pilot_Uniform_02", "UK3CB_CHD_B_U_H_Pilot_Uniform_01"];
	_backpackArray = ["UK3CB_B_Invisible", "UK3CB_ION_O_B_RadioBag_OLI"];
	_headgearArray = ["UK3CB_TKP_I_H_SSh68_BLK", "UK3CB_TKA_I_H_SSh68_Oli", "UK3CB_LSM_B_H_SSh68_OLI", "UK3CB_H_Beanie_02_Camo", "UK3CB_H_Beanie_02_BLK", "UK3CB_H_Beanie_02_GRY", "UK3CB_LSM_B_H_Field_Cap_BLK", "UK3CB_LSM_B_H_Field_Cap_KHK", "UK3CB_LSM_B_H_Field_Cap_OLI", "UK3CB_LSM_B_H_Field_Cap_PART"];
	_faceGearArray = ["UK3CB_G_Balaclava_CHD", "UK3CB_G_Bandanna_flora_alt", "UK3CB_G_Bandanna_green_check", "UK3CB_G_Face_Wrap_01", "G_Balaclava_blk", "G_Balaclava_oli"];
	_vestsArray = ["rhs_6b2_chicom"];
	_weaponsArray = ["rhs_weap_akm", "rhs_weap_akms", "rhs_weap_rpg18"];
	_weaponMagazines = ["rhs_30Rnd_762x39mm_bakelite"];
	_aceItems = ["ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_bodyBag","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","ACE_Clacker","ACE_morphine","ACE_personalAidKit","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ToolKit","ACE_tourniquet","ACE_wirecutter","CUP_PipeBomb_M","ItemGPS","ItemWatch","ItemCompass","ItemMap","Binocular","ACE_artilleryTable","ACE_RangeTable_82mm","ACE_ATragMX","ACE_Flashlight_MX991","ACE_RangeCard","ACE_MapTools","ACE_surgicalKit","ACE_UAVBattery","ACE_quikclot","ACE_DAGR"];
	_grenadesItems = ["rhs_mag_rdg2_white", "rhs_mag_f1", "rhs_mag_nspd", "ACE_Chemlight_White"];
	_radioItem = ["tf_fadak"];
	_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _weaponMagazines + _aceItems + _grenadesItems + _radioItem;
 [this, _arsenalArray] call ace_arsenal_fnc_addVirtualItems; 
 [this, player] call ace_arsenal_fnc_openBox; 
 },{ 
  side player == east 
  },{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActionToObject; 
 
 _openStorage = ["OpenStorage","Склад","\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",{ 
 lootBoxEAST setpos position (_this select 1); 
 (_this select 1) action ["Gear", lootBoxEAST] 
 },{ 
  side player == east 
  },{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActionToObject;
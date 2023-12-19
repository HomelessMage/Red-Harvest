// OPFOR



// Интендант
[this, this] call ace_common_fnc_claim;
this allowDamage false; 

[this] call grad_moneymenu_fnc_setStorage;

[this,"americanShop",lootBoxWEST,aHelipadWEST,"[USMC] Military Shop","[USMC] Military Shop",{side player == WEST}] call grad_lbm_fnc_addInteraction;

[this,"russianShop",lootBoxWEST,aHelipadWEST,"[ЧСО] Военная барахолка","[ЧСО] Военная барахолка",{side player == WEST}] call grad_lbm_fnc_addInteraction;

_saveProgress = ["SaveProgress","Save progress","\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_saveas_ca.paa",{[true, 30, gradTriggerWEST] call grad_persistence_fnc_saveMission},{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[this, 0, ["ACE_MainActions"], _saveProgress] call ace_interact_menu_fnc_addActionToObject; 
 
_healPlayer = ["HealPlayer","Get medical assistance","\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa",{[player] call ace_medical_treatment_fnc_fullHealLocal},{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;  
[this, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;

_deployToMHQ = ["MHQDeploy","Deploy to MHQ","\a3\ui_f\data\igui\cfg\simpletasks\types\car_ca.paa",{
	player moveInCargo teleportItemWEST;
	},{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _deployToMHQ] call ace_interact_menu_fnc_addActionToObject;

_giveUSMCEquipment = ["USMCEquipment","[USMC] Get basic equipment","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["rhs_uniform_FROG01_wd"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["rhsusf_mich_helmet_marpatwd", "rhsusf_mich_helmet_marpatwd_alt", "rhsusf_mich_helmet_marpatwd_alt_headset", "rhsusf_mich_helmet_marpatwd_headset", "rhsusf_mich_helmet_marpatwd_norotos", "rhsusf_mich_helmet_marpatwd_norotos_headset"];
	_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_Tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_Tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_Tan", "UK3CB_G_Tactical_Black"];
	_vestsArray = ["UK3CB_V_MBAV_LIGHT_OLI", "UK3CB_V_MBAV_MG_OLI", "UK3CB_V_MBAV_MEDIC_OLI", "UK3CB_V_MBAV_RIFLEMAN_OLI"];
	_weaponsArray = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d10_LMT_wd", "rhs_weap_hk416d145", "rhs_weap_hk416d145_wd", "rhs_weap_hk416d145_wd_2"];
	_radioItem = "tf_anprc152";
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
	},{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _giveUSMCEquipment] call ace_interact_menu_fnc_addActionToObject;

_giveCDFEquipment = ["CDFEquipment","[ЧСО ]Получить базовое снаряжение","\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",{
	_uniformsArray = ["UK3CB_GAF_B_U_CombatSmock_01_DIGI"];
	_backpackArray = ["UK3CB_B_Invisible"];
	_headgearArray = ["UK3CB_GAF_B_H_6b27m_GRN", "UK3CB_GAF_B_H_6b27m_ESS_GRN", "UK3CB_GAF_B_H_6b27m_DIGI_NOFLAG", "UK3CB_GAF_B_H_6b27m_ESS_DIGI_NOFLAG"];
	_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_Tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_Tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_Tan", "UK3CB_G_Tactical_Black"];
	_vestsArray = ["UK3CB_GAF_B_MBAV_LIGHT_DIGI_OLI", "UK3CB_GAF_B_MBAV_LIGHT_DIGI", "UK3CB_GAF_B_MBAV_MG_DIGI_OLI_01", "UK3CB_GAF_B_MBAV_MG_DIGI_01", "UK3CB_GAF_B_MBAV_MEDIC_DIGI_OLI_01", "UK3CB_GAF_B_MBAV_MEDIC_DIGI_01", "UK3CB_GAF_B_MBAV_MEDIC_OLI_01", "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI_OLI", "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI"];
	_weaponsArray = ["rhs_weap_ak74m_npz", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74m_fullplum_npz"];
	_radioItem = "tf_anprc152";
	_randomUniform = selectRandom _uniformsArray;
	_randomBackpack = selectRandom _backpackArray;
	_randomHeadgear = selectRandom _headgearArray;
	_randomFacegear = selectRandom _facegearArray;
	_randomVest = selectRandom _vestsArray;
	_randomWeapon = selectRandom _weaponsArray;
	_weaponMagazines = getArray (configFile >> "CfgWeapons" >> _randomWeapon >> "magazines");
	_weaponAmmo = _weaponMagazines select 0;
	_defaultPreset = [[_randomWeapon,"rhs_acc_dtk4short","","optic_MRCO",[_weaponAmmo,30],[],""],["rhs_weap_rshg2","","","",[],[],""],[],[_randomUniform,[["ACE_EarPlugs",1]]],[_randomVest,[["rhs_mag_m67",1,1],["rhs_mag_an_m8hc",3,1],[_weaponAmmo,20,35]]],[_randomBackpack,[["ACE_splint",4],["ACE_bloodIV",5],["ACE_bloodIV_250",5],["ACE_bloodIV_500",5],["ACE_EntrenchingTool",1],["ACE_morphine",10],["ACE_tourniquet",8],["ACE_fieldDressing",15],["ACE_epinephrine",5],["ToolKit",1],["ACE_DefusalKit",1],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_surgicalKit",1]]],_randomHeadgear,_randomFacegear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS",_radioItem,"ItemCompass","TFAR_microdagr",""]];
	player setUnitLoadout _defaultPreset;
	},{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _giveCDFEquipment] call ace_interact_menu_fnc_addActionToObject;




// Мусорка
_openTrashBin = ["OpenStorage","Trashbin","\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",{ 
 trashBinWEST setpos position (_this select 1); 
 (_this select 1) action ["Gear", trashBinWEST]; 
 },{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _openTrashBin] call ace_interact_menu_fnc_addActionToObject; 

_removeTrashFromBin = ["RestoreEquipment","Destroy trash in trashbin","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
	clearMagazineCargoGlobal trashBinWEST; 
	clearWeaponCargoGlobal trashBinWEST; 
	clearItemCargoGlobal trashBinWEST; 
	hintSilent "Trashbin cleared!";
 },{
	side player == west
	},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _removeTrashFromBin] call ace_interact_menu_fnc_addActionToObject; 
 
_removeTrash = ["RemoveTrash","Destroy trash at base","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
  _radius = 1000; 
  _trashArray = gradTriggerWEST nearObjects ["GroundWeaponHolder", _radius]; 
  for "_i" from 0 to count _trashArray - 1 do { 
    deleteVehicle (_trashArray select _i); 
  }; 
  hintSilent "Trash at base deleted!"; 
},{side player == west}] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _removeTrash] call ace_interact_menu_fnc_addActionToObject; 
 
_restoreEquipment = ["RestoreEquipment","Reset equipment to default","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
 player setUnitLoadout (player getVariable "loadout"); 
 hintSilent "Equipment reset!"; 
 },{side player == west},{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _restoreEquipment] call ace_interact_menu_fnc_addActionToObject;





// Арсенал
vehicle this lockInventory true; 
[this, this] call ace_common_fnc_claim; 
this allowDamage false;

_openArsenal = ["OpenArsenal","Arsenal","\a3\ui_f\data\igui\cfg\simpletasks\types\rifle_ca.paa",{ 
	_uniformsArray = ["rhs_uniform_FROG01_wd", "UK3CB_GAF_B_U_CombatSmock_01_DIGI"];
	_backpackArray = ["UK3CB_B_Invisible", "UK3CB_ION_B_B_RadioBag_OLI", "B_UGV_02_Demining_backpack_F", "B_UAV_01_backpack_F"];
	_headgearArray = ["rhsusf_mich_helmet_marpatwd", "rhsusf_mich_helmet_marpatwd_alt", "rhsusf_mich_helmet_marpatwd_alt_headset", "rhsusf_mich_helmet_marpatwd_headset", "rhsusf_mich_helmet_marpatwd_norotos", "rhsusf_mich_helmet_marpatwd_norotos_headset", "rhs_booniehat2_marpatwd", "UK3CB_H_MilCap_MAR", "UK3CB_H_Cap_MAR", "UK3CB_H_BoonieHat_MAR", "UK3CB_H_Bandanna_MAR", "UK3CB_GAF_B_H_6b27m_GRN", "UK3CB_GAF_B_H_6b27m_ESS_GRN", "UK3CB_GAF_B_H_6b27m_DIGI_NOFLAG", "UK3CB_GAF_B_H_6b27m_ESS_DIGI_NOFLAG"];
	_facegearArray = ["UK3CB_G_Tactical_Black_Shemagh_Green", "UK3CB_G_Tactical_Black_Shemagh_Tan", "UK3CB_G_Tactical_Clear_Shemagh_Green", "UK3CB_G_Tactical_Clear_Shemagh_Tan", "UK3CB_G_Ballistic_Black_Shemagh_Green", "UK3CB_G_Ballistic_Black_Shemagh_Tan", "UK3CB_G_Tactical_Black"];
	_vestsArray = ["UK3CB_V_MBAV_LIGHT_OLI", "UK3CB_V_MBAV_MG_OLI", "UK3CB_V_MBAV_MEDIC_OLI", "UK3CB_V_MBAV_RIFLEMAN_OLI", "UK3CB_GAF_B_MBAV_LIGHT_DIGI_OLI", "UK3CB_GAF_B_MBAV_LIGHT_DIGI", "UK3CB_GAF_B_MBAV_MG_DIGI_OLI_01", "UK3CB_GAF_B_MBAV_MG_DIGI_01", "UK3CB_GAF_B_MBAV_MEDIC_DIGI_OLI_01", "UK3CB_GAF_B_MBAV_MEDIC_DIGI_01", "UK3CB_GAF_B_MBAV_MEDIC_OLI_01", "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI_OLI", "UK3CB_GAF_B_MBAV_RIFLEMAN_DIGI"];
	_weaponsArray = ["rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d10_LMT_wd", "rhs_weap_hk416d145", "rhs_weap_hk416d145_wd", "rhs_weap_hk416d145_wd_2", "rhs_weap_ak74m_npz", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74m_fullplum_npz"];
	_launchersArray = ["rhs_weap_M136", "rhs_weap_fgm148", "rhs_weap_fim92"];
	_attachmentsArray = ["rhsusf_acc_nt4_black", "optic_MRCO", "B_UavTerminal"];
	_weaponMagazines = ["rhs_mag_30Rnd_556x45_M855_PMAG", "rhs_30Rnd_545x39_7N22_plum_AK", "rhs_fgm148_magazine_AT", "rhs_fim92_mag"];
	_aceItems = ["ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_CableTie","ACE_bodyBag","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","ACE_Clacker","ACE_morphine","ACE_personalAidKit","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ToolKit","ACE_tourniquet","ACE_wirecutter","CUP_PipeBomb_M","ItemGPS","ItemWatch","ItemCompass","ItemMap","Binocular","ACE_artilleryTable","ACE_RangeTable_82mm","ACE_ATragMX","ACE_Flashlight_MX991","ACE_RangeCard","ACE_MapTools","ACE_surgicalKit","ACE_UAVBattery","ACE_quikclot","ACE_DAGR"];
	_grenadesItems = ["rhs_mag_mk84", "rhs_mag_m67", "rhs_mag_mk3a2", "rhs_mag_an_m8hc"];
	_radioItem = ["tf_anprc152"];
	_arsenalArray = _uniformsArray + _backpackArray + _headgearArray + _faceGearArray + _vestsArray + _weaponsArray + _launchersArray + _attachmentsArray + _weaponMagazines + _aceItems + _grenadesItems + _radioItem;
 [this, _arsenalArray] call ace_arsenal_fnc_addVirtualItems; 
 [this, player] call ace_arsenal_fnc_openBox; 
 },{ 
  side player == west 
  },{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActionToObject; 
 
 _openStorage = ["OpenStorage","Storage","\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",{ 
 lootBoxWEST setpos position (_this select 1); 
 (_this select 1) action ["Gear", lootBoxWEST] 
 },{ 
  side player == west 
  },{},[parameters],[0,0,0], 100] call ace_interact_menu_fnc_createAction; 
[this, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActionToObject;
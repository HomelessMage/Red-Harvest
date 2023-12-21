params ["_cachePos"];
_cachePos = _this select 0;
_lootCache = "VirtualReammoBox_camonet_F" createVehicle _cachePos;

[_lootCache] call grad_persistence_fnc_blacklistObjects;

_pistolsArray = ["UK3CB_USP", "rhs_weap_cz99", "rhsusf_weap_glock17g4", "rhsusf_weap_m9", "rhsusf_weap_m1911a1"];
_smgsArray = ["rhsusf_weap_MP7A2", "rhsusf_weap_MP7A2_aor1", "rhsusf_weap_MP7A2_desert", "UK3CB_HK33KA3", "UK3CB_HK33KA2_RIS", "UK3CB_HK33KA2", "UK3CB_HK33KA1", "UK3CB_MP5SD6", "UK3CB_MP5SD5", "UK3CB_MP5N", "UK3CB_MP5K_PDW", "UK3CB_MP5K", "UK3CB_MP5A4", "UK3CB_MP5A3", "UK3CB_MP5A2", "UK3CB_MP510"];

_riflesArray = ["rhs_weap_hk416d10", "rhs_weap_hk416d10_LMT", "rhs_weap_hk416d10_LMT_d", "rhs_weap_hk416d10_LMT_wd", "rhs_weap_hk416d145", "rhs_weap_hk416d145_d", "rhs_weap_hk416d145_d_2", "rhs_weap_hk416d145_wd", "rhs_weap_hk416d145_wd_2", "rhs_weap_m27iar", "rhs_weap_m27iar_grip", "rhs_weap_m4_carryhandle_mstock", "rhs_weap_m4a1_blockII_bk", "rhs_weap_m4a1_blockII_KAC_bk", "rhs_weap_m4a1_blockII_d", "rhs_weap_m4a1_blockII_KAC_d", "rhs_weap_m4a1_blockII_KAC", "rhs_weap_m4a1_blockII_wd", "rhs_weap_m4a1_blockII_KAC_wd", "rhs_weap_m4a1_d", "rhs_weap_m4a1_d_mstock", "rhs_weap_m4a1_mstock", "rhs_weap_m4a1_wd", "rhs_weap_m4a1_wd_mstock", "rhs_weap_mk18", "rhs_weap_mk18_bk", "rhs_weap_mk18_KAC_bk", "rhs_weap_mk18_d", "rhs_weap_mk18_KAC_d", "rhs_weap_mk18_KAC", "rhs_weap_mk18_wd", "rhs_weap_mk18_KAC_wd", "rhs_weap_m16a4", "rhs_weap_m16a4_imod", "rhs_weap_m16a4_carryhandle", "rhs_weap_m4", "rhs_weap_m4_mstock", "rhs_weap_m4_carryhandle", "rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1", "UK3CB_ACR_Rifle", "UK3CB_ACR_Carbine", "UK3CB_ACR_Crew", "UK3CB_ACR_Rifle_Long", "UK3CB_M16A3", "UK3CB_M16A2", "UK3CB_M16A1_LSW", "UK3CB_M16A1", "UK3CB_G36_TAC_C", "UK3CB_G36V_C", "UK3CB_G36_TAC_K", "UK3CB_G36V_K", "UK3CB_G36_TAC", "UK3CB_G36V", "UK3CB_G36A1_C", "UK3CB_G36A1_KSK_K"];
_machineGunsArray = ["rhs_weap_m240B", "rhs_weap_m240G", "rhs_weap_m249", "rhs_weap_m249_pip", "rhs_weap_m249_light_L", "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_L", "rhs_weap_m249_pip_ris", "rhs_weap_m249_light_S", "rhs_weap_m249_pip_S_para", "rhs_weap_m249_pip_S"];
_dmrsArray = ["rhs_weap_m14ebrri", "UK3CB_PSG1A1", "rhs_weap_sr25", "rhs_weap_sr25_d", "rhs_weap_sr25_ec", "rhs_weap_sr25_ec_d", "rhs_weap_sr25_ec_wd", "rhs_weap_sr25_wd", "rhs_weap_mk17_CQC", "rhs_weap_mk17_LB", "rhs_weap_mk17_STD", "rhs_weap_SCARH_CQC", "rhs_weap_SCARH_FDE_CQC", "rhs_weap_SCARH_STD", "rhs_weap_SCARH_LB", "rhs_weap_SCARH_FDE_LB", "rhs_weap_SCARH_FDE_STD", "rhs_weap_m14_socom", "UK3CB_M14DMR", "UK3CB_M14DMR_BLK", "UK3CB_M14DMR_Railed", "UK3CB_M14DMR_Railed_BLK", "UK3CB_PSG1A1_RIS", "UK3CB_PSG1A1", "UK3CB_G3KA4", "UK3CB_G3A3V_RIS", "UK3CB_G3A3V", "UK3CB_G3A3_RIS", "UK3CB_G3A3", "UK3CB_G3SG1_RIS", "UK3CB_G3SG1"];
_launchersArray = ["rhs_weap_fim92", "rhs_weap_smaw", "rhs_weap_smaw_green"];
_vestsArray = ["UK3CB_LDF_B_V_CREW_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_MG_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_MK_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_MD_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_RIF_ALT_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_RIF_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_LMG_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_SL_Vest_KKZ10_OLI", "UK3CB_LDF_B_V_TL_Vest_KKZ10_OLI", "UK3CB_V_MBAV_LIGHT_MULTI", "UK3CB_V_MBAV_LIGHT_OLI", "UK3CB_V_MBAV_MG_MULTI", "UK3CB_V_MBAV_MG_OLI", "UK3CB_V_MBAV_MEDIC_MULTI", "UK3CB_V_MBAV_MEDIC_OLI", "UK3CB_V_MBAV_RIFLEMAN_MULTI", "UK3CB_V_MBAV_RIFLEMAN_OLI"];
_helmetsArray = ["rhsusf_opscore_aor2_pelt", "rhsusf_opscore_aor2_pelt_nsw", "rhsusf_opscore_coy_cover_pelt", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_mc_cover_pelt", "rhsusf_opscore_mc_cover_pelt_nsw", "rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_opscore_paint_pelt", "rhsusf_opscore_paint_pelt_nsw", "rhsusf_opscore_paint_pelt_nsw_cam", "rhsusf_opscore_rg_cover_pelt", "rhsusf_opscore_ut_pelt", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_mar_fg_pelt", "rhsusf_opscore_mar_ut_pelt"];
_uniformsArray = ["rhs_uniform_g3_aor2", "rhs_uniform_g3_m81", "rhs_uniform_g3_mc", "rhs_uniform_g3_rgr", "rhs_uniform_g3_tan"];

_grenadesArray = ["rhs_mag_an_m8hc", "rhs_mag_m67"];
_explosivesArray = [""];

_randomPistol = selectRandom _pistolsArray;
_randomSMG = selectRandom _smgsArray;
_randomRifle = selectRandom _riflesArray;
_randomMG =selectRandom _machineGunsArray;
_randomDMR = selectRandom _dmrsArray;
_randomLauncher = selectRandom _launchersArray;
_randomVest = selectRandom _vestsArray;
_randomHelmet = selectRandom _helmetsArray;
_randomUniform = selectRandom _uniformsArray;
_randomGrenade = selectRandom _grenadesArray;
_randomExplosive = selectRandom _explosivesArray;

_randomPistolQuantity = [2, 4] call BIS_fnc_randomInt;
_randomSMGQuantity = [1, 4] call BIS_fnc_randomInt;
_randomRifleQuantity = [1, 3] call BIS_fnc_randomInt;
_randomMGQuantity = [1, 2] call BIS_fnc_randomInt;
_randomDMRQuantity = [1, 2] call BIS_fnc_randomInt;
_randomLauncherQuantity  = [1, 3] call BIS_fnc_randomInt;
_randomVestQuantity = [5, 10] call BIS_fnc_randomInt;
_randomHelmetQuantity = [5, 10] call BIS_fnc_randomInt;
_randomUniformQuantity = [5, 10] call BIS_fnc_randomInt;
_randomGrenadeQuantity = [10, 20] call BIS_fnc_randomInt;
_randomExplosiveQuantity = [2, 5] call BIS_fnc_randomInt;


_lootCache addItemCargoGlobal [_randomPistol, _randomPistolQuantity];
_lootCache addItemCargoGlobal [_randomSMG, _randomSMGQuantity];
_lootCache addItemCargoGlobal [_randomRifle, _randomRifleQuantity];
_lootCache addItemCargoGlobal [_randomMG, _randomMGQuantity];
_lootCache addItemCargoGlobal [_randomDMR, _randomDMRQuantity];
_lootCache addItemCargoGlobal [_randomLauncher, _randomLauncherQuantity];
_lootCache addItemCargoGlobal [_randomVest, _randomVestQuantity];
_lootCache addItemCargoGlobal [_randomHelmet, _randomHelmetQuantity];
_lootCache addItemCargoGlobal [_randomUniform, _randomUniformQuantity];
_lootCache addItemCargoGlobal [_randomGrenade, _randomGrenadeQuantity];
_lootCache addItemCargoGlobal [_randomExplosive, _randomExplosiveQuantity];

_pistolMagazines = getArray (configFile >> "CfgWeapons" >> _randomPistol >> "magazines");
_pistolAmmo = _pistolMagazines select 0;
_smgMagazines = getArray (configFile >> "CfgWeapons" >> _randomSMG >> "magazines");
_smgAmmo = _smgMagazines select 0;
_rifleMagazines = getArray (configFile >> "CfgWeapons" >> _randomRifle >> "magazines");
_rifleAmmo = _rifleMagazines select 0;
_machineGunMagazines = getArray (configFile >> "CfgWeapons" >> _randomMG >> "magazines");
_machineGunAmmo = _machineGunMagazines select 0;
_dmrMagazines = getArray (configFile >> "CfgWeapons" >> _randomDMR >> "magazines");
_dmrAmmo = _dmrMagazines select 0;
_launcherAmmoItems = getArray (configFile >> "CfgWeapons" >> _randomLauncher >> "magazines");
_launcherAmmo = _launcherAmmoItems select 0;

_randomPistolAmmo = [5, 10] call BIS_fnc_randomInt;
_randomSMGAmmo = [3, 6] call BIS_fnc_randomInt;
_randomRifleAmmo = [2, 5] call BIS_fnc_randomInt;
_randomMGAmmo = [2, 5] call BIS_fnc_randomInt;
_randomDMRAmmo = [3, 5] call BIS_fnc_randomInt;
_randomLauncherAmmo = [2, 5] call BIS_fnc_randomInt;

_lootCache addItemCargoGlobal [_pistolAmmo, _randomPistolAmmo * _randomPistolQuantity];
_lootCache addItemCargoGlobal [_smgAmmo, _randomSMGAmmo * _randomSMGQuantity];
_lootCache addItemCargoGlobal [_rifleAmmo, _randomRifleAmmo * _randomRifleQuantity];
_lootCache addItemCargoGlobal [_machineGunAmmo, _randomMGAmmo * _randomMGQuantity];
_lootCache addItemCargoGlobal [_dmrAmmo, _randomDMRAmmo * _randomDMRQuantity];
_lootCache addItemCargoGlobal [_launcherAmmo, _randomLauncherAmmo * _randomLauncherQuantity];

// _index = random 1000;
// _ChannelID = "1";

// _cacheMarkerName = format ["_USER_DEFINED #%1/%2/%3", clientOwner, _index, _ChannelID];

// _cacheMarkerName = format ["CIV_%1", _index];
// _cacheMarker = createMarker [_cacheMarkerName, _lootCache];
// _cacheMarker setMarkerType "loc_rearm";
// // _cacheMarker setMarkerText "Схрон";
// _cacheMarker setMarkerColor "colorGreen";



// _removeCache = ["RemoveCache","Уничтожить схрон","\A3\ui_f\data\map\groupicons\waypoint.paa",{
// 			player playActionNow "Medic";
// 			_lootCache = _this select 0;
// 			deleteVehicle _lootCache;
// 	},{side player == EAST or side player == RESISTANCE},{},[_lootCache],[0,0,0], 100] call ace_interact_menu_fnc_createAction;
// [_lootCache, 0, ["ACE_MainActions"], _removeCache] call ace_interact_menu_fnc_addActionToObject;

// [_lootCache, -1] call ace_cargo_fnc_setSize;

_randomIndexEAST = str round(random 1000);
_taskDescription = ["Необходимо вывезти схрон ЧСО на базу.", "Захватить схрон"];

_randomIndexRESISTANCE = str round(random 1000);
_taskDescription = ["Необходимо вывезти схрон ЧСО на базу.", "Захватить схрон"];

_randomIndexWEST = str round(random 1000);
_taskDescriptionWEST = [localize "STR_TAG_defendWeaponsCacheTaskDescription", localize "STR_TAG_defendWeaponsCacheTaskName"];

[EAST, _randomIndexEAST, _taskDescription, _lootCache, "CREATED", -1, false, "Container", false] call BIS_fnc_taskCreate;
[RESISTANCE, _randomIndexRESISTANCE, _taskDescription, _lootCache, "CREATED", -1, false, "Container", false] call BIS_fnc_taskCreate;
[WEST, _randomIndexWEST, _taskDescriptionWEST, _lootCache, "CREATED", -1, false, "Container", false] call BIS_fnc_taskCreate;



_cacheTrigger = createTrigger ["EmptyDetector", _cachePos];
_cacheTrigger setTriggerArea [300, 300, 0, false];


waitUntil {(!alive _lootCache) or !(_lootCache inArea _cacheTrigger);};

if (!alive _lootCache) then {
	[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
	[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
	[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
};

waitUntil {!(_lootCache inArea _cacheTrigger);};

while {alive _lootCache} do {
	if (_lootCache inArea gradTriggerGUER) exitWith {
		[_lootCache] call grad_persistence_fnc_unblacklistObjects;
		[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "SUCCEEDED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
	};
	if (_lootCache inArea gradTriggerEAST) exitWith {
		[_lootCache] call grad_persistence_fnc_unblacklistObjects;
		[_randomIndexEAST, "SUCCEEDED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
	};
	if (_lootCache inArea gradTriggerWEST) exitWith {
		[_lootCache] call grad_persistence_fnc_unblacklistObjects;
		[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "SUCCEEDED"] call BIS_fnc_taskSetState;
	};
	sleep 60;
};
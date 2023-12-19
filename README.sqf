[_gaz, 1] spawn rhs_fnc_gaz66_radioDeploy;// deploy
[_gaz, 0] spawn rhs_fnc_gaz66_radioDeploy;// fold

// Казимир Загеев

// КШМ respawn
// [(_this select 0), 0, ["ACE_MainActions", healPlayerMHQ]] call ace_interact_menu_fnc_removeActionFromObject;
// [(_this select 0), 0, ["ACE_MainActions"], healPlayerMHQ] call ace_interact_menu_fnc_addActionToObject;

// КШМ
this allowDamage false;
_healPlayer = ["HealPlayer", "Получить медицинскую помощь", "\A3\ui_f\data\map\mapcontrol\Hospital_CA.paa", {
	[player] call ace_medical_treatment_fnc_fullHealLocal
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;
this setVariable ["ace_rearm_isSupplyVehicle", true];
[this] call ace_rearm_fnc_initSupplyVehicle;
this setVariable ["ACE_isRepairVehicle", true];
[this, 500] call ace_refuel_fnc_makeSource;

_mhq = (_this select 0);
_healPlayer = ["HealPlayer", "Получить медицинскую помощь", "\A3\ui_f\data\map\mapcontrol\Hospital_CA.paa", {
	[player] call ace_medical_treatment_fnc_fullHealLocal
}, {
	true
}, {}, [_mhq], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[_mhq, 0, ["ACE_MainActions"], _healPlayer] call ace_interact_menu_fnc_addActionToObject;
_mhq setVariable ["ace_rearm_isSupplyVehicle", true];
[_mhq] call ace_rearm_fnc_initSupplyVehicle;
_mhq setVariable ["ACE_isRepairVehicle", true];
[_mhq, 500] call ace_refuel_fnc_makeSource;

// Арсенал
vehicle this lockInventory true;
[this, this] call ace_common_fnc_claim;
this allowDamage false;

_openArsenal = ["OpenArsenal", "Арсенал", "\a3\ui_f\data\igui\cfg\simpletasks\types\rifle_ca.paa", {
	[this, ["ACE_fieldDressing", "ACE_elasticBandage", "ACE_packingBandage", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "ACE_CableTie", "ACE_bodyBag", "ACE_DefusalKit", "ACE_EarPlugs", "ACE_EntrenchingTool", "ACE_epinephrine", "ACE_Clacker", "ACE_morphine", "ACE_personalAidKit", "ACE_SpareBarrel_Item", "ACE_splint", "ACE_SpottingScope", "ToolKit", "ACE_tourniquet", "ACE_wirecutter", "CUP_PipeBomb_M", "ItemGPS", "ItemWatch", "ItemCompass", "ItemMap", "Binocular", "ACE_artilleryTable", "ACE_RangeTable_82mm", "ACE_ATragMX", "ACE_Flashlight_MX991", "ACE_RangeCard", "ACE_MapTools", "ACE_surgicalKit", "ACE_UAVBattery", "ACE_quikclot", "ACE_DAGR", "SmokeShell", "SP_Balaclava_IDF", "CFP_RAV_IDF", "CFP_IDF_6", "CFP_IDF_4", "CFP_IDF_1", "CFP_IDF_2", "CFP_IDF_3", "CFP_IDF_5", "CFP_MitzHelm1_Des", "CFP_MitzHelm2_Des", "CFP_MitzHelm3_Des", "CFP_MitzHelm4_Des", "SP_Carryall_Green", "tf_anprc152", "CFP_IDF_M76", "CFP_IDF_M76_BD", "CFP_IDF_M76_BD_CF_GG", "CFP_IDF_M76_BD_GG", "CFP_IDF_M76_CB_GG", "CFP_IDF_M76_BD_CB_GG", "CFP_IDF_M76_CF_GG", "CFP_IDF_M76_GG", "CUP_launch_M136", "CUP_arifle_X95", "CUP_arifle_X95_Grippod", "CFP_Tavor_Black", "CFP_Tavor_Black_Long", "CFP_Tavor_Black_GL", "CUP_optic_MARS", "CUP_30Rnd_556x45_X95", "CUP_1Rnd_HE_M203", "CUP_1Rnd_HEDP_M203", "CUP_FlareWhite_M203", "CUP_1Rnd_StarCluster_White_M203", "CUP_1Rnd_StarFlare_White_M203", "CUP_1Rnd_Smoke_M203", "CUP_T10_Parachute_backpack"]] call ace_arsenal_fnc_addVirtualItems;
	[this, player] call ace_arsenal_fnc_openBox;
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;

[this, 0, ["ACE_MainActions"], _openArsenal] call ace_interact_menu_fnc_addActionToObject;

_openStorage = ["OpenStorage", "Склад", "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa", {
	lootBox setPos position (_this select 1);
	(_this select 1) action ["Gear", lootBox]
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _openStorage] call ace_interact_menu_fnc_addActionToObject;

// Мусорка
_openTrashBin = ["OpenStorage", "Мусорный бак", "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa", {
	trashBin setPos position (_this select 1);
	(_this select 1) action ["Gear", trashBin];
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _openTrashBin] call ace_interact_menu_fnc_addActionToObject;

_removeTrashFromBin = ["RestoreEquipment", "Уничтожить мусор в баке", "\A3\ui_f\data\map\groupicons\waypoint.paa", {
	clearMagazineCargoGlobal trashBin;
	clearWeaponCargoGlobal trashBin;
	clearItemCargoGlobal trashBin;
	hintSilent "Мусорный бак очищен!";
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _removeTrashFromBin] call ace_interact_menu_fnc_addActionToObject;

_removeTrash = ["RemoveTrash", "Уничтожить мусор на базе", "\A3\ui_f\data\map\groupicons\waypoint.paa", {
	_radius = 1000;
	_trashArray = gradTrigger nearObjects ["GroundWeaponHolder", _radius];
	for "_i" from 0 to count _trashArray - 1 do {
		deleteVehicle (_trashArray select _i);
	};
	hintSilent "Мусор удалён!";
}, {
	true
}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _removeTrash] call ace_interact_menu_fnc_addActionToObject;

_restoreEquipment = ["RestoreEquipment", "Сбросить экипировку", "\A3\ui_f\data\map\groupicons\waypoint.paa", {
	player setUnitLoadout (player getVariable "loadout");
	hintSilent "Экипировка сброшена!";
}, {
	true
}, {}, [parameters], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _restoreEquipment] call ace_interact_menu_fnc_addActionToObject;

_locationsArray = [
	// Hellanmaa
	[2534.91, 970.66],
	[5589.31, 673.45],
	[4477.26, 3097.97],
	[7214.69, 5550.09],
	[6889.9, 2647.93],
	[5551.55, 901.966],
	[6379.1, 3631.21],
	[7795.29, 3240.44],
	[3671.91, 4959.02],
	[3696.09, 7763.39],
	[7420.74, 7381.69],
	[6235.93, 6781.47],
	[3828.52, 6949.44],
	[752.514, 6470.37],
	[1744.55, 4381.99],
	[1433.23, 3019.2],
	[3614.89, 2739.61],
	[5714.66, 2239.68]
];

// _locationsArray = nearestLocations [[worldSize / 2, worldsize / 2, 0], ["NameVillage", "NameCity", "NameCityCapital"], 25000];
// _locationsArray = nearestLocations [[worldSize / 2, worldsize / 2, 0], ["StrongpointArea"], 25000];
// systemChat str _locationsArray;
// _randomLocation = selectRandom _locationsArray;
// _RandomTownPosition = position (_randomLocation select (floor (random (count _randomLocation))));
// player setPos _randomLocation;

// _towns = nearestLocations [[worldSize / 2, worldsize / 2, 0], ["StrongpointArea"], 25000]; 
// _RandomTownPosition = position (_towns select (floor (random (count _towns))));
// player setPos _RandomTownPosition;

// A number of different ways you can go about this, many of which have been discussed a number of times in this forum section.

// Heres one.

// Description.ext
// SLOTS WHITELIST
class CfgDebriefing
{
	class NOT_ALLOWED
	{
		title = "НЕТ ДОСТУПА";
		description = "Доступ к данному слоту предоставляется в исключительном случае.";
		picture = "";
	};
};

// initServer.sqf
allowed = call compile preprocessFileLineNumbers "allowedIDs.txt";

// initPlayerServer.sqf

_player = _this select 0;
_uid = getPlayerUID _player;

if ( _player getVariable [ "reserved", false ] && {
	!(_uid in allowed)
} ) then {
	[ [], "fnc_reservedSlot", _player ] call BIS_fnc_MP;
};

// initPlayerLocal.sqf

fnc_reservedSlot = {
	player enableSimulationGlobal false;
	("reserved" call BIS_fnc_rscLayer ) cutText [ "This is a reserved slot. Reserved slots are clearly marked in the lobby as ( Reserved) . Please rejoin using a different slot.", "BLACK OUT", 1, true ];
	sleep 10;
	endMission "NOT_ALLOWED";
};

// allowedIDs.txt << this file gets placed in the folder where your servers Arma3.exe is, it keeps the IDs private as they are not transmitted with the mission and can be updated for all your missions in one place.

// Fill the ARRAY with allowed UIDs - steam IDs
// Look something like "76566179256348507"
[ ];
// then in each units init that you want to be a reserved unit place

this setVariable [ "Reserved", true ]
// You can also change their description by filling out the Description section in the insert unit dialog with something like
// group leader (Reserved)
// So people know what units not to choose in the lobby.

if (playerSide != WEST) then {
	_this setVariable ["bis_disabled_Door_1", 1, false];
	_this setVariable ["bis_disabled_Door_2", 1, false];
	_this setVariable ["bis_disabled_Door_3", 1, false];
	_this setVariable ["bis_disabled_Door_4", 1, false];
	_this setVariable ["bis_disabled_Door_5", 1, false];
	_this setVariable ["bis_disabled_Door_6", 1, false];
	_this setVariable ["bis_disabled_Door_7", 1, false];
	_this setVariable ["bis_disabled_Door_8", 1, false];
	_this setVariable ["bis_disabled_Door_9", 1, false];
	_this setVariable ["bis_disabled_Door_10", 1, false];
	_this setVariable ["bis_disabled_Door_11", 1, false];
	_this setVariable ["bis_disabled_Door_12", 1, false];
	_this setVariable ["bis_disabled_Door_13", 1, false];
	_this setVariable ["bis_disabled_Door_14", 1, false];
	_this setVariable ["bis_disabled_Door_15", 1, false];
};
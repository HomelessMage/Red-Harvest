params ["_trashbinPlaceholder", "_trashbinStorage", "_trashTrigger"];

_openTrashBin = ["OpenStorage",localize "STR_TAG_trashBin","\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa",{ 
	params ["_target", "_player", "_params"];
	_params params ["_trashbinPlaceholder", "_trashbinStorage", "_trashTrigger"];
	_trashbinStorage setpos position player; 
	player action ["Gear", _trashbinStorage]; 
 },{true},{},[_trashbinPlaceholder, _trashbinStorage, _trashTrigger]] call ace_interact_menu_fnc_createAction; 
[_trashbinPlaceholder, 0, ["ACE_MainActions"], _openTrashBin] call ace_interact_menu_fnc_addActionToObject; 

_removeTrashFromBin = ["RestoreEquipment",localize "STR_TAG_destroyTrashInTrashBin","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
	params ["_target", "_player", "_params"];
	_params params ["_trashbinPlaceholder", "_trashbinStorage", "_trashTrigger"];
	clearMagazineCargoGlobal _trashbinStorage; 
	clearWeaponCargoGlobal _trashbinStorage; 
	clearItemCargoGlobal _trashbinStorage; 
	// hintSilent "Trashbin cleared!";
 },{true},{},[_trashbinPlaceholder, _trashbinStorage, _trashTrigger]] call ace_interact_menu_fnc_createAction; 
[_trashbinPlaceholder, 0, ["ACE_MainActions"], _removeTrashFromBin] call ace_interact_menu_fnc_addActionToObject; 
 
_removeTrash = ["RemoveTrash",localize "STR_TAG_destroyTrashAtBase","\A3\ui_f\data\map\groupicons\waypoint.paa",{
	params ["_target", "_player", "_params"];
	_params params ["_trashbinPlaceholder", "_trashbinStorage", "_trashTrigger"];	
  _radius = 1000; 
  _trashArray = _trashTrigger nearObjects ["GroundWeaponHolder", _radius]; 
  for "_i" from 0 to count _trashArray - 1 do { 
    deleteVehicle (_trashArray select _i); 
  }; 
//   hintSilent "Trash at base deleted!"; 
},{true},{},[_trashbinPlaceholder, _trashbinStorage, _trashTrigger]] call ace_interact_menu_fnc_createAction; 
[_trashbinPlaceholder, 0, ["ACE_MainActions"], _removeTrash] call ace_interact_menu_fnc_addActionToObject; 
 
_restoreEquipment = ["RestoreEquipment",localize "STR_TAG_resetEquipment","\A3\ui_f\data\map\groupicons\waypoint.paa",{ 
 player setUnitLoadout (player getVariable "loadout"); 
//  hintSilent "Equipment reset!"; 
 },{true}] call ace_interact_menu_fnc_createAction; 
[_trashbinPlaceholder, 0, ["ACE_MainActions"], _restoreEquipment] call ace_interact_menu_fnc_addActionToObject;
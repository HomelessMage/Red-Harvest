params ["_note"];
if (!hasInterface) exitWith {};
if (isNil "_note") exitWith {};
if (isNull _note) exitWith {};

//add ACE-actions
_action = ["GRAD_leaveNotes_mainActionGround", localize "STR_TAG_interaction", "", {}, {true}, {}, [], grad_leaveNotes_actOffset, grad_leaveNotes_actDist] call ace_interact_menu_fnc_createAction;
[_note, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["GRAD_leaveNotes_readNoteGround", localize "STR_TAG_readNote", GRAD_leaveNotes_moduleRoot + "\data\read.paa", {[[(_this select 0) getVariable ["message", ""], _this select 0, (_this select 0) getVariable ["handwriting", ["",""]]],GRAD_leaveNotes_fnc_readNote] call GRAD_leaveNotes_fnc_delayedCall}, {true}] call ace_interact_menu_fnc_createAction;
[_note, 0, ["GRAD_leaveNotes_mainActionGround"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["GRAD_leaveNotes_takeNoteGround", localize "STR_TAG_takeNote", "\A3\ui_f\data\igui\cfg\actions\take_ca.paa", {[_this select 0] call GRAD_leaveNotes_fnc_takeNote}, {true}] call ace_interact_menu_fnc_createAction;
[_note, 0, ["GRAD_leaveNotes_mainActionGround"], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["GRAD_leaveNotes_destroyNoteGround", localize "STR_TAG_destroyNote", GRAD_leaveNotes_moduleRoot + "\data\destroy.paa", {[_this select 0] call GRAD_leaveNotes_fnc_destroyNote}, {true}] call ace_interact_menu_fnc_createAction;
[_note, 0, ["GRAD_leaveNotes_mainActionGround"], _action] call ace_interact_menu_fnc_addActionToObject;

_playerUID = getPlayerUID player;
_zeusArray = [
	"76561198040777688", // Терентьев
	"76561198806755399", // Волков
	"76561198891652541" // Прохоров
];
if (!(_playerUID in _zeusArray)) exitwith {};
/*
if (
	// (group player != purpleSlots) && 
	(_playerUID != "76561198891652541") && 
	(_playerUID != "76561198040777688") && 
	(_playerUID != "76561198806755399")
) exitwith {};
*/

_index = _zeusArray find _playerUID;;
_dedman = format["dedman%1", _index];
[_dedman] call { 
	missionNamespace setVariable [_this select 0, player, true];
	[0, {
		params ["_myName"]; 
		private _curVarName = _myName+"Cur";
		if (isNil _curVarName) then {
			[-1, compile format["if (player == %1) then {%1 sideChat 'creating Curator';}", _myName]] call CBA_fnc_globalExecute;
			if (isNil "DedmenCur_group") then {DedmenCur_group = creategroup sideLogic;};
			private _myCurObject = DedmenCur_group createunit["ModuleCurator_F", [0, 90, 90], [], 0.5, "NONE"];	//Logic Server
			_myCurObject setVariable ["showNotification",false];

			missionNamespace setVariable [_curVarName, _myCurObject, true];
			publicVariable "DedmenCur_group";
			unassignCurator _myCurObject;
			_cfg = (configFile >> "CfgPatches");
			_newAddons = [];
			for "_i" from 0 to((count _cfg) - 1) do {
				_name = configName(_cfg select _i);
				_newAddons pushBack _name;
			};
			if (count _newAddons > 0) then {_myCurObject addCuratorAddons _newAddons};
			_myCurObject setcuratorcoef["place", 0];
			_myCurObject setcuratorcoef["delete", 0];
			private _enableSyncVar = _myName+"_enableSync";
			private _val = random 500;
			missionNamespace setVariable [_enableSyncVar, random 500];
			[_enableSyncVar,_val] spawn {
				while  {(missionNamespace getVariable [_this select 0, 0]) == (_this select 1)} do {
				// {
				_myCurObject addCuratorEditableObjects[(allMissionObjects "All"), true];
				// } forEach allCurators;
				sleep 2;
			};};

		};
		private _myCurObject = missionNamespace getVariable [_curVarName, objNull];
		private _myPlayer = missionNamespace getVariable [_myName, objNull];
		_myCurObject addEventHandler ["CuratorObjectPlaced", {
			params ["_curator", "_entity"];
			class = missionNamespace getVariable ([(getDescription _entity) select 0, 0]);
			missionNamespace setVariable [(getDescription _entity) select 0, class + 1];
			publicVariable ((getDescription _entity) select 0);
		}];
		_myCurObject addEventHandler ["CuratorObjectDeleted", {
			params ["_curator", "_entity"];
			class = missionNamespace getVariable ([(getDescription _entity) select 0, 0]);
			if (class > 0) then {
				missionNamespace setVariable [(getDescription _entity) select 0, class - 1];
				publicVariable ((getDescription _entity) select 0);
			};
		}];
		/*
		//if (getAssignedCuratorUnit (_myCurObject) != kapayji) then {
		*/
		unassignCurator _myCurObject;
		sleep 0.4;
		_myPlayer assignCurator _myCurObject;
		///* };*/
		[-1, compile format["if (player == %1) then {%1 sideChat 'U are ZEUS';}", _myName]] call CBA_fnc_globalExecute;
	}, _this] call CBA_fnc_globalExecute;
};


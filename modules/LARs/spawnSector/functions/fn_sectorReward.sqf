params ["_sector", "_owner", "_oldOwner"];

if (!isServer) exitWith {};

_sector setVariable ["currentOwner", _owner];
_sector setVariable ["lastOwner", _oldOwner];


// Sound design
/*
_ownerVariable = _sector getVariable "currentOwner";
_lastOwnerVariable = _sector getVariable "lastOwner";

switch (_ownerVariable) do {
	case WEST: {
		["blufor_win"] remoteExec ["playSound", WEST];
	};
	case EAST: {
		["opfor_win"] remoteExec ["playSound", EAST];
	};
	case RESISTANCE: {
		["indfor_win"] remoteExec ["playSound", RESISTANCE];
	};
	default { 

	};
};

switch (_lastOwnerVariable) do {
	case WEST: {
		["blufor_lose"] remoteExec ["playSound", WEST];
	};
	case EAST: {
		["opfor_lose"] remoteExec ["playSound", EAST];
	};
	case RESISTANCE: {
		["indfor_lose"] remoteExec ["playSound", RESISTANCE];
	};
	default { 

	};
};

*/

/*
_sectorPos = [_sector] call ws_fnc_getEPos;

_ownerVariable = _sector getVariable "currentOwner";

_garrisonToSpawn = [10, 20] call BIS_fnc_randomInt;
if (_ownerVariable == WEST) then {

	_garrisonGroup = [_sector, WEST, _garrisonToSpawn, 
		[
			[
				"rhsgref_cdf_b_ngd_rifleman",
				"rhsgref_cdf_b_ngd_grenadier",
				"rhsgref_cdf_b_ngd_rifleman_ak74",
				"rhsgref_cdf_b_ngd_rifleman_rpg75",
				"rhsgref_cdf_b_ngd_rifleman_lite",
				"rhsgref_cdf_b_ngd_squadleader",
				"rhsgref_cdf_b_ngd_machinegunner",
				"rhsgref_cdf_b_ngd_engineer",
				"rhsgref_cdf_b_ngd_grenadier_rpg"
			], 
			[
				"rhsgref_cdf_b_ngd_rifleman",
				"rhsgref_cdf_b_ngd_grenadier",
				"rhsgref_cdf_b_ngd_rifleman_ak74",
				"rhsgref_cdf_b_ngd_rifleman_rpg75",
				"rhsgref_cdf_b_ngd_rifleman_lite",
				"rhsgref_cdf_b_ngd_squadleader",
				"rhsgref_cdf_b_ngd_machinegunner",
				"rhsgref_cdf_b_ngd_engineer",
				"rhsgref_cdf_b_ngd_grenadier_rpg"
			]
		]
	] call ws_fnc_createGroup;
	[_garrisonGroup, _sector, 100] call ws_fnc_taskDefend;

	
	[_sector,100,WEST,_garrisonToSpawn,1,
		[
			"rhsgref_cdf_b_ngd_rifleman", 
			"rhsgref_cdf_b_ngd_grenadier", 
			"rhsgref_cdf_b_ngd_rifleman_ak74", 
			"rhsgref_cdf_b_ngd_rifleman_rpg75", 
			"rhsgref_cdf_b_ngd_rifleman_lite", 
			"rhsgref_cdf_b_ngd_squadleader", 
			"rhsgref_cdf_b_ngd_machinegunner", 
			"rhsgref_cdf_b_ngd_engineer", 
			"rhsgref_cdf_b_ngd_grenadier_rpg"
		]
	] call ws_fnc_createGarrison;
};
if (_ownerVariable == EAST) then {
	[_sector,100,EAST,_garrisonToSpawn,1,
		[
			"UK3CB_CCM_O_AT", 
			"UK3CB_CCM_O_AT_ASST", 
			"UK3CB_CCM_O_AR", 
			"UK3CB_CCM_O_DEM", 
			"UK3CB_CCM_O_ENG", 
			"UK3CB_CCM_O_MK", 
			"UK3CB_CCM_O_MD", 
			"UK3CB_CCM_O_OFF", 
			"UK3CB_CCM_O_RIF_1", 
			"UK3CB_CCM_O_RIF_2", 
			"UK3CB_CCM_O_RIF_LITE", 
			"UK3CB_CCM_O_RIF_BOLT", 
			"UK3CB_CCM_O_SL", 
			"UK3CB_CCM_O_SNI", 
			"UK3CB_CCM_O_SPOT", 
			"UK3CB_CCM_O_TL"
		]
	] call ws_fnc_createGarrison;
};
if (_ownerVariable == RESISTANCE) then {
	[_sector,100,RESISTANCE,_garrisonToSpawn,1,
		[
			"UK3CB_CCM_I_AT", 
			"UK3CB_CCM_I_AT_ASST", 
			"UK3CB_CCM_I_AR", 
			"UK3CB_CCM_I_DEM", 
			"UK3CB_CCM_I_ENG", 
			"UK3CB_CCM_I_MK", 
			"UK3CB_CCM_I_MD", 
			"UK3CB_CCM_I_OFF", 
			"UK3CB_CCM_I_RIF_1", 
			"UK3CB_CCM_I_RIF_2", 
			"UK3CB_CCM_I_RIF_LITE", 
			"UK3CB_CCM_I_RIF_BOLT", 
			"UK3CB_CCM_I_SL", 
			"UK3CB_CCM_I_SNI", 
			"UK3CB_CCM_I_SPOT", 
			"UK3CB_CCM_I_TL"
		]
	] call ws_fnc_createGarrison;
};
*/
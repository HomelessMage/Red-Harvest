params ["_sector", "_owner", "_oldOwner"];

if (!isServer) exitWith {};

_sector setVariable ["currentOwner", _owner];
_sector setVariable ["lastOwner", _oldOwner];




_sectorLocation = position _sector; 
_location = nearestLocation [_sectorLocation, "CityCenter"];
_className = className _location;
_cfgPath = configFile >> "CfgWorlds" >> worldName >> "Names";
_locationNeighbors = getArray (_cfgPath >> _className >> "neighbors");
// systemChat str _locationNeighbors;
_randomNeighbor = selectRandom _locationNeighbors;
// systemChat str _randomNeighbor;
_randomNeighborPosition = getArray (_cfgPath >> _randomNeighbor >> "position");
// systemChat str _randomNeighborPosition;
_reinforcementsPosition = [_randomNeighborPosition] call ws_fnc_NearestRoadPos;
systemChat str _reinforcementsPosition;


_housesArray = nearestObjects [_sectorLocation, ["house"], 300] select {
	[_x] call BIS_fnc_isBuildingEnterable;
	count (_x buildingPos -1) > 5;
};
_rallyLocation = selectRandom _housesArray;

_westVehicles = ["rhsgref_cdf_b_gaz66o", "rhsgref_cdf_b_ural", "rhsgref_cdf_b_ural_open", "UK3CB_B_Kamaz_Covered_CDF", "UK3CB_B_Kamaz_Open_CDF", "rhsgref_cdf_b_zil131", "rhsgref_cdf_b_zil131_open", "rhsgref_cdf_b_gaz66", "rhsgref_BRDM2UM_b"];
_eastVehicles = ["rhsgref_ins_gaz66", "rhsgref_ins_gaz66o", "rhsgref_ins_ural", "rhsgref_ins_ural_open", "rhsgref_ins_kraz255b1_cargo_open", "rhsgref_ins_zil131", "rhsgref_ins_zil131_open", "rhsgref_BRDM2UM_ins"];
_resistanceVehicles = ["UK3CB_NAP_I_Kraz255_Open", "UK3CB_NAP_I_V3S_Closed", "UK3CB_NAP_I_V3S_Open", "UK3CB_NAP_I_Ural_Open", "UK3CB_NAP_I_Ural", "UK3CB_NAP_I_Zil131_Covered", "UK3CB_NAP_I_Zil131_Open", "UK3CB_NAP_I_BRDM2_UM"];



/*
 * Author: mharis001
 * Zeus module function to spawn reinforcements.
 *
 * Arguments:
 * 0: Vehicle Type <STRING>
 * 1: Infantry Types <ARRAY>
 * 2: Spawn Position <ARRAY>
 * 3: LZ Position <ARRAY>
 * 4: RP Position <ARRAY>
 * 5: RTB and Despawn <BOOL>
 * 6: Insertion Method <STRING>
 * 7: Infantry Behaviour <NUMBER>
 *   - 0: Default, 1: Relaxed, 2: Cautious, 3: Combat
 * 8: Fly Height <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * ["B_MRAP_01_F", ["B_Soldier_F"], [0, 0, 0], [100, 100, 100], [200, 200, 200], true, 0, 0, 250] call zen_modules_fnc_moduleSpawnReinforcements
 *
 * Public: No
 */


_ownerVariable = _sector getVariable "currentOwner";
_lastOwnerVariable = _sector getVariable "lastOwner";
_bluforWin = ["blufor_win_1", "blufor_win_2", "blufor_win_3"];
_opforWin = ["opfor_win_1", "opfor_win_2", "opfor_win_3"];
_indforWin = ["indfor_win_1", "indfor_win_2", "indfor_win_3"];

switch (_ownerVariable) do {
	case WEST: {
		[selectRandom _bluforWin] remoteExec ["playSound", WEST];
		[
			selectRandom _westVehicles,
			[
				"rhsgref_cdf_b_ngd_rifleman",
				"rhsgref_cdf_b_ngd_grenadier",
				"rhsgref_cdf_b_ngd_rifleman_ak74",
				"rhsgref_cdf_b_ngd_rifleman_rpg75",
				"rhsgref_cdf_b_reg_specialist_aa",
				"rhsgref_cdf_b_ngd_squadleader",
				"rhsgref_cdf_b_ngd_machinegunner",
				"rhsgref_cdf_b_ngd_engineer",
				"rhsgref_cdf_b_ngd_grenadier_rpg"
			],
			_reinforcementsPosition, 
			_sectorLocation, 
			_rallyLocation, 
			true, 
			"Paradrop", 
			2,
			1000
		] call zen_modules_fnc_moduleSpawnReinforcements;

	};
	case EAST: {
		[selectRandom _opforWin] remoteExec ["playSound", EAST];
		[
			selectRandom _eastVehicles,
			[
				"UK3CB_CHD_O_RIF_1", 
				"UK3CB_CHD_O_GL", 
				"UK3CB_CHD_O_RIF_2", 
				"UK3CB_CHD_O_LAT", 
				"UK3CB_CHD_O_SL", 
				"UK3CB_CHD_O_MG", 
				"UK3CB_CHD_O_ENG", 
				"UK3CB_CHD_O_AT", 
				"UK3CB_CHD_O_AA"
			],
			_reinforcementsPosition, 
			_sectorLocation, 
			_rallyLocation, 
			true, 
			"Paradrop", 
			2,
			1000
		] call zen_modules_fnc_moduleSpawnReinforcements;
	};
	case RESISTANCE: {
		[selectRandom _indforWin] remoteExec ["playSound", RESISTANCE];
		[
			selectRandom _resistanceVehicles,
			[
				"UK3CB_NAP_I_GL", 
				"UK3CB_NAP_I_RIF_1", 
				"UK3CB_NAP_I_RIF_2", 
				"UK3CB_NAP_I_LAT", 
				"UK3CB_NAP_I_SL", 
				"UK3CB_NAP_I_MG", 
				"UK3CB_NAP_I_ENG", 
				"UK3CB_NAP_I_AT", 
				"UK3CB_NAP_I_AA"
			],
			_reinforcementsPosition, 
			_sectorLocation, 
			_rallyLocation, 
			true, 
			"Paradrop", 
			2,
			1000
		] call zen_modules_fnc_moduleSpawnReinforcements;
	};
	default { 

	};
};





/*
ws_fnc_createVehicle
v1 (13.04.2013)
By Wolfenswan [FA]: wolfenswanarps@gmail.com | folkarps.com

FEATURE
Spawns a vehicle of the desired side, loaded with driver and (if available) gunner

USAGE
Minimal:
[position,side,vehicleclass] call ws_fnc_createVehicle;
Full:
[pos,side,"vehicleclass",["option1","option2"],[no of guards,["guardclasses"],loaded],["BEHAVIOUR","COMBATMODE"],{code}] call ws_fnc_createVehicle

RETURNS
[created vehicle,group of vehicle,initially parsed arguments]

PARAMETERS
1. position, can be array, object or marker											| MANDATORY
2. Side as west,east,resistance or civilian OR existing group		 							| MANDATORY
3. legit vehicleclass														| MANDATORY
4. Array of strings to define additional vehicle settings:					| OPTIONAL - can be empty, order does not matter
	. "improved" - improved vehicle behaviour as per ws_fnc_betterVehicle
	. "disableTIEquipment" - disables thermal imaging optics
	. "clearcargo" - clears the vehicles cargo space
	. "flying"	- vehicle is spawned as flying
  	. "lockall","lockturret","lockdriver","lockcargo" - locks the entire vehicle or the corresponding seats
  	. "v_car","v_ifv","v_tr" - F2/F3 only. Loads the vehicle with the faction-specific cargo
5. Array to define units guarding and loaded in the vehicle:		| OPTIONAL - can be empty, default is no guards
	5.1. number of guards (int > 0)
 	5.2. array with classnames of possible guard units
 	5.3. bool wether guards are loaded into the vehicle			| If more guards than cargo seats are spawned the units outside are put into their own group next to the vehicle
6. code that is executed after the vehicle is spawned			| OPTIONAL - executed as [_veh,_vehgrp,_this] spawn _code; Code has to be string or code
*/

/* EXAMPLES
 ["base",resistance,"HMMWV_M2"] call ws_fnc_createVehicle; - spawn a M2 HMMWV at marker base belonging to side independent

[getPos t2,GrpOpfHQ,"BMP3",["lockturret","clearcargo"],[5,["RU_Soldier_2","RU_Soldier_1"],true]] call ws_fnc_createVehicle; - Spawn a BMP3 at object t2 that belongs to the group GrpOPFHQ, has a locked turret and empty cargo and 5 soldiers loaded inside.
*/

/*
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






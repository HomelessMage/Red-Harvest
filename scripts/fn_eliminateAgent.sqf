params ["_agentPosition"];
_agentPosition = _this select 0;



_agentGroup = createGroup CIVILIAN;
_agent = _agentGroup createUnit ["UK3CB_CHC_C_ACT", _agentPosition, [], 0, "NONE"];
// _agent = "UK3CB_CHC_C_ACT" createUnit [_agentPosition, _agentGroup];
["ace_captives_setHandcuffed",[_agent, true]] call CBA_fnc_globalEvent;

/*
PARAMETERS:
1. Center of town. Can be marker, object or location    								| MANDATORY - string (markername) or object name
2. Radius of area to be considered														| MANDATORY - int
3. Side of units to spawn																| MANDATORY - side (east, west, independent, civilian)
4. Number of units.																		| OPTIONAL - number - default is No. of available buildings/4
5. threshold of building positions that can be occupied in the buildings in the area	| OPTIONAL - number between 1 (=100%) and 0, default is set below
6. Array of classes to spawn															| OPTIONAL - array w. strings  - default are classes defined below

EXAMPLE
["mkrOutpost",50,resistance] call ws_fnc_createGarrison; - his will create units in buildings 50m around the marker named "mkrOutpost". The number of units will the the number of buildings in the radius divided by 2. The classes of the units will be taken from the default array (by default light riflemen).

[UnitNATO_General,150,west,50,0.7,["B_Soldier_AR","B_Soldier_GL"]] call ws_fnc_createGarrison; - Place 50 NATO soldiers in buildings in a 150m radius around the Object (unit) named UnitNATO_General. All of them will be either AT or Grenadier. Only fill the buildings to 70% percent.
*/
// _garrisonToSpawn = [5, 10] call BIS_fnc_randomInt;
// [_agentPosition,25,EAST,_garrisonToSpawn,1,["UK3CB_CCM_O_OFF", 
// "UK3CB_CCM_O_RIF_1", 
// "UK3CB_CCM_O_RIF_2", 
// "UK3CB_CCM_O_RIF_BOLT", 
// "UK3CB_CCM_O_TL", 
// "UK3CB_CCM_O_RIF_LITE"]] call ws_fnc_createGarrison;


_randomIndexEAST = str round(random 1000);
_taskDescription = ["Необходимо вывезти нашего агента из зоны боевых действий.", "Спасти агента"];

_randomIndexRESISTANCE = str round(random 1000);
_taskDescriptionRESISTANCE = [localize "STR_TAG_killAgentTaskDescription", localize "STR_TAG_killAgentTaskName"];

_randomIndexWEST = str round(random 1000);
_taskDescriptionWEST = [localize "STR_TAG_killAgentTaskDescription", localize "STR_TAG_killAgentTaskName"];


[EAST, _randomIndexEAST, _taskDescription, _agent, "CREATED", -1, false, "Defend", false] call BIS_fnc_taskCreate;
[RESISTANCE, _randomIndexRESISTANCE, _taskDescriptionRESISTANCE, _agent, "CREATED", -1, false, "Kill", false] call BIS_fnc_taskCreate;
[WEST, _randomIndexWEST, _taskDescriptionWEST, _agent, "CREATED", -1, false, "Kill", false] call BIS_fnc_taskCreate;



_agentTrigger = createTrigger ["EmptyDetector", _agentPosition];
_agentTrigger setTriggerArea [300, 300, 0, false];


waitUntil {(!alive _agent) or !(_agent inArea _agentTrigger);};

if (!alive _agent) exitWith {
	[_randomIndexEAST, "FAILED"] call BIS_fnc_taskSetState;
	[_randomIndexRESISTANCE, "SUCCEEDED"] call BIS_fnc_taskSetState;
	[_randomIndexWEST, "SUCCEEDED"] call BIS_fnc_taskSetState;
	[RESISTANCE, 1500] call HMG_fnc_giveMoneyToSide;
	[WEST, 1500] call HMG_fnc_giveMoneyToSide;
	["Награда за ликвидацию агента: 1500Р. Деньги отправлены на банковский счёт."] remoteExec ["systemChat", [WEST, RESISTANCE]];
};

// if (!alive _agent) exitWith {};

waitUntil {!(_agent inArea _agentTrigger);};

while {alive _agent} do {
	if (_agent inArea gradTriggerEAST) exitWith {
		[_randomIndexEAST, "SUCCEEDED"] call BIS_fnc_taskSetState;
		[_randomIndexRESISTANCE, "FAILED"] call BIS_fnc_taskSetState;
		[_randomIndexWEST, "FAILED"] call BIS_fnc_taskSetState;
		[EAST, 3000] call HMG_fnc_giveMoneyToSide;
		[WEST, 1500] call HMG_fnc_giveMoneyToSide;
		["Награда за эвакуацию агента: 3000Р. Деньги отправлены на банковский счёт."] remoteExec ["systemChat", EAST];
		deleteVehicle _agent;
	};
	sleep 60;
};









params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
// Medic = 1
// Doctor = 2
_newUnit setVariable ["ace_medical_medicclass", 0, true];
_newUnit setUnitTrait ["explosiveSpecialist", false];
_newUnit setUnitTrait ["engineer", false];
_newUnit setVariable ["CombatClass", nil];

// [_newUnit] call hmg_fnc_generateIdentity;
[_newUnit] execVM "scripts\generateNewIdentity.sqf"
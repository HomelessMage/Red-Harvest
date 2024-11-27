params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

execVM "modules\omzh_script_base\zeus\curator.sqf";
_newUnit removeAllEventHandlers "HIT";

_newUnit setVariable ["ace_medical_medicclass", 0, true];
_newUnit setUnitTrait ["explosiveSpecialist", false];
_newUnit setUnitTrait ["engineer", false];
_newUnit setVariable ["CombatClass", nil];

[_newUnit] execVM "scripts\generateNewIdentity.sqf"
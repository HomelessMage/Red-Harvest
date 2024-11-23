params ["_unit"];
_unit playAction "Medic";
sleep 5;
[_unit] call ace_medical_treatment_fnc_fullHealLocal;
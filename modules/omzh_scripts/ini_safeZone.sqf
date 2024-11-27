handleShootSafeZone = player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
    if ((_unit inArea nfz_1) or (_unit inArea nfz_2)) then {
        deleteVehicle _projectile;
        if (_unit == _unit) then {
            endMission "shoot";
        };
    };
}];
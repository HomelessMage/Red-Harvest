params ["_unit"];

// Не выполняем на HC
if (!hasInterface) exitWith {};

systemChat "Получение информации о личности игрока";
sleep 10;

if (!isNil {_unit getVariable "Name"}) exitWith {
	_passportType = _unit getVariable "grad_passport_passportRsc";
	switch (_passportType) do {
		case "cdfPassport": { 
			titleText [
				(format [
					"<t color='#ffffff' size='3'>" +
					"<img image='images\WEST.jpg' />" +
					"</t>" +
					"<br />" +
					"<t color='#ffffff' size='2'>" +
					"%1" +
					"<br />" +
					" %2, %3" +
					"</t>" +
					"<br />" +
					"<t color='#00ff2a' size='2'>" +
					"ВЫСАДКА" +
					"</t>",
					_unit getVariable "Name",
					_unit getVariable ["CombatClass", "Призывник"],
					_unit getVariable "SquadAssignment"
					]
				),
				"PLAIN DOWN",
				-1,
				true,
				true
			];
		};
		case "chdkzPassport": { 
			titleText [
				(format [
					"<t color='#ffffff' size='3'>" +
					"<img image='images\EAST.jpg' />" +
					"</t>" +
					"<br />" +
					"<t color='#ffffff' size='2'>" +
					"%1" +
					"<br />" +
					" %2, %3" +
					"</t>" +
					"<br />" +
					"<t color='#00ff2a' size='2'>" +
					"ВЫСАДКА" +
					"</t>",
					_unit getVariable "Name",
					_unit getVariable ["CombatClass", "Призывник"],
					_unit getVariable "SquadAssignment"
					]
				),
				"PLAIN DOWN",
				-1,
				true,
				true
			];
		};
		case "rfPassport": { 
			titleText [
				(format [
					"<t color='#ffffff' size='3'>" +
					"<img image='images\RF.jpg' />" +
					"</t>" +
					"<br />" +
					"<t color='#ffffff' size='2'>" +
					"%1" +
					"<br />" +
					" %2, %3" +
					"</t>" +
					"<br />" +
					"<t color='#00ff2a' size='2'>" +
					"ВЫСАДКА" +
					"</t>",
					_unit getVariable "Name",
					_unit getVariable ["CombatClass", "Призывник"],
					_unit getVariable "SquadAssignment"
					]
				),
				"PLAIN DOWN",
				-1,
				true,
				true
			];
		};
		default { };
	};
 };

[_unit] execVM "scripts\generateNewIdentity.sqf";
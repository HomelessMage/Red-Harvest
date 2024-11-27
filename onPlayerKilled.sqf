//A3\Missions_F_EPA\data\sounds\combat_deafness
// https://vk.com/audio2386993_296546388_80b689e650676091f3

params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];





[] spawn 
{		
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [20];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 12;  		
};	

// sleep 3.5;
// cutText ["","BLACK FADED",1];


_passportType = _oldUnit getVariable "grad_passport_passportRsc";

switch (_passportType) do {
	case "cdfPassport": { 
		titleText [
			(format [
				"<t color='#ffffff' size='5'>" +
				"<img image='images\WEST.jpg' />" +
				"</t>" +
				"<t color='#ffffff' size='2'>" +
				"<br />" +
				"Боец: %1" +
				"<br />" +
				"Статус: " +
				"</t>" +
				"<t color='#ff0000' size='2'>" +
				"ЛИКВИДИРОВАН" +
				"</t>",
				_oldUnit getVariable "Name"
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
				"<t color='#ffffff' size='5'>" +
				"<img image='images\EAST.jpg' />" +
				"</t>" +
				"<t color='#ffffff' size='2'>" +
				"<br />" +
				"Боец: %1" +
				"<br />" +
				"Статус: " +
				"</t>" +
				"<t color='#ff0000' size='2'>" +
				"ЛИКВИДИРОВАН" +
				"</t>",
				_oldUnit getVariable "Name"
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
				"<t color='#ffffff' size='5'>" +
				"<img image='images\RF.jpg' />" +
				"</t>" +
				"<t color='#ffffff' size='2'>" +
				"<br />" +
				"Боец: %1" +
				"<br />" +
				"Статус: " +
				"</t>" +
				"<t color='#ff0000' size='2'>" +
				"ЛИКВИДИРОВАН" +
				"</t>",
				_oldUnit getVariable "Name"
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



// titleText [
// 	(format [
// 		"<t color='#ffffff' size='5'>" +
// 		"<img image='images\%1.jpg' />" +
// 		"</t>" +
// 		"<t color='#ffffff' size='2'>" +
// 		"<br />" +
// 		"Боец: %2" +
// 		"<br />" +
// 		"Статус: " +
// 		"</t>" +
// 		"<t color='#ff0000' size='2'>" +
// 		"ЛИКВИДИРОВАН" +
// 		"</t>",
// 		str playerSide,
// 		// toUpper ((getPlayerID player) getUserInfo 3)
// 		_oldUnit getVariable "Name"
// 		]
// 	),
// 	"PLAIN DOWN",
// 	-1,
// 	true,
// 	true
// ];


// _randomIndex = random 100;
// if (_randomIndex > 75) then {
// 	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_KIA" + "</t>", "PLAIN", -1, true, true];
// };
// if (_randomIndex > 50 && _randomIndex < 75) then {
// 	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_MIA" + "</t>", "PLAIN", -1, true, true];
// };
// if (_randomIndex > 25 && _randomIndex < 50) then {
// 	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_POW" + "</t>", "PLAIN", -1, true, true];
// };
// if (_randomIndex < 25) then {
// 	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_WIA" + "</t>", "PLAIN", -1, true, true];
// };
params ["_unit", "_side"];

_unit createDiarySubject ["infoPage","Информация"];

_entries = [
	[
		"Ссылки",
		"Сервер Teamspeak: zvezdarp.duckdns.org" + "<br />" +
		"Сервер Discord: https://discord.gg/6Kk74CR"
	],
	[
		"Лор",
		"<img image='images\EAST.jpg' width='15' height='15' />" + " " +
		"<font size='15' face='PuristaBold'>" + 
		"Чернорусское Движение Красной Звезды" + "<br />" +
		"</font>" +
		"<font size='10' face='PuristaBold'>" + 
		"Чернорусская коммунистическая вооружённая организация, которая пыталась отделиться от Республики Черноруссия, войдя в состав Российской Федерации как Республика Южная Загория." +
		"</font>" + "<br />" + "<br />" + 

		"<img image='images\RF.jpg' width='15' height='15' />" + " " +
		"<font size='15' face='PuristaBold'>" + 
		"Наёмники Российской Федерации" + "<br />" +
		"</font>" +
		"<font size='10' face='PuristaBold'>" + 
		"Информация отсутствует." + 
		"</font>" + "<br />" + "<br />" + 

		"<img image='images\WEST.jpg' width='15' height='15' />" + " " +
		"<font size='15' face='PuristaBold'>" +
		"Чернорусские Силы Обороны" + "<br />" +
		"</font>" +
		"<font size='10' face='PuristaBold'>" + 
		"Государственная военная организация Республики Чернарусь, предназначенная для отражения агрессии, направленной против неё, для вооружённой защиты территориальной целостности и неприкосновенности её территории, а также для выполнения задач в соответствии с международными договорами." +
		"</font>"
	]
];

{
	_unit createDiaryRecord ["infoPage", _x];
} forEach _entries;

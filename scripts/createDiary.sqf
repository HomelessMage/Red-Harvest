params ["_unit", "_side"];

_unit createDiarySubject ["infoPage","Информация"];

_entries = [
	[
		"Ссылки",
		"Сервер Teamspeak: zvezdarp.duckdns.org" + "<br />" +
		"Сервер Discord: https://discord.gg/6Kk74CR"
	],
	[
		"Управление",
		"Взаимодействие с банкоматом: T" + "<br />" +
		"Открыть / закрыть транспорт: Insert" + "<br />" +
		"Дать наличные: Home" + "<br />" +
		"Дать ключ: Delete" + "<br />" +
		"Переключение интерфейса: * (NUMPAD)"
	// atmKey = 0x14;
	// lockUnlockKey = 0xD2;
	// giveMoneyKey = 0xC7;
	// giveKeyKey = 0xD3;
	// adminKey = 0x46;
	// hudKey = 0x37;
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

params ["_newUnit"];

_firstNames = ["Александр", "Алексей", "Анатолий", "Андрей", "Антон", "Аркадий", "Арсений", "Артём", "Артур", "Афанасий", "Богдан", "Борис", "Вадим", "Валентин", "Валерий", "Василий", "Вениамин", "Виктор", "Виталий", "Владимир", "Владислав", "Влас", "Всеволод", "Вячеслав", "Геннадий", "Георгий", "Герман", "Глеб", "Григорий", "Даниил", "Денис", "Дмитрий", "Евгений", "Егор", "Захар", "Иван", "Игнат", "Игорь", "Илья", "Иннокентий", "Иосиф", "Кирилл", "Константин", "Лаврентий", "Лев", "Леонид", "Лука", "Макар", "Максим", "Марк", "Матвей", "Михаил", "Никита", "Николай", "Олег", "Павел", "Пётр", "Роберт", "Родион", "Роман", "Савелий", "Святослав", "Семён", "Сергей", "Станислав", "Степан", "Тимофей", "Тимур", "Фёдор", "Эдуард", "Юрий", "Ярослав"];
_lastNames = ["Акифьев", "Андрейцев", "Арзубов", "Бавин", "Бастрюков", "Белоногов", "Бодренков", "Бужанинов", "Ванякин", "Вердеревский", "Вологдин", "Галимов", "Головешкин", "Грач", "Дамаскинский", "Димуров", "Еманов", "Желторот", "Залесский", "Зуев", "Инютин", "Канюков", "Кельсиев", "Коган", "Конов", "Котляров", "Крыгин", "Кучков", "Лезгунов", "Майорский", "Мартьянов", "Неелов", "Ноздреватый", "Онушкин", "Пальгунов", "Пельменев", "Пигулин", "Подкаменский", "Постовалов", "Пшенников", "Рогалев", "Рябошапка", "Сапельников", "Семенчиков", "Силкин", "Слепенков", "Сорогин", "Страшко", "Сюртуков", "Тетерин", "Урицкий", "Федутинов", "Фомичев", "Хмель", "Церенчиков", "Чернев", "Шандыба", "Широкобород", "Юстов", "Ястремский"];

_locationsChernarus = [
	"Балота, РЧ",
	"Берёзино, РЧ",
	"Бор, РЧ",
	"Выбор, РЧ",
	"Вышное, РЧ",
	"Гвоздно, РЧ",
	"Горка, РЧ",
	"Гришино, РЧ",
	"Гуглово, РЧ",
	"Долина, РЧ",
	"Дрожино, РЧ",
	"Дубровка, РЧ",
	"Зеленогорск, РЧ",
	"Кабанино, РЧ",
	"Камышово, РЧ",
	"Козловка, РЧ",
	"Комарово, РЧ",
	"Красностав, РЧ",
	"Лопатино, РЧ",
	"Могилёвка, РЧ",
	"Мста, РЧ",
	"Надеждино, РЧ",
	"Нижнее, РЧ",
	"Новиград, РЧ",
	"Новый Собор, РЧ ",
	"Ольша, РЧ",
	"Орловец, РЧ",
	"Павлово, РЧ",
	"Павлово, РЧ",
	"Петровка, РЧ",
	"Поляна, РЧ",
	"Пуста, РЧ",
	"Пустошка, РЧ",
	"Солнечный, РЧ",
	"Сосновка, РЧ",
	"Старое, РЧ",
	"Старый Собор, РЧ ",
	"Тулга, РЧ",
	"Хельм, РЧ",
	"Черногорск, РЧ",
	"Шаховка, РЧ",
	"Электрозаводск, РЧ"
];

_locationsRussia = [
	"Москва, РФ",
	"Санкт-Петербург, РФ",
	"Севастополь, РФ",
	"Симферополь, РФ",
	"Краснодар, РФ",
	"Ростов-на-Дону, РФ",
	"Грозный, РФ",
	"Омск, РФ",
	"Казань, РФ",
	"Томск, РФ",
	"Владивосток, РФ",
	"Иркутск, РФ",
	"Уфа, РФ",
	"Екатеринбург, РФ",
	"Нижний Новгород, РФ",
	"Великий Новгород, РФ",
	"Калининград, РФ"
];

_randomFirstName = selectRandom _firstNames;
_randomLastName = selectRandom _lastNames;
_randomName = (_randomFirstName) + " " + (_randomLastName);

_newUnit setVariable ["Name", _randomName, true];
_newUnit setVariable ["grad_passport_firstName", _randomFirstName, true];
_newUnit setVariable ["grad_passport_lastName", _randomLastName, true];

if (playerSide == WEST) then {
	_newUnit setVariable ["grad_passport_passportRsc","cdfPassport", true];
	_randomLocation = selectRandom _locationsChernarus;
	_newUnit setVariable ["grad_passport_placeOfBirth", _randomLocation, true];
};

if (playerSide == EAST) then {
	_randomPassport = selectRandom ["chdkzPassport", "rfPassport"];

	if (_randomPassport == "chdkzPassport") then {
		_newUnit setVariable ["grad_passport_passportRsc","chdkzPassport", true];
		_randomLocation = selectRandom _locationsChernarus;
		_newUnit setVariable ["grad_passport_placeOfBirth", _randomLocation, true];
	};
	if (_randomPassport == "rfPassport") then {
		_newUnit setVariable ["grad_passport_passportRsc","rfPassport", true];
		_randomLocation = selectRandom _locationsRussia;
		_newUnit setVariable ["grad_passport_placeOfBirth", _randomLocation, true];
	};

};



_passportType = _newUnit getVariable "grad_passport_passportRsc";

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
					_newUnit getVariable "Name",
					_newUnit getVariable ["CombatClass", "Призывник"],
					_newUnit getVariable "SquadAssignment"
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
					_newUnit getVariable "Name",
					_newUnit getVariable ["CombatClass", "Призывник"],
					_newUnit getVariable "SquadAssignment"
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
					_newUnit getVariable "Name",
					_newUnit getVariable ["CombatClass", "Призывник"],
					_newUnit getVariable "SquadAssignment"
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
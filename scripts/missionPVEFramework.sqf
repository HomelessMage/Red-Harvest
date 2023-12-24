// params ["_locationType"];
// if (!isServer) exitWith {};


_locationType = "NameVillage";

_cfgPath = configFile >> "CfgWorlds" >> worldName >> "Names";
_cfgClasses = [];
{
    _className = configName (_x);
    if (getText (_cfgPath >> _className >> "type") == _locationType) then {
        _cfgClasses pushBack _className;
    };
} forEach ("true" configClasses _cfgPath);

_locationsArray = [];
{
    _location = _x;
    _locationPos = getArray (_cfgPath >> _location >> "position");
    _locationsArray pushBack _locationPos;
} forEach _cfgClasses;


// ["Тулга","Мста","Старое","Шаховка","Долина","Орловец","Бор","Новый Собор","Кабанино","Могилевка","Надеждино","Гуглово","Камышово","Пуста","Дубровка","Хельм","Ольша","Гвоздно","Гришино","Рогово","Погоревка","Пустошка","Козловка","Поляна","Балота","Комарово","Каменка","Мышкино","Павлово","Лопатино","Вышное","Пригородки","Дрожино","Сосновка","Нижнее","Пулково","Zvir","Bogtyrka","Vavilovo","Zabolotye","Sinystok","Topolniki","Tisy","Zaprudnoe","Ratnoe","Polesovo","Skalka","Krasnoe","Stary Yar","Kamensk","Kalinovka","Arsenovo","Svergino","Nagornoe","Karmanovka","Dobroye","Belaya Polyana","Turovo","Berezhki"]
// Убираю не локализованные места 
_locationsArray resize 35;


// Если _locationsArray пустой то НЕ выполняем код ниже.
if (_locationsArray isEqualTo []) exitWith {};

[_locationsArray, _locationType] execVM "scripts\WEST\liberateMission.sqf";


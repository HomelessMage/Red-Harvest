params ["_player", "_didJIP"];
// Temporary fix for Advanced Movement
AVS_IsUseRollOnEnd = false;
// Меню выдачи денег для Зевса
[_player] execVM "scripts\addZeusMenu.sqf";
// Получение информации о личности игрока
[_player] execVM "scripts\getExistingIdentity.sqf";
// Создание DiaryRecord
[_player, playerSide] execVM "scripts\createDiary.sqf";




params ["_player", "_didJIP"];

// Не выполняем код клиента на HC
if(!hasInterface) exitWith {}; 

[] execVM "modules\hoverguy\setup\fn_clientInitialization.sqf";



// Temporary fix for Advanced Movement
AVS_IsUseRollOnEnd = false;
// Меню выдачи денег для Зевса
[_player] execVM "scripts\addZeusMenu.sqf";
// Получение информации о личности игрока
[_player] execVM "scripts\getExistingIdentity.sqf";
// Получении информации об отряде игрока
[_player] execVM "scripts\handleSquadLogic.sqf";
// Создание DiaryRecord
[_player, playerSide] execVM "scripts\createDiary.sqf";




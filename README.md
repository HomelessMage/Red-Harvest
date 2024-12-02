## TODO:
* Добавить в обработку функций `getExistingIdentity` и `generateNewIdentity` переменную `CombatClass`
* Добавить Д-30 OPFOR
* Добавить глушители в оба магазина
* Добавить статичные анимации
---
## DONE:
* Отключил анимацию попадания по игроку
* Отключил подавление себя во время стрельбы
* Отключил медицинское ИИ
* Включил addon options для меню взаимодействия
* Добавил сапёрные лопаты всем классам
* Добавил рации сторон
* Добавил в арсенал базовый список предметов в дополнение к предметам комплекта
* Подключил ещё два headless клиента для распределения нагрузки
---
```
init* scripts
    init.sqf
    init.sqs
    init3DEN.sqf
    initIntro.sqf
    initIntro.sqs
    initJIPcompatible.sqf
    initPlayerLocal.sqf
    initPlayerServer.sqf
    initServer.sqf

(on)Player* scripts
    onPlayerKilled.sqf
    onPlayerKilled.sqs
    onPlayerRespawn.sqf
    onPlayerRespawn.sqs
    onPlayerRespawnAsSeagull.sqs
    onPlayerRespawnOtherUnit.sqs
    onPlayerResurrect.sqs
    playerKilledScript.sqs
    playerRespawnScript.sqs
    playerRespawnSeagullScript.sqs
    playerRespawnOtherUnit.sqs
    playerResurrectScript.sqs
```

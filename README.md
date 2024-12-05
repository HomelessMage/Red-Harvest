```
traceback:
CallExtension loaded:   extDB3 (/home/steam/games/arma3/servermods/extDB3//extDB3_x64.so) []
"extDB3 Loaded"
"extDB3: Version: 1.032"
"extDB3: Error Failed to Connect to Database: [0,""Database Connection Error""]"

extdb log:
extDB3: https://bitbucket.org/torndeco/extdb3/wiki/Home
extDB3: Version: 1.032
extDB3: Linux Version
Message: All development for extDB3 is done on a Linux Dedicated Server
Message: If you would like to Donate to extDB3 Development
Message: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=2SUEFTGABTAM2
Message: Also leave a message if there is any particular feature you would like to see added.
Message: Thanks for all the people that have donated.
Message: Torndeco: 18/05/15


extDB3: Found extdb3-conf.ini
extDB3: Detected 16 Cores, Setting up 6 Worker Threads
extDB3: ...
extDB3: ...
extDB3: ...
extDB3: ...
extDB3: ...
extDB3: ...


[18:42:56 +03:00] [Thread 132371] extDB3: MariaDBConnectorException: HG: Can't initialize character set utf8 (path: /usr/share/mysql/charsets/)


```



## TODO:
* Добавить Д-30 OPFOR
* Добавить глушители в оба магазина
* Добавить статичные анимации
---
## DONE:
* Добавить в обработку функций `getExistingIdentity` и `generateNewIdentity` переменную `CombatClass`
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

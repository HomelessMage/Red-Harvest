params [["_waitTime","?"]];

_message = parseText format ["Прогресс будет сохранён через" + " %1 " + "секунд" + "<br/><t color = '#ff3333'>" + "Покиньте транспорт!" + "</t>",_waitTime];
[_message,0,0,4,0.3] spawn BIS_fnc_dynamicText;

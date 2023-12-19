params [["_waitTime","?"]];

_message = parseText format [localize "STR_TAG_progressWillBeSavedIn" + " %1 " + localize "STR_TAG_seconds" + "<br/><t color = '#ff3333'>" + localize "STR_TAG_leaveTransport" + "</t>",_waitTime];
[_message,0,0,4,0.3] spawn BIS_fnc_dynamicText;

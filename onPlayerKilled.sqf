//A3\Missions_F_EPA\data\sounds\combat_deafness
playSound "deathmusic";

[] spawn 
{		
		"dynamicBlur" ppEffectEnable true;   
		"dynamicBlur" ppEffectAdjust [20];   
		"dynamicBlur" ppEffectCommit 0;     
		"dynamicBlur" ppEffectAdjust [0.0];  
		"dynamicBlur" ppEffectCommit 12;  		
};	

sleep 3.5;
cutText ["","BLACK FADED",2];

_randomIndex = random 100;

if (_randomIndex > 75) then {
	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_KIA" + "</t>", "PLAIN", -1, true, true];
};
if (_randomIndex > 50 && _randomIndex < 75) then {
	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_MIA" + "</t>", "PLAIN", -1, true, true];
};
if (_randomIndex > 25 && _randomIndex < 50) then {
	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_POW" + "</t>", "PLAIN", -1, true, true];
};
if (_randomIndex < 25) then {
	titleText ["<t color='#ff0000' size='6'>" + localize "STR_TAG_WIA" + "</t>", "PLAIN", -1, true, true];
};

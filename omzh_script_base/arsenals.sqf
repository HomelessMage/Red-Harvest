 // -------------- Подразделение --------------
restrictedSec = [];
restricted = [];
 // -------------- ЧДКЗ ---------------

CHDKZ_class = [] spawn /// 
{
	_boxes = [OPFOR_ARSENAL];
	{
	_box = _x;
	_list = [];
	_list = _list - restricted - restrictedSec;
	[_box, _list] call ace_arsenal_fnc_initBox;
	} forEach _boxes; 
};

 // -------------- ЧСО --------------

CHSO_class = [] spawn /// 
{
	_boxes = [BLUFOR_ARSENAL];
	{
	_box = _x;
	_list = [];
	_list = _list - restricted - restrictedSec;
	[_box, _list] call ace_arsenal_fnc_initBox;
	} forEach _boxes;
};

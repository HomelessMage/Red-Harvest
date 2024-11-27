#define MAX_TIME_OUT 20
#define CYCLE_TIME 1.24

if (isDedicated) exitWith {};
sleep 1;

private ["_shrp_check_cond"];
params [["_shrp_ra_allowed",[],[[]]],["_shrp_ra_restricted",[],[[]]],["_shrp_ra_priority",true,[true]],["_shrp_ra_air",false,[true]],["_shrp_allow_free",true,[true]]];

_shrp_fnc_notify3 = {
	 [ format["<t size='0.75' color='#ffff00'>%1</t>",_this], 0,1,5,0,0,301] spawn bis_fnc_dynamicText;
};

_shrp_check_cond = {
	params [["_shrp_ra_allowed",[],[[]]],["_shrp_ra_restricted",[],[[]]],["_shrp_ra_priority",true,[true]],["_shrp_ra_air",false,[true]],["_shrp_allow_free",true,[true]]];
	_ret = _shrp_allow_free;
	if (!_shrp_ra_air && {!(isTouchingGround (vehicle player))}) exitWith {_ret;};
	private ["_zones","_return"];
	if (_shrp_ra_priority) then {_zones = [_shrp_ra_restricted,_shrp_ra_allowed]; _return = [false,true]; } else {_zones = [_shrp_ra_allowed, _shrp_ra_restricted]; _return = [true, false];};
	{
		if ((vehicle player) in list _x) then {_ret = (_return select 0)};
	} foreach (_zones select 0);
	{
		if ((vehicle player) in list _x) then {_ret = (_return select 1)};
	} foreach (_zones select 1);
	_ret
};


_timeOutZone = 0;

while {alive player} do {
	if (_this call _shrp_check_cond) then {
		if (_timeOutZone != 0) then {
			_timeOutZone = 0;
			("Вы вернулись в игровую зону.") call _shrp_fnc_notify3;
		};
	} else {
		format ["У вас %1 секунд на возвращение назад в игровую зону!",[0 max (MAX_TIME_OUT - _timeOutZone),"MM:SS"] call BIS_fnc_secondsToString] call _shrp_fnc_notify3;

		if (_timeOutZone > MAX_TIME_OUT) then {
			hint "Вы были уничтожены за покидание игровой зоны!";
			sleep 1.;
			player setDamage 1;
		};
		_timeOutZone = _timeOutZone + CYCLE_TIME;
	};
	sleep CYCLE_TIME;
};

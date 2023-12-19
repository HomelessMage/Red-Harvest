params ["_flag"];
_afterCommand = {};

_fncOwnFlag = {
	params ["_winSide"];
	_flagPath = "%1.paa";
	_fileFlag = switch _winSide do {
		case west: {
			"ca\ca_e\data\flag_cdf_co"
		};
		case east: {
			"ca\data\flag_chdkz_co"
		};
		case independent: {
			"ca\data\flag_napa_co"
		};
		default {
			"uk3cb_factions\addons\uk3cb_factions_chc\flag\chc_flag_co"
		}
	};
	format [_flagPath, _fileFlag];
};
_actionParams = ["_flag", "_caller", "_actionId", "_arguments"];

_flag setFlagAnimationPhase 1;
_flag setFlagTexture (civilian call _fncOwnFlag);
_flag setVariable ["TER_flagSide", civilian];
_icon = "\a3\ui_f\data\igui\cfg\holdactions\holdaction_takeoff2_ca.paa";
_duration = 10;
_addID = [_flag, localize "STR_TAG_captureFlag", _icon, _icon,
	"_target getVariable [""TER_flagSide"", civilian] != side _this",
	"true",
	{},
	{
		params ["_flag", "_caller", "_actionId", "_arguments", "_progress", "_maxProgress"];
		_arguments params ["_actionParams", "_fncOwnFlag", "_afterCommand"];
		_relProgress = _progress/_maxProgress;
		if (_relProgress < 0.5) then {
			_flag setFlagAnimationPhase (1-(2*_relProgress));
		} else {
			if (_relProgress == 0.5) then {
				_flag setFlagTexture (side _caller call _fncOwnFlag)
			};
			_flag setFlagAnimationPhase ((2*_relProgress)-1);
		};
	},
	{
		params ["_flag", "_caller", "_actionId", "_arguments"];
		_arguments params ["_actionParams", "_fncOwnFlag", "_afterCommand"];
		_flag setVariable ["TER_flagSide", side _caller];
		[] call _afterCommand;
	},
	{
		params ["_flag", "_caller", "_actionId", "_arguments"];
		_arguments params ["_actionParams", "_fncOwnFlag", "_afterCommand"];
		_flag setFlagAnimationPhase 1;
		_side = _flag getVariable ["TER_flagSide", civilian];
		_flag setFlagTexture (_side call _fncOwnFlag);
	},
[_actionParams, _fncOwnFlag, _afterCommand], _duration, 1.5, false] call BIS_fnc_holdActionAdd;

_addID
private ["_handwriting"];
params ["_handwriting"];

if (isNil "_handwriting") then {
    _note = player getVariable ["GRAD_leaveNotes_activeNote", objNull];
    switch (typeName _note) do {
        case ("OBJECT"): {
            _handwriting = _note getVariable ["handwriting", ["",["",""]]];
        };

        case ("SCALAR"): {
            _nodeName = format ["GRAD_leaveNotes_myNotes_%1", _note];
            _handwriting = player getVariable [_nodeName + "_handwriting", ["",["",""]]];
        };

        default {
            _handwriting = ["",""];
        };
    };
};

_handwriting params ["_modifier", "_type"];
_type params ["_descriptor", "_font"];

_texts = [
    "Похоже на %1 %2.",
    "Почерк на этой записке похож на %1 %2.",
    "Почерк похож на %1 %2."
];


_myHandwriting = player getVariable ["GRAD_leaveNotes_handwriting",["",["",""]]];
_myHandwriting params ["_myModifier", "_myType"];
_myType params ["_myDescriptor", "_myFont"];

if (_myModifier == _modifier && _myDescriptor == _descriptor) then {
    hint "Похоже на мой почерк.";
} else {
    hint format [selectRandom _texts, _handwriting select 0, (_handwriting select 1) select 0];
};

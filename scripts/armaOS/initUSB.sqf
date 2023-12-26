/**
 * PUBLIC
 *
 * Adds a file to a given Device. Device could be a comupter or a flash drive.
 * Logs and displays an error message if file already exists; On other errors it throws an exception.
 * Needs to run on server.
 *
 * Arguments:
 * 1: Device <OBJECT>
 * 2: Path <STRING>
 * 3: Content <STRING>
 * 4: isCode <BOOL>
 * 5: Owner <STRING>
 * 6: Permissions <[ARRAY]>
 * 7: isEncrypted <BOOL> Optional
 * 8: encryptionAlgorithm <STRING> Optional
 * 9: encryptionKey <STRING> Optional
 *
 * Results:
 * none
 *
 * Examples:
 * [_device, "/tmp/new/example.txt", "Lorem ipsum dolor sit amet", false, "root", [[false, true, true], [false, true, true]]] call AE3_filesystem_fnc_device_addFile;
 * [_device, "/test.prg", "hint 'hello world';", true, "root", [[true, false, false], [true, false, false]]] call AE3_filesystem_fnc_device_addFile;
 * [_device, "/tmp/password.txt", "secret", false, "root", [[false, true, true], [false, true, true]], true, "caesar", "13"] call AE3_filesystem_fnc_device_addFile;
 *
 * Permissions:
 * [[owner execute, owner read, owner write], [everyone execute, everyone read, everyone write]]
 */


// _device = createVehicle ["Land_USB_Dongle_01_F_AE3", position player, [], 0, "CAN_COLLIDE"];

params ["_device"];
_device params ["_computer", "_options", "_commandName"];

if (!isServer) exitWith {};

[_device, "uavControl.cpp",
 	"
		params ['_computer', '_options', '_commandName'];	
		[_computer, _options, _commandName] execVM 'scripts\armaOS\uavControl.sqf';
	", 
	true, "root", [[true, false, false], [true, false, false]]
] call AE3_filesystem_fnc_device_addFile;

[_device, "radioJammer.cpp", 
 	"
		params ['_computer', '_options', '_commandName'];	
		[_computer, _options, _commandName] execVM 'scripts\armaOS\radioJammer.sqf';
	", 
	true, "root", [[true, false, false], [true, false, false]]
] call AE3_filesystem_fnc_device_addFile;
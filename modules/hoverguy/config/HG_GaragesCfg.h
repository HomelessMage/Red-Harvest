/*
    Author - HoverGuy
	GitHub - https://github.com/Ppgtjmad/SimpleShops
	Steam - https://steamcommunity.com/id/HoverGuy/
	Description - Defines available garages
	
	class YourGarageClass - Used as a param for the call
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the garage
		allowedTypes - ARRAY OF STRINGS - Allowed vehicle types to be retrieved from the garage, can be "Car"/"Truck"/"Tank"/"Air"/"Ship"/"Submarine" or mixed
		spawnPoints - ARRAY OF ARRAYS - Spawn positions (markers/positions)
		|- 0 - STRING - Display name in the dialog
		|- 1 - ARRAY OF MIXED - Markers/positions
		storePoint - STRING - Point (marker) where the vehicle should be placed to be able to store it, if left empty it will detect the nearest owned vehicle inside a storePointRadius around the player
		storePointRadius - INTEGER - Search radius (in meters) around the player, used if storePoint is empty
	};
*/

class HG_EASTGarage
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
    allowedTypes[] = {"Car", "Truck", "Tank"};
	spawnPoints[] = 
	{
		{"Гараж", {"OPFOR_GARAGE_1", "OPFOR_GARAGE_2", "OPFOR_GARAGE_3", "OPFOR_GARAGE_4"}}
	};
	storePoint = "OPFOR_GARAGE_1";
	storePointRadius = 100;
};

/*
class HG_WESTGarage
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
    allowedTypes[] = {"Car", "Truck", "Tank"};
	spawnPoints[] = 
	{
		{"Гараж", {"BLUFOR_GARAGE_1", "BLUFOR_GARAGE_2", "BLUFOR_GARAGE_3", "BLUFOR_GARAGE_4"}}
	};
	storePoint = "BLUFOR_GARAGE_1";
	storePointRadius = 25;
};
*/
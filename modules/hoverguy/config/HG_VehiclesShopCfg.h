/*
    Author - HoverGuy
	GitHub - https://github.com/Ppgtjmad/SimpleShops
	Steam - https://steamcommunity.com/id/HoverGuy/
	Description - Defines available vehicle shops
	
	class YourShopClass - Used as a param for the call, basically the shop you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the shop
		
		class YourShopCategory - Shop category, can be whatever you want
		{
			displayName - STRING - Category display name
			vehicles - ARRAY OF ARRAYS - Shop content
			|- 0 - STRING - Classname
			|- 1 - INTEGER - Price
			|- 2 - STRING - Condition that must return either true or false, if true the vehicle appears in the list else no
			spawnPoints - ARRAY OF ARRAYS - Spawn positions (markers/positions)
			|- 0 - STRING - Display name in the dialog
			|- 1 - ARRAY OF MIXED - Markers/positions
		};
	};
*/

/*
class HG_WESTShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "playerSide == WEST"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civilian
	{
	    displayName = "$STR_HG_SHOP_CIVILIAN";
		vehicles[] =
		{
		    {"C_SUV_01_F",15000,"true"}
		};
	    spawnPoints[] =
		{
			{"$STR_HG_MARKER_2",{"BLUFOR_HELIPAD"}}
		};
	};
	
	class Military
	{
	    displayName = "$STR_HG_SHOP_MILITARY";
		vehicles[] =
		{
		    {"B_MRAP_01_F",45000,"true"}
	    };
		spawnPoints[] =
		{
			{"$STR_HG_MARKER_2",{"BLUFOR_HELIPAD"}}
		};
	};
};
*/

class HG_EASTShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	class Military
	{
	    displayName = "$STR_HG_SHOP_MILITARY";
		vehicles[] =
		{
			{"ACM_O_SZAVB_Vehicle_UAZ", 5, "true"},
			{"ACM_O_SZAVB_Vehicle_UAZ_open", 5, "true"},
			{"ACM_O_SZAVB_Vehicle_UAZ_dshkm", 5, "true"},
			{"ACM_O_SZAVB_Vehicle_UAZ_spg9", 5, "true"}
	    };
		spawnPoints[] =
		{
			{"$STR_HG_MARKER_2", {"OPFOR_GARAGE_1", "OPFOR_GARAGE_2", "OPFOR_GARAGE_3", "OPFOR_GARAGE_4"}}
		};
	};
	/*
    class Civilian
	{
	    displayName = "$STR_HG_SHOP_CIVILIAN";
		vehicles[] =
		{
		    {"C_SUV_01_F", 15000, "true"}
		};
	    spawnPoints[] =
		{
			{"$STR_HG_MARKER_1", {"OPFOR_HELIPAD"}}
		};
	};
	*/
};
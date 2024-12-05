/*
    Author - HoverGuy
	GitHub - https://github.com/Ppgtjmad/SimpleShops
	Steam - https://steamcommunity.com/id/HoverGuy/
*/

class HG
{
	class AdminMenu
	{
		file = "modules\hoverguy\functions\client\AdminMenu";
		class adminMenuBtns {};
		class adminMenuListChanged {};
		class checkboxChanged {};
		class dialogOnLoadAdminMenu {};
		class refreshPlayers {};
		class refreshWhitelist {};
	};
	
	class AI
	{
		file = "modules\hoverguy\functions\client\AI";
	    class aiUnitSetup {};	
	};
	
	class ATM
	{
		file = "modules\hoverguy\functions\client\ATM";
		class atmBtns {};
		class atmReceived {};
		class atmRefresh {};
		class dialogOnLoadATM {};
	};
	
	class Dealer
	{
		file = "modules\hoverguy\functions\client\Dealer";
		class dealerListChanged {};
		class dealerSell {};
		class dialogOnLoadDealer {};
		class refreshDealer {};
	};
	
	class EVH
	{
		file = "modules\hoverguy\functions\client\EVH";
		class handleRating {};
		class inventoryClosed {};
		class inventoryOpened {};
		class loaded 
		{
			preInit = 1;
		};
		class keyDown {};
		class killed {};
		class respawn {};
		class take {};
	};
	
	class Garage
	{
		file = "modules\hoverguy\functions\client\Garage";
		class delVehicle {};
		class dialogOnLoadGarage {};
		class fillGarage {};
	    class garageSpawn {};
		class refreshGarage {};
		class storeVehicleClient {};
	};
	
	class GearShop
	{
		file = "modules\hoverguy\functions\client\GearShop";
		class buyGear {};
		class dialogOnLoadGear {};
		class dialogOnUnloadGear {};
		class dummy {};
		class fillGear {};
		class gearSelectionChanged {};
		class getCurrentGear {};
		class handleGear {};
		class reset {};
		class viewControl {};
		class xGearSelectionChanged {};
	};
	
	class Generic
	{
		file = "modules\hoverguy\functions\client\Generic";
		class addOrSubCash {};
		class addOrSubKills {};
		class addOrSubXP {};
		class arrayCount {};
	    class currencyToText {};
		class emptyVehicle {};
		class getConfig {};
		class hasEnoughMoney {};
		class isItBusy {};
		class isNumeric {};
		class lockOrUnlock {};
		class markers {};
		class moneyItem {};
		class nearbyATM {};
		class parseGear {};
		class paycheck {};
		class setOwner {};
		class setRank {};
	};
	
	class GiveKey
	{
		file = "modules\hoverguy\functions\client\GiveKey";
		class dialogOnLoadGiveKey {};
		class giveKeyBtns {};
		class refreshKeyCombo {};
		class refreshKeyList {};
	};
	
	class GiveMoney
	{
		file = "modules\hoverguy\functions\client\GiveMoney";
		class dialogOnloadGiveMoney {};
		class giveMoneyBtn {};
	};
	
	class HUD
	{
		file = "modules\hoverguy\functions\client\HUD";
		class HUD {};
	};
	
	class ItemsShop
	{
		file = "modules\hoverguy\functions\client\ItemsShop";
		class dialogOnLoadItems {};
		class dialogOnUnloadItems {};
		class handleItems {};
		class itemBtns {};
		class itemSelectionChanged {};
		class xItemSelectionChanged {};
	};
	
	class Server
	{
		file = "modules\hoverguy\functions\server";
		class activeReset {};
		class cleanup {};
		class clientToServer {};
		class deleteVehicle {};
		class disconnect {};
		class findIndex {};
		class getGear {};
		class getInventory {};
		class getType {};
		class getWhitelist {};
		class killedVehicle {};
		class lock {};
		class requestGarage {};
		class resetGarages {};
		class resetMoney {};
		class setInventory {};
		class spawnVehicle {};
		class storeVehicleServer {};
		class updateWhitelist {};
	};
	
	class Tags
	{
		file = "modules\hoverguy\functions\client\Tags";
		class playerTags {};
	};
	
	class Trader
	{
		file = "modules\hoverguy\functions\client\Trader";
		class dialogOnLoadTrader {};
		class dialogOnUnloadTrader {};
		class gearHandler {};
		class gearItem {};
		class refreshTrader {};
		class traderBtns {};
		class traderTreeChanged {};
	};
	
	class Units
	{
		file = "modules\hoverguy\functions\client\Units";
		class dialogOnLoadUnits {};
		class unitsBtns {};
		class unitsComboChanged {};
		class unitsRefresh {};
		class unitsTreeChanged {};
	};
	
	class VehiclesShop
	{
		file = "modules\hoverguy\functions\client\VehiclesShop";
		class addActions {};
		class buyToGarage {};
		class buyVehicle {};
		class dialogOnLoadVehicles {};
		class dialogOnUnloadVehicles {};
		class vehicleColor {};
		class vehicleRotate {};
		class vehicleSelectionChanged {};
		class xVehicleSelectionChanged {};
	};
};

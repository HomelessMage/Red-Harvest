class GRAD_lbm_tracking {
    class tracking {
        file = modules\grad-listBuymenu\functions\tracking;
        class clearTrackingData {};
        class createBackground {};
        class createMain {};
        class createSidebar {};
        class deleteEntry {};
        class enableTracking {};
        class fillEditBox {};
        class getMax {};
        class getTrackingTag {};
        class initTracking {postInit = 1;};
        class onTrackingTagKeydown {};
        class openDialog {};
        class receiveData {};
        class requestData {};
        class trackHashCleanup {};
        class trackHashUpdate {};
        class trackPurchase {};
        class updateBuyablesDropdown {};
        class updateCategoryDropdown {};
        class updateMain {};
    };
};

class GRAD_lbm {
    class common {
        file = modules\grad-listBuymenu\functions\common;
        class addFunds {};
        class addInteraction {};
        class addStock {};
        class checkCargoSpace {};
        class getCurrentFunds {};
        class getDescription {};
        class getDisplayName {};
        class getFunds {};
        class getItemPermissionLevel {};
        class getModuleRoot {};
        class getPermissionLevel {};
        class getPicturePath {};
        class getStock {};
        class isVehicle {};
        class loadBuymenu {};
        class rotateModel {};
        class setFunds {};
        class setPermissionLevel {};
        class setStock {};
    };

    class buy {
        file = modules\grad-listBuymenu\functions\buy;
        class buyClient {};
        class buyItem {};
        class buyServer {};
        class buyUnit {};
        class buyVehicle {};
        class buyWeapon {};
        class buyWearable {};
        class callCodeClient {};
        class callCodeServer {};
        class reimburse {};
        class vehicleMarker {};
    };

    class init {
        file = modules\grad-listBuymenu\functions\init;
        class addPlayerEHs {};
        class initClient {postInit = 1;};
        class initStocks {postInit = 1;};
        class initVehicles {postInit = 1;};
    };

    class update {
        file = modules\grad-listBuymenu\functions\update;
        class updateBuyButton {};
        class updateCategories {};
        class updateFunds {};
        class updateItemData {};
        class updateList {};
        class updatePicture {};
    };
};

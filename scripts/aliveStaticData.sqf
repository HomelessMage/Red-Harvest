waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};

[ALIVE_factionDefaultTransport, "ACM_B_CDF", 
	[
		"ACM_B_CDF_Vehicle_ZSU23", 
		"ACM_B_CDF_Vehicle_BTR80", 
		"ACM_B_CDF_Vehicle_BTR80a", 
		"ACM_B_CDF_Vehicle_m113_supply", 
		"ACM_B_CDF_Vehicle_m113_m2_90", 
		"ACM_B_CDF_Vehicle_m113_medical", 
		"ACM_B_CDF_Vehicle_m113_unarmed", 
		"ACM_B_CDF_Vehicle_2S1_DirectFire", 
		"ACM_B_CDF_Vehicle_m1151", 
		"ACM_B_CDF_Vehicle_m1151_M2_Crows", 
		"ACM_B_CDF_Vehicle_m1151_Mk19_Crows", 
		"ACM_B_CDF_Vehicle_m1151_m2_LRAS", 
		"ACM_B_CDF_Vehicle_m1151_PKM", 
		"ACM_B_CDF_Vehicle_m1152", 
		"ACM_B_CDF_Vehicle_m1152_RSV", 
		"ACM_B_CDF_Vehicle_m1152_sicps", 
		"ACM_B_CDF_Vehicle_Offroad", 
		"ACM_B_CDF_Vehicle_Offroad_AT", 
		"ACM_B_CDF_Vehicle_Offroad_Comms", 
		"ACM_B_CDF_Vehicle_Offroad_armed", 
		"ACM_B_CDF_Vehicle_Offroad_Repair", 
		"ACM_B_CDF_Vehicle_UAZ", 
		"ACM_B_CDF_Vehicle_UAZ_AGS", 
		"ACM_B_CDF_Vehicle_UAZ_open", 
		"ACM_B_CDF_Vehicle_UAZ_spg9", 
		"ACM_B_CDF_Vehicle_BMD2K", 
		"ACM_B_CDF_Vehicle_BMD2M", 
		"ACM_B_CDF_Vehicle_BMD4M", 
		"ACM_B_CDF_Vehicle_BMD4MA", 
		"ACM_B_CDF_Vehicle_BMP1p", 
		"ACM_B_CDF_Vehicle_BMP2D", 
		"ACM_B_CDF_Vehicle_BMP2K", 
		"ACM_B_CDF_Vehicle_M1117", 
		"ACM_B_CDF_Vehicle_m1230", 
		"ACM_B_CDF_Vehicle_m1230_medvac", 
		"ACM_B_CDF_Vehicle_M1240", 
		"ACM_B_CDF_Vehicle_M1240_CROWS_M2", 
		"ACM_B_CDF_Vehicle_M1240_CROWS_Mk19", 
		"ACM_B_CDF_Vehicle_t72ba", 
		"ACM_B_CDF_Vehicle_t72bb", 
		"ACM_B_CDF_Vehicle_t80b", 
		"ACM_B_CDF_Vehicle_t80bv", 
		"ACM_B_CDF_Vehicle_t80u", 
		"ACM_B_CDF_Vehicle_t80uk", 
		"ACM_B_CDF_Vehicle_t90a", 
		"ACM_B_CDF_Vehicle_Gaz66", 
		"ACM_B_CDF_Vehicle_Gaz66_ammo", 
		"ACM_B_CDF_Vehicle_Gaz66_r142", 
		"ACM_B_CDF_Vehicle_Gaz66_ap2", 
		"ACM_B_CDF_Vehicle_Gaz66_Repair", 
		"ACM_B_CDF_Vehicle_Ural", 
		"ACM_B_CDF_Vehicle_Ural_Fuel", 
		"ACM_B_CDF_Vehicle_Ural_repair", 
		"ACM_B_CDF_Vehicle_Ural_Zu23"
	]
] call ALIVE_fnc_hashSet;


[ALIVE_factionDefaultAirTransport, "ACM_B_CDF", 
	[
		"ACM_B_CDF_Vehicle_Air_Mi24D", 
		"ACM_B_CDF_Vehicle_Air_Mi24D_Early", 
		"ACM_B_CDF_Vehicle_Air_Mi24G", 
		"ACM_B_CDF_Vehicle_Air_Mi35", 
		"ACM_B_CDF_Vehicle_Air_Mi8", 
		"ACM_B_CDF_Vehicle_Air_Mi17Sh"
	]
] call ALIVE_fnc_hashSet;

		// "ACM_B_CDF_Vehicle_Air_Mig29_M", 
		// "ACM_B_CDF_Vehicle_Air_Mig29", 
		// "ACM_B_CDF_Vehicle_Air_Su25", 


[ALIVE_factionDefaultTransport, "ACM_O_SZAVB", 
	[
		"ACM_O_SZAVB_Vehicle_zsu234", 
		"ACM_O_SZAVB_Vehicle_BTR70", 
		"ACM_O_SZAVB_Vehicle_UAZ", 
		"ACM_O_SZAVB_Vehicle_UAZ_AGS", 
		"ACM_O_SZAVB_Vehicle_UAZ_dshkm", 
		"ACM_O_SZAVB_Vehicle_UAZ_open", 
		"ACM_O_SZAVB_Vehicle_UAZ_spg9", 
		"ACM_O_SZAVB_Vehicle_bmd1", 
		"ACM_O_SZAVB_Vehicle_bmd1k", 
		"ACM_O_SZAVB_Vehicle_bmd1r", 
		"ACM_O_SZAVB_Vehicle_bmd2", 
		"ACM_O_SZAVB_Vehicle_bmp1", 
		"ACM_O_SZAVB_Vehicle_bmp1p", 
		"ACM_O_SZAVB_Vehicle_bmp2e", 
		"ACM_O_SZAVB_Vehicle_brm1k", 
		"ACM_O_SZAVB_Vehicle_prp3", 
		"ACM_O_SZAVB_Vehicle_BRDM", 
		"ACM_O_SZAVB_Vehicle_BRDM_ATGM", 
		"ACM_O_SZAVB_Vehicle_BRDMUM", 
		"ACM_O_SZAVB_Vehicle_HQ", 
		"ACM_O_SZAVB_Vehicle_Gaz66", 
		"ACM_O_SZAVB_Vehicle_Gaz66_ammo", 
		"ACM_O_SZAVB_Vehicle_Gaz66_flat", 
		"ACM_O_SZAVB_Vehicle_Gaz66o", 
		"ACM_O_SZAVB_Vehicle_Gaz_R142", 
		"ACM_O_SZAVB_Vehicle_Gaz_ap2", 
		"ACM_O_SZAVB_Vehicle_Gaz_Repair"
	]
] call ALIVE_fnc_hashSet;

[ALIVE_factionDefaultAirTransport, "ACM_O_SZAVB", 
	[
		"rhsgref_ins_Mi8amt"
	]
] call ALIVE_fnc_hashSet;
//____________________________________________
// LSS Config.cpp
// Author: Dodzh
//____________________________________________

class CfgLootSettings
{
	spawnAtStart = 1; //if 1 will will created a task that spawn loot on an interval based on lootInterval to every player
	lootInterval = 20; //time in seconds how often loot is created, only used if spawnAtStart = 1
	spawnRange = 80; //in meters, this is only used if spawnAtStart is 1, a manual range can bet set if [<pos>,<range>] spawn LSS_fnc_spawn_loot; is used
	maxLootTime = 30*15; //time in seconds the loot will last at any given spot
	maxPleyerSpeed = 50; //only used only used if spawnAtStart is 1, determines if loot should be spawned based on the speed of player 

	cleanAtStart = 1; //starts a thread cleaning every "cleanupInterval", if 0 then manual cleanup is required [] spawn LSS_fnc_cleanup;
	cleanupInterval = 20; //time in seconds how often is check to deleted expired loot, only used if cleanAtStart = 1

	useModelPositions = 1; //if the building is not defined under CfgBuildings will try to spawn loot on predefined points on building model
	fillBackPacks = 1; //if true backpacks will be filled with items from the items[] section. values 0=false 1=true 
	
	maxLootPositions = 8; //max loot position per building
	maxLootPercentile = 0.40; //porcentage based on the maxed loot spots per building
	minLootPerSpot = 1;
    maxLootPerSpot = 8; //max items per loot position
	
	minMagazinesPerWeapon = 2;
	maxMagazinesPerWeapon = 5;
	
	debug = 0; //if 1 will create marker and helpers on the map
};

class CfgLootTables
{
	class defaults //dont delete this table as any building not defined will spawn items based on this table
    {
        ratio[] = 
		{
			"weapons",1,
			"backpacks",1,
			"uniforms",1,
			"items",2
		};
		weapons[] = 
		{
			"CUP_hgun_Makarov", 1,
			"CUP_hgun_PMM", 1,
			"CUP_hgun_TT", 1,
			"CUP_lmg_UK59", 1,
			"CUP_srifle_SVD", 1,
			"CUP_arifle_SAIGA_MK03_Wood", 1,
			"CUP_arifle_SAIGA_MK03", 1,
			"CUP_sgun_Saiga12K", 1,
			"CUP_smg_M3A1", 1,
			"CUP_glaunch_M79", 1,
			"CUP_lmg_FNMAG", 1,
			"CUP_srifle_LeeEnfield", 1,
			"CUP_srifle_Remington700", 1,
			"CUP_sgun_slamfire", 1,
			"CUP_SKS", 1
        };
		backpacks[] = 
		{
			"CUP_B_RUS_Backpack",1,
			"CFP_Camelbak_Mule_Drab",1,
			"CUP_B_SLA_Medicbag",1,
			"CUP_B_ACRScout_m95",1
        };        
		items[] = 
		{
			"ACE_personalAidKit",1,
			"ToolKit",1,
			"ACE_EntrenchingTool",1,
			"ACE_bodyBag",1,
			"ACE_tourniquet",10,
			"ACE_fieldDressing", 10,
			"murshun_cigs_cigpack",1,
			"murshun_cigs_matches",1,
			"murshun_cigs_lighter",1,
			"CFP_Alice_Vest", 1,
			"CFP_Alice_Vest_Black", 1,
			"CFP_Smersh_ArmyGreen", 1,
			"CFP_Smersh_Brown", 1,
			"CFP_Smersh_Creme", 1,
			"CFP_Smersh_Green", 1,
			"CFP_Smersh_Olive", 1,
			"CFP_Smersh_Tan", 1,
			"CUP_H_RUS_ZSH_1", 1,
			"CUP_H_WZ67", 1,
			"SP_SSh68CoverHelmet_Green1", 1,
			"SP_SSh68CoverHelmet_Black1", 1,
			"CUP_H_RUS_SSH68_cover_vsr98", 1,
			"CUP_H_RUS_SSH68_cover_vsr93", 1,
			"CUP_H_RUS_SSH68_cover_vsr84_dubok", 1,
			"CUP_H_RUS_SSH68_green", 1,
			"CUP_H_RUS_SSH68_olive", 1,
			"SP_SSh68Helmet_Green1", 1,
			"CUP_H_RUS_SSH68_cover_berezka", 1,
			"SP_SSh68Helmet_Black1", 1,
			"SP_SSh68NetHelmet_Green1", 1,
			"SP_SSh68NetHelmet_Black1", 1,
			"CUP_H_SLA_Helmet_OD_worn", 1,
			"CUP_H_SLA_Helmet", 1,
			"CUP_H_SLA_Helmet_URB_worn", 1,
			"CUP_H_SLA_Helmet_URB", 1,
			"CUP_H_TK_Helmet", 1,
			"CUP_H_SLA_Helmet_BLK_worn", 1,
			"CUP_H_SLA_Helmet_BLK", 1
        };
		uniforms[] = 
		{
			"CUP_I_B_PMC_Unit_26", 1,
			"CUP_I_B_PMC_Unit_27", 1,
			"CUP_I_B_PMC_Unit_25", 1,
			"CUP_I_B_PMC_Unit_18", 1,
			"CUP_I_B_PMC_Unit_20", 1,
			"CUP_I_B_PMC_Unit_22", 1,
			"CUP_I_B_PMC_Unit_21", 1,
			"CUP_I_B_PMC_Unit_19", 1,
			"CUP_I_B_PMC_Unit_17", 1,
			"CUP_I_B_PMC_Unit_13", 1,
			"CUP_I_B_PMC_Unit_14", 1,
			"CUP_I_B_PMC_Unit_16", 1,
			"CUP_I_B_PMC_Unit_15", 1,
			"CUP_I_B_PMC_Unit_12", 1,
			"CUP_I_B_PMC_Unit_3", 1,
			"CUP_I_B_PMC_Unit_2", 1,
			"CUP_I_B_PMC_Unit_1", 1,
			"CUP_I_B_PMC_Unit_4", 1,
			"CUP_I_B_PMC_Unit_7", 1,
			"CUP_I_B_PMC_Unit_6", 1,
			"CUP_I_B_PMC_Unit_5", 1,
			"CUP_I_B_PMC_Unit_8", 1,
			"CUP_I_B_PMC_Unit_11", 1,
			"CUP_I_B_PMC_Unit_10", 1,
			"CUP_I_B_PMC_Unit_9", 1,
			"CUP_I_B_PMC_Unit_42", 1,
			"CUP_I_B_PMC_Unit_41", 1,
			"CUP_I_B_PMC_Unit_43", 1,
			"CUP_I_B_PMC_Unit_40", 1,
			"CUP_I_B_PMC_Unit_39", 1,
			"CUP_I_B_PMC_Unit_36", 1,
			"CUP_I_B_PMC_Unit_38", 1,
			"CUP_I_B_PMC_Unit_37", 1,
			"CUP_I_B_PMC_Unit_28", 1,
			"CUP_I_B_PMC_Unit_23", 1,
			"CUP_I_B_PMC_Unit_35", 1,
			"CUP_I_B_PMC_Unit_31", 1,
			"CUP_I_B_PMC_Unit_24", 1,
			"CUP_I_B_PMC_Unit_32", 1,
			"CUP_I_B_PARA_Unit_4", 1,
			"CUP_I_B_PARA_Unit_1", 1,
			"CUP_I_B_PARA_Unit_3", 1,
			"CUP_I_B_PARA_Unit_5", 1,
			"CUP_I_B_PARA_Unit_11", 1,
			"CUP_I_B_PARA_Unit_13", 1,
			"CUP_I_B_PARA_Unit_12", 1,
			"CUP_I_B_PARA_Unit_15", 1,
			"CUP_I_B_PARA_Unit_14", 1,
			"CUP_I_B_PARA_Unit_8", 1,
			"CUP_U_I_GUE_Anorak_01", 1,
			"CUP_U_I_GUE_Anorak_03", 1,
			"CUP_U_I_GUE_Anorak_02", 1,
			"CUP_U_I_GUE_Flecktarn2", 1,
			"CUP_U_I_GUE_Flecktarn3", 1
        };
    };
};

class CfgBuildings //custom position relative the the model, some buildings dont have positions defined on the model or simply you want your own spots
{
	class Land_ReservoirTank_01_military_F
	{
		table = "Military";
		positions[] = {{2.7417,-0.0241699,-12.8064}};
	};
	class Land_Cargo_HQ_V2_F
	{
		table = "Military";
		positions[] = {{5.74951,3.25366,-0.748884},{-2.55518,3.20703,-0.748884},{0.236328,-4.02856,-0.748882},{-2.67139,-4.0647,-0.748882},{5.98291,-1.45459,-0.748886},{3.06836,5.26074,-3.15331},{6.16895,5.42603,-3.15331},{6.39893,0.840576,-3.27373},{3.59473,-4.11914,-3.27373},{-3.3252,-4.12549,-3.27373},{0.660156,3.3689,-3.27373},{0.754883,-0.134521,-3.27373},{-3.31006,3.11841,-3.27373},{2.61328,0.24707,-3.27373},{-3.30176,-1.0144,-3.27373}};
	};
	class Land_Cargo_Tower_V2_F
	{
		table = "Military";
		positions[] = {{1.80029,3.31763,-8.24477},{3.45508,1.31689,-8.24477},{-3.44092,3.32056,-4.29724},{-3.6748,1.3252,-4.29724},{4.90479,4.46387,-0.121563},{5.07764,1.10986,-0.121563},{1.86133,4.47314,-0.121563},{3.08154,-3.55664,-0.121563},{0.62207,-3.60669,-0.121563},{-1.76855,-3.65308,-0.121563},{-4.23535,-3.73315,-0.121563},{-5.12598,-0.748291,-0.121563},{-4.79785,3.15039,-0.121563},{-0.812012,1.66113,-0.121563},{1.24902,-0.407227,-0.121563},{4.62695,-0.599854,2.47844},{4.61133,1.95337,2.47844},{4.13574,4.18506,2.47844},{1.48486,4.20142,2.47844},{-1.29346,4.26929,2.47844},{-4.69092,4.44653,2.47844},{-4.59912,-0.644043,2.47844},{-4.69727,-3.38037,2.47844},{-1.32324,-3.16797,2.47844},{-1.24121,-0.493896,2.47844},{1.09619,-0.510742,2.47844},{0.783691,-0.350586,5.07844},{0.694336,1.99951,5.07844},{3.30713,-2.54272,5.00328},{3.34619,1.42407,5.00327},{-3.23096,4.14575,5.00327},{-3.91797,-1.04956,5.00328},{-2.64355,-3.75854,5.00327}};
	};
	class Land_Cargo_Patrol_V2_F
	{
		table = "Military";
		positions[] = {{1.80908,0.709717,-2.9121},{-0.723633,-0.871826,-0.560959},{1.37061,-0.908936,-0.560959}};
	};
	class Land_Cargo_House_V2_F
	{
		table = "Military";
		positions[] = {{-1.83496,0.863281,-0.0971875},{-1.68408,3.19653,0.0388474},{1.54785,3.15283,0.0388479},{1.69727,0.873535,-0.0971875}};
		};
	class Land_Bunker_01_small_F 
	{
		table = "Military";
		positions[] = {{-1.60449,-1.27905,0.207207},{-1.36182,0.58374,0.206603},{2.1123,-1.18457,0.206436},{0.729004,0.86499,0.206631},{0.189453,-1.22314,0.206728}};
	};
	class Land_Bunker_01_tall_F
	{
		table = "Military";
		positions[] = {{0.728516,1.24634,-3.436},{-2.11279,-0.811523,-3.436},{-0.32959,-1.80518,-2.35649},{1.43896,-2.16724,-2.35649},{1.57861,1.78467,-0.741341},{-2.57471,1.83643,1.45843},{-2.35889,-0.065918,1.45788},{-0.337402,0.0864258,1.45731},{1.55518,0.210205,1.45731},{1.55713,-1.98022,1.45731},{-0.635254,-1.8999,1.4622}};
	};
	class Land_Bunker_01_big_F
	{
		table = "Military";
		positions[] = {{-1.92822,1.40356,0.0184798},{-1.78662,-2.46851,0.0184798},{-3.85986,-0.902344,0.0184798},{-4.0752,-4.59375,0.0184798},{-1.38965,-5.22314,0.0184798},{-0.00830078,-6.50781,0.0184798},{1.5874,-5.44604,0.0184803},{3.82861,-6.47192,0.0184798},{3.87012,-4.08276,0.0184798},{1.32178,-2.97485,0.0184798},{4.20313,-1.66821,0.0184803},{1.26318,-0.998779,0.0184798},{1.28174,1.06885,0.0184798}};
	};
	class Land_Bunker_01_HQ_F
	{
		table = "Military";
		positions[] = {{4.32227,3.8999,-0.981861},{-4.2373,-1.78516,-0.981861},{-4.19482,2.62354,-0.981861},{-1.88867,2.02515,-0.981861},{-0.66748,-0.768066,-0.981861},{0.747559,-0.144287,-0.981861},{4.7417,-0.727783,-0.981861},{3.8208,-1.77661,-0.981861},{2.54541,-3.79883,-0.981861},{0.975586,-4.30322,-0.981861},{-1.20898,-3.58276,-0.981861},{-4.72314,0.76123,-0.981861}};
	};
};
```

[
	_arsenal,
	"Безоружный",
	[[],[],[],["acm_szavb_r_clothes1_1",[]],["rhsgref_6b23_khaki",[]],[],"ACM_szavb_R_Fieldcap","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]],
	[
		// UNIFORMS
		"acm_szavb_r_clothes1_1",
		// HEADGEAR
		"ACM_szavb_R_Fieldcap",
		// VESTS
		"rhsgref_6b23_khaki"

	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Стрелок",
	[["rhs_weap_ak74n","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki_rifleman",[["rhs_30Rnd_545x39_7N10_AK",15,30]]],["rhs_assault_umbts",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_ak74n",
		"rhs_weap_ak74n_2",
		"rhs_weap_aks74n",
		"rhs_weap_aks74n_2",
		"rhs_weap_akmn",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"rhs_assault_umbts",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki_rifleman",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Специалист ГП",
	[["rhs_weap_ak74n_gp25","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK",30],["rhs_VOG25",1],""],[],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki_rifleman",[["rhs_30Rnd_545x39_7N10_AK",15,30]]],["rhs_assault_umbts",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2],["rhs_VOG25",20,1],["rhs_VG40OP_green",2,1],["rhs_VG40OP_red",2,1],["rhs_VG40OP_white",2,1]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_ak74n_gp25",
		"rhs_weap_ak74n_2_gp25",
		"rhs_weap_ak74n_2_gp25",
		"rhs_weap_akmn_gp25",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"rhs_assault_umbts",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki_rifleman",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Специалист ПТ",
	[["rhs_weap_aks74un","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],["rhs_weap_rpg7","","","",["rhs_rpg7_PG7V_mag",1],[],""],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki",[["rhs_30Rnd_545x39_7N10_AK",15,30]]],["rhs_assault_umbts",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2],["rhs_rpg7_PG7V_mag",3,1],["rhs_rpg7_OG7V_mag",2,1]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"rhs_assault_umbts",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Пулемётчик",
	[["rhs_weap_pkm","","","",["rhs_100Rnd_762x54mmR",100],[],""],[],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki",[["rhs_100Rnd_762x54mmR",1,100]]],["B_Carryall_oli",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2],["rhs_100Rnd_762x54mmR",3,100]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_pkm",
		"rhs_weap_pkp",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"B_Carryall_oli",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Санинструктор",
	[["rhs_weap_aks74un","rhs_acc_pgs64_74un","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki_medic",[["rhs_30Rnd_545x39_7N10_AK",14,30]]],["B_Carryall_oli",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"B_Carryall_oli",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki_medic",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 2, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Инженер-сапёр",
	[["rhs_weap_aks74un","rhs_acc_dtk","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki",[["rhs_30Rnd_545x39_7N10_AK",8,30]]],["rhs_assault_umbts_engineer_empty",[["ACE_tourniquet",4],["ACE_epinephrine",2],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",1],["ACE_DefusalKit",1],["ACE_Clacker",1],["ACE_EntrenchingTool",1],["ToolKit",1],["rhs_ec400_mag",2,1],["APERSTripMine_Wire_Mag",2,1]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_fadak_3","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"rhs_assault_umbts_engineer_empty",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", true];
		player setUnitTrait ["engineer", true];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Оператор БПЛА",
	[["rhs_weap_aks74un","rhs_acc_pgs64_74un","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],[],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5]]],["rhsgref_6b23_khaki",[["rhs_30Rnd_545x39_7N10_AK",15,30]]],["rhs_assault_umbts",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2],["Item_Mavic",1,1],["Mavic_F1",3,1],["Mavic_Vog25",3,1],["Mavic_tbg",2,1],["mavick_M67_Impact_Grenade",2,1],["Mavic_M433",1,1],["mavick_V40_Impact_Grenade",1,1]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","O_UavTerminal","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"rhs_assault_umbts",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Специалист РЭБ",
	[["rhs_weap_aks74un","rhs_acc_pgs64_74un","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],["hgun_esd_01_F","muzzle_antenna_01_f","","",[],[],""],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5],["rhs_30Rnd_545x39_7N10_AK",1,30]]],["rhsgref_6b23_khaki",[["rhs_30Rnd_545x39_7N10_AK",14,30]]],["B_Carryall_oli",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",30],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_splint",2],["ACE_bloodIV",2],["ACE_bloodIV_250",2],["ACE_bloodIV_500",2],["Item_JammerSania",1,1]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"B_Carryall_oli",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Связист",
	[["rhs_weap_aks74un","rhs_acc_pgs64_74un","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],["hgun_esd_01_F","muzzle_antenna_01_f","","",[],[],""],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5],["rhs_30Rnd_545x39_7N10_AK",1,30]]],["rhsgref_6b23_khaki",[["rhs_30Rnd_545x39_7N10_AK",14,30]]],["TFAR_bussole",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",26]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"TFAR_bussole",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	"playerSide == EAST",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;

[
	_arsenal,
	"Командир",
	[["rhs_weap_aks74un","rhs_acc_pgs64_74un","","",["rhs_30Rnd_545x39_7N10_AK",30],[],""],[],["hgun_esd_01_F","muzzle_antenna_01_f","","",[],[],""],["acm_szavb_r_clothes1_1",[["ACE_EarPlugs",1],["ACE_CableTie",5],["ALIVE_Tablet",1],["rhs_30Rnd_545x39_7N10_AK",1,30]]],["rhsgref_6b23_khaki",[["rhs_30Rnd_545x39_7N10_AK",14,30]]],["TFAR_bussole",[["ACE_tourniquet",4],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_quikclot",26]]],"ACM_szavb_R_6B47_Patchless","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","Armband_Red_medium2_NVG"]],
	[
		// WEAPONS
		"rhs_weap_aks74un",
		// UNIFORMS
		// ATACS
		"acm_szavb_r_clothes1_1",
		// BACKPACKS
		"TFAR_bussole",
		// VESTS
		// ATACS
		"rhsgref_6b23_khaki",
		// HEADGEAR
		// ATACS
		"ACM_szavb_R_Fieldcap",
		"ACM_szavb_R_6B47_Patchless",
		"ACM_szavb_R_6B47_NVG",
		"ACM_szavb_R_6B47_6B50"
	],
	// Иван Дубов
	"playerSide == EAST && (getPlayerUID player == '76561198954068907')",
	{
		player setVariable ["ace_medical_medicclass", 0, true];
		player setUnitTrait ["explosiveSpecialist", false];
		player setUnitTrait ["engineer", false];
		player setVariable ["Equipment", uniqueUnitItems player, true];
	}
] spawn Wbk_AddKit;


```
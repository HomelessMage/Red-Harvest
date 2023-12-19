private ["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

// EAST CSAT FACTION
	if (_faction==0) then {
	_InfPool=	["O_SoldierU_SL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F"];	
	_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
	_MotPool=	["O_Truck_02_covered_F","O_Truck_02_transport_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Truck_02_medical_F"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
	_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["O_Mortar_01_F","O_static_AT_F","O_static_AA_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_crew_F"];
	_heliCrew=	["O_helicrew_F","O_helipilot_F"];
};
// WEST NATO FACTION	
	if (_faction==1) then {
	_InfPool=	["B_sniper_F","B_Soldier_A_F","B_Soldier_AA_F","B_Soldier_AAA_F","B_Soldier_AAR_F","B_Soldier_AAT_F","B_Soldier_AR_F","B_Soldier_AT_F","B_soldier_exp_F","B_Soldier_F","B_engineer_F","B_medic_F","B_recon_exp_F","B_recon_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_M_F","B_recon_medic_F","B_recon_TL_F"];	
	_ArmPool=	["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
	_MotPool=	["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
	_ACHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"];
	_CHPool=	["B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
	_uavPool=	["B_UAV_01_F","B_UAV_01_CAS_F","B_UGV_01_rcws_F"];
	_stPool=	["B_Mortar_01_F","B_static_AT_F","B_static_AA_F"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["B_crew_F"];
	_heliCrew=	["B_helicrew_F","B_helipilot_F"];
};
// INDEPENDENT AAF FACTION	
	if (_faction==2) then {
	_InfPool=	["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F"];	
	_ArmPool=	["I_APC_Wheeled_03_cannon_F"];
	_MotPool=	["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_medical_F"];
	_ACHPool=	[];
	_CHPool=	["I_Heli_Transport_02_F","B_Heli_Light_02_unarmed_F"];
	_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
	_stPool=	["I_Mortar_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["I_crew_F"];
	_heliCrew=	["I_helicrew_F","I_helipilot_F"];
};
// CIVILIAN	
	if (_faction==3) then {
	_InfPool=	["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_pilot_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_man_w_worker_F"];	
	_ArmPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_MotPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	["C_Boat_Civil_01_F","C_Boat_Civil_01_rescue_F","C_Boat_Civil_04_F","C_Rubberboat"];
	_diverPool=	[];
	_crewPool=	["C_man_1"];
	_heliCrew=	["C_man_1","C_man_1"];
};
// WEST FIA FACTION
	if (_faction==4) then {
	_InfPool=	["B_G_engineer_F","B_G_medic_F","B_G_officer_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_Soldier_exp_F","B_G_Soldier_F","B_G_Soldier_GL_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_M_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];	
	_ArmPool=	[];
	_MotPool=	["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["B_G_Boat_Transport_01_F"];
	_diverPool=	[];
	_crewPool=	[];
	_heliCrew=	[];
};
// CDF RHS
	if (_faction==5) then {
	_InfPool=	["rhsgref_cdf_b_reg_grenadier_rpg", "rhsgref_cdf_b_reg_engineer", "rhsgref_cdf_b_reg_squadleader", "rhsgref_cdf_b_reg_arifleman_rpk", "rhsgref_cdf_b_reg_machinegunner", "rhsgref_cdf_b_reg_medic", "rhsgref_cdf_b_reg_marksman", "rhsgref_cdf_b_reg_grenadier", "rhsgref_cdf_b_reg_specialist_aa", "rhsgref_cdf_b_reg_rifleman_akm", "rhsgref_cdf_b_reg_rifleman_aks74", "rhsgref_cdf_b_reg_rifleman_rpg75", "rhsgref_cdf_b_reg_rifleman_lite"];	
	_ArmPool=	["UK3CB_B_MTLB_Zu23_CDF", "rhsgref_BRDM2_b", "rhsgref_cdf_b_btr60", "rhsgref_cdf_b_btr70", "rhsgref_cdf_b_btr80", "UK3CB_B_MTLB_Cannon_CDF", "UK3CB_B_MTLB_BMP_CDF", "UK3CB_B_MTLB_KPVT_CDF", "UK3CB_B_MTLB_PKT_CDF", "rhsgref_cdf_b_bmd1k", "rhsgref_cdf_b_bmd1pk", "rhsgref_cdf_b_bmd1p", "rhsgref_cdf_b_bmd1", "rhsgref_cdf_b_bmd2k", "rhsgref_cdf_b_bmd2", "rhsgref_cdf_b_bmp1d", "rhsgref_cdf_b_bmp1k", "rhsgref_cdf_b_bmp1p", "rhsgref_cdf_b_bmp1", "rhsgref_cdf_b_bmp2d", "rhsgref_cdf_b_bmp2k", "rhsgref_cdf_b_bmp2e", "rhsgref_cdf_b_bmp2"];
	_MotPool=	["rhsgref_cdf_b_reg_uaz", "rhsgref_cdf_b_reg_uaz_open", "UK3CB_B_LandRover_Closed_CDF", "UK3CB_B_LandRover_M2_CDF", "UK3CB_B_LandRover_Open_CDF", "UK3CB_B_LandRover_SPG9_CDF", "UK3CB_B_LandRover_SF_AGS30_CDF", "UK3CB_B_LandRover_SF_M2_CDF", "rhsgref_cdf_b_reg_uaz_dshkm", "rhsgref_cdf_b_reg_uaz_spg9", "rhsgref_cdf_b_gaz66", "rhsgref_cdf_b_gaz66o", "rhsgref_cdf_b_ural", "rhsgref_cdf_b_ural_open", "rhsgref_cdf_b_gaz66o_flat", "UK3CB_B_Kamaz_Covered_CDF", "UK3CB_B_Kamaz_Open_CDF", "rhsgref_cdf_b_zil131", "rhsgref_cdf_b_zil131_open"];
	_ACHPool=	["rhsgref_cdf_b_Mi24D", "rhsgref_cdf_b_Mi24D_Early"];
	_CHPool=	["rhsgref_cdf_b_reg_Mi8amt"];
	_uavPool=	[];
	_stPool=	["rhsgref_cdf_b_DSHKM", "rhsgref_cdf_b_Igla_AA_pod", "rhsgref_cdf_b_SPG9", "rhsgref_cdf_b_DSHKM_Mini_TriPod", "rhsgref_cdf_b_NSV_TriPod", "UK3CB_B_PKM_Nest_CDF_Summer", "rhsgref_cdf_b_reg_d30_at", "rhsgref_cdf_b_reg_M252"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["rhsgref_cdf_b_reg_grenadier_rpg", "rhsgref_cdf_b_reg_engineer", "rhsgref_cdf_b_reg_squadleader", "rhsgref_cdf_b_reg_arifleman_rpk", "rhsgref_cdf_b_reg_machinegunner", "rhsgref_cdf_b_reg_medic", "rhsgref_cdf_b_reg_marksman", "rhsgref_cdf_b_reg_grenadier", "rhsgref_cdf_b_reg_specialist_aa", "rhsgref_cdf_b_reg_rifleman_akm", "rhsgref_cdf_b_reg_rifleman_aks74", "rhsgref_cdf_b_reg_rifleman_rpg75", "rhsgref_cdf_b_reg_rifleman_lite"];
	_heliCrew=	["rhsgref_cdf_b_air_pilot"];
	};
	
// NAPA RHS
	if (_faction==6) then {
	_InfPool=	["UK3CB_CCM_I_AT", 
"UK3CB_CCM_I_AT_ASST", 
"UK3CB_CCM_I_AR", 
"UK3CB_CCM_I_DEM", 
"UK3CB_CCM_I_ENG", 
"UK3CB_CCM_I_MK", 
"UK3CB_CCM_I_MD", 
"UK3CB_CCM_I_OFF", 
"UK3CB_CCM_I_RIF_1", 
"UK3CB_CCM_I_RIF_2", 
"UK3CB_CCM_I_RIF_LITE", 
"UK3CB_CCM_I_RIF_BOLT", 
"UK3CB_CCM_I_SL", 
"UK3CB_CCM_I_SNI", 
"UK3CB_CCM_I_SPOT", 
"UK3CB_CCM_I_TL"];
	_ArmPool=	["UK3CB_CCM_I_Hilux_Pkm", 
"UK3CB_CCM_I_Hilux_Dshkm", 
"UK3CB_CCM_I_LR_M2", 
"UK3CB_CCM_I_Pickup_DSHKM", 
"UK3CB_CCM_I_UAZ_Dshkm"];
	_MotPool=	["UK3CB_CCM_I_V3S_Closed", 
"UK3CB_CCM_I_LR_Closed", 
"UK3CB_CCM_I_Kamaz_Covered", 
"UK3CB_CCM_I_Hilux_Civ_Closed", 
"UK3CB_CCM_I_Landcruiser", 
"UK3CB_CCM_I_UAZ_Closed"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["UK3CB_CCM_I_AT", 
"UK3CB_CCM_I_AT_ASST", 
"UK3CB_CCM_I_AR", 
"UK3CB_CCM_I_DEM", 
"UK3CB_CCM_I_ENG", 
"UK3CB_CCM_I_MK", 
"UK3CB_CCM_I_MD", 
"UK3CB_CCM_I_OFF", 
"UK3CB_CCM_I_RIF_1", 
"UK3CB_CCM_I_RIF_2", 
"UK3CB_CCM_I_RIF_LITE", 
"UK3CB_CCM_I_RIF_BOLT", 
"UK3CB_CCM_I_SL", 
"UK3CB_CCM_I_SNI", 
"UK3CB_CCM_I_SPOT", 
"UK3CB_CCM_I_TL"];
	_heliCrew=	["UK3CB_CCM_I_AT", 
"UK3CB_CCM_I_AT_ASST", 
"UK3CB_CCM_I_AR", 
"UK3CB_CCM_I_DEM", 
"UK3CB_CCM_I_ENG", 
"UK3CB_CCM_I_MK", 
"UK3CB_CCM_I_MD", 
"UK3CB_CCM_I_OFF", 
"UK3CB_CCM_I_RIF_1", 
"UK3CB_CCM_I_RIF_2", 
"UK3CB_CCM_I_RIF_LITE", 
"UK3CB_CCM_I_RIF_BOLT", 
"UK3CB_CCM_I_SL", 
"UK3CB_CCM_I_SNI", 
"UK3CB_CCM_I_SPOT", 
"UK3CB_CCM_I_TL"];};
	
// Chedaki RHS
	if (_faction==7) then {
	_InfPool=	["UK3CB_CCM_O_AT", 
"UK3CB_CCM_O_AT_ASST", 
"UK3CB_CCM_O_AR", 
"UK3CB_CCM_O_DEM", 
"UK3CB_CCM_O_ENG", 
"UK3CB_CCM_O_MK", 
"UK3CB_CCM_O_MD", 
"UK3CB_CCM_O_OFF", 
"UK3CB_CCM_O_RIF_1", 
"UK3CB_CCM_O_RIF_2", 
"UK3CB_CCM_O_RIF_LITE", 
"UK3CB_CCM_O_RIF_BOLT", 
"UK3CB_CCM_O_SL", 
"UK3CB_CCM_O_SNI", 
"UK3CB_CCM_O_SPOT", 
"UK3CB_CCM_O_TL"];
	_ArmPool=	["UK3CB_CCM_I_Hilux_Pkm", 
"UK3CB_CCM_I_Hilux_Dshkm", 
"UK3CB_CCM_I_LR_M2", 
"UK3CB_CCM_I_Pickup_DSHKM", 
"UK3CB_CCM_I_UAZ_Dshkm"];
	_MotPool=	["UK3CB_CCM_I_V3S_Closed", 
"UK3CB_CCM_I_LR_Closed", 
"UK3CB_CCM_I_Kamaz_Covered", 
"UK3CB_CCM_I_Hilux_Civ_Closed", 
"UK3CB_CCM_I_Landcruiser", 
"UK3CB_CCM_I_UAZ_Closed"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["UK3CB_CCM_O_AT", 
"UK3CB_CCM_O_AT_ASST", 
"UK3CB_CCM_O_AR", 
"UK3CB_CCM_O_DEM", 
"UK3CB_CCM_O_ENG", 
"UK3CB_CCM_O_MK", 
"UK3CB_CCM_O_MD", 
"UK3CB_CCM_O_OFF", 
"UK3CB_CCM_O_RIF_1", 
"UK3CB_CCM_O_RIF_2", 
"UK3CB_CCM_O_RIF_LITE", 
"UK3CB_CCM_O_RIF_BOLT", 
"UK3CB_CCM_O_SL", 
"UK3CB_CCM_O_SNI", 
"UK3CB_CCM_O_SPOT", 
"UK3CB_CCM_O_TL"];
	_heliCrew=	[];};

// African Tribe
	if (_faction==8) then {
	_InfPool=	["CFP_O_CFRebels_Militiaman_01", 
"CFP_O_CFRebels_Rifleman_01",
"CFP_O_CFRebels_Team_Leader_01", 
"CFP_O_CFRebels_Sharpshooter_01", 
"CFP_O_CFRebels_Surgeon_01", 
"CFP_O_CFRebels_Autorifleman_RPK_01", 
"CFP_O_SOREBEL_Autorifleman_01", 
"CFP_O_SOREBEL_Bombmaker_2_01", 
"CFP_O_SOREBEL_Bonesetter_01", 
"CFP_O_SOREBEL_Grenadier_01", 
"CFP_O_SOREBEL_Autorifleman_2_01", 
"CFP_O_SOREBEL_Rifleman_01", 
"CFP_O_SOREBEL_Rifleman_Light_01", 
"CFP_O_SOREBEL_Warlord_01"];
	_ArmPool=	[];
	_MotPool=	["CFP_C_AFRCHRISTIAN_Land_Rover_01", "CFP_C_AFRCHRISTIAN_UAZ_Open_01", "CFP_C_AFRISLAMIC_Datsun_Pickup_Old_01", "CFP_C_AFRISLAMIC_Skoda_Blue_01"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["CFP_O_SOREBEL_DShKM_01", "CFP_O_SOREBEL_DShKM_Low_01", "CFP_O_SOREBEL_SPG_9_01"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["CFP_O_CFRebels_Militiaman_01", 
"CFP_O_CFRebels_Rifleman_01",
"CFP_O_CFRebels_Team_Leader_01", 
"CFP_O_CFRebels_Sharpshooter_01", 
"CFP_O_CFRebels_Surgeon_01", 
"CFP_O_CFRebels_Autorifleman_RPK_01", 
"CFP_O_SOREBEL_Autorifleman_01", 
"CFP_O_SOREBEL_Bombmaker_2_01", 
"CFP_O_SOREBEL_Bonesetter_01", 
"CFP_O_SOREBEL_Grenadier_01", 
"CFP_O_SOREBEL_Autorifleman_2_01", 
"CFP_O_SOREBEL_Rifleman_01", 
"CFP_O_SOREBEL_Rifleman_Light_01", 
"CFP_O_SOREBEL_Warlord_01"];
	_heliCrew=	[];};
	

// Sudan
	if (_faction==9) then {
	_InfPool=	["CFP_I_SDRebels_Soldier_06", 
"CFP_I_SDRebels_Soldier_03", 
"CFP_I_SDRebels_Soldier_01", 
"CFP_I_SDRebels_Soldier_04", 
"CFP_I_SDRebels_Soldier_07", 
"CFP_I_SDRebels_Soldier_02", 
"CFP_I_SDRebels_Soldier_05", 
"CFP_I_SDRebelsrf_Soldier_17", 
"CFP_I_SDRebelsrf_Soldier_05", 
"CFP_I_SDRebelsrf_Soldier_01", 
"CFP_I_SDRebelsrf_Soldier_02", 
"CFP_I_SDRebelsrf_Soldier_09", 
"CFP_I_SDRebelsrf_Soldier_04", 
"CFP_I_SDRebelsrf_Soldier_07", 
"CFP_I_SDRebelsrf_Soldier_03", 
"CFP_I_SDRebelsrf_Soldier_08", 
"CFP_I_SSArmy_Soldier_14", 
"CFP_I_SSArmy_Soldier_24", 
"CFP_I_SSArmy_Soldier_23", 
"CFP_I_SSArmy_Soldier_13", 
"CFP_I_SSArmy_Soldier_02", 
"CFP_I_SSArmy_Soldier_07", 
"CFP_I_SSArmy_Soldier_09", 
"CFP_I_SSArmy_Soldier_01", 
"CFP_I_SSArmy_Soldier_11", 
"CFP_I_SSArmy_Soldier_03"
];
	_ArmPool=	[];
	_MotPool=	["CFP_I_SSArmy_Pickup_PK_01", 
"CFP_I_SSArmy_UAZ_DShKM_01", 
"CFP_I_SSArmy_Land_Rover_SPG_9_01", 
"CFP_I_SSArmy_Hilux_ZU_23_01", 
"CFP_I_SSArmy_Hilux_DShKM_01", 
"CFP_I_SSArmy_Hilux_AGS_30_01", 
"CFP_I_SSArmy_Ural_ZU_23_01"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["CFP_I_SSArmy_Pickup_PK_01", 
"CFP_I_SSArmy_UAZ_DShKM_01", 
"CFP_I_SSArmy_Land_Rover_SPG_9_01", 
"CFP_I_SSArmy_Hilux_ZU_23_01", 
"CFP_I_SSArmy_Hilux_DShKM_01", 
"CFP_I_SSArmy_Hilux_AGS_30_01", 
"CFP_I_SSArmy_Ural_ZU_23_01"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["CFP_I_SDRebels_Soldier_06", 
"CFP_I_SDRebels_Soldier_03", 
"CFP_I_SDRebels_Soldier_01", 
"CFP_I_SDRebels_Soldier_04", 
"CFP_I_SDRebels_Soldier_07", 
"CFP_I_SDRebels_Soldier_02", 
"CFP_I_SDRebels_Soldier_05", 
"CFP_I_SDRebelsrf_Soldier_17", 
"CFP_I_SDRebelsrf_Soldier_05", 
"CFP_I_SDRebelsrf_Soldier_01", 
"CFP_I_SDRebelsrf_Soldier_02", 
"CFP_I_SDRebelsrf_Soldier_09", 
"CFP_I_SDRebelsrf_Soldier_04", 
"CFP_I_SDRebelsrf_Soldier_07", 
"CFP_I_SDRebelsrf_Soldier_03", 
"CFP_I_SDRebelsrf_Soldier_08", 
"CFP_I_SSArmy_Soldier_14", 
"CFP_I_SSArmy_Soldier_24", 
"CFP_I_SSArmy_Soldier_23", 
"CFP_I_SSArmy_Soldier_13", 
"CFP_I_SSArmy_Soldier_02", 
"CFP_I_SSArmy_Soldier_07", 
"CFP_I_SSArmy_Soldier_09", 
"CFP_I_SSArmy_Soldier_01", 
"CFP_I_SSArmy_Soldier_11", 
"CFP_I_SSArmy_Soldier_03"];
	_heliCrew=	[];};
	// HAMAS
if (_faction==10) then {
	_InfPool=	["CFP_O_HAMAS_Team_Leader_01", "CFP_O_HAMAS_Rifleman_AT_01", "CFP_O_HAMAS_Rifleman_AA_01", "CFP_O_HAMAS_Rifleman_01", "CFP_O_HAMAS_Repair_Specialist_01", "CFP_O_HAMAS_Medic_01", "CFP_O_HAMAS_Machine_Gunner_01", "CFP_O_HAMAS_Grenadier_01", "CFP_O_HAMAS_Explosive_Specialist_01"];	
	_ArmPool=	["CFP_O_HAMAS_Ural_ZU_23_01"];
	_MotPool=	["CFP_O_HAMAS_Hilux_01", "CFP_O_HAMAS_Hilux_AGS_30_01", "CFP_O_HAMAS_Hilux_DShKM_01", "CFP_O_HAMAS_Hilux_Igla_01", "CFP_O_HAMAS_Hilux_Metis_01", "CFP_O_HAMAS_Hilux_MLRS_01", "CFP_O_HAMAS_Hilux_Podnos_01", "CFP_O_HAMAS_Hilux_SPG_01", "CFP_O_HAMAS_Hilux_ZU_23_01"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["CFP_O_HAMAS_DShKM_01", "CFP_O_HAMAS_Metis_01", "CFP_O_HAMAS_Podnos_2B14_01", "CFP_O_HAMAS_SPG_9_01"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["CFP_O_HAMAS_Rifleman_01"];
	_heliCrew=	[];
};
// IDF
if (_faction==11) then {
	_InfPool=	["CFP_B_ILIDF_Rifleman_01", "CFP_B_ILIDF_Rifleman_AT_01", "CFP_B_ILIDF_Medic_01", "CFP_B_ILIDF_Machine_Gunner_01", "CFP_B_ILIDF_Grenadier_01", "CFP_B_ILIDF_Explosive_Specialist_01", "CFP_B_ILIDF_Engineer_01", "CFP_B_ILIDF_Asst_Machine_Gunner_01"];	
	_ArmPool=	["CFP_B_ILIDF_M113_01"];
	_MotPool=	["CFP_B_ILIDF_HMMWV_M2_01", "CFP_B_ILIDF_HMMWV_Unarmed_01"];
	_ACHPool=	["CFP_B_ILIDF_AH_64D_Saraph_01"];
	_CHPool=	["CFP_B_ILIDF_UH_60_Yanshuf_01"];
	_uavPool=	["CFP_B_ILIDF_MQ_9Reaper_01"];
	_stPool=	["CFP_B_ILIDF_M2_Machine_Gun_01", "CFP_B_ILIDF_M2_Minitripod_01", "CFP_B_ILIDF_M252_Mortar_01", "CFP_B_ILIDF_TOW_Tripod_01"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["CFP_B_ILIDF_Rifleman_01"];
	_heliCrew=	["CFP_B_ILIDF_Helicopter_Pilot_01"];
};







////////////////////////////////////////////////////////////////////////////////////////
if (_type==0) then {
		for "_i" from 0 to 5 do{
		_unit=_InfPool select (floor(random(count _InfPool)));
		_tempArray set [count _tempArray,_unit];};
						};
						
if (_type==1) then {_tempArray=_diverPool};
	
				
// CREATE ARMOUR & CREW			
if (_type==2) then {
				_tempUnit=_ArmPool select (floor(random(count _ArmPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
};

// CREATE ATTACK CHOPPER & CREW	
if (_type==3) then {
				_tempUnit=_ACHPool select (floor(random(count _ACHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
};

// CREATE TRANSPORT CHOPPER & CREW		
if (_type==4) then {
				_tempUnit=_CHPool select (floor(random(count _CHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
						};
						
// CREATE STATIC & CREW						
if (_type==5) then {
				_tempUnit=_stPool select (floor(random(count _stPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];

};
if (_type==6) then {_tempArray=_uavPool select (floor(random(count _uavPool)));};

// CREATE TRANSPORT & CREW
if (_type==7) then {
				_tempUnit=_MotPool select (floor(random(count _MotPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
				};

// CREATE BOAT & DIVER CREW
if (_type==8) then {
				_tempUnit=_shipPool select (floor(random(count _shipPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_diverPool select (floor(random(count _diverPool)));
				_temparray set [count _temparray,_crew];
				};
				
// CREATE CARGO
if (_type==9) then {
		for "_i" from 0 to 4 do{
			_unit=_InfPool select (floor(random(count _InfPool)));
			_temparray set [count _temparray,_unit];
							};
};

// CREATE DIVER CARGO
if (_type==10) then {
		for "_i" from 0 to 4 do{
			_unit=_diverPool select (floor(random(count _diverPool)));
			_temparray set [count _temparray,_unit];
							};			
};

//hint format ["%1",_tempArray];
_tempArray
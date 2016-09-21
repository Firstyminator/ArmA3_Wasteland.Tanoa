// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleSpawnClasses.sqf
//	@file Author: AgentRev

A3W_smallVehicles =
[
	"C_Quadbike_01_F",
	["B_Quadbike_01_F", "O_Quadbike_01_F", "I_Quadbike_01_F", "I_G_Quadbike_01_F"]
];

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_SUV_01_F",
	["C_Offroad_01_F", "I_G_Offroad_01_F"],
	["C_Offroad_02_unarmed_F", "I_C_Offroad_02_unarmed_F"],  //MB 4WD
	["C_Offroad_02_unarmed_F", "I_C_Offroad_02_unarmed_F"],  //MB 4WD
	["C_Offroad_02_unarmed_F", "I_C_Offroad_02_unarmed_F"],  //MB 4WD
	["C_Offroad_02_unarmed_F", "I_C_Offroad_02_unarmed_F"],  //MB 4WD
	["C_Offroad_02_unarmed_F", "I_C_Offroad_02_unarmed_F"],  //MB 4WD
	"I_G_Offroad_01_F",
	"C_Van_01_box_F",
	"C_Van_01_transport_F"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	["B_CTRG_LSV_01_light_F", "B_T_LSV_01_unarmed_F"],
	"O_T_LSV_02_unarmed_F"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
//	"I_Truck_02_Fuel_F",
//	"O_Truck_02_Fuel_F",
//	"I_Truck_02_medical_F",
//	"O_Truck_02_medical_F",
//	"B_MRAP_01_F",
//	"O_MRAP_02_F",
//	"I_MRAP_03_F"
	"I_G_Offroad_01_armed_F"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
    "C_Scooter_Transport_01_F",
    "C_Scooter_Transport_01_F",
    "C_Scooter_Transport_01_F",     // Increase possibility
    "I_C_Boat_Transport_02_F",
	"B_Lifeboat",
//	"O_Lifeboat",
	"C_Rubberboat",
	"B_SDV_01_F",
//	"O_SDV_01_F",
//	"I_SDV_01_F",
	"B_Boat_Transport_01_F",
	"O_Boat_Transport_01_F",
	"I_Boat_Transport_01_F",
	"I_G_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"O_Boat_Armed_01_hmg_F",
	"I_Boat_Armed_01_minigun_F",
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_police_F",
	"C_Boat_Civil_01_rescue_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
	"B_Mortar_01_F",
	"O_Mortar_01_F",
	"I_Mortar_01_F",
	"I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
	"C_Heli_Light_01_civil_F",
	"B_Heli_Light_01_F",
	"O_Heli_Light_02_unarmed_F",
	"I_Heli_light_03_unarmed_F"
	// don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
	"C_Plane_Civil_01_F",
	"C_Plane_Civil_01_racing_F",
	"I_C_Plane_Civil_01_F"
];

A3W_planeSpawnOdds = 0.5; // 0.0 to 1.0

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
    "hgun_Pistol_01_F",
	"hgun_P07_F",
    "hgun_P07_khk_F",
	"hgun_Rook40_F",
	"arifle_SDAR_F",
	"SMG_01_F",	// Vermin .45 ACP
	"SMG_02_F",	// Sting 9mm
    "SMG_05_F", // MP5 - Protector SMG
	"hgun_PDW2000_F",
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"arifle_TRG21_GL_F",
	"arifle_Mk20C_F",
	"arifle_Mk20_F",
	"arifle_Mk20_GL_F",
    "arifle_AKS_F",
    "arifle_SPAR_01_khk_F",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",
	"arifle_MXC_khk_F",
	"arifle_MX_khk_F",
	"arifle_MX_GL_khk_F",
	"arifle_MX_SW_khk_F",
	"arifle_MXM_khk_F",
	"srifle_EBR_F",
	"LMG_Mk200_F",
	"LMG_Zafir_F"
];

vehicleAddition =
[
	"muzzle_snds_L", // 9mm
	"muzzle_snds_M", // 5.56mm
	"muzzle_snds_H", // 6.5mm
	"muzzle_snds_H_MG", // 6.5mm LMG
	"muzzle_snds_B", // 7.62mm
	"muzzle_snds_acp", // .45 ACP
	"optic_Arco_ghex_F",
	"optic_SOS",
	"optic_Hamr_khk_F",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_aco_smg",
	"optic_Holosight_khk_F",
	"optic_Holosight_smg",
	"acc_flashlight",
	"acc_pointer_IR",
	"Medikit",
	"Medikit",
	"FirstAidKit",
    "FirstAidKit",
    "Binocular",
    "ItemGPS",
    "V_BandollierB_blk",
    "V_BandollierB_rgr",
    "V_TacVest_blk_POLICE",
    "V_HarnessO_brn",
    "V_HarnessOGL_ghex_F",
    "V_Press_F",
    "V_Press_F",
    "B_FieldPack_oucamo",
    "G_Balaclava_blk",
    "G_Spectacles_Tinted",
	"ToolKit"
];

vehicleAddition2 =
[
    "SmokeShellGreen",
    "SmokeShellOrange",
    "SmokeShellRed",
    "SmokeShellBlue",
    "SmokeShellPurple",
    "SmokeShell",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_yellow",
	"Chemlight_red",
    "NVGoggles",
    "NVGoggles_OPFOR",
    "NVGoggles_INDEP"
];

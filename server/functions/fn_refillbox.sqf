// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) ((START) + floor random ((END) - (START) + 1))
#define RANDOM_ODDS(ODDS) ([0,1] select (random 1 < (ODDS))) // between 0.0 and 1.0

private ["_box", "_boxType", "_boxItems", "_item", "_qty", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box setVariable [call vChecksum, true];

_box allowDamage false; // No more fucking busted crates
_box setVariable ["allowDamage", false, true];
_box setVariable ["A3W_inventoryLockR3F", true, true];

// Clear pre-existing cargo first
//clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

if (_boxType == "mission_USSpecial2") then { _boxType = "mission_USSpecial" };

switch (_boxType) do
{
	case "mission_USLaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["launch_RPG32_F", "launch_NLAW_F", "launch_Titan_short_F"], RANDOM_BETWEEN(0,2), RANDOM_BETWEEN(1,2)],
			["wep", "launch_Titan_F", RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(1,3)]
		];
	};
	case "mission_USSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["itm", "NVGoggles", RANDOM_BETWEEN(1,5)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["optic_MRCO", "optic_Arco", "optic_Hamr", "optic_SOS"], RANDOM_BETWEEN(0,2)],
			["itm", ["muzzle_snds_M", "muzzle_snds_H", "muzzle_snds_H_MG", "muzzle_snds_B", "muzzle_snds_acp"], RANDOM_BETWEEN(0,3)],
			["wep", ["hgun_Pistol_heavy_01_F", "hgun_Pistol_heavy_01_MRD_F", "hgun_Pistol_heavy_02_F", "hgun_Pistol_heavy_02_Yorris_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["arifle_MXM_F", "srifle_EBR_F", "srifle_DMR_01_DMS_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["LMG_Mk200_F", "LMG_Zafir_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", "30Rnd_556x45_Stanag", RANDOM_BETWEEN(4,8)],
			["mag", "30Rnd_65x39_caseless_mag", RANDOM_BETWEEN(4,8)],
			["mag", "30Rnd_65x39_caseless_green", RANDOM_BETWEEN(4,8)],
			["mag", "9Rnd_45ACP_Mag", RANDOM_BETWEEN(1,5)]
		];
	};
	case "mission_Main_A3snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_LRR_F", "srifle_LRR_camo_F", "srifle_GM6_F", "srifle_GM6_camo_F"], RANDOM_BETWEEN(0,1), RANDOM_BETWEEN(2,3)],
			["wep", ["srifle_EBR_F", "srifle_DMR_01_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,6)],
			["wep", ["hgun_Pistol_heavy_01_F", "hgun_Pistol_heavy_01_MRD_F", "hgun_Pistol_heavy_02_F", "hgun_Pistol_heavy_02_Yorris_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,5)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["itm", "optic_DMS", RANDOM_BETWEEN(1,2)]
		];
	};
	case "mission_AJ_Sniper1":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_DMR_03_woodland_F", "srifle_DMR_03_khaki_F", "srifle_DMR_03_F", "srifle_DMR_03_tan_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["wep", ["srifle_EBR_F", "srifle_DMR_01_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,6)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["itm", ["bipod_01_F_blk", "bipod_02_F_hex"], RANDOM_BETWEEN(1,3)],
			["itm", ["optic_DMS","optic_SOS"], RANDOM_BETWEEN(1,5)]
		];
	};
    case "mission_AJ_Sniper2":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_DMR_06_camo_F", "srifle_DMR_06_olive_F", "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_sniper_F"], RANDOM_BETWEEN(1,4), RANDOM_BETWEEN(2,4)],
			["wep", ["arifle_MXM_F", "arifle_MXM_Black_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,5)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["itm", ["bipod_03_F_oli", "bipod_02_F_hex"], RANDOM_BETWEEN(1,3)],
			["itm", ["optic_DMS","optic_SOS", "optic_NVS"], RANDOM_BETWEEN(1,5)],
            ["itm", ["H_Shemag_olive", "H_Shemag_khk", "H_ShemagOpen_tan", "H_ShemagOpen_khk", "H_Cap_brn_SPECOPS"], RANDOM_BETWEEN(3,6)]
		];
	};
	case "mission_AJ_Gear1":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["itm", ["V_HarnessOGL_gry", "V_RebreatherB", "V_RebreatherIA", "V_BandollierB_cbr", "V_TacVest_camo", "V_PlateCarrier1_rgr"], RANDOM_BETWEEN(2,5)],
			["itm", ["B_Carryall_mcamo", "B_TacticalPack_mcamo", "B_Kitbag_mcamo"], RANDOM_BETWEEN(2,5)],
			["itm", ["G_Diving","G_Balaclava_blk", "G_Bandanna_oli", "G_Bandanna_tan", "G_Bandanna_khk", "G_Bandanna_blk", "G_Bandanna_beast", "G_Balaclava_oli"], RANDOM_BETWEEN(4,8)],
			["itm", ["Medikit","ToolKit", "MineDetector", "ItemGPS"], RANDOM_BETWEEN(2,4)],
			["itm", ["B_Carryall_mcamo", "B_Bergen_mcamo", "B_FieldPack_khk", "B_TacticalPack_mcamo", "B_Kitbag_mcamo", "B_AssaultPack_mcamo", "B_FieldPack_blk", "B_TacticalPack_oli", "B_AssaultPack_blk"], RANDOM_BETWEEN(3,6)],
			["itm", ["Laserdesignator", "Laserdesignator_02", "Laserdesignator_03", "NVGoggles", "NVGoggles_OPFOR", "NVGoggles_INDEP"], RANDOM_BETWEEN(2,5)],
			["itm", ["V_RebreatherB", "V_RebreatherIR", "V_RebreatherIA", "V_PlateCarrier1_rgr", "V_PlateCarrier1_blk", "V_TacVestIR_blk", "V_BandollierB_blk", "V_BandollierB_rgr", "V_HarnessOSpec_brn"], RANDOM_BETWEEN(2,5)],
			["itm", ["H_RacingHelmet_1_black_F", "H_Cap_brn_SPECOPS", "H_HelmetB_plain_blk", "H_HelmetIA", "H_HelmetSpecB_paint1", "H_HelmetB_camo", "H_HelmetSpecB"], RANDOM_BETWEEN(3,6)]
		];
	};
	case "airdrop_DLC_Rifles":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_DMR_03_multicam_F", "srifle_DMR_02_sniper_F", "srifle_DMR_05_hex_F", "srifle_DMR_04_Tan_F"], 4,4],
			["itm", ["V_BandollierB_cbr", "V_TacVest_camo", "V_PlateCarrier1_rgr"], RANDOM_BETWEEN(4,8)],
			["bac", ["B_Carryall_mcamo", "B_Kitbag_mcamo"], RANDOM_BETWEEN(2,5)],
			["itm", ["bipod_01_F_blk", "bipod_02_F_hex"], 3],
			["itm", ["optic_DMS","optic_AMS","optic_KHS_blk"], RANDOM_BETWEEN(3,5)],
			["itm", ["muzzle_snds_B", "muzzle_snds_338_black", "muzzle_snds_338_sand", "muzzle_snds_93mmg"], RANDOM_BETWEEN(3,5)]
		];
	};
	case "airdrop_DLC_LMGs":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["MMG_02_black_F", "MMG_02_camo_F","MMG_02_sand_F","MMG_01_hex_F","MMG_01_tan_F"], 4,4],
			["itm", ["V_BandollierB_cbr", "V_TacVest_camo", "V_PlateCarrier1_rgr"], RANDOM_BETWEEN(1,8)],
			["bac", ["B_Carryall_mcamo", "B_Kitbag_mcamo"], RANDOM_BETWEEN(2,5)],
			["itm", ["bipod_01_F_blk", "bipod_02_F_hex"], 2],
			["itm", ["optic_DMS","optic_AMS","optic_KHS_blk"], RANDOM_BETWEEN(3,5)],
			["itm", ["muzzle_snds_338_black", "muzzle_snds_338_sand", "muzzle_snds_93mmg"], RANDOM_BETWEEN(3,5)]
		];
	};
	case "airdrop_Snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_LRR_LRPS_F", "srifle_LRR_camo_LRPS_F", "srifle_GM6_LRPS_F", "srifle_GM6_camo_LRPS_F"], RANDOM_BETWEEN(3,4), RANDOM_BETWEEN(6,8)],
			["wep", ["srifle_EBR_F", "srifle_DMR_01_F"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(2,6)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["bac", ["B_Carryall_mcamo", "B_Kitbag_mcamo"], RANDOM_BETWEEN(2,5)],			
			["itm", ["optic_DMS","optic_AMS","optic_KHS_blk"], RANDOM_BETWEEN(5,8)]
		];
	};
};

[_box, _boxItems] call processItems;

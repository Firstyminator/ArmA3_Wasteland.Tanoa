// Supporter Loadouts Start here 

_uid = getPlayerUID player;

_rank1 = [
"76561198110667111", //Firsty
"" //

];

_rank2 = [
"",  //
"" // 
];

_rank3 = [
"", //
"", //
"" //

];

_rank4 = [
"", // 
""  // 
];

_rank5 = [
""  // 
];

_rank6 = [
""  // 
];


switch (true) do {	
	case (_uid in _rank1):
		{
			removeVest _player;
			removeBackpack _player;
			removeVest _player;
			removeBackpack _player;
			_player addBackpack "B_Bergen_mcamo";
			_player addVest "V_TacVest_camo";
			_player forceAddUniform "U_B_CombatUniform_mcam_tshirt";
			_player addHeadgear "H_Cap_brn_SPECOPS";
//			_player setObjectTextureGlobal  [0, "client\images\vehicleTextures\camo_fuel.jpg"];
		};
		
			case (_uid in _rank2):
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			_player addBackpack "B_Kitbag_mcamo";
			_player addVest "V_TacVest_camo";
			_player forceAddUniform "U_I_GhillieSuit";
			_player addWeapon "arifle_mas_mk16_l_gl";
			_player addPrimaryWeaponItem "optic_mas_aim_c";
			_player addMagazine "30Rnd_mas_556x45_Stanag";
			_player addMagazine "30Rnd_mas_556x45_Stanag";
			_player addMagazine "1Rnd_HE_Grenade_shell";
			_player addMagazine "1Rnd_HE_Grenade_shell";
			_player addItem "HandGrenade";
			_player addWeapon "hgun_mas_glocksf_F";
			_player addMagazine "11Rnd_45ACP_Mag";
			_player addMagazine "11Rnd_45ACP_Mag";
			_player addItem "Medikit";
			_player addWeapon "Binoculars";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "FirstAidKit";
			_player addHeadgear "H_HelmetB_camo";	
//			_player setObjectTextureGlobal  [0, "client\images\vehicleTextures\redcamo.jpg"];		
		};
		
			case (_uid in _rank3):
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_PlateCarrierIAGL_dgtl";
			_player forceAddUniform "U_O_GhillieSuit";
			_player addWeapon "arifle_mas_g3s_m203";
			_player addPrimaryWeaponItem "muzzle_mas_snds_M";
			_player addPrimaryWeaponItem "acc_mas_pointer_IR_b";
			_player addPrimaryWeaponItem "optic_mas_aim_c";
			_player addItem "HandGrenade";
			_player addItem "HandGrenade";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addItem "1Rnd_HE_Grenade_shell";
			_player addItem "1Rnd_HE_Grenade_shell";
			_player addWeapon "hgun_mas_sa61_F";
			_player addHandgunItem "muzzle_mas_snds_LM";
			_player addHandgunItem "optic_mas_MRD";
			_player addMagazine "20Rnd_mas_765x17_Mag";
			_player addMagazine "20Rnd_mas_765x17_Mag";
			_player addItem "Medikit";
			_player addWeapon "Rangefinder";
			_player addItem "FirstAidKit";
			_player addItem "FirstAidKit";
			_player addHeadgear "H_PilotHelmetHeli_O";
//			_player setObjectTextureGlobal  [0, "client\images\vehicleTextures\IceCamo.jpg"];
		};
		
			case (_uid in _rank4):
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_PlateCarrierIA2_dgtl";
			_player forceAddUniform "U_B_GhillieSuit";
			_player addWeapon "srifle_mas_hk417_v_sd";
			_player addPrimaryWeaponItem "optic_mas_Hamr_camo";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addItem "HandGrenade";
			_player addItem "HandGrenade";
			_player addWeapon "hgun_Pistol_heavy_01_snds_F";
			_player addMagazine "11Rnd_45ACP_Mag";
			_player addMagazine "11Rnd_45ACP_Mag";
			_player addItem "Medikit";
			_player addWeapon "Rangefinder";
			_player addItemToUniform "FirstAidKit";
			_player addItemToUniform "FirstAidKit";
			_player addHeadgear "H_PilotHelmetHeli_O";	
//			_player setObjectTextureGlobal  [0, "client\images\vehicleTextures\SWWD.jpg"]; 
		};	
		
		case (_uid in _rank5):
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			_player addBackpack "B_Carryall_oli";
			_player addVest "V_PlateCarrierIAGL_dgtl";
			_player forceAddUniform "U_O_Wetsuit";
			_player addWeapon "arifle_mas_fal_m203";
			_player addPrimaryWeaponItem "muzzle_mas_snds_M";
			_player addPrimaryWeaponItem "acc_mas_pointer_IR_b";
			_player addPrimaryWeaponItem "optic_mas_aim_c";
			_player addItem "HandGrenade";
			_player addItem "HandGrenade";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addItem "1Rnd_HE_Grenade_shell";
			_player addItem "1Rnd_HE_Grenade_shell";
			_player addWeapon "hgun_mas_sa61_F";
			_player addHandgunItem "muzzle_mas_snds_LM";
			_player addHandgunItem "optic_mas_MRD";
			_player addMagazine "20Rnd_mas_765x17_Mag";
			_player addMagazine "20Rnd_mas_765x17_Mag";
			_player addItem "Medikit";
			_player addWeapon "Rangefinder";
			_player addItem "FirstAidKit";
			_player addItem "FirstAidKit";
			_player addGoggles "G_Balaclava_combat";
			_player addHeadgear "H_HelmetB_camo";
//			_player setObjectTextureGlobal  [0, "client\images\vehicleTextures\digicam.jpg"];   

		};	
			
				case (_uid in _rank6):
		{
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			removeAllWeapons _player;
			removeVest _player;
			removeBackpack _player;
			_player addBackpack "B_Carryall_oucamo";
			_player addVest "V_PlateCarrierIAGL_dgtl";
			_player forceAddUniform "U_I_GhillieSuit";
			_player addWeapon "arifle_mas_g3s_m203";
			_player addPrimaryWeaponItem "muzzle_mas_snds_M";
			_player addPrimaryWeaponItem "acc_mas_pointer_IR_b";
			_player addPrimaryWeaponItem "optic_mas_aim_c";
			_player addItem "HandGrenade";
			_player addItem "HandGrenade";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addMagazine "20Rnd_mas_762x51_Stanag";
			_player addItem "1Rnd_HE_Grenade_shell";
			_player addItem "1Rnd_HE_Grenade_shell";
			_player addWeapon "hgun_mas_sa61_F";
			_player addHandgunItem "muzzle_mas_snds_LM";
			_player addHandgunItem "optic_mas_MRD";
			_player addMagazine "20Rnd_mas_765x17_Mag";
			_player addMagazine "20Rnd_mas_765x17_Mag";
			_player addItem "Medikit";
			_player addWeapon "Rangefinder";
			_player addItem "FirstAidKit";
			_player addItem "FirstAidKit";
			_player addHeadgear "H_PilotHelmetHeli_O";
//			_player setObjectTextureGlobal  [0, "client\images\vehicleTextures\ant.jpg"];
		};
			
		default
		{
		_player addBackpack "B_FieldPack_cbr";
		_player addWeapon "hgun_mas_mak_F";
		_player addWeapon "arifle_mas_aks74";
		_player addMagazine "30Rnd_mas_545x39_T_mag";
		_player addMagazine "8Rnd_mas_9x18_Mag";
		_player addMagazine "8Rnd_mas_9x18_Mag";
		_player addItem "FirstAidKit";
		_player selectWeapon "arifle_mas_aks74"
		};
	};
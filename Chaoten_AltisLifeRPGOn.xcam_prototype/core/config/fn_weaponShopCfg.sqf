#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ // Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; // Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Anwärter",
					[
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150]
					]
				];
			};

			case (__GETC__(life_coplevel) == 2):
			{
				["Wachtmeister",
					[
						["arifle_MX_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150],
						["optic_MRCO",nil,2500],
						["optic_Aco_grn",nil,2500],
						["acc_flashlight",nil,1200]
					]
				];
			};

			case (__GETC__(life_coplevel) == 3):
			{
				["Oberwachtmeister",
					[
						["arifle_MX_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,500],
						// ["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXC_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
						// ["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXM_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
						// ["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,2500],
						["optic_Aco_grn",nil,2500],
						["acc_flashlight",nil,1200],
						["SmokeShell",nil,1000]
					]
				];
			};

			case (__GETC__(life_coplevel) == 4):
			{
				["Kommissar",
					[
						["srifle_EBR_F",nil,80000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_MX_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,500],
						// ["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXC_F",nil,40000],
						// ["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						// ["arifle_MXM_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
						// ["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_sdar_F",nil,30000],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250], // SDAR scharfe Muni
						["20Rnd_556x45_UW_mag","Underwater SDAR Magazin 556x45",200],
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150],
						["optic_DMS",nil,10000],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,2500],
						["optic_Aco_grn",nil,2500],
						["optic_Aco",nil,2500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_L",nil,1000],
						["acc_flashlight",nil,1200],
						["SmokeShell",nil,1000],
						["HandGrenade",nil,5000],
						["B_UavTerminal",nil,410]
					]
				];
			};

			case (__GETC__(life_coplevel) == 5):
			{
				["Oberkommissar",
					[
						["srifle_EBR_F",nil,80000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_MX_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXC_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXM_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_SW_F",nil,80000],
						["100Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_GL_F",nil,80000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_sdar_F",nil,30000],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250], // SDAR scharfe Muni
						["20Rnd_556x45_UW_mag","Underwater SDAR Magazin 556x45",200],
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150],
						["optic_DMS",nil,10000],
						["optic_NVS",nil,25000],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,2500],
						["optic_Aco_grn",nil,2500],
						["optic_Aco",nil,2500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_L",nil,1000],
						["acc_flashlight",nil,1200],
						["1Rnd_SmokeYellow_Grenade_shell",nil,5000],
					//	["UGL_FlareRed_F",nil,500],
					//	["UGL_FlareGreen_F",nil,500],
						["SmokeShell",nil,1000],
						["SmokeShellYellow","Tr?nengas",5000],
						["HandGrenade",nil,5000],
						["B_UavTerminal",nil,410]
					]
				];
			};

			case (__GETC__(life_coplevel) == 6):
			{
				["Hauptkommissar",
					[
						["launch_Titan_short_F",nil,80000],
						["Titan_AT",nil,3000],
						["srifle_LRR_F",nil,100000],
						["7Rnd_408_Mag",nil,350],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,80000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_MX_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXC_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXM_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_SW_F",nil,80000],
						["100Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_GL_F",nil,80000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_sdar_F",nil,30000],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250], // SDAR scharfe Muni
						["20Rnd_556x45_UW_mag","Underwater SDAR Magazin 556x45",200],
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150],
						["optic_SOS",nil,15000],
						["optic_DMS",nil,10000],
						["optic_NVS",nil,25000],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,2500],
						["optic_Aco_grn",nil,2500],
						["optic_Aco",nil,2500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_L",nil,1000],
						["acc_flashlight",nil,1200],
						["1Rnd_SmokeYellow_Grenade_shell",nil,5000],
					//	["UGL_FlareRed_F",nil,500],
					//	["UGL_FlareGreen_F",nil,500],
						["SmokeShell",nil,1000],
						["SmokeShellYellow","Tr?nengas",5000],
						["HandGrenade",nil,5000],
						["B_UavTerminal",nil,410]
					]
				];
			};

			case (__GETC__(life_coplevel) == 7):
			{
				["Polizeidirektor",
					[
						["launch_Titan_short_F",nil,80000],
						["Titan_AT",nil,3000],
						["srifle_LRR_F",nil,100000],
						["7Rnd_408_Mag",nil,350],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,80000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_MX_F",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXC_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXM_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_SW_F",nil,80000],
						["100Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_GL_F",nil,80000],
						["30Rnd_65x39_caseless_mag",nil,500],
					// 	["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_sdar_F",nil,30000],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250], // SDAR scharfe Muni
						["20Rnd_556x45_UW_mag","Underwater SDAR Magazin 556x45",200],
						["hgun_P07_snds_F","Taser Pistole",7500],
						["16Rnd_9x21_Mag",nil,150],
						["optic_SOS",nil,15000],
						["optic_DMS",nil,10000],
						["optic_NVS",nil,25000],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,5000],
						["optic_MRCO",nil,2500],
						["optic_Aco_grn",nil,2500],
						["optic_Aco",nil,2500],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_L",nil,1000],
						["acc_flashlight",nil,1200],
						["1Rnd_SmokeYellow_Grenade_shell",nil,5000],
						["UGL_FlareRed_F",nil,500],
						["UGL_FlareGreen_F",nil,500],
						["SmokeShell",nil,1000],
						["SmokeShellYellow","Tr?nengas",5000],
						["HandGrenade",nil,5000],
						["B_UavTerminal",nil,410]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Arzt!"};
			case (__GETC__(life_mediclevel) == 1):
			{
				["Rettungsassistent",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["B_FieldPack_ocamo",nil,3000],
						["B_Carryall_khk",nil,5000],
						["U_C_HunterBody_brn",nil,1000],
						["V_TacVest_blk",nil,750]
					]
				];
			};
			case (__GETC__(life_mediclevel) == 2):
			{
				["Sanitäter",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["B_FieldPack_ocamo",nil,3000],
						["B_Carryall_khk",nil,5000],
						["V_TacVest_blk",nil,750],
						["H_Watchcap_blk",nil,250]
					]
				];
			};
			case (__GETC__(life_mediclevel) == 3):
			{
				["Notarzt",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["B_FieldPack_ocamo",nil,3000],
						["B_Carryall_khk",nil,5000],
						["V_TacVest_blk",nil,750],
						["H_Watchcap_blk",nil,250],
						["H_Cap_headphones",nil,250],
						["NVGoggles_OPFOR",nil,150],
						["U_C_Driver_1_red",nil,1000]
					]
				];
			};
			case (__GETC__(life_mediclevel) == 4):
			{
				["Oberarzt",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["B_FieldPack_ocamo",nil,3000],
						["B_Carryall_khk",nil,5000],
						["V_TacVest_blk",nil,750],
						["V_TacVestIR_blk",nil,750],
						["H_Watchcap_blk",nil,250],
						["H_Cap_headphones",nil,250],
						["U_C_Driver_1_red",nil,1000],
						["U_C_Driver_1_white",nil,1000],
						["H_MilCap_gry",nil,250],
						["NVGoggles_OPFOR",nil,150]
					]
				];
			};
			case (__GETC__(life_mediclevel) == 5):
			{
				["Chefarzt",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["B_FieldPack_ocamo",nil,3000],
						["B_Carryall_khk",nil,5000],
						["V_TacVest_blk",nil,750],
						["V_TacVestIR_blk",nil,750],
						["H_Watchcap_blk",nil,250],
						["H_Cap_headphones",nil,250],
						["U_C_Driver_1_red",nil,1000],
						["U_C_Driver_1_white",nil,1000],
						["H_MilCap_gry",nil,250],
						["NVGoggles_OPFOR",nil,150]
					]
				];
			};
		};									
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian ): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du besitzt keine Rebellen-Training Lizenz!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Rook40_F",nil,15000],
						["hgun_Pistol_heavy_02_F",nil,22500],
						["hgun_ACPC2_F",nil,27000],
						["hgun_PDW2000_F",nil,45000],
						["optic_ACO_grn_smg",nil,4000],
						["V_Rangemaster_belt",nil,11250],
						["16Rnd_9x21_Mag",nil,75],
						["9Rnd_45ACP_Mag",nil,105],
						["6Rnd_45ACP_Cylinder",nil,120],
						["30Rnd_9x21_Mag",nil,300],
						["LMG_Zafir_F",nil,130000],
						["srifle_LRR_camo_F",nil,1000000],
						["srifle_DMR_01_F",nil,95000],
						["arifle_MXM_Black_F",nil,65000],
						["arifle_MX_Black_F",nil,55000],
						["arifle_MXC_Black_F",nil,50000],
						["arifle_TRG20_F",nil,58000],
						["arifle_Katiba_F",nil,75000],
						["arifle_Katiba_C_F",nil,85000],
						["arifle_SDAR_F",nil,60000],
						["arifle_Mk20_F",nil,70000],
						["optic_Hamr",nil,6500],
						["optic_ACO_grn",nil,5500],
						["optic_Aco",nil,5500],
						["optic_MRCO",nil,6000],
						["optic_SOS",nil,50000],
						["optic_Holosight",nil,4000],
						["muzzle_snds_B",nil,3000],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["acc_flashlight",nil,1500],
						["7Rnd_408_Mag",nil,10000],
						["150Rnd_762x51_Box",nil,5000],
						["20Rnd_556x45_UW_mag",nil,100],
						["30Rnd_556x45_Stanag",nil,450],
						["10Rnd_762x51_Mag",nil,1200],
						["30Rnd_65x39_caseless_green",nil,450],
						["30Rnd_65x39_caseless_mag",nil,450]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian ): {"Du bist kein Zivilist!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian ): {"Du bist kein Zivilist"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};

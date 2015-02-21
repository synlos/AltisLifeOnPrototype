/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
        ["U_C_Poloshirt_blue","Poloshirt Blau",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",250],
		["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiss",250],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",250],
		["U_C_Poloshirt_stripped","Poloshirt Gestreift",250],
		["U_C_Poloshirt_tricolour","Poloshirt Dreifarbig",250],
		["U_IG_Guerilla2_2","Gruenes Hemd & weisse Hose",750],
		["U_IG_Guerilla2_1","Schwarzes Hemd & beche Hose",750],
		["U_IG_Guerilla3_1","Braune Jacke & Jeans",750],
		["U_IG_Guerilla2_3","Graues Hemd & gruene Hose",750],
		["U_C_HunterBody_grn","Beche Jacke & Jeans",1000],
		["U_OrestesBody","Gay Outfit",1100],
		["U_C_WorkerCoveralls","Mechaniker Outfit",1250]
//	Cops only	["U_NikosAgedBody","Casual Wears",5000] 
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",100],
			["H_Bandanna_surfer","Surfer Bandanna",100],
			["H_Bandanna_gry","Graues Bandanna",100],
			["H_Bandanna_cbr","Braunes Bandanna",100],
			["H_Bandanna_khk","Khaki Bandanna",100],
			["H_Bandanna_sgg","Sage Bandanna",100],
			["H_StrawHat",nil,150],
			["H_BandMask_blk",nil,200],
			["H_Booniehat_tan",nil,200],
			["H_Hat_blue",nil,300],
			["H_Hat_brown",nil,300],
			["H_Hat_checker",nil,300],
			["H_Hat_grey",nil,300],
			["H_Hat_tan",nil,300],
			["H_Cap_blu",nil,400],
			["H_Cap_grn",nil,400],
			["H_Cap_grn_BI",nil,400],
			["H_Cap_oli",nil,400],
			["H_Cap_red",nil,400],
			["H_Cap_tan",nil,400],
			["H_RacingHelmet_1_black_F",nil,500],
			["H_RacingHelmet_1_red_F",nil,500],
			["H_RacingHelmet_1_white_F",nil,500],
			["H_RacingHelmet_1_blue_F",nil,500],
			["H_RacingHelmet_1_yellow_F",nil,500],
			["H_RacingHelmet_1_green_F",nil,500],
			["H_RacingHelmet_1_F",nil,2500],
			["H_RacingHelmet_2_F",nil,2500],
			["H_RacingHelmet_3_F",nil,2500],
			["H_RacingHelmet_4_F",nil,2500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Goggles_VR",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Kitbag_mcamo",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Parachute",nil,10000]
		];
	};
};
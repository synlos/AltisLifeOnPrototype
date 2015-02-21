#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name CHANGING RANK SYSTEM. DO NOT EDIT ANYTHING HERE. THX!!!!!!!!!
ctrlSetText[3103,"Altis Polizeibekleidung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
//			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
//			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
//			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
//			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 9) then
		{
//			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
//			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 10) then
		{
//			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 11) then
		{
//			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 12) then
		{
//			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 13) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 14) then
		{
			_ret set[count _ret,["U_Rangemaster",nil,1000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,20000]];
			_ret set[count _ret,["U_NikosAgedBody",nil,50000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1000]];
		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			//_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			// _ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			//_ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			//_ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 10) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			// _ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 11) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			// _ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 12) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			// _ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 13) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
		if(__GETC__(life_coplevel) == 14) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,200]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,500]];
			_ret set[count _ret,["H_HelmetB_camo",nil,500]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,1000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_Beret_02",nil,5000]];
			_ret set[count _ret,["H_Beret_Colonel",nil,50000]];
			_ret set[count _ret,["H_Cap_police",nil,500]];
		};
	};
	[] call life_fnc_updateClothes;

	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,100]];
			_ret set[count _ret,["G_Shades_Blue",nil,100]];
			_ret set[count _ret,["G_Sport_Blackred",nil,100]];
			_ret set[count _ret,["G_Sport_Checkered",nil,100]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,100]];
			_ret set[count _ret,["G_Aviator",nil,100]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,100]];
			_ret set[count _ret,["G_Squares",nil,100]];
			_ret set[count _ret,["G_Lowprofile",nil,100]];
			_ret set[count _ret,["G_Combat",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,100]];
			_ret set[count _ret,["G_Shades_Blue",nil,100]];
			_ret set[count _ret,["G_Sport_Blackred",nil,100]];
			_ret set[count _ret,["G_Sport_Checkered",nil,100]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,100]];
			_ret set[count _ret,["G_Aviator",nil,100]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,100]];
			_ret set[count _ret,["G_Squares",nil,100]];
			_ret set[count _ret,["G_Lowprofile",nil,100]];
			_ret set[count _ret,["G_Combat",nil,100]];
			_ret set[count _ret,["G_B_Diving",nil,500]];
		};
	};

	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,2000]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
//			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
//			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
//			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 10) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
//			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 11) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
//			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 12) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
//			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 13) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
		if(__GETC__(life_coplevel) == 14) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
		    _ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		    _ret set[count _ret,["V_TacVestIR_blk",nil,3000]];
		    _ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,5000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,15000]];
			_ret set[count _ret,["V_TacVest_brn",nil,2000]];
			_ret set[count _ret,["V_Press_F",nil,100000]];
		};
	};

	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_blk",nil,800],
			["B_FieldPack_blk",nil,700],
			["B_Bergen_blk",nil,700],
			["B_UAV_01_backpack_F",nil,50000]
		];
	};
};

_ret;

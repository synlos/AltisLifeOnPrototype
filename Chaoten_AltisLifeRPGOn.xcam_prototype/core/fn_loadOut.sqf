#include <macro.h>
/*
    File: fn_loadout.sqf
    Author: Torsten "Demon" Ennenbach

    Description:
    General Loadout seperated by Side
    Hate the "LoadGear/LoadOut Default mix CRAP by each fucking wannabe developer!"


*/

private["_coplevel"];

	_uniform = uniform player;
	_backpack = backpack player;
/*
// civilian Part
if (playerSide == civilian) then
{

	_uniform = uniform player;
	_backpack = backpack player;
		
	if((getPlayerUID player) in __GETC__(life_gang_darg)) then {
		switch(_uniform) do {
			case "U_O_PilotCoveralls" : {
				player setObjectTextureGlobal [0, "textures\DARG\darg_uniform.jpg"]; 			
			};					
		};	
		switch(_backpack) do {
			case "B_Carryall_khk" : {
				(unitBackpack player) setObjectTextureGlobal [0, "textures\DARG\darg_backpack.jpg"]; 			
			};		
		};
	};
	
	if((getPlayerUID player) in __GETC__(life_gang_sd)) then {
		switch(_uniform) do {
			case "U_B_CombatUniform_mcam" : {
				player setObjectTextureGlobal [0,"textures\sec.jpg"];
			};
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\SD\Rangemaster-uniform.jpg"]; 			
			};		
		};	
	};

	
};
*/

if (playerSide == civilian && _uniform == "U_Rangemaster" && (["adac"] call life_fnc_permLevel) > 0 ) then
{
	player setObjectTextureGlobal  [0, "textures\clothing\adac_uniform.paa"]; //adac uniform
};

// WEST PART
if (playerSide == west) then {

	_coplevel = (__GETC__(life_coplevel));
	diag_log format["COPLEVEL:%1", _coplevel];
	
// Switch texture only if cop is wearing a specific uniform!
	if ( (_coplevel > 0) && (uniform player == "U_Rangemaster") ) then {
		player setObjectTextureGlobal [0,"textures\cop\recruit_uniform_rangemaster.jpg"];
	};

	if ((_coplevel > 0) && (uniform player == "U_B_CombatUniform_mcam_vest") ) then {
		player setObjectTextureGlobal [0,"textures\cop\cop_officer.jpg"];
	};

	if ((_coplevel > 3) && (uniform player == "U_B_CombatUniform_mcam_worn") ) then {
		player setObjectTextureGlobal [0,"textures\cop\cop_sergeant.jpg"];
	};

	/*

	if ((_coplevel> 0) && (Backpack player == "B_OutdoorPack_blk") ) then {
		(unitbackpack player) setObjectTextureGlobal [0, "textures\COP\Uniform\Rucksack_Polizei.jpg"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};
	*/

};

// MEDICS PART
if (playerSide == independent) then {

/*
allowed uniforms:
U_I_HeliPilotCoveralls
*/

	/*
	switch(_uniform) do {
		case "U_I_HeliPilotCoveralls" : {
			player setObjectTextureGlobal [0, "textures\MED\medic_uniform.jpg"]; 					
		};
		case "U_IG_Guerilla2_2" : {
			player setObjectTextureGlobal [0, "textures\MED\medic_uniform.jpg"]; 					
		};
		case "U_IG_Guerilla2_3" : {
			player setObjectTextureGlobal [0, "textures\MED\medic_uniform.jpg"]; 					
		};

	};
	*/
	_mediclevel = (__GETC__(life_mediclevel));

	if ( (_mediclevel > 0) && (uniform player == "U_I_HeliPilotCoveralls") ) then {
		player setObjectTextureGlobal [0,"textures\clothing\medic\med_rettung.jpg"];
	};
	if ( (_mediclevel > 2) && (uniform player == "U_I_HeliPilotCoveralls") ) then {
		player setObjectTextureGlobal [0,"textures\clothing\medic\med_sani.jpg"];
	};
	if ( (_mediclevel > 4) && (uniform player == "U_I_HeliPilotCoveralls") ) then {
		player setObjectTextureGlobal [0,"textures\clothing\medic\med_notarzt.jpg"];
	};
	if ( (_mediclevel == 7) && (uniform player == "U_I_HeliPilotCoveralls") ) then {
		player setObjectTextureGlobal [0,"textures\clothing\medic\med_oberarzt.jpg"];
	};
	if ( (_mediclevel == 8) && (uniform player == "U_I_HeliPilotCoveralls") ) then {
		player setObjectTextureGlobal [0,"textures\clothing\medic\med_chefarzt.jpg"];
	};

	if (Backpack player == "B_Bergen_mcamo") then {
		(unitbackpack player) setObjectTextureGlobal [0, "textures\clothing\medic_backpack.jpg"];
	};

};

_canUse = player isUniformAllowed _uniform;

diag_log format["PLAYERSIDE: %1", playerSide];
diag_log format["UNIFORM: %1", _uniform];
diag_log format["IS UNIFORM ALLOWED: %1", _canUse];

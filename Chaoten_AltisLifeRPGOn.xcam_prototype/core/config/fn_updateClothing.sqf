/*

	Updates player clothing by replacing vanilla by custom ones

*/

private["_uniform","_backpack","_mediclevel"];

///Uniform
////////////////

_uniform = uniform player;
_backpack = backpack player;

// MEDICS
while {(playerSide) == "independent" && _uniform == "U_I_HeliPilotCoveralls"} do
    {
	switch (__GETC__(life_medicLevel)) do
    {
	case 1: {[[player,0,"textures\clothing\medic\med_rettung.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;};
    case 2: {[[player,0,"textures\clothing\medic\med_sani.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;};
    case 3: {[[player,0,"textures\clothing\medic\med_notarzt.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;};
    case 4: {[[player,0,"textures\clothing\medic\med_oberarzt.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;};
    case 5: {[[player,0,"textures\clothing\medic\med_chefarzt.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;};
	if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
};
	
// THE COPS
case (playerSide == west && _uniform == "U_Rangemaster"):
{
	[[player,0,"textures\cop\recruit_uniform_rangemaster.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
case (playerSide == west && _uniform == "U_B_CombatUniform_mcam_worn"):
{
	[[player,0,"textures\cop\cop_sergeant.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
      case (playerSide == west && _uniform == "U_B_CombatUniform_mcam_vest"):
{
	[[player,0,"textures\cop\cop_officer.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};

_canUse = player isUniformAllowed _uniform;

diag_log format["PLAYERSIDE: %1", playerSide];
diag_log format["UNIFORM: %1", _uniform];
diag_log format["IS UNIFORM ALLOWED: %1", _canUse];

///backpack
////////////////

/*_backpack = backpack player;

switch(true) do
{
	case (playerSide == west && _backpack == "B_Bergen_Base"):
	{
	};
};*/

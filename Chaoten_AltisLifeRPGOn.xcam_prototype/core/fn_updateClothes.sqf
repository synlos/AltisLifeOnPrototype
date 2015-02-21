
#include <macro.h>
/*
	File: fn_updateClothes.sqf
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Centralized Update Outfit file.
*/

private["_coplevel"];

_coplevel = (__GETC__(life_coplevel));
diag_log format["UPDATE CLOTHES CALLED"];
diag_log format["COPLEVEL:%1", _coplevel];

diag_log format["DEBUG:: Client:: Player alive: %1", alive player];

if (alive player) then
{
		[] call life_fnc_loadOut;
};

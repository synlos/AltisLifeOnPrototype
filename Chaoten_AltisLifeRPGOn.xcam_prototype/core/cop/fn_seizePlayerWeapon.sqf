/*
	File: fn_seizePlayerWeapon.sqf
	Author: Simon
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
hint localize "STR_pInAct_SeizeWeaponSearch";
sleep 2;
//hint localize "";
[[player],"life_fnc_seizePlayerWeaponAction",_unit,false] spawn life_fnc_MP;
[[52, player, format["Sie haben die Waffen und Magazine von %1 beschlagnahmt.", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;

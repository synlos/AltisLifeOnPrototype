/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "U_I_HeliPilotCoveralls";
player addHeadgear "H_Cap_blu";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player assignItem "B_Bergen_mcamo";
//player addItem "ItemRadio";
//player assignItem "ItemRadio";

if(hmd player != "") then {
	player unlinkItem (hmd player);
};

[] call life_fnc_saveGear;
//[] spawn life_fnc_updateClothes;

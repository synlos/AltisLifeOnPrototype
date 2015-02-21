/*
File: fn_gatherMeth.sqf

Description:
Stealing Meth sodium
*/
private["_sum"];
_sum = ["sodium_hydroxyde",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Stehle Zutaten...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"sodium_hydroxyde",1] call life_fnc_handleInv)) then
{
//playSound "bag"; // this only if you want the sound for the bag when you gather it
titleText["zutaten gestohlen.","PLAIN"];
};
};

life_action_in_use = false;

/*
    File: fn_updateUniform.sqf
    Author: Niels "Gamewalker" Kräupl

    Description:
    Updates uniform for specific player side
*/

switch(playerSide) do {
    case west: {
        [] call life_fnc_copUniform;
    };

    case independent: {
        [] call life_fnc_medicUniform;
    };

};

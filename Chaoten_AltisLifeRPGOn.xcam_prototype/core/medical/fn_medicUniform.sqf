/*
    File: fn_medicUniform.sqf
    Author: Niels "Gamewalker" Kräupl

    Description:
    Loads saved civilian gear, this is limited for a reason and that's balance.
*/

[] spawn
{
    while {true} do
    {
        waitUntil {uniform player == "U_I_HeliPilotCoveralls"};
        player setObjectTextureGlobal [0,"textures\clothing\medic\med_rettung.jpg"];
        waitUntil {uniform player != "U_I_HeliPilotCoveralls"};
    };
};

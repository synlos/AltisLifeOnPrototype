/*
    File: fn_weed.sqf
    Author: Kuchiha

    Description:
    cocaine effect effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "Deine Oma ist nicht sehr stolz auf dich!";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effetcs
for "_i" from 0 to 44 do
{
    "chromAberration" ppEffectAdjust [random 0.95,random 0.95,true];
    "chromAberration" ppEffectCommit 3;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.52,0.95,0.05];
    "radialBlur" ppEffectCommit 4;
    addcamShake[random 6, 4, random 9];
    sleep 1;
	
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;
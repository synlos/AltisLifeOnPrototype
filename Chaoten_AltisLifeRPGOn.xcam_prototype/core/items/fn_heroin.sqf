/*
    File: fn_weed.sqf
    Author: Kuchiha

    Description:
    heroin effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "Einmal geht noch!";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effetcs
for "_i" from 0 to 44 do
{
    "chromAberration" ppEffectAdjust [random 0.5,random 0.5,true];
    "chromAberration" ppEffectCommit 2;   
    "radialBlur" ppEffectAdjust  [random 1.02,random 0.3,0.65,0.15];
    "radialBlur" ppEffectCommit 2;
    addcamShake[random 4, 3, random 7];
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
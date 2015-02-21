//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "Du bist betrunken, besser 15 Minuten lang nicht fahren!";
sleep 3;

//Activate ppEffects we need
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effetcs
for "_i" from 0 to 900 do
{
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
	player setVariable["drunken",true,true];
};

//Stop effects
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
player setVariable["drunken",false,true];
sleep 6;

//Deactivate ppEffects
"radialBlur" ppEffectEnable false;
resetCamShake;
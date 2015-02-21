 /*
	File: fn_hooker
	Author:Zaickz
	Version: 0.2
	
	Notice:
	Exclusive for Nordmann and Herrschaft Server!
	
	Description:
	You can have Sex with prostitutes and may get ill ;)
*/

_mode = _this select 3;


switch (_mode) do 
{
	case "ficken": 
				{
					if(playerSide == west) exitWith
					{
						hint "Du bist ein Polizist! Mit dir ist mir das zu heiß! Verpiss dich lieber!";
					};
					if(currentWeapon player != "") exitWith
					{
						hint "Pack deine Waffe weg!";
					};

						//Prices
							_number = ceil(random 7);
							if(_number == 0) then { hookerprice = 100;};
							if(_number == 1) then { hookerprice = 2000;};
							if(_number == 2) then { hookerprice = 4000;};
							if(_number == 3) then { hookerprice = 8000;};
							if(_number == 4) then { hookerprice = 16000;};
							if(_number == 5) then { hookerprice = 32000;};
							if(_number == 6) then { hookerprice = 64000;};
							if(_number == 7) then { hookerprice = 128000;};
							_pplayer = _this select 0;
							
							//Chance of get some sexualill
							_number1 = ceil(random 100);
							if(_number1<33) then { sexualill = 0;};
							if(_number1>33) then { sexualill = 1;};
							if(_number1>66) then { sexualill = 2;};
					
					sleep 1;
					_playercosts = hookerprice;
					_playersexill = sexualill;						
						if(life_cash < hookerprice) exitWith 
						{
							hint "Kein Geld? Dann wirst du mit mir auch kein Spaß haben!";
						};
						if(life_sex_ill > 0) exitWith
						{
							hint "Geschlechtskrankheit? Geh erstmal zum Arzt bevor du hier rum vögelst!";
						};
						titleText["Ohhh jaaa ... Mhhhmm ......","BLACK FADED"];
						hint format["Das hat mir gefallen suesser :* \n Du musst %1 € zahlen. \n\n Und du solltest beim Arzt vorbei schauen",_playercosts];
						life_cash = life_cash - _playercosts;
						life_sex_ill = life_sex_ill + _playersexill;

						if(_playersexill == 1) then
						{
							player setDamage 0.25;
						};
						if(_playersexill == 2) then
						{
							player setDamage 0.50;
						};		
				};
};
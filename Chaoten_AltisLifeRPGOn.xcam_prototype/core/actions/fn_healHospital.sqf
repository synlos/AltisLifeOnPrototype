/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/

_mode = _this select 3;


switch (_mode) do 
{
	case "heilen":
					{
						if(life_cash < 50) exitWith {hint "Du hast keine $50 um geheilt zu werden."};
						titleText["Doctor Dorian heilt dich... keine Angst...","PLAIN"];
						sleep 2;
						titleText["ups, Ich denke ich habe die Nadel falsch gesteckt..","PLAIN"];
						sleep 5;
						if(player distance (_this select 0) > 5) exitWith {titleText["Sie müssen in einem Radius von 5m bleiben, damit der Doktor Sie behandeln kann.","PLAIN"]};
						titleText["Sie sind nun völlig gesund!","PLAIN"];
						player setdamage 0;
						life_cash = life_cash - 50;
					};
	case "checken":
					{
						 if(life_checked == 1) exitWith { hint "Du hast dich bereits durchchecken lassen. Du musst dich nun behandeln lassen"; };
						 if(life_sex_ill == 0) then
						 {
							 hint format["Diagnose: \n\n Name: %1 \n\n Krankheit: keine",name player];
							 life_checked = 0;
						 };
						 if(life_sex_ill == 1) then
						 {
							 hint format["Diagnose: \n\n Name: %1 \n\n Krankheit: Tripper \n\n Du solltest dich nun bei mir behandeln lassen!",name player];
							 life_checked = 1;
						 };
						 if(life_sex_ill == 2) then
						 {
							hint format["Diagnose: \n\n Name: %1 \n\n Krankheit: Syphilis \n\n Du solltest dich nun bei mir behandeln lassen",name player];
							life_checked = 1;
						 };
					 };
	case "behandeln":
					 {
						if(life_checked == 0) exitWith { hint "Wie soll ich dich behandeln, wenn ich nicht mal weiß was du hast?! Also lass dich durchchecken"; };
						if(life_sex_ill == 1) then
						{
							if(life_cash<1000) exitWith { hint "Ich habe bei dir eine Geschlechtskrankheit gefunden du hast nur nicht genug Geld dich behandeln zu lassen!";};
							titleText["Ich habe Tripper bei dir entdeckt. Ich werde dich nun heilen. \n Das kann bis zu 20 Sekunden dauern.","PLAIN"];
							sleep 20;
							titleText["Du bist geheilt! Du solltest besser aufpassen!","PLAIN"];
							life_cash = life_cash - 1000;
							player setDamage 0;
							life_sex_ill = 0;
							life_checked = 0;
						};
						if(life_sex_ill == 2) then
						{
							if(life_cash<10000) exitWith { hint "Ich habe bei dir eine Geschlechtskrankheit gefunden du hast nur nicht genug Geld dich behandeln zu lassen!";};
							titleText["Ich habe Aids bei dir entdeckt. Ich werde dich nun heilen. \n Das kann bis zu 45 Sekunden dauern.","PLAIN"];
							sleep 45;
							titleText["Du bist geheilt! Du solltest besser aufpassen!","PLAIN"];
							life_cash = life_cash - 10000;
							player setDamage 0;
							life_sex_ill = 0;
							life_checked = 0;
						};
					 };
};

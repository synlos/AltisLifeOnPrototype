/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Person to ticket is nil"};
if(isNull life_ticket_unit) exitWith {hint "Person to ticket doesn't exist."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Es sind nur Ziffern gestattet."};
if((parseNumber _val) > 1000000) exitWith {hint "Die maximale Höhe eines Bußgelds beträgt 1000000$"};
[[0,format["%1 hat ein Ticket über $%2 an %3 ausgestellt",profileName,[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_ticketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;
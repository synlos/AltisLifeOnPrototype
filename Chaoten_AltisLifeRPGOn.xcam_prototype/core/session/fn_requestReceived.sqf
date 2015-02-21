#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
diag_log format["Client: fn_requestReceived started..."];
private["_session", "_isbanned", "_coplevel", "_perm_coplevel"];
life_session_tries = life_session_tries + 1;
_session = _this;
diag_log format["CLIENT: %1 :: %2", typeName _session,_session];
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText["There was an error in trying to setup your client.","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText ["Received request from server... Validating...","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

_isbanned = false;
//Parse basic player information.
life_cash = parseNumber (_this select 2);
life_atmcash = parseNumber (_this select 3);
__CONST__(life_adminlevel, parseNumber(_this select 4));

//Loop through licenses
if(count (_this select 6) > 0) then {
	{
		missionNamespace setVariable [(_x select 0),(_x select 1)];
	} foreach (_this select 6);
};


life_gear = _this select 8;
[] call life_fnc_loadGear;	

//Parse side specific information.
switch(playerSide) do {
	case west: {
		__CONST__(life_coplevel, parseNumber(_this select 7));
		__CONST__(life_medicLevel,0);
		life_houses = _this select 13;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;
		[] spawn life_fnc_initHouses;

		// WORKING COP PAYCHECK. DO NOT EDIT ANYTHING BELOW!
		switch(__GETC__(life_coplevel)) do
		{
			case 1: {life_paycheck = life_paycheck + 3000;};
			case 2: {life_paycheck = life_paycheck + 4500;};
			case 3: {life_paycheck = life_paycheck + 6500;};
			case 4: {life_paycheck = life_paycheck + 9500;};
			case 5: {life_paycheck = life_paycheck + 14500;};
			case 6: {life_paycheck = life_paycheck + 24500;};
			case 7: {life_paycheck = life_paycheck + 29500;};
			case 8: {life_paycheck = life_paycheck + 7500;};
			case 9: {life_paycheck = life_paycheck + 9500;};
			case 10: {life_paycheck = life_paycheck + 14500;};
			case 11: {life_paycheck = life_paycheck + 19500;};
			case 12: {life_paycheck = life_paycheck + 24500;};
			case 13: {life_paycheck = life_paycheck + 49500;};
			case 14: {life_paycheck = life_paycheck + 99500;};
		};

		//ANTICHEAT
		life_blacklisted = call compile format["%1",(_session select 9)];
		_isbanned = (_session select 10);
		diag_log format["case west _isbanned: %1",_isbanned];
		//##119 perms
		life_player_perms = (_session select 12);
		life_player_perms = call compile format["%1", life_player_perms];

		//PERM coplevel
		_coplevel = parseNumber(_session select 7); //this is the MORE important DATABASE coplevel  - it ALWAYS overrides the PERM coplevel
		_perm_coplevel = ["cop"] call life_fnc_permLevel;

		if(_coplevel > 0) then
				{
		//use DB coplevel
		__CONST__(life_coplevel,_coplevel);
		systemChat "CopLevel loaded from DB";
	}
	else
	{
		//use PERM coplevel
		__CONST__(life_coplevel,_perm_coplevel);
		systemChat "CopLevel loaded from PERM";
	};
};
	
	case civilian: {
		life_is_arrested = _this select 7;
		//life_is_arrested = call compile format["%1", _this select 7];
		__CONST__(life_coplevel,0);
		__CONST__(life_medicLevel,0);
		life_houses = _this select 13;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;

		life_gangData = _this select 12;
		diag_log format["DEBUG:: fn_requestReceived: life_gangData=%1",life_gangData];
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;

		//ANTICHEAT
		_isbanned = (_session select 9);
		diag_log format["case west _isbanned: %1",_isbanned];
		//##119 perms
		life_player_perms = (_session select 11);
		life_player_perms = call compile format["%1", life_player_perms];
	};
	
	case independent: {
		__CONST__(life_medicLevel, parseNumber(_this select 7));
		__CONST__(life_copLevel,0);
		life_houses = _this select 13;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;

		[] spawn life_fnc_initHouses;
		
		//ANTICHEAT
		_isbanned = (_session select 9);
		diag_log format["case west _isbanned: %1",_isbanned];
		//##119 perms
		life_player_perms = (_session select 11);
		life_player_perms = call compile format["%1", life_player_perms];

		switch(__GETC__(life_mediclevel)) do
		{
		case 1: {life_paycheck = life_paycheck + 2000;};
		case 2: {life_paycheck = life_paycheck + 3500;};
		case 3: {life_paycheck = life_paycheck + 5500;};
		case 4: {life_paycheck = life_paycheck + 9500;};
		case 5: {life_paycheck = life_paycheck + 14500;};
		};
	};
};

diag_log format["DEBUG:: 0 = %1; 1 = %2; 2 = %3; 3 = %4; 4 = %5; 5 = %6; 6 = %7; 7 = %8; 8 = %9; 9 = %10; 10 = %11; 11 = %12; 12 = %13",_session select 0,_session select 1,_session select 2,_session select 3,_session select 4,_session select 5,_session select 6,_session select 7,_session select 8,_session select 9,_session select 10,_session select 11,_session select 12];

if(_isbanned) exitWith
{
	life__inventory = [];
	civ_gear = [];
	cop_gear = [];
	[[0,format["DBBAN >>> Gebannter Spieler '%1' wollte joinen <<<", name player]],"life_fnc_broadcast" /*,west,FALSE*/] call life_fnc_MP;
	cutText["Du wurdest von diesem Server gebannt! Bei Beschwerden TS: ts3.chaotentrupp.de","BLACK FADED"];0 cutFadeOut 9999999;
};

//Check out all perms
[true] call life_fnc_dynPermCheckout;

life_session_completed = true;


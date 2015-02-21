/*
	File: fn_updateRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ain't got time to describe it, READ THE FILE NAME!
*/
private["_uid","_side","_cash","_bank","_licenses","_gear","_name","_query","_thread", "_arrested","_playtime","_mot_message","_perms"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_side = [_this,2,sideUnknown,[civilian]] call BIS_fnc_param;
_cash = [_this,3,0,[0]] call BIS_fnc_param;
_bank = [_this,4,5000,[0]] call BIS_fnc_param;
_licenses = [_this,5,[],[[]]] call BIS_fnc_param;
_gear = [_this,6,[],[[]]] call BIS_fnc_param;
_perms = [_this,8,[]] call BIS_fnc_param;

//ANTICHEAT-MOT
_mot_message = [_cash, _bank, _uid, _name] call ANTICHEAT_fnc_commitMOT;

if(isNil("_mot_message")) then
{
	_mot_message = "Nil?";
};

//PLAYTIME
_playtime = [_uid] call ANTICHEAT_fnc_getPlayTime;
//_playtime = [_playtime] call life_fnc_numberText;
diag_log format["Update_Request: Playtime of %1 = %2",_uid,_playtime];

//Get to those error checks.
if((_uid == "") OR (_name == "")) exitWith {};

// ##84 DBBAN
if([_uid] call life_fnc_dbBanGet) exitWith
{
	diag_log format["<<DBBAN>> Banned player %1 tried to sync with:", _uid];
	diag_log format["          Cash : %1", _cash];
	diag_log format["          Bank : %1", _bank];
	diag_log format["          Inventory : %1", _inventory];
};

//Parse and setup some data.
_name = [_name] call DB_fnc_mresString;
_gear = [_gear] call DB_fnc_mresArray;
_cash = [_cash] call DB_fnc_numberSafe;
_bank = [_bank] call DB_fnc_numberSafe;
_perms = [_perms] call DB_fnc_mresArray;

//Does something license related but I can't remember I only know it's important?
for "_i" from 0 to count(_licenses)-1 do {
	_bool = [(_licenses select _i) select 1] call DB_fnc_bool;
	_licenses set[_i,[(_licenses select _i) select 0,_bool]];
};

_licenses = [_licenses] call DB_fnc_mresArray;

switch (_side) do {
	case west: {
		_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', cop_gear='%4', cop_licenses='%5', playtime='%7', anticheat_mot='%8', perms='%9'WHERE playerid='%6'", _name, _cash, _bank, _gear, _licenses, _uid, _playtime, _mot_message, _perms];
	};		

	case civilian: {
		_arrested = [_this select 7] call DB_fnc_bool;
		_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', civ_gear='%4', civ_licenses='%5', arrested='%7', playtime='%8', anticheat_mot='%9', perms='%10' WHERE playerid='%6'", _name, _cash, _bank, _gear, _licenses, _uid, _arrested, _playtime, _mot_message, _perms];
	};

	case independent: {
		_query = format["UPDATE players SET name='%1', cash='%2', bankacc='%3', med_gear='%4', med_licenses='%5', playtime='%7', anticheat_mot='%8', perms='%9' WHERE playerid='%6'", _name, _cash, _bank, _gear, _licenses, _uid, _playtime, _mot_message, _perms];
	};
};

waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;

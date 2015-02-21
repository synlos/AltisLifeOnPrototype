/*

	bans player via DB
	
	f[uid,name]

*/

private["_uid", "_name","_query","_result","_unit","_reason","_thread"];

_uid = _this select 0;
_name = _this select 1;
_reason = _this select 2;

[_uid, true] call life_fnc_dbBanSet;

//QUERY COND
_query = format ["UPDATE players SET banned='1' WHERE playerid='%1'", _uid];
waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;

diag_log format["<<DBBAN>> !!! BANNED PLAYER  %1 (%2)", _name, _uid];

//find a unit 
{
	if((getPlayerUID _x) == _uid) exitWith
	{
		_unit = _x;
	};
}
foreach playableUnits;

if(isNil("_unit")) exitWith
{
	diag_log format["SEVERE <<DBBAN>> CANNOT BAN PLAYER  %1 (%2) - UNIT NOT FOUND!", _name, _uid];
};

[[_uid, _name, time, _reason],"life_fnc_dbbanExec",(owner _unit),false] spawn life_fnc_MP;
	


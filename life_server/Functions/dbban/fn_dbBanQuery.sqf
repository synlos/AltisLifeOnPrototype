/*

	Query DBBAN status of unit
	f[uid,name]

*/

private["_uid", "_name","_query","_result","_unit"];

_uid = _this select 0;
_name = _this select 1;

_existing = [_uid] call life_fnc_dbBanGet;

diag_log "<<DBBAN>> Querying ...";

//QUERY COND
_query = format ["SELECT banned FROM players WHERE playerid='%1'", _uid];
waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

//Compile Cond here
_result = call compile format["%1", _result];
_result = (((_result select 0) select 0) select 0);
_result = _result == "1" || _result == "True";

diag_log format["<<DBBAN>> Result is %1", _result];

if(!_existing && _result) then
{
	diag_log format["<<DBBAN>> Player query has been recognized as BANNED for %1 (%2)", _name, _uid];
	
	[_uid, _name, "DB-QUERY-BAN"] call life_fnc_dbBanBan;
};

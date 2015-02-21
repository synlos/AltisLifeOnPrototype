/*
	File: fn_queryRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles the incoming request and sends an asynchronous query 
	request to the database.
	
	Return:
	ARRAY - If array has 0 elements it should be handled as an error in client-side files.
	STRING - The request had invalid handles or an unknown error and is logged to the RPT.
*/
private["_uid","_side","_query","_return","_queryResult","_qResult","_handler","_thread","_tickTime","_loops","_returnCount","_old"];
diag_log format["Server: fn_queryRequest started..."];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_ownerID = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _ownerID) exitWith {};
_ownerID = owner _ownerID;

/*
	_returnCount is the count of entries we are expecting back from the async call.
	The other part is well the SQL statement.
*/
_query = switch(_side) do {
	case west: {_returnCount = 13; format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, cop_licenses, coplevel, cop_gear, blacklist, banned, playtime, perms FROM players WHERE playerid='%1'",_uid];};
	case civilian: {_returnCount = 12; format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, civ_licenses, arrested, civ_gear, banned, playtime, perms FROM players WHERE playerid='%1'",_uid];};
	case independent: {_returnCount = 12; format["SELECT playerid, name, cash, bankacc, adminlevel, donatorlvl, med_licenses, mediclevel, med_gear, banned, playtime, perms FROM players WHERE playerid='%1'",_uid];};
};

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

if(typeName _queryResult == "STRING") exitWith {
	[[],"SOCK_fnc_insertPlayerInfo",_ownerID,false,true] spawn life_fnc_MP;
};

if(count _queryResult == 0) exitWith {
	[[],"SOCK_fnc_insertPlayerInfo",_ownerID,false,true] spawn life_fnc_MP;
};

//Blah conversion thing from a2net->extdb
private["_tmp"];
_tmp = _queryResult select 2;
_queryResult set[2,[_tmp] call DB_fnc_numberSafe];
_tmp = _queryResult select 3;
_queryResult set[3,[_tmp] call DB_fnc_numberSafe];

//Parse licenses (Always index 6)
_new = [(_queryResult select 6)] call DB_fnc_mresToArray;
if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
_queryResult set[6,_new];

//Convert tinyint to boolean
_old = _queryResult select 6;
for "_i" from 0 to (count _old)-1 do
{
	_data = _old select _i;
	_old set[_i,[_data select 0, ([_data select 1,1] call DB_fnc_bool)]];
};

_queryResult set[6,_old];
//Parse data for specific side.
switch (_side) do {
	case west: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
		_queryResult set[9,([_queryResult select 9,1] call DB_fnc_bool)];

		/////////////////////////////////////////
		//ANTICHEAT
		//_new = _queryResult select 10 == "True";
		//_queryResult set [10, _new];
		_new = [(_queryResult select 10),1] call DB_fnc_bool;
		_queryResult set[10, _new];
		//##84
		[_uid, _new] call life_fnc_dbBanSet;
		//Convert tinyint to boolean for BANNED
		/////ANTICHEAT: If banned, set money and other stuff to zero
		if(_queryResult select 10) then
		{
			diag_log format ["<<<DBBAN>>> Banned player %1 joined as COP! Setting everything to ZERO.", _queryResult select 1];
			_queryResult set [2,"0"];
			_queryResult set [3,"0"];
			_queryResult set [4,"0"];
			_queryResult set [5,"0"];
			_queryResult set [6,[]];
			_queryResult set [7,"0"];
			_queryResult set [8,[]];
			_queryResult set [9,"0"];
			_queryResult set [10,"0"];
		};

		///Playtime
		_old = _queryResult select 11;
		_new = _old;
		diag_log format ["DEBUG:: queryResult: Playtime: %1",_new];
		if(typeName _old == "STRING") then
		{
			_new = parseNumber _old;
		};

		[_uid, _new] call ANTICHEAT_fnc_setPlayTime;

		//##119 perms
		_new = [(_queryResult select 12)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[12,_new];
	};
	
	case civilian: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
		_queryResult set[7,([_queryResult select 7,1] call DB_fnc_bool)];
		_gangData = _uid spawn TON_fnc_queryPlayerGang;
		diag_log format["DEBUG:: fn_queryRequest: _queryPlayerGangs call"];
		waitUntil{scriptDone _gangData};
		_queryResult set[count _queryResult,(missionNamespace getVariable[format["gang_%1",_uid],[]])];
		diag_log format["DEBUG:: fn_queryRequest: gangs _queryResult=%1",_queryResult];
		//missionNamespace setVariable[format["gang_%1",_uid],nil];

		/////////////////////////////////////////
		//ANTICHEAT
		//_new = _queryResult select 10 == "True";
		//_queryResult set [10, _new];
		_new = [(_queryResult select 9),1] call DB_fnc_bool;
		_queryResult set[9, _new];
		//##84
		[_uid, _new] call life_fnc_dbBanSet;
		//Convert tinyint to boolean for BANNED
		/////ANTICHEAT: If banned, set money and other stuff to zero
		if(_queryResult select 9) then
		{
			diag_log format ["<<<DBBAN>>> Banned player %1 joined as COP! Setting everything to ZERO.", _queryResult select 1];
			_queryResult set [2,"0"];
			_queryResult set [3,"0"];
			_queryResult set [4,"0"];
			_queryResult set [5,"0"];
			_queryResult set [6,[]];
			_queryResult set [7,"0"];
			_queryResult set [8,[]];
			_queryResult set [9,"0"];
			_queryResult set [10,"0"];
		};

		///Playtime
		_old = _queryResult select 10;
		_new = _old;
		diag_log format ["DEBUG:: queryResult: Playtime: %1",_new];
		if(typeName _old == "STRING") then
		{
			_new = parseNumber _old;
		};

		[_uid, _new] call ANTICHEAT_fnc_setPlayTime;

		//##119 perms
		_new = [(_queryResult select 11)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[11,_new];
	};

	case independent: {
		_new = [(_queryResult select 8)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[8,_new];
		//_queryResult set[7,([_queryResult select 7,1] call DB_fnc_bool)];

		/////////////////////////////////////////
		//ANTICHEAT
		//_new = _queryResult select 10 == "True";
		//_queryResult set [10, _new];
		_new = [(_queryResult select 9),1] call DB_fnc_bool;
		_queryResult set[9, _new];
		//##84
		[_uid, _new] call life_fnc_dbBanSet;
		//Convert tinyint to boolean for BANNED
		/////ANTICHEAT: If banned, set money and other stuff to zero
		if(_queryResult select 9) then
		{
			diag_log format ["<<<DBBAN>>> Banned player %1 joined as COP! Setting everything to ZERO.", _queryResult select 1];
			_queryResult set [2,"0"];
			_queryResult set [3,"0"];
			_queryResult set [4,"0"];
			_queryResult set [5,"0"];
			_queryResult set [6,[]];
			_queryResult set [7,"0"];
			_queryResult set [8,[]];
			_queryResult set [9,"0"];
			_queryResult set [10,"0"];
		};

		///Playtime
		_old = _queryResult select 10;
		_new = _old;
		diag_log format ["DEBUG:: queryResult: Playtime: %1",_new];
		if(typeName _old == "STRING") then
		{
			_new = parseNumber _old;
		};

		[_uid, _new] call ANTICHEAT_fnc_setPlayTime;

		//##119 perms
		_new = [(_queryResult select 11)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
		_queryResult set[11,_new];	};
};
_houseData = _uid spawn TON_fnc_fetchPlayerHouses;
waitUntil {scriptDone _houseData};
_queryResult set[count _queryResult,(missionNamespace getVariable[format["houses_%1",_uid],[]])];

_keyArr = missionNamespace getVariable [format["%1_KEYS_%2",_uid,_side],[]];
_queryResult set[15,_keyArr];

//ANTICHEAT-MOT
[_queryResult select 2, _queryResult select 3, _uid] call ANTICHEAT_fnc_commitMOT;

diag_log format["DEBUG:: _queryRequest: _queryResult = %1",_queryResult];
[_queryResult,"SOCK_fnc_requestReceived",_ownerID,false] spawn life_fnc_MP;

/*
	File:
*/
private["_packet","_array","_flag"];
_packet = [getPlayerUID player,(player getVariable["realname",name player]),playerSide,life_cash,life_atmcash];

_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;
_packet set[count _packet,_array];

[] call life_fnc_saveGear;
_packet set[count _packet, life_gear];

switch (playerSide) do {
	case west: {
		//##119 perm
		//_packet set[count _packet, format["""%1""", str life_player_perms]];
		//_packet set[8, format["%1", str life_player_perms]];//check if str needs to be replaced or removed
		_packet set [8, life_player_perms]; // Test if quotes needs to be removed above.
	};
	case civilian: {
		_packet set[count _packet, life_is_arrested];
		//##119 perm
		_packet set [count _packet, life_player_perms]; // Test if quotes needs to be removed above.
		//_packet set[count _packet, format["""%1""", str life_player_perms]];
	};
};
diag_log format["DEBUG:: Client:: updateRequest %1",_packet];
[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;

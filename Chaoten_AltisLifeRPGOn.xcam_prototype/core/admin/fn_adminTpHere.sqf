private["_unit", "_coords", "_pList","_temp","_j","_i"];
if((call life_adminlevel) < 1) exitWith {};

_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];
_pList = playableUnits;

diag_log format["DEBUG LOG: Client: AdminTPTO, _unit=%1",_unit];

//if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};
diag_log format["DEBUG LOG: Client: AdminTPTO, player=%1",name player];
if(name player == name _unit) exitwith {};

_j = count _pList;
_i = 0;
for "_i" from 0 to j do
{
    _temp = _pList select _i;
    if(format[name _temp] == _unit) then {
        _coords = getPos _temp;
}
diag_log format["DEBUG LOG: Client: AdminTPTO, _coords=%1",_coords];

player setPos _coords
hint format["Teleportiert zu %1", _unit];

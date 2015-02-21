/*
 * fn_adminTpMap.sqf
 *
 *  Created on: 08.05.2014
 *      Author: syn
 */
closeDialog 0;
openmap true;
sleep 0.1;
closeDialog 0;
onMapSingleClick "player setPos [_pos select 0, _pos select 1, 0]; openmap false; onMapSingleClick '';";
while {visibleMap} do {};
onMapSingleClick '';

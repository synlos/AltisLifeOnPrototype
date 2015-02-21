/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_visible","_position","_nearUnits","_vis","_pos","_near","_name","_icon","_width","_height"];
_nearUnits = (visiblePosition player) nearEntities ["Man",10];
{
	if(player distance _x < 10 && isPlayer _x && _x != player) then {
		_visible = lineIntersects [eyePos player, eyePos _x,player, _x];
		if(!_visible) then {
			_position = visiblePosition _x;
			_position set[2,(getPosATL _x select 2) + 2.2];
			
			
			////////////////////MATI///////////////////////////	
			
			_width = 0.85;
				_height = 0.85;
				switch (_x getVariable["coplevel", 0]) do
				
				{
					case (1) : {_name = format["[Anwärter] %1", name _x]};
					case (2) : {_name = format["[Wachtmeister] %1", name _x]};
					case (3) : {_name = format["[Oberwachtmeister] %1", name _x]};
					case (4) : {_name = format["[Hautpwachtmeister] %1", name _x]};
					case (5) : {_name = format["[Kommissar] %1", name _x]};
					case (6) : {_name = format["[Oberkommissar] %1", name _x]};
					case (7) : {_name = format["[Hauptkommissar] %1", name _x]};
					case (8) : {_name = format["[Stabskommissar] %1", name _x]};
					case (9) : {_name = format["[Polizeirat] %1", name _x]};
					case (10) : {_name = format["[Polizeioberrat] %1", name _x]};
					case (11) : {_name = format["[Polizeihauptrat] %1", name _x]};
					case (12) : {_name = format["[Polizeidirektor] %1", name _x]};
					case (13) : {_name = format["[Vize-Präsident]] %1", name _x]};
					case (14) : {_name = format["[Präsident] %1", name _x]};
														
					default {_name = name _x; _width = 0; _height = 0;}
				};
                if (_x getVariable["coplevel", 0] > 0) then
				{
					_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
				};
				
			////////////////////MATI///////////////////////////					FUCKINNG SHIT ALL SUCKS SCRIPT
			
			
			drawIcon3D [_icon,[1,1,1,1],_position,_width,_height,0,_name,0,0.04];
			
		};
	};
} foreach _nearUnits;
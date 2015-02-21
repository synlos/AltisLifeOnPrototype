/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do {
	case west: {
		_return = [
			["cop_spawn_1","Luftwaffe","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			/*
			["cop_spawn_2","West City","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","East City","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Coast Town","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","West Island","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			*/
		];
	};
	
	case civilian: {

		_return = [
			["civ_spawn_1","West City","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","East City","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Coast Town","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","West Island","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_5","North Island","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_6","Event Island","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		/*
		//ADAC Spawns
		if((["adac"] call life_fnc_permLevel) > 0) then	{
			_return set[count _return,["civ_adac_spawn","ADAC-Hauptquartier","icons\wrench.paa"]];
		};
		*/
		/*
		//Rebel Spawn
		if(license_civ_rebel && playerSide == civilian) then {									  
			_return set[count _return,["rebspawn_1","Rebellenstützpunkt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			_return set[count _return,["rebspawn_2","Rebellenaußenposten","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			_return set[count _return,["rebspawn_3","RebellenHQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		*/
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","West City","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","East City","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Coast Town","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","West Town","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_5","North Island","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_6","Event Island","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

if(count life_houses > 0) then {
	{
		_pos = call compile format["%1",_x select 0];
		_house = nearestBuilding _pos;
		_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
		
		_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
	} foreach life_houses;
};

_return;

#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	//##33 ADAC
	case "civ_adac":
	{
		_return =
		[
			["C_Offroad_01_F",12000],
			["B_Truck_01_transport_F",150000]
		];
	};

	case "civ_adac_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",150000]
		];
	};

	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
		{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",30000]];
			_return set[count _return,
			["I_Truck_02_medical_F",25000]];
		};
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_MRAP_02_F",40000]];
		};
		if(__GETC__(life_mediclevel) > 4) then
		{
			_return set[count _return,
			["O_Truck_03_medical_F",45000]];
		};
	
	};
	
	case "med_air_hs":
	{
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",50000]];
		};
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",75000]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",5000],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",70000],
			["C_Offroad_01_F",14000],
			["C_SUV_01_F",30000],
			["C_Van_01_transport_F",66000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["O_Truck_03_transport_F",150000],
			["O_Truck_03_covered_F",2200000],
			["B_Truck_01_box_F",500000],
			["O_Truck_03_device_F",8000000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["I_MRAP_03_hmg_F",3000000]];
			
			_return set[count _return,
            ["O_MRAP_02_F",350000]];
			
			_return set[count _return,
			["B_Heli_Light_01_F",325000]];
			
			_return set[count _return,
			["I_Heli_Transport_02_F",4300000]];
			
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",600000]];
			
			_return set[count _return,
			["B_MRAP_01_F",250000]];
			
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];

			_return set[count _return,
			["O_Truck_03_device_F",10000000]];

		};
	};

	case "cop_car":
	{
		_return set[count _return,
		["C_Quadbike_01_F",2000]];
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",30000]];		
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["O_MRAP_02_F",50000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",40000]];
			_return set[count _return,
			["B_Truck_01_covered_F",67000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["O_MRAP_02_hmg_F",80000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",4300000],
			["B_Plane_CAS_01_F",10000000],
			["I_Plane_Fighter_03_AA_F",10000000],
			["O_Plane_CAS_02_F",10000000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",80000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",300000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",800000]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",80000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",300000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",800000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Boat_Transport_01_F",4000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Boat_Civil_01_police_F",20000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_SDV_01_F",40000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",40000]];
		};
	};
};

_return;

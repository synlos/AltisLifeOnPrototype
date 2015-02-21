/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiß";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkelrot";};
			case 5: {_color = "Blau / Weiß"};
			case 6: {_color = "Schwarz"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Taxi"};
			case 10: {_color = "Polizei"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkelblau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
            case 8: {_color = "Hellokitty"};
			case 9: {_color = "Roadrunner"};
			case 10: {_color = "Notarzt"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkelblau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weiß"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Roadrunner"};
			case 8: {_color = "Hellokitty"};
			case 9: {_color = "Notarzt"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelrot";};
			case 1: {_color = "Silber";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Zivil";};
			case 4: {_color = "Notarzt";};
		    case 5: {_color = "Polizei";};
			case 6: {_color = "<3 Schinken";};
			case 7: {_color = "Colorflash";};
			case 8: {_color = "Tittykat";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
			case 2: {_color = "Candy"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
			case 9: {_color = "Chaot"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Civ Blue"};
			case 2: {_color = "Civ Red"};
			case 3: {_color = "Digi Green"};
			case 4: {_color = "Blueline"};
			case 5: {_color = "Elliptical"};
			case 6: {_color = "Furious"};
			case 7: {_color = "Jeans Blue"};
			case 8: {_color = "Speedy Redline"};
			case 9: {_color = "Sunset"};
			case 10: {_color = "Vrana"};
			case 11: {_color = "Waves Blue"};
			case 12: {_color = "Rebel Digital"};
			case 13: {_color = "Notarzt"};
			case 14: {_color = "Polizei"};
		};
	};
	
	case "B_Plane_CAS_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Civ Blue"};
		};
	};

	case "I_Plane_Fighter_03_AA_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Civ Blue"};
		};
	};

	case "O_Plane_CAS_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Civ Blue"};
		};
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Notarzt"};
			case 4: {_color = "Pink"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Polizei"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Ricola"}
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Polizei"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Notarzt"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "Tarn"};
			case 3: {_color = "Rebell"};
			case 4: {_color = "Batman"};
		};
	};

	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};

		case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};

	case "I_Truck_02_medical_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Notarzt"};
		};
	};

	case "O_Truck_03_medical_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Notarzt"};
		};
	};
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Tarnfleck"};
		};
	};

};

_color;

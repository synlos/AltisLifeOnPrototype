/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Unprocessed Oil"};
	case "life_inv_oilp": {"Processed Oil"};
	case "life_inv_heroinu": {"Unprocessed Heroin"};
	case "life_inv_heroinp": {"Processed Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Cat Shark Meat"};
	case "life_inv_turtle": {"Turtle Meat"};
	case "life_inv_fishingpoles": {"Fishing Pole"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Leerer Benzinkanister"};
	case "life_inv_fuelF": {"Benzinkanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Iron Ingot"};
	case "life_inv_copperr": {"Copper Ingot"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Refined Salt"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Diamond Uncut"};
	case "life_inv_diamondr": {"Diamond Cut"};
	case "life_inv_tbacon": {"Taktischer Schinken"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_vodka": {"Vodka"};
	case "life_inv_lockpick": {"Lockpick"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unprocessed Cocaine"};
	case "life_inv_cokep": {"Processed Cocaine"};
	case "life_inv_spikeStrip": {"Nagelband"};
	case "life_inv_rock": {"Rock"};
	case "life_inv_cement": {"Cement Bag"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_blastingcharge": {"Blasting Charge"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	case "life_inv_defusekit": {"Bomb Defusal Kit"};
	case "life_inv_storagesmall": {"Kleine Lagerkiste"};
	case "life_inv_storagebig": {"Große Lagerkiste"};
	case "life_inv_meth_kit": {"meth kit"};
	case "life_inv_sodium_hydroxyde": {"sodium hydroxyde"};
	case "life_inv_crystal_meth": {"Crystal Meth unprocessed"};
	case "life_inv_crystal_meth_pure": {"Crystal Meth processed"};
	
	//License Block
	case "license_civ_driver": {"Führerschein"};
	case "license_civ_air": {"Fluglizenz"};
	case "license_civ_heroin": {"Heroin Training"};
	case "license_civ_gang": {"Gang Lizenz"};
	case "license_civ_oil": {"Öl-Verarbeitung"};
	case "license_civ_dive": {"Bootslizenz"};
	case "license_civ_boat": {"Boating License"};
	case "license_civ_gun": {"Waffenlizenz"};
	case "license_cop_air": {"Fluglizenz (Polizist)"};
	case "license_cop_swat": {"Swat License"};
	case "license_cop_cg": {"Küstenwache"};
	case "license_civ_rebel": {"Rebellen Training"};
	case "license_civ_truck": {"LKW-Führerschein"};
	case "license_civ_diamond": {"Diamanten-Verarbeitung"};
	case "license_civ_copper": {"Kupfer-Verarbeitung"};
	case "license_civ_iron": {"Eisen-Verarbeitung"};
	case "license_civ_sand": {"Sand-Verarbeitung"};
	case "license_civ_salt": {"Salz-Verarbeitung"};
	case "license_civ_coke": {"Kokain Training"};
	case "license_civ_marijuana": {"Marijuana Training"};
	case "license_civ_cement": {"Cement Mixing License"};
	case "license_med_air": {"Pilotenlizenz (Notarzt)"};
	case "license_civ_home": {"Besitzerurkunde"};
	case "license_civ_meth": {"Meth-Verarbeitung"};
	case "license_civ_meth1": {"Meth-Verarbeitung"};
	case "license_civ_meth2": {"Meth-Verarbeitung"};
	case "license_civ_lawyer": {"Anwaltslizenz"};
	case "license_civ_adac": {"ADAC-Lizenz"}; //##33 ADAC

	default //##69
	{
		_ret = [_var] call life_fnc_vitem_varToStr;

		if(_ret == "") then
		{
			_ret = [_var] call life_fnc_uitem_varToStr;
		};

		_ret;
	};
};

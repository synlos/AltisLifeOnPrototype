/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Mord durch Fahrzeug",10000]};
	case "187": {_type = ["Mord",50000]};
	case "901": {_type = ["Gefängnisausbruch",100000]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Versuchter Autodiebstahl",20000]};
	case "213": {_type = ["Besitz illegaler Waffen",30000]};
	case "211": {_type = ["Bankraub",100000]};
	case "207": {_type = ["Freiheitsberaubung",100000]};
	case "207A": {_type = ["Versuchte Freiheitsberaubung",50000]};
	case "487": {_type = ["Autodiebstahl",100000]};
	case "488": {_type = ["Diebstahl",1000]};
	case "480": {_type = ["Fahrerflucht",10000]};
	case "481": {_type = ["Drogenbesitz (1/3 Wert)",10000]};
	case "482": {_type = ["Drogenhandel",30000]};
	case "483": {_type = ["Drug Trafficking",9500]};
	case "459": {_type = ["Burglary",6500]};
	case "211A": {_type = ["Tankstellenraub",25000]};
	
	case "1": {_type = ["Falschfahren",1000]};
    case "2": {_type = ["Überhöhte Geschw. 10-20 Kmh",500]};
    case "3": {_type = ["Überhöhte Geschw. ab 20 Kmh",5000]};
	case "4": {_type = ["Fahren ohne Licht",1000]};
    case "5": {_type = ["Unfall mit Sachschäden",1000]};
    case "6": {_type = ["Unfall mit Personenschäden",1000]};
    case "7": {_type = ["Fahrerflucht bei Sachschäden",2000]};
    case "8": {_type = ["Fahrerflucht bei Personenschäden",10000]};
    case "9": {_type = ["Fahren ohne Lizenz",10000]};
    case "10": {_type = ["Versicherungsbetrug",10000]};
    case "11": {_type = ["Fliegen ohne Positionslichter",10000]};
    case "12": {_type = ["Eindringen in Flugverbotszonen",50000]};
    case "13": {_type = ["Ordnungswidriges Landen",10000]};
    case "14": {_type = ["Legale Waffen ohne Lizenz",20000]};
    case "15": {_type = ["Besitz illegaler Waffen",30000]};
    case "16": {_type = ["Besitz von Polizeiwaffen",50000]};
    case "17": {_type = ["Öffentliches Tragen von Waffen",5000]};
    case "18": {_type = ["Betreten eines Naturschutzgebietes",10000]};
    case "19": {_type = ["Wilderei",15000]};
    case "20": {_type = ["Besitz von geschützten Arten",5000]};
    case "21": {_type = ["Drogenbesitz",5000]};
    case "22": {_type = ["Drogenhandel",30000]};
    case "23": {_type = ["Konsum im Straßenverkehr",20000]};
    case "24": {_type = ["Diebstahl",1000]};
    case "25": {_type = ["Autodiebstahl",20000]};
    case "26": {_type = ["Diebstahl eines Polizeifahrzeuges",30000]};
    case "27": {_type = ["Raubüberfall",100000]};
    case "28": {_type = ["Bankraub",100000]};
    case "29": {_type = ["Freiheitsberaubung",100000]};
    case "30": {_type = ["Mord",50000]};
    case "31": {_type = ["Polizistenmord",100000]};
    case "32": {_type = ["öffentliches Ärgenis",1000]};
    case "33": {_type = ["Beleidigung",10000]};
    case "34": {_type = ["Beamtenbeleidigung",20000]};
    case "35": {_type = ["Widerstand gegen Polizeianweisungen",20000]};
    case "36": {_type = ["Flucht vor der Polizei",20000]};
    case "37": {_type = ["Polizeibehinderung",1000]};
    case "38": {_type = ["Wiederstand",50000]};
    case "39": {_type = ["Gefängnisausbruch",100000]};
    case "40": {_type = ["Betreten von Sperrzonen",50000]};
	
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes set[count _crimes,(_type select 0)];
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list set[count life_wanted_list,[_name,_uid,[(_type select 0)],(_type select 1)]];
};
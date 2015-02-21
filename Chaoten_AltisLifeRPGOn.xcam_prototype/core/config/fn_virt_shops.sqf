/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","vodka","tbacon","lockpick","pickaxe","fuelF","peach","uitem_handcuffs","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","vodka","tbacon","lockpick","pickaxe","fuelF","peach","uitem_handcuffs","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","vodka","tbacon","lockpick","pickaxe","fuelF","peach","uitem_handcuffs","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","methp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "meth": {["Tuco",["crystal_meth","crystal_meth_pure"]]};
	case "pharmacy": {["Altis pharmacy",["meth_kit"]]};
	case "adac": {["ADAC-Ausrüstung",["fuelF","uitem_adac_toolkit","uitem_adac_tow","uitem_adac_paint","vitem_repairkit","vitem_firstaidkit","box","water","rabbit","apple","redgull","tbacon","peach"], ["adac"]]};
};

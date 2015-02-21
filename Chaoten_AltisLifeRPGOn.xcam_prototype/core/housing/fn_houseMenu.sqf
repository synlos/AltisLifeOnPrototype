/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Building interaction menu
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn1 ctrlShow false;
_Btn2 ctrlShow false;
_Btn3 ctrlShow false;
_Btn4 ctrlShow false;
_Btn5 ctrlShow false;
_Btn6 ctrlShow false;
_Btn7 ctrlShow false;
_Btn8 ctrlShow false;

life_pInact_curTarget = _curTarget;


if(_curTarget isKindOf "House_F") then { 
	if(((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _curTarget) && playerSide == west) then { //HOUSE IS THE BANK JUST FOR COPS
		_Btn1 ctrlSetText localize "STR_House_RepairDoor";
		_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_repairDoor; closeDialog 0;";
		_Btn1 ctrlShow true;

		_Btn2 ctrlSetText "Open / Close";
		_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_doorAnimate; closeDialog 0;";
		_Btn2 ctrlShow true;
	} else {
		//Check if House is a buyable House
		_houseCfg = [(typeOf _curTarget)] call life_fnc_houseConfig;
		if(_houseCfg isEqualTo []) exitWith {hint localize "STR_House_IsPublic"; closeDialog 0;};
		if(_curTarget in life_publicHouses) exitWith {hint localize "STR_House_IsPublic"; closeDialog 0;};

		if(_curTarget in life_vehicles) then { //ITS MY HOUSE
			if((typeOf _curTarget) in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]) then {
				_Btn1 ctrlSetText localize "STR_House_AccessGarage";
				_Btn1 buttonSetAction "[life_pInact_curTarget,""Car""] spawn life_fnc_vehicleGarage; closeDialog 0;";
				_Btn1 ctrlShow true;

				_Btn2 ctrlSetText localize "STR_House_StoreVehicle";
				_Btn2 buttonSetAction "[life_pInact_curTarget,player] spawn life_fnc_storeVehicle; closeDialog 0;";
				_Btn2 ctrlShow true;

				_Btn3 ctrlSetText localize "STR_House_SellGarage";
				_Btn3 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_sellHouse; closeDialog 0;";
				_Btn3 ctrlShow true;

				//IM NOT THE OWNER BUT I HAVE A KEY
				if(((_curTarget getVariable "house_owner") select 0) != (getPlayerUID player)) then {
					_Btn3 ctrlEnable false;
				};
			} else {
				if(_curTarget getVariable ["locked",false]) then {
					_Btn1 ctrlSetText localize "STR_House_UnlockStorage";
				} else {
					_Btn1 ctrlSetText localize "STR_House_LockStorage";
				};
				_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_lockHouse; closeDialog 0;";
				_Btn1 ctrlShow true;

				if(isNull (_curTarget getVariable ["lightSource",ObjNull])) then {
					_Btn2 ctrlSetText localize "STR_House_LightOn";
				} else {
					_Btn2 ctrlSetText localize "STR_House_LightOff";
				};
				_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_lightHouseAction; closeDialog 0;";
				_Btn2 ctrlShow true;

				_Btn3 ctrlSetText localize "STR_House_Lock";
				_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_lockupHouse; closeDialog 0;";
				_Btn3 ctrlShow true;				

				_Btn4 ctrlSetText localize "STR_House_Sell";
				_Btn4 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_sellHouse; closeDialog 0;";
				_Btn4 ctrlShow true;

				//IM NOT THE OWNER BUT I HAVE A KEY
				if(((_curTarget getVariable "house_owner") select 0) != (getPlayerUID player)) then {
					_Btn4 ctrlEnable false;
				};
			};
		} else { //NOT MY HOUSE
			if(!isNil {_curTarget getVariable "house_owner"}) then { //HOUSE ALREDY BELONGS TO SOMEONE
				if(playerSide == west) then { //POLICE HOUSE RAID ACTIONs
					_Btn1 ctrlSetText localize "STR_House_Owner";
					_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_copHouseOwner;";
					_Btn1 ctrlShow true;

					_Btn2 ctrlSetText localize "STR_House_BreakDown";
					_Btn2 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_copBreakDoor; closeDialog 0;";
					_Btn2 ctrlShow true;

					_Btn3 ctrlSetText localize "STR_House_Search";
					_Btn3 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_raidHouse; closeDialog 0;";
					_Btn3 ctrlShow true;

					if(player distance _curTarget > 3.6) then {
						_Btn3 ctrlEnable false;
					};

					_Btn4 ctrlSetText localize "STR_House_Lock";
					_Btn4 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_lockupHouse; closeDialog 0;";
					_Btn4 ctrlShow true;
				} else {
					hint localize "STR_House_AlreadyOwned";
					closeDialog 0;
				};
			} else {
				_Btn1 ctrlSetText localize "STR_House_Buy";
				_Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_buyHouse;";
				_Btn1 ctrlShow true;
			};
		};
	};
};
enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

//Chaotentrupp Anfang
[] execVM "core\items\fn_teargas.sqf"; //Tränengas
//[] execVM "R3F_LOG\init.sqf";

/*
Chaotentrupp
*/
//[] execVM "admintool\exec.sqf"; 		// AdminTool

/*
[] spawn
{
	sleep 10;
	[] call life_fnc_updateClothing;
};
*/


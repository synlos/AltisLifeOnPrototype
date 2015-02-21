class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
	};
};

class SpyGlass
{
	tag = "SPY";
	class Functions
	{
		file = "SpyGlass";
		class cmdMenuCheck{};
		class cookieJar{};
		class menuCheck{};
		class notifyAdmins{};
		class observe{};
		class payLoad{};
		class variableCheck{};
		class initSpy {preInit=1;};
	};
};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class welcomeNotification {};
		class updateClothes {};
		class loadOut {};

	};

	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class admininfo_Extended {};
		class adminid {};
		class admingetID {};

		class adminMenu {};
		class adminQuery {};

		class adminKick {};
		class adminBan {};

		class adminMenu_Extended {};
		class adminQuery_Extended {};

		class adminGodMode {};
		class adminAddMoney {};
		class adminSpawnVehicle {};
		class adminInstaHealth {};

		class adminTpTo {};
		class adminTpHere {};
		class adminTpMap {};

		class adminRestrain {};
		class adminUnrestrain {};

		class adminAuthentificate {};
		class adminCheckAuth {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
		class medicUniform {};
	};
	
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class chemlightUse {};
		class heal {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class serviceTruck {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class gatherApples {};
		class gatherCannabis {};
		class gatherHeroin {};
		class gatherOil {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class sellOil {};
		class suicideBomb {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class gatherPeaches {};
		class gatherCocaine {};
		class pumpRepair {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class sellTurtle {};
		class sellGoldBars {};
		class captureHideout {};
		class robShops {};
        class robShops2 {};
        class shopState {};
        class gatherMeth {};
		//##93
		class TorturePlayer{};
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};
	


	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
		class clothing_adac {};

		//class updateClothing {};
		//Vehicle configuration
		class vehicleColorsCentralized {};
		//Entwaffnen
		class seizeCfg {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class wantedadd2 {};
		class wanted2 {};
	
	};
	
	class Permsys
	{
		file = "core\permsys";

		class permLevel;
		class permLevelName;
		class permSetLevel;
		class permRule;
		class permRuleG;

		class permconfiguration;
		class perms;

		class permManager;
		class permManager_update;
		class permManager_requestData;
		class permManager_gotData;
		class permManager_updateData;
		class permManager_uiMode;
		class permManager_refreshList;

		class permManager_set;

		class dynPermUpdate;
		class dynPermCheckout;
	};

	class ADAC
	{
		file = "core\adac";

		class adacRepairTruck;
		class adacImpound;
		class adacRepaintMenu;
		class adacRepaintVehicle;
	};

	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class loadGear {}; //Gear Load
        class saveGear {}; //Gear Save
        class stripDownPlayer {}; //Removes all items from the players
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pulloutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class randomRound {};
		class updateUniform {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class tazed {};
        class civLoadout {}; //Default Civ Loadout
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		class demoChargeTimer {};
		class hooker {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
        class copLoadout {}; //Default Cop Loadout
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		//Entwaffnen
		class seizePlayerWeapon {};
		class seizePlayerWeaponAction {};
		//Alkohotest
		class breathalyzer {};
		class copUniform {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};
	
	class Rebel
	{
		file = "core\rebel";
		class rebelInteractionMenu {};
	};

	class Interactionmenus
	{
		file = "core\interactionmenus";
		class pInteraction_reb;
		class vInteraction_civ;
	};

	class VItems
	{
		file = "core\vitems";

		class vitemconfig;
		class vitem_varToStr;
		class vitem_itemWeight;
		class vitem_varHandle;
		class vitem_isVItem;
		class vitem_unpack;

		class vitem_openPackDialog;
		class vitem_refreshPackDialog;
		class vitem_pack;

	};

	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleColorList {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class CarAlarmSound {};
		class weed {};
		class cocaine {};
		class heroin {};
		class vodka {};
	};
	
	class UItems
	{
		file = "core\unifieditems";
		class uitemconfig;
		class uitem_varToStr;
		class uitem_itemWeight;
		class uitem_varHandle;
		class uitem_isUItem;

	};

	class Cellphone_Extended
	{
		file = "core\cellphone_extended";

		class cellex_open;
		class cellex_sendClick;
	};

	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
	};
};

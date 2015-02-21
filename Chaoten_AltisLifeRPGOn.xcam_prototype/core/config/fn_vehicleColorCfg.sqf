/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["textures\air\cop\mohawk_1.jpg","cop","textures\air\cop\mohawk_2.jpg","textures\air\cop\mohawk_3.jpg"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\vehicles\cop\SportLimo.jpg","cop"],
			["textures\vehicles\civ\hatchback_sport_roadrunner.jpg","civ"],
			["textures\vehicles\civ\Hellokitty.paa","civ"],
			["textures\vehicles\medic\hatchbacksport_notarzt.jpg","med"]
			];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["textures\vehicles\medic\MedicOffroad.paa","med"],
			["textures\vehicles\cop\offroader.jpg","cop"]
			];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\vehicles\civ\Hellokitty.paa","civ"],
			["textures\vehicles\civ\hatchback_sport_roadrunner.jpg","civ"],
			["textures\vehicles\medic\hatchbacksport_notarzt.jpg","med"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["textures\vehicles\medic\suv_Notarzt.paa","med"],
			["textures\vehicles\cop\SUV.jpg","cop"],
			["textures\vehicles\civ\iloveschinkenskin.jpg","civ"],
			["textures\vehicles\civ\suv_Colorflash.paa","civ"],
			["textures\vehicles\civ\suv_kittyavatx.jpg","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\vehicles\civ\Suessigkeiten_front_truck.jpg","civ","textures\vehicles\civ\Suessigkeiten_truck.jpg"]
		];
	};
	
	case "I_Truck_02_medical_F":
	{ 
	  
	    _ret =
		[
			["textures\vehicles\medic\zamak_Rettungsdienst_front.paa","med","textures\vehicles\medic\zamak_Rettungsdienst_hinten.paa"]
		];
		
		
	};
	
	case "O_MRAP_02_F":
	{ 
	  
	    _ret =
		[
			["textures\vehicles\medic\ifrit_medic_01.paa","med","textures\vehicles\medic\ifrit_medic_02.paa"],
			["textures\vehicles\cop\ifrit_1.jpg","cop","textures\vehicles\cop\ifrit_2.jpg"],
			["a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["textures\vehicles\civ\ifrit_01.jpg","reb","textures\vehicles\civ\ifrit_02.jpg"],
			["textures\vehicles\civ\mrap_02_ext_01d_co.paa","reb","textures\vehicles\civ\mrap_02_ext_02s_co.paa"]
		];
		
		
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["textures\vehicles\civ\ChaotentruppQuad.paa","civ"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\air\medic\Notarzt_Hummingbird.paa","med"],
			["textures\air\cop\hummingbird.jpg","cop"]
			];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\air\medic\sani_orca_schwarz.jpg","med"],
			["textures\air\civ\Orca_Pink.jpg","civ"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\vehicles\cop\hunter_1.jpg","cop","textures\vehicles\cop\hunter_2.jpg"]
			];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\vehicles\civ\zamak_cab_Ricola.paa","civ","textures\vehicles\civ\zamak_abdeckung_Ricola.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "O_MRAP_02_hmg_F":
	{
		_ret = 
		[
		 	 ["textures\vehicles\cop\ifrit_1.jpg","cop","textures\vehicles\cop\ifrit_2.jpg"]
		];
	};

	case "I_Heli_light_03_unarmed_F":
	{
		_ret = 
		[
			["textures\air\cop\hellcat_unbewaffnet.jpg","cop"]
		];
	};

	case "B_Truck_01_covered_F":
	{
		_ret = 
		[
			["textures\vehicles\cop\hemett_abgedeckt_1.jpg","cop","textures\vehicles\cop\hemett_abgedeckt_2.jpg","textures\vehicles\cop\hemett_abgedeckt_3.jpg","textures\vehicles\cop\hemett_abgedeckt_4.jpg"]
		];
	};

	case "O_Truck_03_medical_F":
	{
		_ret = 
		[
			["textures\vehicles\medic\tempest_med_01.jpg","med","textures\vehicles\medic\tempest_med_02.jpg","textures\vehicles\medic\tempest_med_cover.jpg"]
		];
	};

	case "B_Truck_01_transport_F":
	{
		_ret = 
		[
			["textures\vehicles\civ\hemtt_front01.jpg","civ","textures\vehicles\civ\hemtt_front02.jpg","textures\vehicles\civ\hemtt_cargo_back.jpg"]
		];
	};
	
};

_ret;

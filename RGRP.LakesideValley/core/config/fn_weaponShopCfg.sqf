#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf


        Description:
        Master configuration file for the weapon shops.

*/

params [["_shop", "", [""]]];

if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
_ret = [];

switch(_shop) do
{
        case "med_basic":
        {
			switch (true) do
			{
				case (playerSide != independent): {"You are not an EMS"};
				default {
					["EMS Basic Shop",
						[
							["cg_torch",nil,250],
							["cg_torchbattery",nil,250],
							["acc_flashlight","Extinguisher Flashlight",10],
							["CG_ATF_Drug_Bottle_01_i","Valium",5],
							["A3L_Extinguisher",nil,35],
							["30Rnd_test_mag_Tracer",nil,35],
							["ItemGPS",nil,25],
							["tf_microdagr",nil,5],
							["tf_anprc152",nil,10],
							["Binocular",nil,120],
							["ToolKit",nil,2500],
							["ItemCompass",nil,50],
							["ItemWatch",nil,10]
						]
					];
				};
			};
        };

        case "cop_basic":
        {
			switch(true) do
			{
				case (playerSide != west): {"You are not a cop!"};
				default
				{
					["Police Utility Shop",
						[
							["CG_ATF_Handcuffs_i","Hand Cuffs",15],
							["cg_torch",nil,250],
							["CG_Spikes_Collapsed",nil,25],
							["cg_torchbattery",nil,5],
							["gign_shield","Riot Shield",150],
							["CG_BATON","Police Baton",25],
							["CG_TELBAT","Police TelBat",25],
							["acc_flashlight","ACC Flashlight",10],
							["RH_M6X","RH Flashlight",10],
							["A3L_M4Flashlight","M4A3 Flashlight",10],
							["pmc_earpiece","Earpiece",10],
							["Radar_Gun","Radar Gun",25],
							["ToolKit",nil,500],
							["ItemCompass",nil,50],
							["ItemWatch",nil,10],
							["Taser_26","Taser",5],
							["26_cartridge",nil,2],
							["Binocular",nil,15],
							["Rangefinder","Rangefinder SERT ONLY",500],
							["ItemGPS",nil,10],
							["tf_anprc152",nil,10]
						]
					];
				};
			};
        };

		case "cop_weaponShop":
		{
			_ret = [];
			if(__GETC__(life_coplevel) > 0) then {
				_ret pushBack [
					["RH_g19",nil,17],
					["RH_17Rnd_9x19_g17",nil,5]
				];
			};
			if(__GETC__(life_coplevel) > 1) then {
				_temp = [
					["RH_cz75",nil,25],
					["RH_16Rnd_9x19_CZ",nil,5]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 2) then {
				_temp =  [
					["RH_sbr9",nil,240],
					["RH_32Rnd_9mm_M822",nil,60]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 3) then {
				_temp =  [
					["RH_eotech553mag",nil,15],
					["optic_MRCO",nil,15],
					["RH_barska_rds",nil,15],
					["RH_t1",nil,15],
					["RH_compM2",nil,15],
					["RH_eotech553",nil,15],
					["RH_LTdocter",nil,15],
					["optic_Holosight_smg_blk_F",nil,15],
					["RH_sbr9",nil,150],
					["RH_32Rnd_9mm_M822",nil,25],
					["RH_PDW",nil,240],
					["RH_30Rnd_6x35_mag",nil,60]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 4) then {
				_temp =  [
					["SmokeShellYellow","Teargas",25],
					["HandGrenade_Stone","Flashbang",300],
					["prpl_benelli_14_pgs_rail","Shotgun Rubber",2200],
					["prpl_6Rnd_12Gauge_Slug","Rubber Bullets",20]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 5) then {
				_temp =  [
					["hlc_rifle_RU556",nil,700],
					["hlc_30rnd_556x45_EPR",nil,20]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 6) then {
				_temp =  [
					["RH_fn57",nil,1120],
					["RH_20Rnd_57x28_FN",nil,20]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 7) then {
				_temp =  [
					["RH_bull",nil,2500],
					["RH_6Rnd_454_Mag",nil,160]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 8) then {
				_temp =  [
					["RH_M4A6",nil,1220],
					["RH_30Rnd_68x43_FMJ",nil,220]

				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 9) then {
				_temp =  [
					["RH_M4A6",nil,1220],
					["RH_30Rnd_68x43_FMJ",nil,220]

				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			if(__GETC__(life_coplevel) > 10) then {
				_temp =  [
					["RH_peq2","Laser (All Rifles)",220],
					["RH_compM2","Red Dot (High)",22],
					["RH_bullb",nil,500],
					["RH_6Rnd_454_Mag",nil,120],
					["RH_M16A4gl",nil,220],
					["RH_30Rnd_556x45_M855A1",nil,220],
					["1Rnd_Smoke_Grenade_shell",nil,220],
					["launch_O_Titan_ghex_F","Anti-Air",20000],
					["Titan_AA","Anti-Air Missile",1500]
				];
				{
					(_ret select 0) pushBack _x;
				} foreach _temp;
			};
			["Police Weapon Shop", _ret select 0];
		};
		case "sert_weapons":
        {
			switch(true) do
			{
				case (playerSide != west): {"You are not a cop!"};
				default
				{
					["S.E.R.T Firearms",
						[
							["HandGrenade_Stone","Flashbang",100],
							["SmokeShellYellow","Teargas",100],
							["RH_peq2","Laser (All Rifles)",220],
							["RH_reflex",nil,15],
							["optic_ERCO_blk_F",nil,15],
							["RH_compM2l",nil,15],
							["RH_ta01nsn_2D",nil,15],
							["RH_accupoint",nil,15],
							["RH_M16A3",nil,250],
							["RH_30Rnd_556x45_M855A1",nil,250],
							["prpl_benelli_14_pgs_rail","Shotgun Rubber",220],
							["prpl_6Rnd_12Gauge_Slug","Rubber Bullets",20],
							["HandGrenade_Stone","Flashbang",100],
							["29rnd_300BLK_STANAG",nil,250],
							["RH_mp412",nil,1000],
							["RH_6Rnd_357_Mag",nil,250],
							["RH_bull",nil,2500],
							["RH_6Rnd_454_Mag",nil,250],
							["KPFS_G36C",nil,25],
							["KPFS_30Rnd_556x45_G36",nil,25],
							["RH_Hk416",nil,25],
							["RH_30Rnd_556x45_M855A1",nil,250],
							["RH_M16A2gl",nil,250],
							["RH_30Rnd_556x45_M855A1",nil,250],
							["1Rnd_Smoke_Grenade_shell",nil,220],
							["arifle_SPAR_01_GL_blk_F","Captain+",2500],
							["30Rnd_556x45_Stanag","Captain+",500],
							["RH_M4_moe_b",nil,2500],
							["RH_30Rnd_556x45_M855A1",nil,500],
							["RH_p226",nil,250],
							["RH_15Rnd_9x19_SIG",nil,50],
							["launch_O_Titan_ghex_F","Anti-Air",20000],
							["Titan_AA","Anti-Air Missile",1500]

						]
					];
				};
			};
        };
		case "fbi_weapons":
        {
			switch(true) do
			{
				case (playerSide != west): {"You are not a cop!"};
				case (!license_cop_fbi): {"Still trying to break SOPs, Piss off Deputy!!"};
				default
				{
					["F.B.I Firearms",
						[
							["optic_MRCO",nil,250],
							["RH_eotech553_tan",nil,250],
							["RH_Delft",nil,250],
							["hlc_optic_kobra",nil,250],

							["RH_compM2","Rifle Aimpoint",250],
							["RH_compM2l","Rifle Aimpoint Low",250],

							["RH_m16a6_des",nil,10000],
							["RH_30Rnd_68x43_FMJ",nil,1550],

							["RH_ar10",nil,10000],
							["RH_20Rnd_762x51_AR10",nil,250],

							["hlc_rifle_akm",nil,10000],
							["hlc_rifle_ak47",nil,10000],
							["hlc_30Rnd_762x39_b_ak",nil,250],

							["SG553_CQB",nil,10000],
							["30Rnd_556x45_Stanag",nil,250],

							["hlc_rifle_aks74u",nil,10000],
							["hlc_30Rnd_545x39_B_AK",nil,250],

							["hgun_PDW2000_F",nil,10000],
							["SMG_02_F",nil,10000],
							["30Rnd_9x21_Mag",nil,250],

							["hlc_smg_mp5k_PDW",nil,10000],
							["hlc_30Rnd_9x19_B_MP5",nil,250],

							["RH_sbr9_des",nil,10000],
							["RH_32Rnd_9mm_M822",nil,250],

							["chakFNP90_50rnd_skin1",nil,10000],
							["chakFNP90_57x28_B_skin1",nil,250],

							["SMG_01_F",nil,10000],
							["30Rnd_45ACP_Mag_SMG_01",nil,250]

						]
					];
				};
			};
        };
        case "rebel_low":
        {
			switch(true) do
			{
				case (rebelshipment getVariable["notCaptured",FALSE]): {"Supplies have been taken by Police..!"};
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_rebel): {"You want some, I'll give it YA! You don't have a license you pleb!"};
				default
				{
					["Rebel Pistols",
						[
							["RH_vp70",nil,8850],
							["RH_18Rnd_9x19_VP",nil,125],

							//Micro Uzi
							["RH_muzi",nil,9500],
							["RH_30Rnd_9x19_UZI",nil,250],

							//Tec9
							["RH_tec9",nil,9800],
							["RH_32Rnd_9x19_tec",nil,260],

							["RH_vz61",nil,11800],
							["RH_20Rnd_32cal_vz61",nil,280],

							["RH_fn57",nil,11800],
							["RH_20Rnd_57x28_FN",nil,280],

							//Glock 18
							["RH_g18",nil,15500],
							["RH_33Rnd_9x19_g18",nil,250],

							["RH_Deagleg",nil,31500],

							["RH_Deaglem",nil,31500],
							["RH_demz",nil,1500],
							["RH_M6X",nil,1500],
							["RH_7Rnd_50_AE",nil,250],

							["RH_g17",nil,8750],
							["RH_g19t",nil,9850],
							["RH_17Rnd_9x19_g17",nil,120]

						]
					];
				};
			};
        };

        case "rebel_high":
        {
			switch(true) do
			{
				case (rebelshipment getVariable["notCaptured",FALSE]): {"Supplies have been taken by Police..!"};
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_rebel): {"You need Rifle Training!"};
				default
				{
					["Rebel Primarys",
						[
							["optic_MRCO",nil,1220],
							["RH_eotech553_tan",nil,1220],
							["RH_Delft",nil,550],
							["hlc_optic_kobra",nil,550],

							["RH_compM2","Rifle Aimpoint",425],
							["RH_compM2l","Rifle Aimpoint Low",425],

							["RH_m16a6_des",nil,200500],
							["RH_30Rnd_68x43_FMJ",nil,2500],

							["RH_ar10",nil,200500],
							["RH_20Rnd_762x51_AR10",nil,1500],

							["hlc_rifle_akm",nil,120000],
							["hlc_rifle_ak47",nil,120000],
							["hlc_30Rnd_762x39_b_ak",nil,2000],

							["SG553_CQB",nil,85000],
							["30Rnd_556x45_Stanag",nil,600],

							["hlc_rifle_aks74u",nil,70500],
							["hlc_30Rnd_545x39_B_AK",nil,500],

							["hgun_PDW2000_F",nil,35000],
							["SMG_02_F",nil,24000],
							["30Rnd_9x21_Mag",nil,500],

							["hlc_smg_mp5k_PDW",nil,25000],
							["hlc_30Rnd_9x19_B_MP5",nil,150],

							["RH_sbr9_des",nil,35000],
							["RH_32Rnd_9mm_M822",nil,650],

							["chakFNP90_50rnd_skin1",nil,20000],
							["chakFNP90_57x28_B_skin1",nil,650],

							["SMG_01_F",nil,25000],
							["30Rnd_45ACP_Mag_SMG_01",nil,450],

							["RH_sbr9_des",nil,500000],
							["RH_32Rnd_9mm_M822",nil,550],

							["A3L_AK47sgold",nil,220000],
							["A3L_AK47sMag",nil,1200]

						]
					];
				};
			};
        };
		case "lhd":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_lhd): {"You are not in my gang piss off"};
				default
				{
					["LHD Enterprises Weapons",
						[
							["RH_M4A1_ris",nil,90000],
							["RH_30Rnd_556x45_M855A1",nil,600],
							["RH_M4A6",nil,90000],
							["RH_30Rnd_68x43_FMJ",nil,600],
							["RH_M27IAR",nil,90000],
							["RH_60Rnd_556x45_M855A1",nil,600],
							["RH_m9",nil,2000],
							["RH_15Rnd_9x19_M9",nil,250],
							["RH_m9qd",nil,500],
							["RH_fnp45",nil,2000],
							["RH_15Rnd_45cal_fnp",nil,250],
							["RH_gemtech45",nil,500]

						]
					];
				};
			};
        };
		case "trussell":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_trussell): {"You are not in my gang piss off"};
				default
				{
					["Trussell Weapons",
						[
							["arifle_AK12_F",nil,95000],		//change
							["30Rnd_762x39_Mag_F",nil,500],
							["RH_M16A6",nil,100000],
							["RH_30Rnd_68x43_FMJ",nil,1500],
							["arifle_MXM_F",nil,95000],
							["30Rnd_65x39_caseless_mag",nil,600]

						]
					];
				};
			};
        };
		case "kirby":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_kirby): {"You are not in my gang piss off"};
				default
				{
					["Kirby Weapons",
						[
							["hlc_rifle_samr2",nil,85000],
							["c_50rnd_556x45_EPR",nil,600],
							["RH_M4sbr",nil,60000],
							["RH_30Rnd_556x45_M855A1",nil,550],
							["RH_SR25EC",nil,75000],
							["RH_20Rnd_762x51_M80A1",nil,500]

						]
					];
				};
			};
        };
		 case "hitmens":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_hitmens): {"Your not in my gang piss off!"};
				default
				{
					["Joel's Weapons",
						[
							["optic_MRCO",nil,1220],
							["RH_eotech553_tan",nil,1220],
							["RH_Delft",nil,550],
							["hlc_optic_kobra",nil,550],
							["RH_cmore",nil,550],
							["A3L_CZ550Scope",nil,1500],

							["RH_compM2","Rifle Aimpoint",425],
							["RH_compM2l","Rifle Aimpoint Low",425],

							["RH_sbr9_des",nil,60000],
							["RH_32Rnd_9mm_M822",nil,550],

							["A3L_AK47sgold",nil,120000],
							["A3L_AK47sMag",nil,500]

						]
					];
				};
			};
        };
        case "thomasf":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_thomasf): {"Your not in my gang piss off!"};
				default
				{
					["Thomas Weapons",
						[
							["optic_MRCO",nil,1220],
							["RH_eotech553_tan",nil,1220],
							["RH_Delft",nil,550],
							["hlc_optic_kobra",nil,550],
							["RH_cmore",nil,550],
							["A3L_CZ550Scope",nil,1500],

							["RH_compM2","Rifle Aimpoint",425],
							["RH_compM2l","Rifle Aimpoint Low",425],

							["hlc_rifle_akm",nil,55550],
							["hlc_rifle_ak47",nil,55550],
							["hlc_30Rnd_762x39_b_ak",nil,500],

							["hlc_rifle_ak12",nil,55550],
							["hlc_30Rnd_545x39_B_AK",nil,650],

							["hlc_rifle_M4",nil,40000],
							["hlc_30rnd_556x45_EPR",nil,400]

						]
					];
				};
			};
        };
		case "jack":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_jack): {"Your not in my gang piss off!"};
				default
				{
					["The Mafia's Weapons",
						[
							["optic_MRCO",nil,1220],
							["RH_eotech553_tan",nil,1220],
							["RH_Delft",nil,550],
							["hlc_optic_kobra",nil,550],
							["RH_cmore",nil,550],
							["A3L_CZ550Scope",nil,1500],

							["RH_Mk11",nil,80000],
							["RH_20Rnd_762x51_M80A1",nil,550],

							["RH_M4sbr_g",nil,45000],
							["RH_30Rnd_556x45_M855A1",nil,550],

							["hlc_rifle_SAMR",nil,70000],
							["30Rnd_556x45_Stanag",nil,550]
						]
					];
				};
			};
        };
		case "ssf":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_ssf): {"Your not in my gang piss off!"};
				default
				{
					["SSF Weapons",
						[
							["optic_MRCO",nil,1220],
							["RH_eotech553_tan",nil,1220],
							["RH_Delft",nil,550],
							["hlc_optic_kobra",nil,550],
							["RH_cmore",nil,550],
							["A3L_CZ550Scope",nil,1500],

							["RH_m16a6_des",nil,71550],
							["RH_30Rnd_68x43_FMJ",nil,1550],

							["hlc_rifle_RU5562",nil,61550],
							["hlc_30rnd_556x45_EPR",nil,550],

							["RH_sbr9_des",nil,15550],
							["RH_32Rnd_9mm_M822",nil,400]
						]
					];
				};
			};
        };
        case "gun":
        {
			switch(true) do
			{
				case (life_karma < 0): {"You need positive reputation to use this store!"};
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_gun): {"You don't have a Firearms license!"};
				default
				{
					["Kaels Firearms",
						[
							["KPFS_HKP7",nil,1250],
							["KPFS_8Rnd_9x19_PARA",nil,120],

							["KPFS_Mauser_Hsc",nil,1450],
							["kpfs_8Rnd_765x17_PP",nil,120],

							["KPFS_Walther_M9",nil,1550],
							["kpfs_6Rnd_635x15",nil,120],

							["KPFS_P99",nil,1600],
							["KPFS_15rnd_9x19_P99",nil,125],

							["RH_g17",nil,1750],
							["RH_g19",nil,1850],
							["RH_g19t",nil,1850],
							["RH_17Rnd_9x19_g17",nil,120],

							["RH_m9",nil,1800],
							["RH_15Rnd_9x19_M9",nil,120],

							["RH_sw659",nil,1950],
							["RH_14Rnd_9x19_sw",nil,150],

							["hgun_Rook40_F",nil,3350],
							["16Rnd_9x21_Mag",nil,125],

							["hgun_P07_F",nil,3350],
							["16Rnd_9x21_Mag",nil,125],
							["RH_gsh18",nil,5150],
							["RH_18Rnd_9x19_gsh",nil,195],
							["RH_kimber",nil,30500],
							["RH_7Rnd_45cal_m1911",nil,275]
						]
					];
				};
			};
        };

        case "rifle":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				case (!license_civ_rifle): {"You don't have a Rifle license!"};
				default
				{
					["Hunting Shop",
						[
							["A3L_CZ550",nil,18500],
							["A3L_CZ550mag",nil,5],
							["A3L_CZ550Scope",nil,12500],
							["arifle_SDAR_F","Turtle ONLY SDAR",1000],
							["20Rnd_556x45_UW_mag","Underwater magazine",120]
						]
					];
				};
			};
        };

        case "gang":
        {
			switch(true) do
			{
				case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
				default
				{
					["Hideout Armament",
						[
							["A3L_Glock17",nil,1260],
							["A3L_Glock17mag",nil,50]
						]
					];
				};
			};
        };

        case "genstore":
        {
			["General Store",
				[
					["CG_Pro_Item_i","CG GoPro",350],
					["CG_tabletd","CG Tablet Phone",50],
					["CG_battery_i","ZL Battery",5],
					["CG_ATF_Pizza_Box_i","Take Away Pizza",1400],
					["CG_ATF_Donut_Box_i","Take Away Donuts",1600],
					["cg_torch",nil,550],
					["cg_torchbattery",nil,50],
					["ItemMap",nil,6],
					["Binocular",nil,110],
					["ToolKit",nil,2500],
					["ItemCompass",nil,50],
					["ItemWatch",nil,10],
					["nonlethal_swing", "Blunt Ammo (b)", 10],
					["sharp_swing","Sharp Ammo (s)",10],
					["cg_scythe","Scythe (s)",500],
					["CG_PICKAXE","Pickaxe (s)",500],
					["cg_hatchet","Hatchet (s)",500],
					["cg_machete","Machete (s)",500],
					["CG_BAT","Bat (b)",500],
					["CG_CROSS","Holy Cross (b)",500],
					["A3L_Sign2","Weed Sign(Secondary Slot)",1000],
					["A3L_Sign","Police Sign(Secondary Slot)",1000],
					["Tv_Camera","TV Camera(Secondary Slot)",2520]
				]
			];
        };

        case "SS_supplies":
            {
                switch (true) do
                {
                    case (playerSide != Civilian): {"Cops and Medics cannot use SS Shops"};
                    case (!license_civ_ss): {"You are not whitelisted for Secret Service!"};
                    default {
                  ["SS Shop",
                          [
    							//Rifles
    							["RH_hb_b","Honey Badger Black",100],
    							["RH_30Rnd_762x35_FMJ","Honey Badger Ammo",5],
    							["hlc_rifle_vendimus","AR15 .300 Dissipator",100],
    							["hlc_rifle_Bushmaster300","Bushmaster .300 Carbine",100],
    							["29rnd_300BLK_STANAG",".300 Ammo",5],
    							["KPFS_G36A4","G36A4",100],
    							["KPFS_30Rnd_556x45_G36","G36A4 Ammo",5],
    							["RH_Hk416","Hk416 D14.5RS",100],
    							["RH_30Rnd_556x45_M855A1","Hk416 Ammo",5],
    							["RH_PDW","KAC PDW",100],
    							["RH_30Rnd_6x35_mag","KAC PDW Ammo",5],
    							["RH_M16A6","M16A6",100],
    							["RH_30Rnd_68x43_FMJ","M16A6 Ammo",5],
    							["RH_M16A6","M16A6",100],
    							["RH_30Rnd_68x43_FMJ","M16A6 Ammo",5],
    							["RH_M4A6","M4A6",100],
    							["RH_30Rnd_68x43_FMJ","M4A6 Ammo",5],
    							//Sights
    							["RH_barska_rds","Barska Red Dot",5],
    							["RH_cmore","C-more Red Dot",5],
    							["RH_compM2l","M2L Scope",5],
    							["optic_MRCO","MRCO Scope",5],
    							["RH_ta31rmr","ACOG",5],
    							["RH_shortdot","ShortDot",5],
    							["RH_eotech553mag","Eotech 553 + 3x Magnifier",5],
    							["RH_shortdot","ShortDot",5],
    							["optic_MRCO","MRCO",5],
    							["optic_DMS","DMS",5],
    							["RH_compM2","AimPoint",5],
    							["hlc_optic_kobra","Kobra Sight",5],
    							//Sniper Rifle Sights
    							["optic_LRPS","LRPS",5],
    							["RH_m3lr","TS-30A2",5],
    							["RH_leu_mk4","Big bad scope",5],
    							["Trixie_ANPVS10","NightVision Scope",5],
    							//Pistol
    							["RH_kimber_nw","Kimber Night Warrior",50],
    							["RH_7Rnd_45cal_m1911","Kimber Night Warrior Ammo",5],
    							["RH_g17","Glock 17",50],
    							["RH_17Rnd_9x19_g17","Glock 17 Ammo",5],
    							["RH_m9","Beretta M9",50],
    							["RH_15Rnd_9x19_M9","Beretta M9 Ammo",5],
    							["RH_usp","USP45",50],
    							["RH_12Rnd_45cal_usp","USP45 Ammo",5],
    							["RH_uspm","USP40 Match",50],
    							["RH_16Rnd_40cal_usp","USP40 Match Ammo",5],
    							//Suppressors
    							["RH_hbsd","Honey Badger Silencer",50],
    							["muzzle_snds_B","7.62 Silencer",50],
    							["KPFS_supressor_g36","QD Silencer",50],
    							["RH_fa556","5.56 Silencer",50],
    							["muzzle_snds_H","6.5 Silencer",50],
    							["RH_sfn57","FiveSeven Silencer",50],
    							["RH_gemtech9","9mm Silencer",50],
    							["RH_gemtech45",".45 Silencer",50],
    							["RH_matchsd","USP40 Silencer",50],
    							["RH_m9qd","Beretta M9 Silencer",50],
    							//Equipment
    							["Rangefinder","RangeFinder",5],
    							["Binocular","Binocular",5],
    							["ItemMap","Map",5],
    							["ItemCompass","Compass",5],
    							["Itemwatch","Watch",5],
    							["cg_tabletd_2","Tablet",5],
    							["ItemGPS","GPS",5],
    							["TRYK_balaclava_NV","Balaclava NV",5],
    							["NVGoggles","NVG",5]
                            ]
                        ];
                    };
                };
};

#include <macro.h>
/*
	File: fn_clothing_kirby.sqf
	
	
	Description:
	Master configuration file for Kirby Gang Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Kirby Gang Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["TRYK_U_B_NATO_UCP_GRY_R_CombatUniform",nil,1750]
		];
		if(__GETC__(life_adminlevel) > 0) then {
			_ret pushBack ["U_C_Scientist",nil,5];
		};
		_ret;
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_headsetcap_blk_Glasses",nil,12]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Balaclava_TI_G_blk_F",nil,5]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier1_blk",nil,250]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_AssaultPack_rgr",nil,250],
			["B_AssaultPack_khk",nil,250],
			["B_AssaultPack_sgg",nil,250],
			["B_AssaultPack_blk",nil,250],
			["B_TacticalPack_oli",nil,350],
			["B_Bergen_sgg",nil,450],
			["B_FieldPack_oli",nil,450],
			["B_FieldPack_cbr",nil,450],
			["B_FieldPack_khk",nil,450],

			["TRYK_B_Alicepack",nil,450],
			["TRYK_B_Coyotebackpack_BLK",nil,450],
			["TRYK_B_Coyotebackpack",nil,450],
			["TRYK_B_Coyotebackpack_OD",nil,450],
			["TRYK_B_Coyotebackpack_WH",nil,450],
			["TRYK_B_tube_blk",nil,450],
			["TRYK_B_tube_cyt",nil,450],
			["TRYK_B_tube_od",nil,450],
			["B_Kitbag_rgr",nil,450],

			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500],

			//koil added bps
			["kaelmonty",nil,550],	
			["kaelmonty2",nil,550],
			["kaelmario",nil,550],	
			["kaelsuits",nil,550],	
			["koiladc",nil,550],
			["koilbatman_1",nil,550],	
			["koilbender_1",nil,550],	
			["koilbender_2",nil,550],	
			["koilclint_1",nil,550],	
			["koileminem_1",nil,550],	
			["koilgraf_1",nil,550],	
			["koilgraf_2",nil,550],	
			["koilgraf_3",nil,550],	
			["koilhulk_1",nil,550],	
			["koiljoker_1",nil,550],	
			["koilpumpkin_1",nil,550],	
			["koilsparta_1",nil,550],	
			["koilsponge_1",nil,550],	
			["koilturtles_1",nil,550],	
			["koilkatie",nil,550],
			["koilpanda",nil,550],
			["koilaiden",nil,550],
			["koileagle",nil,550],
			["koilspecktators",nil,550],
			["koildarth",nil,550],
			["koilgucci",nil,550],
			["koilsmashing",nil,550],
			["koilgoonsquad",nil,550],
			["koilcat",nil,550],
			["koilbp_19",nil,550],	
			["koilbp_21",nil,550],	
			["koilbp_22",nil,550],
			["koilbp_1",nil,550],	
			["koilbp_2",nil,550],	
			["koilbp_3",nil,550],	
			["koilbp_4",nil,550],	
			["koilbp_5",nil,550],	
			["koilbp_6",nil,550],	
			["koilbp_7",nil,550],	
			["koilbp_8",nil,550],	
			["koilbp_9",nil,550],	
			["koilbp_10",nil,550],	
			["koilbp_11",nil,550],	
			["koilbp_12",nil,550],	
			["koilbp_13",nil,550],	
			["koilbp_14",nil,550],	
			["koilbp_15",nil,550],	
			["koilbp_16",nil,550],	
			["koilbp_17",nil,550],	
			["koilbp_18",nil,550]
			//koil addedd
		];
	};
};

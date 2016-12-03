#include <macro.h>
/*
	File: fn_clothing_trussell.sqf
	
	
	Description:
	Master configuration file for Trussell Gang Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Trussell Gang Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["KAEL_SUITS_BR_F24",nil,1750],
			["KAEL_SUITS_BR_F16",nil,1350]	
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
			["A3L_gangster_hat",nil,112] 
		];
	};
	
	//Glasses
	case 2:
	{
		[
			//beards
			["G_Balaclava_oli",nil,2],
			["TRYK_kio_balaclava_ear",nil,2]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["TRYK_V_IOTV_BLK",nil,250]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Carryall_khk",nil,250],
			["TRYK_B_Carryall_blk",nil,250]
		];
	};
};

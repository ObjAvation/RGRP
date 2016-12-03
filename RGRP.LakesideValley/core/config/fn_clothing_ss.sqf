#include <macro.h>
/*
	File: fn_clothing_ss.sqf


	Description:
	Master configuration file for Secret Service Clothing.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Secret Service Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_Marshal",SS Uniform,5],
			["KAEL_SUITS_BR_F16",nil,5]
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
			["TRYK_H_headsetcap_blk_Glasses",SS Cap,5],
      ["TRYK_Kio_Balaclava",Balaclava,5]
		];
	};

	//Glasses
	case 2:
	{
		[
			["Mask_M40",nil,10],
			["pmc_earpiece",nil,5]
		];
	};

	//Vest
	case 3:
	{
		[
			["jamie_security",SS Vest,5]

		];
	};

	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",Backpack,5],
			["AM_PoliceBelt",Belt,5]
		];
	};
};

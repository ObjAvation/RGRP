#include <macro.h>
/*
	File: fn_clothing_lhd.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Black Watch Gang Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["TRYK_U_hood_nc",nil,1750]
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
			["TRYK_R_CAP_TAN",nil,112]
		];
	};
	
	//Glasses
	case 2:
	{
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Aviator",nil,10],
			["G_Lady_Mirror",nil,15],
			["G_Lady_Dark",nil,15],
			["G_Lady_Blue",nil,15],
			["G_Lowprofile",nil,3]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["k_hrebel_5",nil,250],
			["TRYK_V_ArmorVest_tan",nil,250]		
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",nil,250]
		];
	};
};

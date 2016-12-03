#include <macro.h>
/*
	File: fn_clothing_jack.sqf
	
	
	Description:
	Master configuration file for Mafia Gang Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mafia Gang Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["TRYK_U_B_wood3c_CombatUniform",nil,1750],
			["TRYK_U_B_ACU",nil,1350]	
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
			["H_Watchcap_cbr",nil,112],
			["TRYK_H_Helmet_ACU",nil,112] 
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
			["V_TacVest_oli",nil,250],
			["TRYK_V_PlateCarrier_ACU_L",nil,250]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",nil,250],
			["cg_invisbp",nil,250]
		];
	};
};

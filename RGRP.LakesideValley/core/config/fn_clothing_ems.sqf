/*
	File: fn_clothing_bruce.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["cg_ems3","Below Command",2],
			["CG_EMS4","Command",2],
			["CG_EMS9","Wet Suit",2],
			["fire_uni1","Fire Department",2]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 2],
			["A3L_medic_helmet", nil, 2],
			["TCG_pdav_helmet", nil, 2],
			["H_CrewHelmetHeli_B", nil, 2]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Diving",nil,50],
			["G_Spectacles",nil,2],
			["G_Spectacles_Tinted",nil,2],	
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Aviator",nil,10],
			["Mask_M40","Gas Mask",5]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["SERTvest2","Invisi-Vest 2.0",5],
			["V_RebreatherB",nil,5]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TRYK_B_Medbag",nil,50],
			["TRYK_B_Medbag_BK",nil,50],
			["TRYK_B_Medbag_OD",nil,50],
			["TRYK_B_Medbag_ucp",nil,50],
			["B_FieldPack_ocamo",nil,50],
			["B_Carryall_oucamo",nil,50],
			["koilmedicwhite",nil,5500],
			["koilmedicred",nil,5500],
			["koilmedicblue",nil,5500],
			["koilmedicyellow",nil,5500],
			["cg_invisbp","Invisi-Backpack 2.0",5]
		];
	};
};

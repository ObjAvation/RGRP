#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Clothing"];


_ret = [];
switch (_filter) do
{
	case 0: 
	{
		_ret =
		[
			["","=== HIGH COMMAND CLOTHING ===",1],
			["sheriff_uniform_new","Sheriff",50],
			["CG_SO3","Command",50],		
			["","=== Division A ===",1],
			["CG_SO1","Cadet+",50],
			["CG_SO2","Captain+",50],
			["","=== D.O.C ===",1],
			["doc_uniform_cmd","DOC Command",50],
			["doc_uniform_sgt","DOC Sergeant",50],
			["doc_uniform_sco","DOC Corporal",50],
			["doc_uniform_co","DOC All",50],
			["","=== S.E.R.T ===",1],
			["A3L_SWAT","Sergeant+",50],
			["jamie_tou","2 Lieutenant+",50],
			["","=== Pilot ===",1],
			["RF_WING_3","Pilot Uniform",50]
		];
	};

	case 1:
	{
		_ret =
		[
			["","=== HIGH COMMAND ===",1],
			["Campaign_Hat_Washedout","High Command Hat",5],			
			["","=== Division A ===",1],
			["Campaign_Hat_Light","DeputyI +",5],
			["Campaign_Hat_Washedout","Captain+",5],
			["","=== D.O.C ===",1],
			["corrections_cap","Cadet+",5],
			["Campaign_Hat_Light","2nd Lieutenant+",5],
			["Campaign_Hat_Washedout","Captain+",5],
			["","=== S.E.R.T ===",1],
			["jamie_pcapblack","S.E.R.T Patrol Cap",50],
			["TRYK_H_PASGT_BLK","S.E.R.T Response Helmet",50],
			["TRYK_H_headsetcap_blk","SERT Cap",50],
			["","=== Pilot ===",1],
			["ACE_helmet","Pilot Helmet",50]
		];
	};

	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Aviator",nil,7],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["TRYK_balaclava_NV","SERT Balaclava",5],
			["TRYK_US_ESS_Glasses_BLK","SERT Glasses",6],
			["G_Bandanna_blk",nil,6],
			["G_Balaclava_TI_blk_F",nil,6],
			["Mask_M40","Gas Mask",5]
		];
	};

	case 3:
	{
		_ret =
		[
			["","=== HIGH COMMAND ===",1],
			["SCommand_Vest_Fix","Command Vest",nil,15],			
			["","=== Division A ===",1],
			["police_belt_Without_pistol_sheriff","Cadet+",15],
			["k_black_so_Fix","Corporal+",20],
			["highthreatvesttan_Fix","Supervisor",30],
			["highthreatvesttan_Fix","Code Red Vest",30],
			["","=== D.O.C ===",1],
			["police_belt_Without_pistol_sheriff","Cadet+",15],
			["DOC_Vest_Tac_Fix","Corporal+",15],
			["DOC_Vest_Threat_Tan_Fix","Supervisor",30],
			["DOC_Vest_Threat_Fix","Code Red Vest",15],
			["","=== S.E.R.T ===",1],
			["kaelvest_sert2_Fix","S.E.R.T Patrol Vest",20],
			["","=== Pilot ===",1],
			["TRYK_Hrp_vest_od","Pilot Vest",50],
			["","=== Internal Affairs ===",1],
			["k_black_so_Fix","I.A Vest",15]
		];
	};
	
	case 4: 
	{
		_ret =
		[
			["","=== HIGH COMMAND ===",1],
			["tf_rt1523g_black","Command LRR",40],
			["","=== All ===",1],
			["cg_invisbp","All-Backpack",2],
			["police_belt_pistol","All-Belt",2]
		];
	};
};

_ret;
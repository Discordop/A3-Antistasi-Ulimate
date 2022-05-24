/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	};

#define MAGAZINE_STOCK 200
#define LAUNCHER_STOCK 15
#define PISTOL_STOCK 50
#define RIFLE_STOCK 20
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	containerTypes[] = {"LandVehicle", "Air", "Ship", "ReammoBox_F"};
	containerRadius = 30;
	currencySymbol = "€";
	sellFactor = 0.5;
	debug = 0;

	class categories 
	{
		///////////////////////////////////////////////////////
		// Aegis
		///////////////////////////////////////////////////////
		class handgunsAegis 
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";
			ITEM(hgun_Pistol_heavy_01_F, 450, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_01_green_F, 450, PISTOL_STOCK);
			ITEM(hgun_ACPC2_F, 200, PISTOL_STOCK);
			ITEM(hgun_P07_F, 150, PISTOL_STOCK);
			ITEM(hgun_P07_blk_F, 150, PISTOL_STOCK);
			ITEM(hgun_P07_khk_F, 150, PISTOL_STOCK);
			ITEM(hgun_G17_F, 150, PISTOL_STOCK);
			ITEM(hgun_G17_black_F, 150, PISTOL_STOCK);
			ITEM(hgun_G17_khaki_F, 150, PISTOL_STOCK);
			ITEM(hgun_Rook40_F, 150, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_02_F, 600, PISTOL_STOCK);
			ITEM(hgun_Mk26_F, 800, PISTOL_STOCK);
		};

		class launchersAegis 
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(launch_RPG7_F, 650, LAUNCHER_STOCK);

			ITEM(launch_NLAW_F, 2000, LAUNCHER_STOCK);

			ITEM(launch_RPG32_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_black_F, 1250, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 1300, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 1300, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 1300, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_black_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_black_rail_F, 1300, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 2500, 10);
			ITEM(launch_O_Vorona_green_F, 2200, 10);

			ITEM(launch_B_Titan_F, 3500, 3);
			ITEM(launch_I_Titan_F, 3500, 3);
			ITEM(launch_O_Titan_F, 3500, 3);
			ITEM(launch_Titan_blk_F, 3500, 3);
			ITEM(launch_O_Titan_camo_F, 3500, 3); 

			ITEM(launch_B_Titan_short_F, 3250, 3);
			ITEM(launch_I_Titan_short_F, 3250, 3);
			ITEM(launch_O_Titan_short_F, 3250, 3);
			ITEM(launch_Titan_short_blk_F, 3250, 3);
			ITEM(launch_O_Titan_short_camo_F, 3250, 3);
		};

		class riflesAegis 
		{
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 250, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 700, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 550, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 850, RIFLE_STOCK);

			ITEM(arifle_Mk20_black_F, 700, RIFLE_STOCK);
			ITEM(arifle_Mk20C_black_F, 550, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_black_F, 800, RIFLE_STOCK);

			ITEM(arifle_Mk20_hex_F, 700, RIFLE_STOCK);
			ITEM(arifle_Mk20C_hex_F, 550, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_hex_F, 800, RIFLE_STOCK);

			ITEM(arifle_TRG21_F, 600, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 500, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 750, RIFLE_STOCK);

			ITEM(arifle_AUG_C_black_F, 700, RIFLE_STOCK);
			ITEM(arifle_AUG_black_F, 750, RIFLE_STOCK);
			ITEM(arifle_AUG_GL_black_F, 850, RIFLE_STOCK);

			ITEM(arifle_AUG_C_F, 700, RIFLE_STOCK);
			ITEM(arifle_AUG_F, 750, RIFLE_STOCK);
			ITEM(arifle_AUG_GL_F, 850, RIFLE_STOCK);

			ITEM(arifle_AKM_F, 700, RIFLE_STOCK);

			ITEM(arifle_Katiba_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Katiba_C_F, 950, RIFLE_STOCK);
			ITEM(arifle_Katiba_GL_F, 1150, RIFLE_STOCK);

			ITEM(arifle_CTAR_blk_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_blk_F, 950, RIFLE_STOCK);

			ITEM(arifle_CTAR_ghex_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_ghex_F, 950, RIFLE_STOCK);

			ITEM(arifle_CTAR_hex_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_hex_F, 950, RIFLE_STOCK);

			ITEM(arifle_AK12_545_F, 650, RIFLE_STOCK);
			ITEM(arifle_AK12U_545_F, 550, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_545_F, 800, RIFLE_STOCK);

			ITEM(arifle_AK12_545_arid_F, 650, RIFLE_STOCK);
			ITEM(arifle_AK12U_545_arid_F, 550, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_545_arid_F, 800, RIFLE_STOCK);

			ITEM(arifle_AK12_545_lush_F, 650, RIFLE_STOCK);
			ITEM(arifle_AK12U_545_lush_F, 550, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_545_lush_F, 800, RIFLE_STOCK);

			ITEM(arifle_MX_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MX_Black_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_Black_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_Black_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MX_khk_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_khk_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_khk_F, 1400, RIFLE_STOCK);

			ITEM(arifle_SA80_blk_F, 1350, RIFLE_STOCK);
			ITEM(arifle_SA80_C_blk_F, 1200, RIFLE_STOCK);
			ITEM(arifle_SA80_GL_blk_F, 1500, RIFLE_STOCK);
			
			ITEM(arifle_SA80_khk_F, 1350, RIFLE_STOCK);
			ITEM(arifle_SA80_C_khk_F, 1200, RIFLE_STOCK);
			ITEM(arifle_SA80_GL_khk_F, 1500, RIFLE_STOCK);

			ITEM(arifle_SA80_snd_F, 1350, RIFLE_STOCK);
			ITEM(arifle_SA80_C_snd_F, 1200, RIFLE_STOCK);
			ITEM(arifle_SA80_GL_snd_F, 1500, RIFLE_STOCK);

			ITEM(arifle_G36_F, 1500, RIFLE_STOCK);
			ITEM(arifle_G36C_F, 1200, RIFLE_STOCK);
			ITEM(arifle_G36_GL_F, 2300, RIFLE_STOCK);

			ITEM(arifle_MSBS65_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_black_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_black_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_black_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_camo_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_camo_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_camo_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_sand_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_sand_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_sand_F, 1500, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_blk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 1650, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_khk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 1650, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_snd_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_snd_F, 1650, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 2550, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 2550, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 2550, RIFLE_STOCK);

			ITEM(arifle_SCAR_F, 3000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_F, 3050, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_F, 2900, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_F, 3250, RIFLE_STOCK);

			ITEM(arifle_SCAR_khaki_F, 3000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_khaki_F, 3050, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_khaki_F, 2900, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_khaki_F, 3250, RIFLE_STOCK);

			ITEM(arifle_SCAR_black_F, 3000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_black_F, 3050, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_black_F, 2900, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_black_F, 3250, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 4000, RIFLE_STOCK);

		};

		class specialWeaponsAegis 
		{
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(GL_XM25_F, 1500, RIFLE_STOCK);
			ITEM(GL_M32_F, 1000, RIFLE_STOCK);
			ITEM(sgun_AA40_F, 900, RIFLE_STOCK);
			
			ITEM(sgun_M4_F, 300, RIFLE_STOCK);

			ITEM(sgun_KSG_F, 500, RIFLE_STOCK);
		};

		class mgAegis 
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_RPK_F, 900, RIFLE_STOCK);

			ITEM(arifle_CTARS_blk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_CTARS_ghex_F, 1500, RIFLE_STOCK);
			ITEM(arifle_CTARS_hex_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MX_SW_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MX_SW_Black_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MX_SW_khk_F, 1600, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 1600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 1600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_snd_F, 1600, RIFLE_STOCK);

			ITEM(LMG_03_F, 1250, RIFLE_STOCK);
			ITEM(LMG_03_khk_F, 1250, RIFLE_STOCK);
			ITEM(LMG_03_snd_F, 1250, RIFLE_STOCK);

			ITEM(LMG_Mk200_F, 1850, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 1850, RIFLE_STOCK);
			ITEM(LMG_Mk200_khk_F, 1850, RIFLE_STOCK);
			ITEM(LMG_Mk200_plain_F, 1850, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 2500, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 2500, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 2500, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 2900, RIFLE_STOCK);
			ITEM(LMG_Zafir_black_F, 2900, RIFLE_STOCK);
			ITEM(LMG_Zafir_ghex_F, 2900, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 4500, 10);
			ITEM(MMG_01_tan_F, 4500, 10);
			ITEM(MMG_01_black_F, 4500, 10);
			ITEM(MMG_01_ghex_F, 4500, 10);

			ITEM(MMG_02_black_F, 4350, 10);
			ITEM(MMG_02_camo_F, 4350, 10);
			ITEM(MMG_02_sand_F, 4350, 10);
			ITEM(MMG_02_khaki_F, 4350, 10);
		};

		class sniperRiflesAegis 
		{
			displayName = "DMRs, Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(srifle_DMR_07_blk_F, 1450, RIFLE_STOCK);
			ITEM(srifle_DMR_07_ghex_F, 1450, RIFLE_STOCK);
			ITEM(srifle_DMR_07_hex_F, 1450, RIFLE_STOCK);

			ITEM(arifle_MXM_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MXM_Black_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MXM_khk_F, 1600, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 1500, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 2200, RIFLE_STOCK);
			ITEM(srifle_DMR_01_black_F, 2200, RIFLE_STOCK);

			ITEM(srifle_DMR_06_hunter_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_06_camo_F, 2150, RIFLE_STOCK);
			ITEM(srifle_DMR_06_olive_F, 2150, RIFLE_STOCK);
			ITEM(srifle_DMR_06_black_F, 2150, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 2500, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 2550, RIFLE_STOCK);
			ITEM(srifle_EBR_blk_F, 2550, RIFLE_STOCK);
			ITEM(srifle_EBR_khk_F, 2550, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 1800, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 4250, 10);
			ITEM(srifle_DMR_02_camo_F, 4250, 10);
			ITEM(srifle_DMR_02_sniper_F, 4250, 10);
			ITEM(srifle_DMR_02_tna_F, 4250, 10);

			ITEM(srifle_DMR_05_blk_F, 4250, 10);
			ITEM(srifle_DMR_05_hex_F, 4250, 10);
			ITEM(srifle_DMR_05_tan_f, 4250, 10);

			ITEM(srifle_DMR_04_F, 4500, 10);

			ITEM(srifle_LRR_F, 4000, 5);
			ITEM(srifle_LRR_tna_F, 4000, 5);
			ITEM(srifle_LRR_camo_F, 4000, 5);

			ITEM(srifle_GM6_F, 4500, 5);
			ITEM(srifle_GM6_camo_F, 4500, 5);
			ITEM(srifle_GM6_ghex_F, 4500, 5);
		};

		class smgAegis 
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SMG_03C_TR_black, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 350, RIFLE_STOCK);

			ITEM(SMG_03C_black, 450, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 450, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 450, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 450, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 325, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 425, RIFLE_STOCK);
			ITEM(SMG_03_camo, 425, RIFLE_STOCK);
			ITEM(SMG_03_hex, 425, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 425, RIFLE_STOCK);

			ITEM(SMG_04_blk_F, 650, RIFLE_STOCK);
			ITEM(SMG_04_khk_F, 650, RIFLE_STOCK);
			ITEM(SMG_04_snd_F, 650, RIFLE_STOCK);

			ITEM(SMG_05_F, 200, RIFLE_STOCK);
			ITEM(SMG_05_snd_F, 200, RIFLE_STOCK);

			ITEM(SMG_01_F, 200, RIFLE_STOCK);
			ITEM(SMG_01_black_F, 200, RIFLE_STOCK);
			ITEM(SMG_01_khk_F, 200, RIFLE_STOCK);
		};

		class magazinesAegis 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			///////////////////////////////////////////////////////
			// Special
			///////////////////////////////////////////////////////
			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_AA40_HE {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_AA40_Slug {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_AA40_Pellets {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 8Rnd_12Gauge_Pellets {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 8Rnd_12Gauge_Slug {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_Pellets_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class 6Rnd_HE_Grenade_shell {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareWhite_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareGreen_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareRed_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareYellow_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareCIR_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_Smoke_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeRed_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeGreen_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeYellow_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokePurple_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeBlue_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeOrange_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_Pellets_Grenade_shell {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_APERSMine_Grenade_shell {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 5Rnd_25x40mm_HE {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_25x40mm_airburst {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class 9Rnd_45ACP_Mag {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 17Rnd_9x21_Mag {
				price = 31;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class 7Rnd_127x33_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 40Rnd_460x30_Mag_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_460x30_Mag_F {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class 30Rnd_65x39_caseless_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_AK12_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Lush_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Lush_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Arid_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Arid_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Black_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Black_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class 5Rnd_127x108_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 175;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 385;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class 200Rnd_556x45_Box_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 725;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
		};

		///////////////////////////////////////////////////////
		// Vanilla and GM AAF
		///////////////////////////////////////////////////////
		class handgunsVanilla 
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(hgun_Pistol_heavy_01_F, 450, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_01_green_F, 450, PISTOL_STOCK);
			ITEM(hgun_ACPC2_F, 200, PISTOL_STOCK);
			ITEM(hgun_P07_F, 150, PISTOL_STOCK);
			ITEM(hgun_P07_khk_F, 150, PISTOL_STOCK);
			ITEM(hgun_Rook40_F, 150, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_02_F, 600, PISTOL_STOCK);
		};

		class launchersVanilla 
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(launch_RPG7_F, 650, 15);

			ITEM(launch_NLAW_F, 2000, LAUNCHER_STOCK);

			ITEM(launch_RPG32_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 1250, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 1100, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 1100, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 1100, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_O_Vorona_green_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_B_Titan_F, 3500, 3);
			ITEM(launch_I_Titan_F, 3500, 3);
			ITEM(launch_O_Titan_F, 3500, 3);
			ITEM(launch_B_Titan_short_F, 3250, 3);
			ITEM(launch_I_Titan_short_F, 3250, 3);
			ITEM(launch_O_Titan_short_F, 3250, 3);
		};

		class launcherMagazinesVanilla 
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class RPG7_F {
				price = 75;
				stock = 50;
			};
			class NLAW_F {
				price = 650;
				stock = 30;
			};
			class MRAWS_HEAT_F {
				price = 275;
				stock = 50;
			};
			class MRAWS_HEAT55_F {
				price = 175;
				stock = 50;
			};
			class MRAWS_HE_F {
				price = 300;
				stock = 50;
			};
			class RPG32_HE_F {
				price = 275;
				stock = 50;
			};
			class RPG32_F {
				price = 250;
				stock = 50;
			};
			class Titan_AA {
				price = 800;
				stock = 15;
			};
			class Titan_AP {
				price = 1000;
				stock = 15;
			};
			class Titan_AT {
				price = 900;
				stock = 15;
			};
			class Vorona_HE {
				price = 750;
				stock = 15;
			};
			class Vorona_HEAT {
				price = 700;
				stock = 15;
			};
		};

		class riflesVanilla 
		{
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 250, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 700, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 550, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 850, RIFLE_STOCK);

			ITEM(arifle_TRG21_F, 600, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 500, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 750, RIFLE_STOCK);

			ITEM(arifle_AKM_F, 700, RIFLE_STOCK);

			ITEM(arifle_Katiba_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Katiba_C_F, 950, RIFLE_STOCK);
			ITEM(arifle_Katiba_GL_F, 1150, RIFLE_STOCK);

			ITEM(arifle_CTAR_blk_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_blk_F, 950, RIFLE_STOCK);

			ITEM(arifle_CTAR_ghex_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_ghex_F, 950, RIFLE_STOCK);

			ITEM(arifle_CTAR_hex_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_hex_F, 950, RIFLE_STOCK);

			ITEM(arifle_MX_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MX_Black_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_Black_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_Black_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MX_khk_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_khk_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_khk_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MSBS65_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_black_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_black_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_black_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_camo_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_camo_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_camo_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_sand_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_sand_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_sand_F, 1500, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_blk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 1650, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_khk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 1650, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_snd_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_snd_F, 1650, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 2550, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 2550, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 2550, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 4000, RIFLE_STOCK);
		};

		class sniperRiflesVanilla 
		{
			displayName = "DMRs, Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(srifle_DMR_07_blk_F, 1450, RIFLE_STOCK);
			ITEM(srifle_DMR_07_ghex_F, 1450, RIFLE_STOCK);
			ITEM(srifle_DMR_07_hex_F, 1450, RIFLE_STOCK);

			ITEM(arifle_MXM_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MXM_Black_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MXM_khk_F, 1600, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 1500, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 2200, RIFLE_STOCK);

			ITEM(srifle_DMR_06_hunter_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_06_camo_F, 2150, RIFLE_STOCK);
			ITEM(srifle_DMR_06_olive_F, 2150, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 2500, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 2550, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 1800, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 4250, 10);
			ITEM(srifle_DMR_02_camo_F, 4250, 10);
			ITEM(srifle_DMR_02_sniper_F, 4250, 10);

			ITEM(srifle_DMR_05_blk_F, 4200, 10);
			ITEM(srifle_DMR_05_hex_F, 4200, 10);
			ITEM(srifle_DMR_05_tan_f, 4200, 10);

			ITEM(srifle_DMR_04_F, 4500, 10);

			ITEM(srifle_LRR_F, 4000, 5);
			ITEM(srifle_LRR_tna_F, 4000, 5);
			ITEM(srifle_LRR_camo_F, 4000, 5);

			ITEM(srifle_GM6_F, 4500, 5);
			ITEM(srifle_GM6_camo_F, 4500, 5);
			ITEM(srifle_GM6_ghex_F, 4500, 5);
		};

		class mgVanilla 
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_CTARS_blk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_CTARS_ghex_F, 1500, RIFLE_STOCK);
			ITEM(arifle_CTARS_hex_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MX_SW_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MX_SW_Black_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MX_SW_khk_F, 1600, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 1600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 1600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_snd_F, 1600, RIFLE_STOCK);

			ITEM(LMG_03_F, 1250, RIFLE_STOCK);
			
			ITEM(LMG_Mk200_F, 1850, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 1850, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 2500, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 2500, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 2500, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 2900, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 4500, 10);
			ITEM(MMG_01_tan_F, 4500, 10);

			ITEM(MMG_02_black_F, 4500, 10);
			ITEM(MMG_02_camo_F, 4500, 10);
			ITEM(MMG_02_sand_F, 4500, 10);
		};

		class smgVanilla 
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SMG_03C_TR_black, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 350, RIFLE_STOCK);

			ITEM(SMG_03C_black, 450, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 450, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 450, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 450, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 325, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 425, RIFLE_STOCK);
			ITEM(SMG_03_camo, 425, RIFLE_STOCK);
			ITEM(SMG_03_hex, 425, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 425, RIFLE_STOCK);

			ITEM(SMG_05_F, 200, RIFLE_STOCK);
			ITEM(SMG_01_F, 200, RIFLE_STOCK);
		};

		class navigationVanilla 
		{
			displayName = "Navigation";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 300, NN_STOCK);
			ITEM(ItemRadio, 45, NN_STOCK);
			ITEM(Rangefinder, 400, NN_STOCK);
			ITEM(Laserdesignator, 1200, NN_STOCK);
			ITEM(Laserdesignator_02, 1200, NN_STOCK);
			ITEM(Laserdesignator_03, 1200, NN_STOCK);
			ITEM(NVGoggles, 500, NN_STOCK);
			ITEM(NVGoggles_INDEP, 1000, NN_STOCK);
			ITEM(NVGoggles_OPFOR, 1000, NN_STOCK);
			ITEM(NVGoggles_tna_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_hex_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_urb_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_ghex_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_grn_F, 1000, NN_STOCK);
		};

		class underbarrelVanilla 
		{
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(bipod_02_F_arid, 100, 50);
			ITEM(bipod_03_F_blk, 100, 50);
			ITEM(bipod_02_F_blk, 100, 50);
			ITEM(bipod_01_F_blk, 100, 50);
			ITEM(bipod_02_F_hex, 100, 50);
			ITEM(bipod_01_F_khk, 100, 50);
			ITEM(bipod_02_F_lush, 100, 50);
			ITEM(bipod_01_F_mtp, 100, 50);
			ITEM(bipod_03_F_oli, 100, 50);
			ITEM(bipod_01_F_snd, 100, 50);
			ITEM(bipod_02_F_tan, 100, 50);
		};

		class pointersVanilla 
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(acc_pointer_IR, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);
		};

		class muzzlesVanilla 
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(muzzle_snds_338_black, 500, MZ_STOCK); //5
			ITEM(muzzle_snds_338_green, 500, MZ_STOCK);
			ITEM(muzzle_snds_338_sand, 500, MZ_STOCK);
			ITEM(muzzle_snds_93mmg, 600, MZ_STOCK); //4
			ITEM(muzzle_snds_93mmg_tan, 600, MZ_STOCK);
			ITEM(muzzle_snds_acp, 150, MZ_STOCK);
			ITEM(muzzle_snds_B, 200, MZ_STOCK);//3
			ITEM(muzzle_snds_B_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_B_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_khk_F, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_SW, 200, MZ_STOCK);
			ITEM(muzzle_snds_L, 200, MZ_STOCK);//1
			ITEM(muzzle_snds_M, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_blk_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_m_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_m_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_wdm_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_58_ghex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_58_hex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_blk_F, 350, MZ_STOCK); //2
			ITEM(muzzle_snds_65_TI_hex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_ghex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_blk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_khk_F, 200, MZ_STOCK);
		};

		class opticsVanilla 
		{
			displayName = "Optics Accessories";
			picture = "";

			class optic_tws {
				price = 2000;
				stock = 5;
			};
			class optic_tws_mg {
				price = 2000;
				stock = 5;
			};
			class optic_Hamr_khk_F {
				price = 700;
				stock = 100;
			};
			class optic_SOS_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_Arco_ghex_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_DMS_ghex_F {
				price = 900;
				stock = 100;
			};
			class optic_ERCO_blk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_snd_F {
				price = 800;
				stock = 100;
			};
			class optic_LRPS_ghex_F {
				price = 1000;
				stock = 100;
			};
			class optic_LRPS_tna_F {
				price = 1000;
				stock = 100;
			};
			class optic_Holosight_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_lush_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_arid_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_DMS_weathered_Kir_F {
				price = 1000;
				stock = 100;
			};
			class optic_Aco {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 200; 
				stock = 100;
			};
			class optic_AMS {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_khk {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_snd {
				price = 1200;
				stock = 100;
			};
			class optic_Arco {
				price = 650;
				stock = 100;
			};
			class optic_DMS {
				price = 800;
				stock = 100;
			};
			class optic_Hamr {
				price = 700;
				stock = 100;
			};
			class optic_Holosight {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 250;
				stock = 100;
			};
			class optic_KHS_blk {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_hex {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_old {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_tan {
				price = 1100;
				stock = 100;
			};
			class optic_LRPS {
				price = 1000;
				stock = 100;
			};
			class optic_MRCO {
				price = 500;
				stock = 100;
			};
			class optic_MRD {
				price = 100;
				stock = 100;
			};
			class optic_MRD_black {
				price = 100;
				stock = 100;
			};
			class optic_NVS {
				price = 1500;
				stock = 100;
			};
			class optic_SOS {
				price = 800;
				stock = 100;
			};
			class optic_Yorris {
				price = 100;
				stock = 100;
			};
		};

		class magazinesVanilla 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class 9Rnd_45ACP_Mag {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class 30Rnd_65x39_caseless_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class 5Rnd_127x108_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 175;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 385;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class 200Rnd_556x45_Box_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 460;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 725;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
		};

		class miscVanilla 
		{
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(H_HelmetO_ViperSP_ghex_F, 15000, MISC_STOCK);
			ITEM(U_O_V_Soldier_Viper_F, 25000, MISC_STOCK);

			ITEM(H_HelmetO_ViperSP_hex_F, 15000, MISC_STOCK);
			ITEM(U_O_V_Soldier_Viper_hex_F, 25000, MISC_STOCK);

			ITEM(B_Bergen_dgtl_F, 600, MISC_STOCK);
			ITEM(B_Bergen_hex_F, 600, MISC_STOCK);
			ITEM(B_Bergen_mcamo_F, 600, MISC_STOCK);
			ITEM(B_Bergen_tna_F, 600, MISC_STOCK);
			ITEM(B_ViperLightHarness_blk_F, 450, MISC_STOCK);
			ITEM(B_ViperLightHarness_ghex_F, 450, MISC_STOCK);
			ITEM(B_ViperLightHarness_hex_F, 450, MISC_STOCK);
			ITEM(B_ViperLightHarness_khk_F, 450, MISC_STOCK);
			ITEM(B_ViperLightHarness_oli_F, 450, MISC_STOCK);
			ITEM(B_ViperHarness_blk_F, 550, MISC_STOCK);
			ITEM(B_ViperHarness_ghex_F, 550, MISC_STOCK);
			ITEM(B_ViperHarness_hex_F, 550, MISC_STOCK);
			ITEM(B_ViperHarness_khk_F, 550, MISC_STOCK);
			ITEM(B_ViperHarness_oli_F, 550, MISC_STOCK);

			ITEM(B_Carryall_cbr, 400, MISC_STOCK);
			ITEM(B_Carryall_eaf_F, 400, MISC_STOCK);
			ITEM(B_Carryall_ghex_F, 400, MISC_STOCK);
			ITEM(B_Carryall_green_F, 400, MISC_STOCK);
			ITEM(B_Carryall_ocamo, 400, MISC_STOCK);
			ITEM(B_Carryall_khk, 400, MISC_STOCK);
			ITEM(B_Carryall_mcamo, 400, MISC_STOCK);
			ITEM(B_Carryall_oli, 400, MISC_STOCK);
			ITEM(B_Carryall_taiga_F, 400, MISC_STOCK);
			ITEM(B_Carryall_oucamo, 400, MISC_STOCK);
			ITEM(B_Carryall_wdl_F, 400, MISC_STOCK);

			ITEM(H_HelmetSpecB, 1000, MISC_STOCK);
			ITEM(H_HelmetSpecB_blk, 1000, MISC_STOCK);
			ITEM(H_HelmetSpecB_paint2, 1000, MISC_STOCK);
			ITEM(H_HelmetSpecB_paint1, 1000, MISC_STOCK);
			ITEM(H_HelmetSpecB_sand, 1000, MISC_STOCK);
			ITEM(H_HelmetSpecB_snakeskin, 1000, MISC_STOCK);
			ITEM(H_HelmetB_Enh_tna_F, 1000, MISC_STOCK);
			ITEM(H_HelmetSpecB_wdl, 1000, MISC_STOCK);

			ITEM(H_HelmetAggressor_F, 1000, MISC_STOCK);
			ITEM(H_HelmetAggressor_cover_F, 1000, MISC_STOCK);

			ITEM(V_SmershVest_01_F, 300, MISC_STOCK);
			ITEM(V_SmershVest_01_radio_F, 300, MISC_STOCK);

			ITEM(V_PlateCarrier1_blk, 900, MISC_STOCK);
			ITEM(V_PlateCarrier2_blk, 1250, MISC_STOCK);
			ITEM(V_PlateCarrierIAGL_oli, 1300, MISC_STOCK);

			ITEM(V_CarrierRigKBT_01_heavy_Olive_F, 1300, MISC_STOCK);
			ITEM(V_CarrierRigKBT_01_light_Olive_F, 700, MISC_STOCK);
			ITEM(V_CarrierRigKBT_01_Olive_F, 700, MISC_STOCK);

			ITEM(NVGogglesB_blk_F, 2500, MISC_STOCK);
			ITEM(NVGogglesB_grn_F, 2500, MISC_STOCK);
			ITEM(NVGogglesB_gry_F, 2500, MISC_STOCK);

			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);

			ITEM(IEDUrbanSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 750, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 750, MISC_STOCK);

			ITEM(APERSMineDispenser_Mag, 400, MISC_STOCK);
			ITEM(ClaymoreDirectionalMine_Remote_Mag, 300, MISC_STOCK);
			ITEM(DemoCharge_Remote_Mag, 250, MISC_STOCK);
			ITEM(SatchelCharge_Remote_Mag, 500, MISC_STOCK);
			ITEM(SLAMDirectionalMine_Wire_Mag, 400, MISC_STOCK);
			ITEM(ATMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSBoundingMine_Range_Mag, 150, MISC_STOCK);
			ITEM(APERSTripMine_Wire_Mag, 100, MISC_STOCK);

			ITEM(G_RegulatorMask_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_01_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_sand_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_olive_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_black_F, 200, MISC_STOCK);
			
			ITEM(I_UavTerminal, 800, MISC_STOCK);
			ITEM(O_UavTerminal, 800, MISC_STOCK);
			ITEM(B_UavTerminal, 800, MISC_STOCK);
		};

		///////////////////////////////////////////////////////
		// GM AAF
		///////////////////////////////////////////////////////
		class riflesGmAaf
		{
			displayName = "Assault Rifles, Designated Grenade Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 250, RIFLE_STOCK);

			ITEM(gm_mpiak74n_brn, 350, RIFLE_STOCK);
			ITEM(gm_mpiak74n_prp, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74n_brn, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74n_prp, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74nk_brn, 350, RIFLE_STOCK);
			ITEM(gm_mpiaks74nk_prp, 350, RIFLE_STOCK);

			ITEM(gm_hk69a1_blk, 400, RIFLE_STOCK);
			ITEM(gm_pallad_d_brn, 300, RIFLE_STOCK);

			ITEM(gm_m16a1_blk, 400, RIFLE_STOCK);
			ITEM(gm_m16a2_blk, 450, RIFLE_STOCK);

			ITEM(gm_mpikm72_brn, 700, RIFLE_STOCK);
			ITEM(gm_mpikm72_prp, 700, RIFLE_STOCK);

			ITEM(gm_mpikms72_brn, 700, RIFLE_STOCK);
			ITEM(gm_mpikms72_prp, 700, RIFLE_STOCK);

			ITEM(gm_akm_wud, 700, RIFLE_STOCK);
			ITEM(gm_akm_pallad_wud, 950, RIFLE_STOCK);
			ITEM(gm_akmn_wud, 850, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 700, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 550, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 850, RIFLE_STOCK);

			ITEM(gm_c7a1_oli, 650, RIFLE_STOCK);
			ITEM(gm_c7a1_blk, 650, RIFLE_STOCK);
			ITEM(gm_gvm95_blk, 650, RIFLE_STOCK);

			ITEM(arifle_TRG21_F, 600, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 500, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 750, RIFLE_STOCK);

			ITEM(gm_g36e_blk, 900, RIFLE_STOCK);

			ITEM(arifle_Katiba_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Katiba_C_F, 950, RIFLE_STOCK);
			ITEM(arifle_Katiba_GL_F, 1150, RIFLE_STOCK);

			ITEM(arifle_CTAR_blk_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_blk_F, 950, RIFLE_STOCK);

			ITEM(arifle_CTAR_ghex_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_ghex_F, 950, RIFLE_STOCK);

			ITEM(arifle_CTAR_hex_F, 800, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_hex_F, 950, RIFLE_STOCK);

			ITEM(arifle_MX_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MX_Black_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_Black_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_Black_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MX_khk_F, 1250, RIFLE_STOCK);
			ITEM(arifle_MXC_khk_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MX_GL_khk_F, 1400, RIFLE_STOCK);

			ITEM(arifle_MSBS65_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_black_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_black_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_black_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_camo_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_camo_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_camo_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_sand_F, 1200, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_sand_F, 1400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_sand_F, 1500, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_blk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 1650, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_khk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 1650, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_snd_F, 1500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_snd_F, 1650, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 2550, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 2550, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 2300, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 2400, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 2550, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 4000, RIFLE_STOCK);
		};
		
		class mgGmAaf 
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(gm_lmgrpk74n_prp, 900, RIFLE_STOCK);
			ITEM(gm_lmgrpk74n_brn, 900, RIFLE_STOCK);

			ITEM(gm_lmgrpk_brn, 900, RIFLE_STOCK);
			ITEM(gm_lmgrpk_prp, 900, RIFLE_STOCK);

			ITEM(arifle_CTARS_blk_F, 1500, RIFLE_STOCK);
			ITEM(arifle_CTARS_ghex_F, 1500, RIFLE_STOCK);
			ITEM(arifle_CTARS_hex_F, 1500, RIFLE_STOCK);

			ITEM(arifle_MX_SW_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MX_SW_Black_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MX_SW_khk_F, 1600, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 1600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 1600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_snd_F, 1600, RIFLE_STOCK);

			ITEM(LMG_03_F, 1100, RIFLE_STOCK);

			ITEM(gm_mg3_blk, 2000, RIFLE_STOCK);
			ITEM(gm_mg3_des, 2000, RIFLE_STOCK);

			ITEM(gm_hmgpkm_prp, 1750, RIFLE_STOCK);
			
			ITEM(LMG_Mk200_F, 1850, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 1850, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 2500, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 2500, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 2500, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 2900, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 4500, 10);
			ITEM(MMG_01_tan_F, 4500, 10);

			ITEM(MMG_02_black_F, 4500, 10);
			ITEM(MMG_02_camo_F, 4500, 10);
			ITEM(MMG_02_sand_F, 4500, 10);
		};

		class sniperRiflesGmAaf
		{
			displayName = "DMRs, Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(gm_svd_wud, 1500, RIFLE_STOCK);

			ITEM(srifle_DMR_07_blk_F, 1450, RIFLE_STOCK);
			ITEM(srifle_DMR_07_ghex_F, 1450, RIFLE_STOCK);
			ITEM(srifle_DMR_07_hex_F, 1450, RIFLE_STOCK);

			ITEM(arifle_MXM_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MXM_Black_F, 1600, RIFLE_STOCK);
			ITEM(arifle_MXM_khk_F, 1600, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 1500, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 1500, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 2200, RIFLE_STOCK);

			ITEM(srifle_DMR_06_hunter_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_06_camo_F, 2150, RIFLE_STOCK);
			ITEM(srifle_DMR_06_olive_F, 2150, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 2500, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 2500, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 2550, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 1800, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 4250, 10);
			ITEM(srifle_DMR_02_camo_F, 4250, 10);
			ITEM(srifle_DMR_02_sniper_F, 4250, 10);

			ITEM(srifle_DMR_05_blk_F, 4200, 10);
			ITEM(srifle_DMR_05_hex_F, 4200, 10);
			ITEM(srifle_DMR_05_tan_f, 4200, 10);

			ITEM(srifle_DMR_04_F, 4500, 10);

			ITEM(srifle_LRR_F, 4000, 5);
			ITEM(srifle_LRR_tna_F, 4000, 5);
			ITEM(srifle_LRR_camo_F, 4000, 5);

			ITEM(srifle_GM6_F, 4500, 5);
			ITEM(srifle_GM6_camo_F, 4500, 5);
			ITEM(srifle_GM6_ghex_F, 4500, 5);
		};

		class smgGmAaf 
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SMG_03C_TR_black, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 350, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 350, RIFLE_STOCK);

			ITEM(SMG_03C_black, 450, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 450, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 450, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 450, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 325, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 325, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 425, RIFLE_STOCK);
			ITEM(SMG_03_camo, 425, RIFLE_STOCK);
			ITEM(SMG_03_hex, 425, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 425, RIFLE_STOCK);

			ITEM(SMG_05_F, 200, RIFLE_STOCK);
			ITEM(SMG_01_F, 200, RIFLE_STOCK);

			ITEM(gm_mp2a1_blk, 100, RIFLE_STOCK);

			ITEM(gm_mp5a2_blk, 250, RIFLE_STOCK);
			ITEM(gm_mp5a3_blk, 250, RIFLE_STOCK);

			ITEM(gm_mp5sd2_blk, 350, RIFLE_STOCK);
			ITEM(gm_mp5sd3_blk, 350, RIFLE_STOCK);
		};

		class launchersGmAaf
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(gm_m72a3_oli, 200, 50);

			ITEM(gm_pzf3_blk, 800, 50); 
			ITEM(gm_pzf84_des, 800, 50);
			ITEM(gm_pzf84_win, 800, 50);

			ITEM(gm_pzf44_2_oli, 500, 15);
			ITEM(gm_pzf44_2_des, 500, 15);
			ITEM(gm_pzf44_2_win, 500, 15);

			ITEM(gm_rpg7_wud, 700, 15);
			ITEM(gm_rpg7_prp, 700, 15);

			ITEM(gm_pzf84_oli, 1000, 15);

			ITEM(gm_fim43_oli, 750, 50);
			ITEM(gm_9k32m_oli, 750, 50);

			ITEM(launch_NLAW_F, 2000, LAUNCHER_STOCK);

			ITEM(launch_RPG32_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 1250, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 1100, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 1100, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 1100, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_O_Vorona_green_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_B_Titan_F, 3500, 3);
			ITEM(launch_I_Titan_F, 3500, 3);
			ITEM(launch_O_Titan_F, 3500, 3);
			ITEM(launch_B_Titan_short_F, 3250, 3);
			ITEM(launch_I_Titan_short_F, 3250, 3);
			ITEM(launch_O_Titan_short_F, 3250, 3);
		};
	
		class launcherMagazinesGmAaf 
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf {
				price = 125;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_heat_t_DM12a1_carlgustaf {
				price = 145;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_heat_t_DM22_carlgustaf {
				price = 200;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf {
				price = 250;
				stock = 50;
			};
			class gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf {
				price = 25;
				stock = 50;
			};

			class gm_1Rnd_66mm_heat_m72a3 {
				price = 50;
				stock = 50;
			};

			class gm_1Rnd_60mm_heat_dm12_pzf3 {
				price = 150;
				stock = 50;
			};
			class gm_1Rnd_60mm_heat_dm22_pzf3 {
				price = 200;
				stock = 50;
			};
			class gm_1Rnd_60mm_heat_dm32_pzf3 {
				price = 300;
				stock = 50;
			};

			class gm_1Rnd_44x537mm_heat_dm32_pzf44_2 {
				price = 90;
				stock = 50;
			};

			class gm_1Rnd_70mm_he_m585_fim43 {
				price = 750;
				stock = 50;
			};

			class gm_1Rnd_72mm_he_9m32m {
				price = 750;
				stock = 50;
			};

			class gm_1Rnd_40mm_heat_pg7v_rpg7 {
				price = 115;
				stock = 50;
			};
			class gm_1Rnd_40mm_heat_pg7vl_rpg7 {
				price = 200;
				stock = 50;
			};

			class NLAW_F {
				price = 650;
				stock = 30;
			};
			class MRAWS_HEAT_F {
				price = 275;
				stock = 50;
			};
			class MRAWS_HEAT55_F {
				price = 175;
				stock = 50;
			};
			class MRAWS_HE_F {
				price = 300;
				stock = 50;
			};
			class RPG32_HE_F {
				price = 275;
				stock = 50;
			};
			class RPG32_F {
				price = 250;
				stock = 50;
			};
			class Titan_AA {
				price = 800;
				stock = 15;
			};
			class Titan_AP {
				price = 1000;
				stock = 15;
			};
			class Titan_AT {
				price = 900;
				stock = 15;
			};
			class Vorona_HE {
				price = 750;
				stock = 15;
			};
			class Vorona_HEAT {
				price = 700;
				stock = 15;
			};
		};

		class opticsGmAaf
		{
			displayName = "Optics Accessories";
			picture = "";

			class gm_pso1_gry {
				price = 500;
				stock = 50;
			};

			class gm_zvn64_rear_ak {
				price = 25;
				stock = 50;
			};

			class gm_c79a1_blk {
				price = 400;
				stock = 50;
			};

			class gm_c79a1_oli {
				price = 400;
				stock = 50;
			};

			class gm_feroz24_blk {
				price = 250;
				stock = 50;
			};

			class gm_feroz2x17_pzf44_2_blk {
				price = 250;
				stock = 50;
			};

			class gm_feroz2x17_pzf44_2_des {
				price = 250;
				stock = 50;
			};

			class gm_feroz2x17_pzf44_2_win {
				price = 250;
				stock = 50;
			};

			class gm_pgo7v_blk {
				price = 250;
				stock = 50;
			};

			class gm_zfk4x25_blk {
				price = 250;
				stock = 50;
			};

			class optic_tws {
				price = 2000;
				stock = 5;
			};
			class optic_tws_mg {
				price = 2000;
				stock = 5;
			};
			class optic_Hamr_khk_F {
				price = 700;
				stock = 100;
			};
			class optic_SOS_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_Arco_ghex_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_DMS_ghex_F {
				price = 900;
				stock = 100;
			};
			class optic_ERCO_blk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_snd_F {
				price = 800;
				stock = 100;
			};
			class optic_LRPS_ghex_F {
				price = 1000;
				stock = 100;
			};
			class optic_LRPS_tna_F {
				price = 1000;
				stock = 100;
			};
			class optic_Holosight_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_lush_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_arid_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_DMS_weathered_Kir_F {
				price = 1000;
				stock = 100;
			};
			class optic_Aco {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 200; 
				stock = 100;
			};
			class optic_AMS {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_khk {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_snd {
				price = 1200;
				stock = 100;
			};
			class optic_Arco {
				price = 650;
				stock = 100;
			};
			class optic_DMS {
				price = 800;
				stock = 100;
			};
			class optic_Hamr {
				price = 700;
				stock = 100;
			};
			class optic_Holosight {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 250;
				stock = 100;
			};
			class optic_KHS_blk {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_hex {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_old {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_tan {
				price = 1100;
				stock = 100;
			};
			class optic_LRPS {
				price = 1000;
				stock = 100;
			};
			class optic_MRCO {
				price = 500;
				stock = 100;
			};
			class optic_MRD {
				price = 100;
				stock = 100;
			};
			class optic_MRD_black {
				price = 100;
				stock = 100;
			};
			class optic_NVS {
				price = 1500;
				stock = 100;
			};
			class optic_SOS {
				price = 800;
				stock = 100;
			};
			class optic_Yorris {
				price = 100;
				stock = 100;
			};
		};

		class pointersGmAaf 
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(acc_pointer_IR, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);

			ITEM(gm_zvn64_front, 25, PN_STOCK);
		};

		class muzzlesGmAaf 
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(gm_bayonet_6x3_wud, 10, PN_STOCK);
			ITEM(gm_bayonet_6x3_blk, 10, PN_STOCK);

			ITEM(muzzle_snds_338_black, 500, MZ_STOCK); //5
			ITEM(muzzle_snds_338_green, 500, MZ_STOCK);
			ITEM(muzzle_snds_338_sand, 500, MZ_STOCK);
			ITEM(muzzle_snds_93mmg, 600, MZ_STOCK); //4
			ITEM(muzzle_snds_93mmg_tan, 600, MZ_STOCK);
			ITEM(muzzle_snds_acp, 150, MZ_STOCK);
			ITEM(muzzle_snds_B, 200, MZ_STOCK);//3
			ITEM(muzzle_snds_B_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_B_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_khk_F, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_SW, 200, MZ_STOCK);
			ITEM(muzzle_snds_L, 200, MZ_STOCK);//1
			ITEM(muzzle_snds_M, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_blk_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_m_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_m_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_wdm_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_58_ghex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_58_hex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_blk_F, 350, MZ_STOCK); //2
			ITEM(muzzle_snds_65_TI_hex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_ghex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_blk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_khk_F, 200, MZ_STOCK);
		};

		class magazinesGmAaf 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class gm_30Rnd_9x19mm_B_DM51_mp5_blk {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_9x19mm_B_DM11_mp5_blk {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_9x19mm_AP_DM91_mp5_blk {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class gm_32Rnd_9x19mm_B_DM51_mp2_blk {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_32Rnd_9x19mm_B_DM11_mp2_blk {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class gm_32Rnd_9x19mm_AP_DM91_mp2_blk {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			
			class 9Rnd_45ACP_Mag {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class gm_30Rnd_556x45mm_B_DM11_g36_blk {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_556x45mm_B_T_DM21_g36_blk {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class gm_30Rnd_556x45mm_B_DM11_g36_des {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class gm_30Rnd_556x45mm_B_T_DM21_g36_des {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 90;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class 5Rnd_127x108_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 175;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class gm_10Rnd_762x54mmR_AP_7N1_svd_blk {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class gm_10Rnd_762x54mmR_API_7bz3_svd_blk {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class gm_10Rnd_762x54mmR_B_T_7t2_svd_blk {
				price = 235;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 385;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class gm_45Rnd_545x39mm_B_7N6_ak74_prp {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class gm_45Rnd_545x39mm_B_T_7T3_ak74_prp {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class gm_100Rnd_762x54mmR_B_T_7t2_pk_grn {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class gm_100Rnd_762x54mmR_API_7bz3_pk_grn {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class gm_100Rnd_762x54mm_B_T_t46_pk_grn {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class gm_100Rnd_762x54mm_API_b32_pk_grn {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class gm_120Rnd_762x51mm_B_T_DM21_mg3_grn {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class gm_120Rnd_762x51mm_B_T_DM21A1_mg3_grn {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class gm_120Rnd_762x51mm_B_T_DM21A2_mg3_grn {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_556x45_Box_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 460;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 725;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
		};



		///////////////////////////////////////////////////////
		// CUP
		///////////////////////////////////////////////////////
		class handgunsCup 
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(hgun_Rook40_F, 150, PISTOL_STOCK);

			ITEM(hgun_ACPC2_F, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_Colt1911, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_Mk23, 250, PISTOL_STOCK);

			ITEM(CUP_hgun_Compact, 150, PISTOL_STOCK);
			ITEM(CUP_hgun_Duty, 125, PISTOL_STOCK);
			ITEM(CUP_hgun_Phantom, 200, PISTOL_STOCK);

			ITEM(CUP_hgun_M9, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_Browning_HP, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_M9A1, 200, PISTOL_STOCK);

			ITEM(CUP_hgun_Glock17, 250, PISTOL_STOCK);
			ITEM(CUP_hgun_Glock17_blk, 250, PISTOL_STOCK);
			ITEM(CUP_hgun_Glock17_tan, 250, PISTOL_STOCK);

			ITEM(hgun_Pistol_heavy_01_F, 450, PISTOL_STOCK);

			ITEM(CUP_hgun_Deagle, 400, PISTOL_STOCK);
			ITEM(CUP_hgun_PB6P9, 250, PISTOL_STOCK);
			ITEM(CUP_hgun_PMM, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_TaurusTracker455_gold, 500, PISTOL_STOCK);
			ITEM(CUP_hgun_TEC9, 150, PISTOL_STOCK);
			ITEM(CUP_hgun_TEC9_FA, 300, PISTOL_STOCK);
			ITEM(CUP_hgun_Mac10, 350, PISTOL_STOCK);

			ITEM(hgun_Pistol_heavy_02_F, 800, PISTOL_STOCK);

			ITEM(CUP_hgun_MP7, 800, PISTOL_STOCK);
			ITEM(CUP_hgun_MP7_desert, 800, PISTOL_STOCK);
			ITEM(CUP_hgun_MP7_woodland, 800, PISTOL_STOCK);
		};

		class smgCup 
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_smg_PS90_olive, 350, PISTOL_STOCK);

			ITEM(CUP_smg_bizon, 700, RIFLE_STOCK);

			ITEM(CUP_smg_vityaz, 300, RIFLE_STOCK);
			ITEM(CUP_smg_vityaz_vfg_front_rail, 350, RIFLE_STOCK);
			ITEM(CUP_smg_vityaz_vfg, 365, RIFLE_STOCK);
			ITEM(CUP_smg_vityaz_vfg_top_rail, 365, RIFLE_STOCK);
			ITEM(CUP_smg_vityaz_top_rail, 325, RIFLE_STOCK);

			ITEM(SMG_03C_TR_black, 450, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 450, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 450, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 450, RIFLE_STOCK);

			ITEM(SMG_03C_black, 550, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 550, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 550, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 550, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 425, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 425, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 425, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 425, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 525, RIFLE_STOCK);
			ITEM(SMG_03_camo, 525, RIFLE_STOCK);
			ITEM(SMG_03_hex, 525, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 525, RIFLE_STOCK);

			ITEM(SMG_01_F, 400, RIFLE_STOCK);
			ITEM(SMG_02_F, 400, RIFLE_STOCK);

			ITEM(CUP_smg_MP5A5, 350, RIFLE_STOCK);
			ITEM(CUP_smg_MP5A5_flashlight, 365, RIFLE_STOCK);
			ITEM(CUP_smg_MP5SD6, 425, RIFLE_STOCK);

			ITEM(CUP_smg_MP7, 800, PISTOL_STOCK);
			ITEM(CUP_smg_MP7_desert, 800, PISTOL_STOCK);
			ITEM(CUP_smg_MP7_woodland, 800, PISTOL_STOCK);

			ITEM(CUP_arifle_SR3M_Vikhr, 500, RIFLE_STOCK);
			ITEM(CUP_arifle_SR3M_Vikhr_VFG, 550, RIFLE_STOCK);
			ITEM(CUP_arifle_SR3M_Vikhr_top_rail, 575, RIFLE_STOCK);
			ITEM(CUP_arifle_SR3M_Vikhr_VFG_top_rail, 600, RIFLE_STOCK);

			ITEM(CUP_arifle_AS_VAL, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AS_VAL_flash, 1075, RIFLE_STOCK);
			ITEM(CUP_arifle_AS_VAL_VFG, 1065, RIFLE_STOCK);
			ITEM(CUP_arifle_AS_VAL_top_rail, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AS_VAL_flash_top, 1175, RIFLE_STOCK);
			ITEM(CUP_arifle_AS_VAL_VFG_top_rail, 1165, RIFLE_STOCK);
		};

		class launchersCup 
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(CUP_launch_RShG2, 250, 50);
			ITEM(CUP_launch_RPG26, 250, 50);

			ITEM(CUP_launch_M72A6, 350, 50);

			ITEM(CUP_launch_BF3, 400, 50);
			ITEM(CUP_launch_HCPF3, 500, 50);
			ITEM(CUP_launch_PzF3, 450, 50);

			ITEM(CUP_launch_NLAW, 1100, 10);

			ITEM(CUP_launch_RPG7V, 650, 50);

			ITEM(launch_RPG32_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 1400, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 1400, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 1600, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 1600, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 1250, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 1600, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 1250, LAUNCHER_STOCK);
			ITEM(CUP_launch_MAAWS, 1250, LAUNCHER_STOCK);

			ITEM(CUP_launch_Mk153Mod0, 1650, LAUNCHER_STOCK);
			ITEM(CUP_launch_Mk153Mod0_blk, 1650, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 3000, 4);
			ITEM(launch_O_Vorona_green_F, 3000, 4);

			ITEM(CUP_launch_M136, 500, 50);
			ITEM(CUP_launch_RPG18, 150, 50);

			ITEM(CUP_launch_APILAS, 1250, 50);

			ITEM(CUP_launch_Igla, 1300, 50);
			ITEM(CUP_launch_FIM92Stinger, 1600, 50);
			ITEM(CUP_launch_9K32Strela, 1900, 50);
			ITEM(CUP_launch_M47, 3400, 8);
			ITEM(CUP_launch_Javelin, 6500, 3);
		};

		class launcherMagazinesCup 
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class CUP_SMAW_Spotting {
				price = 10;
				stock = 50;
			};
			class CUP_SMAW_HEDP_M {
				price = 300;
				stock = 50;
			};
			class CUP_SMAW_HEAA_M {
				price = 250;
				stock = 50;
			};
			class CUP_SMAW_NE_M {
				price = 500;
				stock = 50;
			};

			class CUP_PG7V_M {
				price = 75;
				stock = 50;
			};
			class CUP_PG7VL_M {
				price = 150;
				stock = 50;
			};
			class CUP_OG7_M {
				price = 100;
				stock = 50;
			};
			class CUP_PG7VR_M {
				price = 300;
				stock = 50;
			};
			class CUP_TBG7V_M {
				price = 450;
				stock = 50;
			};

			class RPG7_F {
				price = 125;
				stock = 50;
			};
			class NLAW_F {
				price = 500;
				stock = 30;
			};
			class MRAWS_HEAT_F {
				price = 250;
				stock = 50;
			};
			class CUP_MAAWS_HEAT_M {
				price = 250;
				stock = 50;
			};
			class MRAWS_HEAT55_F {
				price = 150;
				stock = 50;
			};
			class CUP_MAAWS_HEDP_M {
				price = 350;
				stock = 50;
			};
			class MRAWS_HE_F {
				price = 200;
				stock = 50;
			};
			class RPG32_HE_F {
				price = 200;
				stock = 50;
			};
			class RPG32_F {
				price = 250;
				stock = 50;
			};
			class Vorona_HE {
				price = 500;
				stock = 15;
			};
			class Vorona_HEAT {
				price = 650;
				stock = 15;
			};

			class CUP_Javelin_M {
				price = 1500;
				stock = 50;
			};

			class CUP_Dragon_EP1_M {
				price = 600;
				stock = 15;
			};
		};

		class specialWeaponsCup 
		{
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_hgun_BallisticShield_Armed, 300, RIFLE_STOCK);

			ITEM(CUP_glaunch_M79, 350, RIFLE_STOCK);
			ITEM(CUP_glaunch_Mk13, 500, RIFLE_STOCK);

			ITEM(CUP_glaunch_6G30, 800, RIFLE_STOCK);
			ITEM(CUP_glaunch_M32, 950, RIFLE_STOCK);

			ITEM(CUP_sgun_AA12, 1000, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_Entry, 200, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_Entry_vfg, 200, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014, 300, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_vfg, 350, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_solidstock, 400, RIFLE_STOCK);
			ITEM(CUP_sgun_Saiga12K, 300, RIFLE_STOCK);
		};

		class sniperRiflesCup 
		{
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_SKS, 350, RIFLE_STOCK);
			ITEM(CUP_srifle_CZ550, 700, RIFLE_STOCK);

			ITEM(CUP_srifle_Mosin_Nagant, 450, RIFLE_STOCK);
			ITEM(CUP_srifle_LeeEnfield, 500, RIFLE_STOCK);
			ITEM(CUP_srifle_LeeEnfield_rail, 900, RIFLE_STOCK);

			ITEM(CUP_arifle_IMI_Romat, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_IMI_Romat_railed, 1600, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL5061_wooden, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL5061_wooden_railed, 1700, RIFLE_STOCK);
			ITEM(CUP_arifle_Gewehr1, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_Gewehr1_railed, 1700, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_desert, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_sand, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_woodland, 1500, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL5061, 1600, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL5061_railed, 1700, RIFLE_STOCK);

			ITEM(CUP_arifle_xm8_sharpshooter, 1100, RIFLE_STOCK);

			ITEM(CUP_srifle_VSSVintorez, 1300, 15);
			ITEM(CUP_srifle_VSSVintorez_flash, 1325, 15);
			ITEM(CUP_srifle_VSSVintorez_VFG, 1350, 15);
			ITEM(CUP_srifle_VSSVintorez_top_rail, 1400, 15);
			ITEM(CUP_srifle_VSSVintorez_flash_top, 1425, 15);
			ITEM(CUP_srifle_VSSVintorez_VFG_top_rail, 1450, 15);

			ITEM(CUP_arifle_G3A3_ris, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_G3A3_ris_vfg_black, 1600, RIFLE_STOCK);
			ITEM(CUP_arifle_G3A3_modern_ris, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_G3A3_modern_ris_black, 1800, RIFLE_STOCK);

			ITEM(CUP_srifle_M24_wdl, 1200, RIFLE_STOCK);
			ITEM(CUP_srifle_M24_blk, 1200, RIFLE_STOCK);
			ITEM(CUP_srifle_M24_des, 1200, RIFLE_STOCK);

			ITEM(CUP_srifle_M40A3, 1350, RIFLE_STOCK);

			ITEM(CUP_srifle_AWM_wdl, 1700, RIFLE_STOCK);
			ITEM(CUP_srifle_AWM_blk, 1700, RIFLE_STOCK);
			ITEM(CUP_srifle_AWM_des, 1700, RIFLE_STOCK);

			ITEM(CUP_srifle_SVD, 1500, RIFLE_STOCK);
			ITEM(CUP_srifle_SVD_des, 1500, RIFLE_STOCK);
			ITEM(CUP_srifle_SVD_wdl, 1500, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 1650, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 1650, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 1650, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 1650, RIFLE_STOCK);

			ITEM(CUP_srifle_RSASS_Black, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Dazzle, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Jungle, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Sand, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Winter, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_WDLNet, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_WDL, 2100, RIFLE_STOCK);

			ITEM(CUP_srifle_m110_kac_black, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_M110_black, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_M110, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_M110_woodland, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_m110_kac, 2100, RIFLE_STOCK);
			ITEM(CUP_srifle_m110_kac_woodland, 2100, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 2350, RIFLE_STOCK);

			ITEM(CUP_arifle_DSA_SA58_OSW_M203, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_DSA_SA58_DMR, 2000, RIFLE_STOCK);
			ITEM(CUP_arifle_DSA_SA58_OSW, 1800, RIFLE_STOCK);
			ITEM(CUP_arifle_DSA_SA58_OSW_VFG, 1850, RIFLE_STOCK);

			ITEM(CUP_arifle_DSA_SA58_OSW_VFG_Desert, 1850, RIFLE_STOCK);
			ITEM(CUP_arifle_DSA_SA58_OSW_Desert, 1800, RIFLE_STOCK);

			ITEM(CUP_arifle_DSA_SA58_OSW_VFG_Sand, 1850, RIFLE_STOCK);
			ITEM(CUP_arifle_DSA_SA58_OSW_Sand, 1800, RIFLE_STOCK);

			ITEM(CUP_arifle_DSA_SA58_OSW_VFG_Woodland, 1850, RIFLE_STOCK);
			ITEM(CUP_arifle_DSA_SA58_OSW_Woodland, 1800, RIFLE_STOCK);

			ITEM(CUP_srifle_M21, 1900, RIFLE_STOCK);
			ITEM(CUP_srifle_M14, 1800, RIFLE_STOCK);
			ITEM(CUP_srifle_M14_DMR, 2200, RIFLE_STOCK);
			ITEM(CUP_srifle_M21_ris, 2350, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 2200, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 2200, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 2200, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 2200, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 2200, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 2500, RIFLE_STOCK);
			ITEM(CUP_srifle_Mk18_blk, 2500, RIFLE_STOCK);
			ITEM(CUP_srifle_Mk18_des, 2500, RIFLE_STOCK);
			ITEM(CUP_srifle_Mk18_wdl, 2500, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 2700, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 2700, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 2700, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 3500, 10);
			ITEM(srifle_DMR_02_camo_F, 3500, 10);
			ITEM(srifle_DMR_02_sniper_F, 3500, 10);

			ITEM(srifle_DMR_05_blk_F, 3300, 10);
			ITEM(srifle_DMR_05_hex_F, 3300, 10);
			ITEM(srifle_DMR_05_tan_f, 3300, 10);

			ITEM(CUP_arifle_Mk20, 3750, 15);
			ITEM(CUP_arifle_Mk20_black, 3750, 15);
			ITEM(CUP_arifle_Mk20_woodland, 3750, 15);

			ITEM(srifle_DMR_04_F, 3500, 10);

			ITEM(srifle_LRR_F, 3100, 5);
			ITEM(srifle_LRR_tna_F, 3100, 5);
			ITEM(srifle_LRR_camo_F, 3100, 5);

			ITEM(srifle_GM6_F, 2999, 5);
			ITEM(srifle_GM6_camo_F, 2999, 5);
			ITEM(srifle_GM6_ghex_F, 2999, 5);

			ITEM(CUP_srifle_M107_Base, 3400, 5);
			ITEM(CUP_srifle_M107_Pristine, 3400, 5);
			ITEM(CUP_srifle_M107_Desert, 3400, 5);
			ITEM(CUP_srifle_M107_Snow, 3400, 5);
			ITEM(CUP_srifle_M107_Woodland, 3400, 5);

			ITEM(CUP_srifle_ksvk, 2800, 5);
		};

		class mgCup 
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_lmg_UK59, 1100, RIFLE_STOCK);

			ITEM(CUP_lmg_PKM, 1700, RIFLE_STOCK);
			ITEM(CUP_lmg_PKMN, 1850, RIFLE_STOCK);
			ITEM(CUP_lmg_PKM_B50_vfg, 1750, RIFLE_STOCK);
			ITEM(CUP_lmg_PKM_front_rail_B50_vfg, 2050, RIFLE_STOCK);
			ITEM(CUP_lmg_PKM_top_rail, 2000, RIFLE_STOCK);
			ITEM(CUP_lmg_PKM_top_rail_B50_vfg, 2050, RIFLE_STOCK);

			ITEM(CUP_lmg_M60, 1700, RIFLE_STOCK);

			ITEM(CUP_lmg_MG3, 2300, RIFLE_STOCK);
			ITEM(CUP_lmg_MG3_rail, 2350, RIFLE_STOCK);

			ITEM(CUP_arifle_MG36, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_MG36_camo, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_MG36_hex, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_MG36_wdl, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_xm8_SAW, 1250, RIFLE_STOCK);
			
			ITEM(CUP_lmg_M60E4_norail, 1800, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4_norail_desert, 1700, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4_norail_jungle, 1700, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4_jungle, 1700, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4, 2000, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4_desert, 2000, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4_wood, 2000, RIFLE_STOCK);
			ITEM(CUP_lmg_M60E4_norail_wood, 2000, RIFLE_STOCK);

			ITEM(CUP_arifle_Galil_556_black, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_Galil_SAR_black, 1050, RIFLE_STOCK);

			ITEM(CUP_arifle_Galil_black, 1200, RIFLE_STOCK);

			ITEM(CUP_arifle_RPK74, 700, RIFLE_STOCK);

			ITEM(CUP_arifle_L86A2, 900, RIFLE_STOCK);

			ITEM(CUP_lmg_M249_E1, 1300, RIFLE_STOCK);
			ITEM(CUP_lmg_M249_E2, 1350, RIFLE_STOCK);
			ITEM(CUP_lmg_m249_pip1, 1400, RIFLE_STOCK);
			ITEM(CUP_lmg_m249_pip3, 1425, RIFLE_STOCK);
			ITEM(CUP_lmg_m249_pip4, 1450, RIFLE_STOCK);

			ITEM(CUP_lmg_m249_para_gl, 2500, RIFLE_STOCK);

			ITEM(CUP_lmg_FNMAG, 1900, RIFLE_STOCK);
			ITEM(CUP_lmg_FNMAG_RIS, 1950, RIFLE_STOCK);
			ITEM(CUP_lmg_FNMAG_RIS_modern, 2100, RIFLE_STOCK);

			ITEM(CUP_lmg_M240_norail, 2000, RIFLE_STOCK);
			ITEM(CUP_lmg_M240_B, 2100, RIFLE_STOCK);
			ITEM(CUP_lmg_M240, 2100, RIFLE_STOCK);

			ITEM(CUP_lmg_Pecheneg, 1950, RIFLE_STOCK);
			ITEM(CUP_lmg_Pecheneg_desert, 1950, RIFLE_STOCK);
			ITEM(CUP_lmg_Pecheneg_woodland, 1950, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 1800, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 1800, RIFLE_STOCK);
			ITEM(LMG_03_F, 1500, RIFLE_STOCK);
			
			ITEM(LMG_Mk200_F, 1800, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 1800, RIFLE_STOCK);

			ITEM(CUP_lmg_Mk48, 2400, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_des, 2400, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_od, 2400, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_tan, 2400, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_wdl, 2400, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 2000, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 2000, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 2000, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 2700, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 4000, 10);
			ITEM(MMG_01_tan_F, 4000, 10);

			ITEM(MMG_02_black_F, 3500, 10);
			ITEM(MMG_02_camo_F, 3500, 10);
			ITEM(MMG_02_sand_F, 3500, 10);
		};

		class riflesCup 
		{
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 200, RIFLE_STOCK);

			ITEM(CUP_arifle_SAIGA_MK03, 200, RIFLE_STOCK);
			ITEM(CUP_arifle_SAIGA_MK03_Wood, 200, RIFLE_STOCK);

			ITEM(CUP_arifle_Fort224, 550, RIFLE_STOCK);

			ITEM(CUP_arifle_M16A2, 500, RIFLE_STOCK);
			ITEM(CUP_arifle_M16A2_GL, 650, RIFLE_STOCK);

			ITEM(CUP_arifle_M4A1, 650, RIFLE_STOCK);

			ITEM(CUP_arifle_M16A4_Base, 550, RIFLE_STOCK);
			ITEM(CUP_arifle_M16A4_GL, 700, RIFLE_STOCK);
			
			ITEM(arifle_TRG21_F, 700, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 650, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 850, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 800, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 750, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 950, RIFLE_STOCK);

			ITEM(CUP_arifle_OTS14_GROZA, 700, RIFLE_STOCK);
			ITEM(CUP_arifle_OTS14_GROZA_GL, 950, RIFLE_STOCK);

			ITEM(CUP_arifle_AK74M, 500, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_camo, 7500, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_top_rail, 550, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_top_rail_camo, 550, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_railed_afg, 600, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_railed_afg_camo, 600, RIFLE_STOCK);

			ITEM(CUP_arifle_AK74M_GL, 650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_top_rail, 750, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_camo, 650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_top_rail_camo, 750, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_railed, 700, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_railed_camo, 700, RIFLE_STOCK);

			ITEM(arifle_AKM_F, 800, RIFLE_STOCK);
			ITEM(CUP_arifle_AK47_Early, 750, RIFLE_STOCK);
			ITEM(CUP_arifle_TYPE_56_2_Early, 700, RIFLE_STOCK);

			
			ITEM(CUP_arifle_Sa58V, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58V_camo, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS1_des, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58V_rearris, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58V_frontris, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS1, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58V_wood, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58V_woodland, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS1_woodland, 1050, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58P_woodland, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58P_wood, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58P, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58P_rearris, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58P_frontris, 1050, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58P_des, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58P_frontris_woodland, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58P_frontris_desert, 1050, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58P_RIS1, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS2, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS2_camo, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS2_woodland, 1050, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58RIS2_gl, 1300, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS2_gl_desert, 1300, RIFLE_STOCK);
			ITEM(CUP_arifle_Sa58RIS2_gl_woodland, 1300, RIFLE_STOCK);

			ITEM(CUP_arifle_AUG_A1, 900, RIFLE_STOCK);

			ITEM(CUP_arifle_XM8_Compact, 1100, RIFLE_STOCK);
			ITEM(CUP_arifle_XM8_Compact_Rail, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_XM8_Carbine_GL, 1300, RIFLE_STOCK);
			ITEM(CUP_arifle_XM8_Railed, 1250, RIFLE_STOCK);
			ITEM(CUP_arifle_XM8_Carbine_FG, 1250, RIFLE_STOCK);
			ITEM(CUP_arifle_XM8_Carbine, 1200, RIFLE_STOCK);

			ITEM(CUP_arifle_AK102, 800, RIFLE_STOCK);
			ITEM(CUP_arifle_AK102_top_rail, 850, RIFLE_STOCK);
			ITEM(CUP_arifle_AK102_railed, 875, RIFLE_STOCK);

			ITEM(CUP_arifle_AK101, 800, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_top_rail, 850, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_railed, 875, RIFLE_STOCK);

			ITEM(CUP_arifle_AK19_black, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_black, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_black, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_arid, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_arid, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_arid, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_lush, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_lush, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_lush, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_tan, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_tan, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_tan, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_snowtiger, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_snowtiger, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_snowtiger, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_tiger, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_tiger, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_tiger, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_bicolor, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_bicolor, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_bicolor, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_wood, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_wood, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_wood, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_winter, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_AFG_winter, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_VG_winter, 975, RIFLE_STOCK);

			ITEM(CUP_arifle_AK19_GP34_arid, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_black, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_lush, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_tan, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_snowtiger, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_tiger, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_bicolor, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_winter, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_GP34_wood, 1150, RIFLE_STOCK);

			ITEM(CUP_arifle_AK101_GL, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_GL_top_rail, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_GL_railed, 1175, RIFLE_STOCK);

			ITEM(CUP_arifle_AK108, 1100, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_top_rail, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_railed, 1175, RIFLE_STOCK);

			ITEM(CUP_arifle_AK108_GL, 1300, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_GL_top_rail, 1350, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_GL_railed, 1375, RIFLE_STOCK);

			ITEM(CUP_arifle_AK15_black, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_black, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_black, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_arid, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_arid, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_arid, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_lush, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_lush, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_lush, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_tan, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_tan, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_tan, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_snowtiger, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_snowtiger, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_snowtiger, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_tiger, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_tiger, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_tiger, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_bicolor, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_bicolor, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_bicolor, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_wood, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_wood, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_wood, 1475, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_winter, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_AFG_winter, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_VG_winter, 1475, RIFLE_STOCK);

			ITEM(CUP_arifle_AK15_GP34_arid, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_black, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_lush, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_tan, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_snowtiger, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_tiger, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_bicolor, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_winter, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK15_GP34_wood, 1650, RIFLE_STOCK);

			ITEM(CUP_arifle_AK12_black, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_black, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_black, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_arid, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_arid, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_arid, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_lush, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_lush, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_lush, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_tan, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_tan, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_tan, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_snowtiger, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_snowtiger, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_snowtiger, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_tiger, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_tiger, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_tiger, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_bicolor, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_bicolor, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_bicolor, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_wood, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_wood, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_wood, 975, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_winter, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_AFG_winter, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_VG_winter, 975, RIFLE_STOCK);

			ITEM(CUP_arifle_AK12_GP34_arid, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_black, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_lush, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_tan, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_snowtiger, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_tiger, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_bicolor, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_winter, 1050, RIFLE_STOCK);
			ITEM(CUP_arifle_AK12_GP34_wood, 1050, RIFLE_STOCK);

			ITEM(CUP_arifle_ACRC_blk_68,1750,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_snw_68,1750,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_tan_68,1750,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_wdl_68,1750,RIFLE_STOCK);

			ITEM(CUP_arifle_ACRC_EGLM_blk_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_EGLM_snw_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_EGLM_tan_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_EGLM_wdl_68,1900,RIFLE_STOCK);

			ITEM(CUP_arifle_ACR_blk_68,1750,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_snw_68,1750,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_tan_68,1750,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_wdl_68,1750,RIFLE_STOCK);

			ITEM(CUP_arifle_ACR_DMR_blk_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_DMR_snw_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_DMR_tan_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_DMR_wdl_68,1900,RIFLE_STOCK);

			ITEM(CUP_arifle_ACR_EGLM_blk_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_EGLM_snw_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_EGLM_tan_68,1900,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_EGLM_wdl_68,1900,RIFLE_STOCK);

			ITEM(CUP_arifle_Mk16_CQC, 2000, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_AFG, 2050, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_AFG_black, 2050, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_AFG_woodland, 2050, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_FG, 2050, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_FG_black, 2050, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_FG_woodland, 2050, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk16_CQC_SFG, 2025, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_SFG_black, 2025, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_SFG_woodland, 2025, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk16_CQC_EGLM, 2250, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_EGLM_black, 2250, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_CQC_EGLM_woodland, 2250, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk16_STD, 2100, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_AFG, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_AFG_black, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_AFG_woodland, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_black, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_FG, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_FG_black, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_FG_woodland, 2150, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_SFG, 2175, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk16_SV, 2250, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_SV_black, 2250, RIFLE_STOCK); 
			ITEM(CUP_arifle_Mk16_SV_woodland, 2250, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_blk_F, 1700, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 1850, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_khk_F, 1700, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 1850, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 1950, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 2000, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 2150, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 1950, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 2000, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 2150, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 1950, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 2000, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 2150, RIFLE_STOCK);

			ITEM(CUP_CZ_BREN2_762_8, 4050, RIFLE_STOCK);
			ITEM(CUP_CZ_BREN2_762_14, 4250, RIFLE_STOCK);
			ITEM(CUP_CZ_BREN2_762_14_GL, 4500, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 3000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 3000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 3000, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk17_CQC, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_AFG, 2550, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_AFG_black, 2550, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_AFG_woodland, 2550, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk17_CQC_Black, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_FG, 2550, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_FG_black, 2550, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_FG_woodland, 2550, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk17_CQC_woodland, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_EGLM, 2750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_EGLM_black, 2750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_CQC_EGLM_woodland, 2750, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk17_STD, 2700, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_AFG, 2750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_AFG_black, 2750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_woodland, 2750, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk17_STD_black, 2700, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_FG, 2750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_FG_black, 2750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_FG_woodland, 2750, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk17_STD_EGLM, 2900, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_EGLM_black, 2900, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk17_STD_EGLM_woodland, 2900, RIFLE_STOCK);
		};

		class magazinesCup 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};



			class CUP_30Rnd_Sa58_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Sa58_M_TracerG {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Sa58_M_TracerR {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Sa58_M_TracerY {
				price = 140;
				stock = MAGAZINE_STOCK;
			};

			class CUP_50Rnd_UK59_762x54R_Tracer {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			//m1014
			class CUP_8Rnd_12Gauge_Slug {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No00_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No0_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No1_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No2_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No3_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No4_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No4_Bird {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_HE {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_12Gauge_Slug {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No00_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No0_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No1_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No2_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No3_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No4_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No4_Bird {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_HE {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_HE_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class CUP_1Rnd_HE_GP25_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_IlumFlareGreen_GP25_M {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_IlumFlareWhite_GP25_M {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_IlumFlareRed_GP25_M {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareWhite_GP25_M {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareGreen_GP25_M {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareRed_GP25_M {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareYellow_GP25_M {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SMOKE_GP25_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeRed_GP25_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeGreen_GP25_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeYellow_GP25_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_HE_GP25_M {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_FlareWhite_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareGreen_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareRed_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareYellow_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_Smoke_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeRed_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeGreen_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeYellow_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_HE_M203 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_FlareWhite_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareGreen_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareRed_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareYellow_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_Smoke_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeRed_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeGreen_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeYellow_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class CUP_1Rnd_HE_M203 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_HEDP_M203 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarCluster_Red_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarCluster_Green_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_Red_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_Green_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareWhite_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareGreen_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareRed_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareYellow_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_Smoke_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeRed_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeGreen_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeYellow_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_White_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class CUP_30Rnd_9x19_MP5 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class CUP_10Rnd_9x39_SP5_VSS_M {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_9x39_SP5_VSS_M {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_9x39_SP5_VIKHR_M {
				price = 85;
				stock = MAGAZINE_STOCK;
			};


			class CUP_30Rnd_9x19AP_Vityaz {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_9x19_Vityaz {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_64Rnd_9x19_Bizon_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_64Rnd_Green_Tracer_9x19_Bizon_M {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class CUP_64Rnd_Red_Tracer_9x19_Bizon_M {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class CUP_64Rnd_White_Tracer_9x19_Bizon_M {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class CUP_12Rnd_45ACP_mk23 {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_15Rnd_9x19_M9 {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_13Rnd_9x19_Browning_HP {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_10Rnd_9x19_Compact {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_17Rnd_9x19_glock17 {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_18Rnd_9x19_Phantom {
				price = 38;
				stock = MAGAZINE_STOCK;
			};
			class CUP_7Rnd_50AE_Deagle {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_MAC10_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_Yellow_Tracer_MAC10_M {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_Green_Tracer_MAC10_M {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_9x18_Makarov_M {
				price = 5;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_9x18_MakarovSD_M {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_12Rnd_9x18_PMM_M {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_45ACP_M {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_32Rnd_9x19_TEC9 {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			

			class 9Rnd_45ACP_Mag {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 5;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 15;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_46x30_MP7 {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_40Rnd_46x30_MP7 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_40Rnd_46x30_MP7_Red_Tracer {
				price = 70;
				stock = MAGAZINE_STOCK;
			};
			class CUP_40Rnd_46x30_MP7_Green_Tracer {
				price = 70;
				stock = MAGAZINE_STOCK;
			};
			class CUP_40Rnd_46x30_MP7_Yellow_Tracer {
				price = 70;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class CUP_30Rnd_556x45_XM8 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_XM8 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_XM8 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_XM8 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			
			class CUP_30Rnd_556x45_G36 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_G36 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_G36 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_G36_camo {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_G36_camo {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_camo {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_G36_wdl {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_G36_wdl {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_wdl {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_G36_hex {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_G36_hex {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_G36_hex {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_hex {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_CZ805 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_CZ805 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_CZ805 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_CZ805 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class CUP_10Rnd_762x39_SaigaMk03_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_9x39_SP5_GROZA_M {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			
			class CUP_30Rnd_545x39_Fort224_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_545x39_Fort224_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_545x39_Fort224_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_White_Tracer_545x39_Fort224_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_545x39_Fort224_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Subsonic_545x39_Fort224_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 265;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 95;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 315;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 315;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 315;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 40;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 425;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 425;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 20;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_680x43_Stanag {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_680x43_Stanag_Tracer_Red {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_680x43_Stanag_Tracer_Green {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_680x43_Stanag_Tracer_Yellow {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_545x39_AK74M_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_545x39_AK12_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_545x39_AK12_Tan_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_545x39_AK12_Green_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_545x39_AK12_Grey_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_TE1_White_Tracer_545x39_AK74M_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_545x39_AK74M_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_White_Tracer_545x39_AK74M_M {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_Red_Tracer_545x39_AK74M_M {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M {
				price = 135;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_AK {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_AK19_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_AK19_Green_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_AK19_Grey_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_AK19_Tan_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_Tracer_Red_AK19_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_TE1_Tracer_Green_AK19_Green_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_TE1_Tracer_Green_AK19_Grey_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_TE1_Tracer_Green_AK19_Tan_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_AUG {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_AUG {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_AUG {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_AUG {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_762x39_AK15_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_762x39_AK15_Desert_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_762x39_AK15_OD_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_762x39_AK15_Tan_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_762x39_CZ807 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x39_CZ807 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x39_CZ807 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_762x39_CZ807 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_B_SCAR {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_SCAR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			
			class CUP_20Rnd_762x51_B_SCAR_bkl {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR_bkl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR_bkl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR_bkl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_SCAR_bkl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_B_SCAR_wdl {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR_wdl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR_wdl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR_wdl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_SCAR_wdl {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_762x51_1_B_SCAR {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_762x51_1_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x51_1_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x51_1_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_White_Tracer_762x51_1_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_762x51_2_B_SCAR {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_762x51_2_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x51_2_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x51_2_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_White_Tracer_762x51_2_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class CUP_50Rnd_762x51_B_SCAR {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_TE1_Yellow_Tracer_762x51_SCAR {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_TE1_Red_Tracer_762x51_SCAR {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_TE1_Green_Tracer_762x51_SCAR {
				price = 425;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_TE1_White_Tracer_762x51_SCAR {
				price = 425;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class CUP_10Rnd_762x39_SKS_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_DMR {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_DMR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_DMR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_DMR {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5Rnd_762x51_M24 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5Rnd_762x54_Mosin_M {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5Rnd_86x70_L115A1 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_G3 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_G3 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_G3 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_G3 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			class CUP_20Rnd_762x51_B_M110 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_M110 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_M110 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_M110 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_FNFAL_M {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_762x51_FNFAL_Desert_M {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_Desert_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_Desert_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_Desert_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_762x51_FNFAL_Woodland_M {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_Woodland_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_Woodland_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_Woodland_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_762x51_FNFAL_M {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5x_22_LR_17_HMR_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_Mag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class CUP_10Rnd_127x99_M107 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5Rnd_127x108_KSVK_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class CUP_100Rnd_556x45_BetaCMag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_556x45_BetaCMag_camo {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_556x45_BetaCMag_wdl {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_556x45_BetaCMag_hex {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_camo {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_camo {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_camo {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_wdl {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_wdl {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_wdl {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_hex {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_hex {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_hex {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class CUP_200Rnd_TE4_Red_Tracer_556x45_M249 {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249 {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE4_Green_Tracer_556x45_M249 {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE1_Red_Tracer_556x45_M249 {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE4_Green_Tracer_556x45_M249_Pouch {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249_Pouch {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class CUP_35Rnd_556x45_Galil_Mag {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_35Rnd_556x45_Red_Tracer_Galil_Mag {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class CUP_35Rnd_556x45_Green_Tracer_Galil_Mag {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_556x45_Galil_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_556x45_Red_Tracer_Galil_Mag {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_556x45_Green_Tracer_Galil_Mag {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class CUP_25Rnd_762x51_Green_Tracers_Galil_Mag {
				price = 195;
				stock = MAGAZINE_STOCK;
			};
			class CUP_25Rnd_762x51_Red_Tracers_Galil_Mag {
				price = 195;
				stock = MAGAZINE_STOCK;
			};
			class CUP_25Rnd_762x51_Galil_Mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			class CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_556x45_Box_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 260;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 260;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_120Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Special Weapons
			///////////////////////////////////////////////////////
			class CUP_20Rnd_B_AA12_Pellets {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_AA12_74Slug {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_AA12_HE {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_B_Beneli_74Pellets {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_B_Benelli_74Slug {
				price = 45;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_B_Saiga12_74Slug_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_B_Saiga12_74Pellets_M {
				price = 20;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_B_Saiga12_74Slug_M {
				price = 20;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_Saiga12_74Pellets_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
		};

		class underbarrelCup 
		{
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(bipod_02_F_arid, 100, 50);
			ITEM(bipod_03_F_blk, 100, 50);
			ITEM(bipod_02_F_blk, 100, 50);
			ITEM(bipod_01_F_blk, 100, 50);
			ITEM(bipod_02_F_hex, 100, 50);
			ITEM(bipod_01_F_khk, 100, 50);
			ITEM(bipod_02_F_lush, 100, 50);
			ITEM(bipod_01_F_mtp, 100, 50);
			ITEM(bipod_03_F_oli, 100, 50);
			ITEM(bipod_01_F_snd, 100, 50);
			ITEM(bipod_02_F_tan, 100, 50);
			
			ITEM(CUP_bipod_FNFAL, 100, 50);
		};

		class pointersCup 
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(acc_pointer_IR, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);

			ITEM(CUP_acc_ANPEQ_15_Black, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_OD, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_OD_Top, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Black_Top, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Tan_Top, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Flashlight_Black_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Flashlight_OD_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Flashlight_Tan_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Top_Flashlight_Black_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Top_Flashlight_OD_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L, 150, PN_STOCK);

			ITEM(CUP_acc_Flashlight, 50, PN_STOCK);
			ITEM(CUP_acc_Flashlight_desert, 50, PN_STOCK);
			ITEM(CUP_acc_Flashlight_wdl, 50, PN_STOCK);

			ITEM(CUP_acc_Zenit_2DS, 25, PN_STOCK);
			
			ITEM(CUP_acc_CZ_M3X, 75, PN_STOCK);
			ITEM(CUP_acc_Glock17_Flashlight, 75, PN_STOCK);
			ITEM(CUP_acc_MLPLS_Laser, 75, PN_STOCK);

			ITEM(CUP_SVD_camo_d, 25, PN_STOCK);
			ITEM(CUP_SVD_camo_g, 25, PN_STOCK);
			ITEM(CUP_SVD_camo_d_half, 15, PN_STOCK);
			ITEM(CUP_SVD_camo_g_half, 15, PN_STOCK);
		};

		class muzzlesCup 
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(muzzle_snds_338_black, 500, MZ_STOCK); //5
			ITEM(muzzle_snds_338_green, 500, MZ_STOCK);
			ITEM(muzzle_snds_338_sand, 500, MZ_STOCK);
			ITEM(muzzle_snds_93mmg, 600, MZ_STOCK); //4
			ITEM(muzzle_snds_93mmg_tan, 600, MZ_STOCK);
			ITEM(muzzle_snds_acp, 150, MZ_STOCK);
			ITEM(muzzle_snds_B, 200, MZ_STOCK);//3
			ITEM(muzzle_snds_B_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_B_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_khk_F, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_SW, 200, MZ_STOCK);
			ITEM(muzzle_snds_L, 200, MZ_STOCK);//1
			ITEM(muzzle_snds_M, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_blk_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_m_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_m_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_wdm_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_58_ghex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_58_hex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_blk_F, 350, MZ_STOCK); //2
			ITEM(muzzle_snds_65_TI_hex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_ghex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_blk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_khk_F, 200, MZ_STOCK);

			ITEM(CUP_muzzle_mfsup_Suppressor_Mac10, 100, MZ_STOCK);
			ITEM(CUP_muzzle_PB6P9, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_mk23, 150, MZ_STOCK);

			ITEM(CUP_muzzle_mfsup_Flashhider_545x39_Black, 100, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_545x39_OD, 100, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_545x39_Tan, 100, MZ_STOCK);

			ITEM(CUP_muzzle_snds_KZRZP_AK545, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_AK545_desert, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_AK545_woodland, 150, MZ_STOCK);

			ITEM(CUP_muzzle_PBS4, 150, MZ_STOCK);
			
			ITEM(CUP_muzzle_TGPA, 150, MZ_STOCK);
			ITEM(CUP_muzzle_TGPA_desert, 150, MZ_STOCK);
			ITEM(CUP_muzzle_TGPA_woodland, 150, MZ_STOCK);

			ITEM(CUP_muzzle_snds_68SPC, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_groza, 300, MZ_STOCK);

			ITEM(CUP_muzzle_Bizon, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_AWM, 400, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Suppressor_M107_Black, 760, MZ_STOCK);

			ITEM(CUP_muzzle_snds_KZRZP_SVD, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_SVD_desert, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_SVD_woodland, 300, MZ_STOCK);

			ITEM(CUP_muzzle_snds_M9, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_SR3M, 250, MZ_STOCK);

			ITEM(CUP_muzzle_mfsup_Flashhider_762x39_Black, 300, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_762x39_OD, 300, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_762x39_Tan, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_SCAR_H, 400, MZ_STOCK);
		};

		class opticsCup 
		{
			displayName = "Optics Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemOptic_ca.paa";

			class CUP_optic_artel_m14 {
				price = 300;
				stock = 100;
			};

			class CUP_optic_PEM {
				price = 300;
				stock = 100;
			};

			class CUP_optic_no23mk2 {
				price = 300;
				stock = 100;
			};

			class CUP_optic_GrozaScope {
				price = 300;
				stock = 100;
			};

			class CUP_optic_1p63 {
				price = 100;
				stock = 100;
			};
			class CUP_optic_Kobra {
				price = 100;
				stock = 100;
			};
			class CUP_optic_ekp_8_02 {
				price = 150;
				stock = 100;
			};
			class CUP_optic_NSPU {
				price = 450;
				stock = 100;
			};
			class CUP_optic_PechenegScope {
				price = 350;
				stock = 100;
			};
			class CUP_optic_PSO_1_1 {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_1_open {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1 {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_AK {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_open {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_AK_open {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_3 {
				price = 800;
				stock = 100;
			};
			class CUP_optic_PSO_3_open {
				price = 800;
				stock = 100;
			};
			class CUP_optic_GOSHAWK {
				price = 2250;
				stock = 5;
			};

			class CUP_optic_AC11704_Black {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_Coyote {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_Jungle {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_OD {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_Tan {
				price = 250;
				stock = 100;
			};

			class CUP_optic_1P87_RIS {
				price = 200;
				stock = 100;
			};
			class CUP_optic_1P87_RIS_desert {
				price = 200;
				stock = 100;
			};
			class CUP_optic_1P87_RIS_woodland {
				price = 200;
				stock = 100;
			};
			class CUP_optic_1P87_1P90_BLK {
				price = 450;
				stock = 100;
			};

			class CUP_optic_CompM2_low {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_low_coyote {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_low_OD {
				price = 200;
				stock = 100;
			};

			class CUP_optic_AIMM_M68_BLK {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_M68_TAN {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_M68_OD {
				price = 400;
				stock = 100;
			};

			class CUP_optic_AIMM_COMPM2_BLK {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_COMPM2_TAN {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_COMPM2_OD {
				price = 400;
				stock = 100;
			};

			class CUP_optic_CompM2_Black {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Coyote {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Desert {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_OD {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Woodland2 {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Woodland {
				price = 200;
				stock = 100;
			};

			class CUP_optic_SB_11_4x20_PM {
				price = 1000;
				stock = 100;
			};
			class CUP_optic_SB_11_4x20_PM_od {
				price = 1000;
				stock = 100;
			};
			class CUP_optic_SB_11_4x20_PM_tan {
				price = 1000;
				stock = 100;
			};

			class CUP_optic_ACOG2 {
				price = 550;
				stock = 100;
			};


			class CUP_optic_TrijiconRx01_black {
				price = 200;
				stock = 100;
			};
			class CUP_optic_TrijiconRx01_desert {
				price = 200;
				stock = 100;
			};
			class CUP_optic_TrijiconRx01_od {
				price = 200;
				stock = 100;
			};

			class CUP_optic_CompM4 {
				price = 200;
				stock = 100;
			};
			class CUP_optic_AIMM_COMPM4_BLK {
				price = 450;
				stock = 100;
			};
			class CUP_optic_MicroT1 {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_coyote {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_low {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_low_OD {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_OD {
				price = 200;
				stock = 100;
			};
			class CUP_optic_AN_PVS_4 {
				price = 600;
				stock = 100;
			};
			class CUP_optic_AN_PVS_4_M14 {
				price = 600;
				stock = 100;
			};
			class CUP_optic_AN_PVS_4_M16 {
				price = 600;
				stock = 100;
			};

			class CUP_optic_Elcan_SpecterDR_black {
				price = 600;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_coyote {
				price = 600;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_od {
				price = 600;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR {
				price = 600;
				stock = 100;
			};

			class CUP_optic_Elcan_SpecterDR_KF_black {
				price = 650;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_KF_coyote {
				price = 650;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_KF_od {
				price = 650;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_KF {
				price = 650;
				stock = 100;
			};

			class CUP_optic_Elcan_SpecterDR_RMR_black {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_RMR_coyote {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_RMR_od {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_RMR {
				price = 750;
				stock = 100;
			};

			class CUP_optic_Elcan {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_Coyote {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_OD {
				price = 750;
				stock = 100;
			};

			class CUP_optic_Elcan_reflex {
				price = 900;
				stock = 100;
			};
			class CUP_optic_Elcan_reflex_Coyote {
				price = 900;
				stock = 100;
			};
			class CUP_optic_Elcan_reflex_OD {
				price = 900;
				stock = 100;
			};

			class CUP_optic_HensoldtZO {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_coyote {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_desert {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_hex {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_od {
				price = 500;
				stock = 100;
			};

			class CUP_optic_HensoldtZO_low {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_coyote {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_desert {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_hex {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_od {
				price = 500;
				stock = 100;
			};

			class CUP_optic_HensoldtZO_RDS {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_coyote {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_desert {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_hex {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_od {
				price = 650;
				stock = 100;
			};

			class CUP_optic_HensoldtZO_low_RDS {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_coyote {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_desert {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_hex {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_od {
				price = 650;
				stock = 100;
			};
			
			class CUP_optic_LeupoldMk4 {
				price = 1000;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_10x40_LRT_Desert {
				price = 650;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_10x40_LRT_Woodland {
				price = 650;
				stock = 100;
			};
			
			class CUP_optic_LeupoldMk4_25x50_LRT {
				price = 1300;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_DESERT {
				price = 1300;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_SNOW {
				price = 650;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND {
				price = 650;
				stock = 100;
			};

			class CUP_optic_LeupoldMk4_CQ_T {
				price = 400;
				stock = 100;
			};


			class CUP_optic_AN_PAS_13c1 {
				price = 3000;
				stock = 5;
			};			
			class optic_Hamr_khk_F {
				price = 700;
				stock = 100;
			};
			class optic_SOS_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_Arco_ghex_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_DMS_ghex_F {
				price = 900;
				stock = 100;
			};
			class optic_ERCO_blk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_snd_F {
				price = 800;
				stock = 100;
			};
			class optic_LRPS_ghex_F {
				price = 1000;
				stock = 100;
			};
			class optic_LRPS_tna_F {
				price = 1000;
				stock = 100;
			};
			class optic_Holosight_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_lush_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_arid_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_DMS_weathered_Kir_F {
				price = 1000;
				stock = 100;
			};
			class optic_Aco {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 200; 
				stock = 100;
			};
			class optic_AMS {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_khk {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_snd {
				price = 1200;
				stock = 100;
			};
			class optic_Arco {
				price = 650;
				stock = 100;
			};
			class optic_DMS {
				price = 1000;
				stock = 100;
			};
			class optic_Hamr {
				price = 700;
				stock = 100;
			};
			class optic_Holosight {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 250;
				stock = 100;
			};
			class optic_KHS_blk {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_hex {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_old {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_tan {
				price = 1100;
				stock = 100;
			};
			class optic_LRPS {
				price = 1000;
				stock = 100;
			};
			class optic_MRCO {
				price = 500;
				stock = 100;
			};
			class optic_MRD {
				price = 100;
				stock = 100;
			};
			class optic_MRD_black {
				price = 100;
				stock = 100;
			};
			class optic_NVS {
				price = 1500;
				stock = 100;
			};
			class optic_SOS {
				price = 800;
				stock = 100;
			};
			class optic_Yorris {
				price = 100;
				stock = 100;
			};
		};

		class navigationCup 
		{
			displayName = "Navigation";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 300, NN_STOCK);
			ITEM(ItemRadio, 75, NN_STOCK);
			ITEM(Rangefinder, 600, NN_STOCK);
			ITEM(CUP_Vector21Nite, 600, NN_STOCK);
			ITEM(Laserdesignator, 1500, NN_STOCK);
			ITEM(Laserdesignator_02, 1500, NN_STOCK);
			ITEM(Laserdesignator_03, 1500, NN_STOCK);
			ITEM(CUP_SOFLAM, 1500, NN_STOCK);
			ITEM(CUP_LRTV, 1500, NN_STOCK);
			ITEM(NVGoggles, 500, NN_STOCK);
			ITEM(CUP_NVG_PVS15_tan, 1000, NN_STOCK);
			ITEM(CUP_NVG_PVS15_green, 1000, NN_STOCK);
			ITEM(CUP_NVG_PVS15_black, 1000, NN_STOCK);
			ITEM(CUP_NVG_PVS15_winter, 1000, NN_STOCK);
			ITEM(CUP_NVG_PVS7, 1000, NN_STOCK);
			ITEM(CUP_NVG_PVS14, 1000, NN_STOCK);
			ITEM(CUP_NVG_GPNVG_black, 1000, NN_STOCK);
			ITEM(CUP_NVG_GPNVG_green, 1000, NN_STOCK);
			ITEM(CUP_NVG_GPNVG_tan, 1000, NN_STOCK);
			ITEM(CUP_NVG_GPNVG_winter, 1000, NN_STOCK);
			ITEM(CUP_NVG_HMNVS, 1000, NN_STOCK);
		};

		class miscCup 
		{
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(B_Bergen_dgtl_F, 900, MISC_STOCK);
			ITEM(B_Bergen_hex_F, 900, MISC_STOCK);
			ITEM(B_Bergen_mcamo_F, 900, MISC_STOCK);
			ITEM(B_Bergen_tna_F, 900, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_BeigeDigital, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_BeigeDigital_Shovel, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Green, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Green_Shovel, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Desert, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Desert_Shovel, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Summer, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Summer_Shovel, 650, MISC_STOCK);
			ITEM(CUP_O_RUS_Patrol_bag_Winter, 650, MISC_STOCK);

			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);

			ITEM(IEDUrbanSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 750, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 750, MISC_STOCK);

			ITEM(APERSMineDispenser_Mag, 400, MISC_STOCK);
			ITEM(ClaymoreDirectionalMine_Remote_Mag, 300, MISC_STOCK);
			ITEM(DemoCharge_Remote_Mag, 250, MISC_STOCK);
			ITEM(SatchelCharge_Remote_Mag, 500, MISC_STOCK);
			ITEM(SLAMDirectionalMine_Wire_Mag, 400, MISC_STOCK);
			ITEM(ATMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSBoundingMine_Range_Mag, 150, MISC_STOCK);
			ITEM(APERSTripMine_Wire_Mag, 100, MISC_STOCK);

			ITEM(G_RegulatorMask_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_01_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_sand_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_olive_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_black_F, 200, MISC_STOCK);

			ITEM(I_UavTerminal, 800, MISC_STOCK);
			ITEM(O_UavTerminal, 800, MISC_STOCK);
			ITEM(B_UavTerminal, 800, MISC_STOCK);
		};

		///////////////////////////////////////////////////////
		// RHS
		///////////////////////////////////////////////////////
		class handgunsRhs 
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(rhs_weap_makarov_pm, 75, PISTOL_STOCK);

			ITEM(rhs_weap_6p53, 150, PISTOL_STOCK);
			ITEM(rhs_weap_pya, 200, PISTOL_STOCK);
			ITEM(rhs_weap_pb_6p9, 250, PISTOL_STOCK);

			ITEM(rhsusf_weap_m9, 250, PISTOL_STOCK);
			ITEM(rhsusf_weap_m1911a1, 250, PISTOL_STOCK);

			ITEM(rhs_weap_savz61_folded, 300, PISTOL_STOCK);

			ITEM(rhs_weap_cz99, 350, PISTOL_STOCK);
			ITEM(rhsusf_weap_glock17g4, 300, PISTOL_STOCK);

			ITEM(rhs_weap_M320, 400, PISTOL_STOCK);
		};

		class launchersRhs 
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(rhs_weap_rpg26, 200, 50);
			ITEM(rhs_weap_rshg2, 200, 50);
			ITEM(rhs_weap_rpg75, 175, 50);

			ITEM(rhs_weap_m80, 250, 50);

			ITEM(rhs_weap_m72a7, 300, 50);

			ITEM(rhs_weap_M136, 400, 50);
			ITEM(rhs_weap_M136_hedp, 500, 50);
			ITEM(rhs_weap_M136_hp, 500, 50);

			ITEM(rhs_weap_rpg7, 750, 15);

			ITEM(rhs_weap_maaws, 1300, 15);

			ITEM(rhs_weap_igla, 1300, 50);
			ITEM(rhs_weap_fim92, 1600, 50);

			ITEM(rhs_weap_smaw, 1500, 15);
			ITEM(rhs_weap_smaw_green, 1500, 15);

			ITEM(rhs_weap_fgm148, 6000, 10);
		};

		class launcherMagazinesRhs 
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";
		
			class rhs_rpg7_PG7V_mag {
				price = 75;
				stock = 50;
			};
			class rhs_rpg7_PG7VM_mag {
				price = 100;
				stock = 50;
			};
			class rhs_rpg7_PG7VS_mag {
				price = 150;
				stock = 50;
			};
			class rhs_rpg7_PG7VL_mag {
				price = 250;
				stock = 50;
			};
			class rhs_rpg7_PG7VR_mag {
				price = 300;
				stock = 50;
			};
			class rhs_rpg7_TBG7V_mag {
				price = 300;
				stock = 50;
			};
			class rhs_rpg7_OG7V_mag {
				price = 150;
				stock = 50;
			};

			class rhs_mag_maaws_HEAT {
				price = 250;
				stock = 50;
			};
			class rhs_mag_maaws_HEDP {
				price = 350;
				stock = 50;
			};
			class rhs_mag_maaws_HE {
				price = 200;
				stock = 50;
			};

			class rhs_mag_smaw_SR {
				price = 100;
				stock = 500;
			};
			class rhs_mag_smaw_HEAA {
				price = 250;
				stock = 50;
			};
			class rhs_mag_smaw_HEDP {
				price = 350;
				stock = 50;
			};

			class rhs_fgm148_magazine_AT {
				price = 1000;
				stock = 50;
			};
		};

		class riflesRhs 
		{
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_aks74u, 200, RIFLE_STOCK);

			ITEM(rhs_weap_m70ab2, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m70b1, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m92, 200, RIFLE_STOCK);

			ITEM(rhs_weap_m70b1n, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m70b3n, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m70b3n_pbg40, 1050, RIFLE_STOCK);

			ITEM(rhs_weap_MP44, 500, RIFLE_STOCK);

			ITEM(rhs_weap_pm63, 750, RIFLE_STOCK);

			ITEM(rhs_weap_savz58p, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58p_black, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v_black, 950, RIFLE_STOCK);

			ITEM(rhs_weap_akm, 800, RIFLE_STOCK);
			ITEM(rhs_weap_akms, 800, RIFLE_STOCK);
			ITEM(rhs_weap_akm_gp25, 1050, RIFLE_STOCK);
			ITEM(rhs_weap_akms_gp25, 1050, RIFLE_STOCK);
			ITEM(rhs_weap_akmn, 900, RIFLE_STOCK);
			ITEM(rhs_weap_akmn_gp25, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_akmn_npz, 950, RIFLE_STOCK);
			ITEM(rhs_weap_akmn_gp25_npz, 1200, RIFLE_STOCK);
			ITEM(rhs_weap_akm_zenitco01_b33, 1050, RIFLE_STOCK);
			
			ITEM(rhs_weap_vhsd2, 900, RIFLE_STOCK);
			ITEM(rhs_weap_vhsk2, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_ct15x, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_bg, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_bg_ct15x, 1250, RIFLE_STOCK);

			ITEM(rhs_weap_ak103_1, 600, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_1_npz, 650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_2, 700, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_2_npz, 650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103, 650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_npz, 725, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_zenitco01_b33, 750, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_gp25, 800, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_gp25_npz, 850, RIFLE_STOCK);

			ITEM(rhs_weap_ak104, 700, RIFLE_STOCK);
			ITEM(rhs_weap_ak104_npz, 750, RIFLE_STOCK);
			ITEM(rhs_weap_ak104_zenitco01_b33, 775, RIFLE_STOCK);

			ITEM(rhs_weap_aks74, 500, RIFLE_STOCK);
			ITEM(rhs_weap_aks74_2, 525, RIFLE_STOCK);
			ITEM(rhs_weap_ak74, 500, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_2, 525, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_3, 550, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_gp25, 650, RIFLE_STOCK);

			ITEM(rhs_weap_ak105, 700, RIFLE_STOCK);
			ITEM(rhs_weap_ak105_zenitco01, 750, RIFLE_STOCK);
			ITEM(rhs_weap_ak105_zenitco01_b33, 775, RIFLE_STOCK);

			ITEM(rhs_weap_m21a, 600, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pr, 750, RIFLE_STOCK);
			ITEM(rhs_weap_m21s, 550, RIFLE_STOCK);
			ITEM(rhs_weap_m21s_pr, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pbg40, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pr_pbg40, 850, RIFLE_STOCK);
	
			ITEM(rhs_weap_g36c, 800, RIFLE_STOCK);
			ITEM(rhs_weap_g36kv, 900, RIFLE_STOCK);
			ITEM(rhs_weap_g36kv_ag36, 1050, RIFLE_STOCK);

			ITEM(rhs_weap_mk18, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_bk, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_bk, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_d, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_d, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_m320, 1550, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_wd, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_wd, 1300, RIFLE_STOCK);

			ITEM(rhs_weap_hk416d10, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT_d, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT_wd, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_m320, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_hk416d145, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_d, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_d_2, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_wd, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_wd_2, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_m320, 1800, RIFLE_STOCK);
		};

		class sniperRiflesRhs 
		{
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m38_rail, 400, RIFLE_STOCK);

			ITEM(rhs_weap_m1garand_sa43, 600, RIFLE_STOCK);

			ITEM(rhs_weap_vss, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_vss_grip, 1550, RIFLE_STOCK);
			ITEM(rhs_weap_vss_grip_npz, 1600, RIFLE_STOCK);
			ITEM(rhs_weap_vss_npz, 1650, RIFLE_STOCK);

			ITEM(rhs_weap_m76, 1100, RIFLE_STOCK);

			ITEM(rhs_weap_l1a1, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_l1a1_wood, 1300, RIFLE_STOCK);

			ITEM(rhs_weap_t5000, 1550, RIFLE_STOCK);

			ITEM(rhs_weap_svdp_wd, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_svdp_wd_npz, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_svds, 1250, RIFLE_STOCK);
			ITEM(rhs_weap_svds_npz, 1450, RIFLE_STOCK);
			
			ITEM(rhs_weap_m14, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m14_d, 1450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_fiberglass, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_m14_rail, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_d, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_fiberglass, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_wd, 2450, RIFLE_STOCK);

			ITEM(rhs_weap_m14_ris_d, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_m14_ris_fiberglass, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_m14_ris_wd, 2550, RIFLE_STOCK);

			ITEM(rhs_weap_m14ebrri, 2200, RIFLE_STOCK);

			ITEM(rhs_weap_m24sws, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_d, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_wd, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_m40a5, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m40a5_d, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m40a5_Wd, 1400, RIFLE_STOCK);

			ITEM(rhs_weap_XM2010, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_wd, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_d, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_sa, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_M107, 3500, 5);
			ITEM(rhs_weap_M107_d, 3500, 5);
			ITEM(rhs_weap_M107_w, 3500, 5);
			ITEM(rhs_weap_m82a1, 3500, 5);

			ITEM(rhs_weap_mk17_CQC, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_mk17_STD, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_mk17_LB, 2700, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_CQC, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_CQC, 2500, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_STD, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_STD, 2600, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_LB, 2700, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_LB, 2700, RIFLE_STOCK);
		};

		class mgRhs 
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m27iar, 1800, RIFLE_STOCK);

			ITEM(rhs_weap_m249, 1100, RIFLE_STOCK);

			ITEM(rhs_weap_m249_pip, 1350, RIFLE_STOCK);

			ITEM(rhs_weap_m84, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_mg42, 1700, RIFLE_STOCK);

			ITEM(rhs_weap_pkp, 1900, RIFLE_STOCK);
			
			ITEM(rhs_weap_m240G, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_rpk74m, 800, RIFLE_STOCK);
			
			ITEM(rhs_weap_rpk74m_npz, 900, RIFLE_STOCK);
		};

		class smgRhs 
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_pp2000, 600, RIFLE_STOCK);

			ITEM(rhs_weap_asval, 1200, RIFLE_STOCK);
			ITEM(rhs_weap_asval_grip, 1250, RIFLE_STOCK);
			ITEM(rhs_weap_asval_grip_npz, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_asval_npz, 1250, RIFLE_STOCK);

			ITEM(rhsusf_weap_MP7A2, 800, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_aor1, 800, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_desert, 800, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_winter, 800, RIFLE_STOCK);
		};

		class specialWeaponsRhs 
		{
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m79, 350, RIFLE_STOCK);

			ITEM(rhs_weap_m32, 850, RIFLE_STOCK);

			ITEM(rhs_weap_M590_8RD, 200, RIFLE_STOCK);
		};

		class navigationRhs 
		{
			displayName = "Navigation";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 200, NN_STOCK);
			ITEM(ItemRadio, 50, NN_STOCK);

			ITEM(rhs_tr8_periscope_pip, 50, NN_STOCK);

			ITEM(rhsusf_bino_lrf_Vector21, 100, NN_STOCK);
			ITEM(rhsusf_bino_leopold_mk4, 100, NN_STOCK);
			ITEM(rhsusf_bino_m24, 100, NN_STOCK);
			ITEM(rhsusf_bino_m24_ARD, 200, NN_STOCK);
			ITEM(rhssaf_zrak_rd7j, 100, NN_STOCK);

			ITEM(rhsusf_bino_lerca_1200_tan, 350, NN_STOCK);
			ITEM(rhsusf_bino_lerca_1200_black, 350, NN_STOCK);

			ITEM(rhs_pdu4, 500, NN_STOCK);

			ITEM(Laserdesignator, 1500, NN_STOCK);
			ITEM(Laserdesignator_02, 1500, NN_STOCK);
			ITEM(Laserdesignator_03, 1500, NN_STOCK);
			ITEM(rhs_1PN138, 500, NN_STOCK);
			ITEM(rhsusf_ANPVS_14, 500, NN_STOCK);
			ITEM(rhsusf_ANPVS_15, 1000, NN_STOCK);
		};

		class underbarrelRhs 
		{
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(rhs_acc_harris_swivel, 100, 50);
			ITEM(rhsusf_acc_harris_bipod, 100, 50);

			ITEM(rhsusf_acc_saw_bipod, 100, 50);

			ITEM(rhsusf_acc_grip2, 200, 50);
			ITEM(rhsusf_acc_grip2_tan, 200, 50);
			ITEM(rhsusf_acc_grip2_wd, 200, 50);
			ITEM(rhs_acc_grip_ffg2, 200, 50);
			ITEM(rhsusf_acc_grip1, 200, 50);
			ITEM(rhsusf_acc_kac_grip, 200, 50);
			ITEM(rhs_acc_grip_rk2, 200, 50);
			ITEM(rhs_acc_grip_rk6, 200, 50);
			ITEM(rhsusf_acc_rvg_blk, 200, 50);
			ITEM(rhsusf_acc_rvg_de, 200, 50);
			ITEM(rhsusf_acc_tacsac_blk, 200, 50);
			ITEM(rhsusf_acc_tacsac_blue, 200, 50);
			ITEM(rhsusf_acc_tacsac_tan, 200, 50);
			ITEM(rhsusf_acc_tdstubby_blk, 200, 50);
			ITEM(rhsusf_acc_tdstubby_tan, 200, 50);
			ITEM(rhsusf_acc_grip3, 200, 50);
			ITEM(rhsusf_acc_grip3_tan, 200, 50);
			
			ITEM(rhsusf_acc_m14_bipod, 200, 50);
		};

		class pointersRhs 
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15A, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);

			ITEM(rhs_acc_2dpZenit, 50, MZ_STOCK);
			ITEM(rhs_acc_perst1ik, 75, MZ_STOCK);

			ITEM(rhs_acc_2dpZenit_ris, 50, MZ_STOCK);
			ITEM(rhs_acc_perst1ik_ris, 75, MZ_STOCK);
			ITEM(rhs_acc_perst3, 100, MZ_STOCK);

			ITEM(rhsusf_acc_anpeq15side, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_top, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_wmx, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_wmx_light, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15side_bk, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_bk_top, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_bk, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq16a, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq16a_top, 100, PN_STOCK);

			ITEM(rhsusf_acc_M952V, 75, PN_STOCK);
			ITEM(rhsusf_acc_wmx, 75, PN_STOCK);
			ITEM(rhsusf_acc_wmx_bk, 75, PN_STOCK);
		};

		class muzzlesRhs 
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(rhs_acc_6p9_suppressor, 200, MZ_STOCK);

			ITEM(rhsusf_acc_rotex_mp7_aor1, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex_mp7, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex_mp7_desert, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex_mp7_winter, 200, MZ_STOCK);

			ITEM(rhsusf_acc_omega9k, 200, MZ_STOCK);
			ITEM(rhsusf_acc_nt4_black, 200, MZ_STOCK);
			ITEM(rhsusf_acc_nt4_tan, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex5_grey, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex5_tan, 200, MZ_STOCK);

			ITEM(rhsusf_acc_aac_762sd_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_762sdn6_silencer, 300, MZ_STOCK);
			ITEM(rhsgref_sdn6_suppressor, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_scarh_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_m14dcqd_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_m14dcqd_silencer_d, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_m14dcqd_silencer_wd, 300, MZ_STOCK);

			ITEM(rhsgref_acc_falMuzzle_l1a1, 150, MZ_STOCK);

			ITEM(rhsusf_acc_m14_flashsuppresor, 200, MZ_STOCK);

			ITEM(rhsusf_acc_SF3P556, 50, MZ_STOCK);
			ITEM(rhsusf_acc_SFMB556, 65, MZ_STOCK);

			ITEM(rhs_acc_tgpv, 200, MZ_STOCK);
			ITEM(rhs_acc_tgpv2, 200, MZ_STOCK);

			ITEM(rhs_acc_dtkakm, 25, MZ_STOCK);
			ITEM(rhs_acc_ak5, 50, MZ_STOCK);
			ITEM(rhs_acc_dtk, 15, MZ_STOCK);
			ITEM(rhs_acc_dtk1, 25, MZ_STOCK);
			ITEM(rhs_acc_dtk2, 35, MZ_STOCK);
			ITEM(rhs_acc_dtk3, 50, MZ_STOCK);
			ITEM(rhs_acc_dtk4long, 200, MZ_STOCK);
			ITEM(rhs_acc_dtk4screws, 200, MZ_STOCK);
			ITEM(rhs_acc_pbs1, 200, MZ_STOCK);

			ITEM(rhsusf_acc_M2010S, 350, MZ_STOCK);
			ITEM(rhsusf_acc_M2010S_d, 350, MZ_STOCK);
			ITEM(rhsusf_acc_M2010S_wd, 350, MZ_STOCK);
			ITEM(rhsusf_acc_M2010S_sa, 350, MZ_STOCK);

			ITEM(rhsusf_acc_m24_silencer_d, 300, MZ_STOCK);
			ITEM(rhsusf_acc_m24_silencer_wd, 300, MZ_STOCK);
			ITEM(rhsusf_acc_m24_silencer_black, 300, MZ_STOCK);

			ITEM(rhsusf_acc_m24_muzzlehider_black, 200, MZ_STOCK);
			ITEM(rhsusf_acc_m24_muzzlehider_d, 200, MZ_STOCK);
			ITEM(rhsusf_acc_m24_muzzlehider_wd, 200, MZ_STOCK);
		};

		class opticsRhs 
		{
			displayName = "Optics Accessories";
			picture = "";

			class rhsgref_acc_l1a1_l2a2 {
				price = 450;
				stock = 100;
			};

			class rhsgref_acc_l1a1_anpvs2 {
				price = 1100;
				stock = 100;
			};

			class rhs_acc_1pn93_1 {
				price = 1000;
				stock = 100;
			};
			class rhs_acc_1pn93_2 {
				price = 1000;
				stock = 100;
			};
			class rhs_acc_pgo7v {
				price = 500;
				stock = 100;
			};
			class rhs_acc_pgo7v2 {
				price = 525;
				stock = 100;
			};
			class rhs_acc_pgo7v3 {
				price = 550;
				stock = 100;
			};

			class rhs_optic_maaws {
				price = 500;
				stock = 100;
			};

			class rhs_acc_1p29 {
				price = 400;
				stock = 100;
			};
			class rhs_acc_1p63 {
				price = 250;
				stock = 100;
			};
			class rhs_acc_1p78 {
				price = 500;
				stock = 100;
			};
			class rhs_acc_1pn34 {
				price = 850;
				stock = 100;
			};
			class rhs_acc_ekp1 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_ekp8_02 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_nita {
				price = 350;
				stock = 100;
			};
			class rhs_acc_okp7_dovetail {
				price = 250;
				stock = 100;
			};
			class rhs_acc_pkas {
				price = 300;
				stock = 100;
			};
			class rhs_acc_pso1m2 {
				price = 750;
				stock = 100;
			};
			class rhs_acc_pso1m21 {
				price = 750;
				stock = 100;
			};

			class rhs_acc_rakursPM {
				price = 200;
				stock = 100;
			};
			class rhs_acc_1p87 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_ekp8_18 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_okp7_picatinny {
				price = 200;
				stock = 100;
			};
			class rhs_acc_dh520x56 {
				price = 1500;
				stock = 100;
			};

			class rhsusf_acc_EOTECH {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_eotech_552 {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_eotech_552_d {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_eotech_552_wd {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_compm4 {
				price = 300;
				stock = 100;
			};

			class rhsusf_acc_M8541 {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_M8541_low {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_M8541_low_d {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_M8541_low_wd {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_premier_low {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_premier_anpvs27 {
				price = 1600;
				stock = 100;
			};
			class rhsusf_acc_premier {
				price = 1000;
				stock = 100;
			};

			class rhsusf_acc_LEUPOLDMK4 {
				price = 900;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2 {
				price = 1250;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_d {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_wd {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2_d {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2_mrds {
				price = 1750;
				stock = 100;
			};


			class rhsusf_acc_mrds {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_mrds_fwd {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_mrds_c {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_mrds_fwd_c {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_RM05 {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_RM05_fwd {
				price = 200;
				stock = 100;
			};


			class rhsusf_acc_RX01_NoFilter {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_RX01 {
				price = 300;
				stock = 100;
			};
			class rhsusf_acc_RX01_NoFilter_tan {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_RX01_tan {
				price = 300;
				stock = 100;
			};
			class rhsgref_acc_RX01_NoFilter_camo {
				price = 250;
				stock = 100;
			};
			class rhsgref_acc_RX01_camo {
				price = 300;
				stock = 100;
			};

			class rhsusf_acc_T1_high {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_T1_low {
				price = 300;
				stock = 100;
			};
			class rhsusf_acc_T1_low_fwd {
				price = 250;
				stock = 100;
			};


			class rhsusf_acc_su230 {
				price = 800;
				stock = 100;
			};
			class rhsusf_acc_su230_c {
				price = 800;
				stock = 100;
			};
			class rhsusf_acc_su230_mrds {
				price = 1050;
				stock = 100;
			};
			class rhsusf_acc_su230_mrds_c {
				price = 1050;
				stock = 100;
			};


			class rhsusf_acc_su230a {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_su230a_c {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_su230a_mrds {
				price = 1100;
				stock = 100;
			};
			class rhsusf_acc_su230a_mrds_c {
				price = 1100;
				stock = 100;
			};

			class rhsusf_acc_ACOG_MDO {
				price = 1500;
				stock = 100;
			};


			class rhsusf_acc_premier_mrds {
				price = 1250;
				stock = 100;
			};
			class rhsusf_acc_M8541_mrds {
				price = 1250;
				stock = 100;
			};

			class rhsusf_acc_g33_T1 {
				price = 550;
				stock = 100;
			};
			class rhsusf_acc_g33_xps3 {
				price = 500;
				stock = 100;
			};
			class rhsusf_acc_g33_xps3_tan {
				price = 500;
				stock = 100;
			};

			class rhsusf_acc_anpas13gv1 {
				price = 2500;
				stock = 5;
			};

			class rhsusf_acc_anpvs27 {
				price = 600;
				stock = 100;
			};

			class rhsusf_acc_ACOG {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_ACOG2_USMC {
				price = 900;
				stock = 100;
			};
			class rhsusf_acc_ACOG3_USMC {
				price = 950;
				stock = 100;
			};
			class rhsusf_acc_ACOG_USMC {
				price = 850;
				stock = 100;
			};

			class rhsusf_acc_ACOG_RMR {
				price = 1100;
				stock = 100;
			};
			class rhsusf_acc_ACOG_d {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_ACOG_wd {
				price = 850;
				stock = 100;
			};

			class rhsusf_acc_ELCAN {
				price = 700;
				stock = 100;
			};
			class rhsusf_acc_ELCAN_ard {
				price = 750;
				stock = 100;
			};
			
			class rhsusf_acc_ACOG_anpvs27 {
				price = 1450;
				stock = 100;
			};
		};

		class magazinesRhs 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			ITEM(rhs_mag_M441_HE, 50, MZ_STOCK);
			ITEM(rhs_mag_M433_HEDP, 100, MZ_STOCK);
			ITEM(rhs_mag_M397_HET, 150, MZ_STOCK);
			ITEM(rhs_mag_m4009, 75, MZ_STOCK);
			ITEM(rhs_mag_m576, 35, MZ_STOCK);
			ITEM(rhs_mag_M585_white, 20, MZ_STOCK);
			ITEM(rhs_mag_m661_green, 20, MZ_STOCK);
			ITEM(rhs_mag_m662_red, 20, MZ_STOCK);
			ITEM(rhs_mag_m713_Red, 30, MZ_STOCK);
			ITEM(rhs_mag_m714_White, 30, MZ_STOCK);
			ITEM(rhs_mag_m716_yellow, 30, MZ_STOCK);

			ITEM(rhs_VOG25, 35, MZ_STOCK);
			ITEM(rhs_VG40TB, 125, MZ_STOCK);
			ITEM(rhs_VOG25P, 65, MZ_STOCK);
			ITEM(rhs_VG40SZ, 125, MZ_STOCK);
			ITEM(rhs_GDM40, 50, MZ_STOCK);
			ITEM(rhs_VG40OP_white, 15, MZ_STOCK);
			ITEM(rhs_VG40OP_green, 15, MZ_STOCK);
			ITEM(rhs_VG40OP_red, 15, MZ_STOCK);
			ITEM(rhs_GRD40_White, 35, MZ_STOCK);
			ITEM(rhs_GRD40_Green, 35, MZ_STOCK);
			ITEM(rhs_GRD40_Red, 35, MZ_STOCK);
			ITEM(rhs_VG40MD, 100, MZ_STOCK);


			class rhsusf_mag_6Rnd_M576_Buckshot {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M441_HE {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M397_HET {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M433_HEDP {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_6Rnd_m4009 {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_6Rnd_M585_white {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_m661_green {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_m662_red {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M713_red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M714_white {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M715_green {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M716_yellow {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			ITEM(rhs_mag_9x18_8_57N181S, 10, MAGAZINE_STOCK);

			ITEM(rhsgref_20rnd_765x17_vz61, 50, MAGAZINE_STOCK);
			ITEM(rhsgref_10rnd_765x17_vz61, 25, MAGAZINE_STOCK);

			ITEM(rhs_18rnd_9x21mm_7N28, 25, MAGAZINE_STOCK);
			ITEM(rhs_18rnd_9x21mm_7N29, 50, MAGAZINE_STOCK);
			ITEM(rhs_18rnd_9x21mm_7BT3, 35, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_40Rnd_46x30_FMJ, 50, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_40Rnd_46x30_JHP, 75, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_40Rnd_46x30_AP, 100, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_7x45acp_MHP, 50, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x19_17, 35, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19_7n31_17, 50, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x19mm_7n21_20, 50, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19mm_7n31_20, 65, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19mm_7n21_44, 125, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19mm_7n31_44, 135, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_17Rnd_9x19_JHP, 50, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_17Rnd_9x19_FMJ, 65, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_15Rnd_9x19_JHP, 45, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_15Rnd_9x19_FMJ, 60, MAGAZINE_STOCK);

			ITEM(rhssaf_mag_15Rnd_9x19_JHP, 45, MAGAZINE_STOCK);
			ITEM(rhssaf_mag_15Rnd_9x19_FMJ, 60, MAGAZINE_STOCK);

			ITEM(rhs_20rnd_9x39mm_SP5, 100, MAGAZINE_STOCK);
			ITEM(rhs_20rnd_9x39mm_SP6, 125, MAGAZINE_STOCK);
			ITEM(rhs_10rnd_9x39mm_SP5, 65, MAGAZINE_STOCK);
			ITEM(rhs_10rnd_9x39mm_SP6, 75, MAGAZINE_STOCK);


			///////////////////////////////////////////////////////
			// SPECIAL
			///////////////////////////////////////////////////////
			ITEM(rhsusf_8Rnd_Slug, 100, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_00Buck, 125, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_HE, 500, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_FRAG, 550, MAGAZINE_STOCK);


			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_8Rnd_762x63_M2B_M1rifle {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class rhssaf_30Rnd_762x39mm_M67 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30Rnd_762x39mm_M78_tracer {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30Rnd_762x39_M82_api {
				price = 155;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_762x39mm {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_tracer {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_89 {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_U {
				price = 165;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_762x39mm_Savz58 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_Savz58_tracer {
				price = 135;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_25Rnd_792x33_SmE_StG {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_SCAR_762x51_m80_ball {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m80a1_epr {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m118_special {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_mk316_special {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m62_tracer {
				price = 165;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m61_ap {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m80a1_epr_bk {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m118_special_bk {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_mk316_special_bk {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m62_tracer_bk {
				price = 165;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			
			

			class rhs_mag_20Rnd_556x45_M193_Stanag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M193_2MAG_Stanag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M855_Stanag {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M855A1_Stanag {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_Mk262_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M193_Stanag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_M855_Stanag {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_Stanag_Ranger {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_PMAG {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_M855A1_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_PMAG {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_Mk262_Stanag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};		
			class rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk262_Stanag_Ranger {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_Mk318_Stanag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_Stanag_Pull {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_Stanag_Ranger {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_Mk318_SCAR {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_100Rnd_556x45_M855A1_cmag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855A1_cmag_mixed {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855_cmag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855_cmag_mixed {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_Mk318_cmag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_Mk262_cmag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};


			class rhs_30Rnd_762x39mm_polymer {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_89 {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_U {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_89 {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_U {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm_tracer {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm_89 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_545x39_7N10_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_plum_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_desert_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_camo_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N6_AK {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N6_green_AK {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_AK_green {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_AK_plum_green {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7U1_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7N10_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_AK_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7N22_AK {
				price = 165;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7U1_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_plum_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_camo_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_plum_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_desert_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_desert_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_30rnd_556x45_m21 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_30rnd_556x45_m21_t {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_30rnd_556x45_vhs2 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_30rnd_556x45_vhs2_t {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_EPR_G36 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_SOST_G36 {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_SPR_G36 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_Tracers_G36 {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_MDIM_G36 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_TDIM_G36 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_100rnd_556x45_EPR_G36 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class rhsgref_5Rnd_762x54_m38 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_10Rnd_792x57_m76 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_10Rnd_792x57_m76_tracer {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class rhs_10Rnd_762x54mmR_7N1 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_10Rnd_762x54mmR_7N14 {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class rhs_5Rnd_338lapua_t5000 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_300winmag_xm2010 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_762x51_m62_Mag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_m993_Mag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_m118_special_Mag {
				price = 85;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_762x51_AICS_m62_Mag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_AICS_m993_Mag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_AICS_m118_special_Mag {
				price = 85;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_10Rnd_762x51_m62_Mag {
				price = 130;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_10Rnd_762x51_m993_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_10Rnd_762x51_m118_special_Mag {
				price = 170;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_762x51_m80_fnfal {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m62_fnfal {
				price = 185;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m80a1_fnfal {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m61_fnfal {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_20Rnd_762x51_m80_Mag {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m62_Mag {
				price = 185;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m118_special_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m993_Mag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_10Rnd_STD_50BMG_M33 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_10Rnd_STD_50BMG_mk211 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class rhsusf_200Rnd_556x45_box {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_mixed_box {
				price = 255;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_M855_box {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_M855_mixed_box {
				price = 280;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_soft_pouch {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_mixed_soft_pouch {
				price = 155;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_M855_soft_pouch {
				price = 180;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_M855_mixed_soft_pouch {
				price = 185;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_50Rnd_792x57_SmE_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_50Rnd_792x57_SmE_notracers_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_50Rnd_792x57_SmK_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_50Rnd_792x57_SmK_alltracers_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_296Rnd_792x57_SmE_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_296Rnd_792x57_SmE_notracers_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_296Rnd_792x57_SmK_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_296Rnd_792x57_SmK_alltracers_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_100Rnd_762x51 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m80a1epr {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m62_tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m61_ap {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_50Rnd_762x51 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m80a1epr {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m62_tracer {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m61_ap {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class rhs_100Rnd_762x54mmR {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_green {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7N13 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7N26 {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7BZ3 {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
		};

		class miscRhs 
		{
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";
			ITEM(B_Bergen_mcamo_F, 900, MISC_STOCK);
			ITEM(B_Bergen_tna_F, 900, MISC_STOCK);
			ITEM(rhsgref_hidf_alicepack, 750, MISC_STOCK);
			ITEM(rhsgref_ttsko_alicepack, 750, MISC_STOCK);
			ITEM(rhsgref_wdl_alicepack, 750, MISC_STOCK);
			ITEM(rhssaf_alice_md2camo, 750, MISC_STOCK);
			ITEM(rhssaf_alice_smb, 750, MISC_STOCK);
			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);
		
			ITEM(IEDUrbanSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 750, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 750, MISC_STOCK);

			ITEM(rhsusf_m112_mag, 350, MISC_STOCK);
			ITEM(rhsusf_m112x4_mag, 1400, MISC_STOCK);
			ITEM(rhsusf_mine_m14_mag, 400, MISC_STOCK);
			ITEM(rhs_mine_M19_mag, 300, MISC_STOCK);
			ITEM(rhs_mine_M7A2_mag, 200, MISC_STOCK);
			ITEM(rhssaf_mine_pma3_mag, 300, MISC_STOCK);
			ITEM(rhs_mag_mine_pfm1, 250, MISC_STOCK);
			ITEM(rhs_mine_tm62m_mag, 350, MISC_STOCK);		

			ITEM(G_RegulatorMask_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_01_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_sand_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_olive_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_black_F, 200, MISC_STOCK);

			ITEM(I_UavTerminal, 800, MISC_STOCK);
			ITEM(O_UavTerminal, 800, MISC_STOCK);
			ITEM(B_UavTerminal, 800, MISC_STOCK);
		};

		class handguns3cbf
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(rhs_weap_6p53, 150, PISTOL_STOCK);
			ITEM(rhs_weap_pya, 200, PISTOL_STOCK);
			ITEM(rhs_weap_pb_6p9, 250, PISTOL_STOCK);

			ITEM(rhsusf_weap_m9, 250, PISTOL_STOCK);
			ITEM(rhsusf_weap_m1911a1, 250, PISTOL_STOCK);

			ITEM(UK3CB_BHP, 275, PISTOL_STOCK);

			ITEM(UK3CB_USP, 300, PISTOL_STOCK);

			ITEM(rhs_weap_cz99, 350, PISTOL_STOCK);
			ITEM(rhsusf_weap_glock17g4, 300, PISTOL_STOCK);

			ITEM(UK3CB_CZ75, 400, PISTOL_STOCK);

			ITEM(rhs_weap_M320, 400, PISTOL_STOCK);
		};

		class launchers3cbf
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(rhs_weap_rpg26, 200, 50);
			ITEM(rhs_weap_rshg2, 200, 50);
			ITEM(rhs_weap_rpg75, 175, 50);

			ITEM(rhs_weap_m80, 250, 50);

			ITEM(rhs_weap_m72a7, 300, 50);

			ITEM(UK3CB_Blowpipe, 500, 50);

			ITEM(rhs_weap_M136, 400, 50);
			ITEM(rhs_weap_M136_hedp, 500, 50);
			ITEM(rhs_weap_M136_hp, 500, 50);

			ITEM(rhs_weap_rpg7, 750, 15);

			ITEM(rhs_weap_maaws, 1300, 15);

			ITEM(rhs_weap_igla, 1300, 50);
			ITEM(rhs_weap_fim92, 1600, 50);

			ITEM(rhs_weap_smaw, 1500, 15);
			ITEM(rhs_weap_smaw_green, 1500, 15);

			ITEM(rhs_weap_fgm148, 6000, 10);
		};

		class smg3cbf
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(uk3cb_ppsh41, 375, RIFLE_STOCK);

			ITEM(UK3CB_MP5K, 550, RIFLE_STOCK);
			ITEM(UK3CB_MP5K_PDW, 575, RIFLE_STOCK);

			ITEM(UK3CB_MP5A2, 600, RIFLE_STOCK);
			ITEM(UK3CB_MP5A3, 600, RIFLE_STOCK);
			ITEM(UK3CB_MP5A4, 600, RIFLE_STOCK);
			ITEM(UK3CB_MP5SD5, 700, RIFLE_STOCK);
			ITEM(UK3CB_MP5SD6, 725, RIFLE_STOCK);

			ITEM(UK3CB_MP510, 650, RIFLE_STOCK);

			ITEM(UK3CB_MP5N, 650, RIFLE_STOCK);
			ITEM(UK3CB_MP5N_UGL, 850, RIFLE_STOCK);

			ITEM(uk3cb_auga1_para_blk, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga1_para, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga1_para_tan, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga2_para_blk, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga2_para, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga2_para_tan, 950, RIFLE_STOCK);

			ITEM(rhs_weap_pp2000, 600, RIFLE_STOCK);

			ITEM(rhs_weap_asval, 1200, RIFLE_STOCK);
			ITEM(rhs_weap_asval_grip, 1250, RIFLE_STOCK);
			ITEM(rhs_weap_asval_grip_npz, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_asval_npz, 1250, RIFLE_STOCK);

			ITEM(rhsusf_weap_MP7A2, 800, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_aor1, 800, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_desert, 800, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_winter, 800, RIFLE_STOCK);
		};

		class rifles3cbf
		{
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_aks74u, 200, RIFLE_STOCK);

			ITEM(rhs_weap_MP44, 500, RIFLE_STOCK);

			ITEM(rhs_weap_pm63, 750, RIFLE_STOCK);

			ITEM(UK3CB_M16A1, 400, RIFLE_STOCK);
			ITEM(UK3CB_M16A1_LSW, 425, RIFLE_STOCK);
			ITEM(UK3CB_M16A2, 425, RIFLE_STOCK);
			ITEM(UK3CB_M16_Carbine, 375, RIFLE_STOCK);
			ITEM(UK3CB_M16A2_UGL, 675, RIFLE_STOCK);
			ITEM(UK3CB_M16A3, 500, RIFLE_STOCK);
			
			ITEM(UK3CB_FAMAS_F1, 750, RIFLE_STOCK);
			ITEM(UK3CB_FAMAS_F1_GLM203, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_m70ab2, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m70b1, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m92, 300, RIFLE_STOCK);

			ITEM(rhs_weap_m70b1n, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m70b3n, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m70b3n_pbg40, 1050, RIFLE_STOCK);

			ITEM(rhs_weap_savz58p, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58p_black, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v_black, 950, RIFLE_STOCK);

			ITEM(uk3cb_ak47, 700, RIFLE_STOCK);
			ITEM(uk3cb_ak47n, 800, RIFLE_STOCK);

			ITEM(rhs_weap_akm, 800, RIFLE_STOCK);
			ITEM(rhs_weap_akmn, 900, RIFLE_STOCK);
			ITEM(rhs_weap_akmn_npz, 950, RIFLE_STOCK);
			ITEM(rhs_weap_akm_zenitco01_b33, 1050, RIFLE_STOCK);

			ITEM(rhs_weap_vhsd2, 900, RIFLE_STOCK);
			ITEM(rhs_weap_vhsk2, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_ct15x, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_bg, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_bg_ct15x, 1250, RIFLE_STOCK);

			ITEM(rhs_weap_ak103_1, 600, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_1_npz, 650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_2, 700, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_2_npz, 650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103, 650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_npz, 725, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_zenitco01_b33, 750, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_gp25, 800, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_gp25_npz, 850, RIFLE_STOCK);

			ITEM(rhs_weap_ak104, 700, RIFLE_STOCK);
			ITEM(rhs_weap_ak104_npz, 750, RIFLE_STOCK);
			ITEM(rhs_weap_ak104_zenitco01_b33, 775, RIFLE_STOCK);

			ITEM(rhs_weap_aks74, 500, RIFLE_STOCK);
			ITEM(rhs_weap_aks74_2, 525, RIFLE_STOCK);
			ITEM(rhs_weap_ak74, 500, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_2, 525, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_3, 550, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_gp25, 650, RIFLE_STOCK);

			ITEM(UK3CB_HK33KA1, 650, RIFLE_STOCK);
			ITEM(UK3CB_HK33KA2, 650, RIFLE_STOCK);
			ITEM(UK3CB_HK33KA3, 650, RIFLE_STOCK);
			ITEM(UK3CB_HK33KA2_RIS, 700, RIFLE_STOCK);
			ITEM(UK3CB_HK33KA2_RIS_GL, 950, RIFLE_STOCK);

			ITEM(rhs_weap_ak105, 700, RIFLE_STOCK);
			ITEM(rhs_weap_ak105_zenitco01, 750, RIFLE_STOCK);
			ITEM(rhs_weap_ak105_zenitco01_b33, 775, RIFLE_STOCK);

			ITEM(rhs_weap_m21a, 600, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pr, 750, RIFLE_STOCK);
			ITEM(rhs_weap_m21s, 550, RIFLE_STOCK);
			ITEM(rhs_weap_m21s_pr, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pbg40, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pr_pbg40, 850, RIFLE_STOCK);

			ITEM(uk3cb_auga2_sr_blk, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_tan, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_carb_blk, 825, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_carb, 825, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_carb_tan, 825, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_hbar_blk, 875, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_hbar, 875, RIFLE_STOCK);
			ITEM(uk3cb_auga2_sr_hbar_tan, 875, RIFLE_STOCK);

			ITEM(uk3cb_auga1_carb_blk, 900, RIFLE_STOCK);
			ITEM(uk3cb_auga1_carb_tan, 900, RIFLE_STOCK);
			ITEM(uk3cb_auga1_carb, 900, RIFLE_STOCK);
			ITEM(uk3cb_auga1_blk, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga1, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga1_tan, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga1_hbar, 1000, RIFLE_STOCK);
			ITEM(uk3cb_auga1_hbar_tan, 1000, RIFLE_STOCK);

			ITEM(uk3cb_auga2_blk, 1050, RIFLE_STOCK);
			ITEM(uk3cb_auga2, 1050, RIFLE_STOCK);
			ITEM(uk3cb_auga2_tan, 1050, RIFLE_STOCK);
			ITEM(uk3cb_auga2_carb, 1025, RIFLE_STOCK);
			ITEM(uk3cb_auga2_carb_tan, 1025, RIFLE_STOCK);
			ITEM(uk3cb_auga2_carb_blk, 1025, RIFLE_STOCK);
			ITEM(uk3cb_auga2_lsw, 1125, RIFLE_STOCK);
			ITEM(uk3cb_auga2_lsw_blk, 1125, RIFLE_STOCK);
			ITEM(uk3cb_auga2_lsw_tan, 1125, RIFLE_STOCK);

			ITEM(uk3cb_auga3_blk, 1200, RIFLE_STOCK);
			ITEM(uk3cb_auga3_blu, 1200, RIFLE_STOCK);
			ITEM(uk3cb_auga3, 1200, RIFLE_STOCK);
			ITEM(uk3cb_auga3_gl_blk, 1450, RIFLE_STOCK);
			ITEM(uk3cb_auga3_gl_blu, 1450, RIFLE_STOCK);
			ITEM(uk3cb_auga3_gl, 1450, RIFLE_STOCK);


			ITEM(rhs_weap_g36c, 800, RIFLE_STOCK);
			ITEM(rhs_weap_g36kv, 900, RIFLE_STOCK);
			ITEM(rhs_weap_g36kv_ag36, 1050, RIFLE_STOCK);

			ITEM(rhs_weap_mk18, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_bk, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_bk, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_d, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_d, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_m320, 1550, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_wd, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_wd, 1300, RIFLE_STOCK);

			ITEM(UK3CB_ACR_Crew, 1300, RIFLE_STOCK);
			ITEM(UK3CB_ACR_Carbine, 1350, RIFLE_STOCK);
			ITEM(UK3CB_ACR_Rifle, 1400, RIFLE_STOCK);
			ITEM(UK3CB_ACR_Rifle_Long, 1450, RIFLE_STOCK);
			ITEM(UK3CB_ACR_Carbine_UGL, 1550, RIFLE_STOCK);

			ITEM(rhs_weap_hk416d10, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT_d, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT_wd, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_m320, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_hk416d145, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_d, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_d_2, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_wd, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_wd_2, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_m320, 1800, RIFLE_STOCK);
		};

		class sniperRifles3cbf
		{
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m38_rail, 350, RIFLE_STOCK);
			ITEM(UK3CB_Enfield_Rail, 450, RIFLE_STOCK);


			ITEM(uk3cb_sks_01, 500, RIFLE_STOCK);
			ITEM(uk3cb_sks_02, 650, RIFLE_STOCK);

			ITEM(rhs_weap_m1garand_sa43, 600, RIFLE_STOCK);

			ITEM(UK3CB_M1903A1_unertl, 850, RIFLE_STOCK);

			ITEM(rhs_weap_vss, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_vss_grip, 1550, RIFLE_STOCK);
			ITEM(rhs_weap_vss_grip_npz, 1600, RIFLE_STOCK);
			ITEM(rhs_weap_vss_npz, 1650, RIFLE_STOCK);

			ITEM(rhs_weap_m76, 1100, RIFLE_STOCK);

			ITEM(rhs_weap_l1a1, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_l1a1_wood, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_FULL, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_FOREGRIP, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_PARA, 1250, RIFLE_STOCK);
			ITEM(UK3CB_FNLAR, 1300, RIFLE_STOCK);

			ITEM(uk3cb_stgw57_5104, 1550, RIFLE_STOCK);
			ITEM(uk3cb_stgw57_amt, 1550, RIFLE_STOCK);
			ITEM(UK3CB_STGW57, 1550, RIFLE_STOCK);
			ITEM(uk3cb_stgw57_RIS, 1550, RIFLE_STOCK);
			ITEM(uk3cb_stgw57_RIS_commando, 1550, RIFLE_STOCK);

			ITEM(UK3CB_FNFAL_FULL_RAILS, 1500, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_PARA_RAILS, 1400, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_OSW, 1600, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_OSW_GL, 1850, RIFLE_STOCK);

			ITEM(UK3CB_G3A3, 1450, RIFLE_STOCK);
			ITEM(UK3CB_G3A3_RIS, 1500, RIFLE_STOCK);
			ITEM(UK3CB_G3A3V, 1450, RIFLE_STOCK);
			ITEM(UK3CB_G3A3V_RIS, 1500, RIFLE_STOCK);
			ITEM(UK3CB_G3KA4, 1550, RIFLE_STOCK);
			ITEM(UK3CB_G3KA4_GL, 1750, RIFLE_STOCK);

			ITEM(UK3CB_G3SG1, 1600, RIFLE_STOCK);
			ITEM(UK3CB_G3SG1_RIS, 1700, RIFLE_STOCK);

			ITEM(UK3CB_PSG1A1, 1725, RIFLE_STOCK);
			ITEM(UK3CB_PSG1A1_RIS, 1825, RIFLE_STOCK);

			ITEM(rhs_weap_t5000, 1550, RIFLE_STOCK);

			ITEM(UK3CB_SVD_OLD, 1300, RIFLE_STOCK);
			ITEM(UK3CB_SVD_OLD_NPZ, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_svdp_wd, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_svdp_wd_npz, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_svds, 1250, RIFLE_STOCK);
			ITEM(rhs_weap_svds_npz, 1450, RIFLE_STOCK);
			
			ITEM(rhs_weap_m14, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m14_d, 1450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_fiberglass, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_m14_rail, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_d, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_fiberglass, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_wd, 2450, RIFLE_STOCK);

			ITEM(rhs_weap_m14_ris_d, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_m14_ris_fiberglass, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_m14_ris_wd, 2550, RIFLE_STOCK);

			ITEM(rhs_weap_m14ebrri, 2200, RIFLE_STOCK);

			ITEM(rhs_weap_m24sws, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_d, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_wd, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_m40a5, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m40a5_d, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m40a5_Wd, 1400, RIFLE_STOCK);

			ITEM(rhs_weap_XM2010, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_wd, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_d, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_sa, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_M107, 3500, 5);
			ITEM(rhs_weap_M107_d, 3500, 5);
			ITEM(rhs_weap_M107_w, 3500, 5);
			ITEM(rhs_weap_m82a1, 3500, 5);

			ITEM(rhs_weap_mk17_CQC, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_mk17_STD, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_mk17_LB, 2700, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_CQC, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_CQC, 2500, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_STD, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_STD, 2600, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_LB, 2700, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_LB, 2700, RIFLE_STOCK);
		};

		class mg3cbf
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(UK3CB_Bren, 550, RIFLE_STOCK);

			ITEM(UK3CB_RPK, 800, RIFLE_STOCK);

			ITEM(rhs_weap_m27iar, 1800, RIFLE_STOCK);

			ITEM(rhs_weap_m249, 1100, RIFLE_STOCK);

			ITEM(rhs_weap_m249_pip, 1350, RIFLE_STOCK);

			ITEM(UK3CB_M60, 1300, RIFLE_STOCK);

			ITEM(rhs_weap_m84, 1500, RIFLE_STOCK);

			ITEM(UK3CB_MG3, 1700, RIFLE_STOCK);
			ITEM(UK3CB_MG3_Railed, 1900, RIFLE_STOCK);
			ITEM(UK3CB_MG3_KWS_B, 2000, RIFLE_STOCK);
			ITEM(UK3CB_MG3_KWS_G, 2000, RIFLE_STOCK);
			ITEM(UK3CB_MG3_KWS_T, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_pkp, 1900, RIFLE_STOCK);
			
			ITEM(rhs_weap_m240G, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_rpk74m, 625, RIFLE_STOCK);					
			ITEM(rhs_weap_rpk74m_npz, 900, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74, 550, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74_BLK, 550, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74N, 600, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74N_BLK, 600, RIFLE_STOCK);
		};
		
		class additionalMagazines3cbf
		{
			displayName = "Additional Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			ITEM(UK3CB_CZ75_9_20Rnd, 75, MAGAZINE_STOCK);

			ITEM(UK3CB_USP_9_15Rnd, 30, MAGAZINE_STOCK);
		
			ITEM(UK3CB_AUG_25Rnd_9x19mm_Magazine, 50, MAGAZINE_STOCK);

			ITEM(uk3cb_PPSH_71rnd_magazine, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_R, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_RT, 60, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_Y, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_YM, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_YT, 60, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_G, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_GM, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_GT, 60, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_W, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_WM, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_WT, 60, MAGAZINE_STOCK);

			ITEM(uk3cb_10rnd_magazine_sks, 45, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_R, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_RT, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_Y, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_YT, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_G, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_GT, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_W, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_WT, 55, MAGAZINE_STOCK);

			ITEM(UK3CB_FNFAL_20rnd_762x51, 175, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_R, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_RT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_G, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_GT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_W, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_WT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_Y, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_YT, 190, MAGAZINE_STOCK);

			ITEM(UK3CB_FNFAL_30rnd_762x51, 225, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_R, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_RT, 240, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_G, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_GT, 240, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_W, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_WT, 240, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_Y, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_YT, 240, MAGAZINE_STOCK);

			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51, 175, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_R, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_RT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_Y, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_YT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_G, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_GT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_W, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_WT, 190, MAGAZINE_STOCK);

			ITEM(UK3CB_STGW57_24rnd_75x55, 185, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_R, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_RT, 200, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_Y, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_YT, 200, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_G, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_GT, 200, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_W, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_WT, 200, MAGAZINE_STOCK);

			class UK3CB_Blowpipe_Round {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_BHP_9_13Rnd {
				price = 10;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MP5_30Rnd_9x19_Magazine {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_9x19_Magazine_R {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_9x19_Magazine_RT {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MP5_30Rnd_10_Magazine {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_10_Magazine_R {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_10_Magazine_RT {
				price = 40;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_RPK74_60rnd_545x39 {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_RPK74_60rnd_545x39_R {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_RPK74_60rnd_545x39_RM {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_RPK74_60rnd_545x39_RT {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_FAMAS_25rnd_556x45 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_FAMAS_25rnd_556x45_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_FAMAS_25rnd_556x45_RT {
				price = 70;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_ACR_30rnd_556x45 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_RT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_G {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_GT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_Y {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_YT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_W {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_WT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_AUG_30Rnd_556x45_Magazine {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_RT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_Y {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_YT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_G {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_GT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_W {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_WT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_AUG_42Rnd_556x45_Magazine {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_R {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_RT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_Y {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_YT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_G {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_GT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_W {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_WT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_HK33_30rnd_556x45 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_RT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_G {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_GT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_Y {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_YT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_W {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_WT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_Enfield_10rnd_Mag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_R {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_RT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_Y {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_YT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_G {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_GT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_W {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_WT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_Bren_30Rnd_762x51_Magazine {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_G {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_GT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_R {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_RT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_Y {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_YT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_W {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_WT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_G3_20rnd_762x51 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_R {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_RT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_G {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_GT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_Y {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_YT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_W {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_WT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51 {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_R {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_RM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_RT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_G {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_GM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_GT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_Y {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_YM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_YT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_W {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_WM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_WT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_M60_100rnd_762x51 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_M60_100rnd_762x51_R {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_M60_100rnd_762x51_RM {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_M60_100rnd_762x51_RT {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MG3_50rnd_762x51 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_50rnd_762x51_R {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_50rnd_762x51_RM {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_50rnd_762x51_RT {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MG3_100rnd_762x51 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_100rnd_762x51_R {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_100rnd_762x51_RM {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_100rnd_762x51_RT {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MG3_250rnd_762x51 {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_250rnd_762x51_R {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_250rnd_762x51_RM {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_250rnd_762x51_RT {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
		};

		class additionalScopes3cbf 
		{
			displayName = "Additional Optics Accessories";
			picture = "";

			class uk3cb_optic_sro {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_ZFSG1 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_STANAGZF_G3 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_PVS4_G3 {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_accupoint_g3 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_Kern {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_Kern2d {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
		};

		class additionalMuzzles3cbf 
		{
			displayName = "Additional Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(uk3cb_muzzle_snds_g3, 450, MZ_STOCK);
			ITEM(uk3cb_muzzle_snds_HK33, 300, MZ_STOCK);
		};

		class handguns3cbfcw
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(rhs_weap_makarov_pm, 75, PISTOL_STOCK);

			ITEM(rhs_weap_6p53, 150, PISTOL_STOCK);
			ITEM(rhs_weap_pb_6p9, 250, PISTOL_STOCK);

			ITEM(rhs_weap_savz61_folded, 300, PISTOL_STOCK);

			ITEM(rhsusf_weap_m9, 250, PISTOL_STOCK);
			ITEM(rhsusf_weap_m1911a1, 250, PISTOL_STOCK);

			ITEM(UK3CB_BHP, 275, PISTOL_STOCK);

			ITEM(UK3CB_USP, 300, PISTOL_STOCK);

			ITEM(rhs_weap_cz99, 350, PISTOL_STOCK);
			ITEM(rhsusf_weap_glock17g4, 300, PISTOL_STOCK);
		};

		class smg3cbfcw
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(uk3cb_ppsh41, 375, RIFLE_STOCK);

			ITEM(UK3CB_MP5K, 550, RIFLE_STOCK);
			ITEM(UK3CB_MP5K_PDW, 575, RIFLE_STOCK);

			ITEM(UK3CB_MP5A2, 600, RIFLE_STOCK);
			ITEM(UK3CB_MP5A3, 600, RIFLE_STOCK);
			ITEM(UK3CB_MP5A4, 600, RIFLE_STOCK);
			ITEM(UK3CB_MP5SD5, 700, RIFLE_STOCK);
			ITEM(UK3CB_MP5SD6, 725, RIFLE_STOCK);

			ITEM(UK3CB_MP510, 650, RIFLE_STOCK);

			ITEM(UK3CB_MP5N, 650, RIFLE_STOCK);

			ITEM(uk3cb_auga1_para_blk, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga1_para, 850, RIFLE_STOCK);
			ITEM(uk3cb_auga1_para_tan, 850, RIFLE_STOCK);

			ITEM(rhs_weap_asval, 1200, RIFLE_STOCK);
		};

		class rifles3cbfcw
		{
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_aks74u, 200, RIFLE_STOCK);

			ITEM(rhs_weap_m70ab2, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m70b1, 700, RIFLE_STOCK);
			ITEM(rhs_weap_m92, 300, RIFLE_STOCK);

			ITEM(rhs_weap_m70b1n, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m70b3n, 800, RIFLE_STOCK);
			ITEM(rhs_weap_m70b3n_pbg40, 1050, RIFLE_STOCK);

			ITEM(rhs_weap_MP44, 500, RIFLE_STOCK);

			ITEM(rhs_weap_pm63, 750, RIFLE_STOCK);

			ITEM(UK3CB_M16A1, 400, RIFLE_STOCK);
			ITEM(UK3CB_M16A1_LSW, 425, RIFLE_STOCK);
			ITEM(UK3CB_M16A2, 425, RIFLE_STOCK);
			ITEM(UK3CB_M16_Carbine, 375, RIFLE_STOCK);
			ITEM(UK3CB_M16A2_UGL, 675, RIFLE_STOCK);
			ITEM(UK3CB_M16A3, 500, RIFLE_STOCK);

			ITEM(UK3CB_FAMAS_F1, 750, RIFLE_STOCK);
			ITEM(UK3CB_FAMAS_F1_GLM203, 1000, RIFLE_STOCK);

			ITEM(uk3cb_auga1_carb_blk, 900, RIFLE_STOCK);
			ITEM(uk3cb_auga1_carb_tan, 900, RIFLE_STOCK);
			ITEM(uk3cb_auga1_carb, 900, RIFLE_STOCK);
			ITEM(uk3cb_auga1_blk, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga1, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga1_tan, 950, RIFLE_STOCK);
			ITEM(uk3cb_auga1_hbar, 1000, RIFLE_STOCK);
			ITEM(uk3cb_auga1_hbar_tan, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_savz58p, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58p_black, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v, 950, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v_black, 950, RIFLE_STOCK);

			ITEM(uk3cb_ak47, 700, RIFLE_STOCK);
			ITEM(uk3cb_ak47n, 800, RIFLE_STOCK);

			ITEM(rhs_weap_akm, 800, RIFLE_STOCK);
			ITEM(rhs_weap_akmn, 900, RIFLE_STOCK);

			ITEM(rhs_weap_aks74, 500, RIFLE_STOCK);
			ITEM(rhs_weap_aks74_2, 525, RIFLE_STOCK);
			ITEM(rhs_weap_ak74, 500, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_2, 525, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_3, 550, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_gp25, 650, RIFLE_STOCK);

			ITEM(UK3CB_HK33KA1, 650, RIFLE_STOCK);
			ITEM(UK3CB_HK33KA2, 650, RIFLE_STOCK);
			ITEM(UK3CB_HK33KA3, 650, RIFLE_STOCK);
		};

		class sniperRifles3cbfcw
		{
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(uk3cb_sks_01, 500, RIFLE_STOCK);
			ITEM(uk3cb_sks_02, 650, RIFLE_STOCK);

			ITEM(rhs_weap_m1garand_sa43, 600, RIFLE_STOCK);

			ITEM(UK3CB_M1903A1_unertl, 850, RIFLE_STOCK);

			ITEM(rhs_weap_vss, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_m76, 1100, RIFLE_STOCK);

			ITEM(rhs_weap_l1a1, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_l1a1_wood, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_FULL, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_FOREGRIP, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNFAL_PARA, 1300, RIFLE_STOCK);
			ITEM(UK3CB_FNLAR, 1300, RIFLE_STOCK);

			ITEM(UK3CB_STGW57, 1550, RIFLE_STOCK);

			ITEM(UK3CB_G3A3, 1450, RIFLE_STOCK);
			ITEM(UK3CB_G3A3V, 1450, RIFLE_STOCK);

			ITEM(UK3CB_G3SG1, 1600, RIFLE_STOCK);

			ITEM(UK3CB_SVD_OLD, 1300, RIFLE_STOCK);
			
			ITEM(rhs_weap_m14, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_m14_d, 1450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_fiberglass, 1500, RIFLE_STOCK);

			ITEM(UK3CB_M14DMR, 1500, RIFLE_STOCK);
			ITEM(UK3CB_M14DMR_Railed, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_m14_rail, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_d, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_fiberglass, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_wd, 2450, RIFLE_STOCK);

			ITEM(rhs_weap_m24sws, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_d, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_wd, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_m82a1, 3500, 5);
		};

		class mg3cbfcw
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(UK3CB_Bren, 550, RIFLE_STOCK);

			ITEM(UK3CB_RPK, 800, RIFLE_STOCK);

			ITEM(rhs_weap_m249, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_m249_pip, 1350, RIFLE_STOCK);

			ITEM(UK3CB_M60, 1300, RIFLE_STOCK);

			ITEM(rhs_weap_m84, 1500, RIFLE_STOCK);

			ITEM(UK3CB_MG3, 1700, RIFLE_STOCK);
			ITEM(UK3CB_MG3_Railed, 1900, RIFLE_STOCK);
			
			ITEM(rhs_weap_m240G, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_rpk74m, 625, RIFLE_STOCK);					
			ITEM(UK3CB_RPK_74, 550, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74_BLK, 550, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74N, 600, RIFLE_STOCK);
			ITEM(UK3CB_RPK_74N_BLK, 600, RIFLE_STOCK);
		};

		class specialWeapons3cbfcw 
		{
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m79, 350, RIFLE_STOCK);
			ITEM(rhs_weap_M590_8RD, 200, RIFLE_STOCK);
		};

		class launcherMagazines3cbfcw 
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class rhs_rpg7_PG7V_mag {
				price = 75;
				stock = 50;
			};
			class rhs_rpg7_PG7VM_mag {
				price = 100;
				stock = 50;
			};
			class rhs_rpg7_PG7VS_mag {
				price = 150;
				stock = 50;
			};
			class rhs_rpg7_PG7VL_mag {
				price = 250;
				stock = 50;
			};
			class rhs_rpg7_PG7VR_mag {
				price = 300;
				stock = 50;
			};
			class rhs_rpg7_TBG7V_mag {
				price = 300;
				stock = 50;
			};

			class rhs_mag_maaws_HEAT {
				price = 250;
				stock = 50;
			};
			class rhs_mag_maaws_HEDP {
				price = 350;
				stock = 50;
			};
			class rhs_mag_maaws_HE {
				price = 200;
				stock = 50;
			};

			class rhs_mag_smaw_SR {
				price = 100;
				stock = 500;
			};
			class rhs_mag_smaw_HEAA {
				price = 250;
				stock = 50;
			};
			class rhs_mag_smaw_HEDP {
				price = 350;
				stock = 50;
			};

			class rhs_fgm148_magazine_AT {
				price = 1000;
				stock = 50;
			};
		};

		class navigation3cbfcw
		{
			displayName = "Navigation";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 200, NN_STOCK);
			ITEM(ItemRadio, 50, NN_STOCK);

			ITEM(rhs_tr8_periscope_pip, 50, NN_STOCK);
			ITEM(rhsusf_bino_leopold_mk4, 150, NN_STOCK);

			ITEM(UK3CB_ANPVS7, 500, NN_STOCK);
		};

		class underbarrel3cbfcw
		{
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(rhsusf_acc_harris_bipod, 100, 50);
			ITEM(rhsusf_acc_saw_bipod, 100, 50);
			ITEM(rhsusf_acc_m14_bipod, 200, 50);
		};

		class pointers3cbfcw 
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);
		};

		class muzzles3cbfcw 
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(rhs_acc_6p9_suppressor, 200, MZ_STOCK);

			ITEM(rhsusf_acc_nt4_black, 200, MZ_STOCK);
			ITEM(rhsusf_acc_nt4_tan, 200, MZ_STOCK);

			ITEM(uk3cb_muzzle_snds_g3, 450, MZ_STOCK);
			ITEM(uk3cb_muzzle_snds_HK33, 300, MZ_STOCK);

			ITEM(rhsusf_acc_aac_762sd_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_762sdn6_silencer, 300, MZ_STOCK);
			ITEM(rhsgref_sdn6_suppressor, 300, MZ_STOCK);

			ITEM(rhsgref_acc_falMuzzle_l1a1, 150, MZ_STOCK);

			ITEM(rhsusf_acc_m14_flashsuppresor, 200, MZ_STOCK);

			ITEM(rhsusf_acc_SF3P556, 50, MZ_STOCK);
			ITEM(rhsusf_acc_SFMB556, 65, MZ_STOCK);

			ITEM(rhs_acc_tgpv, 200, MZ_STOCK);
			ITEM(rhs_acc_tgpv2, 200, MZ_STOCK);

			ITEM(rhs_acc_dtkakm, 25, MZ_STOCK);
			ITEM(rhs_acc_dtk, 15, MZ_STOCK);
			ITEM(rhs_acc_pbs1, 200, MZ_STOCK);

			ITEM(rhsusf_acc_m24_silencer_d, 300, MZ_STOCK);
			ITEM(rhsusf_acc_m24_silencer_wd, 300, MZ_STOCK);
			ITEM(rhsusf_acc_m24_silencer_black, 300, MZ_STOCK);

			ITEM(rhsusf_acc_m24_muzzlehider_black, 200, MZ_STOCK);
			ITEM(rhsusf_acc_m24_muzzlehider_d, 200, MZ_STOCK);
			ITEM(rhsusf_acc_m24_muzzlehider_wd, 200, MZ_STOCK);

			ITEM(uk3cb_muzzle_snds_M14, 200, MZ_STOCK);
		};

		class optics3cbfcw 
		{
			displayName = "Optics Accessories";
			picture = "";

			class uk3cb_optic_sro {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_ZFSG1 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_STANAGZF_G3 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_PVS4_G3 {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_accupoint_g3 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class uk3cb_optic_PVS4_M14 {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class uk3cb_optic_artel_m14 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_acc_l1a1_l2a2 {
				price = 450;
				stock = 100;
			};

			class rhsgref_acc_l1a1_anpvs2 {
				price = 1100;
				stock = 100;
			};

			class rhs_acc_pgo7v {
				price = 500;
				stock = 100;
			};
			class rhs_acc_pgo7v2 {
				price = 525;
				stock = 100;
			};

			class rhs_optic_maaws {
				price = 500;
				stock = 100;
			};

			class rhs_acc_1p29 {
				price = 400;
				stock = 100;
			};
			class rhs_acc_1p63 {
				price = 250;
				stock = 100;
			};
			class rhs_acc_1pn34 {
				price = 850;
				stock = 100;
			};
			class rhs_acc_ekp1 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_nita {
				price = 350;
				stock = 100;
			};
			class rhs_acc_pso1m2 {
				price = 750;
				stock = 100;
			};
			class rhs_acc_pso1m21 {
				price = 750;
				stock = 100;
			};

			class rhsusf_acc_LEUPOLDMK4 {
				price = 900;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2 {
				price = 1250;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_d {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_wd {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2_d {
				price = 1500;
				stock = 100;
			};

			class rhsusf_acc_RX01_NoFilter {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_RX01 {
				price = 300;
				stock = 100;
			};
			class rhsusf_acc_RX01_NoFilter_tan {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_RX01_tan {
				price = 300;
				stock = 100;
			};
			class rhsgref_acc_RX01_NoFilter_camo {
				price = 250;
				stock = 100;
			};
			class rhsgref_acc_RX01_camo {
				price = 300;
				stock = 100;
			};

			class rhsusf_acc_anpas13gv1 {
				price = 2500;
				stock = 5;
			};

			class rhsusf_acc_ACOG {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_ACOG_USMC {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_ACOG_d {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_ACOG_wd {
				price = 850;
				stock = 100;
			};
		};

		class magazines3cbfcw 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries 
			{
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			ITEM(rhs_mag_M441_HE, 50, MZ_STOCK);
			ITEM(rhs_mag_M433_HEDP, 100, MZ_STOCK);
			ITEM(rhs_mag_M397_HET, 150, MZ_STOCK);
			ITEM(rhs_mag_m4009, 75, MZ_STOCK);
			ITEM(rhs_mag_m576, 35, MZ_STOCK);
			ITEM(rhs_mag_M585_white, 20, MZ_STOCK);
			ITEM(rhs_mag_m661_green, 20, MZ_STOCK);
			ITEM(rhs_mag_m662_red, 20, MZ_STOCK);
			ITEM(rhs_mag_m713_Red, 30, MZ_STOCK);
			ITEM(rhs_mag_m714_White, 30, MZ_STOCK);
			ITEM(rhs_mag_m716_yellow, 30, MZ_STOCK);

			ITEM(rhs_VOG25, 35, MZ_STOCK);
			ITEM(rhs_VG40TB, 125, MZ_STOCK);
			ITEM(rhs_VOG25P, 65, MZ_STOCK);
			ITEM(rhs_VG40SZ, 125, MZ_STOCK);
			ITEM(rhs_GDM40, 50, MZ_STOCK);
			ITEM(rhs_VG40OP_white, 15, MZ_STOCK);
			ITEM(rhs_VG40OP_green, 15, MZ_STOCK);
			ITEM(rhs_VG40OP_red, 15, MZ_STOCK);
			ITEM(rhs_GRD40_White, 35, MZ_STOCK);
			ITEM(rhs_GRD40_Green, 35, MZ_STOCK);
			ITEM(rhs_GRD40_Red, 35, MZ_STOCK);
			ITEM(rhs_VG40MD, 100, MZ_STOCK);


			class rhsusf_mag_6Rnd_M576_Buckshot {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M441_HE {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M397_HET {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M433_HEDP {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_6Rnd_m4009 {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_6Rnd_M585_white {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_m661_green {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_m662_red {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M713_red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M714_white {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M715_green {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M716_yellow {
				price = 350;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////		
			ITEM(UK3CB_USP_9_15Rnd, 30, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x18_8_57N181S, 10, MAGAZINE_STOCK);

			ITEM(rhsgref_20rnd_765x17_vz61, 50, MAGAZINE_STOCK);
			ITEM(rhsgref_10rnd_765x17_vz61, 25, MAGAZINE_STOCK);

			ITEM(rhs_18rnd_9x21mm_7N28, 25, MAGAZINE_STOCK);
			ITEM(rhs_18rnd_9x21mm_7N29, 50, MAGAZINE_STOCK);
			ITEM(rhs_18rnd_9x21mm_7BT3, 35, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_7x45acp_MHP, 50, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x19_17, 50, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_17Rnd_9x19_JHP, 50, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_17Rnd_9x19_FMJ, 65, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_15Rnd_9x19_JHP, 45, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_15Rnd_9x19_FMJ, 60, MAGAZINE_STOCK);

			ITEM(rhssaf_mag_15Rnd_9x19_JHP, 45, MAGAZINE_STOCK);
			ITEM(rhssaf_mag_15Rnd_9x19_FMJ, 60, MAGAZINE_STOCK);

			ITEM(rhs_20rnd_9x39mm_SP5, 100, MAGAZINE_STOCK);
			ITEM(rhs_20rnd_9x39mm_SP6, 125, MAGAZINE_STOCK);
			ITEM(rhs_10rnd_9x39mm_SP5, 65, MAGAZINE_STOCK);
			ITEM(rhs_10rnd_9x39mm_SP6, 75, MAGAZINE_STOCK);

			ITEM(uk3cb_PPSH_71rnd_magazine, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_R, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_RT, 60, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_Y, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_YM, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_YT, 60, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_G, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_GM, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_GT, 60, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_W, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_WM, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_PPSH_71rnd_magazine_WT, 60, MAGAZINE_STOCK);

			ITEM(UK3CB_AUG_25Rnd_9x19mm_Magazine, 50, MAGAZINE_STOCK);


			///////////////////////////////////////////////////////
			// SPECIAL
			///////////////////////////////////////////////////////
			ITEM(rhsusf_8Rnd_Slug, 100, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_00Buck, 125, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_HE, 500, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_FRAG, 550, MAGAZINE_STOCK);


			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_8Rnd_762x63_M2B_M1rifle {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_FAMAS_25rnd_556x45 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_FAMAS_25rnd_556x45_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_FAMAS_25rnd_556x45_RT {
				price = 70;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_ACR_30rnd_556x45 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_RT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_G {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_GT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_Y {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_YT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_W {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_ACR_30rnd_556x45_WT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_AUG_30Rnd_556x45_Magazine {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_RT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_Y {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_YT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_G {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_GT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_W {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_30Rnd_556x45_Magazine_WT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_AUG_42Rnd_556x45_Magazine {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_R {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_RT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_Y {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_YT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_G {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_GT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_W {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_AUG_42Rnd_556x45_Magazine_WT {
				price = 80;
				stock = MAGAZINE_STOCK;
			};


			class rhssaf_30Rnd_762x39mm_M67 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30Rnd_762x39mm_M78_tracer {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30Rnd_762x39_M82_api {
				price = 155;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_762x39mm {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_tracer {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_89 {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_U {
				price = 165;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_762x39mm_Savz58 {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_Savz58_tracer {
				price = 135;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_25Rnd_792x33_SmE_StG {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_556x45_M193_Stanag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M193_2MAG_Stanag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M855_Stanag {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M855A1_Stanag {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_Mk262_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M193_Stanag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_M855_Stanag {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_Stanag_Ranger {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_PMAG {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_M855A1_Stanag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_100Rnd_556x45_M855A1_cmag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855A1_cmag_mixed {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855_cmag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855_cmag_mixed {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_762x39mm_polymer {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_89 {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_U {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_tracer {
				price = 140;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_89 {
				price = 145;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_U {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm_tracer {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm_89 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_545x39_7N10_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_plum_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_desert_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_camo_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N6_AK {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N6_green_AK {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_AK_green {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_AK_plum_green {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7U1_AK {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7N10_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_AK_Green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7N22_AK {
				price = 165;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7U1_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_plum_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_camo_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_plum_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_desert_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_desert_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			
			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			ITEM(uk3cb_10rnd_magazine_sks, 45, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_R, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_RT, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_Y, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_YT, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_G, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_GT, 55, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_W, 50, MAGAZINE_STOCK);
			ITEM(uk3cb_10rnd_magazine_sks_WT, 55, MAGAZINE_STOCK);

			ITEM(UK3CB_FNFAL_20rnd_762x51, 175, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_R, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_RT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_G, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_GT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_W, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_WT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_Y, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_20rnd_762x51_YT, 190, MAGAZINE_STOCK);

			ITEM(UK3CB_FNFAL_30rnd_762x51, 225, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_R, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_RT, 240, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_G, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_GT, 240, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_W, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_WT, 240, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_Y, 235, MAGAZINE_STOCK);
			ITEM(UK3CB_FNFAL_30rnd_762x51_YT, 240, MAGAZINE_STOCK);

			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51, 175, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_R, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_RT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_Y, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_YT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_G, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_GT, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_W, 180, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_AMT_20Rnd_762x51_WT, 190, MAGAZINE_STOCK);

			ITEM(UK3CB_STGW57_24rnd_75x55, 185, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_R, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_RT, 200, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_Y, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_YT, 200, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_G, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_GT, 200, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_W, 190, MAGAZINE_STOCK);
			ITEM(UK3CB_STGW57_24rnd_75x55_WT, 200, MAGAZINE_STOCK);

			class rhsgref_5Rnd_762x54_m38 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_10Rnd_792x57_m76 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_10Rnd_792x57_m76_tracer {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class rhs_10Rnd_762x54mmR_7N1 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_10Rnd_762x54mmR_7N14 {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class 5Rnd_127x108_APDS_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_762x51_m62_Mag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_m993_Mag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_m118_special_Mag {
				price = 85;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_762x51_AICS_m62_Mag {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_AICS_m993_Mag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_AICS_m118_special_Mag {
				price = 85;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_10Rnd_762x51_m62_Mag {
				price = 130;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_10Rnd_762x51_m993_Mag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_10Rnd_762x51_m118_special_Mag {
				price = 170;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_762x51_m80_fnfal {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m62_fnfal {
				price = 185;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m80a1_fnfal {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m61_fnfal {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_20Rnd_762x51_m80_Mag {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m62_Mag {
				price = 185;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m118_special_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m993_Mag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_10Rnd_STD_50BMG_M33 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class rhsusf_200Rnd_556x45_box {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_mixed_box {
				price = 255;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_M855_box {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_M855_mixed_box {
				price = 280;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_soft_pouch {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_mixed_soft_pouch {
				price = 155;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_M855_soft_pouch {
				price = 180;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_M855_mixed_soft_pouch {
				price = 185;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_50Rnd_792x57_SmE_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_50Rnd_792x57_SmE_notracers_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_50Rnd_792x57_SmK_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_50Rnd_792x57_SmK_alltracers_drum {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_296Rnd_792x57_SmE_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_296Rnd_792x57_SmE_notracers_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_296Rnd_792x57_SmK_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_296Rnd_792x57_SmK_alltracers_belt {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_100Rnd_762x51 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m80a1epr {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m62_tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m61_ap {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_50Rnd_762x51 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m80a1epr {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m62_tracer {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m61_ap {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class rhs_100Rnd_762x54mmR {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_green {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7N13 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7N26 {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7BZ3 {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_Blowpipe_Round {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_BHP_9_13Rnd {
				price = 10;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MP5_30Rnd_9x19_Magazine {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_9x19_Magazine_R {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_9x19_Magazine_RT {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MP5_30Rnd_10_Magazine {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_10_Magazine_R {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MP5_30Rnd_10_Magazine_RT {
				price = 40;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_RPK74_60rnd_545x39 {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_RPK74_60rnd_545x39_R {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_RPK74_60rnd_545x39_RM {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_RPK74_60rnd_545x39_RT {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_HK33_30rnd_556x45 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_RT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_R {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_G {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_GT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_Y {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_YT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_W {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_HK33_30rnd_556x45_WT {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_Enfield_10rnd_Mag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_R {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_RT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_Y {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_YT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_G {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_GT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_W {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Enfield_10rnd_Mag_WT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_Bren_30Rnd_762x51_Magazine {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_G {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_GT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_R {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_RT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_Y {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_YT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_W {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_Bren_30Rnd_762x51_Magazine_WT {
				price = 75;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_G3_20rnd_762x51 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_R {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_RT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_G {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_GT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_Y {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_YT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_W {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_20rnd_762x51_WT {
				price = 190;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51 {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_R {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_RM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_RT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_G {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_GM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_GT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_Y {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_YM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_YT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_W {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_WM {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_G3_50rnd_762x51_WT {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_M60_100rnd_762x51 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_M60_100rnd_762x51_R {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_M60_100rnd_762x51_RM {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_M60_100rnd_762x51_RT {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MG3_50rnd_762x51 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_50rnd_762x51_R {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_50rnd_762x51_RM {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_50rnd_762x51_RT {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MG3_100rnd_762x51 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_100rnd_762x51_R {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_100rnd_762x51_RM {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_100rnd_762x51_RT {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class UK3CB_MG3_250rnd_762x51 {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_250rnd_762x51_R {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_250rnd_762x51_RM {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class UK3CB_MG3_250rnd_762x51_RT {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
		};

		class misc3cbfcw 
		{
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(rhsgref_hidf_alicepack, 750, MISC_STOCK);
			ITEM(rhsgref_ttsko_alicepack, 750, MISC_STOCK);
			ITEM(rhsgref_wdl_alicepack, 750, MISC_STOCK);
			ITEM(rhssaf_alice_md2camo, 750, MISC_STOCK);
			ITEM(rhssaf_alice_smb, 750, MISC_STOCK);
			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);

			ITEM(IEDUrbanSmall_Remote_Mag, 200, MISC_STOCK);

			ITEM(rhsusf_m112_mag, 350, MISC_STOCK);
			ITEM(rhsusf_m112x4_mag, 1400, MISC_STOCK);
			ITEM(rhsusf_mine_m14_mag, 400, MISC_STOCK);
			ITEM(rhs_mine_M19_mag, 300, MISC_STOCK);
			ITEM(rhs_mine_M7A2_mag, 200, MISC_STOCK);
			ITEM(rhssaf_mine_pma3_mag, 300, MISC_STOCK);
			ITEM(rhs_mag_mine_pfm1, 250, MISC_STOCK);
			ITEM(rhs_mine_tm62m_mag, 350, MISC_STOCK);		

			ITEM(G_AirPurifyingRespirator_02_sand_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_olive_F, 200, MISC_STOCK);
			ITEM(G_AirPurifyingRespirator_02_black_F, 200, MISC_STOCK);

			ITEM(I_UavTerminal, 2500, MISC_STOCK);
			ITEM(O_UavTerminal, 2500, MISC_STOCK);
			ITEM(B_UavTerminal, 2500, MISC_STOCK);
		};

		class handgunsvn
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(vn_welrod, 100, PISTOL_STOCK);
			ITEM(vn_m10, 75, PISTOL_STOCK);
			ITEM(vn_m1895, 100, PISTOL_STOCK);

			ITEM(vn_pm, 125, PISTOL_STOCK);
			ITEM(vn_fkb1_pm, 150, PISTOL_STOCK);
			
			ITEM(vn_tt33, 175, PISTOL_STOCK);
			ITEM(vn_m1911, 175, PISTOL_STOCK);
			ITEM(vn_mx991_m1911, 200, PISTOL_STOCK);

			ITEM(vn_m712, 225, PISTOL_STOCK);

			ITEM(vn_hp, 225, PISTOL_STOCK);

			ITEM(vn_hd, 300, PISTOL_STOCK);

			ITEM(vn_mk22, 350, PISTOL_STOCK);

			ITEM(vn_vz61_p, 500, PISTOL_STOCK);

			ITEM(vn_izh54_shorty, 250, PISTOL_STOCK);

			ITEM(vn_m79_p, 750, PISTOL_STOCK);
		};

		class smgvn
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_vz61, 200, RIFLE_STOCK);
			ITEM(vn_mc10, 200, RIFLE_STOCK);
			ITEM(vn_mpu, 225, RIFLE_STOCK);

			ITEM(vn_mat49_f, 250, RIFLE_STOCK);
			ITEM(vn_mat49, 250, RIFLE_STOCK);
			ITEM(vn_m3a1, 250, RIFLE_STOCK);

			ITEM(vn_mat49_vc, 275, RIFLE_STOCK);

			ITEM(vn_pps43, 350, RIFLE_STOCK);
			ITEM(vn_pps52, 375, RIFLE_STOCK);

			ITEM(vn_k50m, 425, RIFLE_STOCK);
			ITEM(vn_ppsh41, 475, RIFLE_STOCK);

			ITEM(vn_sten, 400, RIFLE_STOCK);

			ITEM(vn_m45, 450, RIFLE_STOCK);
			ITEM(vn_m45_fold, 450, RIFLE_STOCK);
			ITEM(vn_m45_camo, 450, RIFLE_STOCK);

			ITEM(vn_m1a1_tommy_so, 550, RIFLE_STOCK);
			ITEM(vn_m1a1_tommy, 575, RIFLE_STOCK);
			ITEM(vn_m1928_tommy, 600, RIFLE_STOCK);
			ITEM(vn_m1928a1_tommy, 625, RIFLE_STOCK);
		};

		class mgvn
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_dp28, 550, RIFLE_STOCK);

			ITEM(vn_rpd, 1100, RIFLE_STOCK);
			ITEM(vn_rpd_shorty_01, 1100, RIFLE_STOCK);
			ITEM(vn_rpd_shorty, 1100, RIFLE_STOCK);

			ITEM(vn_pk, 1400, RIFLE_STOCK);

			ITEM(vn_m60, 1600, RIFLE_STOCK);
			ITEM(vn_m60_shorty, 1600, RIFLE_STOCK);
			ITEM(vn_m60_shorty_camo, 1600, RIFLE_STOCK);

			ITEM(vn_m63a_cdo, 1700, RIFLE_STOCK);
			ITEM(vn_m63a_lmg, 1800, RIFLE_STOCK);
		};

		class sniperriflesvn
		{
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_m1891, 450, RIFLE_STOCK);
			ITEM(vn_m9130, 600, RIFLE_STOCK);

			ITEM(vn_sks, 1000, RIFLE_STOCK);
			ITEM(vn_sks_gl, 1075, RIFLE_STOCK);

			ITEM(vn_m40a1, 1100, RIFLE_STOCK);
			ITEM(vn_m40a1_camo, 1100, RIFLE_STOCK);

			ITEM(vn_m4956, 1300, RIFLE_STOCK);
			ITEM(vn_m4956_gl, 1375, RIFLE_STOCK);

			ITEM(vn_m14, 1400, RIFLE_STOCK);
			ITEM(vn_m14_camo, 1400, RIFLE_STOCK);
		};
		
		class riflesvn
		{
			displayName = "Rifles, Carbines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_m1carbine, 200, RIFLE_STOCK);
			ITEM(vn_m1carbine_gl, 275, RIFLE_STOCK);

			ITEM(vn_m2carbine, 350, RIFLE_STOCK);
			ITEM(vn_m2carbine_gl, 425, RIFLE_STOCK);

			ITEM(vn_m3carbine, 900, RIFLE_STOCK);

			ITEM(vn_xm177, 800, RIFLE_STOCK);
			ITEM(vn_xm177_camo, 800, RIFLE_STOCK);
			ITEM(vn_xm177_fg, 850, RIFLE_STOCK);
			ITEM(vn_xm177_short, 750, RIFLE_STOCK);
			ITEM(vn_xm177_stock, 825, RIFLE_STOCK);
			ITEM(vn_xm177_stock_camo, 825, RIFLE_STOCK);

			ITEM(vn_xm177_xm148, 1050, RIFLE_STOCK);
			ITEM(vn_xm177_xm148_camo, 1050, RIFLE_STOCK);


			ITEM(vn_m16, 1000, RIFLE_STOCK);
			ITEM(vn_m16_camo, 1000, RIFLE_STOCK);
			ITEM(vn_m16_xm148, 1250, RIFLE_STOCK);

			ITEM(vn_m63a, 1500, RIFLE_STOCK);
		};

		class launchersvn
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(vn_m72, 250, 15);

			ITEM(vn_rpg2, 500, 15);
			ITEM(vn_rpg7, 750, 15);

			ITEM(vn_sa7, 1300, 15);
			ITEM(vn_sa7b, 1600, 15);
		};

		class launchermagazinesvn
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class vn_m72_mag {
				price = 100;
				stock = 50;
			};
			class vn_sa7_mag {
				price = 300;
				stock = 50;
			};
			class vn_sa7b_mag {
				price = 500;
				stock = 50;
			};
			class vn_rpg2_mag {
				price = 100;
				stock = 50;
			};
			class vn_rpg7_mag {
				price = 200;
				stock = 50;
			};
		};

		class riflegrenadesvn
		{
			displayName = "Rifle Grenades";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class vn_22mm_m1a2_frag_mag {
				price = 75;
				stock = 50;
			};
			class vn_22mm_m17_frag_mag {
				price = 100;
				stock = 50;
			};
			class vn_22mm_m60_frag_mag {
				price = 75;
				stock = 50;
			};
			class vn_22mm_m60_heat_mag {
				price = 125;
				stock = 50;
			};
			class vn_22mm_m9_heat_mag {
				price = 150;
				stock = 50;
			};
			class vn_22mm_m19_wp_mag {
				price = 200;
				stock = 50;
			};
			class vn_22mm_cs_mag {
				price = 225;
				stock = 50;
			};
			class vn_22mm_lume_mag {
				price = 15;
				stock = 50;
			};
			class vn_22mm_m22_smoke_mag {
				price = 25;
				stock = 50;
			};
		};

		class muzzlesvn
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";
			
			ITEM(vn_s_mk22, 100, MZ_STOCK);
			ITEM(vn_s_pm, 100, MZ_STOCK);
			ITEM(vn_s_mpu, 100, MZ_STOCK);
			ITEM(vn_s_mc10, 100, MZ_STOCK);
			ITEM(vn_s_m45_camo, 100, MZ_STOCK);
			ITEM(vn_s_m45, 100, MZ_STOCK);
			ITEM(vn_s_m3a1, 100, MZ_STOCK);
			ITEM(vn_s_mat49, 100, MZ_STOCK);
			ITEM(vn_s_sten, 100, MZ_STOCK);

			ITEM(vn_s_m16, 200, MZ_STOCK);

			ITEM(vn_s_m14, 300, MZ_STOCK);
		};

		class underbarrelvn
		{
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(vn_b_camo_m9130, 10, 50);
			ITEM(vn_b_camo_m14, 10, 50);
			ITEM(vn_b_camo_m40a1, 10, 50);
		};

		class specialWeaponsvn 
		{
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_m79, 500, RIFLE_STOCK);
			ITEM(vn_m1897, 300, RIFLE_STOCK);
			ITEM(vn_mk1_udg, 200, RIFLE_STOCK);
		};

		class opticsvn 
		{
			displayName = "Optics Accessories";
			picture = "";

			class vn_o_3x_m84 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_3x_m9130 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_anpvs2_m14 {
				price = 1000;
				stock = MAGAZINE_STOCK;
			};
			class vn_o_9x_m14 {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_9x_m40a1 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class vn_o_anpvs2_m40a1 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_4x_m4956 {
				price = 450;
				stock = 100;
			};

			class vn_o_anpvs2_m16 {
				price = 1000;
				stock = 100;
			};
			class vn_o_9x_m16 {
				price = 750;
				stock = 100;
			};
			class vn_o_4x_m16 {
				price = 500;
				stock = 100;
			};
		};

		class pointersvn 
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(vn_b_carbine, 50, PN_STOCK);
			ITEM(vn_b_m14, 75, PN_STOCK);
			ITEM(vn_b_m4956, 75, PN_STOCK);
			ITEM(vn_b_sks, 65, PN_STOCK);
			ITEM(vn_b_m16, 65, PN_STOCK);
			ITEM(vn_b_type56, 65, PN_STOCK);
		};

		class magazinesvn 
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			ITEM(vn_mk1_udg_mag, 50, MZ_STOCK);
			ITEM(vn_m1897_fl_mag, 25, MZ_STOCK);
			ITEM(vn_m1897_buck_mag, 35, MZ_STOCK);
			

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			ITEM(vn_40mm_m381_he_mag, 50, MZ_STOCK);
			ITEM(vn_40mm_m406_he_mag, 75, MZ_STOCK);
			ITEM(vn_40mm_m397_ab_mag, 250, MZ_STOCK);
			ITEM(vn_40mm_m433_hedp_mag, 175, MZ_STOCK);
			ITEM(vn_40mm_m583_flare_w_mag, 35, MZ_STOCK);
			ITEM(vn_40mm_m661_flare_g_mag, 20, MZ_STOCK);
			ITEM(vn_40mm_m662_flare_r_mag, 20, MZ_STOCK);
			ITEM(vn_40mm_m695_flare_y_mag, 20, MZ_STOCK);
			ITEM(vn_40mm_m680_smoke_w_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m682_smoke_r_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m715_smoke_g_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m716_smoke_y_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m717_smoke_p_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m651_cs_mag, 75, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			ITEM(vn_m10_mag, 10, MZ_STOCK);
			ITEM(vn_welrod_mag, 10, MZ_STOCK);
			ITEM(vn_m1895_mag, 10, MZ_STOCK);
			
			ITEM(vn_m1911_mag, 15, MZ_STOCK);
			ITEM(vn_tt33_mag, 15, MZ_STOCK);
			ITEM(vn_pm_mag, 10, MZ_STOCK);

			ITEM(vn_hd_mag, 25, MZ_STOCK);
			ITEM(vn_hp_mag, 35, MZ_STOCK);

			ITEM(vn_mk22_mag, 30, MZ_STOCK);
			ITEM(vn_vz61_mag, 30, MZ_STOCK);
			ITEM(vn_vz61_t_mag, 30, MZ_STOCK);

			ITEM(vn_m712_mag, 30, MZ_STOCK);

			ITEM(vn_izh54_so_mag, 20, MZ_STOCK);

			ITEM(vn_ppsh41_35_mag, 50, MZ_STOCK);
			ITEM(vn_ppsh41_35_t_mag, 60, MZ_STOCK);
			ITEM(vn_ppsh41_71_mag, 110, MZ_STOCK);
			ITEM(vn_ppsh41_71_t_mag, 125, MZ_STOCK);

			ITEM(vn_mc10_mag, 50, MZ_STOCK);
			ITEM(vn_mc10_t_mag, 60, MZ_STOCK);

			ITEM(vn_mpu_mag, 50, MZ_STOCK);
			ITEM(vn_mpu_t_mag, 60, MZ_STOCK);
			ITEM(vn_m3a1_mag, 50, MZ_STOCK);
			ITEM(vn_m3a1_t_mag, 60, MZ_STOCK);

			ITEM(vn_mat49_mag, 50, MZ_STOCK);
			ITEM(vn_mat49_t_mag, 60, MZ_STOCK);

			ITEM(vn_m45_mag, 50, MZ_STOCK);
			ITEM(vn_m45_t_mag, 60, MZ_STOCK);

			ITEM(vn_pps_mag,75, MZ_STOCK);
			ITEM(vn_pps_t_mag, 85, MZ_STOCK);

			ITEM(vn_sten_mag, 75, MZ_STOCK);
			ITEM(vn_sten_t_mag, 85, MZ_STOCK);

			ITEM(vn_m1a1_20_mag, 50, MZ_STOCK);
			ITEM(vn_m1a1_20_t_mag, 65, MZ_STOCK);
			ITEM(vn_m1a1_30_mag, 75, MZ_STOCK);
			ITEM(vn_m1a1_30_t_mag, 85, MZ_STOCK);
			ITEM(vn_m1928_mag, 100, MZ_STOCK);
			ITEM(vn_m1928_t_mag, 110, MZ_STOCK);

			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			ITEM(vn_dp28_mag, 125, MZ_STOCK);

			ITEM(vn_m63a_100_mag, 200, MZ_STOCK);
			ITEM(vn_m63a_100_t_mag, 210, MZ_STOCK);

			ITEM(vn_rpd_100_mag, 150, MZ_STOCK);
			ITEM(vn_rpd_125_mag, 175, MZ_STOCK);

			ITEM(vn_m60_100_mag, 200, MZ_STOCK);
			ITEM(vn_pk_100_mag, 200, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Rifles
			///////////////////////////////////////////////////////
			ITEM(vn_carbine_15_mag, 25, MZ_STOCK);
			ITEM(vn_carbine_15_t_mag, 35, MZ_STOCK);

			ITEM(vn_carbine_30_mag, 55, MZ_STOCK);
			ITEM(vn_carbine_30_t_mag, 70, MZ_STOCK);

			ITEM(vn_m16_20_mag, 100, MZ_STOCK);
			ITEM(vn_m16_20_t_mag, 110, MZ_STOCK);

			ITEM(vn_m16_30_mag, 135, MZ_STOCK);
			ITEM(vn_m16_30_t_mag, 150, MZ_STOCK);

			ITEM(vn_m16_40_mag, 200, MZ_STOCK);
			ITEM(vn_m16_40_t_mag, 215, MZ_STOCK);

			ITEM(vn_m63a_30_mag, 135, MZ_STOCK);
			ITEM(vn_m63a_30_t_mag, 150, MZ_STOCK);

			ITEM(vn_type56_mag, 150, MZ_STOCK);
			ITEM(vn_type56_t_mag, 165, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Sniper Rifles
			///////////////////////////////////////////////////////
			ITEM(vn_m14_10_mag, 125, MZ_STOCK);
			ITEM(vn_m14_10_t_mag, 135, MZ_STOCK);

			ITEM(vn_sks_mag, 75, MZ_STOCK);
			ITEM(vn_sks_t_mag, 85, MZ_STOCK);
			
			ITEM(vn_m4956_10_mag, 100, MZ_STOCK);
			ITEM(vn_m4956_10_t_mag, 115, MZ_STOCK);

			ITEM(vn_m14_mag, 165, MZ_STOCK);
			ITEM(vn_m14_t_mag, 175, MZ_STOCK);

			ITEM(vn_m40a1_mag, 75, MZ_STOCK);
			ITEM(vn_m40a1_t_mag, 85, MZ_STOCK);
		};	

		class miscvn 
		{
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(IEDUrbanSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 500, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 750, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 750, MISC_STOCK);

			ITEM(DemoCharge_Remote_Mag, 250, MISC_STOCK);
			ITEM(SatchelCharge_Remote_Mag, 500, MISC_STOCK);
		};

		class handgunsvnur
		{
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(vn_welrod, 100, PISTOL_STOCK);
			ITEM(vn_m10, 75, PISTOL_STOCK);
			ITEM(vn_m1895, 100, PISTOL_STOCK);

			ITEM(vn_pm, 125, PISTOL_STOCK);
			ITEM(vn_fkb1_pm, 150, PISTOL_STOCK);
			
			ITEM(vn_tt33, 175, PISTOL_STOCK);
			ITEM(vn_m1911, 175, PISTOL_STOCK);
			ITEM(vn_mx991_m1911, 200, PISTOL_STOCK);
			ITEM(uns_coltcmdr, 215, PISTOL_STOCK);

			ITEM(vn_m712, 225, PISTOL_STOCK);

			ITEM(vn_hp, 225, PISTOL_STOCK);

			ITEM(vn_hd, 300, PISTOL_STOCK);

			ITEM(vn_mk22, 350, PISTOL_STOCK);

			ITEM(vn_vz61_p, 500, PISTOL_STOCK);

			ITEM(vn_izh54_shorty, 250, PISTOL_STOCK);

			ITEM(vn_m79_p, 750, PISTOL_STOCK);
		};

		class smgvnur
		{
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_vz61, 200, RIFLE_STOCK);
			ITEM(vn_mc10, 200, RIFLE_STOCK);
			ITEM(vn_mpu, 225, RIFLE_STOCK);
			ITEM(uns_uzi, 175, RIFLE_STOCK);
			ITEM(uns_uzif, 175, RIFLE_STOCK);

			ITEM(uns_f1_smg, 300, RIFLE_STOCK);
			ITEM(uns_Sterling_f, 300, RIFLE_STOCK);
			ITEM(uns_SterlingSD, 425, RIFLE_STOCK);
			ITEM(uns_SterlingSD_f, 425, RIFLE_STOCK);

			ITEM(uns_Sterling, 275, RIFLE_STOCK);

			ITEM(vn_mat49_f, 250, RIFLE_STOCK);
			ITEM(vn_mat49, 250, RIFLE_STOCK);
			ITEM(vn_m3a1, 250, RIFLE_STOCK);
			ITEM(uns_m50, 225, RIFLE_STOCK);
			ITEM(uns_m50f, 225, RIFLE_STOCK);

			ITEM(vn_mat49_vc, 275, RIFLE_STOCK);

			ITEM(vn_pps43, 350, RIFLE_STOCK);
			ITEM(vn_pps52, 375, RIFLE_STOCK);

			ITEM(vn_k50m, 425, RIFLE_STOCK);
			ITEM(vn_ppsh41, 475, RIFLE_STOCK);

			ITEM(vn_sten, 400, RIFLE_STOCK);

			ITEM(vn_m45, 450, RIFLE_STOCK);
			ITEM(vn_m45_fold, 450, RIFLE_STOCK);
			ITEM(vn_m45_camo, 450, RIFLE_STOCK);

			ITEM(vn_m1a1_tommy_so, 550, RIFLE_STOCK);
			ITEM(vn_m1a1_tommy, 575, RIFLE_STOCK);
			ITEM(vn_m1928_tommy, 600, RIFLE_STOCK);
			ITEM(vn_m1928a1_tommy, 625, RIFLE_STOCK);
		};

		class mgvnur
		{
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(uns_bar, 400, RIFLE_STOCK);

			ITEM(vn_dp28, 550, RIFLE_STOCK);

			ITEM(vn_rpd, 1100, RIFLE_STOCK);
			ITEM(vn_rpd_shorty_01, 1100, RIFLE_STOCK);
			ITEM(vn_rpd_shorty, 1100, RIFLE_STOCK);

			ITEM(vn_pk, 1400, RIFLE_STOCK);

			ITEM(uns_m1919a6, 1200, RIFLE_STOCK);

			ITEM(vn_m60, 1600, RIFLE_STOCK);
			ITEM(vn_m60_shorty, 1600, RIFLE_STOCK);
			ITEM(vn_m60_shorty_camo, 1600, RIFLE_STOCK);

			ITEM(vn_m63a_cdo, 1700, RIFLE_STOCK);
			ITEM(vn_m63a_lmg, 1800, RIFLE_STOCK);
		};

		class sniperriflesvnur
		{
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(uns_mas36short, 450, RIFLE_STOCK);
			ITEM(uns_mas36, 500, RIFLE_STOCK);
			ITEM(uns_mas36short_gl, 525, RIFLE_STOCK);
			ITEM(uns_mas36_gl, 575, RIFLE_STOCK);

			ITEM(vn_m1891, 450, RIFLE_STOCK);
			ITEM(vn_m9130, 600, RIFLE_STOCK);

			ITEM(uns_kar98k, 650, RIFLE_STOCK);

			ITEM(uns_m1903, 600, RIFLE_STOCK);

			ITEM(uns_type99, 750, RIFLE_STOCK);
			ITEM(uns_type99_gl, 825, RIFLE_STOCK);
			
			ITEM(uns_m1garand, 875, RIFLE_STOCK);
			ITEM(uns_m1garand_gl, 950, RIFLE_STOCK);

			ITEM(vn_sks, 1000, RIFLE_STOCK);
			ITEM(vn_sks_gl, 1075, RIFLE_STOCK);

			ITEM(uns_svt, 1100, RIFLE_STOCK);

			ITEM(vn_m40a1, 1100, RIFLE_STOCK);
			ITEM(vn_m40a1_camo, 1100, RIFLE_STOCK);

			ITEM(uns_model70_iron, 1000, RIFLE_STOCK);

			ITEM(vn_m4956, 1300, RIFLE_STOCK);
			ITEM(vn_m4956_gl, 1375, RIFLE_STOCK);

			ITEM(vn_m14, 1400, RIFLE_STOCK);
			ITEM(vn_m14_camo, 1400, RIFLE_STOCK);

			ITEM(uns_l2a1_shorty, 1550, RIFLE_STOCK);
			ITEM(uns_l1a1, 1600, RIFLE_STOCK);
			ITEM(uns_l1a1_enfield, 1600, RIFLE_STOCK);
			ITEM(uns_l2a1, 1750, RIFLE_STOCK);
			ITEM(uns_l1a1gl, 1850, RIFLE_STOCK);
		};
		
		class riflesvnur
		{
			displayName = "Rifles, Carbines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_m1carbine, 200, RIFLE_STOCK);
			ITEM(vn_m1carbine_gl, 275, RIFLE_STOCK);

			ITEM(vn_m2carbine, 350, RIFLE_STOCK);
			ITEM(vn_m2carbine_gl, 425, RIFLE_STOCK);

			ITEM(vn_m3carbine, 900, RIFLE_STOCK);

			ITEM(vn_xm177, 800, RIFLE_STOCK);
			ITEM(vn_xm177_camo, 800, RIFLE_STOCK);
			ITEM(vn_xm177_fg, 850, RIFLE_STOCK);
			ITEM(vn_xm177_short, 750, RIFLE_STOCK);
			ITEM(vn_xm177_stock, 825, RIFLE_STOCK);
			ITEM(vn_xm177_stock_camo, 825, RIFLE_STOCK);

			ITEM(vn_xm177_xm148, 1050, RIFLE_STOCK);
			ITEM(vn_xm177_xm148_camo, 1050, RIFLE_STOCK);

			ITEM(vn_m16, 1000, RIFLE_STOCK);
			ITEM(vn_m16_camo, 1000, RIFLE_STOCK);
			ITEM(vn_m16_xm148, 1250, RIFLE_STOCK);

			ITEM(vn_m63a, 1500, RIFLE_STOCK);

			ITEM(uns_t233, 1750, RIFLE_STOCK);

			ITEM(vn_type56, 1000, RIFLE_STOCK);

			ITEM(uns_ak47, 1200, RIFLE_STOCK);
			ITEM(uns_ak47_52, 1200, RIFLE_STOCK);

			ITEM(uns_aks47, 1200, RIFLE_STOCK);
			ITEM(uns_aks47f, 1200, RIFLE_STOCK);

			ITEM(uns_akm, 1500, RIFLE_STOCK);
			ITEM(uns_akm_drum, 1600, RIFLE_STOCK);

			ITEM(uns_sa58p, 1500, RIFLE_STOCK);
			ITEM(uns_sa58p_camo, 1500, RIFLE_STOCK);
			ITEM(uns_sa58v, 1500, RIFLE_STOCK);
			ITEM(uns_sa58vf, 1500, RIFLE_STOCK);
			
			ITEM(uns_akms, 1500, RIFLE_STOCK);
			ITEM(uns_akmsf, 1500, RIFLE_STOCK);
			ITEM(uns_akms_drum, 1600, RIFLE_STOCK);
			ITEM(uns_akmsf_drum, 1600, RIFLE_STOCK);
		};

		class launchersvnur
		{
			displayName = "Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(vn_m72, 250, 15);

			ITEM(uns_m20_bazooka, 350, 15);

			ITEM(vn_rpg2, 500, 15);
			ITEM(vn_rpg7, 750, 15);

			ITEM(vn_sa7, 1300, 15);
			ITEM(vn_sa7b, 1600, 15);
		};

		class launchermagazinesvnur
		{
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class vn_m72_mag {
				price = 100;
				stock = 50;
			};
			class vn_sa7_mag {
				price = 300;
				stock = 50;
			};
			class vn_sa7b_mag {
				price = 500;
				stock = 50;
			};
			class vn_rpg2_mag {
				price = 100;
				stock = 50;
			};
			class vn_rpg7_mag {
				price = 200;
				stock = 50;
			};

			class uns_M28A2_mag {
				price = 100;
				stock = 50;
			};
			class uns_M30_smoke_mag {
				price = 150;
				stock = 50;
			};
		};

		class riflegrenadesvnur
		{
			displayName = "Rifle Grenades";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Uns_1Rnd_30mm_FRAG {
				price = 50;
				stock = 50;
			};

			class vn_22mm_m1a2_frag_mag {
				price = 75;
				stock = 50;
			};
			class vn_22mm_m17_frag_mag {
				price = 100;
				stock = 50;
			};
			class vn_22mm_m60_frag_mag {
				price = 75;
				stock = 50;
			};
			class vn_22mm_m60_heat_mag {
				price = 125;
				stock = 50;
			};
			class vn_22mm_m9_heat_mag {
				price = 150;
				stock = 50;
			};
			class vn_22mm_m19_wp_mag {
				price = 200;
				stock = 50;
			};
			class vn_22mm_cs_mag {
				price = 225;
				stock = 50;
			};
			class vn_22mm_lume_mag {
				price = 15;
				stock = 50;
			};
			class vn_22mm_m22_smoke_mag {
				price = 25;
				stock = 50;
			};

			class Uns_1Rnd_22mm_FRAG {
				price = 100;
				stock = 50;
			};
			class Uns_1Rnd_22mm_AT {
				price = 125;
				stock = 50;
			};
			class Uns_1Rnd_22mm_WP {
				price = 200;
				stock = 50;
			};
			class uns_1Rnd_22mm_lume {
				price = 15;
				stock = 50;
			};
			class Uns_1Rnd_22mm_smoke {
				price = 25;
				stock = 50;
			};
		};

		class muzzlesvnur
		{
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";
			
			ITEM(vn_s_mk22, 100, MZ_STOCK);
			ITEM(vn_s_pm, 100, MZ_STOCK);
			ITEM(vn_s_mpu, 100, MZ_STOCK);
			ITEM(vn_s_mc10, 100, MZ_STOCK);
			ITEM(vn_s_m45_camo, 100, MZ_STOCK);
			ITEM(vn_s_m45, 100, MZ_STOCK);
			ITEM(vn_s_m3a1, 100, MZ_STOCK);
			ITEM(vn_s_mat49, 100, MZ_STOCK);
			ITEM(vn_s_sten, 100, MZ_STOCK);

			ITEM(vn_s_m16, 200, MZ_STOCK);

			ITEM(vn_s_m14, 300, MZ_STOCK);
			ITEM(uns_s_M14, 300, MZ_STOCK);

			ITEM(uns_s_PBS1, 400, MZ_STOCK);
		};

		class underbarrelvnur
		{
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(vn_b_camo_m9130, 10, 50);
			ITEM(vn_b_camo_m14, 10, 50);
			ITEM(vn_b_camo_m40a1, 10, 50);
			ITEM(uns_b_m70_camo, 10, 50);
		};

		class specialWeaponsvnur
		{
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(vn_m79, 500, RIFLE_STOCK);
			ITEM(vn_m1897, 350, RIFLE_STOCK);
			ITEM(uns_ithaca37_grip, 150, RIFLE_STOCK);
			ITEM(uns_ithaca37, 200, RIFLE_STOCK);
			ITEM(vn_mk1_udg, 200, RIFLE_STOCK);

			ITEM(uns_ex41, 800, RIFLE_STOCK);
		};

		class opticsvnur
		{
			displayName = "Optics Accessories";
			picture = "";

			class uns_o_Akatihi4x {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class uns_o_RedfieldART_m70 {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			class uns_o_zf41 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class uns_o_Unertl8x_m70 {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class uns_o_Unertl8x {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class uns_o_M84 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_3x_m84 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_3x_m9130 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_anpvs2_m14 {
				price = 1000;
				stock = MAGAZINE_STOCK;
			};
			class vn_o_9x_m14 {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_9x_m40a1 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class vn_o_anpvs2_m40a1 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class vn_o_4x_m4956 {
				price = 450;
				stock = 100;
			};

			class vn_o_anpvs2_m16 {
				price = 1000;
				stock = 100;
			};
			class vn_o_9x_m16 {
				price = 750;
				stock = 100;
			};
			class vn_o_4x_m16 {
				price = 500;
				stock = 100;
			};
		};

		class pointersvnur
		{
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(vn_b_carbine, 50, PN_STOCK);
			ITEM(vn_b_m14, 75, PN_STOCK);
			ITEM(vn_b_m4956, 75, PN_STOCK);
			ITEM(vn_b_sks, 65, PN_STOCK);
			ITEM(vn_b_m16, 65, PN_STOCK);
			ITEM(vn_b_type56, 65, PN_STOCK);

			ITEM(uns_b_type30, 50, PN_STOCK);
			ITEM(uns_b_mas49, 75, PN_STOCK);
			ITEM(uns_b_m1,75,PN_STOCK);
			ITEM(b_kar_m1884,75,PN_STOCK);
			ITEM(uns_b_spike17, 75, PN_STOCK);
			ITEM(uns_b_6H3, 75, PN_STOCK);
		};

		class magazinesvnur
		{
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			ITEM(vn_mk1_udg_mag, 50, MZ_STOCK);
			ITEM(vn_m1897_fl_mag, 25, MZ_STOCK);
			ITEM(vn_m1897_buck_mag, 35, MZ_STOCK);
			
			ITEM(uns_12gaugemag_4, 25, MZ_STOCK);
			ITEM(uns_12gaugemag_4f, 35, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			ITEM(vn_40mm_m381_he_mag, 50, MZ_STOCK);
			ITEM(vn_40mm_m406_he_mag, 75, MZ_STOCK);
			ITEM(vn_40mm_m397_ab_mag, 250, MZ_STOCK);
			ITEM(vn_40mm_m433_hedp_mag, 175, MZ_STOCK);
			ITEM(vn_40mm_m583_flare_w_mag, 35, MZ_STOCK);
			ITEM(vn_40mm_m661_flare_g_mag, 20, MZ_STOCK);
			ITEM(vn_40mm_m662_flare_r_mag, 20, MZ_STOCK);
			ITEM(vn_40mm_m695_flare_y_mag, 20, MZ_STOCK);
			ITEM(vn_40mm_m680_smoke_w_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m682_smoke_r_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m715_smoke_g_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m716_smoke_y_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m717_smoke_p_mag, 30, MZ_STOCK);
			ITEM(vn_40mm_m651_cs_mag, 75, MZ_STOCK);

			ITEM(uns_ChnLk_he, 300, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			ITEM(vn_m10_mag, 10, MZ_STOCK);
			ITEM(vn_welrod_mag, 10, MZ_STOCK);
			ITEM(vn_m1895_mag, 10, MZ_STOCK);
			
			ITEM(vn_m1911_mag, 15, MZ_STOCK);
			ITEM(vn_tt33_mag, 15, MZ_STOCK);
			ITEM(vn_pm_mag, 10, MZ_STOCK);

			ITEM(vn_hd_mag, 25, MZ_STOCK);
			ITEM(vn_hp_mag, 35, MZ_STOCK);

			ITEM(vn_mk22_mag, 30, MZ_STOCK);
			ITEM(vn_vz61_mag, 30, MZ_STOCK);
			ITEM(vn_vz61_t_mag, 30, MZ_STOCK);

			ITEM(vn_m712_mag, 30, MZ_STOCK);

			ITEM(vn_izh54_so_mag, 20, MZ_STOCK);

			ITEM(vn_ppsh41_35_mag, 50, MZ_STOCK);
			ITEM(vn_ppsh41_35_t_mag, 60, MZ_STOCK);
			ITEM(vn_ppsh41_71_mag, 110, MZ_STOCK);
			ITEM(vn_ppsh41_71_t_mag, 125, MZ_STOCK);

			ITEM(vn_mc10_mag, 50, MZ_STOCK);
			ITEM(vn_mc10_t_mag, 60, MZ_STOCK);

			ITEM(uns_32Rnd_uzi, 50, MZ_STOCK);
			ITEM(uns_32Rnd_uzi_pa, 50, MZ_STOCK);

			ITEM(vn_mpu_mag, 50, MZ_STOCK);
			ITEM(vn_mpu_t_mag, 60, MZ_STOCK);
			ITEM(vn_m3a1_mag, 50, MZ_STOCK);
			ITEM(vn_m3a1_t_mag, 60, MZ_STOCK);

			ITEM(uns_m50mag, 50, MZ_STOCK);
			ITEM(uns_f1_smg_mag, 65, MZ_STOCK);

			ITEM(vn_mat49_mag, 50, MZ_STOCK);
			ITEM(vn_mat49_t_mag, 60, MZ_STOCK);

			ITEM(uns_mk4mag, 45, MZ_STOCK);
			ITEM(uns_mk4mag_T, 65, MZ_STOCK);

			ITEM(vn_m45_mag, 50, MZ_STOCK);
			ITEM(vn_m45_t_mag, 60, MZ_STOCK);

			ITEM(vn_pps_mag,75, MZ_STOCK);
			ITEM(vn_pps_t_mag, 85, MZ_STOCK);

			ITEM(vn_sten_mag, 75, MZ_STOCK);
			ITEM(vn_sten_t_mag, 85, MZ_STOCK);

			ITEM(vn_m1a1_20_mag, 50, MZ_STOCK);
			ITEM(vn_m1a1_20_t_mag, 65, MZ_STOCK);
			ITEM(vn_m1a1_30_mag, 75, MZ_STOCK);
			ITEM(vn_m1a1_30_t_mag, 85, MZ_STOCK);
			ITEM(vn_m1928_mag, 100, MZ_STOCK);
			ITEM(vn_m1928_t_mag, 110, MZ_STOCK);

			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			ITEM(uns_barmag, 10, MZ_STOCK);
			ITEM(uns_barmag_T, 125, MZ_STOCK);
			ITEM(uns_barmag_NT, 125, MZ_STOCK);

			ITEM(vn_dp28_mag, 125, MZ_STOCK);

			ITEM(vn_m63a_100_mag, 200, MZ_STOCK);
			ITEM(vn_m63a_100_t_mag, 210, MZ_STOCK);

			ITEM(vn_rpd_100_mag, 150, MZ_STOCK);
			ITEM(vn_rpd_125_mag, 175, MZ_STOCK);

			ITEM(vn_m60_100_mag, 200, MZ_STOCK);
			ITEM(vn_pk_100_mag, 200, MZ_STOCK);

			ITEM(uns_100Rnd_m1919, 200, MZ_STOCK);
			ITEM(uns_250Rnd_m1919, 550, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Rifles
			///////////////////////////////////////////////////////
			ITEM(vn_carbine_15_mag, 25, MZ_STOCK);
			ITEM(vn_carbine_15_t_mag, 35, MZ_STOCK);

			ITEM(vn_carbine_30_mag, 55, MZ_STOCK);
			ITEM(vn_carbine_30_t_mag, 70, MZ_STOCK);

			ITEM(vn_m16_20_mag, 100, MZ_STOCK);
			ITEM(vn_m16_20_t_mag, 110, MZ_STOCK);

			ITEM(vn_m16_30_mag, 135, MZ_STOCK);
			ITEM(vn_m16_30_t_mag, 150, MZ_STOCK);

			ITEM(vn_m16_40_mag, 200, MZ_STOCK);
			ITEM(vn_m16_40_t_mag, 215, MZ_STOCK);

			ITEM(uns_40Rnd_556x45_t223, 200, MZ_STOCK);
			ITEM(uns_40Rnd_556x45_t223_T, 215, MZ_STOCK);

			ITEM(vn_m63a_30_mag, 135, MZ_STOCK);
			ITEM(vn_m63a_30_t_mag, 150, MZ_STOCK);

			ITEM(vn_type56_mag, 150, MZ_STOCK);
			ITEM(vn_type56_t_mag, 165, MZ_STOCK);

			ITEM(uns_sa58mag, 150, MZ_STOCK);
			ITEM(uns_sa58mag_T, 155, MZ_STOCK);
			ITEM(uns_sa58mag_NT, 165, MZ_STOCK);

			ITEM(uns_ak47mag, 150, MZ_STOCK);
			ITEM(uns_ak47mag_NT, 155, MZ_STOCK);
			ITEM(uns_ak47mag_T, 165, MZ_STOCK);


			ITEM(uns_75Rnd_akdr, 350, MZ_STOCK);

			///////////////////////////////////////////////////////
			// Sniper Rifles
			///////////////////////////////////////////////////////
			ITEM(vn_m14_10_mag, 125, MZ_STOCK);
			ITEM(vn_m14_10_t_mag, 135, MZ_STOCK);

			ITEM(uns_svtmag, 100, MZ_STOCK);
			ITEM(uns_svtmag_T, 110, MZ_STOCK);

			ITEM(vn_sks_mag, 75, MZ_STOCK);
			ITEM(vn_sks_t_mag, 85, MZ_STOCK);

			ITEM(uns_m1garandmag, 100, MZ_STOCK);
			ITEM(uns_m1garandmag_T, 110, MZ_STOCK);
			
			ITEM(vn_m4956_10_mag, 100, MZ_STOCK);
			ITEM(vn_m4956_10_t_mag, 115, MZ_STOCK);

			ITEM(vn_m14_mag, 165, MZ_STOCK);
			ITEM(vn_m14_t_mag, 175, MZ_STOCK);

			ITEM(uns_l1a1mag, 175, MZ_STOCK);
			ITEM(uns_l1a1mag_NT, 180, MZ_STOCK);
			ITEM(uns_l1a1mag_T, 185, MZ_STOCK);

			ITEM(uns_mas36mag, 50, MZ_STOCK);
			ITEM(uns_mas36mag_T, 65, MZ_STOCK);

			ITEM(uns_type99mag, 50, MZ_STOCK);
			ITEM(uns_type99mag_T, 65, MZ_STOCK);

			ITEM(uns_springfieldmag, 50, MZ_STOCK);
			ITEM(uns_springfieldmag_T, 65, MZ_STOCK);

			ITEM(vn_m40a1_mag, 75, MZ_STOCK);
			ITEM(vn_m40a1_t_mag, 85, MZ_STOCK);

			ITEM(uns_model70mag, 75, MZ_STOCK);
			ITEM(uns_model70mag_T, 85, MZ_STOCK);
		};
	};

	class stores 
	{
		class vanilla 
		{
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsVanilla", 
				"launchersVanilla", 
				"riflesVanilla", 
				"sniperRiflesVanilla", 
				"mgVanilla",
				"smgVanilla", 
				"launcherMagazinesVanilla", 
				"magazinesVanilla", 
				"opticsVanilla", 
				"muzzlesVanilla", 
				"underbarrelVanilla", 
				"pointersVanilla", 
				"navigationVanilla", 
				"miscVanilla"
			};
		};

		class globmobaaf 
		{
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsVanilla", 
				"launchersGmAaf", 
				"riflesGmAaf", 
				"sniperRiflesGmAaf", 
				"mgGmAaf",
				"smgGmAaf", 
				"launcherMagazinesGmAaf", 
				"magazinesGmAaf", 
				"opticsGmAaf", 
				"muzzlesGmAaf", 
				"underbarrelVanilla", 
				"pointersGmAaf", 
				"navigationVanilla", 
				"miscVanilla"
			};
		};

		class aegis 
		{
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsAegis", 
				"launchersAegis", 
				"riflesAegis", 
				"sniperRiflesAegis", 
				"mgAegis",
				"smgAegis", 
				"launcherMagazinesVanilla", 
				"magazinesAegis", 
				"opticsVanilla", 
				"muzzlesVanilla", 
				"underbarrelVanilla", 
				"pointersVanilla", 
				"navigationVanilla", 
				"miscVanilla"
			};
		};

		class rhs 
		{
			displayName = "Arms Dealer Store";
			categories[] = {
			"handgunsRhs", 
			"launchersRhs", 
			"riflesRhs", 
			"sniperRiflesRhs", 
			"specialWeaponsRhs",
			"mgRhs", 
			"smgRhs", 
			"launcherMagazinesRhs", 
			"magazinesRhs", 
			"opticsRhs", 
			"muzzlesRhs", 
			"underbarrelRhs", 
			"pointersRhs", 
			"navigationRhs", 
			"miscRhs"
			};
		};

		class 3cbf 
		{
			displayName = "Arms Dealer Store";
			categories[] = {
			"handguns3cbf", 
			"launchers3cbf", 
			"rifles3cbf", 
			"sniperRifles3cbf", 
			"specialWeaponsRhs",
			"mg3cbf", 
			"smg3cbf", 
			"launcherMagazinesRhs", 
			"magazinesRhs",
			"additionalMuzzles3cbf",
			"additionalScopes3cbf",
			"additionalMagazines3cbf",
			"opticsRhs", 
			"muzzlesRhs", 
			"underbarrelRhs", 
			"pointersRhs", 
			"navigationRhs", 
			"miscRhs"
			};
		};

		class 3cbfcw
		{
			displayName = "Arms Dealer Store";
			categories[] = {
			"handguns3cbfcw",
			"smg3cbfcw",
			"rifles3cbfcw",
			"sniperRifles3cbfcw",
			"mg3cbfcw",
			"specialWeapons3cbfcw",
			"launchers3cbf",
			"launcherMagazines3cbfcw",
			"navigation3cbfcw",
			"underbarrel3cbfcw",
			"pointers3cbfcw",
			"muzzles3cbfcw",
			"optics3cbfcw",
			"magazines3cbfcw",
			"misc3cbfcw"
			};
		};

		class vn
		{
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsvn",
				"smgvn",
				"mgvn",
				"riflesvn",
				"sniperriflesvn",
				"launchersvn",
				"specialWeaponsvn",
				"launchermagazinesvn",
				"riflegrenadesvn",
				"muzzlesvn",
				"pointersvn",
				"opticsvn",
				"underbarrelvn",
				"magazinesvn",
				"miscvn"
			};
		};

		class vnur
		{
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsvnur",
				"smgvnur",
				"mgvnur",
				"riflesvnur",
				"sniperriflesvnur",
				"launchersvnur",
				"specialWeaponsvnur",
				"launchermagazinesvnur",
				"riflegrenadesvnur",
				"muzzlesvnur",
				"pointersvnur",
				"opticsvnur",
				"underbarrelvnur",
				"magazinesvnur",
				"miscvn"
			};
		};

		class cup 
		{
			displayName = "Arms Dealer Store";
			categories[] = {
			"handgunsCup", 
			"launchersCup", 
			"riflesCup", 
			"sniperRiflesCup",
			"specialWeaponsCup", 
			"mgCup", 
			"smgCup", 
			"launcherMagazinesCup", 
			"magazinesCup", 
			"opticsCup", 
			"muzzlesCup", 
			"underbarrelCup", 
			"pointersCup", 
			"navigationCup", 
			"miscCup"
			};
		};
	};
};

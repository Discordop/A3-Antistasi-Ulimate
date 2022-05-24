class commanderMenu 
{
	idd = 60000;
	movingenable = false;
	onLoad = "['on'] call SCRT_fnc_ui_toggleMenuBlur";
	onUnload = "isMenuOpen = false; closeDialog 0; ['off'] call SCRT_fnc_ui_toggleMenuBlur; [] spawn SCRT_fnc_ui_dispose;";
	
	class Controls 
	{
		class commanderMenuTitle: TextBase
		{
			idc = 1050;
			text = "Commander Menu";
			x = "safezoneX + (1 * pixelGridNoUIScale * pixelW)";
			y = "safezoneY + (4 * pixelGridNoUIScale * pixelH)";	
			w = "24 * pixelGridNoUIScale * pixelW";
			h = "4 * pixelGridNoUIScale * pixelH";
			sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 2.5) * 0.5";
			shadow = 2;
		};	

		class background: TextBase 
		{
			idc = 1051;
			x = "safezoneX + (0 * pixelGridNoUIScale * pixelW)";
			y = "safezoneY + (8 * pixelGridNoUIScale * pixelH)";
			w = "24 * pixelGridNoUIScale * pixelW";
			h = "safezoneH - (18 * pixelGridNoUIScale * pixelH)";
			colorBackground[] = { 0.1, 0.1, 0.1, 0.6 };
			text = "";
		};

		class messageBoxTitle: TextBase {
			idc = 1055;	
			x = "safezoneX + (25 * pixelGridNoUIScale * pixelW)";
			y = "(safezoneY + safezoneH) - (10 * pixelGridNoUIScale * pixelH)";
			w = "safezoneW - (32 * pixelGridNoUIScale * pixelW)";	
			h = "2 * pixelGridNoUIScale * pixelH";
			text = "";
			size = "((pixelH * (pixelGridNoUIScale) * 2) * 3) * 0.5";
		};

		class messageBoxText: TextBase
		{
			idc = 1056;
			type = CT_STRUCTURED_TEXT;
			font = "PuristaLight";
			text = "";
			x = "safezoneX + (25 * pixelGridNoUIScale * pixelW)";
			y = "(safezoneY + safezoneH) - (8 * pixelGridNoUIScale * pixelH)";
			w = "safezoneW - (32 * pixelGridNoUIScale * pixelW)";	
			h = "6 * pixelGridNoUIScale * pixelH";
			size = "((pixelH * (pixelGridNoUIScale) * 2) * 1.5) * 0.5";
		};

		class mapContainer: RscMapControl
		{			
			idc = 1000;			
			x = "safezoneX + (24 * pixelGridNoUIScale * pixelW)";
			y = "safezoneY + (8 * pixelGridNoUIScale * pixelH)";
			w = "safezoneW";
			h = "safezoneH - (18 * pixelGridNoUIScale * pixelH)";
		};	

		class tabSelectorTitle: headerBase
		{
			idc = 1101;			
			style = ST_CENTER;
			text = "SUPPORT"; //--- ToDo: Localize;						
			x = "safezoneX + (0 * pixelGridNoUIScale * pixelW)";
			y = "safezoneY + (8 * pixelGridNoUIScale * pixelH)";
			w = "24 * pixelGridNoUIScale * pixelW";	
			h = "3 * pixelGridNoUIScale * pixelH";			
			sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.5) * 0.5";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",1};
		};		
		
		class tabSelectorLeftButton: ButtonBase
		{			
			idc = 1150;
			text = "<";
			x = "safezoneX + (0 * pixelGridNoUIScale * pixelW)";
			y = "safezoneY + (8 * pixelGridNoUIScale * pixelH)";
			w = "2.5 * pixelGridNoUIScale * pixelW";	
			h = "3 * pixelGridNoUIScale * pixelH";
			sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 2) * 0.5";
			action = "[60000,'LEFT'] spawn SCRT_fnc_ui_changeTab; [] spawn SCRT_fnc_ui_clearSupport; [] call SCRT_fnc_ui_clearOutpost;";
		};

		class tabSelectorRightButton: ButtonBase
		{			
			idc = 1151;
			text = ">";
			x = "safezoneX + (21.5 * pixelGridNoUIScale * pixelW)";
			y = "safezoneY + (8 * pixelGridNoUIScale * pixelH)";
			w = "2.5 * pixelGridNoUIScale * pixelW";	
			h = "3 * pixelGridNoUIScale * pixelH";
			sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 2) * 0.5";	
			action = "[60000,'RIGHT'] spawn SCRT_fnc_ui_changeTab; [] spawn SCRT_fnc_ui_clearSupport; [] call SCRT_fnc_ui_clearOutpost;";
		};					
		
		// SUPPORT
		class SupportTab: RscControlsGroup 
		{
			idc = 1140;			
			x = safezoneX;
			y = "safezoneY + (12 * pixelGridNoUIScale * pixelH)";
			w = "26 * pixelGridNoUIScale * pixelW";			
			h = "safezoneH - (12 * pixelGridNoUIScale * pixelH)";

			class Controls 
			{	
				class commanderDescriptionTitle: TextBase
				{
					idc = 1700;
					text = "Commander Abilities";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "0 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class commanderDescriptionText: TextBaseMT
				{
					idc = 1701;			
					text = "Select support type, click on desired position on the map and press Launch. Some call-ins require at least 1 captured airport. Support points will gain automatically starting War Level 2.";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "2 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "5 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class supportTypeComboBox: BaseComboBox
				{
					idc = 1750;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "7.5 * pixelGridNoUIScale * pixelH";					
					w = "22 * pixelGridNoUIScale * pixelW";
					h = "2 * pixelGridNoUIScale * pixelH";	
					onLBSelChanged = "[] call SCRT_fnc_ui_setSupportCostText; [] spawn SCRT_fnc_ui_clearSupport;";
				};

				class costsText: TextBase
				{
					idc = 1751;
					text = "Costs";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "10.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class supportPointsText: TextBase
				{
					idc = 1702;
					text = "Available Support: ";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (32 * pixelGridNoUIScale * pixelH)";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class airstrikePointsText: TextBase
				{
					idc = 1703;
					text = "Available Airstrikes: ";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (30 * pixelGridNoUIScale * pixelH)";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class capturedAirportsText: TextBase
				{
					idc = 1704;
					text = "Captured Airports: ";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (28 * pixelGridNoUIScale * pixelH)";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};


				class SupportTabFooter: RscControlsGroupNoScrollbarsMain 
				{
					idc = 1710;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (26 * pixelGridNoUIScale * pixelH)";
					w = "24 * pixelGridNoUIScale * pixelW";	
					h = "4 * pixelGridNoUIScale * pixelH";

					class Controls 
					{
						class resetSupportButton: ButtonBase
						{			
							idc = 1711;
							text = "RESET";
							x = "0 * pixelGridNoUIScale * pixelW";
							y = 0;
							w = "9.75 * pixelGridNoUIScale * pixelW";	
							h = "3 * pixelGridNoUIScale * pixelH";
							sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";
							shadow = 2;
							action = "if(!isNil 'supportCooldown' && {supportCooldown}) then {['Support', 'Request in progress.'] call A3A_fnc_customHint;} else {[] spawn SCRT_fnc_ui_clearSupport;};";		
						};
						class launchSupport: ButtonBase
						{			
							idc = 1712;
							text = "LAUNCH";
							x = "12.25 * pixelGridNoUIScale * pixelW";
							y = 0;
							w = "9.75 * pixelGridNoUIScale * pixelW";	
							h = "3 * pixelGridNoUIScale * pixelH";
							sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
							shadow = 2;
							colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",1};
							action = "[] spawn SCRT_fnc_ui_launchSupport;";			
						};
					};
				};	
			};
		};
		
		// GARRISON
		class GarrisonTab: RscControlsGroup 
		{
			idc = 2000;			
			x = -0.4 * safezoneW + safezoneX;
			y = "safezoneY + (12 * pixelGridNoUIScale * pixelH)";
			w = "26 * pixelGridNoUIScale * pixelW";			
			h = "safezoneH - (12 * pixelGridNoUIScale * pixelH)";		
			class Controls 
			{		
				class garrisonDescriptionTitle: TextBase
				{
					idc = 2700;
					text = "Establish Outpost";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "0 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class garrisonDescriptionText: TextBaseMT
				{
					idc = 2701;			
					text = "Select outpost type, press Establish button and click on desired position on the map. Various outposts requires different amount of HR and money.";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "2 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3.5 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class garrisonTypeComboBox: BaseComboBox
				{
					idc = 2750;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "7 * pixelGridNoUIScale * pixelH";					
					w = "22 * pixelGridNoUIScale * pixelW";
					h = "2 * pixelGridNoUIScale * pixelH";	
					onLBSelChanged = "[] call SCRT_fnc_ui_setOutpostCost;";
				};

				class garrisonCostText: TextBase
				{
					idc = 2751;
					text = "Costs";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "10 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class garrisonFooter: RscControlsGroupNoScrollbarsMain 
				{
					idc = 2752;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "12.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";

					class Controls 
					{
						class establishButton: ButtonBase
						{			
							idc = 2753;
							text = "Establish";
							x = "12.25 * pixelGridNoUIScale * pixelW";
							y = 0;
							w = "9.25 * pixelGridNoUIScale * pixelW";	
							h = "3 * pixelGridNoUIScale * pixelH";
							sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
							shadow = 2;	
							action = "[] call SCRT_fnc_ui_setEstablishOutpostMode;";			
						};
					};
				};

				class garrisonSpacer: brSpacer 
				{
					idc = 2754;					
					y = "16 * pixelGridNoUIScale * pixelH";	
				};

				class disbandButton: ButtonBase
				{			
					idc = 2755;
					text = $STR_antistasi_dialogs_build_disband_units_button_text;
					tooltip = $STR_antistasi_dialogs_build_disband_units_button_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "16.5 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "[] call SCRT_fnc_ui_setDisbandMode;";
				};

				class recruitButton: ButtonBase
				{			
					idc = 2756;
					text = $STR_antistasi_dialogs_build_recruit_units_button_text;
					tooltip = $STR_antistasi_dialogs_build_recruit_units_button_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "20 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "[] call SCRT_fnc_ui_setRecruitMode;";
				};

				class garrisonSpacer1: brSpacer 
				{
					idc = 2757;					
					y = "24 * pixelGridNoUIScale * pixelH";	
				};

				class mineTypeComboBox: BaseComboBox
				{
					idc = 2758;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "24.5 * pixelGridNoUIScale * pixelH";					
					w = "22 * pixelGridNoUIScale * pixelW";
					h = "2 * pixelGridNoUIScale * pixelH";
					onLBSelChanged = "[] call SCRT_fnc_ui_setMinefieldCost;";		
				};

				class minefieldCostText: TextBase
				{
					idc = 2761;
					text = "Costs";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "27.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class mineFooter: RscControlsGroupNoScrollbarsMain 
				{
					idc = 2759;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "30 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";

					class Controls 
					{
						class minefieldButton: ButtonBase
						{			
							idc = 2760;
							text = "Create Minefield";
							x = "12.25 * pixelGridNoUIScale * pixelW";
							y = 0;
							w = "9.25 * pixelGridNoUIScale * pixelW";	
							h = "3 * pixelGridNoUIScale * pixelH";
							sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
							shadow = 2;	
							action = "[] call SCRT_fnc_ui_setMinefieldMode;";			
						};
					};
				};

				class clearMinefieldButton: ButtonBase
				{			
					idc = 2762;
					text = $STR_antistasi_dialogs_minefield_button_remove_text;
					tooltip = $STR_antistasi_dialogs_minefield_button_remove_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "34 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "closeDialog 0; closeDialog 0; ['delete'] spawn A3A_fnc_mineDialog;";
				};
			};
		};

		// HQ
		class HqTab: RscControlsGroup 
		{
			idc = 3000;			
			x = -0.4 * safezoneW + safezoneX;
			y = "safezoneY + (12 * pixelGridNoUIScale * pixelH)";
			w = "26 * pixelGridNoUIScale * pixelW";			
			h = "safezoneH - (12 * pixelGridNoUIScale * pixelH)";
			class Controls {	
				class grabButton: ButtonBase
				{			
					idc = 3100;
					text = $STR_antistasi_dialogs_hq_button_withdraw_text;
					tooltip = $STR_antistasi_dialogs_hq_button_withdraw_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "0 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "if (player == theBoss) then {[] call A3A_fnc_theBossSteal} else {[""Money Grab"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";		
				};

				class rebuildAssetsButton: ButtonBase
				{			
					idc = 3120;
					text = $STR_antistasi_dialogs_hq_button_rebuild_assets_text;
					tooltip = $STR_antistasi_dialogs_hq_button_rebuild_assets_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "4 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "[] call SCRT_fnc_ui_setRebuildAssetMode;";		
				};

				class hqSpacer1: brSpacer 
				{
					idc = 3101;					
					y = "8 * pixelGridNoUIScale * pixelH";	
				};

				class rebelSkillTitle: TextBase
				{
					idc = 3102;
					text = "FIA Skill Level: 1";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "8.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};
				
				class trainRebelButton: ButtonBase
				{			
					idc = 3103;
					text = $STR_antistasi_dialogs_hq_button_train_ai_text;
					tooltip = $STR_antistasi_dialogs_hq_button_train_ai_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "10 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "[] call A3A_fnc_FIAskillAdd";		
				};

				class rebelLoadoutButton: ButtonBase
				{			
					idc = 3104;
					text = $STR_antistasi_dialogs_hq_button_rebel_loadouts_text;
					tooltip = $STR_antistasi_dialogs_hq_button_rebel_loadouts_tooltip;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "14 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "[] call SCRT_fnc_ui_createRebelLoadoutMenu;";
				};

				class uniformRandomizeButton: RscControlsGroupNoScrollbarsMain 
				{
					idc = 5500;
					y = "18 * pixelGridNoUIScale * pixelH";
					class Controls 
					{
						class SwitchPic: switchButtonPic
						{			
							idc = 5501;
							text = "\A3\ui_f\data\igui\cfg\simpletasks\letters\r_ca.paa";
						};
						class SwitchTitle: switchButtonTitle
						{			
							idc = 5502;	
							text = "RANDOMIZE UNIFORMS";
						};
						class SwitchText: switchButtonSelect
						{			
							idc = 5503;
							text = "";
						};
						class SwitchButton: switchButton {
							idc = 5504;
							action = "['MAIN', 5500, true, 'UNIFORMRANDOMIZE'] call SCRT_fnc_ui_switchButton";
							tooltip = "Disables/Enables uniform and unarmored headgear randomization on custom rebel loadouts.";
						};
					};		
				};

				class hqSpacer2: brSpacer 
				{
					idc = 3105;					
					y = "22 * pixelGridNoUIScale * pixelH";	
				};

				class movePetrosButton: ButtonBase
				{		
					idc = 3107;
					text = $STR_antistasi_dialogs_hq_button_move_headquarters_text;
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (26 * pixelGridNoUIScale * pixelH)";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;			
					colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",1};
					tooltip = $STR_antistasi_dialogs_hq_button_move_headquarters_tooltip;
					action = "closeDialog 0; closeDialog 0; [] spawn A3A_fnc_moveHQ;";				
				};
			};
		};
		
		// ENVIRONMENT
		class EnvironmentTab: RscControlsGroup 
		{
			idc = 4000;			
			x = -0.4 * safezoneW + safezoneX;
			y = "safezoneY + (12 * pixelGridNoUIScale * pixelH)";
			w = "26 * pixelGridNoUIScale * pixelW";			
			h = "safezoneH - (12 * pixelGridNoUIScale * pixelH)";
			
			class Controls 
			{
				class envDescriptionTitle: TextBase
				{
					idc = 4010;
					text = "Environment Options";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "0 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class envDescriptionText: TextBaseMT
				{
					idc = 4011;			
					text = "Use these options to tune environmental conditions.";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "2 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3.5 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class envSpacer1: brSpacer 
				{
					idc = 4090;					
					y = "6 * pixelGridNoUIScale * pixelH";	
				};

				class fogTitle: TextBase
				{
					idc = 4040;
					text = "Fog: 0.5";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "6.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					colorText[] = {0.75,0.75,0.75,1};
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					font = "PuristaMedium";
					tooltip = "Allows to tune the fog.";
				};

				class fogSlider: SliderBase
				{
					idc = 4041;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "10 * pixelGridNoUIScale * pixelH";	
					w = "21.5 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";					
					onSliderPosChanged = "_value = ((_this select 1)/100); _rounded = [_value, 2] call BIS_fnc_cutDecimals; ((findDisplay 60000) displayCtrl 4040) ctrlSetText format ['Fog: %1', _rounded]; fogValue = [_rounded,0,0];";
				};

				class fogFooter: RscControlsGroupNoScrollbarsMain 
				{
					idc = 4110;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "12.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";

					class Controls 
					{
						class setFogButton: ButtonBase
						{			
							idc = 4112;
							text = "SET FOG";
							x = "12.25 * pixelGridNoUIScale * pixelW";
							y = 0;
							w = "9.25 * pixelGridNoUIScale * pixelW";	
							h = "3 * pixelGridNoUIScale * pixelH";
							sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
							shadow = 2;	
							action = "if(player == theBoss) then {[10, fogValue] remoteExec ['setFog',2];};";			
						};
					};
				};

				class spacer2: brSpacer 
				{
					idc = 4091;					
					y = "16 * pixelGridNoUIScale * pixelH";	
				};

				class overcastTitle: TextBase
				{
					idc = 4060;
					text = "Overcast: 0.5";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "16.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					colorText[] = {0.75,0.75,0.75,1};
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					font = "PuristaMedium";
					tooltip = "Allows to tune the overcast.";
				};

				class overcastSlider: SliderBase
				{
					idc = 4061;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "20 * pixelGridNoUIScale * pixelH";	
					w = "21.5 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";					
					onSliderPosChanged = "_value = ((_this select 1)/100); _rounded = [_value, 2] call BIS_fnc_cutDecimals; ((findDisplay 60000) displayCtrl 4060) ctrlSetText format ['Overcast: %1', _rounded]; overcastValue = _rounded;";
				};

				class overcastFooter: RscControlsGroupNoScrollbarsMain 
				{
					idc = 4062;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "22.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";

					class Controls 
					{
						class setOvercastButton: ButtonBase
						{			
							idc = 4063;
							text = "SET OVERCAST";
							x = "12.25 * pixelGridNoUIScale * pixelW";
							y = 0;
							w = "9.25 * pixelGridNoUIScale * pixelW";	
							h = "3 * pixelGridNoUIScale * pixelH";
							sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
							shadow = 2;	
							action = "if(player == theBoss) then {[] spawn {[overcastValue] call BIS_fnc_setOvercast;};};";			
						};
					};
				};

				class hqSpacer3: brSpacer 
				{
					idc = 4200;					
					y = "26 * pixelGridNoUIScale * pixelH";	
				};

				class waitButton: ButtonBase
				{			
					idc = 4212;
					text = "REST FOR 8 HOURS";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "26.5 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";	
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "[] call A3A_fnc_skiptime; closeDialog 0; closeDialog 0;";		
				};

				class clearForestButton: ButtonBase
				{			
					idc = 4213;
					text = "CLEAR HQ FOREST";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "30 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;			
					action = "[] call A3A_fnc_clearForest; closeDialog 0; closeDialog 0;";		
				};

				class clearGarbageButton: ButtonBase
				{			
					idc = 4214;
					text = "CLEAR GARBAGE";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "33.5 * pixelGridNoUIScale * pixelH";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";		
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;	
					action = "if (player == theBoss) then {closedialog 0;[] remoteExecCall [""A3A_fnc_garbageCleaner"",2]} else {[""Garbage Cleaner"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";		
				};
			};
		};

		// OPTIONS
		class GameOptionsTab: RscControlsGroup 
		{
			idc = 5000;			
			x = -0.4 * safezoneW + safezoneX;
			y = "safezoneY + (12 * pixelGridNoUIScale * pixelH)";
			w = "26 * pixelGridNoUIScale * pixelW";			
			h = "safezoneH - (12 * pixelGridNoUIScale * pixelH)";
			
			class Controls 
			{
				class globalOptionsDescriptionTitle: TextBase
				{
					idc = 5010;
					text = "Global Options";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "0 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class globalOptionsDescriptionText: TextBaseMT
				{
					idc = 5011;			
					text = "Options below affects all players.";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "2 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class envSpacer1: brSpacer 
				{
					idc = 5090;					
					y = "4 * pixelGridNoUIScale * pixelH";	
				};
				
				class maxConstructionsTitle: TextBase
				{
					idc = 5040;
					text = "Maximum Persistent Constructions: 150";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "4.25 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					colorText[] = {0.75,0.75,0.75,1};
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					font = "PuristaMedium";
					tooltip = "Allows you to set how many persistent (saveable) constructions will be allowed. Affects performance, Last In-First Out principle.";
				};

				class maxConstructionsSlider: SliderBase
				{
					idc = 5041;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "7.25 * pixelGridNoUIScale * pixelH";	
					w = "21.5 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";					
					onSliderPosChanged = "_value = round (_this select 1); ((findDisplay 60000) displayCtrl 5040) ctrlSetText format ['Maximum Persistent Constructions: %1', _value]; maxConstructions = _value; publicVariable 'maxConstructions';";
				};
				
				class spawnDistanceLimitTitle: TextBase
				{
					idc = 5060;
					text = "Maximum Spawn Distance: 1000";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "9 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					colorText[] = {0.75,0.75,0.75,1};
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					font = "PuristaMedium";
					tooltip = "Affects at which distance from player enemy will spawn. Use this with caution. Set it to lower distances if you feel Antistasi is running bad.";
				};

				class spawnDistanceLimitSlider: SliderBase
				{
					idc = 5061;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "11.75 * pixelGridNoUIScale * pixelH";	
					w = "21.5 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";					
					onSliderPosChanged = "_value = round (_this select 1); ((findDisplay 60000) displayCtrl 5060) ctrlSetText format ['Maximum Spawn Distance: %1', _value]; distanceSPWN = _value; distanceSPWN1 = distanceSPWN * 1.3; distanceSPWN2 = distanceSPWN / 2; publicVariable 'distanceSPWN';publicVariable 'distanceSPWN1';publicVariable 'distanceSPWN2';";
				};

				class aiLimitTitle: TextBase
				{
					idc = 5080;
					text = "AI Limit: 100";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "13.5 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					colorText[] = {0.75,0.75,0.75,1};
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					font = "PuristaMedium";
					tooltip = "Sets how much local and simulated AI can spawn in the map. Affects performance and AI ""intelligence"". Use with EXTREME caution, as on very high values performance may tank for everyone. This is not an exact number as vehicles and squad leaders will allways spawn.";
				};

				class aiLimitSlider: SliderBase
				{
					idc = 5081;
					x = "1.5 * pixelGridNoUIScale * pixelW";
					y = "16.25 * pixelGridNoUIScale * pixelH";	
					w = "21.5 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";					
					onSliderPosChanged = "_value = round (_this select 1); ((findDisplay 60000) displayCtrl 5080) ctrlSetText format ['AI Limit: %1', _value]; maxUnits = _value; publicVariable 'maxUnits';";
				};

				class envSpacer4: brSpacer 
				{
					idc = 5094;					
					y = "18.5 * pixelGridNoUIScale * pixelH";	
				};

				class clientOptionsDescriptionTitle: TextBase
				{
					idc = 5020;
					text = "Client-Side Options";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "19 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class clientOptionsDescriptionText: TextBaseMT
				{
					idc = 5021;			
					text = "Options below are client-side only.";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "21 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class musicSwitchButton: RscControlsGroupNoScrollbarsMain 
				{
					idc = 5100;
					y = "23 * pixelGridNoUIScale * pixelH";
					class Controls 
					{
						class SwitchPic: switchButtonPic
						{			
							idc = 5101;
							text = "\A3\ui_f\data\igui\cfg\simpleTasks\types\listen_ca.paa";
						};
						class SwitchTitle: switchButtonTitle
						{			
							idc = 5102;	
							text = "MUSIC";
						};
						class SwitchText: switchButtonSelect
						{			
							idc = 5103;
							text = "";
						};
						class SwitchButton: switchButton {
							idc = 5104;
							action = "['MAIN', 5100, true, 'MUSIC'] call SCRT_fnc_ui_switchButton";
							tooltip = "Disables/Enable situational music.";
						};
					};		
				};

				class rocketCameraSwitchButton: RscControlsGroupNoScrollbarsMain 
				{
					idc = 5200;
					y = "26.5 * pixelGridNoUIScale * pixelH";
					class Controls 
					{
						class SwitchPic: switchButtonPic
						{			
							idc = 5201;
							text = "\A3\ui_f\data\igui\cfg\simpleTasks\types\scout_ca.paa";
						};
						class SwitchTitle: switchButtonTitle
						{			
							idc = 5202;	
							text = "PROJECTILE CAMERA";
						};
						class SwitchText: switchButtonSelect
						{			
							idc = 5203;
							text = "";
						};
						class SwitchButton: switchButton {
							idc = 5204;
							action = "['MAIN', 5200, true, 'CAMERA'] call SCRT_fnc_ui_switchButton";
							tooltip = "Enables/Disables camera that follows any projectile that has been launched from missile/rocket launchers or weapon with high magnification scope (more than 8x). Use Tab key to exit camera. Experimental.";
						};
					};		
				};

				class paradropButton: RscControlsGroupNoScrollbarsMain 
				{
					idc = 5400;
					y = "30 * pixelGridNoUIScale * pixelH";
					class Controls 
					{
						class SwitchPic: switchButtonPic
						{			
							idc = 5401;
							text = "\A3\ui_f\data\igui\cfg\simpleTasks\types\land_ca.paa";
						};
						class SwitchTitle: switchButtonTitle
						{			
							idc = 5402;	
							text = "PARADROP";
						};
						class SwitchText: switchButtonSelect
						{			
							idc = 5403;
							text = "";
						};
						class SwitchButton: switchButton {
							idc = 5404;
							action = "['MAIN', 5400, true, 'PARADROP'] call SCRT_fnc_ui_switchButton";
							tooltip = "To attend in paradrop, you must be at rebel HQ and turn on this switch button to be able to be transfered to aircraft.";
						};
					};		
				};

				class envSpacer5: brSpacer 
				{
					idc = 5095;					
					y = "33.5 * pixelGridNoUIScale * pixelH";	
				};

				class saveGameButton: ButtonBase
				{		
					idc = 5300;
					text = "PERSISTENT SAVE";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (26 * pixelGridNoUIScale * pixelH)";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					shadow = 2;			
					colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",1};
					tooltip = "Use this option to save your current game. It does save the most important data in a ""Grand Theft Auto"" way. This option allows good MP save and independent saves of any version update. Vanilla saves are disabled because of lack of several features";
					action = "closeDialog 0; closeDialog 0; [] spawn A3A_fnc_persistentSave;";				
				};
			};
		};

		// INFO
		class GameInfoTab: RscControlsGroup 
		{
			idc = 6000;			
			x = -0.4 * safezoneW + safezoneX;
			y = "safezoneY + (12 * pixelGridNoUIScale * pixelH)";
			w = "26 * pixelGridNoUIScale * pixelW";			
			h = "safezoneH - (12 * pixelGridNoUIScale * pixelH)";
			
			class Controls 
			{
				class gameInfoDescriptionTitle: TextBase
				{
					idc = 6010;
					text = "Game Info";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "0 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class globalOptionsDescriptionText: TextBaseMT
				{
					idc = 6011;			
					text = "";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "2 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "6 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class serverMembersDescriptionTitle: TextBase
				{
					idc = 6012;
					text = "Server Members";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "10 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "1.5 * pixelGridNoUIScale * pixelH";
				};

				class serverMembersDescriptionText: TextBaseMT
				{
					idc = 6013;			
					text = "sample text";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "12 * pixelGridNoUIScale * pixelH";	
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "6 * pixelGridNoUIScale * pixelH";
					colorText[] = {1,1,1,0.7};
				};

				class rerollTraderButton: ButtonBase
				{		
					idc = 6014;
					text = "Redo Arms Dealer Task";
					x = "1 * pixelGridNoUIScale * pixelW";
					y = "safezoneH - (26 * pixelGridNoUIScale * pixelH)";
					w = "22 * pixelGridNoUIScale * pixelW";	
					h = "3 * pixelGridNoUIScale * pixelH";
					sizeEx = "((pixelH * (pixelGridNoUIScale) * 2) * 1.25) * 0.5";	
					fade = 0;
					shadow = 2;
					colorBackground[] = {0.376, 0.125, 0.043, 1};
					tooltip = "Rollbacks Arms Dealer's game state and allows to redo task about his whereabouts. Helps in situations when Arms Dealer stuck in some undesired location. Costs 1000€ to prevent exploiting.";
					action = "if (player == theBoss) then {[] spawn SCRT_fnc_trader_rerollTrader;} else {closeDialog 0; closeDialog 0; ['Reroll', 'Only commander can reroll arms dealer task.'] call A3A_fnc_customHint;};";			
				};
			};
		};
	};
};
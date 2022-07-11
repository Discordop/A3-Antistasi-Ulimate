class droidProduction
{
	idd = 7000;
	movingEnable = true;
	class controls
	{
		class DroidProduction_BackgroundOpaque: RscPictureMandoWorkshop
		{
			idc = 7600;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.304511 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.1852 * safezoneW;
			h = 0.319 * safezoneH;
			colorText[] = {0.25,0.25,0.25,0.6};
			colorBackground[] = {0.25,0.25,0.25,0.6};
			colorActive[] = {0.25,0.25,0.25,0.6};
		};
		
		class DroidProduction_ListUnits: RscListboxMandoWorkshop
		{
			idc = 7100;
			x = 0.3148 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0771668 * safezoneW;
			h = 0.231 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class DroidProduction_ListWeapons: RscListboxMandoWorkshop
		{
			idc = 7200;
			x = 0.402255 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0771668 * safezoneW;
			h = 0.231 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class DroidProduction_Image: RscPictureMandoWorkshop
		{
			idc = 7300;
			text = "CWDependencies\markers\mando_white.paa";
			x = 0.530867 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0668779 * safezoneW;
			h = 0.121 * safezoneH;
			colorText[] = {1,-1,-1,1};
			colorBackground[] = {-1,-1,-1,-1};
			colorActive[] = {-1,-1,-1,-1};
		};
		class DroidProduction_ImageFrame: RscFrame
		{
			idc = 7400;

			x = 0.536011 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.056589 * safezoneW;
			h = 0.099 * safezoneH;
			colorText[] = {0,-1,-1,1};
			colorBackground[] = {1,-1,-1,1};
			colorActive[] = {1,-1,-1,1};
		};
		/*
		class DroidProduction_SelectWeapon: RscButton
		{
			idc = 7300;
			text = "Select Weapon Shipment"; //--- ToDo: Localize;
			x = 0.402255 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.0771668 * safezoneW;
			h = 0.044 * safezoneH;
			onButtonDown = "_index = lbCurSel 7200; _droidType = lbData [7200, _index]; player setVariable ['weaponselection', _droidType]";
			sizeEx = 0.8 * GUI_GRID_H;
		};
		class DroidProduction_SelectUnit: RscButton
		{
			idc = 7400;
			text = "Select Droid Shipment"; //--- ToDo: Localize;
			x = 0.3148 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.0771668 * safezoneW;
			h = 0.044 * safezoneH;
			onButtonDown = "_index = lbCurSel 7100; _droidType = lbData [7100, _index]; player setVariable ['droid', _droidType]";
			sizeEx = 0.8 * GUI_GRID_H;
		};
		*/
		class DroidProduction_UnitDescription: RscTextMandoWorkshop
		{
			idc = 7500;

			text = "Shipment Description"; //--- ToDo: Localize;
			x = 0.304511 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.1852 * safezoneW;
			h = 0.066 * safezoneH;
			colorBackground[] = {0.25,0.25,0.25,1};
			sizeEx = 1.2 * GUI_GRID_H;
		};
		class DroidProduction_ShipmentAmount: RscEdit
		{
			idc = 7700;

			text = "1"; //--- ToDo: Localize;
			x = 0.304511 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.1852 * safezoneW;
			h = 0.055 * safezoneH;
			colorBackground[] = {0.25,0.25,0.25,1};
		};
		class DroidProduction_OrderNow: RscButton
		{
			idc = 7800;

			text = "Start Production"; //--- ToDo: Localize;
			x = 0.304511 * safezoneW + safezoneX;
			y = 0.698 * safezoneH + safezoneY;
			w = 0.1852 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,-1,-1,1};
			colorBackground[] = {0.25,0.25,0.25,1};
			onButtonDown = "[] call SCRT_fnc_trader_makeDroids";
			sizeEx = 2 * GUI_GRID_H;
		};
		class DroidProduction_Frame: RscFrame
		{
			idc = 7900;

			x = 0.304511 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.1852 * safezoneW;
			h = 0.495 * safezoneH;
			colorText[] = {1,-1,-1,1};
			colorBackground[] = {1,-1,-1,1};
			colorActive[] = {1,-1,-1,1};
		};

	};
};
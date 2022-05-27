class RscTitles 
{
	class Default {
       idd = -1;
       fadein = 0;
       fadeout = 0;
       duration = 0;
    };
    class H8erHUD {
        idd = 745;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration     =  10e10;
        fadein       =  0;
        fadeout      =  0;
        name = "H8erHUD";
		onLoad = "with uiNameSpace do { H8erHUD = _this select 0 }";
		class controls {
		    class structuredText {
                access = 0;
                type = 13;
                idc = 1001;
                style = 0x00;
                lineSpacing = 1;
				x = 0.103165 * safezoneW + safezoneX;
				y = 0.007996 * safezoneH + safezoneY;//0.757996
				w = 0.778208 * safezoneW;
				h = 0.0660106 * safezoneH;
                size = 0.055;//0.020
                colorBackground[] = {0,0,0,0};
                colorText[] = {0.34,0.33,0.33,0};//{1,1,1,1}
                text = "";
                font = "PuristaSemiBold";
				class Attributes {
					font = "PuristaSemiBold";
					color = "#C1C0BB";//"#FFFFFF";
					align = "CENTER";
					valign = "top";
					shadow = true;
					shadowColor = "#000000";
					underline = false;
					size = "4";//4
				};
            };
		};
	};
};

class garrisonRecruit: SimpleMenuBig 
{
	idd = 100;
	
	onUnload = "";

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_garrison_recruit_frame_text;
		};

		class riflemanButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_garrison_spawn_rifleman_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "[SDKMil] spawn A3A_fnc_garrisonAdd";
		};

		class autoriflemanButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_garrison_spawn_autorifleman_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "[SDKMG] spawn A3A_fnc_garrisonAdd";
		};

		class medicButton: SimpleButton
		{
			idc = 126;
			text = $STR_antistasi_dialogs_garrison_spawn_medic_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "[SDKMedic] spawn A3A_fnc_garrisonAdd";
		};

		class squadleaderButton: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_garrison_spawn_squad_lead_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "[SDKSL] spawn A3A_fnc_garrisonAdd";
		};
		
		class mortarButton: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_garrison_spawn_at_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "[SDKATman] spawn A3A_fnc_garrisonAdd";
		};

		class grenadierButton: SimpleButton
		{
			idc = 109;
			text = $STR_antistasi_dialogs_garrison_spawn_grenadier_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "[SDKGL] spawn A3A_fnc_garrisonAdd";
		};

		class sniperButton: SimpleButton
		{
			idc = 110;
			text = $STR_antistasi_dialogs_garrison_spawn_marksman_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "[SDKSniper] spawn A3A_fnc_garrisonAdd";
		};
	};
};

class unitRecruit: SimpleMenuBig 
{
	idd=100;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_unit_recruit_frame_text;
		};

		class riflemanButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_unit_recruit_rifleman_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "[SDKMil] spawn A3A_fnc_reinfPlayer";
		};

		class autoriflemanButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_unit_recruit_mg_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "[SDKMG] spawn A3A_fnc_reinfPlayer";
		};

		class medicButton: SimpleButton
		{
			idc = 126;
			text = $STR_antistasi_dialogs_unit_recruit_medic_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "[SDKMedic] spawn A3A_fnc_reinfPlayer";
		};

		class engineerButton: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_unit_recruit_engineer_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "[SDKEng] spawn A3A_fnc_reinfPlayer";
		};
		
		class explButton: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_unit_recruit_explosive_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "[SDKExp] spawn A3A_fnc_reinfPlayer";
		};

		class grenadierButton: SimpleButton
		{
			idc = 109;
			text = $STR_antistasi_dialogs_unit_recruit_grenadier_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "[SDKGL] spawn A3A_fnc_reinfPlayer";
		};

		class sniperButton: SimpleButton
		{
			idc = 110;
			text = $STR_antistasi_dialogs_unit_recruit_marksman_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "[SDKSniper] spawn A3A_fnc_reinfPlayer";
		};

		class atButton: SimpleButton
		{
			idc = 111;
			text = $STR_antistasi_dialogs_unit_recruit_antitank_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "[SDKATman] spawn A3A_fnc_reinfPlayer";
		};
	};
};

class missionMenu: SimpleMenuBig
{
	idd = 100;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_available_missions_frame_text;
		};

		class asButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_assassination_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""AS"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class convoyButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_convoy_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""CONVOY"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class destroyButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_destroy_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""DES"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class logButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_logistics_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""LOG"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class resButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_rescue_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""RES"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class conButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_conquest_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""CON"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class suppButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_supply_text;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "closeDialog 0;if ((player call A3A_fnc_isMember) or (!(isPlayer theBoss))) then {[""SUPP"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};
	};
};

class radioComm: SimpleMenuBigger
{
	idd=100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_battle_options_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_journal_entry_header_Features_11;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_fast_travel_tooltip;
			action = "closeDialog 0; [] spawn A3A_fnc_fastTravelRadio;";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_undercover_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_undercover_tooltip;
			action = "closeDialog 0; [] spawn A3A_fnc_goUndercover";
		};

		class l3Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_put_garage_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_put_garage_tooltip;
			action = "closeDialog 0; [cursorObject, clientOwner, call HR_GRG_dLock, player] remoteExecCall ['HR_GRG_fnc_addVehicle',2];";
		};

		class l4Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_ai_management_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_ai_management_tooltip;
			action = "if (player == leader group player) then {closeDialog 0;createDialog ""aiManagement""} else {[""AI Management"", ""Only group leaders may access to this option""] call A3A_fnc_customHint;};";
		};

		class l5Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_flip_vehicle_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_flip_vehicle_tooltip;
			action = "closeDialog 0; [] call SCRT_fnc_common_unflipVehicle";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_players_money_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_players_money_tooltip;
			action = "closeDialog 0; createDialog 'playerMoney';";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_construction_menu_frame_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_construction_tooltip;
			action = "closeDialog 0; [] call SCRT_fnc_ui_createConstructionMenu;";
		};

		class r3Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_unlock_vehicle_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_unlock_vehicle_tooltip;
			action = "closeDialog 0;[] call A3A_fnc_unlockVehicle";
		};

		class r4Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_actions_commander_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_commander_tooltip;
			action = "closeDialog 0; createDialog 'commanderComm';";
		};

		class r5Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_move_veh_title;
			x = 0.477 * safezoneW + safezoneX	;
			y = 0.682 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_move_veh_tooltip;
			action = "closeDialog 0; [cursorObject] spawn SCRT_fnc_common_moveStatic;";
		};
	};
};

class vehQuery: SimpleMenuSmall
{
	idd=100;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_add_vehicle_to_squad_frame_text;
		};

		class yesButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_generic_button_yes_text;
			tooltip = $STR_antistasi_dialogs_generic_button_yes_tooltip;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "closeDialog 0; vehQuery = true;";
		};
		
		class noButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_generic_button_no_text;
			tooltip = $STR_antistasi_dialogs_generic_button_no_tooltip;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0; vehQuery = nil;";
		};
	};
};

class constructionRemovalConfirmation: SimpleMenuSmall
{
	idd=123;
	onLoad = "";
	onUnload = "";

	class Controls
	{
		class title: SimpleTitle
		{
			idc = 1244;
			text = $STR_antistasi_dialogs_remove_construction_confirmation;
		};

		class yesButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_generic_button_yes_text;
			tooltip = $STR_antistasi_dialogs_generic_button_yes_tooltip;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			colorBackground[] = {"0.376","0.125","0.043",0.9};
			action = "closeDialog 0; removeConstruction = true;";
		};
		
		class noButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_generic_button_no_text;
			tooltip = $STR_antistasi_dialogs_generic_button_no_tooltip;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0; removeConstruction = nil;";
		};
	};
};

class aiManagement: SimpleMenuBigger 
{
	idd = -1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_ai_management_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_ai_control_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_ai_control_tooltip;
			action = "closeDialog 0; if ((count groupselectedUnits player > 0) and (count hcSelected player > 0)) exitWith {[""AI Control"", ""You must select from HC or Squad Bars, not both""] call A3A_fnc_customHint;}; if (count groupselectedUnits player == 1) then {nul = [groupselectedUnits player] execVM ""REINF\controlunit.sqf""}; if (count hcSelected player == 1) then {nul = [hcSelected player] execVM ""REINF\controlHCsquad.sqf"";};";
		};

		class l2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_ai_healing_options_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_auto_heal_tooltip;
			action = "closeDialog 0; createDialog 'aiOptionsMenu';";
		};

		class l3Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_garrison_units_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_garrison_units_tooltip;
			action = "closeDialog 0;if (count groupselectedUnits player > 0) then {nul = [groupselectedUnits player] execVM ""REINF\addToGarrison.sqf""} else {if (count (hcSelected player) > 0) then {nul = [hcSelected player] execVM ""REINF\addToGarrison.sqf""}}; if ((count groupselectedUnits player == 0) and (count hcSelected player == 0)) then {[""Garrison"", ""No units or squads selected""] call A3A_fnc_customHint;}";
		};

		class l4Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_dismiss_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_dismiss_tooltip;
			action = "closeDialog 0;if (count groupselectedUnits player > 0) then {nul = [groupselectedUnits player] execVM ""REINF\dismissPlayerGroup.sqf""} else {if (count (hcSelected player) > 0) then {nul = [hcSelected player] execVM ""REINF\dismissSquad.sqf""}}; if ((count groupselectedUnits player == 0) and (count hcSelected player == 0)) then {[""Dismiss Squad"", ""No units or squads selected""] call A3A_fnc_customHint;}";
		};

		class l5Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_arty_support_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_arty_support_tooltip;
			action = "closeDialog 0; [] spawn A3A_fnc_artySupport;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_auto_rearm_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_auto_rearm_tooltip;
			action = "closeDialog 0; if (count groupselectedUnits player == 0) then {nul = (units group player) spawn A3A_fnc_rearmCall} else {nul = (groupselectedUnits player) spawn A3A_fnc_rearmCall};";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "SITREP";
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_sitrep_tooltip;
			action = "[""stats""] call A3A_fnc_vehStats;";
		};

		class r3Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_assign_vehicle_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_assign_vehicle_tooltip;
			action = "closeDialog 0;[] call A3A_fnc_addSquadVeh;";
		};

		class r4Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_mount_veh_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_mount_veh_tooltip;
			action = "[""mount""] call A3A_fnc_vehStats";
		};

		class r5Button: SimpleButton
		{
			idc = 113;
			text = $STR_antistasi_dialogs_high_command_transfer_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_arty_high_command_transfer_tooltip;
			action = "closeDialog 0;[] call SCRT_fnc_common_hcTransfer";
		};
	};
};

class commanderComm: SimpleMenuBig
{
	idd = -1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_commander_battle_options_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_recruit_squad_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_add_recruit_squad_tooltip;
			action = "if (player == theBoss) then {closeDialog 0; [] spawn A3A_fnc_squadRecruit; } else {[""Recruit Squad"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class l2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_rally_point_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_add_rally_point_tooltip;
			action = "if (player == theBoss) then {closeDialog 0; [] call SCRT_fnc_rally_toggleRallyPoint;} else {[""Place / Remove Rally Point"", ""Only Player Commander has access to this function.""] call A3A_fnc_customHint;};";
		};

		class l3Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_share_faction_money_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_share_faction_money_tooltip;
			action = "if (player == theBoss) then {closeDialog 0; [] call SCRT_fnc_common_shareFactionMoneyWithMembers;} else {[""Share Faction Money"", ""Only Player Commander has access to this function.""] call A3A_fnc_customHint;};";
		};

		class l4Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_resign_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_resign_tooltip;
			action = "closeDialog 0; [player, cursorTarget] remoteExec ['A3A_fnc_theBossToggleEligibility', 2];";
		};

		class r1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_open_add_to_air_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_open_add_to_air_tooltip;
			action = "if (player == theBoss) then {closeDialog 0; [] call A3A_fnc_addBombRun;} else {[""Add to Air Support"", ""Only Player Commander has access to this function.""] call A3A_fnc_customHint;};";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_open_clean_garbage_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_open_clean_garbage_tooltip;
			action = "if (player == theBoss) then {closedialog 0;[] remoteExecCall [""A3A_fnc_garbageCleaner"",2]} else {[""Garbage Cleaner"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class r3Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_open_comm_menu_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_open_comm_menu_tooltip;
			action = "closeDialog 0; closeDialog 0; [] call SCRT_fnc_ui_toggleCommanderMenu;";
		};

		class r4Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_sell_vehicle_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_sell_vehicle_tooltip;
			action = "if (player == theBoss) then {closeDialog 0; [player,cursorObject] remoteExecCall [""A3A_fnc_sellVehicle"",2]} else {[""Sell Vehicle"", ""Only the Commander can sell vehicles""] call A3A_fnc_customHint;};";
		};
	};
};

class constructionMenu: SimpleMenuSmall
{
	idd = 80000;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_construction_menu_frame_text;
		};

		class buildTypeComboBox: SimpleComboBox
		{
			idc = 505;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.0296296 * safezoneH;
			onLBSelChanged = "[] call SCRT_fnc_ui_setBuildTypeCostText;";
		};

		class costsText: SimpleText
		{
			idc = 510;
			text = "";
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;	
			h = 0.0222222 * safezoneH;
		};

		class r1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_remove_construction;
			tooltip = $STR_antistasi_dialogs_remove_construction_tooltip;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;	
			colorBackground[] = {"0.376","0.125","0.043",0.9};
			action = "[] spawn SCRT_fnc_ui_prepareConstructionRemoval;";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_build;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_build_tooltip;
			action = "[] call SCRT_fnc_ui_prepareConstructionBuild;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
		};
	};
};

class squadRecruit: SimpleMenuBigger
{
	idd = 100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_recruitment_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_infantry_squad_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "closeDialog 0; [] spawn A3A_fnc_squadOptions;";
		};

		class l2Button: SimpleButton
		{
			idc = 106;
			text = $STR_antistasi_dialogs_at_team_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "closeDialog 0;[groupsSDKAT] spawn A3A_fnc_addFIAsquadHC";
		};

		class l3Button: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_sniper_team_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "closeDialog 0;[groupsSDKSniper] spawn A3A_fnc_addFIAsquadHC";
		};

		class l4Button: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_mg_team_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "closeDialog 0;[SDKMGStatic] spawn A3A_fnc_addFIAsquadHC";
		};

		class l5Button: SimpleButton
		{
			idc = 112;
			text = $STR_antistasi_dialogs_veh_crew_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			action = "closeDialog 0; [groupsSDKCrew] spawn A3A_fnc_addFIAsquadHC";
		};
		
		class r1Button: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_inf_team_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "closeDialog 0;[groupsSDKmid] spawn A3A_fnc_addFIAsquadHC";
		};

		class r2Button: SimpleButton
		{
			idc = 109;
			text = $STR_antistasi_dialogs_at_car_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "closeDialog 0;[vehSDKAT] spawn A3A_fnc_addFIAsquadHC";
		};

		class r3Button: SimpleButton
		{
			idc = 110;
			text = $STR_antistasi_dialogs_aa_car_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "closeDialog 0;[staticAAteamPlayer] spawn A3A_fnc_addFIAsquadHC";
		};

		class r4Button: SimpleButton
		{
			idc = 111;
			text = $STR_antistasi_dialogs_mortar_team_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "closeDialog 0;[SDKMortar] spawn A3A_fnc_addFIAsquadHC";
		};
		class r5Button: SimpleButton
		{
			idc = 113;
			text = $STR_antistasi_dialogs_mg_car_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			action = "closeDialog 0;[vehSDKLightArmed] spawn A3A_fnc_addFIAsquadHC";
		};
	};
};

class squadOptions: SimpleMenuSmall
{
	idd = 100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'squadRecruit';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_recruitment_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_normal_squad_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			action = "closeDialog 0; [groupsSDKSquad] spawn A3A_fnc_addFIAsquadHC;";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_engineer_squad_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			action = "closeDialog 0; [groupsSDKSquadEng] spawn A3A_fnc_addFIAsquadHC;";
		};
		
		class r1Button: SimpleButton
		{
			idc = 106;
			text = $STR_antistasi_dialogs_mg_squad_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			action = "closeDialog 0;[groupsSDKSquadSupp,'MG'] spawn A3A_fnc_addFIAsquadHC";
		};

		class r2Button: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_mortar_squad_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			action = "closeDialog 0; [groupsSDKSquadSupp,'Mortar'] spawn A3A_fnc_addFIAsquadHC;";
		};
	};
};

class playerMoney: SimpleMenuSmall
{
	idd = -1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm'";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_money_player_interaction_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_add_server_member_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_add_server_member_tooltip;
			action = "closeDialog 0; ['add'] call A3A_fnc_memberAdd;";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_remove_server_member_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_remove_server_member_tooltip;
			action = "closeDialog 0; ['remove'] call A3A_fnc_memberAdd;";
		};
		
		class r1Button: SimpleButton
		{
			idc = 106;
			text = $STR_antistasi_dialogs_donate_player_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_donate_player_title;
			action = "[true] call A3A_fnc_donateMoney;";
		};

		class r2Button: SimpleButton
		{
			idc = 308;
			text = $STR_antistasi_dialogs_donate_faction_title;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_donate_faction_tooltip;
			action = "[] call A3A_fnc_donateMoney;";
		};
	};
};

class mortarType: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm'";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_barrage_strike;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "HE";
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0; typeAmmunition = SDKMortarHEMag;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "SMOKE";
			x = 0.477 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0; typeAmmunition = SDKMortarSmokeMag;";
		};
	};
};

class roundsNumber: SimpleMenuBig
{
	idd = -1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_rounds_quantity_title;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = "1";
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 1;";
		};

		class l2Button: SimpleButton
		{
			idc = 106;
			text = "3";
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 3;";
		};

		class l3Button: SimpleButton
		{
			idc = 107;
			text = "5";
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 5;";
		};

		class l4Button: SimpleButton
		{
			idc = 108;
			text = "7";
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 7;";
		};
		
		class r1Button: SimpleButton
		{
			idc = 105;
			text = "2";
			x = 0.477 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 2;";
		};

		class r2Button: SimpleButton
		{
			idc = 109;
			text = "4";
			x = 0.477 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 4;";
		};

		class r3Button: SimpleButton
		{
			idc = 110;
			text = "6";
			x = 0.477 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 6;";
		};

		class r4Button: SimpleButton
		{
			idc = 111;
			text = "8";
			x = 0.477 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			action = "closeDialog 0;roundsX = 8;";
		};
	};
};

class strikeType: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_select_strike_type;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_single_point_strike;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0;typeArty = ""NORMAL"";";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_barrage_strike;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0; typeArty = ""BARRAGE"";";
		};
	};
};

class NATOPlayer: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = "SpecOps";
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_quadbike;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0;[] call A3A_fnc_NATOQuadbike";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_journal_entry_header_Features_11;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "closeDialog 0;[] spawn A3A_fnc_NATOFT";
		};
	};
};

class vehicleBlackMarketMenu: SimpleMenuSmall
{
	idd = 90000;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_trader_black_market_title;
		};

		class vehicleTypeComboBox: SimpleComboBox
		{
			idc = 1015;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[] call SCRT_fnc_ui_setAvailableVehicleTypes;";
		};

		class vehicleComboBox: SimpleComboBox
		{
			idc = 1005;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[90000] call SCRT_fnc_ui_setVehicleCostText;";
		};

		class costsText: SimpleText
		{
			idc = 1010;
			text = $STR_antistasi_dialogs_price;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "1.5 * pixelGridNoUIScale * pixelH";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_buy;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "[] call SCRT_fnc_trader_buyBlackMarketVehicle;";
		};
	};
};

class buyVehicleMenu: SimpleMenuSmall
{
	idd = 110000;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_buy_vehicle_frame_text;
		};

		class vehicleTypeComboBox: SimpleComboBox
		{
			idc = 715;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[] call SCRT_fnc_ui_setAvailableBuyVehicleTypes;";
		};

		class vehicleComboBox: SimpleComboBox
		{
			idc = 705;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[110000] call SCRT_fnc_ui_setVehicleCostText;";
		};

		class costsText: SimpleText
		{
			idc = 710;
			text = $STR_antistasi_dialogs_price;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.388 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "1.5 * pixelGridNoUIScale * pixelH";
		};

		class noteText: SimpleTextMt
		{
			idc = -1;
			text = $STR_antistasi_dialogs_buy_vehicle_note_text;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "4.5 * pixelGridNoUIScale * pixelH";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_buy;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "[] call SCRT_fnc_ui_buyBuyVehicle;";
		};
	};
};

class rebelLoadoutMenu: SimpleMenuMedium
{
	idd = 120000;
	onUnload ="";

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.567031 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.02 * safezoneH;
			text = $STR_antistasi_dialogs_hq_button_rebel_loadouts_menu_title_text;
		};

		class l1Text: SimpleText
		{
			idc = 120001;
			text = $STR_antistasi_dialogs_rifleman_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l2Text: SimpleText
		{
			idc = 120002;
			text = $STR_antistasi_dialogs_autorifleman_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l3Text: SimpleText
		{
			idc = 120003;
			text = $STR_antistasi_dialogs_medic_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l4Text: SimpleText
		{
			idc = 120004;
			text = $STR_antistasi_dialogs_engineer_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l5Text: SimpleText
		{
			idc = 120005;
			text = $STR_antistasi_dialogs_grenadier_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l6Text: SimpleText
		{
			idc = 120006;
			text = $STR_antistasi_dialogs_marksman_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l7Text: SimpleText
		{
			idc = 120007;
			text = $STR_antistasi_dialogs_at_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l8Text: SimpleText
		{
			idc = 120008;
			text = $STR_antistasi_dialogs_crewman_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l9Text: SimpleText
		{
			idc = 120009;
			text = $STR_antistasi_dialogs_squad_leader_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l10Text: SimpleText
		{
			idc = 120010;
			text = $STR_antistasi_dialogs_demolitionist_title;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;	
			h = 0.022 * safezoneH;
		};

		class l1ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_Rifleman'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l1ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_Rifleman' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l2ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_MachineGunner'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l2ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_MachineGunner' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l3ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_medic'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l3ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_medic' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l4ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_Engineer'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l4ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_Engineer' call SCRT_fnc_arsenal_clearLoadout;";
		};
		
		class l5ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_Grenadier'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l5ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_Grenadier' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l6ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_sniper'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l6ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_sniper' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l7ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_lat'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l7ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_lat' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l8ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_staticCrew'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l8ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_staticCrew' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l9ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_SquadLeader'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l9ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_SquadLeader' call SCRT_fnc_arsenal_clearLoadout;";
		};

		class l10ArsenalButton: ArsenalButton
		{
			idc = -1;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "currentRebelLoadout = 'loadouts_reb_militia_ExplosivesExpert'; [] call JN_fnc_arsenal_handleAction;";
		};

		class l10ResetButton: ResetButton
		{
			idc = -1;
			x = 0.561875 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			action = "'loadouts_reb_militia_ExplosivesExpert' call SCRT_fnc_arsenal_clearLoadout;";
		};
	};
};


class aiOptionsMenu: SimpleMenuSmall
{
	idd=-1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_ai_healing_options_title;
		};

		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.674 * safezoneW + safezoneX;
			y = 0.223941 * safezoneH + safezoneY;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'aiManagement';";
		};

		class autoHealButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_auto_heal_title;
			x = 0.257187 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			tooltip = $STR_antistasi_dialogs_auto_heal_tooltip;
			action = "if (autoHeal) then {autoHeal = false; [""AI Auto Heal"", ""Auto Healing disabled""] call A3A_fnc_customHint;} else {autoHeal = true; [""AI Auto Heal"", ""Auto Heal enabled""] call A3A_fnc_customHint; nul = [] spawn A3A_fnc_autoHealFnc}";
		};
		
		class coverBeforeReviveButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_cover_before_revive_title;
			tooltip = $STR_antistasi_dialogs_cover_before_revive_tooltip;
			x = 0.477 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			action = "[] call SCRT_fnc_common_toggleCoverBeforeRevive";
		};
	};
};
// Real defaults are set in functions/init/fn_initParams.sqf and should match the descriptions below
// 9999 is a special value that causes that parameter to be loaded from the last save, if any
// 9998 is a reserved value and should not be used

class Params
{
    class howTo0
    {
        title = "HOW TO USE ANTISTASI PARAMETERS";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howTo1
    {
        title = "Default values will attempt to load from the save. If not found, the value in brackets will be used instead";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howTo2
    {
        title = "Setting any other value will override that parameter with the chosen value";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howTo3
    {
        title = "Note that this page does NOT know the saved values";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howToSpacer
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class loadSave
    {
        title = "Load last Persistent Save";
        values[] = {1,0};
        texts[] = {"Yes","No"};
        default = 1;
    };
    class gameMode
    {
        title = "Game Mode - Do NOT change this mid mission";
        values[] = {9999,1,2,3,4};
        texts[] = {"Load From Save (Default - Reb vs Gov vs Inv)","Reb vs Gov vs Inv","Reb vs Gov & Inv","Reb vs Gov", "Reb vs Inv"};
        default = 9999;
    };
    class autoSave
    {
        title = "Enable Autosave (every X minutes)";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - Yes)","Yes","No"};
        default = 9999;
    };
    class autoSaveInterval
    {
        title = "Time between autosaves (in minutes)";
        values[] = {9999,600,1200,1800,3600,5400};
        texts[] = {"Load From Save (Default - 60)","10","20","30","60","90"};
        default = 9999;
    };
    class membership
    {
        title = "Enable Server Membership";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - Yes)","Yes","No"};
        default = 9999;
    };
    class tkPunish
    {
        title = "Enable Teamkill Punish";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - Yes)","Yes","No"};
        default = 9999;
    };
    class mRadius
    {
        title = "Max distance from HQ for tasks";
        values[] = {9999,2000,3000,4000,6000,8000,10000,12000};
        texts[] = {"Load From Save (Default - 3000)","2000","3000","4000","6000","8000","10000","12000"};
        default = 9999;
    };
    class allowPvP
    {
        title = "Allow PvP Slots";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - Yes)","Yes","No"};
        default = 9999;
    };
    class pMarkers
    {
        title = "Allow Friendly Player Markers";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - Yes)","Yes","No"};
        default = 9999;
    };
    class AISkill
    {
        title = "Mission Difficulty";
        values[] = {9999,1,2,3};
        texts[] = {"Load From Save (Default - Normal)","Easy","Normal","Hard"};
        default = 9999;
    };
    class unlockItem
    {
        title = "Number of the same item required to unlock";
        values[] = {9999,15,20,25,30,35,40,45,50,100,200,500};
        texts[] = {"Load From Save (Default - 25)","15","20","25","30","35","40","45","50","100","200","500"};
        default = 9999;
    };
    class memberOnlyMagLimit
    {
        title = "Number of magazines needed for guests to be able to use them";
        values[] = {9999,10,20,30,40,50,60};
        texts[] = {"Load From Save (Default - 40)","10","20","30","40","50","60"};
        default = 9999;
    };
    class civTraffic
    {
        title = "Rate of Civ Traffic";
        values[] = {9999,0,1,2,4};
        texts[] = {"Load From Save (Default - Medium)","None","Low","Medium","High"};
        default = 9999;
    };
    class civPedestrians
    {
        title = "Maximum Civilian Pedestrians";
        values[] = {9999,0,3,5,10,15,20,25,30};
        texts[] = {"Load From Save (Default - 10)","0","3","5","10","15","20","25","30"};
        default = 9999;
    };
    class allowFT
    {
        title = "Fast Travel Targets Allowed";
        values[] = {9999,0,1};
        texts[] = {"Load From Save (Default - Any friendly position)","Any friendly position","Only Airports, Milbases and HQ"};
        default = 9999;
    };
    class napalmEnabled
    {
        title = "Enable Napalm Bombing";
        values[] = {9999,0,1};
        texts[] = {"Load From Save (Default - No)","No","Yes"};
        default = 9999;
    };
    class teamSwitchDelay
    {
        title = "Delay After Leaving Before a Player Can Join Another Team";
        values[] = {9999, 0, 900, 1800, 3600};
        texts[] = {"Load From Save (Default - 60 mins)","No delay","15 minutes","30 minutes","60 minutes"};
        default = 9999;
    };
    class unlockedUnlimitedAmmo
    {
        title = "Do Unlocked Weapons Automatically Unlock Their Standard Magazine?";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - No)","Yes","No"};
        default = 9999;
    };
    class allowGuidedLaunchers
    {
        title = "Should Guided Launchers become unlocked?";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - No)","Yes","No"};
        default = 9999;
    };
    class startWithLongRangeRadio
    {
        title = "[TFAR] Start with Long Range Radio?";
        values[] = {9999,1,0};
        texts[] = {"Load From Save (Default - Yes)","Yes","No"};
        default = 9999;
    };
    class helmetLossChance
    {
        title = "Chance of helmet loss on headshots";
        values[] = {9999,0,33,66,100};
        texts[] = {"Load From Save (Default - Sometimes)","Never","Sometimes","Often","Always"};
        default = 9999;
    };
    class Spacer11
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
     class Spacer60
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer61
     {
          title = "CUP SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class cupOccupantFaction
     {
          title="Select Occupant Faction";
		values[]={9999, 0, 1, 2, 3};
		texts[]={"Load From Save (Default - US Army)", "US Army", "British Armed Forces (BAF)", "Chernarus Defence Forces (CDF)", "Horizon Islands Legion (HIL)"};
		default = 9999;
     };
     class Spacer62
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer71
     {
          title = "RHS SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class rhsOccupantFaction
     {
          title="Select Occupant Faction";
		values[]={9999, 0, 1};
		texts[]={"Load From Save (Default - US Army)", "US Army", "Chernarus Defence Forces (CDF)"};
		default = 9999;
     };
     class Spacer231
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer80
     {
          title = "3CB FACTIONS SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class threecbfOccupantFaction
     {
          title="Select Occupant Faction";
		values[]={9999, 0, 1, 2, 3, 4};
		texts[]={"Load From Save (Default - US Army)", "US Army", "Chernarus Defence Forces (CDF)", "Horizon Islands Legion (HIL)", "Takistani Army (TKA)", "Cold War Mode (US Army Cold War and Red Army)"};
		default = 9999;
     };

     class Spacer72
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer51
     {
          title = "ANTISTASI PLUS SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class timeMultiplier
     {
          title="Time Multiplier";
		values[]={9999, 1, 6, 12, 24};
		texts[]={"Load From Save (Default - 1:1 (Normal))","1:1 (Normal)","1:6 (Day = 4 Hours)","1:12 (Day = 2 Hours)","1:24 (Day = 1 Hour)"};
		default = 9999;
     };
     class randomEvents
     {
          title = "Enable Random Events";
          values[] = {9999, 1, 0};
          texts[] =  {"Load From Save (Default - Yes)","Yes","No"};
          default = 9999;
     };
     class unflipPersonCount
     {
          title="How many persons required to unflip vehicle";
		values[]={9999, 1, 2, 3, 4};
		texts[]={"Load From Save (Default - 3)","1","2","3","4"};
		default = 9999;
     };
     class magRepack
     {
          title = "Enable Mag Repack";
          values[] = {9999, 1, 0};
          texts[] =  {"Load From Save (Default - Yes)", "Yes", "No"};
          default = 9999;
     };
     class playerIcons
     {
          title = "Show 3D icons above players";
          values[] = {9999, 0, 1 };
          texts[] =  {"Load From Save (Default - Only on unconscious players)", "Don't show", "Only on unconscious players"};
          default = 9999;
     };
     class fastTravelEnemyCheck
     {
          title = "Fast Travel Enemies Check";
          values[] = {9999, 1, 0};
          texts[] =  {"Load From Save (Default - Check for player only)", "Check for player only", "Check for player squad (Vanilla Antistasi Style)"};
          default = 9999;
     };
     class playerStartingMoney
     {
          title = "Initial Player Money";
          values[] = {9999, 0, 100, 200, 500, 1000};
          texts[] =  {"Load From Save (Default - 200)", "0", "100", "200", "500","1000"};
          default = 9999;
     };
     class rallyPointSpawnCount
     {
          title = "Rally Point Travel Points";
          values[] = {9999, 10, 15, 20, 30};
          texts[] =  {"Load From Save (Default - 10)", "10", "15", "20","30"};
          default = 9999;
     };
     class factionsDefeat
     {
          title = "Enemy Factions Defeat";
          values[] = {9999, 1, 0};
          texts[] =  {"Load From Save (Default - Factions can be defeated for good)", "Factions can be defeated for good", "Disable"};
          default = 9999;
     };
     class aiControlTime
     {
        title = "AI Control Time Limit";
        values[] = {9999,60,120,300,900,1800};
        texts[] = {"Load From Save (Default - 60 seconds)","1 minute","2 minutes","5 minutes","15 minutes", "30 minutes"};
        default = 9999;
     };
     class deathPenalty
     {
          title = "Player Death Penalty (How many money player will lose on death)";
          values[] = {9999, 0.15, 0.3, 0.5, 0.75, 1};
          texts[] =  {"Load From Save (Default - 30%)", "15%", "30%", "50%", "75%", "100%"};
          default = 9999;
     };
     class saveZeusBuildings
     {
          title = "Persistent Save for Zeus-placed Constructions";
          values[] = {9999, 1, 0};
          texts[] =  {"Load From Save (Default - Yes)", "Yes", "No"};
          default = 9999;
     };
     class aiAccuracyCeiling
     {
          title = "Enemy AI Maximum Accuracy";
          values[] = {9999, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1};
          texts[] =  {"Load From Save (Default - 0.5)", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"};
          default = 9999;
     };

    class Spacer0
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class AdvancedParams
    {
        title = "ADVANCED USERS ONLY";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
     class LogLevel
     {
        title = "Logging Level (Amount of detail in .rpt file)";
        values[] = {9999,1,2,3};
        texts[] = {"Load From Save (Default - Info)", "Error", "Info", "Debug"};
        default = 9999;
     };
     class SupportOptions
     {
          title = "SUPPORT OPTIONS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class allowUnfairSupports
     {
          title = "[Experimental - Use at own risk] Allow unfair supports to be used by the enemy";
          values[] = {9999, 0, 1};
          texts[] = {"Load From Save (Default - Not Allowed)", "Not allowed", "Allowed"};
          default = 9999;
     }
     class allowFuturisticSupports
     {
          title = "[Experimental - Use at own risk](Requires unfair supports) Allow futuristic supports to be used by the enemy";
          values[] = {9999, 0, 1};
          texts[] = {"Load From Save (Default - Not Allowed)", "Not allowed", "Allowed"};
          default = 9999;
     }
     class CrateOptions
     {
          title = "LOOT CRATE OPTIONS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class truelyRandomCrates
     {
          title = "[Experimental] Truely Random Crates: Remove all balance checks from Crates";
          values[] = {9999, 0, 1};
          texts[] = {"Load From Save (Default - False)", "False", "True"};
          default = 9999;
     };
     class cratePlayerScaling
     {
          title = "Decrease loot quantity as player count increases? (Yes is recommended for balance reasons)";
          values[] = {9999, 0, 1};
          texts[] = {"Load From Save (Default - True)", "False", "True"};
          default = 9999;
     };
     class crateWepTypeMax
     {
          title = "Maximum Weapon Types in Crates";
          values[] = {9999,0,2,4,6,8,12,16};
          texts[] = {"Load From Save (Default - 9)","1","3","5","7","9","13","17"};
          default = 9999;
     };
     class crateWepNumMax
     {
          title = "Maximum Weapon Quantity in Crates";
          values[] = {9999,0,1,3,5,8,10,15};
          texts[] = {"Load From Save (Default - 8)","None","1","3","5","8","10","15"};
          default = 9999;
     };
     class Spacer1
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateItemTypeMax
     {
          title = "Maximum Item Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Load From Save (Default - 5)","1","3","5","10"};
          default = 9999;
     };
     class crateItemNumMax
     {
          title = "Maximum Item Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Load From Save (Default - 5)","None","1","3","5","10","15"};
          default = 9999;
     };
     class Spacer2
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateAmmoTypeMax
     {
          title = "Maximum Ammo Types in Crates";
          values[] = {9999,0,2,4,6,9,14,19};
          texts[] = {"Load From Save (Default - 7)","1","3","5","7","10","15","20"};
          default = 9999;
     };
     class crateAmmoNumMax
     {
          title = "Maximum Ammo Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15,20,25,30};
          texts[] = {"Load From Save (Default - 20)","None","1","3","5","10","15","20","25","30"};
          default = 9999;
     };
     class Spacer3
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateExplosiveTypeMax
     {
          title = "Maximum Explosive Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Load From Save (Default - 3)","1","3","5","10"};
          default = 9999;
     };
     class crateExplosiveNumMax
     {
          title = "Maximum Explosive Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Load From Save (Default - 5)","None","1","3","5","10","15"};
          default = 9999;
     };
     class Spacer4
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateAttachmentTypeMax
     {
          title = "Maximum Attachment Types in Crates";
          values[] = {9999,0,2,4,6,9,14,19};
          texts[] = {"Load From Save (Default - 7)","1","3","5","7","10","15","20"};
          default = 9999;
     };
     class crateAttachmentNumMax
     {
          title = "Maximum Attachment Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15,20,25,30};
          texts[] = {"Load From Save (Default - 15)","None","1","3","5","10","15","20","25","30"};
          default = 9999;
     };
     class Spacer5
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateBackpackTypeMax
     {
          title = "Maximum Backpack Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Load From Save (Default - 0)","1","3","5","10"};
          default = 9999;
     };
     class crateBackpackNumMax
     {
          title = "Maximum Backpack Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Load From Save (Default - 3)","None","1","3","5","10","15"};
          default = 9999;
     };
     class Spacer6
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateVestTypeMax
     {
          title = "Maximum Vest Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Load From Save (Default - 0)","1","3","5","10"};
          default = 9999;
     };
     class crateVestNumMax
     {
          title = "Maximum Vest Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Load From Save (Default - 3)","None","1","3","5","10","15"};
          default = 9999;
     };
     class Spacer7
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateHelmetTypeMax
     {
          title = "Maximum Helmet Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Load From Save (Default - 0)","1","3","5","10"};
          default = 9999;
     };
     class crateHelmetNumMax
     {
          title = "Maximum Helmet Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Load From Save (Default - 0)","None","1","3","5","10","15"};
          default = 9999;
     };
     class Spacer8
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateDeviceTypeMax
     {
          title = "Maximum Device Backpack Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Load From Save (Default - 3)","1","3","5","10"};
          default = 9999;
     };
     class crateDeviceNumMax
     {
          title = "Maximum Device Backpack Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Load From Save (Default - 3)","None","1","3","5","10","15"};
          default = 9999;
     };
};
class SCRT 
{
    class Arsenal 
    {
		file = "SCRT\Arsenal";
        class arsenal_getSimilarWeapons {};
        class arsenal_loadoutArsenal {}; 
        class arsenal_clearLoadout {};
	};

    class Effect 
    {
		file = "SCRT\Effect";
        class effect_createBurningDebrisEffect {};
        class effect_createGasEffect {};
        class effect_createSmallExplosionEffect {};
	};

    class Encounter 
    {
        file = "SCRT\Encounter";
        class encounter_gameEventLoop {};
        class encounter_civHeli {};
        class encounter_police {};
        class encounter_vehicleMove {};
        class encounter_vehiclePatrol {};
        class encounter_postAmbush {};
    };

	class Loot 
    {
		file = "SCRT\Loot";
        class loot_gatherLoot {};
        class loot_addActionLoot {};
        class loot_removeActionLoot {};
        class loot_createLootCrate {};
        class loot_addLootCrateActions {};
	};

    class Misc 
    {
        file = "SCRT\Misc";
        class misc_getMissionTitle {};
        class misc_getWorldName {};
        class misc_getWorldPlaces {};
        class misc_showDeniedActionHint {};
        class misc_orbitingCamera {};
        class misc_followCamera {};
        class misc_projectileCamera {};
        class misc_toggleProjectileCamEventHandler {};
        class misc_updateRichPresence {};
        class misc_getAccentColor {};
        class misc_createBelonging {};
        class misc_extendPosition {};
        class misc_isInHouse {};
        class misc_getLoadoutName {};
    };

    class UI
    {
        file = "SCRT\UI";
        class ui_showDynamicTextMessage {};
        class ui_populateCommanderMenu {};
        class ui_populatePlayerMenu {};
        class ui_populateGameOptionsMenu {};
        class ui_populateHqMenu {};
        class ui_toggleMenuBlur {};
        class ui_updateSupportMenu {};
        class ui_changeTab {};
        class ui_manageSupportTabEventHandler {};
        class ui_hqTabEventHandler {};
        class ui_dispose {};
        class ui_clearSupport {};
        class ui_clearOutpost {};
        class ui_launchSupport {};
        class ui_setSupportCostText {};
        class ui_setOutpostCost {};
        class ui_setMinefieldCost {};
        class ui_switchButton {};
        class ui_getSwitchLookup {};
        class ui_showMessage {};
        class ui_setRebuildAssetMode {};
        class ui_establishOutpostEventHandler {};
        class ui_setEstablishOutpostMode {};
        class ui_setDisbandMode {};
        class ui_setRecruitMode {};
        class ui_setMinefieldMode {};
        class ui_disbandGarrisonEventHandler {};
        class ui_recruitGarrisonEventHandler {};
        class ui_minefieldEventHandler {};
        class ui_toggleCommanderMenu {};
        class ui_createConstructionMenu {};
        class ui_prepareConstructionBuild {};
        class ui_prepareConstructionRemoval {};
        class ui_setBuildTypeCostText {};
        class ui_setAvailableVehicleTypes {};
        class ui_createVehicleBlackMarketMenu {};
        class ui_setVehicleCostText {};
        class ui_createBuyVehicleMenu {};
        class ui_setAvailableBuyVehicleTypes {};
        class ui_getMarketLookup {};
        class ui_buyBuyVehicle {};
        class ui_createRebelLoadoutMenu {};
    };

    class Trader
    {
        file = "SCRT\Trader";
        class trader_prepareTraderQuest {};
        class trader_createTrader {};
        class trader_setTraderStock {};
        class trader_addVehicleMarketAction {};
        class trader_tryOpenVehicleMarketMenu {};
        class trader_removeUnlockedItemsFromStock {};
        class trader_buyBlackMarketVehicle {};
        class trader_rerollTrader {};
        class trader_setTraderDiscount {};
        class trader_tryOpenMandoWorkshopMenu {};
        class trader_getDroids {};
        class trader_makeDroids {};
    };

    class Common 
    {
        file = "SCRT\Common";
        class common_attachLightSource {};
        class common_addRandomMoneyCargo {};
        class common_addRandomMoneyMagazine {};
        class common_spawnMoneyOnGround {};
        class common_set3dIcons {};
        class common_givePrisonerReleasePaycheck {};
        class common_getNearPlayers {};
        class common_selectRandomSite {};
        class common_unflipVehicle {};
        class common_shareFactionMoneyWithMembers {};
        class common_moveStatic {};
        class common_moveObject {};
        class common_sinkShip {};
        class common_airdropCargo {};
        class common_supplyDrop {};
        class common_fillSupplyDrop {};
        class common_chemicalDamage {};
        class common_recon {};
        class common_reveal {};
        class common_panicFlee {};
        class common_scanHorizon {};
        class common_fixCupRhsLaunchers {};
        class common_defeatFactionIfPossible {};
        class common_triggerArtilleryResponseEH {};
        class common_addActionMove {};
        class common_removeActionMove {};
        class common_setUnitTraits {};
        class common_moveOutpostStatic {};
        class common_hcTransfer {};
        class common_paradropVehicle {};
        class common_toggleCoverBeforeRevive {};
    };

    class Garrison
    {
        file = "SCRT\Garrison";
        class garrison_rollOversizeGarrison {};
        class garrison_rollOversizeVehicle {};
    };

    class Rally
    {
        file = "SCRT\Rally";
        class rally_toggleRallyPoint {};
        class rally_placeRallyPoint {};
        class rally_travelToRallyPoint {};
        class rally_deleteRallyPoint {};
    };

    class Outpost
    {
        file = "SCRT\Outpost";
        class outpost_createWatchpost {};
        class outpost_createWatchpostDistance {};
        class outpost_createRoadblock {};
        class outpost_createRoadblockDistance {};
        class outpost_createAa {};
        class outpost_createAaDistance {};
        class outpost_createAt {};
        class outpost_createAtDistance {};
        class outpost_createMortar {};
        class outpost_createMortarDistance {};
        class outpost_createHmg {};
        class outpost_createHmgDistance {};
    };

    class Unit 
    {
        file = "SCRT\Unit";
        class unit_getGroupSet {};
        class unit_selectInfantryTier {};
    };

    class Quest
    {
        file = "SCRT\Quest";
        class quest_rollTask {};
    };

    class Support
    {
        file = "SCRT\Support";
        class support_planePayloadedRun {};
        class support_planeReconRun {};
        class support_chemicalBomb {};
        class support_flareBarrage {};
        class support_smokeBarrage {};
        class support_planeParadropRun {};
        class support_lootHeli {};
    };

    class Paradrop
    {
        file = "SCRT\Paradrop";
        class paradrop_getPlayersToParadrop {};
        class paradrop_prepare {};
        class paradrop_movePlayerToPlane {};
        class paradrop_jump {};
    };

    class Build
    {
        file = "SCRT\Build";
        class build_prepareAndStartConstruction {};
        class build_addConstruction {};
        class build_saveConstruction {};
        class build_updateConstruction {};
        class build_removeConstruction {};
    };

    class Civilian 
    {
        file = "SCRT\Civilian";
        class civilian_createCivilianPresence {};
        class civilian_removeCivilianPresence {};
    };
};
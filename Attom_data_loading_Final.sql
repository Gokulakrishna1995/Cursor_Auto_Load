
DECLARE @tables TABLE (
    id INT,
    TableName NVARCHAR(255));

-- Step 2: Insert data into the table variable
INSERT INTO @tables (id, TableName) VALUES
(1,'Attom_June_2024_2'),
(2,'Attom_June_2024_1'),
(3,'Attom_May_2024_4'),
(4,'Attom_May_2024_3'),
(5,'Attom_May_2024_2'),
(6,'Attom_May_2024_1'),
(7,'Attom_April_2024_3'),
(8,'Attom_April_2024_2'),
(9,'Attom_April_2024_1'),
(11,'Attom_March_2024_3'),
(12,'Attom_March_2024_2'),
(13,'Attom_March_2024_1'),
(14,'attom_feb_2024_3'),
(15,'attom_feb_2024_2'),
(16,'attom_feb_2024_1'),
(17,'attom_jan_2024_2'),
(18,'attom_jan_2024_1'),
(19,'attom_Dec_2023_4'),
(20,'attom_Dec_2023_3'),
(21,'attom_Dec_2023_2'),
(22,'attom_Dec_2023_1'),
(23,'attom_nov_2023_4'),
(24,'attom_nov_2023_3'),
(25,'attom_nov_2023_2'),
(26,'attom_nov_2023_1'),
(27,'attom_oct_2023_3'),
(28,'attom_oct_2023_2'),
(29,'attom_oct_2023_1'),
(30,'attom_sept_2023_2'),
(31,'attom_sept_2023_1'),
(32,'attom_aug_2023_2'),
(33,'attom_aug_2023_1'),
(34,'attom_july_2023_3'),
(35,'attom_july_2023_2'),
(36,'attom_july_2023_1'),
(37,'attom_june_2023_2'),
(38,'attom_june_2023_1'),
(39,'attom_may_2023_2'),
(40,'attom_may_2023_1'),
(41,'Attom_April_2023_3'),
(42,'Attom_April_2023_2'),
(43,'Attom_April_2023_1'),
(44,'attom_mar_2023_3'),
(45,'attom_mar_2023_2'),
(46,'attom_mar_2023_1'),
(47,'attom_feb_2023_3'),
(48,'attom_feb_2023_2'),
(49,'attom_feb_2023_1'),
(50,'attom_jan_2023_2'),
(51,'attom_jan_2023_3'),
(52,'attom_jan_2023_1'),
(53,'attom_may_16'),
(54,'attom_may_15'),
(55,'attom_may_14'),
(56,'attom_may_13'),
(57,'attom_may_12'),
(58,'attom_may_11'),
(59,'attom_may_10'),
(60,'attom_may_9'),
(61,'attom_may_8'),
(62,'attom_may_7'),
(63,'attom_may_6'),
(64,'attom_may_5'),
(65,'attom_may_4'),
(66,'attom_may_3'),
(67,'attom_may_2'),
(68,'attom_may_1'),
(69,'attom_june_3'),
(70,'attom_june_1'),
(71,'attom_june_2'),
(72,'attom_july_2'),
(73,'attom_july_1'),
(74,'attom_july_3'),
(75,'attom_aug_3'),
(76,'attom_aug_2'),
(77,'attom_aug_1'),
(78,'attom_sept_3'),
(79,'attom_sept_2'),
(80,'attom_sept_1'),
(81,'attom_oct_3'),
(82,'attom_oct_2'),
(83,'attom_oct_1'),
(84,'attom_nov_4'),
(85,'attom_nov_3'),
(86,'attom_nov_2'),
(87,'attom_nov_1'),
(88,'attom_dec_4'),
(89,'attom_dec_3'),
(90,'attom_dec_2'),
(91,'attom_dec_1 ');

-- Step 3: Declare variables for cursor
DECLARE @tableName NVARCHAR(255);
DECLARE @sql NVARCHAR(MAX);

-- Step 4: Declare the cursor for table names
DECLARE table_cursor CURSOR FOR
SELECT TableName FROM @tables ORDER BY id;

-- Step 5: Open the cursor
OPEN table_cursor;

-- Step 6: Fetch the first row from the cursor
FETCH NEXT FROM table_cursor INTO @tableName;

-- Step 7: Loop through the cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Step 8: Construct the dynamic SQL for each table and insert the data
    SET @sql = 'INSERT INTO All_table_data (ATTOMID,SitusStateCode,SitusCounty,PropertyJurisdictionName,SitusStateCountyFIPS,CombinedStatisticalArea,CBSAName,CBSACode,MSAName,MSACode,MetropolitanDivision,MinorCivilDivisionName,MinorCivilDivisionCode,NeighborhoodCode,CensusFIPSPlaceCode,CensusTract,CensusBlockGroup,CensusBlock,ParcelNumberRaw,ParcelNumberFormatted,ParcelNumberYearAdded,ParcelNumberAlternate,ParcelMapBook,ParcelMapPage,ParcelNumberYearChange,ParcelNumberPrevious,ParcelAccountNumber,PropertyAddressFull,PropertyAddressHouseNumber,PropertyAddressStreetDirection,PropertyAddressStreetName,PropertyAddressStreetSuffix,PropertyAddressStreetPostDirection,PropertyAddressUnitPrefix,PropertyAddressUnitValue,PropertyAddressCity,PropertyAddressState,PropertyAddressZIP,PropertyAddressZIP4,PropertyAddressCRRT,PropertyAddressInfoPrivacy,CongressionalDistrictHouse,PropertyLatitude,PropertyLongitude,GeoQuality,LegalDescription,LegalRange,LegalTownship,LegalSection,LegalQuarter,LegalQuarterQuarter,LegalSubdivision,LegalPhase,LegalTractNumber,LegalBlock1,LegalBlock2,LegalLotNumber1,LegalLotNumber2,LegalLotNumber3,LegalUnit,PartyOwner1NameFull,PartyOwner1NameFirst,PartyOwner1NameMiddle,PartyOwner1NameLast,PartyOwner1NameSuffix,TrustDescription,CompanyFlag,PartyOwner2NameFull,PartyOwner2NameFirst,PartyOwner2NameMiddle,PartyOwner2NameLast,PartyOwner2NameSuffix,OwnerTypeDescription1,OwnershipVestingRelationCode,PartyOwner3NameFull,PartyOwner3NameFirst,PartyOwner3NameMiddle,PartyOwner3NameLast,PartyOwner3NameSuffix,PartyOwner4NameFull,PartyOwner4NameFirst,PartyOwner4NameMiddle,PartyOwner4NameLast,PartyOwner4NameSuffix,OwnerTypeDescription2,ContactOwnerMailingCounty,ContactOwnerMailingFIPS,ContactOwnerMailAddressFull,ContactOwnerMailAddressHouseNumber,ContactOwnerMailAddressStreetDirection,ContactOwnerMailAddressStreetName,ContactOwnerMailAddressStreetSuffix,ContactOwnerMailAddressStreetPostDirection,ContactOwnerMailAddressUnitPrefix,ContactOwnerMailAddressUnit,ContactOwnerMailAddressCity,ContactOwnerMailAddressState,ContactOwnerMailAddressZIP,ContactOwnerMailAddressZIP4,ContactOwnerMailAddressCRRT,ContactOwnerMailAddressInfoFormat,ContactOwnerMailInfoPrivacy,StatusOwnerOccupiedFlag,DeedOwner1NameFull,DeedOwner1NameFirst,DeedOwner1NameMiddle,DeedOwner1NameLast,DeedOwner1NameSuffix,DeedOwner2NameFull,DeedOwner2NameFirst,DeedOwner2NameMiddle,DeedOwner2NameLast,DeedOwner2NameSuffix,DeedOwner3NameFull,DeedOwner3NameFirst,DeedOwner3NameMiddle,DeedOwner3NameLast,DeedOwner3NameSuffix,DeedOwner4NameFull,DeedOwner4NameFirst,DeedOwner4NameMiddle,DeedOwner4NameLast,DeedOwner4NameSuffix,TaxYearAssessed,TaxAssessedValueTotal,TaxAssessedValueImprovements,TaxAssessedValueLand,TaxAssessedImprovementsPerc,PreviousAssessedValue,TaxMarketValueYear,TaxMarketValueTotal,TaxMarketValueImprovements,TaxMarketValueLand,TaxMarketImprovementsPerc,TaxFiscalYear,TaxRateArea,TaxBilledAmount,TaxDelinquentYear,LastAssessorTaxRollUpdate,AssrLastUpdated,TaxExemptionHomeownerFlag,TaxExemptionDisabledFlag,TaxExemptionSeniorFlag,TaxExemptionVeteranFlag,TaxExemptionWidowFlag,TaxExemptionAdditional,YearBuilt,YearBuiltEffective,ZonedCodeLocal,PropertyUseMuni,PropertyUseGroup,PropertyUseStandardized,AssessorLastSaleDate,AssessorLastSaleAmount,AssessorPriorSaleDate,AssessorPriorSaleAmount,LastOwnershipTransferDate,LastOwnershipTransferDocumentNumber,LastOwnershipTransferTransactionID,DeedLastSaleDocumentBook,DeedLastSaleDocumentPage,DeedLastDocumentNumber,DeedLastSaleDate,DeedLastSalePrice,DeedLastSaleTransactionID,AreaBuilding,AreaBuildingDefinitionCode,AreaGross,Area1stFloor,Area2ndFloor,AreaUpperFloors,AreaLotAcres,AreaLotSF,AreaLotDepth,AreaLotWidth,RoomsAtticArea,RoomsAtticFlag,RoomsBasementArea,RoomsBasementAreaFinished,RoomsBasementAreaUnfinished,ParkingGarage,ParkingGarageArea,ParkingCarport,ParkingCarportArea,HVACCoolingDetail,HVACHeatingDetail,HVACHeatingFuel,UtilitiesSewageUsage,UtilitiesWaterSource,UtilitiesMobileHomeHookupFlag,Foundation,Construction,InteriorStructure,PlumbingFixturesCount,ConstructionFireResistanceClass,SafetyFireSprinklersFlag,FlooringMaterialPrimary,BathCount,BathPartialCount,BedroomsCount,RoomsCount,StoriesCount,UnitsCount,RoomsBonusRoomFlag,RoomsBreakfastNookFlag,RoomsCellarFlag,RoomsCellarWineFlag,RoomsExerciseFlag,RoomsFamilyCode,RoomsGameFlag,RoomsGreatFlag,RoomsHobbyFlag,RoomsLaundryFlag,RoomsMediaFlag,RoomsMudFlag,RoomsOfficeArea,RoomsOfficeFlag,RoomsSafeRoomFlag,RoomsSittingFlag,RoomsStormShelter,RoomsStudyFlag,RoomsSunroomFlag,RoomsUtilityArea,RoomsUtilityCode,Fireplace,FireplaceCount,AccessabilityElevatorFlag,AccessabilityHandicapFlag,EscalatorFlag,CentralVacuumFlag,ContentIntercomFlag,ContentSoundSystemFlag,WetBarFlag,SecurityAlarmFlag,StructureStyle,Exterior1Code,RoofMaterial,RoofConstruction,ContentStormShutterFlag,ContentOverheadDoorFlag,ViewDescription,PorchCode,PorchArea,PatioArea,DeckFlag,DeckArea,FeatureBalconyFlag,BalconyArea,BreezewayFlag,ParkingRVParkingFlag,ParkingSpaceCount,DrivewayArea,DrivewayMaterial,Pool,PoolArea,ContentSaunaFlag,TopographyCode,FenceCode,FenceArea,CourtyardFlag,CourtyardArea,ArborPergolaFlag,SprinklersFlag,GolfCourseGreenFlag,TennisCourtFlag,SportsCourtFlag,ArenaFlag,WaterFeatureFlag,PondFlag,BoatLiftFlag,BuildingsCount,BathHouseArea,BathHouseFlag,BoatAccessFlag,BoatHouseArea,BoatHouseFlag,CabinArea,CabinFlag,CanopyArea,CanopyFlag,GazeboArea,GazeboFlag,GraineryArea,GraineryFlag,GreenHouseArea,GreenHouseFlag,GuestHouseArea,GuestHouseFlag,KennelArea,KennelFlag,LeanToArea,LeanToFlag,LoadingPlatformArea,LoadingPlatformFlag,MilkHouseArea,MilkHouseFlag,OutdoorKitchenFireplaceFlag,PoolHouseArea,PoolHouseFlag,PoultryHouseArea,PoultryHouseFlag,QuonsetArea,QuonsetFlag,ShedArea,ShedCode,SiloArea,SiloFlag,StableArea,StableFlag,StorageBuildingArea,StorageBuildingFlag,UtilityBuildingArea,UtilityBuildingFlag,PoleStructureArea,PoleStructureFlag,CommunityRecRoomFlag,PublicationDate,ParcelShellRecord,Sourcefilename) 
                SELECT ATTOMID,SitusStateCode,SitusCounty,PropertyJurisdictionName,SitusStateCountyFIPS,CombinedStatisticalArea,CBSAName,CBSACode,MSAName,MSACode,MetropolitanDivision,MinorCivilDivisionName,MinorCivilDivisionCode,NeighborhoodCode,CensusFIPSPlaceCode,CensusTract,CensusBlockGroup,CensusBlock,ParcelNumberRaw,ParcelNumberFormatted,ParcelNumberYearAdded,ParcelNumberAlternate,ParcelMapBook,ParcelMapPage,ParcelNumberYearChange,ParcelNumberPrevious,ParcelAccountNumber,PropertyAddressFull,PropertyAddressHouseNumber,PropertyAddressStreetDirection,PropertyAddressStreetName,PropertyAddressStreetSuffix,PropertyAddressStreetPostDirection,PropertyAddressUnitPrefix,PropertyAddressUnitValue,PropertyAddressCity,PropertyAddressState,PropertyAddressZIP,PropertyAddressZIP4,PropertyAddressCRRT,PropertyAddressInfoPrivacy,CongressionalDistrictHouse,PropertyLatitude,PropertyLongitude,GeoQuality,LegalDescription,LegalRange,LegalTownship,LegalSection,LegalQuarter,LegalQuarterQuarter,LegalSubdivision,LegalPhase,LegalTractNumber,LegalBlock1,LegalBlock2,LegalLotNumber1,LegalLotNumber2,LegalLotNumber3,LegalUnit,PartyOwner1NameFull,PartyOwner1NameFirst,PartyOwner1NameMiddle,PartyOwner1NameLast,PartyOwner1NameSuffix,TrustDescription,CompanyFlag,PartyOwner2NameFull,PartyOwner2NameFirst,PartyOwner2NameMiddle,PartyOwner2NameLast,PartyOwner2NameSuffix,OwnerTypeDescription1,OwnershipVestingRelationCode,PartyOwner3NameFull,PartyOwner3NameFirst,PartyOwner3NameMiddle,PartyOwner3NameLast,PartyOwner3NameSuffix,PartyOwner4NameFull,PartyOwner4NameFirst,PartyOwner4NameMiddle,PartyOwner4NameLast,PartyOwner4NameSuffix,OwnerTypeDescription2,ContactOwnerMailingCounty,ContactOwnerMailingFIPS,ContactOwnerMailAddressFull,ContactOwnerMailAddressHouseNumber,ContactOwnerMailAddressStreetDirection,ContactOwnerMailAddressStreetName,ContactOwnerMailAddressStreetSuffix,ContactOwnerMailAddressStreetPostDirection,ContactOwnerMailAddressUnitPrefix,ContactOwnerMailAddressUnit,ContactOwnerMailAddressCity,ContactOwnerMailAddressState,ContactOwnerMailAddressZIP,ContactOwnerMailAddressZIP4,ContactOwnerMailAddressCRRT,ContactOwnerMailAddressInfoFormat,ContactOwnerMailInfoPrivacy,StatusOwnerOccupiedFlag,DeedOwner1NameFull,DeedOwner1NameFirst,DeedOwner1NameMiddle,DeedOwner1NameLast,DeedOwner1NameSuffix,DeedOwner2NameFull,DeedOwner2NameFirst,DeedOwner2NameMiddle,DeedOwner2NameLast,DeedOwner2NameSuffix,DeedOwner3NameFull,DeedOwner3NameFirst,DeedOwner3NameMiddle,DeedOwner3NameLast,DeedOwner3NameSuffix,DeedOwner4NameFull,DeedOwner4NameFirst,DeedOwner4NameMiddle,DeedOwner4NameLast,DeedOwner4NameSuffix,TaxYearAssessed,TaxAssessedValueTotal,TaxAssessedValueImprovements,TaxAssessedValueLand,TaxAssessedImprovementsPerc,PreviousAssessedValue,TaxMarketValueYear,TaxMarketValueTotal,TaxMarketValueImprovements,TaxMarketValueLand,TaxMarketImprovementsPerc,TaxFiscalYear,TaxRateArea,TaxBilledAmount,TaxDelinquentYear,LastAssessorTaxRollUpdate,AssrLastUpdated,TaxExemptionHomeownerFlag,TaxExemptionDisabledFlag,TaxExemptionSeniorFlag,TaxExemptionVeteranFlag,TaxExemptionWidowFlag,TaxExemptionAdditional,YearBuilt,YearBuiltEffective,ZonedCodeLocal,PropertyUseMuni,PropertyUseGroup,PropertyUseStandardized,AssessorLastSaleDate,AssessorLastSaleAmount,AssessorPriorSaleDate,AssessorPriorSaleAmount,LastOwnershipTransferDate,LastOwnershipTransferDocumentNumber,LastOwnershipTransferTransactionID,DeedLastSaleDocumentBook,DeedLastSaleDocumentPage,DeedLastDocumentNumber,DeedLastSaleDate,DeedLastSalePrice,DeedLastSaleTransactionID,AreaBuilding,AreaBuildingDefinitionCode,AreaGross,Area1stFloor,Area2ndFloor,AreaUpperFloors,AreaLotAcres,AreaLotSF,AreaLotDepth,AreaLotWidth,RoomsAtticArea,RoomsAtticFlag,RoomsBasementArea,RoomsBasementAreaFinished,RoomsBasementAreaUnfinished,ParkingGarage,ParkingGarageArea,ParkingCarport,ParkingCarportArea,HVACCoolingDetail,HVACHeatingDetail,HVACHeatingFuel,UtilitiesSewageUsage,UtilitiesWaterSource,UtilitiesMobileHomeHookupFlag,Foundation,Construction,InteriorStructure,PlumbingFixturesCount,ConstructionFireResistanceClass,SafetyFireSprinklersFlag,FlooringMaterialPrimary,BathCount,BathPartialCount,BedroomsCount,RoomsCount,StoriesCount,UnitsCount,RoomsBonusRoomFlag,RoomsBreakfastNookFlag,RoomsCellarFlag,RoomsCellarWineFlag,RoomsExerciseFlag,RoomsFamilyCode,RoomsGameFlag,RoomsGreatFlag,RoomsHobbyFlag,RoomsLaundryFlag,RoomsMediaFlag,RoomsMudFlag,RoomsOfficeArea,RoomsOfficeFlag,RoomsSafeRoomFlag,RoomsSittingFlag,RoomsStormShelter,RoomsStudyFlag,RoomsSunroomFlag,RoomsUtilityArea,RoomsUtilityCode,Fireplace,FireplaceCount,AccessabilityElevatorFlag,AccessabilityHandicapFlag,EscalatorFlag,CentralVacuumFlag,ContentIntercomFlag,ContentSoundSystemFlag,WetBarFlag,SecurityAlarmFlag,StructureStyle,Exterior1Code,RoofMaterial,RoofConstruction,ContentStormShutterFlag,ContentOverheadDoorFlag,ViewDescription,PorchCode,PorchArea,PatioArea,DeckFlag,DeckArea,FeatureBalconyFlag,BalconyArea,BreezewayFlag,ParkingRVParkingFlag,ParkingSpaceCount,DrivewayArea,DrivewayMaterial,Pool,PoolArea,ContentSaunaFlag,TopographyCode,FenceCode,FenceArea,CourtyardFlag,CourtyardArea,ArborPergolaFlag,SprinklersFlag,GolfCourseGreenFlag,TennisCourtFlag,SportsCourtFlag,ArenaFlag,WaterFeatureFlag,PondFlag,BoatLiftFlag,BuildingsCount,BathHouseArea,BathHouseFlag,BoatAccessFlag,BoatHouseArea,BoatHouseFlag,CabinArea,CabinFlag,CanopyArea,CanopyFlag,GazeboArea,GazeboFlag,GraineryArea,GraineryFlag,GreenHouseArea,GreenHouseFlag,GuestHouseArea,GuestHouseFlag,KennelArea,KennelFlag,LeanToArea,LeanToFlag,LoadingPlatformArea,LoadingPlatformFlag,MilkHouseArea,MilkHouseFlag,OutdoorKitchenFireplaceFlag,PoolHouseArea,PoolHouseFlag,PoultryHouseArea,PoultryHouseFlag,QuonsetArea,QuonsetFlag,ShedArea,ShedCode,SiloArea,SiloFlag,StableArea,StableFlag,StorageBuildingArea,StorageBuildingFlag,UtilityBuildingArea,UtilityBuildingFlag,PoleStructureArea,PoleStructureFlag,CommunityRecRoomFlag,PublicationDate,ParcelShellRecord, ''' + QUOTENAME(@tableName) + '''
  FROM ' + QUOTENAME(@tableName) + '
  WHERE SitusStateCountyFIPS IN (''34029'', ''34023'', ''34003'', ''34025'', ''34005'', ''34007'', ''34013'', ''34027'', ''34001'', ''34017'', ''34039'', ''34031'', ''34021'', ''34035'', ''34015'', ''34009'', ''34037'', ''34011'', ''34019'', ''34041'', ''34033'')
  AND (TaxYearAssessed =''2023'' OR  TaxYearAssessed = 2023);';

 
    -- Step 9: Execute the dynamic SQL
    EXEC sp_executesql @sql;

    -- Step 10: Fetch the next row from the cursor
    FETCH NEXT FROM table_cursor INTO @tableName;
END

-- Step 11: Clean up
CLOSE table_cursor;
DEALLOCATE table_cursor;




select  * into			LA_Attom_June_2024	from 	All_table_data				where  Sourcefilename  like  '%Attom_June_2024%'
select  * into			LA_Attom_May_2024	from 	All_table_data				where  Sourcefilename  like  '%Attom_May_2024%'
select  * into			LA_Attom_April_2024	from 	All_table_data				where  Sourcefilename  like  '%Attom_April_2024%'
select  * into			LA_Attom_March_2024	from 	All_table_data				where  Sourcefilename  like  '%Attom_March_2024%'
select  * into			LA_attom_feb_2024	from 	All_table_data				where  Sourcefilename  like  '%attom_feb_2024%'
select  * into			LA_attom_jan_2024	from 	All_table_data				where  Sourcefilename  like  '%attom_jan_2024%'
select  * into			LA_attom_Dec_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_Dec_2023%'
select  * into			LA_attom_nov_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_nov_2023%'
select  * into			LA_attom_oct_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_oct_2023%'
select  * into			LA_attom_sept_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_sept_2023%'
select  * into			LA_attom_aug_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_aug_2023%'
select  * into			LA_attom_july_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_july_2023%'
select  * into			LA_attom_june_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_june_2023%'
select  * into			LA_attom_may_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_may_2023%'
select  * into			LA_Attom_April_2023	from 	All_table_data				where  Sourcefilename  like  '%Attom_April_2023%'
select  * into			LA_attom_mar_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_mar_2023%'
select  * into			LA_attom_feb_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_feb_2023%'
select  * into			LA_attom_jan_2023	from 	All_table_data				where  Sourcefilename  like  '%attom_jan_2023%'
go
select  * into			LA_attom_may_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_may%'
select  * into			LA_attom_june_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_june%'
select  * into			LA_attom_july_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_july%'
select  * into			LA_attom_aug_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_aug%'
select  * into			LA_attom_sept_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_sept%'
select  * into			LA_attom_oct_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_oct%'
select  * into			LA_attom_nov_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_nov%'
select  * into			LA_attom_dec_2022	from 	All_table_data				where  Sourcefilename  like  '%attom_dec%'




-- Step 2: Declare a table variable to hold the list of tables
DECLARE @tables TABLE (id int,
TableName NVARCHAR(255) 
 );
INSERT INTO @tables (id,TableName) VALUES
(1,'NJ_Attom_June_2024'),
(2,'NJ_Attom_May_2024'),
(3,'NJ_Attom_April_2024'),
(4,'NJ_Attom_March_2024'),
(5,'NJ_Attom_feb_2024'),
(6,'NJ_Attom_jan_2024'),
(7,'NJ_attom_Dec_2023'),
(8,'NJ_attom_nov_2023'),
(9,'NJ_attom_OCT_2023'),
(10,'NJ_attom_sept_2023'),
(11,'NJ_attom_Aug_2023'),
(12,'NJ_attom_july_2023'),
(13,'NJ_attom_june_2023'),
(14,'NJ_attom_may_2023'),
(15,'NJ_attom_April_2023'),
(16,'NJ_attom_Mar_2023'),
(17,'NJ_attom_feb_2023'),
(18,'NJ_attom_jan_2023'),
(19,'NJ_attom_Dec_2022'),
(20,'NJ_attom_Nov_2022'),
(21,'NJ_attom_oct_2022'),
(22,'NJ_attom_sept_2022'),
(23,'NJ_attom_aug_2022'),
(24,'NJ_attom_july_2022'),
(25,'NJ_attom_june_2022'),
(26,'NJ_attom_may_2022')

-- Step 3: Declare variables for cursor
DECLARE @tableName NVARCHAR(255);
DECLARE @sql NVARCHAR(MAX);

-- Step 4: Declare the cursor for table names
DECLARE table_cursor CURSOR FOR 
SELECT TableName FROM @tables order  by  id  ;

-- Step 5: Open the cursor and fetch the first table name
OPEN table_cursor;
FETCH NEXT FROM table_cursor INTO @tableName;

-- Step 6: Loop through the table names
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Construct the dynamic SQL for inserting data into NJ_Attom_Gokul2024
    SET @sql = '
        INSERT INTO NJ_Attom_Gokul2024 (b.ATTOMID,b.SitusStateCode,b.SitusCounty,b.PropertyJurisdictionName,b.SitusStateCountyFIPS,b.CombinedStatisticalArea,b.CBSAName,b.CBSACode,b.MSAName,b.MSACode,b.MetropolitanDivision,b.MinorCivilDivisionName,b.MinorCivilDivisionCode,b.NeighborhoodCode,b.CensusFIPSPlaceCode,b.CensusTract,b.CensusBlockGroup,b.CensusBlock,b.ParcelNumberRaw,b.ParcelNumberFormatted,b.ParcelNumberYearAdded,b.ParcelNumberAlternate,b.ParcelMapBook,b.ParcelMapPage,b.ParcelNumberYearChange,b.ParcelNumberPrevious,b.ParcelAccountNumber,b.PropertyAddressFull,b.PropertyAddressHouseNumber,b.PropertyAddressStreetDirection,b.PropertyAddressStreetName,b.PropertyAddressStreetSuffix,b.PropertyAddressStreetPostDirection,b.PropertyAddressUnitPrefix,b.PropertyAddressUnitValue,b.PropertyAddressCity,b.PropertyAddressState,b.PropertyAddressZIP,b.PropertyAddressZIP4,b.PropertyAddressCRRT,b.PropertyAddressInfoPrivacy,b.CongressionalDistrictHouse,b.PropertyLatitude,b.PropertyLongitude,b.GeoQuality,b.LegalDescription,b.LegalRange,b.LegalTownship,b.LegalSection,b.LegalQuarter,b.LegalQuarterQuarter,b.LegalSubdivision,b.LegalPhase,b.LegalTractNumber,b.LegalBlock1,b.LegalBlock2,b.LegalLotNumber1,b.LegalLotNumber2,b.LegalLotNumber3,b.LegalUnit,b.PartyOwner1NameFull,b.PartyOwner1NameFirst,b.PartyOwner1NameMiddle,b.PartyOwner1NameLast,b.PartyOwner1NameSuffix,b.TrustDescription,b.CompanyFlag,b.PartyOwner2NameFull,b.PartyOwner2NameFirst,b.PartyOwner2NameMiddle,b.PartyOwner2NameLast,b.PartyOwner2NameSuffix,b.OwnerTypeDescription1,b.OwnershipVestingRelationCode,b.PartyOwner3NameFull,b.PartyOwner3NameFirst,b.PartyOwner3NameMiddle,b.PartyOwner3NameLast,b.PartyOwner3NameSuffix,b.PartyOwner4NameFull,b.PartyOwner4NameFirst,b.PartyOwner4NameMiddle,b.PartyOwner4NameLast,b.PartyOwner4NameSuffix,b.OwnerTypeDescription2,b.ContactOwnerMailingCounty,b.ContactOwnerMailingFIPS,b.ContactOwnerMailAddressFull,b.ContactOwnerMailAddressHouseNumber,b.ContactOwnerMailAddressStreetDirection,b.ContactOwnerMailAddressStreetName,b.ContactOwnerMailAddressStreetSuffix,b.ContactOwnerMailAddressStreetPostDirection,b.ContactOwnerMailAddressUnitPrefix,b.ContactOwnerMailAddressUnit,b.ContactOwnerMailAddressCity,b.ContactOwnerMailAddressState,b.ContactOwnerMailAddressZIP,b.ContactOwnerMailAddressZIP4,b.ContactOwnerMailAddressCRRT,b.ContactOwnerMailAddressInfoFormat,b.ContactOwnerMailInfoPrivacy,b.StatusOwnerOccupiedFlag,b.DeedOwner1NameFull,b.DeedOwner1NameFirst,b.DeedOwner1NameMiddle,b.DeedOwner1NameLast,b.DeedOwner1NameSuffix,b.DeedOwner2NameFull,b.DeedOwner2NameFirst,b.DeedOwner2NameMiddle,b.DeedOwner2NameLast,b.DeedOwner2NameSuffix,b.DeedOwner3NameFull,b.DeedOwner3NameFirst,b.DeedOwner3NameMiddle,b.DeedOwner3NameLast,b.DeedOwner3NameSuffix,b.DeedOwner4NameFull,b.DeedOwner4NameFirst,b.DeedOwner4NameMiddle,b.DeedOwner4NameLast,b.DeedOwner4NameSuffix,b.TaxYearAssessed,b.TaxAssessedValueTotal,b.TaxAssessedValueImprovements,b.TaxAssessedValueLand,b.TaxAssessedImprovementsPerc,b.PreviousAssessedValue,b.TaxMarketValueYear,b.TaxMarketValueTotal,b.TaxMarketValueImprovements,b.TaxMarketValueLand,b.TaxMarketImprovementsPerc,b.TaxFiscalYear,b.TaxRateArea,b.TaxBilledAmount,b.TaxDelinquentYear,b.LastAssessorTaxRollUpdate,b.AssrLastUpdated,b.TaxExemptionHomeownerFlag,b.TaxExemptionDisabledFlag,b.TaxExemptionSeniorFlag,b.TaxExemptionVeteranFlag,b.TaxExemptionWidowFlag,b.TaxExemptionAdditional,b.YearBuilt,b.
YearBuiltEffective,b.ZonedCodeLocal,b.PropertyUseMuni,b.PropertyUseGroup,b.PropertyUseStandardized,b.AssessorLastSaleDate,b.AssessorLastSaleAmount,b.AssessorPriorSaleDate,b.AssessorPriorSaleAmount,b.LastOwnershipTransferDate,b.LastOwnershipTransferDocumentNumber,b.LastOwnershipTransferTransactionID,b.DeedLastSaleDocumentBook,b.
DeedLastSaleDocumentPage,b.DeedLastDocumentNumber,b.DeedLastSaleDate,b.DeedLastSalePrice,b.DeedLastSaleTransactionID,b.AreaBuilding,b.AreaBuildingDefinitionCode,b.AreaGross,b.Area1stFloor,b.Area2ndFloor,b.AreaUpperFloors,b.AreaLotAcres,b.AreaLotSF,b.AreaLotDepth,b.AreaLotWidth,b.RoomsAtticArea,b.RoomsAtticFlag,b.RoomsBasementArea,b.RoomsBasementAreaFinished,b.RoomsBasementAreaUnfinished,b.ParkingGarage,b.ParkingGarageArea,b.ParkingCarport,b.ParkingCarportArea,b.HVACCoolingDetail,b.HVACHeatingDetail,b.HVACHeatingFuel,b.UtilitiesSewageUsage,b.UtilitiesWaterSource,b.UtilitiesMobileHomeHookupFlag,b.Foundation,b.Construction,b.InteriorStructure,b.PlumbingFixturesCount,b.ConstructionFireResistanceClass,b.SafetyFireSprinklersFlag,b.FlooringMaterialPrimary,b.BathCount,b.BathPartialCount,b.BedroomsCount,b.RoomsCount,b.StoriesCount,b.UnitsCount,b.RoomsBonusRoomFlag,b.RoomsBreakfastNookFlag,b.RoomsCellarFlag,b.RoomsCellarWineFlag,b.RoomsExerciseFlag,b.RoomsFamilyCode,b.RoomsGameFlag,b.RoomsGreatFlag,b.RoomsHobbyFlag,b.RoomsLaundryFlag,b.RoomsMediaFlag,b.RoomsMudFlag,b.RoomsOfficeArea,b.RoomsOfficeFlag,b.RoomsSafeRoomFlag,b.RoomsSittingFlag,b.RoomsStormShelter,b.RoomsStudyFlag,b.RoomsSunroomFlag,b.RoomsUtilityArea,b.RoomsUtilityCode,b.Fireplace,b.FireplaceCount,b.AccessabilityElevatorFlag,b.AccessabilityHandicapFlag,b.EscalatorFlag,b.CentralVacuumFlag,b.ContentIntercomFlag,b.ContentSoundSystemFlag,b.WetBarFlag,b.SecurityAlarmFlag,b.StructureStyle,b.Exterior1Code,b.RoofMaterial,b.RoofConstruction,b.ContentStormShutterFlag,b.ContentOverheadDoorFlag,b.ViewDescription,b.PorchCode,b.PorchArea,b.PatioArea,b.DeckFlag,b.DeckArea,b.FeatureBalconyFlag,b.BalconyArea,b.BreezewayFlag,b.ParkingRVParkingFlag,b.ParkingSpaceCount,b.DrivewayArea,b.DrivewayMaterial,b.Pool,b.PoolArea,b.ContentSaunaFlag,b.TopographyCode,b.FenceCode,b.FenceArea,b.CourtyardFlag,b.CourtyardArea,b.ArborPergolaFlag,b.SprinklersFlag,b.GolfCourseGreenFlag,b.TennisCourtFlag,b.SportsCourtFlag,b.ArenaFlag,b.WaterFeatureFlag,b.PondFlag,b.BoatLiftFlag,b.BuildingsCount,b.BathHouseArea,b.BathHouseFlag,b.BoatAccessFlag,b.BoatHouseArea,b.BoatHouseFlag,b.CabinArea,b.CabinFlag,b.CanopyArea,b.CanopyFlag,b.GazeboArea,b.GazeboFlag,b.GraineryArea,b.GraineryFlag,b.GreenHouseArea,b.GreenHouseFlag,b.GuestHouseArea,b.GuestHouseFlag,b.KennelArea,b.KennelFlag,b.LeanToArea,b.LeanToFlag,b.LoadingPlatformArea,b.LoadingPlatformFlag,b.MilkHouseArea,b.MilkHouseFlag,b.OutdoorKitchenFireplaceFlag,b.PoolHouseArea,b.PoolHouseFlag,b.PoultryHouseArea,b.PoultryHouseFlag,b.QuonsetArea,b.QuonsetFlag,b.ShedArea,b.ShedCode,b.SiloArea,b.SiloFlag,b.StableArea,b.StableFlag,b.StorageBuildingArea,b.StorageBuildingFlag,b.UtilityBuildingArea,b.UtilityBuildingFlag,b.PoleStructureArea,b.PoleStructureFlag,b.CommunityRecRoomFlag,b.
PublicationDate,b.ParcelShellRecord,b.Sourcefilename)
        SELECT 
            a.ATTOMID,a.SitusStateCode,a.SitusCounty,a.PropertyJurisdictionName,a.SitusStateCountyFIPS,a.CombinedStatisticalArea,a.CBSAName,a.CBSACode,a.MSAName,a.MSACode,a.MetropolitanDivision,a.MinorCivilDivisionName,a.MinorCivilDivisionCode,a.NeighborhoodCode,a.CensusFIPSPlaceCode,a.CensusTract,a.CensusBlockGroup,a.CensusBlock,a.ParcelNumberRaw,a.ParcelNumberFormatted,a.ParcelNumberYearAdded,a.ParcelNumberAlternate,a.ParcelMapBook,a.ParcelMapPage,a.ParcelNumberYearChange,a.ParcelNumberPrevious,a.ParcelAccountNumber,a.PropertyAddressFull,a.PropertyAddressHouseNumber,a.PropertyAddressStreetDirection,a.PropertyAddressStreetName,a.PropertyAddressStreetSuffix,a.PropertyAddressStreetPostDirection,a.PropertyAddressUnitPrefix,a.PropertyAddressUnitValue,a.PropertyAddressCity,a.PropertyAddressState,a.PropertyAddressZIP,a.PropertyAddressZIP4,a.PropertyAddressCRRT,a.PropertyAddressInfoPrivacy,a.CongressionalDistrictHouse,a.PropertyLatitude,a.PropertyLongitude,a.GeoQuality,a.LegalDescription,a.LegalRange,a.LegalTownship,a.LegalSection,a.LegalQuarter,a.LegalQuarterQuarter,a.LegalSubdivision,a.LegalPhase,a.LegalTractNumber,a.LegalBlock1,a.LegalBlock2,a.LegalLotNumber1,a.LegalLotNumber2,a.LegalLotNumber3,a.LegalUnit,a.PartyOwner1NameFull,a.PartyOwner1NameFirst,a.PartyOwner1NameMiddle,a.PartyOwner1NameLast,a.PartyOwner1NameSuffix,a.TrustDescription,a.CompanyFlag,a.PartyOwner2NameFull,a.PartyOwner2NameFirst,a.PartyOwner2NameMiddle,a.PartyOwner2NameLast,a.PartyOwner2NameSuffix,a.OwnerTypeDescription1,a.OwnershipVestingRelationCode,a.PartyOwner3NameFull,a.PartyOwner3NameFirst,a.PartyOwner3NameMiddle,a.PartyOwner3NameLast,a.PartyOwner3NameSuffix,a.PartyOwner4NameFull,a.PartyOwner4NameFirst,a.PartyOwner4NameMiddle,a.PartyOwner4NameLast,a.PartyOwner4NameSuffix,a.OwnerTypeDescription2,a.ContactOwnerMailingCounty,a.ContactOwnerMailingFIPS,a.ContactOwnerMailAddressFull,a.ContactOwnerMailAddressHouseNumber,a.ContactOwnerMailAddressStreetDirection,a.ContactOwnerMailAddressStreetName,a.ContactOwnerMailAddressStreetSuffix,a.ContactOwnerMailAddressStreetPostDirection,a.ContactOwnerMailAddressUnitPrefix,a.ContactOwnerMailAddressUnit,a.ContactOwnerMailAddressCity,a.ContactOwnerMailAddressState,a.ContactOwnerMailAddressZIP,a.ContactOwnerMailAddressZIP4,a.ContactOwnerMailAddressCRRT,a.ContactOwnerMailAddressInfoFormat,a.ContactOwnerMailInfoPrivacy,a.StatusOwnerOccupiedFlag,a.DeedOwner1NameFull,a.DeedOwner1NameFirst,a.DeedOwner1NameMiddle,a.DeedOwner1NameLast,a.DeedOwner1NameSuffix,a.DeedOwner2NameFull,a.DeedOwner2NameFirst,a.DeedOwner2NameMiddle,a.DeedOwner2NameLast,a.DeedOwner2NameSuffix,a.DeedOwner3NameFull,a.DeedOwner3NameFirst,a.DeedOwner3NameMiddle,a.DeedOwner3NameLast,a.DeedOwner3NameSuffix,a.DeedOwner4NameFull,a.DeedOwner4NameFirst,a.DeedOwner4NameMiddle,a.DeedOwner4NameLast,a.DeedOwner4NameSuffix,a.TaxYearAssessed,a.TaxAssessedValueTotal,a.TaxAssessedValueImprovements,a.TaxAssessedValueLand,a.TaxAssessedImprovementsPerc,a.PreviousAssessedValue,a.TaxMarketValueYear,a.TaxMarketValueTotal,a.TaxMarketValueImprovements,a.TaxMarketValueLand,a.TaxMarketImprovementsPerc,a.TaxFiscalYear,a.TaxRateArea,a.TaxBilledAmount,a.TaxDelinquentYear,a.LastAssessorTaxRollUpdate,a.AssrLastUpdated,a.TaxExemptionHomeownerFlag,a.TaxExemptionDisabledFlag,a.TaxExemptionSeniorFlag,a.TaxExemptionVeteranFlag,a.TaxExemptionWidowFlag,a.TaxExemptionAdditional,a.YearBuilt,a.
YearBuiltEffective,a.ZonedCodeLocal,a.PropertyUseMuni,a.PropertyUseGroup,a.PropertyUseStandardized,a.AssessorLastSaleDate,a.AssessorLastSaleAmount,a.AssessorPriorSaleDate,a.AssessorPriorSaleAmount,a.LastOwnershipTransferDate,a.LastOwnershipTransferDocumentNumber,a.LastOwnershipTransferTransactionID,a.DeedLastSaleDocumentBook,a.
DeedLastSaleDocumentPage,a.DeedLastDocumentNumber,a.DeedLastSaleDate,a.DeedLastSalePrice,a.DeedLastSaleTransactionID,a.AreaBuilding,a.AreaBuildingDefinitionCode,a.AreaGross,a.Area1stFloor,a.Area2ndFloor,a.AreaUpperFloors,a.AreaLotAcres,a.AreaLotSF,a.AreaLotDepth,a.AreaLotWidth,a.RoomsAtticArea,a.RoomsAtticFlag,a.RoomsBasementArea,a.RoomsBasementAreaFinished,a.RoomsBasementAreaUnfinished,a.ParkingGarage,a.ParkingGarageArea,a.ParkingCarport,a.ParkingCarportArea,a.HVACCoolingDetail,a.HVACHeatingDetail,a.HVACHeatingFuel,a.UtilitiesSewageUsage,a.UtilitiesWaterSource,a.UtilitiesMobileHomeHookupFlag,a.Foundation,a.Construction,a.InteriorStructure,a.PlumbingFixturesCount,a.ConstructionFireResistanceClass,a.SafetyFireSprinklersFlag,a.FlooringMaterialPrimary,a.BathCount,a.BathPartialCount,a.BedroomsCount,a.RoomsCount,a.StoriesCount,a.UnitsCount,a.RoomsBonusRoomFlag,a.RoomsBreakfastNookFlag,a.RoomsCellarFlag,a.RoomsCellarWineFlag,a.RoomsExerciseFlag,a.RoomsFamilyCode,a.RoomsGameFlag,a.RoomsGreatFlag,a.RoomsHobbyFlag,a.RoomsLaundryFlag,a.RoomsMediaFlag,a.RoomsMudFlag,a.RoomsOfficeArea,a.RoomsOfficeFlag,a.RoomsSafeRoomFlag,a.RoomsSittingFlag,a.RoomsStormShelter,a.RoomsStudyFlag,a.RoomsSunroomFlag,a.RoomsUtilityArea,a.RoomsUtilityCode,a.Fireplace,a.FireplaceCount,a.AccessabilityElevatorFlag,a.AccessabilityHandicapFlag,a.EscalatorFlag,a.CentralVacuumFlag,a.ContentIntercomFlag,a.ContentSoundSystemFlag,a.WetBarFlag,a.SecurityAlarmFlag,a.StructureStyle,a.Exterior1Code,a.RoofMaterial,a.RoofConstruction,a.ContentStormShutterFlag,a.ContentOverheadDoorFlag,a.ViewDescription,a.PorchCode,a.PorchArea,a.PatioArea,a.DeckFlag,a.DeckArea,a.FeatureBalconyFlag,a.BalconyArea,a.BreezewayFlag,a.ParkingRVParkingFlag,a.ParkingSpaceCount,a.DrivewayArea,a.DrivewayMaterial,a.Pool,a.PoolArea,a.ContentSaunaFlag,a.TopographyCode,a.FenceCode,a.FenceArea,a.CourtyardFlag,a.CourtyardArea,a.ArborPergolaFlag,a.SprinklersFlag,a.GolfCourseGreenFlag,a.TennisCourtFlag,a.SportsCourtFlag,a.ArenaFlag,a.WaterFeatureFlag,a.PondFlag,a.BoatLiftFlag,a.BuildingsCount,a.BathHouseArea,a.BathHouseFlag,a.BoatAccessFlag,a.BoatHouseArea,a.BoatHouseFlag,a.CabinArea,a.CabinFlag,a.CanopyArea,a.CanopyFlag,a.GazeboArea,a.GazeboFlag,a.GraineryArea,a.GraineryFlag,a.GreenHouseArea,a.GreenHouseFlag,a.GuestHouseArea,a.GuestHouseFlag,a.KennelArea,a.KennelFlag,a.LeanToArea,a.LeanToFlag,a.LoadingPlatformArea,a.LoadingPlatformFlag,a.MilkHouseArea,a.MilkHouseFlag,a.OutdoorKitchenFireplaceFlag,a.PoolHouseArea,a.PoolHouseFlag,a.PoultryHouseArea,a.PoultryHouseFlag,a.QuonsetArea,a.QuonsetFlag,a.ShedArea,a.ShedCode,a.SiloArea,a.SiloFlag,a.StableArea,a.StableFlag,a.StorageBuildingArea,a.StorageBuildingFlag,a.UtilityBuildingArea,a.UtilityBuildingFlag,a.PoleStructureArea,a.PoleStructureFlag,a.CommunityRecRoomFlag,a.
PublicationDate,a.ParcelShellRecord,a.Sourcefilename
        FROM ' + @tableName + ' a
        LEFT JOIN NJ_Attom_Gokul2024 b ON a.ParcelNumberRaw = b.ParcelNumberRaw and  a.SitusStateCountyFIPS = b.SitusStateCountyFIPS
        WHERE b.ParcelNumberRaw IS NULL;';

    -- Execute the dynamic SQL
    EXEC sp_executesql @sql;

    -- Fetch the next table name
    FETCH NEXT FROM table_cursor INTO @tableName;
END

-- Step 7: Close and deallocate the cursor
CLOSE table_cursor;
DEALLOCATE table_cursor;

'22033','22059','22083','22049','22069','22025','22085','22013','22051','22077','22071','22003','22055','22017','22001','22079','22023','22027','22127','22053','22039','22041','22035','22047','22005','22123','22007','22111','22089','22107','22019','22099'










 

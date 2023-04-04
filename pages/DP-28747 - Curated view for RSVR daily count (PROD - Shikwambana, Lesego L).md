- Template:
  title:: DP-28747 - Curated view for RSVR daily count (PROD - Shikwambana, Lesego L)
	- [InsuranceRowCount.xlsx](../assets/InsuranceRowCount_1678789440645_0.xlsx)
- DONE vwCuratedZAFMavenProductRowCount
  collapsed:: true
	- DONE Implementation - [RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFMavenProductRowCountImpl]
	  collapsed:: true
		- ```sql
		  USE [RSVRDPWealthInsurance]
		  GO
		  
		  CREATE VIEW  [ReconReport].[vwCuratedZAFMavenProductRowCountImpl] 
		  AS 
		  SELECT 
		  'Maven' as SystemName
		  ,[TargetTableName]
		  ,[TargetSchemaName]
		  ,[TargetRowCounts]
		  ,[TargetExtractedDate]
		  ,[UsedSpaceMB]
		  ,SourceSchemaName
		  ,SourceTableName 
		  ,SourceRowCounts
		  ,SourceExtractedDate
		  
		  , sum(SourceRowCounts-TargetRowCounts) as [RowCountDifference]
		  
		  FROM 
		  (
		  SELECT [TargetExtractedDate] 
		        ,Convert(nvarchar,TargetTableName) as [TargetTableName]
		        ,[TargetSchemaName]
		        ,[TargetRowCounts]
		        ,[UsedSpaceMB]
		    FROM [RSVRDPWealthInsurance].[ReconReport].[MavenCount] WITH (NOLOCK)
		    WHERE TargetTableName NOT LIKE '%DB_TABLE_COUNT%'  AND  TargetTableName NOT LIKE '%[__]ct'  AND TargetSchemaName NOT IN  ('jve' ,'dbo') )A
		  LEFT JOIN
		  
		  (
		  SELECT 
		  SUBSTRING(DTCTABLENAME, 0, charindex('.', DTCTABLENAME, 0)) as SourceSchemaName
		  ,RIGHT(DTCTABLENAME, CHARINDEX('.', REVERSE(DTCTABLENAME)) - 1) as SourceTableName
		  ,Cast(DTCRECORDCOUNT as bigint) as SourceRowCounts
		  ,Cast(DTCRUNDATE as datetime) as SourceExtractedDate
		  ,[DTCDATABASENAME]
		  FROM [RSVRRealtimeMaven].[INSIGHT].[DB_TABLE_COUNT] WITH (NOLOCK)
		  where [DTCDATABASENAME] = 'MAVPRD01' ) B
		  ON A.TargetTableName = B.[SourceTableName] COLLATE Latin1_General_CI_AS and CAST(A.TargetExtractedDate AS DATE) = CAST(B.SourceExtractedDate AS DATE)
		  
		  group by 
		     DTCDATABASENAME
		    ,SourceSchemaName
		    ,TargetTableName
		    ,TargetRowCounts
		    ,SourceRowCounts
		    ,SourceTableName
		    ,SourceExtractedDate
		    ,TargetExtractedDate
		    ,UsedSpaceMB
		    ,TargetSchemaName
		  
		  GO
		  
		  
		  ```
	- DONE Interface - [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenProductRowCount]TODO
	  collapsed:: true
		- ```sql
		  Use [RSVRCuratedInterfaceWealth]
		  GO
		  
		  CREATE VIEW [PRODUCT].[vwCuratedZAFMavenProductRowCount] 
		  AS
		  SELECT
		  SystemName
		  ,[TargetTableName]
		  ,[TargetSchemaName]
		  ,[TargetRowCounts]
		  ,[TargetExtractedDate]
		  ,[UsedSpaceMB]
		  ,SourceSchemaName
		  ,SourceTableName 
		  ,SourceRowCounts
		  ,SourceExtractedDate
		    FROM [RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFMavenProductRowCountImpl] WITH (NOLOCK)
		    
		  
		  
		  ```
- DONE vwCuratedZAFSapphireProductRowCount
  collapsed:: true
	- DONE Implementation - [RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFSapphireProductRowCountImpl]
	  collapsed:: true
		- ```sql
		  USE [RSVRDPWealthInsurance]
		  GO
		  
		  
		  CREATE VIEW  [ReconReport].[vwCuratedZAFSapphireProductRowCountImpl] 
		  AS 
		  SELECT 
		  'Sappire' as SystemName
		  ,[TargetSchemaName]
		  ,[TargetTableName]
		  ,[TargetRowCounts]
		  ,[TargetExtractedDate]
		  ,[UsedSpaceMB]
		  ,SourceTableName 
		  ,SourceRowCounts
		  ,SourceExtractedDate
		  
		  , sum(SourceRowCounts - TargetRowCounts) as [RowCountDifference]
		  
		  FROM 
		  (
		  SELECT 
		     [TargetExtractedDate]
		        ,[TargetTableName]
		        ,[TargetSchemaName]
		        ,[TargetRowCounts]
		        ,[UsedSpaceMB]
		    FROM [RSVRDPWealthInsurance].[ReconReport].[SapphireCount] WITH (NOLOCK)
		    where TargetTableName NOT LIKE '%[__]ct')A
		  Left JOIN
		  
		  (
		  SELECT 
		  [DTCTABLENAME] as SourceTableName
		  ,CAST(DTCRECORDCOUNT AS bigint) as SourceRowCounts
		  ,[DTCRUNDATE] as SourceExtractedDate
		  ,[DTCDATABASENAME] 
		  FROM [RSVRRealtimeMaven].[INSIGHT].[DB_TABLE_COUNT] WITH (NOLOCK)
		  where [DTCDATABASENAME] in  ('Insurance.Claims.Registration.Prod', 'SILPRD01') ) B
		  ON A.TargetTableName = B.SourceTableName COLLATE Latin1_General_CI_AS and CAST(A.TargetExtractedDate AS DATE) = CAST(B.SourceExtractedDate AS DATE)
		  
		  group by 
		  SourceTableName
		  ,SourceRowCounts
		  ,SourceExtractedDate
		  ,TargetTableName
		  ,TargetRowCounts
		  ,[TargetExtractedDate]
		  ,UsedSpaceMB
		  ,TargetSchemaName
		    
		  GO
		  
		  
		  ```
	- DONE Interface - [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFSapphireProductRowCount]
	  collapsed:: true
		- ```sql
		  Use [RSVRCuratedInterfaceWealth]
		  GO
		  
		  CREATE VIEW [PRODUCT].[vwCuratedZAFSapphireProductRowCount] 
		  AS
		  SELECT
		  SystemName
		  ,[TargetSchemaName]
		  ,[TargetTableName]
		  ,[TargetRowCounts]
		  ,[TargetExtractedDate]
		  ,[UsedSpaceMB]
		  ,SourceTableName 
		  ,SourceRowCounts
		  ,SourceExtractedDate
		   FROM [RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFSapphireProductRowCountImpl] WITH (NOLOCK)
		    
		  
		  
		  ```
- DONE vwCuratedZAFMobilifeProductRowCount
  collapsed:: true
	- DONE Implementation - [RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFMobilifeProductRowCountImpl]
	  collapsed:: true
		- ```sql
		  USE [RSVRDPWealthInsurance]
		  GO
		  
		  CREATE VIEW [ReconReport].[vwCuratedZAFMobilifeProductRowCountImpl] 
		  AS
		  SELECT 
		  'Mobilife' as SystemName
		  ,[TargetExtractedDate]
		  ,[TargetTableName]
		  ,[TargetSchemaName]
		  ,TargetRowCounts
		  ,[UsedSpaceMB]
		  ,SourceExtractedDate
		  ,SourceTableName
		  ,SourceRowCounts
		  , sum(SourceRowCounts - TargetRowCounts) as [RowCountDifference]
		  
		  FROM 
		  (
		  SELECT [TargetExtractedDate]
		        ,[TargetTableName]
		        ,[TargetSchemaName]
		        ,[TargetRowCounts]
		        ,[UsedSpaceMB]
		  FROM
		  [RSVRDPWealthInsurance].[ReconReport].[MobilifeCount] WITH (NOLOCK)
		  where TargetTableName NOT LIKE '%[__]ct')A
		  LEFT JOIN
		  
		  (
		  SELECT
		  [DestinationTableName] as SourceTableName
		  ,Convert(bigint,DestinationTotal) as SourceRowCounts
		  ,[ExtractedDate] as SourceExtractedDate
		    FROM [RSVRRealtimeMobiLife].[mobility_dfs_reports].[SB_BalanceAndChecks] WITH (NOLOCK) ) B
		    ON A.TargetTableName = B.[SourceTableName] COLLATE Latin1_General_CI_AS and CAST(A.TargetExtractedDate AS DATE) = CAST(B.SourceExtractedDate AS DATE)
		   
		  group by 
		    [TargetSchemaName]
		    ,TargetTableName
		    ,TargetRowCounts
		    ,SourceTableName
		    ,SourceRowCounts
		    ,SourceExtractedDate
		    ,[TargetExtractedDate]
		    ,UsedSpaceMB
		  GO
		  
		  
		  
		  ```
	- DONE Interface - [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMobilifeProductRowCount]
	  collapsed:: true
		- ```sql
		  Use [RSVRCuratedInterfaceWealth]
		  GO
		  
		  CREATE VIEW [PRODUCT].[vwCuratedZAFMobilifeProductRowCount] 
		  AS
		  SELECT
		    SystemName
		  ,[TargetExtractedDate]
		  ,[TargetTableName]
		  ,[TargetSchemaName]
		  ,TargetRowCounts
		  ,[UsedSpaceMB]
		  ,SourceExtractedDate
		  ,SourceTableName
		  ,SourceRowCounts
		    FROM [RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFMobilifeProductRowCountImpl] WITH (NOLOCK)
		    
		  
		  
		  ```
- DONE Access Control
  collapsed:: true
	- ```sql
	  USE [RSVRDPWealthInsurance]
	  GO
	  
	  -- Implementation
	  GRANT SELECT ON OBJECT::[RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFMavenProductRowCountImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON OBJECT::[RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFSapphireProductRowCountImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON OBJECT::[RSVRDPWealthInsurance].[ReconReport].[vwCuratedZAFMobilifeProductRowCountImpl] TO RSVR_P_CV_ZAF_MOBILIFE_READ;
	  
	  USE [RSVRCuratedInterfaceWealth]
	  GO
	  
	  -- Interface
	  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenProductRowCount] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFSapphireProductRowCount] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMobilifeProductRowCount] TO RSVR_P_CV_ZAF_MOBILIFE_READ;
	  
	  ```
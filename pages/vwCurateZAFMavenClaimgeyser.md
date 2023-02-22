- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenClaimgeyser]    Script Date: 2023/02/08 11:15:08 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenClaimgeyser]
  AS
  
  SELECT  [CLM_GEYSER_SEQ]
        ,[CLM_CREATE_USER]
        ,[CLM_CREATE_DATE]
        ,[CLM_UPDATE_USER]
        ,[CLM_UPDATE_DATE]
        ,[CLM_CLAIM_CDE]
        ,[CLM_SUPPLIER_CDE]
        ,[CLM_APPOINT_KEY]
        ,[CLM_REPLACED_REPUDIATED]
        ,[CLM_REPUDIATED_REASON]
        ,[CLM_MANUFACTURER]
        ,[CLM_PRODUCT]
        ,[CLM_CAPACITY]
        ,[CLM_GC_NEW]
        ,[CLM_GC_OLD]
        ,[CLM_SERIAL_NEW]
        ,[CLM_SERIAL_OLD]
        ,[CLM_GEYSERID]
        ,[CLM_MANUFACTUREROTHER]
        ,[CLM_DUPLICATE]
        ,[CLM_PVT_STOCK]
        ,[CLM_MANU_REF_NO]
        ,[CLM_IZINGA_COMPONENT]
        ,[CLM_GEYSERRAPLACEMENT_IND]
        ,[CLM_IZINGA_IND]
        ,[CLM_UNDER_GUARANTEE]
        ,[CLM_REPAIR]
        ,[CLM_VENDORID]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimgeyserImpl]
  GO
  
  
  ```
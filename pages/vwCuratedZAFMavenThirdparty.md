- ```sql
  	USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCuratedZAFMavenThirdparty]    Script Date: 2023/02/08 11:16:49 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCuratedZAFMavenThirdparty]
  AS
  
  SELECT  [TP_KEY]
        ,[TP_OWN_ID]
        ,[TP_OWN_SURN]
        ,[TP_OWN_INIT]
        ,[TP_OWN_CONTACT1]
        ,[TP_OWN_CONTACT2]
        ,[TP_OWN_CELL]
        ,[TP_DRV_ID]
        ,[TP_DRV_SURN]
        ,[TP_DRV_INIT]
        ,[TP_DRV_CONTACT1]
        ,[TP_DRV_CONTACT2]
        ,[TP_DRV_CELL]
        ,[TP_DRV_LICNO]
        ,[TP_REG_NO]
        ,[TP_MOT_COLOUR]
        ,[TP_MOT_MAKE]
        ,[TP_MOT_MODEL]
        ,[TP_MOT_TYPE]
        ,[TP_CASE_NO]
        ,[TP_POLICE_STATION]
        ,[TP_POLICE_TELNO]
        ,[TP_POLICE_FAXNO]
        ,[TP_INVESTIGATING_OFFICER]
        ,[TP_INSURANCE_DETAILS]
        ,[TP_INSURANCE_CO]
        ,[TP_CONTACT_PERSON]
        ,[TP_CLAIM_NO]
        ,[TP_INSURANCE_TELNO]
        ,[TP_UPD_DATE]
        ,[TP_UPD_USER]
        ,[TP_OWN_RES_ADDR1]
        ,[TP_OWN_RES_ADDR2]
        ,[TP_OWN_RES_ADDR3]
        ,[TP_OWN_RES_PCODE_NUMBER]
        ,[TP_OWN_POST_ADDR1]
        ,[TP_OWN_POST_ADDR2]
        ,[TP_OWN_POST_ADDR3]
        ,[TP_OWN_POST_PCODE_NUMBER]
        ,[TP_DRV_RES_ADDR1]
        ,[TP_DRV_RES_ADDR2]
        ,[TP_DRV_RES_ADDR3]
        ,[TP_DRV_RES_PCODE_NUMBER]
        ,[TP_DRV_POST_ADDR1]
        ,[TP_DRV_POST_ADDR2]
        ,[TP_DRV_POST_ADDR3]
        ,[TP_DRV_POST_PCODE_NUMBER]
        ,[TP_INSCO_POLNO]
        ,[TP_QUANTAM_AMT]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenThirdpartyImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
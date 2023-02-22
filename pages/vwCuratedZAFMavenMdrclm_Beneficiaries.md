- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCuratedZAFMavenMdrclm_Beneficiaries]    Script Date: 2023/02/08 11:14:19 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCuratedZAFMavenMdrclm_Beneficiaries]
  AS
  
  SELECT [MCB_CLAIM_KEY]
        ,[MCB_ITEM_SEQ]
        ,[MCB_TITLE_CDE]
        ,[MCB_INIT]
        ,[MCB_SURN]
        ,[MCB_DOB]
        ,[MCB_ID_NO]
        ,[MCB_LANGUAGE_CDE]
        ,[MCB_GENDER_CDE]
        ,[MCB_ADDR1]
        ,[MCB_ADDR2]
        ,[MCB_ADDR3]
        ,[MCB_ADDR4]
        ,[MCB_POSTCODE]
        ,[MCB_POST_TYPE]
        ,[MCB_PERC]
        ,[MCB_DELETED_IND]
        ,[MCB_UPD_USER]
        ,[MCB_UPD_DATE]
        ,[MCB_HOME_TEL]
        ,[MCB_WORK_TEL]
        ,[MCB_CELL]
        ,[MCB_FREE_COVER]
        ,[MCB_MEMBER_TYPE]
        ,[MCB_BENEFIT]
        ,[MCB_CRT_USER]
        ,[MCB_CRT_DATE]
        ,[MCB_BEN_CDE]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMdrclm_BeneficiariesImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
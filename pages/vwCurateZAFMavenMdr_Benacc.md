- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenMdr_Benacc]    Script Date: 2023/02/08 11:14:34 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenMdr_Benacc]
  AS
  
  SELECT  [MBA_POLICY_CDE]
        ,[MBA_ITEM_SEQ]
        ,[MBA_ACC_NAME]
        ,[MBA_ACC_NO]
        ,[MBA_ACC_BRANCH]
        ,[MBA_ACC_TYPE]
        ,[MBA_BANK_NAME]
        ,[MBA_BRANCH_NAME]
        ,[MBA_UPD_USER]
        ,[MBA_UPD_DATE]
        ,[MBA_CLAIM_KEY]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
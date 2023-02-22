- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl]    Script Date: 2023/02/08 11:08:02 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl]
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
    FROM [RSVRRealtimeMaven].[INSIGHT].[MDR_BENACC] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
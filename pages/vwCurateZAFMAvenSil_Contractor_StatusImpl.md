- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl]    Script Date: 2023/02/08 11:06:41 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl]
  AS
  
  SELECT  [SCS_CLM_KEY]
        ,[SCS_CON_KEY]
        ,[SCS_CRT_DATE]
        ,[SCS_UPD_DATE]
        ,[SCS_CRT_USER]
        ,[SCS_UPD_USER]
        ,[SCS_STATUS_CDE]
        ,[SCS_POLICY_KEY]
        ,[SCS_TYPE]
        ,[SCS_APPOINT_KEY]
    FROM [RSVRRealtimeMaven].[INSIGHT].[SIL_CONTRACTOR_STATUS] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
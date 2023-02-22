- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMAvenSil_Contractor_Status]    Script Date: 2023/02/08 11:13:47 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMAvenSil_Contractor_Status]
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
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
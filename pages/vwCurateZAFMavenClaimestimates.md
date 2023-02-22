- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenClaimestimates]    Script Date: 2023/02/08 11:15:45 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenClaimestimates]
  AS
  
  SELECT [CES_PLAN_CDE]
        ,[CES_TYPE_CDE]
        ,[CES_ORG_LOSS]
        ,[CES_ORG_EXP]
        ,[CES_ORG_THIRD]
        ,[CES_ORG_REOPEN]
        ,[RSVRID]
        ,[RSVRLoadUser]
        ,[RSVRLoadDate]
        ,[RSVRModifiedDate]
        ,[SourceCommitDate]
        ,[ValidFrom]
        ,[ValidTo]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimestimatesImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  
  ```
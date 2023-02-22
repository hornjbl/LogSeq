- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenClaimflooringImpl]    Script Date: 2023/02/08 11:04:26 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenClaimflooringImpl]
  AS 
  
  SELECT  [CLM_FLOOR_SEQ]
        ,[CLM_CREATE_USER]
        ,[CLM_CREATE_DATE]
        ,[CLM_UPDATE_USER]
        ,[CLM_UPDATE_DATE]
        ,[CLM_CLAIM_CDE]
        ,[CLM_CONTRACTOR_CDE]
        ,[CLM_APPOINT_KEY]
        ,[CLM_REPLACED_REPUDIATED_RESTOR]
        ,[CLM_REPUDIATED_REASON]
        ,[FLOORINGTYPE]
        ,[FLOORINGPRODUCT]
        ,[FLOORINGRANGE]
        ,[PRICE]
        ,[M2]
        ,[CLM_OTHER]
        ,[CLMFLOORINGID]
        ,[CLM_CLMTRAN_SEQ]
        ,[CLM_ROOM_DESCR]
        ,[CLM_WORK_REQUIRED]
        ,[CLM_CLEANINGTYPE]
    FROM [RSVRRealtimeMaven].[INSIGHT].[CLAIMFLOORING] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
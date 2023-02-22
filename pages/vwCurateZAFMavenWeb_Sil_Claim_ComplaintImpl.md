- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl]    Script Date: 2023/02/08 11:06:12 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl]
  AS
  
  SELECT [COMPLAINT_KEY]
        ,[CLAIM_KEY]
        ,[COMPLAINT_CRT_DATE]
        ,[COMPLAINT_TYPE]
        ,[COMPLAINT_DESCR]
    FROM [RSVRRealtimeMaven].[INSIGHT].[WEB_SIL_CLAIM_COMPLAINT] WITH (NOLOCK)
    ;
  
  GO
  
  
  
  ```
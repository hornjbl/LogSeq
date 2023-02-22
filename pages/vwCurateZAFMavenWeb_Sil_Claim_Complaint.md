- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenWeb_Sil_Claim_Complaint]    Script Date: 2023/02/08 11:11:51 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenWeb_Sil_Claim_Complaint]
  AS
  
  SELECT [COMPLAINT_KEY]
        ,[CLAIM_KEY]
        ,[COMPLAINT_CRT_DATE]
        ,[COMPLAINT_TYPE]
        ,[COMPLAINT_DESCR]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
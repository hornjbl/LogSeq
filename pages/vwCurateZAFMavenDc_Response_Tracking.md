- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenDc_Response_Tracking]    Script Date: 2023/02/08 11:11:34 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenDc_Response_Tracking]
  AS
  
  SELECT [DCRT_CRT_DATE]
        ,[DCT_LINE]
        ,[DCRT_SEQ]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
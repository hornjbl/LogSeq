- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl]    Script Date: 2023/02/08 11:05:48 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl]
  AS
  
  SELECT [DCRT_CRT_DATE]
        ,[DCT_LINE]
        ,[DCRT_SEQ]
    FROM [RSVRRealtimeMaven].[INSIGHT].[DC_RESPONSE_TRACKING] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
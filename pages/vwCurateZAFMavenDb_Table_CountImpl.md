- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl]    Script Date: 2023/02/08 11:05:19 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl]
  AS
  
  SELECT [DTCDATABASENAME]
        ,[DTCTABLENAME]
        ,[DTCRECORDCOUNT]
        ,[DTCRUNDATE]
        ,[DTCRUNKEY]
    FROM [RSVRRealtimeMaven].[INSIGHT].[DB_TABLE_COUNT] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
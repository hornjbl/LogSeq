- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenDb_Table_Count]    Script Date: 2023/02/08 11:11:00 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenDb_Table_Count]
  AS
  
  SELECT [DTCDATABASENAME]
        ,[DTCTABLENAME]
        ,[DTCRECORDCOUNT]
        ,[DTCRUNDATE]
        ,[DTCRUNKEY]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
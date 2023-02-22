- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCurateZAFMavenDocdata]    Script Date: 2023/02/08 11:14:51 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCurateZAFMavenDocdata]
  AS
  
  SELECT  [DOC_REFERENCE]
        ,[DOC_KEY]
        ,[DOC_SEQ]
        ,[DOC_TEXT1]
        ,[DOC_TEXT2]
        ,[DOC_TEXT3]
        ,[DOC_TEXT4]
        ,[DOC_TEXT5]
        ,[DOC_TEXT6]
        ,[DOC_TEXT7]
        ,[DOC_TEXT8]
        ,[DOC_TEXT9]
        ,[DOC_TEXT10]
        ,[DOC_TEXT11]
        ,[DOC_TEXT12]
        ,[DOC_TEXT13]
        ,[DOC_TEXT14]
        ,[DOC_TEXT15]
        ,[DOC_DATE1]
        ,[DOC_DATE2]
        ,[DOC_DATE3]
        ,[DOC_DATE4]
        ,[DOC_DATE5]
        ,[DOC_UPD_DATE]
        ,[DOC_UPD_USER]
        ,[DOC_STATUS]
        ,[DOC_CHECK_LST]
        ,[DOC_COMBO1]
        ,[DOC_COMBO2]
        ,[DOC_COMBO3]
        ,[DOC_COMBO4]
        ,[DOC_COMBO5]
        ,[DOC_COMBO6]
        ,[DOC_COMBO7]
        ,[DOC_COMBO8]
        ,[DOC_COMBO9]
        ,[DOC_COMBO10]
        ,[DOC_TEXT16]
        ,[DOC_TEXT17]
        ,[DOC_TEXT18]
        ,[DOC_TEXT19]
        ,[DOC_TEXT20]
        ,[DOC_TEXT21]
        ,[DOC_TEXT22]
        ,[DOC_TEXT23]
        ,[DOC_TEXT24]
        ,[DOC_TEXT25]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDocdataImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
- ```sql
  USE [RSVRCuratedInterfaceWealth]
  GO
  
  /****** Object:  View [Product].[vwCuratedZAFMavenMotorfleet_Transactions]    Script Date: 2023/02/08 11:16:31 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [Product].[vwCuratedZAFMavenMotorfleet_Transactions]
  AS
  
  SELECT  [MFT_TRAN_KEY]
        ,[MFT_REFERENCE]
        ,[MFT_TRAN_SEQ]
        ,[MFT_SCHEME_CDE]
        ,[MFT_TRAN_TYPE]
        ,[MFT_TRAN_CDE]
        ,[MFT_TRAN_INFO]
        ,[MFT_TRAN_REF]
        ,[MFT_TRAN_AMOUNT]
        ,[MFT_TRAN_STATUS_CDE]
        ,[MFT_TRAN_PROGRESS_CDE]
        ,[MFT_DATE_OF_INVOICE]
        ,[MFT_REQUEST_USER]
        ,[MFT_REQUEST_DATE]
        ,[MFT_VERIFY_USER]
        ,[MFT_VERIFY_DATE]
        ,[MFT_RELEASE_USER]
        ,[MFT_RELEASE_DATE]
        ,[MFT_CANCEL_USER]
        ,[MFT_CANCEL_DATE]
        ,[MFT_CANCEL_REASON]
        ,[MFT_TRAN_RAISED]
        ,[MFT_ACB_PROCESSED]
    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMotorfleet_TransactionsImpl] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
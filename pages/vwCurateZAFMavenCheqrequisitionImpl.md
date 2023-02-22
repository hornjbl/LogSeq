- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenCheqrequisitionImpl]    Script Date: 2023/02/08 11:03:26 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenCheqrequisitionImpl]
  AS
  
  SELECT [CHEQREQUISITION_KEY]
        ,[CRQ_USER_CODE]
        ,[CRQ_BRA_CODE]
        ,[CRQ_PAYEE_CODE]
        ,[CRQ_AMOUNT]
        ,[CRQ_AREA_CODE]
        ,[CRQ_CLIENT_CODE]
        ,[CRQ_OURREF_NUM]
        ,[CRQ_AUTH1_CODE]
        ,[CRQ_AUTH2_CODE]
        ,[CRQ_CHEQ_DATE]
        ,[CRQ_PRINT_DATE]
        ,[CRQ_STATUS]
        ,[CRQ_PAYEEREF_CODE]
        ,[CRQ_CHEQ_NUM]
        ,[CRQ_POST_ADD]
        ,[CRQ_POST_ADD2]
        ,[CRQ_POST_ADD3]
        ,[CRQ_POST_ADD4]
        ,[CRQ_POST_CODE]
        ,[CRQ_COUNTRY_NAME]
        ,[CRQ_PAYEE_NAME]
        ,[CRQ_ACCOUNTTRANSACTION_CDE]
        ,[CRQ_ACB_RUN_DATE]
        ,[CRQ_ACB_DEBIT_DATE]
        ,[CRQ_ACB_AUTH1]
        ,[CRQ_ACB_AUTH2]
        ,[CRQ_ACB_AUTH1_NAME]
        ,[CRQ_ACB_AUTH2_NAME]
        ,[CRQ_ACB_RELEASED]
        ,[CRQ_ACB_RELEASED_IND]
        ,[CRQ_REJECT_CDE]
        ,[CRQ_REJECT_DATE]
        ,[CRQ_ADCHECK_IND]
        ,[CRQ_PREV_AUTH1]
        ,[CRQ_PREV_AUTH2]
        ,[CRQ_CURRENT_STAGE]
        ,[CRQ_ACB_AUTH1_DATE]
        ,[CRQ_ACB_AUTH2_DATE]
        ,[RSVRID]
        ,[RSVRLoadUser]
        ,[RSVRLoadDate]
        ,[RSVRModifiedDate]
        ,[SourceCommitDate]
        ,[ValidFrom]
        ,[ValidTo]
    FROM [RSVRRealtimeMaven].[INSIGHT].[CHEQREQUISITION] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
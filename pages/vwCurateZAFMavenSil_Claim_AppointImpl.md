- ```sql
  USE [RSVRRealtimeMaven]
  GO
  
  /****** Object:  View [INSIGHT].[vwCurateZAFMavenSil_Claim_AppointImpl]    Script Date: 2023/02/08 11:06:58 ******/
  SET ANSI_NULLS ON
  GO
  
  SET QUOTED_IDENTIFIER ON
  GO
  
  
  CREATE VIEW [INSIGHT].[vwCurateZAFMavenSil_Claim_AppointImpl]
  AS
  
  SELECT  [SIL_APPOINT_KEY]
        ,[SIL_CLAIM_CDE]
        ,[SIL_CONTRACTOR_CDE]
        ,[SIL_APPOINT_TYPE]
        ,[SIL_UPD_DATE]
        ,[SIL_UPD_USER]
        ,[SIL_APPOINT_STATUS]
        ,[SIL_COMMS_METH]
        ,[SIL_ESTIMATE]
        ,[SIL_APPOINT_DATE]
        ,[SIL_APPOINT_USER]
        ,[SIL_APPOINT_METHOD]
        ,[SIL_REPORT_TYPE]
        ,[SIL_DATA]
        ,[SIL_IS_CAT]
        ,[SIL_REPORT_DATE]
        ,[SIL_SEQ_NUM]
        ,[SIL_COMMS_REF]
        ,[SIL_EXCESS_AMT]
        ,[SIL_CONTRACTOR_STATUS_CDE]
        ,[SIL_APPOINTMENT_DATE]
        ,[SIL_APPOINTMENT_REASON_CDE]
        ,[SIL_APPOINTMENT_UPD_DATE]
        ,[SIL_APPOINTMENT_UPD_USR]
        ,[SIL_REPAIR_DATE]
        ,[SIL_REPAIR_REASON_CDE]
        ,[SIL_REPAIR_UPD_DATE]
        ,[SIL_REPAIR_UPD_USR]
        ,[SIL_COMPLETION_DATE]
        ,[SIL_COMPLETION_REASON_CDE]
        ,[SIL_COMPLETION_UPD_DATE]
        ,[SIL_COMPLETION_UPD_USR]
        ,[SIL_CLEARANCE_CODE]
        ,[SIL_CUSTOME_RATING]
        ,[SIL_EXCESS_COLLECTED]
        ,[SIL_INSPECTION_IND]
        ,[SIL_MANDATE_AMT]
        ,[RSVRID]
        ,[RSVRLoadUser]
        ,[RSVRLoadDate]
        ,[RSVRModifiedDate]
        ,[SourceCommitDate]
        ,[ValidFrom]
        ,[ValidTo]
    FROM [RSVRRealtimeMaven].[INSIGHT].[SIL_CLAIM_APPOINT] WITH (NOLOCK)
    ;
  
  GO
  
  
  ```
- [Reservior Data Curation Metadata For Maven.xlsx](../assets/Reservior_Data_Curation_Metadata_For_Maven_1676363941325_0.xlsx)
- AD Group: RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ
- Implementation DB: RSVRRealtimeMaven
- Interface DB: RSVRcuratedInterfaceWealth
- Scripts
	- DONE Drop Incorrectly Named Objects
		- Interface Views
			- ```sql
			  USE [RSVRcuratedInterfaceWealth]
			  GO
			  
			  DROP VIEW [Product].[vwCurateZAFMavenClaimestimates];
			  DROP VIEW [Product].[vwCurateZAFMavenClaimflooring];
			  DROP VIEW [Product].[vwCurateZAFMavenClaimgeyser];
			  DROP VIEW [Product].[vwCurateZAFMavenDb_Table_Count];
			  DROP VIEW [Product].[vwCurateZAFMavenDc_Response_Tracking];
			  DROP VIEW [Product].[vwCurateZAFMavenDocdata];
			  DROP VIEW [Product].[vwCurateZAFMavenMdr_Benacc];
			  DROP VIEW [Product].[vwCurateZAFMavenSil_Claim_Appoint];
			  DROP VIEW [Product].[vwCurateZAFMAvenSil_Contractor_Status];
			  DROP VIEW [Product].[vwCurateZAFMavenWeb_Sil_Claim_Complaint];
			  ```
		- Implementation Views
			- ```SQL
			  USE [RSVRRealtimeMaven]
			  GO
			  
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenCheqrequisitionImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenClaimestimatesImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenClaimflooringImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenClaimgeyserImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenDocdataImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenSil_Claim_AppointImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl];
			  DROP VIEW [INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl];
			  ```
	- DONE vwCuratedZAFMavenProductThirdpartyImpl - vwCuratedZAFMavenProductThirdparty
	  collapsed:: true
		- ```sql
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductThirdpartyImpl]
		  AS
		  
		  SELECT [TP_KEY]
		        ,[TP_OWN_ID]
		        ,[TP_OWN_SURN]
		        ,[TP_OWN_INIT]
		        ,[TP_OWN_CONTACT1]
		        ,[TP_OWN_CONTACT2]
		        ,[TP_OWN_CELL]
		        ,[TP_DRV_ID]
		        ,[TP_DRV_SURN]
		        ,[TP_DRV_INIT]
		        ,[TP_DRV_CONTACT1]
		        ,[TP_DRV_CONTACT2]
		        ,[TP_DRV_CELL]
		        ,[TP_DRV_LICNO]
		        ,[TP_REG_NO]
		        ,[TP_MOT_COLOUR]
		        ,[TP_MOT_MAKE]
		        ,[TP_MOT_MODEL]
		        ,[TP_MOT_TYPE]
		        ,[TP_CASE_NO]
		        ,[TP_POLICE_STATION]
		        ,[TP_POLICE_TELNO]
		        ,[TP_POLICE_FAXNO]
		        ,[TP_INVESTIGATING_OFFICER]
		        ,[TP_INSURANCE_DETAILS]
		        ,[TP_INSURANCE_CO]
		        ,[TP_CONTACT_PERSON]
		        ,[TP_CLAIM_NO]
		        ,[TP_INSURANCE_TELNO]
		        ,[TP_UPD_DATE]
		        ,[TP_UPD_USER]
		        ,[TP_OWN_RES_ADDR1]
		        ,[TP_OWN_RES_ADDR2]
		        ,[TP_OWN_RES_ADDR3]
		        ,[TP_OWN_RES_PCODE_NUMBER]
		        ,[TP_OWN_POST_ADDR1]
		        ,[TP_OWN_POST_ADDR2]
		        ,[TP_OWN_POST_ADDR3]
		        ,[TP_OWN_POST_PCODE_NUMBER]
		        ,[TP_DRV_RES_ADDR1]
		        ,[TP_DRV_RES_ADDR2]
		        ,[TP_DRV_RES_ADDR3]
		        ,[TP_DRV_RES_PCODE_NUMBER]
		        ,[TP_DRV_POST_ADDR1]
		        ,[TP_DRV_POST_ADDR2]
		        ,[TP_DRV_POST_ADDR3]
		        ,[TP_DRV_POST_PCODE_NUMBER]
		        ,[TP_INSCO_POLNO]
		        ,[TP_QUANTAM_AMT]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[THIRDPARTY] WITH (NOLOCK);
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE VIEW [PRODUCT].[vwCuratedZAFMavenProductThirdparty]
		  AS
		  
		  SELECT  [TP_KEY]
		        ,[TP_OWN_ID]
		        ,[TP_OWN_SURN]
		        ,[TP_OWN_INIT]
		        ,[TP_OWN_CONTACT1]
		        ,[TP_OWN_CONTACT2]
		        ,[TP_OWN_CELL]
		        ,[TP_DRV_ID]
		        ,[TP_DRV_SURN]
		        ,[TP_DRV_INIT]
		        ,[TP_DRV_CONTACT1]
		        ,[TP_DRV_CONTACT2]
		        ,[TP_DRV_CELL]
		        ,[TP_DRV_LICNO]
		        ,[TP_REG_NO]
		        ,[TP_MOT_COLOUR]
		        ,[TP_MOT_MAKE]
		        ,[TP_MOT_MODEL]
		        ,[TP_MOT_TYPE]
		        ,[TP_CASE_NO]
		        ,[TP_POLICE_STATION]
		        ,[TP_POLICE_TELNO]
		        ,[TP_POLICE_FAXNO]
		        ,[TP_INVESTIGATING_OFFICER]
		        ,[TP_INSURANCE_DETAILS]
		        ,[TP_INSURANCE_CO]
		        ,[TP_CONTACT_PERSON]
		        ,[TP_CLAIM_NO]
		        ,[TP_INSURANCE_TELNO]
		        ,[TP_UPD_DATE]
		        ,[TP_UPD_USER]
		        ,[TP_OWN_RES_ADDR1]
		        ,[TP_OWN_RES_ADDR2]
		        ,[TP_OWN_RES_ADDR3]
		        ,[TP_OWN_RES_PCODE_NUMBER]
		        ,[TP_OWN_POST_ADDR1]
		        ,[TP_OWN_POST_ADDR2]
		        ,[TP_OWN_POST_ADDR3]
		        ,[TP_OWN_POST_PCODE_NUMBER]
		        ,[TP_DRV_RES_ADDR1]
		        ,[TP_DRV_RES_ADDR2]
		        ,[TP_DRV_RES_ADDR3]
		        ,[TP_DRV_RES_PCODE_NUMBER]
		        ,[TP_DRV_POST_ADDR1]
		        ,[TP_DRV_POST_ADDR2]
		        ,[TP_DRV_POST_ADDR3]
		        ,[TP_DRV_POST_PCODE_NUMBER]
		        ,[TP_INSCO_POLNO]
		        ,[TP_QUANTAM_AMT]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductThirdpartyImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductMotorfleet_TransactionsImpl - vwCuratedZAFMavenProductMotorfleet_Transactions
	  collapsed:: true
		- ```sql
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductMotorfleet_TransactionsImpl]
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
		    FROM [RSVRRealtimeMaven].[INSIGHT].[MOTORFLEET_TRANSACTIONS] WITH (NOLOCK)
		    ;
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductMotorfleet_Transactions]
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
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductMotorfleet_TransactionsImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductCheqrequisitionImpl - vwCuratedZAFMavenProductCheqrequisition
	  collapsed:: true
		- ```sql
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductCheqrequisitionImpl]
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
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductCheqrequisition]
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
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductCheqrequisitionImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductClaimestimatesImpl - vwCuratedZAFMavenProductProductClaimestimates
	  collapsed:: true
		- ```sql
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductClaimestimatesImpl]
		  AS
		  
		  SELECT [CES_PLAN_CDE]
		        ,[CES_TYPE_CDE]
		        ,[CES_ORG_LOSS]
		        ,[CES_ORG_EXP]
		        ,[CES_ORG_THIRD]
		        ,[CES_ORG_REOPEN]
		        ,[RSVRID]
		        ,[RSVRLoadUser]
		        ,[RSVRLoadDate]
		        ,[RSVRModifiedDate]
		        ,[SourceCommitDate]
		        ,[ValidFrom]
		        ,[ValidTo]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[CLAIMESTIMATES] WITH (NOLOCK)
		    ;
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductClaimestimates]
		  AS
		  
		  SELECT [CES_PLAN_CDE]
		        ,[CES_TYPE_CDE]
		        ,[CES_ORG_LOSS]
		        ,[CES_ORG_EXP]
		        ,[CES_ORG_THIRD]
		        ,[CES_ORG_REOPEN]
		        ,[RSVRID]
		        ,[RSVRLoadUser]
		        ,[RSVRLoadDate]
		        ,[RSVRModifiedDate]
		        ,[SourceCommitDate]
		        ,[ValidFrom]
		        ,[ValidTo]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductClaimestimatesImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductClaimflooringImpl - vwCuratedZAFMavenProductClaimflooring
	  collapsed:: true
		- ```sql
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductClaimflooringImpl]
		  AS 
		  
		  SELECT  [CLM_FLOOR_SEQ]
		        ,[CLM_CREATE_USER]
		        ,[CLM_CREATE_DATE]
		        ,[CLM_UPDATE_USER]
		        ,[CLM_UPDATE_DATE]
		        ,[CLM_CLAIM_CDE]
		        ,[CLM_CONTRACTOR_CDE]
		        ,[CLM_APPOINT_KEY]
		        ,[CLM_REPLACED_REPUDIATED_RESTOR]
		        ,[CLM_REPUDIATED_REASON]
		        ,[FLOORINGTYPE]
		        ,[FLOORINGPRODUCT]
		        ,[FLOORINGRANGE]
		        ,[PRICE]
		        ,[M2]
		        ,[CLM_OTHER]
		        ,[CLMFLOORINGID]
		        ,[CLM_CLMTRAN_SEQ]
		        ,[CLM_ROOM_DESCR]
		        ,[CLM_WORK_REQUIRED]
		        ,[CLM_CLEANINGTYPE]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[CLAIMFLOORING] WITH (NOLOCK)
		    ;
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductClaimflooring]
		  AS 
		  
		  SELECT  [CLM_FLOOR_SEQ]
		        ,[CLM_CREATE_USER]
		        ,[CLM_CREATE_DATE]
		        ,[CLM_UPDATE_USER]
		        ,[CLM_UPDATE_DATE]
		        ,[CLM_CLAIM_CDE]
		        ,[CLM_CONTRACTOR_CDE]
		        ,[CLM_APPOINT_KEY]
		        ,[CLM_REPLACED_REPUDIATED_RESTOR]
		        ,[CLM_REPUDIATED_REASON]
		        ,[FLOORINGTYPE]
		        ,[FLOORINGPRODUCT]
		        ,[FLOORINGRANGE]
		        ,[PRICE]
		        ,[M2]
		        ,[CLM_OTHER]
		        ,[CLMFLOORINGID]
		        ,[CLM_CLMTRAN_SEQ]
		        ,[CLM_ROOM_DESCR]
		        ,[CLM_WORK_REQUIRED]
		        ,[CLM_CLEANINGTYPE]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductClaimflooringImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductClaimgeyserImpl - vwCuratedZAFMavenProductClaimgeyser
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductClaimgeyserImpl]
		  AS
		  
		  SELECT  [CLM_GEYSER_SEQ]
		        ,[CLM_CREATE_USER]
		        ,[CLM_CREATE_DATE]
		        ,[CLM_UPDATE_USER]
		        ,[CLM_UPDATE_DATE]
		        ,[CLM_CLAIM_CDE]
		        ,[CLM_SUPPLIER_CDE]
		        ,[CLM_APPOINT_KEY]
		        ,[CLM_REPLACED_REPUDIATED]
		        ,[CLM_REPUDIATED_REASON]
		        ,[CLM_MANUFACTURER]
		        ,[CLM_PRODUCT]
		        ,[CLM_CAPACITY]
		        ,[CLM_GC_NEW]
		        ,[CLM_GC_OLD]
		        ,[CLM_SERIAL_NEW]
		        ,[CLM_SERIAL_OLD]
		        ,[CLM_GEYSERID]
		        ,[CLM_MANUFACTUREROTHER]
		        ,[CLM_DUPLICATE]
		        ,[CLM_PVT_STOCK]
		        ,[CLM_MANU_REF_NO]
		        ,[CLM_IZINGA_COMPONENT]
		        ,[CLM_GEYSERRAPLACEMENT_IND]
		        ,[CLM_IZINGA_IND]
		        ,[CLM_UNDER_GUARANTEE]
		        ,[CLM_REPAIR]
		        ,[CLM_VENDORID]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[CLAIMGEYSER] WITH (NOLOCK) 
		    ; 
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductClaimgeyser]
		  AS
		  
		  SELECT  [CLM_GEYSER_SEQ]
		        ,[CLM_CREATE_USER]
		        ,[CLM_CREATE_DATE]
		        ,[CLM_UPDATE_USER]
		        ,[CLM_UPDATE_DATE]
		        ,[CLM_CLAIM_CDE]
		        ,[CLM_SUPPLIER_CDE]
		        ,[CLM_APPOINT_KEY]
		        ,[CLM_REPLACED_REPUDIATED]
		        ,[CLM_REPUDIATED_REASON]
		        ,[CLM_MANUFACTURER]
		        ,[CLM_PRODUCT]
		        ,[CLM_CAPACITY]
		        ,[CLM_GC_NEW]
		        ,[CLM_GC_OLD]
		        ,[CLM_SERIAL_NEW]
		        ,[CLM_SERIAL_OLD]
		        ,[CLM_GEYSERID]
		        ,[CLM_MANUFACTUREROTHER]
		        ,[CLM_DUPLICATE]
		        ,[CLM_PVT_STOCK]
		        ,[CLM_MANU_REF_NO]
		        ,[CLM_IZINGA_COMPONENT]
		        ,[CLM_GEYSERRAPLACEMENT_IND]
		        ,[CLM_IZINGA_IND]
		        ,[CLM_UNDER_GUARANTEE]
		        ,[CLM_REPAIR]
		        ,[CLM_VENDORID]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductClaimgeyserImpl] WITH (NOLOCK);       
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductDocdataImpl - vwCuratedZAFMavenProductDocdata
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductDocdataImpl]
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
		    FROM [RSVRRealtimeMaven].[INSIGHT].[DOCDATA] WITH (NOLOCK)
		    ;
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductDocdata]
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
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductDocdataImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductMdr_BenaccImpl - vwCuratedZAFMavenProductMdr_Benacc
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductMdr_BenaccImpl]
		  AS
		  
		  SELECT  [MBA_POLICY_CDE]
		        ,[MBA_ITEM_SEQ]
		        ,[MBA_ACC_NAME]
		        ,[MBA_ACC_NO]
		        ,[MBA_ACC_BRANCH]
		        ,[MBA_ACC_TYPE]
		        ,[MBA_BANK_NAME]
		        ,[MBA_BRANCH_NAME]
		        ,[MBA_UPD_USER]
		        ,[MBA_UPD_DATE]
		        ,[MBA_CLAIM_KEY]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[MDR_BENACC] WITH (NOLOCK)
		    ;
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductMdr_Benacc]
		  AS
		  
		  SELECT  [MBA_POLICY_CDE]
		        ,[MBA_ITEM_SEQ]
		        ,[MBA_ACC_NAME]
		        ,[MBA_ACC_NO]
		        ,[MBA_ACC_BRANCH]
		        ,[MBA_ACC_TYPE]
		        ,[MBA_BANK_NAME]
		        ,[MBA_BRANCH_NAME]
		        ,[MBA_UPD_USER]
		        ,[MBA_UPD_DATE]
		        ,[MBA_CLAIM_KEY]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductMdr_BenaccImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductMdrclm_BeneficiariesImpl - vwCuratedZAFMavenProductMdrclm_Beneficiaries
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO 
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductMdrclm_BeneficiariesImpl]
		  AS
		  
		  SELECT [MCB_CLAIM_KEY]
		        ,[MCB_ITEM_SEQ]
		        ,[MCB_TITLE_CDE]
		        ,[MCB_INIT]
		        ,[MCB_SURN]
		        ,[MCB_DOB]
		        ,[MCB_ID_NO]
		        ,[MCB_LANGUAGE_CDE]
		        ,[MCB_GENDER_CDE]
		        ,[MCB_ADDR1]
		        ,[MCB_ADDR2]
		        ,[MCB_ADDR3]
		        ,[MCB_ADDR4]
		        ,[MCB_POSTCODE]
		        ,[MCB_POST_TYPE]
		        ,[MCB_PERC]
		        ,[MCB_DELETED_IND]
		        ,[MCB_UPD_USER]
		        ,[MCB_UPD_DATE]
		        ,[MCB_HOME_TEL]
		        ,[MCB_WORK_TEL]
		        ,[MCB_CELL]
		        ,[MCB_FREE_COVER]
		        ,[MCB_MEMBER_TYPE]
		        ,[MCB_BENEFIT]
		        ,[MCB_CRT_USER]
		        ,[MCB_CRT_DATE]
		        ,[MCB_BEN_CDE]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[MDRCLM_BENEFICIARIES] WITH (NOLOCK)
		    ;
		    GO
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO 
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductMdrclm_Beneficiaries]
		  AS
		  
		  SELECT [MCB_CLAIM_KEY]
		        ,[MCB_ITEM_SEQ]
		        ,[MCB_TITLE_CDE]
		        ,[MCB_INIT]
		        ,[MCB_SURN]
		        ,[MCB_DOB]
		        ,[MCB_ID_NO]
		        ,[MCB_LANGUAGE_CDE]
		        ,[MCB_GENDER_CDE]
		        ,[MCB_ADDR1]
		        ,[MCB_ADDR2]
		        ,[MCB_ADDR3]
		        ,[MCB_ADDR4]
		        ,[MCB_POSTCODE]
		        ,[MCB_POST_TYPE]
		        ,[MCB_PERC]
		        ,[MCB_DELETED_IND]
		        ,[MCB_UPD_USER]
		        ,[MCB_UPD_DATE]
		        ,[MCB_HOME_TEL]
		        ,[MCB_WORK_TEL]
		        ,[MCB_CELL]
		        ,[MCB_FREE_COVER]
		        ,[MCB_MEMBER_TYPE]
		        ,[MCB_BENEFIT]
		        ,[MCB_CRT_USER]
		        ,[MCB_CRT_DATE]
		        ,[MCB_BEN_CDE]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductMdrclm_BeneficiariesImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductSil_Claim_AppointImpl - vwCuratedZAFMavenProductSil_Claim_Appoint
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductSil_Claim_AppointImpl]
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
		    
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductSil_Claim_Appoint]
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
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductSil_Claim_AppointImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductSil_Contractor_StatusImpl - vwCuratedZAFMavenProductSil_Contractor_Status
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductSil_Contractor_StatusImpl]
		  AS
		  
		  SELECT  [SCS_CLM_KEY]
		        ,[SCS_CON_KEY]
		        ,[SCS_CRT_DATE]
		        ,[SCS_UPD_DATE]
		        ,[SCS_CRT_USER]
		        ,[SCS_UPD_USER]
		        ,[SCS_STATUS_CDE]
		        ,[SCS_POLICY_KEY]
		        ,[SCS_TYPE]
		        ,[SCS_APPOINT_KEY]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[SIL_CONTRACTOR_STATUS] WITH (NOLOCK)
		    ;
		    GO
		  
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductSil_Contractor_Status]
		  AS
		  
		  SELECT  [SCS_CLM_KEY]
		        ,[SCS_CON_KEY]
		        ,[SCS_CRT_DATE]
		        ,[SCS_UPD_DATE]
		        ,[SCS_CRT_USER]
		        ,[SCS_UPD_USER]
		        ,[SCS_STATUS_CDE]
		        ,[SCS_POLICY_KEY]
		        ,[SCS_TYPE]
		        ,[SCS_APPOINT_KEY]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductSil_Contractor_StatusImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductWeb_Sil_Claim_ComplaintImpl - vwCuratedZAFMavenProductWeb_Sil_Claim_Complaint
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductWeb_Sil_Claim_ComplaintImpl]
		  AS
		  
		  SELECT [COMPLAINT_KEY]
		        ,[CLAIM_KEY]
		        ,[COMPLAINT_CRT_DATE]
		        ,[COMPLAINT_TYPE]
		        ,[COMPLAINT_DESCR]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[WEB_SIL_CLAIM_COMPLAINT] WITH (NOLOCK)
		    ;
		    GO
		  
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductWeb_Sil_Claim_Complaint]
		  AS
		  
		  SELECT [COMPLAINT_KEY]
		        ,[CLAIM_KEY]
		        ,[COMPLAINT_CRT_DATE]
		        ,[COMPLAINT_TYPE]
		        ,[COMPLAINT_DESCR]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductWeb_Sil_Claim_ComplaintImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductDc_Response_TrackingImpl - vwCuratedZAFMavenProductDc_Response_Tracking
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductDc_Response_TrackingImpl]
		  AS
		  
		  SELECT [DCRT_CRT_DATE]
		        ,[DCT_LINE]
		        ,[DCRT_SEQ]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[DC_RESPONSE_TRACKING] WITH (NOLOCK)
		    ;
		    GO
		  
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductDc_Response_Tracking]
		  AS
		  
		  SELECT [DCRT_CRT_DATE]
		        ,[DCT_LINE]
		        ,[DCRT_SEQ]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductDc_Response_TrackingImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE vwCuratedZAFMavenProductDb_Table_CountImpl - vwCuratedZAFMavenProductDb_Table_Count
	  collapsed:: true
		- ```SQL
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  CREATE OR ALTER VIEW [INSIGHT].[vwCuratedZAFMavenProductDb_Table_CountImpl]
		  AS
		  
		  SELECT [DTCDATABASENAME]
		        ,[DTCTABLENAME]
		        ,[DTCRECORDCOUNT]
		        ,[DTCRUNDATE]
		        ,[DTCRUNKEY]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[DB_TABLE_COUNT] WITH (NOLOCK)
		    ;
		    GO
		  
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  CREATE OR ALTER VIEW [PRODUCT].[vwCuratedZAFMavenProductDb_Table_Count]
		  AS
		  
		  SELECT [DTCDATABASENAME]
		        ,[DTCTABLENAME]
		        ,[DTCRECORDCOUNT]
		        ,[DTCRUNDATE]
		        ,[DTCRUNKEY]
		    FROM [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenProductDb_Table_CountImpl] WITH (NOLOCK)
		    ;
		    GO
		  ```
	- DONE Implementation Security
	  collapsed:: true
		- ```sql
		  USE [RSVRRealtimeMaven]
		  GO
		  
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductThirdpartyImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductMotorfleet_TransactionsImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductCheqrequisitionImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductClaimestimatesImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductClaimflooringImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductClaimgeyserImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductDocdataImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductMdr_BenaccImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductMdrclm_BeneficiariesImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductSil_Claim_AppointImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductSil_Contractor_StatusImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductWeb_Sil_Claim_ComplaintImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductDc_Response_TrackingImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[INSIGHT].[vwCuratedZAFMavenProductDb_Table_CountImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  ```
	- DONE Interface Security
	  collapsed:: true
		- ```sql
		  USE [RSVRcuratedInterfaceWealth]
		  GO
		  
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductThirdparty] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductMotorfleet_Transactions] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductCheqrequisition] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductProductClaimestimates] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductClaimflooring] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductClaimgeyser] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductDocdata] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductMdr_Benacc] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductMdrclm_Beneficiaries] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductSil_Claim_Appoint] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductSil_Contractor_Status] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductWeb_Sil_Claim_Complaint] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductDc_Response_Tracking] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFMavenProductDb_Table_Count] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
		  ```
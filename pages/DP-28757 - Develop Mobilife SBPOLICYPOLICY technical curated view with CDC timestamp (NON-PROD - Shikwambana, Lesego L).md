- Metadata Template
  collapsed:: true
	- [Mobilife_Technical_CV_v2.xlsx](../assets/Mobilife_Technical_CV_v2_1679564495950_0.xlsx)
	- [Mobilife_Technical_CV_v2 (1).xlsx](../assets/Mobilife_Technical_CV_v2_(1)_1679567078670_0.xlsx)
- DONE [MOBILITY_DFS_REPORTS_TCV].[vwCuratedZAFMobiLifeSBPolicyPolicy_TCVImpl] / [PRODUCT].[vwCuratedZAFSBMobiLifePolicyPolicy_TCV]
	- DONE Implementation View SQL
		- ```sql
		  USE [RSVRRealtimeMobiLife]
		  GO
		  
		  CREATE VIEW  [MOBILITY_DFS_REPORTS_TCV].[vwCuratedZAFMobiLifeSBPolicyPolicy_TCVImpl]
		  AS  
		  SELECT
		  
		  [Id]
		        ,[Term]
		        ,[Active]
		        ,[AnniversaryDate]
		        ,[UniquePolicyNumber]
		        ,[IndividualId]
		        ,[Age]
		        ,[IDNumber]
		        ,[FirstName]
		        ,[Surname]
		        ,[EmailAddress]
		        ,[Cellphone]
		        ,[ProductId]
		        ,[ProductName]
		        ,[BankName]
		        ,[BankAccountNumber]
		        ,[DebitOrderDay]
		        ,[SumAssured]
		        ,[BasePremium]
		        ,[GrossPremium]
		        ,[NettPremium]
		        ,[DiscountPercentage]
		        ,[DateCreated]
		        ,[DiscountAmount]
		        ,[InceptionDate]
		        ,[WaitingPeriodEndDate]
		        ,[BankBranchCode]
		        ,[CalculatedBenefitOptionId]
		        ,[ProductVersion]
		        ,[LastUpdated]
		        ,[ContractStatusReason]
		        ,[BenefitAmount]
		        ,[FirstDebitDate]
		        ,[ContractStatusReasonDate]
		        ,[LastAnniversaryDate]
		        ,[CollectionTrackingDays]
		        ,[FinalSkipDate]
		        ,[ConsultantCodeId]
		        ,[ContractStatusDateTime]
		        ,[AutomaticBenefitIncrease]
		        ,[WaiveWaitingPeriod]
		        ,[CollectionMethod]
		        ,[PolicyFee]
		        ,[OriginalProductId]
		        ,[ContractPaymentStatusDate]
		        ,[CoverPercentage]
		        ,[DateOfCoverPercentage]
		        ,[BankDetailsId]
		        ,[TenantId]
		        ,[PassportNumber]
		        ,[BankAccountType]
		        ,[BankProtocolCount]
		        ,[Migrated]
		        ,[AutomaticContributionIncrease]
		        ,[AffinityName]
		        ,[ExternalPolicyNumber]
		        ,[PassportData]
		        ,[CDCOperator]
		        ,case when [CDCOperator] = 'I' then [RSVRLoadDate] else  [CDCUpdateDate] end as CDCTimestamp
		  
		  from [RSVRRealtimeMobiLife].[mobility_dfs_reports].[sb_policy_policy] WITH (NOLOCK)
		  ```
	- DONE Interface View SQL
		- ```sql
		  USE [RSVRCuratedInterfaceWealth]
		  GO
		  
		  CREATE VIEW  [PRODUCT].[vwCuratedZAFSBMobiLifePolicyPolicy_TCV]
		  AS  
		  SELECT
		   [Id]
		  ,[Term]
		  ,[Active]
		  ,[AnniversaryDate]
		  ,[UniquePolicyNumber]
		  ,[IndividualId]
		  ,[Age]
		  ,[IDNumber]
		  ,[FirstName]
		  ,[Surname]
		  ,[EmailAddress]
		  ,[Cellphone]
		  ,[ProductId]
		  ,[ProductName]
		  ,[BankName]
		  ,[BankAccountNumber]
		  ,[DebitOrderDay]
		  ,[SumAssured]
		  ,[BasePremium]
		  ,[GrossPremium]
		  ,[NettPremium]
		  ,[DiscountPercentage]
		  ,[DateCreated]
		  ,[DiscountAmount]
		  ,[InceptionDate]
		  ,[WaitingPeriodEndDate]
		  ,[BankBranchCode]
		  ,[CalculatedBenefitOptionId]
		  ,[ProductVersion]
		  ,[LastUpdated]
		  ,[ContractStatusReason]
		  ,[BenefitAmount]
		  ,[FirstDebitDate]
		  ,[ContractStatusReasonDate]
		  ,[LastAnniversaryDate]
		  ,[CollectionTrackingDays]
		  ,[FinalSkipDate]
		  ,[ConsultantCodeId]
		  ,[ContractStatusDateTime]
		  ,[AutomaticBenefitIncrease]
		  ,[WaiveWaitingPeriod]
		  ,[CollectionMethod]
		  ,[PolicyFee]
		  ,[OriginalProductId]
		  ,[ContractPaymentStatusDate]
		  ,[CoverPercentage]
		  ,[DateOfCoverPercentage]
		  ,[BankDetailsId]
		  ,[TenantId]
		  ,[PassportNumber]
		  ,[BankAccountType]
		  ,[BankProtocolCount]
		  ,[Migrated]
		  ,[AutomaticContributionIncrease]
		  ,[AffinityName]
		  ,[ExternalPolicyNumber]
		  ,[PassportData]
		  ,[CDCOperator]
		  ,CDCTimestamp
		  from [RSVRRealtimeMobiLife].[MOBILITY_DFS_REPORTS_TCV].[vwCuratedZAFMobiLifeSBPolicyPolicy_TCVImpl] WITH (NOLOCK)  
		  ```
- DONE Access SQL
  collapsed:: true
	- ```sql
	  USE [RSVRRealtimeMobiLife]
	  GO
	  
	  GRANT SELECT ON OBJECT::[MOBILITY_DFS_REPORTS_TCV].[vwCuratedZAFMobiLifeSBPolicyPolicy_TCVImpl] TO RSVR_P_CV_ZAF_MOBILIFE_READ
	  
	  USE [RSVRCuratedInterfaceWealth]
	  GO
	  
	  GRANT SELECT ON OBJECT::[PRODUCT].[vwCuratedZAFSBMobiLifePolicyPolicy_TCV] TO RSVR_P_CV_ZAF_MOBILIFE_READ
	  ```
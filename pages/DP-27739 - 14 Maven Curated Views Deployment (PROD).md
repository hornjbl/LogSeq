- Change Request: CRQ000000349769
- [Reservior Data Curation Metadata For Maven (1).xlsx](../assets/Reservior_Data_Curation_Metadata_For_Maven_(1)_1675843720281_0.xlsx)
	- Views:
		- Implementation View DB: [[RSVRRealtimeMaven]]
		- Interface View DB: [[RSVRCuratedInterfaceWealth]]
		- |**Implementation View**|**Interface View**|
		  |--|--|
		  |[INSIGHT]. [[vwCuratedZAFMavenThirdpartyImpl]] |[PRODUCT]. [[vwCuratedZAFMavenThirdparty]] |
		  |[INSIGHT]. [[vwCuratedZAFMavenMotorfleet_TransactionsImpl]] |[PRODUCT]. [[vwCuratedZAFMavenMotorfleet_Transactions]] |
		  |[INSIGHT]. [[vwCurateZAFMavenCheqrequisitionImpl]] |[PRODUCT].[[vwCuratedZAFMavenCheqrequisition]]|
		  |[INSIGHT].[[vwCurateZAFMavenClaimestimatesImpl]]|[PRODUCT].[[vwCurateZAFMavenClaimestimates]]|
		  |[INSIGHT].[[vwCurateZAFMavenClaimflooringImpl]]|[PRODUCT].[[vwCurateZAFMavenClaimflooring]]|
		  |[INSIGHT].[[vwCurateZAFMavenClaimgeyserImpl]]|[PRODUCT].[[vwCurateZAFMavenClaimgeyser]]|
		  |[INSIGHT].[[vwCurateZAFMavenDocdataImpl]]|[PRODUCT].[[vwCurateZAFMavenDocdata]]|
		  |[INSIGHT].[[vwCurateZAFMavenMdr_BenaccImpl]]|[PRODUCT].[[vwCurateZAFMavenMdr_Benacc]]|
		  |[INSIGHT].[[vwCuratedZAFMavenMdrclm_BeneficiariesImpl]]|[PRODUCT].[[vwCuratedZAFMavenMdrclm_Beneficiaries]]|
		  |[INSIGHT].[[vwCurateZAFMavenSil_Claim_AppointImpl]]|[PRODUCT].[[vwCurateZAFMavenSil_Claim_Appoint]]|
		  |[INSIGHT].[[vwCurateZAFMAvenSil_Contractor_StatusImpl]]|[PRODUCT].[[vwCurateZAFMAvenSil_Contractor_Status]]|
		  |[INSIGHT].[[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl]]|[PRODUCT].[[vwCurateZAFMavenWeb_Sil_Claim_Complaint]]|
		  |[INSIGHT].[[vwCurateZAFMavenDc_Response_TrackingImpl]]|[PRODUCT].[[vwCurateZAFMavenDc_Response_Tracking]]|
		  |[INSIGHT].[[vwCurateZAFMavenDb_Table_CountImpl]]|[PRODUCT].[[vwCurateZAFMavenDb_Table_Count]]|
	- Permissions:
		- Implementation Permissions:
			- ```sql
			  USE [RSVRRealtimeMaven]
			  GO
			  
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenThirdpartyImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMotorfleet_TransactionsImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenCheqrequisitionImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimestimatesImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimflooringImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimgeyserImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDocdataImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMdrclm_BeneficiariesImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenSil_Claim_AppointImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  ```
		- Interface Permissions:
			- ```sql
			  USE [RSVRCuratedInterfaceWealth]
			  GO
			  
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenThirdparty] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenMotorfleet_Transactions] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenCheqrequisition] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenClaimestimates] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenClaimflooring] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenClaimgeyser] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenDocdata] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenMdr_Benacc] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenMdrclm_Beneficiaries] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenSil_Claim_Appoint] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMAvenSil_Contractor_Status] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenWeb_Sil_Claim_Complaint] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenDc_Response_Tracking] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  GRANT SELECT ON OBJECT::[RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenDb_Table_Count] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
			  ```
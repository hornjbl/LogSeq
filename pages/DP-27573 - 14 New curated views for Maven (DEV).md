- Deployment Script
  collapsed:: true
	- [Reservior Data Curation Metadata For Maven.xlsx](../assets/Reservior_Data_Curation_Metadata_For_Maven_1675326541091_0.xlsx)
- Implementation Views
  collapsed:: true
	- [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenThirdpartyImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMotorfleet_TransactionsImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenCheqrequisitionImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimestimatesImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimflooringImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimgeyserImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDocdataImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMdrclm_BeneficiariesImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenSil_Claim_AppointImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl]
	- [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl]
- Implementation Views Security:
  collapsed:: true
	- ```SQL
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenThirdpartyImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMotorfleet_TransactionsImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenCheqrequisitionImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimestimatesImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimflooringImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenClaimgeyserImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDocdataImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenMdr_BenaccImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCuratedZAFMavenMdrclm_BeneficiariesImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenSil_Claim_AppointImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMAvenSil_Contractor_StatusImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenWeb_Sil_Claim_ComplaintImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDc_Response_TrackingImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRRealtimeMaven].[INSIGHT].[vwCurateZAFMavenDb_Table_CountImpl] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  ```
- Interface Views
  collapsed:: true
	- [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenThirdparty]
	- [PRODUCT].[vwCuratedZAFMavenMotorfleet_Transactions]
	- [PRODUCT].[vwCuratedZAFMavenCheqrequisition]
	- [PRODUCT].[vwCurateZAFMavenClaimestimates]
	- [PRODUCT].[vwCurateZAFMavenClaimflooring]
	- [PRODUCT].[vwCurateZAFMavenClaimgeyser]
	- [PRODUCT].[vwCurateZAFMavenDocdata]
	- [PRODUCT].[vwCurateZAFMavenMdr_Benacc]
	- [PRODUCT].[vwCuratedZAFMavenMdrclm_Beneficiaries]
	- [PRODUCT].[vwCurateZAFMavenSil_Claim_Appoint]
	- [PRODUCT].[vwCurateZAFMAvenSil_Contractor_Status]
	- [PRODUCT].[vwCurateZAFMavenWeb_Sil_Claim_Complaint]
	- [PRODUCT].[vwCurateZAFMavenDc_Response_Tracking]
	- [PRODUCT].[vwCurateZAFMavenDb_Table_Count]
- Interface Views Security
  collapsed:: true
	- ```SQL
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenThirdparty] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenMotorfleet_Transactions] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenCheqrequisition] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenClaimestimates] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenClaimflooring] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenClaimgeyser] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenDocdata] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenMdr_Benacc] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCuratedZAFMavenMdrclm_Beneficiaries] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenSil_Claim_Appoint] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMAvenSil_Contractor_Status] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenWeb_Sil_Claim_Complaint] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenDc_Response_Tracking] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  GRANT SELECT ON [RSVRCuratedInterfaceWealth].[PRODUCT].[vwCurateZAFMavenDb_Table_Count] TO RSVR_P_CV_ZAF_MAVEN_PRODUCT_READ;
	  ```
- Curated View AD Group: SBCIZA01\\RSVR_P_CV_ZAF_ESCROW_READ
- RawBatch AD Group: SBCIZA01\\RSVR_P_DB_ESCROW_READ
- Data Steward: Paula Parkin
- AD Group Request Info:
  collapsed:: true
	- Motivation*:	AD group to manage access to the Escrow data on the Reservoir by the data steward.
	- Additional Information:	Kindly ensure that Paula Parkin is the main owner, but also include Ben-Lindsey Horn as co-owner of the group.
- DONE [Reservoir Data Curation - vwCuratedZAFESCROWActiveTransactionReport.xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFESCROWActiveTransactionReport_1678097207846_0.xlsx)
  collapsed:: true
	- [Reservoir Data Curation - vwCuratedZAFESCROWActiveTransactionReport.xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFESCROWActiveTransactionReport_1678100977329_0.xlsx)
	- DONE Implementation Script
	  collapsed:: true
		- ```sql
		  USE [RSVRRawBatchPBB]
		  GO
		  
		  CREATE OR ALTER VIEW [Escrow].[vwCuratedZAFEscrowActiveTransactionReportImpl]
		  AS
		  
		  /****** Account Origination Curation  ******/
		  Select 
		         [ID]
		        ,[Industry]
		        ,[Description]
		        ,[Value]
		        ,[Fee]
		        ,[Fee_Ex_Vat]
		        ,[Vat]
		        ,[Fee_Allocation]
		        ,[Buyer_Id]
		        ,[Buyer_Name]
		        ,[Buyer_Account Number]
		        ,[Buyer_Bank]
		        ,[Buyer_Payout]
		        ,[Buyer_Processing_Fee]
		        ,[Buyer_Total_Fee]
		        ,[Seller_Id]
		        ,[Seller_Name]
		        ,[Seller_Account_Number]
		        ,[Seller_Bank]
		        ,[Seller_Payout]
		        ,[Seller_Processing_Fee]
		        ,[Seller_Total_Fee]
		        ,[Created_Start_Date]
		        ,[Created_End_Date]
		        ,[Invitation_Sent_Start_Date]
		        ,[Invitation_Sent_End_Date]
		        ,[Negotiation_Start_Date]
		        ,[Negotiation_End_Date]
		        ,[Accepted_Start_Date]
		        ,[Accepted_End_Date]
		        ,[Funds_Deposited_Start_Date]
		        ,[Funds_Deposited_End_Date]
		        ,[Funds_Received_Start_Date]
		        ,[Funds_Received_End_Date]
		        ,[Initiated_Start_Date]
		        ,[Initiated_End_Date]
		        ,[Delivered_Start_Date]
		        ,[Delivered_End_Date]
		        ,[Funds_Released_Start_Date]
		        ,[Funds_Released_End_Date]
		        ,[Canceled_Start_Date]
		        ,[Canceled End Date]
		        ,[Declined_Start_Date]
		        ,[Declined_End_Date]
		        ,[Disputed_Start_Date]
		        ,[Disputed_End_Date]
		        ,[Legal_Start_Date]
		        ,[Legal_End_Date]
		        ,[Admin_Suspended_Start_Date]
		        ,[Admin_Suspended_End_Date]
		        ,[Admin_Canceled_Start_Date]
		        ,[Admin_Canceled_End_Date]
		        ,[Disputed_Extended_Start_Date]
		        ,[Disputed_Extended_End_Date]
		        ,[Disputed_Renegotiate_Start_Date]
		        ,[Disputed_Renegotiate_End_Date]
		        ,[Goods_Accepted_Start_Date]
		        ,[Goods_Accepted_End_Date]
		        ,[Suspended_Start_Date]
		        ,[Suspended_End_Date]
		        ,[Complete_Start_Date]
		        ,[Complete_End_Date]
		  from [RSVRRawBatchPBB].[Escrow].[EscrowActiveTransactionReport] WITH (NOLOCK)
		  GO
		  ```
	- DONE Interface Script
	  collapsed:: true
		- ```sql
		  USE [RSVRCuratedInterfacePBB]
		  GO
		   
		  
		  CREATE OR ALTER VIEW [Transaction].[vwCuratedZAFEscrowActiveTransactionReport] 
		  AS 
		  
		  Select [ID]
		        ,[Industry]
		        ,[Description]
		        ,[Value]
		        ,[Fee]
		        ,[Fee_Ex_Vat]
		        ,[Vat]
		        ,[Fee_Allocation]
		        ,[Buyer_Id]
		        ,[Buyer_Name]
		        ,[Buyer_Account Number]
		        ,[Buyer_Bank]
		        ,[Buyer_Payout]
		        ,[Buyer_Processing_Fee]
		        ,[Buyer_Total_Fee]
		        ,[Seller_Id]
		        ,[Seller_Name]
		        ,[Seller_Account_Number]
		        ,[Seller_Bank]
		        ,[Seller_Payout]
		        ,[Seller_Processing_Fee]
		        ,[Seller_Total_Fee]
		        ,[Created_Start_Date]
		        ,[Created_End_Date]
		        ,[Invitation_Sent_Start_Date]
		        ,[Invitation_Sent_End_Date]
		        ,[Negotiation_Start_Date]
		        ,[Negotiation_End_Date]
		        ,[Accepted_Start_Date]
		        ,[Accepted_End_Date]
		        ,[Funds_Deposited_Start_Date]
		        ,[Funds_Deposited_End_Date]
		        ,[Funds_Received_Start_Date]
		        ,[Funds_Received_End_Date]
		        ,[Initiated_Start_Date]
		        ,[Initiated_End_Date]
		        ,[Delivered_Start_Date]
		        ,[Delivered_End_Date]
		        ,[Funds_Released_Start_Date]
		        ,[Funds_Released_End_Date]
		        ,[Canceled_Start_Date]
		        ,[Canceled End Date]
		        ,[Declined_Start_Date]
		        ,[Declined_End_Date]
		        ,[Disputed_Start_Date]
		        ,[Disputed_End_Date]
		        ,[Legal_Start_Date]
		        ,[Legal_End_Date]
		        ,[Admin_Suspended_Start_Date]
		        ,[Admin_Suspended_End_Date]
		        ,[Admin_Canceled_Start_Date]
		        ,[Admin_Canceled_End_Date]
		        ,[Disputed_Extended_Start_Date]
		        ,[Disputed_Extended_End_Date]
		        ,[Disputed_Renegotiate_Start_Date]
		        ,[Disputed_Renegotiate_End_Date]
		        ,[Goods_Accepted_Start_Date]
		        ,[Goods_Accepted_End_Date]
		        ,[Suspended_Start_Date]
		        ,[Suspended_End_Date]
		        ,[Complete_Start_Date]
		        ,[Complete_End_Date]
		  FROM [RSVRRawBatchPBB].[Escrow].[vwCuratedZAFEscrowActiveTransactionReportImpl] WITH (NOLOCK)
		  
		  GO
		  ```
- DONE [Reservoir Data Curation - vwCuratedZAFESCROWUserReport.xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFESCROWUserReport_1678097231532_0.xlsx)
  collapsed:: true
	- [Reservoir Data Curation - vwCuratedZAFESCROWUserReport.xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFESCROWUserReport_1678100939891_0.xlsx)
	- DONE Implementation Script
	  collapsed:: true
		- ```sql
		  USE [RSVRRawBatchPBB]
		  go
		  
		  
		  CREATE OR ALTER VIEW [ESCROW].[vwCuratedZAFEscrowUserReportImpl]
		  AS
		  
		  /****** Account Origination Curation  ******/
		  Select 
		         [ID]
		        ,[Id_number]
		        ,[Email]
		        ,[Mobile]
		        ,[Address]
		        ,[Account_Number]
		        ,[Account_Verified]
		        ,[User_Complete]
		        ,[status]
		  from [RSVRRawBatchPBB].[Escrow].[EscrowUserReport] WITH (NOLOCK)
		  GO
		  ```
	- DONE Interface Script
	  collapsed:: true
		- ```sql
		  USE [RSVRCuratedInterfacePBB]
		  GO
		   
		  
		  CREATE OR ALTER VIEW [Transaction].[vwCuratedZAFEscrowUserReport] 
		  AS 
		  
		  Select [ID]
		        ,[Id_number]
		        ,[Email]
		        ,[Mobile]
		        ,[Address]
		        ,[Account_Number]
		        ,[Account_Verified]
		        ,[User_Complete]
		        ,[status]
		  FROM [RSVRRawBatchPBB].[ESCROW].[vwCuratedZAFEscrowUserReportImpl] WITH (NOLOCK)
		  
		  GO
		  ```
- [Reservoir Data Curation - vwCuratedZAFESCROWActiveTransactionReport2.xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFESCROWActiveTransactionReport2_1678107251038_0.xlsx)
  collapsed:: true
	- Implementation Script
		- ```sql
		  USE [RSVRRawBatchPBB]
		  GO
		  
		  CREATE OR ALTER VIEW [Escrow].[vwCuratedZAFEscrowActiveTransactionReportImpl]
		  AS
		  
		  /****** Account Origination Curation  ******/
		  SELECT 
		         [ID]
		        ,[Industry]
		        ,[Description]
		        ,[Value]
		        ,[Fee]
		        ,[Fee_Ex_Vat]
		        ,[Vat]
		        ,[Fee_Allocation]
		        ,[Buyer_Id]
		        ,[Buyer_Name]
		        ,[Buyer_Account Number]
		        ,[Buyer_Bank]
		    ,[Buyer_Deposit]
		        ,[Buyer_Payout]
		        ,[Buyer_Processing_Fee]
		        ,[Buyer_Total_Fee]
		        ,[Seller_Id]
		        ,[Seller_Name]
		        ,[Seller_Account_Number]
		        ,[Seller_Bank]
		        ,[Seller_Payout]
		        ,[Seller_Processing_Fee]
		        ,[Seller_Total_Fee]
		        ,[Created_Start_Date]
		        ,[Created_End_Date]
		        ,[Invitation_Sent_Start_Date]
		        ,[Invitation_Sent_End_Date]
		        ,[Negotiation_Start_Date]
		        ,[Negotiation_End_Date]
		        ,[Accepted_Start_Date]
		        ,[Accepted_End_Date]
		        ,[Funds_Deposited_Start_Date]
		        ,[Funds_Deposited_End_Date]
		        ,[Funds_Received_Start_Date]
		        ,[Funds_Received_End_Date]
		        ,[Initiated_Start_Date]
		        ,[Initiated_End_Date]
		        ,[Delivered_Start_Date]
		        ,[Delivered_End_Date]
		        ,[Funds_Released_Start_Date]
		        ,[Funds_Released_End_Date]
		        ,[Canceled_Start_Date]
		        ,[Canceled End Date]
		        ,[Declined_Start_Date]
		        ,[Declined_End_Date]
		        ,[Disputed_Start_Date]
		        ,[Disputed_End_Date]
		        ,[Legal_Start_Date]
		        ,[Legal_End_Date]
		        ,[Admin_Suspended_Start_Date]
		        ,[Admin_Suspended_End_Date]
		        ,[Admin_Canceled_Start_Date]
		        ,[Admin_Canceled_End_Date]
		        ,[Disputed_Extended_Start_Date]
		        ,[Disputed_Extended_End_Date]
		        ,[Disputed_Renegotiate_Start_Date]
		        ,[Disputed_Renegotiate_End_Date]
		        ,[Goods_Accepted_Start_Date]
		        ,[Goods_Accepted_End_Date]
		        ,[Suspended_Start_Date]
		        ,[Suspended_End_Date]
		        ,[Complete_Start_Date]
		        ,[Complete_End_Date]
		  FROM [RSVRRawBatchPBB].[Escrow].[EscrowActiveTransactionReport] WITH (NOLOCK)
		  GO
		  ```
	- Interface Script
- DONE [Reservoir Data Curation - vwCuratedZAFESCROWActiveTransactionReport3.xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFESCROWActiveTransactionReport3_1678107793100_0.xlsx)
  collapsed:: true
	- DONE Implementation Script
	  collapsed:: true
		- ```sql
		  USE RSVRRawBatchPBB
		  GO
		  
		  CREATE OR ALTER VIEW [Escrow].[vwCuratedZAFEscrowActiveTransactionReportImpl]
		  AS
		  
		  /****** Account Origination Curation  ******/
		  Select 
		         [ID]
		        ,[Industry]
		        ,[Description]
		        ,[Value]
		        ,[Fee]
		        ,[Fee_Ex_Vat]
		        ,[Vat]
		        ,[Fee_Allocation]
		        ,[Buyer_Id]
		        ,[Buyer_Name]
		        ,[Buyer_Account_Number]
		        ,[Buyer_Bank]
		    ,[Buyer_Deposit]
		        ,[Buyer_Payout]
		        ,[Buyer_Processing_Fee]
		        ,[Buyer_Total_Fee]
		        ,[Seller_Id]
		        ,[Seller_Name]
		        ,[Seller_Account_Number]
		        ,[Seller_Bank]
		        ,[Seller_Payout]
		        ,[Seller_Processing_Fee]
		        ,[Seller_Total_Fee]
		        ,[Created_Start_Date]
		        ,[Created_End_Date]
		        ,[Invitation_Sent_Start_Date]
		        ,[Invitation_Sent_End_Date]
		        ,[Negotiation_Start_Date]
		        ,[Negotiation_End_Date]
		        ,[Accepted_Start_Date]
		        ,[Accepted_End_Date]
		        ,[Funds_Deposited_Start_Date]
		        ,[Funds_Deposited_End_Date]
		        ,[Funds_Received_Start_Date]
		        ,[Funds_Received_End_Date]
		        ,[Initiated_Start_Date]
		        ,[Initiated_End_Date]
		        ,[Delivered_Start_Date]
		        ,[Delivered_End_Date]
		        ,[Funds_Released_Start_Date]
		        ,[Funds_Released_End_Date]
		        ,[Canceled_Start_Date]
		        ,[Canceled_End_Date]
		        ,[Declined_Start_Date]
		        ,[Declined_End_Date]
		        ,[Disputed_Start_Date]
		        ,[Disputed_End_Date]
		        ,[Legal_Start_Date]
		        ,[Legal_End_Date]
		        ,[Admin_Suspended_Start_Date]
		        ,[Admin_Suspended_End_Date]
		        ,[Admin_Canceled_Start_Date]
		        ,[Admin_Canceled_End_Date]
		        ,[Disputed_Extended_Start_Date]
		        ,[Disputed_Extended_End_Date]
		        ,[Disputed_Renegotiate_Start_Date]
		        ,[Disputed_Renegotiate_End_Date]
		        ,[Goods_Accepted_Start_Date]
		        ,[Goods_Accepted_End_Date]
		        ,[Suspended_Start_Date]
		        ,[Suspended_End_Date]
		        ,[Complete_Start_Date]
		        ,[Complete_End_Date]
		  from [RSVRRawBatchPBB].[Escrow].[EscrowActiveTransactionReport] WITH (NOLOCK)
		  GO
		  ```
	- DONE Interface Script
	  collapsed:: true
		- ```sql
		  USE [RSVRCuratedInterfacePBB]
		  GO
		   
		  
		  CREATE OR ALTER VIEW [Transaction].[vwCuratedZAFEscrowActiveTransactionReport] 
		  AS 
		  
		  Select [ID]
		        ,[Industry]
		        ,[Description]
		        ,[Value]
		        ,[Fee]
		        ,[Fee_Ex_Vat]
		        ,[Vat]
		        ,[Fee_Allocation]
		        ,[Buyer_Id]
		        ,[Buyer_Name]
		        ,[Buyer_Account_Number]
		        ,[Buyer_Bank]
		        ,[Buyer_Deposit]
		        ,[Buyer_Payout]
		        ,[Buyer_Processing_Fee]
		        ,[Buyer_Total_Fee]
		        ,[Seller_Id]
		        ,[Seller_Name]
		        ,[Seller_Account_Number]
		        ,[Seller_Bank]
		        ,[Seller_Payout]
		        ,[Seller_Processing_Fee]
		        ,[Seller_Total_Fee]
		        ,[Created_Start_Date]
		        ,[Created_End_Date]
		        ,[Invitation_Sent_Start_Date]
		        ,[Invitation_Sent_End_Date]
		        ,[Negotiation_Start_Date]
		        ,[Negotiation_End_Date]
		        ,[Accepted_Start_Date]
		        ,[Accepted_End_Date]
		        ,[Funds_Deposited_Start_Date]
		        ,[Funds_Deposited_End_Date]
		        ,[Funds_Received_Start_Date]
		        ,[Funds_Received_End_Date]
		        ,[Initiated_Start_Date]
		        ,[Initiated_End_Date]
		        ,[Delivered_Start_Date]
		        ,[Delivered_End_Date]
		        ,[Funds_Released_Start_Date]
		        ,[Funds_Released_End_Date]
		        ,[Canceled_Start_Date]
		        ,[Canceled_End_Date]
		        ,[Declined_Start_Date]
		        ,[Declined_End_Date]
		        ,[Disputed_Start_Date]
		        ,[Disputed_End_Date]
		        ,[Legal_Start_Date]
		        ,[Legal_End_Date]
		        ,[Admin_Suspended_Start_Date]
		        ,[Admin_Suspended_End_Date]
		        ,[Admin_Canceled_Start_Date]
		        ,[Admin_Canceled_End_Date]
		        ,[Disputed_Extended_Start_Date]
		        ,[Disputed_Extended_End_Date]
		        ,[Disputed_Renegotiate_Start_Date]
		        ,[Disputed_Renegotiate_End_Date]
		        ,[Goods_Accepted_Start_Date]
		        ,[Goods_Accepted_End_Date]
		        ,[Suspended_Start_Date]
		        ,[Suspended_End_Date]
		        ,[Complete_Start_Date]
		        ,[Complete_End_Date]
		  FROM [RSVRRawBatchPBB].[Escrow].[vwCuratedZAFEscrowActiveTransactionReportImpl] WITH (NOLOCK)
		  
		  GO
		  ```
- DONE Access Script
	- ```sql
	  USE [RSVRRawBatchPBB]
	  GO
	  
	  GRANT SELECT ON OBJECT::[Escrow].[vwCuratedZAFEscrowActiveTransactionReportImpl] TO RSVR_P_CV_ZAF_ESCROW_READ;
	  GRANT SELECT ON OBJECT::[Escrow].[vwCuratedZAFEscrowUserReportImpl] TO RSVR_P_CV_ZAF_ESCROW_READ;
	  
	  USE [RSVRCuratedInterfacePBB]
	  GO
	  
	  GRANT SELECT ON OBJECT::[Transaction].[vwCuratedZAFEscrowActiveTransactionReport] TO RSVR_P_CV_ZAF_ESCROW_READ;
	  GRANT SELECT ON OBJECT::[Transaction].[vwCuratedZAFEscrowUserReport] TO RSVR_P_CV_ZAF_ESCROW_READ;
	  ```
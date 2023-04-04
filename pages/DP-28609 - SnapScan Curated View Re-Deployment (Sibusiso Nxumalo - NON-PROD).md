- Metadata Template
	- [Reservoir Data Curation - vwCuratedZAFReSnapScanAccountOrigination (2).xlsx](../assets/Reservoir_Data_Curation_-_vwCuratedZAFReSnapScanAccountOrigination_(2)_1678349395387_0.xlsx)
- TODO vwCuratedZAFSNAPSCANAccountOriginationImpl / vwCuratedZAFSNAPSCANAccountOrigination
	- DONE Implementation Script
	  collapsed:: true
		- ```sql
		  Use [RSVRRawBatchPBB]
		  go
		  
		  
		  CREATE OR ALTER VIEW [SNAPSCAN].[vwCuratedZAFSNAPSCANAccountOriginationImpl]
		  AS
		  
		  /****** Account Origination Curation  ******/
		  Select 
		        try_cast(CONCAT(SUBSTRING([Merchant Created Date],5,6),SUBSTRING([Merchant Created Date],24,26)) as date) as [Merchant Created Date]
		        ,Substring([Signup Agent] , 1,Charindex('-', [Signup Agent] )-1) as [Product Name]
		        , Trim(Substring(Substring([Signup Agent] , Charindex('-', [Signup Agent] )+1, LEN([Signup Agent] )) , 1,Charindex(' ', Substring([Signup Agent] , Charindex('-', [Signup Agent] )+1, LEN([Signup Agent] )))+3)) as [Market Segment] 
		        , Trim(Substring(Substring([Signup Agent] , Charindex('-', [Signup Agent] )+1, LEN([Signup Agent] )) , Charindex(' ', Substring([Signup Agent] , Charindex('-', [Signup Agent] )+1, LEN([Signup Agent] )))+4, LEN(Substring([Signup Agent] , Charindex('-', [Signup Agent] )+1, LEN([Signup Agent] )) ))) as  [Account Number] 
		        ,[Merchant Name]
		        ,[Store Province]
		        ,try_cast(CONCAT(SUBSTRING([QR Codes Created Date],5,6),SUBSTRING([QR Codes Created Date],24,26)) as date) as [QR Codes Created Date]
		        ,[Compliance Status]
		        ,[Time Till First Tx Days]
		        ,[Business Registration Number]
		        ,[QR Codes Count]
		        ,[Average Payable Amount]
		        ,[Payments Count]
		        ,[Total Settle Amount]
		  from [RSVRRawBatchPBB].[SnapScan].[SnapScanAccountOrigination] WITH (NOLOCK)
		  GO
		  ```
	- TODO Interface Script
		- ```sql
		  USE [RSVRCuratedInterfacePBB]
		  GO
		   
		  
		  CREATE OR ALTER VIEW [Transaction].[vwCuratedZAFSNAPSCANAccountOrigination] 
		  AS 
		  
		  Select try_cast(CONCAT(SUBSTRING([Merchant Created Date],5,6),SUBSTRING([Merchant Created Date],24,26)) as date) as [Merchant Created Date]
		        ,[Product Name]
		        ,[Market Segment] 
		        ,[Account Number] 
		        ,[Merchant Name]
		        ,[Store Province]
		        ,try_cast(CONCAT(SUBSTRING([QR Codes Created Date],5,6),SUBSTRING([QR Codes Created Date],24,26)) as date) as [QR Codes Created Date]
		        ,[Compliance Status]
		        ,[Time Till First Tx Days]
		        ,[Business Registration Number]
		        ,[QR Codes Count]
		        ,[Average Payable Amount]
		        ,[Payments Count]
		        ,[Total Settle Amount]
		  FROM [RSVRRawBatchPBB].[SNAPSCAN].[vwCuratedZAFSNAPSCANAccountOriginationImpl] WITH (NOLOCK)
		  
		  GO
		  ```
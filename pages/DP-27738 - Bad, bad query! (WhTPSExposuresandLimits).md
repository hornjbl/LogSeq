- [bad_query.sql](../assets/bad_query_1675672068897_0.sql)
- Stored Proc (Original)
	- ```SQL
	  USE [RSVRDPSAPIQCIBDW]
	  GO
	  
	  /****** Object:  StoredProcedure [TPS].[uspRSVRDPSAPIQCIBDW_TPSLoadWhTPSExposuresandLimits]    Script Date: 2023/02/06 10:41:07 ******/
	  SET ANSI_NULLS ON
	  GO
	  
	  SET QUOTED_IDENTIFIER ON
	  GO
	  
	  
	  CREATE PROCEDURE [TPS].[uspRSVRDPSAPIQCIBDW_TPSLoadWhTPSExposuresandLimits] 
	  AS 
	  	DECLARE @ERROR_MESSAGE VARCHAR( 4000 ); 
	  	DECLARE @TableDate DATE;
	  	DECLARE @ViewDate DATE;
	  
	  BEGIN try 
	  
	  	TRUNCATE TABLE TPS.WhTPSExposuresandLimits;
	    
	  	--Load all rates into the table
	  	INSERT INTO  TPS.WhTPSExposuresandLimits
	  				(WhTPSExposuresandLimitsKey
	  				,BusinessDate
	  				,BusinessYear
	  				,BusinessMonth
	  				,CustomerCode
	  				,CustomerName
	  				,InternalRiskGradeLocal
	  				,InternalRiskGradeForeign
	  				,IndustryCode
	  				,CountryOfRisk
	  				,UltimateParentCode
	  				,UltimateParentName
	  				,LimitType
	  				,Portfolio
	  				,Product
	  				,ProductShortCode
	  				,Host
	  				,Commodity
	  				,BookDefinition
	  				,SecurityType
	  				,Measure
	  				,LimitCurrency
	  				,TodaysLimit
	  				,TodaysValue
	  				,TodaysUnutilised
	  				,PeakLimit
	  				,PeakValue
	  				,OriggCurrency
	  				,ZARCurrency
	  				,ProvCurrency
	  				,ZARLimit
	  				,ZARExposure
	  				,ZARPeakLimit
	  				,ZARPeakExposure
	  				,PercUtilised
	  				,HLInd
	  				,Sub_Limit
	  				,[Committed]
	  				,RiskTaker
	  				,CommittedFloatingValues
	  				,CommittedFixedValues
	  				,LimitStep1
	  				,LimitAmount1
	  				,Exposure1)
	      
	  	--Get the data from the various tables
	  	select 
	  	a.WhExposureAndUtilKey As WhTPSExposuresandLimitsKey,
	  	a.BusinessDate,
	      YEAR(a.BusinessDate) as BusinessYear,
	      MONTH(a.BusinessDate) as BusinessMonth,
	      a.CustomerCode,
	      Custh.CustomerName,
	      0 as InternalRiskGradeLocal,
	      0 as InternalRiskGradeForeign,
	      Cust.IndustryCode,
	      Cust.CountryOfRisk,
	      0 as UltimateParentCode,
	      0 as UltimateParentName,
	      --Step1.LimitType,
	  	B.LimitType AS LimitType,
	      a.Portfolio as Portfolio,
	      a.Product as Product,
	      --Step1.ProductSymbol as ProductShortCode,
	      B.ProductSymbol AS ProductSymbol,
	      --Step1.OrganizationCode as Host,
	  	A.Host AS Host,
	      a.Commodity,
	      a.BookDefinition,
	      a.SecurityType,
	      a.Measure,
	      a.Currency as LimitCurrency,
	      ISNULL(cast(cast(Step1.TodaysLimitAmount as numeric(32,2)) as decimal(32,2)),0) as TodaysLimit,
	      ISNULL(cast(cast(a.TodaysValue as numeric(32,2)) as decimal(32,2)),0) as TodaysValue,
	      ISNULL(cast(Step1.TodaysLimitAmount as numeric(32,2))-cast(cast(a.TodaysValue as numeric(32,2)) as decimal(32,2)),0) as TodaysUnutilised,
	      ISNULL(cast(cast(Step1.TodaysLimitAmount as numeric(32,2)) as decimal(32,2)),0) as PeakLimit,
	      ISNULL(cast(cast(a.PeakValue as numeric(32,2)) as decimal(32,2)),0) as PeakValue,
	      COALESCE(R.OrigCurrency,PR.ProvCurrency) as OriggCurrency,
	      US.ZARCurrency,
	      PR.ProvCurrency,
	      (case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(Step1.TodaysLimitAmount as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(Step1.TodaysLimitAmount as numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) as ZARLimit,
	      (case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(a.TodaysValue as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(cast(a.TodaysValue as numeric(32,2)) as decimal(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) as ZARExposure,
	      (case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(a.PeakValue as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(cast(a.PeakValue as numeric(32,2)) as decimal(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) as ZARPeakLimit,
	      0 as ZARPeakExposure,
	      (case when (case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(Step1.TodaysLimitAmount as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(Step1.TodaysLimitAmount as numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) is null or (case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(Step1.TodaysLimitAmount as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(Step1.TodaysLimitAmount as numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) = 0 then 0 else cast(cast((case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(a.TodaysValue as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(cast(a.TodaysValue as numeric(32,2)) as decimal(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) as numeric(32,2))/cast((case when a.Currency in( 'ZAR','LSL','NAD','SZL' ) then ISNULL(cast(cast(Step1.TodaysLimitAmount as numeric(32,2)) as decimal(32,2)),0)
	      else ISNULL(cast(((cast(Step1.TodaysLimitAmount as numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) as decimal(32,2)),0)
	      end) as numeric(32,2)) as decimal(32,2)) end) as PercUtilised,
	  	--(case when ZARLimit is null or ZARLimit = 0 then 0 else cast(cast(ZARExposure as numeric(32,2))/cast(ZARLimit as numeric(32,2)) as decimal(32,2)) end) as PercUtilised, --How above column is derived
	      0 as HLInd,
	      case when b.LimitPortfolio = 'Customer Group Cube' then 'N'
	      when b.LimitPortfolio = 'Customer Cube' then 'Y'
	      else null
	      end as Sub_Limit,
	      b.Committed,
	      Risk.RiskTaker,
	      ISNULL(cast(cast(b.LimitFloating as numeric(32,2)) as decimal(32,2)),0) as CommittedFloatingValues,
	      ISNULL(cast(cast(b.LimitFixed as numeric(32,2)) as decimal(32,2)),0) as CommittedFixedValues,
	      0 as LimitStep1,
	      --CAST(ISNULL(Step1.LimitTenor,'0') As Int) as LimitStep1,
	      --ISNULL(cast(cast(Step1.LimitTenor as numeric(32,2)) as decimal(32,2)),0) as LimitStep1,
	     -- Step1.LimitTenor ,
	  	ISNULL(cast(cast(Step1.LimitAmount as numeric(32,2)) as decimal(32,2)),0) as LimitAmount1,
	      ISNULL(cast(cast(Step1.UtilizationAmount as numeric(32,2)) as decimal(32,2)),0) as Exposure1
	      from TPS.WhExposureAndUtil as a
	        left outer join TPS.WhLimits as b
	        on a.LimitReference = b.LimitReference
	        and a.BusinessDate = b.BusinessDate
	        and ISNULL(convert(varchar,a.UtilizationStepNo),'') = ISNULL(convert(varchar,b.LimitStepNo),'')
	        --AND E.CustomerCode in ('100062926','100062961','100061084') 
	        left outer join(select E.LimitReference,
	          E.BusinessDate,
	          L.LimitTenor,
	          L.LimitStepNo,
	          L.LimitPortfolio,
	          L.ProductSymbol,
	          L.LimitType,
	          L.OrganizationCode,
	          L.LimitAmount,
	          L.TodaysLimitAmount,
	          E.UtilizationAmount,
	          L.RiskTaker
	          from TPS.WhExposureAndUtil as E
	            join TPS.WhLimits as L
	            on E.LimitReference = L.LimitReference
	            and E.BusinessDate = L.BusinessDate
	            and ISNULL(convert(varchar,E.UtilizationStepNo),'') = ISNULL(convert(varchar,L.LimitStepNo),'')
	          where L.LimitStepNo = 1
	          and E.BusinessDate >= dateadd(day,-120,getdate())) as Step1( LimitReference,BusinessDate,LimitTenor,LimitStepNo,LimitPortfolio,ProductSymbol,LimitType,OrganizationCode,LimitAmount,TodaysLimitAmount,UtilizationAmount,RiskTaker ) 
	        on a.LimitReference = Step1.LimitReference
	        and a.BusinessDate = Step1.BusinessDate
	        and ISNULL(convert(varchar,a.UtilizationStepNo),'') = ISNULL(convert(varchar,Step1.LimitStepNo),'')
	        ---------------------------------------------------------------------
	        --Get CIF Details
	        ---------------------------------------------------------------------
	        left outer join(select distinct
	          D_CIF_HIER.CUST_N,
	          D_CIF_HIER.CUST_LONG_M as CustomerName
	          from CIF.D_CIF_HIER) as Custh( CUST_N,CustomerName ) 
	        on a.CustomerCode = Custh.CUST_N
	        ---------------------------------------------------------------------
	        --Get Last Industry Code
	        ---------------------------------------------------------------------
	        left outer join(select Comb.CustomerCode,
	          Comb.CountryOfRisk,
	          Comb.IndustryCode
	          from(select distinct
	              D_CIF_CUST.CUST_N as CustomerCode,
	              D_CIF_CUST.CNRY_OF_OPRTN_C as CountryOfRisk,
	              D_CIF_CUST.INSTY_CLASS_C as IndustryCode,
	              COUNT(D_CIF_CUST.CUST_N) as Ctr,
	              ROW_NUMBER() over(partition by D_CIF_CUST.CUST_N order by COUNT(D_CIF_CUST.CUST_N) desc) as Rowctr
	              from CIF.D_CIF_CUST group by D_CIF_CUST.CUST_N,D_CIF_CUST.CNRY_OF_OPRTN_C,D_CIF_CUST.INSTY_CLASS_C) as Comb( CustomerCode,CountryOfRisk,IndustryCode,Ctr,Rowctr ) 
	          where Comb.Rowctr = 1) as Cust( CustomerCode,CountryOfRisk,IndustryCode ) 
	        on a.CustomerCode = (convert(varchar,Cust.CustomerCode))
	        ---------------------------------------------------------------------
	        --Get the Rates per Currency
	        ---------------------------------------------------------------------
	        left outer join(select R1.FX_RATE_DT,
	          R1.FX_C as Currency,
	          R1.FX_RATE_A as OrigCurrency
	          from AssetControl.R_FX as R1) as R( FX_RATE_DT,Currency,OrigCurrency ) 
	        on a.BusinessDate = R.FX_RATE_DT and a.Currency = R.Currency
	        ---------------------------------------------------------------------
	        --Get the USD To ZAR for the Calculations
	        ---------------------------------------------------------------------
	        left outer join(select R2.FX_RATE_DT,
	          R2.FX_C as Currency,
	          R2.FX_RATE_A as ZARCurrency
	          from AssetControl.R_FX as R2 where R2.FX_C = 'ZAR') as US( FX_RATE_DT,Currency,ZARCurrency ) 
	        on a.BusinessDate = US.FX_RATE_DT
	        ---------------------------------------------------------------------
	        --Get the last ever rate per Currency to populate the nulls
	        ---------------------------------------------------------------------
	        left outer join(select tbl.FX_C as Currency,
	          tbl.FX_RATE_A as ProvCurrency
	          from(select ROW_NUMBER() over(partition by R_FX.FX_C order by R_FX.FX_RATE_DT desc) as SEQ,R_FX.FX_C,R_FX.FX_RATE_A
	              from AssetControl.R_FX) as tbl( SEQ,FX_C,FX_RATE_A ) 
	          where tbl.SEQ = 1) as PR( Currency,ProvCurrency ) 
	        on a.Currency = PR.Currency
	        ---------------------------------------------------------------------
	        --Get CIF Details
	        ---------------------------------------------------------------------
	        left outer join(select E.LimitReference,
	          E.BusinessDate,
	          L.RiskTaker
	          from [DBA].[WhExposureAndUtil] as E
	            left outer join TPS.WhLimits as L
	            on E.LimitReference = L.LimitReference
	            and E.BusinessDate = L.BusinessDate) as Risk( LimitReference,BusinessDate,RiskTaker ) 
	        on a.LimitReference = Risk.LimitReference and a.BusinessDate = Risk.BusinessDate
	      where a.UtilizationStepNo = 1
	      --AND a.CustomerCode in ('100062926','100062961','100061084') 
	      --ByJacque and a.BusinessDate >= dateadd(day,-120,getdate())
	  	and a.BusinessDate >= dateadd(MM,-36,getdate())
	      --AND a.Currency in ('ZAR','KES','USD','BWP','GBP','EUR')
	      order by a.BusinessDate asc,a.CustomerCode asc,a.Measure asc,a.Product asc;
	  
	  	SELECT @@ROWCOUNT;  
	  
	  END try 
	  
	  BEGIN catch 
	      SET @ERROR_MESSAGE = 'ErrorProcedure: TPS.uspRSVRDPSAPIQCIBDW_TPSLoadWhTPSExposuresandLimits. ErrorMessage: ' + ERROR_MESSAGE() + ' ErrorLine: ' + cast(ERROR_LINE() AS varchar); 
	  
	      RAISERROR( @ERROR_MESSAGE,16,1 ); 
	  
	      RETURN; 
	  END catch;
	  GO
	  ```
USE [Students]
GO
    
--Get the data FROM the various tables
SELECT top 10
        a.WhExposureAndUtilKey AS WhTPSExposuresandLimitsKey,
        a.BusinessDate,
        YEAR(a.BusinessDate) AS BusinessYear,
        MONTH(a.BusinessDate) AS BusinessMonth,
        a.CustomerCode,
        --Custh.CustomerName,
        0 AS InternalRiskGradeLocal,
        0 AS InternalRiskGradeForeign,
        --Cust.IndustryCode,
        --Cust.CountryOfRisk,
        0 AS UltimateParentCode,
        0 AS UltimateParentName,
        b.LimitType AS LimitType,
        a.Portfolio AS Portfolio,
        a.Product AS Product,
        b.ProductSymbol AS ProductSymbol,
        a.Host AS Host,
        a.Commodity,
        a.BookDefinition,
        a.SecurityType,
        a.Measure,
        a.Currency AS LimitCurrency,
        --ISNULL(CAST(CAST(Step1.TodaysLimitAmount AS numeric(32,2)) AS decimal(32,2)),0) AS TodaysLimit,
        ISNULL(CAST(CAST(a.TodaysValue AS numeric(32,2)) AS decimal(32,2)),0) AS TodaysValue,
        --ISNULL(CAST(Step1.TodaysLimitAmount AS numeric(32,2))-CAST(CAST(a.TodaysValue AS numeric(32,2)) AS decimal(32,2)),0) AS TodaysUnutilised,
        --ISNULL(CAST(CAST(Step1.TodaysLimitAmount AS numeric(32,2)) AS decimal(32,2)),0) AS PeakLimit,
        ISNULL(CAST(CAST(a.PeakValue AS numeric(32,2)) AS decimal(32,2)),0) AS PeakValue,
        --COALESCE(R.OrigCurrency,PR.ProvCurrency) AS OriggCurrency,
        --US.ZARCurrency,
        --PR.ProvCurrency,
        --CASE 
        --    WHEN a.Currency IN ( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(Step1.TodaysLimitAmount AS numeric(32,2)) AS decimal(32,2)),0)
        --    ELSE ISNULL(CAST(((CAST(Step1.TodaysLimitAmount AS numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END AS ZARLimit,
        --CASE 
        --    WHEN a.Currency in( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(a.TodaysValue AS numeric(32,2)) AS decimal(32,2)),0)
        --    ELSE ISNULL(CAST(((CAST(CAST(a.TodaysValue AS numeric(32,2)) AS decimal(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END AS ZARExposure,
        --CASE 
        --    WHEN a.Currency in( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(a.PeakValue AS numeric(32,2)) AS decimal(32,2)),0)
        --    ELSE ISNULL(CAST(((CAST(CAST(a.PeakValue AS numeric(32,2)) AS decimal(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END AS ZARPeakLimit,
        --0 AS ZARPeakExposure,
        --CASE WHEN (CASE WHEN a.Currency in( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(Step1.TodaysLimitAmount AS numeric(32,2)) AS decimal(32,2)),0)
        --ELSE ISNULL(CAST(((CAST(Step1.TodaysLimitAmount AS numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END) is NULL or (CASE WHEN a.Currency in( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(Step1.TodaysLimitAmount AS numeric(32,2)) AS decimal(32,2)),0)
        --ELSE ISNULL(CAST(((CAST(Step1.TodaysLimitAmount AS numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END) = 0 THEN 0 ELSE CAST(CAST((CASE WHEN a.Currency in( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(a.TodaysValue AS numeric(32,2)) AS decimal(32,2)),0)
        --ELSE ISNULL(CAST(((CAST(CAST(a.TodaysValue AS numeric(32,2)) AS decimal(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END) AS numeric(32,2))/CAST((CASE WHEN a.Currency in( 'ZAR','LSL','NAD','SZL' ) THEN ISNULL(CAST(CAST(Step1.TodaysLimitAmount AS numeric(32,2)) AS decimal(32,2)),0)
        --ELSE ISNULL(CAST(((CAST(Step1.TodaysLimitAmount AS numeric(32,2))/(COALESCE(R.OrigCurrency,PR.ProvCurrency)))*US.ZARCurrency) AS decimal(32,2)),0)
        --END) AS numeric(32,2)) AS decimal(32,2)) END) AS PercUtilised,
        0 AS HLInd,
        CASE 
            WHEN b.LimitPortfolio = 'Customer Group Cube' THEN 'N'
            WHEN b.LimitPortfolio = 'Customer Cube' THEN 'Y'
            ELSE NULL
        END AS Sub_Limit,
        b.Committed,
        --Risk.RiskTaker,
        ISNULL(CAST(CAST(b.LimitFloating AS numeric(32,2)) AS decimal(32,2)),0) AS CommittedFloatingValues,
        ISNULL(CAST(CAST(b.LimitFixed AS numeric(32,2)) AS decimal(32,2)),0) AS CommittedFixedValues,
        0 AS LimitStep1,
        --ISNULL(CAST(CAST(Step1.LimitAmount AS numeric(32,2)) AS decimal(32,2)),0) AS LimitAmount1,
        --ISNULL(CAST(CAST(Step1.UtilizationAmount AS numeric(32,2)) AS decimal(32,2)),0) AS Exposure1
		0 as PH
FROM TPS.WhExposureAndUtil AS a
LEFT OUTER JOIN TPS.WhLimits AS b
ON a.LimitReference = b.LimitReference			-- INDEX this column - high-selectivity
AND a.BusinessDate = b.BusinessDate				-- INDEX - Used frequently in JOIN and WHERE clauses
AND ISNULL(convert(varchar, a.UtilizationStepNo), '') = ISNULL(convert(varchar, b.LimitStepNo), '')
--LEFT OUTER JOIN (SELECT     E.LimitReference,
--                            E.BusinessDate,
--                            L.LimitTenor,
--                            L.LimitStepNo,
--                            L.LimitPortfolio,
--                            L.ProductSymbol,
--                            L.LimitType,
--                            L.OrganizationCode,
--                            L.LimitAmount,
--                            L.TodaysLimitAmount,
--                            E.UtilizationAmount,
--                            L.RiskTaker
--                FROM TPS.WhExposureAndUtil AS E
--                JOIN TPS.WhLimits AS L
--                ON E.LimitReference = L.LimitReference
--                AND E.BusinessDate = L.BusinessDate
--                AND ISNULL(convert(varchar,E.UtilizationStepNo),'') = ISNULL(convert(varchar,L.LimitStepNo),'')
--                WHERE L.LimitStepNo = 1
--                AND E.BusinessDate >= dateadd(day,-32,getdate())) AS Step1 ( LimitReference,BusinessDate,LimitTenor,LimitStepNo,LimitPortfolio,ProductSymbol,LimitType,OrganizationCode,LimitAmount,TodaysLimitAmount,UtilizationAmount,RiskTaker ) 
--ON a.LimitReference = Step1.LimitReference
--AND a.BusinessDate = Step1.BusinessDate
--AND ISNULL(convert(varchar,a.UtilizationStepNo),'') = ISNULL(convert(varchar,Step1.LimitStepNo),'')
-----------------------------------------------------------------------
----Get CIF Details
-----------------------------------------------------------------------
--LEFT OUTER JOIN (SELECT     distinct
--                            D_CIF_HIER.CUST_N,
--                            D_CIF_HIER.CUST_LONG_M AS CustomerName
--                FROM CIF.D_CIF_HIER) AS Custh (CUST_N, CustomerName) 
--ON a.CustomerCode = Custh.CUST_N
-----------------------------------------------------------------------
----Get Last Industry Code
-----------------------------------------------------------------------
--LEFT OUTER JOIN (SELECT     Comb.CustomerCode,
--                            Comb.CountryOfRisk,
--                            Comb.IndustryCode
--                FROM (  SELECT      DISTINCT
--                                    D_CIF_CUST.CUST_N AS CustomerCode,
--                                    D_CIF_CUST.CNRY_OF_OPRTN_C AS CountryOfRisk,
--                                    D_CIF_CUST.INSTY_CLASS_C AS IndustryCode,
--                                    COUNT(D_CIF_CUST.CUST_N) AS Ctr,
--                                    ROW_NUMBER() OVER(PARTITION BY D_CIF_CUST.CUST_N ORDER BY COUNT(D_CIF_CUST.CUST_N) DESC) AS Rowctr
--                        FROM CIF.D_CIF_CUST 
--                        GROUP BY D_CIF_CUST.CUST_N,D_CIF_CUST.CNRY_OF_OPRTN_C,D_CIF_CUST.INSTY_CLASS_C) AS Comb ( CustomerCode,CountryOfRisk,IndustryCode,Ctr,Rowctr ) 
--                WHERE Comb.Rowctr = 1) AS Cust ( CustomerCode,CountryOfRisk,IndustryCode ) 
--ON a.CustomerCode = (convert(varchar,Cust.CustomerCode))
-----------------------------------------------------------------------
----Get the Rates per Currency
-----------------------------------------------------------------------
--LEFT OUTER JOIN (   SELECT  R1.FX_RATE_DT,
--                            R1.FX_C AS Currency,
--                            R1.FX_RATE_A AS OrigCurrency
--                    FROM AssetControl.R_FX AS R1) AS R ( FX_RATE_DT,Currency,OrigCurrency ) 
--ON a.BusinessDate = R.FX_RATE_DT 
--AND a.Currency = R.Currency
-----------------------------------------------------------------------
----Get the USD To ZAR for the Calculations
-----------------------------------------------------------------------
--LEFT OUTER JOIN (   SELECT  R2.FX_RATE_DT,
--                            R2.FX_C AS Currency,
--                            R2.FX_RATE_A AS ZARCurrency
--                    FROM AssetControl.R_FX AS R2 
--                    WHERE R2.FX_C = 'ZAR') AS US ( FX_RATE_DT,Currency,ZARCurrency ) 
--ON a.BusinessDate = US.FX_RATE_DT
-----------------------------------------------------------------------
----Get the last ever rate per Currency to populate the NULLs
-----------------------------------------------------------------------
--LEFT OUTER JOIN (   SELECT  tbl.FX_C AS Currency,
--                            tbl.FX_RATE_A AS ProvCurrency
--                    FROM (  SELECT    ROW_NUMBER() OVER(PARTITION BY R_FX.FX_C ORDER BY R_FX.FX_RATE_DT DESC) AS SEQ,R_FX.FX_C,R_FX.FX_RATE_A
--                            FROM AssetControl.R_FX) AS tbl ( SEQ,FX_C,FX_RATE_A ) 
--                    WHERE tbl.SEQ = 1) AS PR ( Currency,ProvCurrency ) 
--ON a.Currency = PR.Currency
-----------------------------------------------------------------------
----Get CIF Details
-----------------------------------------------------------------------
--LEFT OUTER JOIN (   SELECT  E.LimitReference,
--                            E.BusinessDate,
--                            L.RiskTaker
--                    FROM [DBA].[WhExposureAndUtil] AS E
--                    LEFT OUTER JOIN TPS.WhLimits AS L
--                    ON E.LimitReference = L.LimitReference
--                    AND E.BusinessDate = L.BusinessDate) AS Risk ( LimitReference,BusinessDate,RiskTaker ) 
--ON a.LimitReference = Risk.LimitReference 
--AND a.BusinessDate = Risk.BusinessDate
WHERE a.UtilizationStepNo = 1
--AND a.BusinessDate >= dateadd(MM,-36,getdate())
AND a.BusinessDate >= dateadd(MM,-1,getdate()) -- Temp added by BH
ORDER BY a.BusinessDate ASC, a.CustomerCode ASC, a.Measure ASC, a.Product ASC; -- REMOVE


-- TPS.WhExposureAndUtil - 24,955,204
-- TPS.WhLimits - 166,984,461


/*
Missing Index Details from bad_query_1675672068897_0.sql - psdc-usqlcds001.za.sbicdirectory.com\rsvrdev,40001.Students (SCMBNT1\ea201724 (478))
The Query Processor estimates that implementing the following index could improve the query cost by 57.2055%.
*/

--USE [Students]
--GO
--CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>]
--ON [TPS].[WhExposureAndUtil] ([UtilizationStepNo],[BusinessDate])
--INCLUDE ([WhExposureAndUtilKey],[CustomerCode],[Portfolio],[Product],[Host],[Commodity],[BookDefinition],[SecurityType],[Measure],[Currency],[TodaysValue],[PeakValue],[LimitReference])
--GO


/*
Missing Index Details from bad_query_1675672068897_0.sql - psdc-usqlcds001.za.sbicdirectory.com\rsvrdev,40001.Students (SCMBNT1\ea201724 (478))
The Query Processor estimates that implementing the following index could improve the query cost by 63.4486%.
*/


--USE [Students]
--GO
--CREATE NONCLUSTERED INDEX NCI_BusinessDate
--ON [TPS].[WhLimits] ([BusinessDate])
--INCLUDE ([LimitReference],[LimitType],[LimitPortfolio],[ProductSymbol],[Committed],[LimitFixed],[LimitFloating],[LimitStepNo])
--GO



TRUNCATE TABLE [TPS].[WhExposureAndUtil]
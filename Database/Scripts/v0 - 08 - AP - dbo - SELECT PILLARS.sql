USE [Proj_NORS]
GO

SELECT
    1 AS [ID Pillar]
    ,'Growth' AS [Pillar]
    ,1 AS [ID OKR]
    ,'Revenue from complementary products and services [% Turnover]' AS [OKR]
    ,AVG([Revenue] / [Revenue T]) AS [Achievement] 
FROM [dbo].[Revenue]

UNION ALL
SELECT 
    1 AS [ID Pillar]
    ,'Growth' AS [Pillar]
    ,2 AS [ID OKR]
    ,'OPEX/ Turnover [%]' AS [OKR]
    ,AVG([Opex/Turnover] / [Opex/Turnover T]) AS [Achievement] 
FROM [dbo].[OPEXTurnover]

UNION ALL
SELECT
    2 AS [ID Pillar]
    ,'Efficiency' AS [Pillar]
    ,1 AS [ID OKR]
    ,'Average Service Lead Time [%]' AS [OKR]
    ,1 - (AVG([Average Service Lead Time] / [Average Service Lead Time T]) - 1) AS [Achievement] 
FROM [dbo].[AverageServiceLeadTime]

UNION ALL
SELECT
    2 AS [ID Pillar]
    ,'Efficiency' AS [Pillar]
    ,2 AS [ID OKR]
    ,'Absorption rate [%]' AS [KPI]
    ,AVG([Absorption Rate] / [Absorption Rate T]) AS [Achievement] 
FROM [dbo].[AbsorptionRate]

UNION ALL
SELECT
    2 AS [ID Pillar]
    ,'Efficiency' AS [Pillar]
    ,3 AS [ID OKR]
    ,'NPS [Points]' AS [KPI]
    ,AVG([NPS] / [NPS T]) AS [Achievement] 
FROM [dbo].[NPS]

UNION ALL
SELECT
    3 AS [ID Pillar]
    ,'Transformation' AS [Pillar]
    ,1 AS [ID OKR]
    ,'Sales via digital channels [%]' AS [KPI]
    ,AVG([Sales via digital channel] / [Sales via digital channel T]) AS [Achievement] 
FROM [dbo].[SalesViaDigitalChannel]
WHERE 1=1
AND [Sales via digital channel T] > 0

UNION ALL
SELECT
    3 AS [ID Pillar]
    ,'Transformation' AS [Pillar]
    ,2 AS [ID OKR]
    ,'Loyal customers [Growth %] ' AS [KPI]
    ,AVG([Loyal Customers] / [Loyal Customers T]) AS [Achievement] 
FROM [dbo].[LoyalCustomers]
WHERE 1=1

UNION ALL
SELECT
    4 AS [ID Pillar]
    ,'People' AS [Pillar]
    , 1 AS [ID OKR]
    ,'Training hours per employee [avg hour per employee]' AS [KPI]
    ,AVG([Training hours per employee] / [Training hours per employee T]) AS [Achievement]
FROM [dbo].[TrainingHoursPerEmployee]

UNION ALL
SELECT
    4 AS [ID Pillar]
    ,'People' AS [Pillar]
    ,2 AS [ID OKR]
    ,'Technicians turnover [%]' AS [KPI]
    ,AVG([Technicians turnover] / [Technicians turnover T]) AS [Achievement]
FROM [dbo].[TechniciansTurnover]

UNION ALL
SELECT
    5 AS [ID Pillar]
    ,'Sustainability' AS [Pillar]
    ,1 AS [ID OKR]
    ,'Renewable energy over total energy consumption [%]' AS [KPI]
    ,AVG([Renewable energy] / [Renewable energy T]) AS [Achievement]
FROM [dbo].[RenewableEnergy]

UNION ALL
SELECT
    5 AS [ID Pillar]
    ,'Sustainability' AS [Pillar]
    ,2 AS [ID OKR]
    ,'Percentage waste recovered over total waste produced [%]' AS [KPI]
    ,AVG([Percentage waste recovered] / [Percentage waste recovered T]) AS [Achievement] 
FROM [dbo].[PercentageWasteRecovered]

UNION ALL
SELECT
    5 AS [ID Pillar]
    ,'Sustainability' AS [Pillar]
    ,3 AS [ID OKR]
    ,'Own Fleet Zero Emission Vehicle (% Total Fleet)' AS [KPI]
    ,AVG([Own fleet zero emission] / [Own fleet zero emission T]) AS [Achievement]
FROM [dbo].[OwnFleetZeroEmission]

UNION ALL
SELECT
    5 AS [ID Pillar]
    ,'Sustainability' AS [Pillar]
    , 4 AS [ID OKR]
    ,'Circularity Projects (#)' AS [KPI]
    ,AVG([Circularity Projects] / [Circularity Projects T]) AS [Achievement]
FROM [dbo].[CircularityProjects]

UNION ALL
SELECT
    5 AS [ID Pillar]
    ,'Sustainability' AS [Pillar]
    ,5 AS [ID OKR]
    ,'Remanufactured Parts (% of Total Parts Turnover)' AS [KPI]
    ,AVG([Remanufactured Parts] / [Remanufactured Parts T]) AS [Achievement]
FROM [dbo].[RemanufacturedParts]
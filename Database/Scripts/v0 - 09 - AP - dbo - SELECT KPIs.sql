USE [Proj_NORS]
GO

SELECT
    MAIN.*
    ,[Dividend] / [Divisor] AS [Quotient]
INTO [dbo].[main]
FROM (
    SELECT
        1 AS [ID Pillar]
        ,'Growth' AS [Pillar]
        ,1 AS [ID OKR]
        ,'Revenue from complementary products and services [% Turnover]' AS [OKR]
        ,[Company]
        ,[Date]
        ,AVG([Revenue]) AS [Dividend]
        ,AVG([Revenue T]) AS [Divisor]
    FROM [dbo].[Revenue]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT 
        1 AS [ID Pillar]
        ,'Growth' AS [Pillar]
        ,2 AS [ID OKR]
        ,'OPEX/ Turnover [%]' AS [OKR]
        ,[Company]
        ,[Date]
        ,AVG([Opex/Turnover]) AS [Dividend]
        ,AVG([Opex/Turnover T]) AS [Divisor]
    FROM [dbo].[OPEXTurnover]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        2 AS [ID Pillar]
        ,'Efficiency' AS [Pillar]
        ,1 AS [ID OKR]
        ,'Average Service Lead Time [%]' AS [OKR]
        ,[Company]
        ,[Date]
        ,AVG([Average Service Lead Time T]) AS [Dividend]
        ,AVG([Average Service Lead Time]) AS [Divisor]
    FROM [dbo].[AverageServiceLeadTime]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        2 AS [ID Pillar]
        ,'Efficiency' AS [Pillar]
        ,2 AS [ID OKR]
        ,'Absorption rate [%]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Absorption Rate]) AS [Dividend]
        ,AVG([Absorption Rate T]) AS [Divisor]
    FROM [dbo].[AbsorptionRate]
    GROUP BY
        [Company]
        ,[Date]
        
    UNION ALL
    SELECT
        2 AS [ID Pillar]
        ,'Efficiency' AS [Pillar]
        ,3 AS [ID OKR]
        ,'NPS [Points]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([NPS]) AS [Dividend]
        ,AVG([NPS T]) AS [Divisor]
    FROM [dbo].[NPS]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        3 AS [ID Pillar]
        ,'Transformation' AS [Pillar]
        ,1 AS [ID OKR]
        ,'Sales via digital channels [%]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Sales via digital channel]) AS [Dividend]
        ,AVG([Sales via digital channel T]) AS [Divisor]
    FROM [dbo].[SalesViaDigitalChannel]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        3 AS [ID Pillar]
        ,'Transformation' AS [Pillar]
        ,2 AS [ID OKR]
        ,'Loyal customers [Growth %] ' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Loyal Customers]) AS [Dividend]
        ,AVG([Loyal Customers T]) AS [Divisor]
    FROM [dbo].[LoyalCustomers]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        4 AS [ID Pillar]
        ,'People' AS [Pillar]
        , 1 AS [ID OKR]
        ,'Training hours per employee [avg hour per employee]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Training hours per employee]) AS [Dividend]
        ,AVG([Training hours per employee T]) AS [Divisor]
    FROM [dbo].[TrainingHoursPerEmployee]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        4 AS [ID Pillar]
        ,'People' AS [Pillar]
        ,2 AS [ID OKR]
        ,'Technicians turnover [%]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Technicians turnover]) AS [Dividend]
        ,AVG([Technicians turnover T]) AS [Divisor]
    FROM [dbo].[TechniciansTurnover]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        5 AS [ID Pillar]
        ,'Sustainability' AS [Pillar]
        ,1 AS [ID OKR]
        ,'Renewable energy over total energy consumption [%]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Renewable energy]) AS [Dividend]
        ,AVG([Renewable energy T]) AS [Divisor]
    FROM [dbo].[RenewableEnergy]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        5 AS [ID Pillar]
        ,'Sustainability' AS [Pillar]
        ,2 AS [ID OKR]
        ,'Percentage waste recovered over total waste produced [%]' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Percentage waste recovered]) AS [Dividend]
        ,AVG([Percentage waste recovered T]) AS [Divisor]
    FROM [dbo].[PercentageWasteRecovered]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        5 AS [ID Pillar]
        ,'Sustainability' AS [Pillar]
        ,3 AS [ID OKR]
        ,'Own Fleet Zero Emission Vehicle (% Total Fleet)' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Own fleet zero emission]) AS [Dividend]
        ,AVG([Own fleet zero emission T]) AS [Divisor]
    FROM [dbo].[OwnFleetZeroEmission]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        5 AS [ID Pillar]
        ,'Sustainability' AS [Pillar]
        , 4 AS [ID OKR]
        ,'Circularity Projects (#)' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Circularity Projects]) AS [Dividend]
        ,AVG([Circularity Projects T]) AS [Divisor]
    FROM [dbo].[CircularityProjects]
    GROUP BY
        [Company]
        ,[Date]

    UNION ALL
    SELECT
        5 AS [ID Pillar]
        ,'Sustainability' AS [Pillar]
        ,5 AS [ID OKR]
        ,'Remanufactured Parts (% of Total Parts Turnover)' AS [KPI]
        ,[Company]
        ,[Date]
        ,AVG([Remanufactured Parts]) AS [Dividend]
        ,AVG([Remanufactured Parts T]) AS [Divisor]
    FROM [dbo].[RemanufacturedParts]
    GROUP BY
        [Company]
        ,[Date]
) AS [MAIN]
WHERE [Divisor] > 0
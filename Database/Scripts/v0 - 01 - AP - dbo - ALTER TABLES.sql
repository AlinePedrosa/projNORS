USE [Proj_NORS]
GO

/**************************************************************************************************************************************************************************************************/
-- [1] Growth
/**************************************************************************************************************************************************************************************************/
-- [1] Revenue
ALTER TABLE [dbo].[Revenue] ADD
    [Date] DATE
    ,[Revenue x Revenue T %] DECIMAL(15, 4)
    ,[Revenue T %] DECIMAL(15, 4)
    ,[Revenue x Revenue F %] DECIMAL(15, 4)
    ,[Revenue F %] DECIMAL(15, 4)
    ,[Revenue x Revenue T+6 %] DECIMAL(15, 4)
    ,[Revenue T+6 %] DECIMAL(15, 4)
    
-- ALTER TABLE [dbo].[Revenue] DROP COLUMN
--     [Date]
--     ,[Revenue T %]
--     ,[Revenue x Revenue T %]
--     ,[Revenue F %]
--     ,[Revenue x Revenue F %]
--     ,[Revenue x Revenue T+6 %]
--     ,[Revenue T+6 %]

-- [2] OPEX Turnover
ALTER TABLE [dbo].[OPEXTurnover] ADD
    [Date] DATE
    ,[OPEX/Turnover x OPEX/Turnover F %] DECIMAL(15, 4)
    ,[OPEX/Turnover F %] DECIMAL(15, 4)
    ,[OPEX/Turnover x OPEX/Turnover T %] DECIMAL(15, 4)
    ,[OPEX/Turnover T %] DECIMAL(15, 4)
    ,[OPEX/Turnover x OPEX/Turnover T+6 %] DECIMAL(15, 4)
    ,[OPEX/Turnover T+6 %] DECIMAL(15, 4)

-- ALTER TABLE [dbo].[OPEXTurnover] DROP COLUMN
--     [Date]
--     ,[OPEX/Turnover x OPEX/Turnover F %]
--     ,[OPEX/Turnover F %]
--     ,[OPEX/Turnover x OPEX/Turnover T %]
--     ,[OPEX/Turnover T %]
--     ,[OPEX/Turnover x OPEX/Turnover T+6 %]
--     ,[OPEX/Turnover T+6 %]
GO
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [2] Efficiency
/**************************************************************************************************************************************************************************************************/
-- [1] Average Service Lead Time
ALTER TABLE [dbo].[AverageServiceLeadTime] ADD
    [Date] DATE
    ,[Average Service Lead Time x Average Service Lead Time F %] DECIMAL(15, 4)
    ,[Average Service Lead Time F %] DECIMAL(15, 4)
    ,[Average Service Lead Time x Average Service Lead Time T %] DECIMAL(15, 4)
    ,[Average Service Lead Time T %] DECIMAL(15, 4)
    ,[Average Service Lead Time x Average Service Lead Time T+6 %] DECIMAL(15, 4)
    ,[Average Service Lead Time T+6 %] DECIMAL(15, 4)

-- ALTER TABLE [dbo].[AverageServiceLeadTime] DROP COLUMN
--    [Date]
--     ,[Average Service Lead Time x Average Service Lead Time F %]
--     ,[Average Service Lead Time F %]
--     ,[Average Service Lead Time x Average Service Lead Time T %]
--     ,[Average Service Lead Time T %]
--     ,[Average Service Lead Time x Average Service Lead Time T+6 %]
--     ,[Average Service Lead Time T+6 %]

-- [2] Absorption rate
ALTER TABLE [dbo].[AbsorptionRate] ADD
    [Date] DATE
    ,[Absorption Rate x Absorption Rate F %] DECIMAL(15, 4)
    ,[Absorption Rate F %] DECIMAL(15, 4)
    ,[Absorption Rate x Absorption Rate T %] DECIMAL(15, 4)
    ,[Absorption Rate T %] DECIMAL(15, 4)
    ,[Absorption Rate x Absorption Rate T+6 %] DECIMAL(15, 4)
    ,[Absorption Rate T+6 %] DECIMAL(15, 4)

-- [3] NPS
ALTER TABLE [dbo].[NPS] ADD 
    [Date] DATE
    ,[NPS x NPS F %] DECIMAL(15, 4)
    ,[NPS F %] DECIMAL(15, 4)
    ,[NPS x NPS T %] DECIMAL(15, 4)
    ,[NPS T %] DECIMAL(15, 4)
    ,[NPS x NPS T+6 %] DECIMAL(15, 4)
    ,[NPS T+6 %] DECIMAL(15, 4)
GO
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [3] Transformation
/**************************************************************************************************************************************************************************************************/
-- [1] Sales Via Digital Channel
ALTER TABLE [dbo].[SalesViaDigitalChannel] ADD
    [Date] DATE
    ,[Sales via digital channel x Sales via digital channel F %] DECIMAL(15, 4)
    ,[Sales via digital channel F %] DECIMAL(15, 4)
    ,[Sales via digital channel x Sales via digital channel T %] DECIMAL(15, 4)
    ,[Sales via digital channel T %] DECIMAL(15, 4)
    ,[Sales via digital channel x Sales via digital channel T+6 %] DECIMAL(15, 4)
    ,[Sales via digital channel T+6 %] DECIMAL(15, 4)

-- ALTER TABLE [dbo].[SalesViaDigitalChannel] DROP COLUMN
--     [Date]
--     ,[Sales via digital channel F %]
--     ,[Sales via digital channel T %]
--     ,[Sales via digital channel T+6 %]

-- [2] Loyal Customers
ALTER TABLE [dbo].[LoyalCustomers] ADD
    [Date] DATE
    ,[Loyal Customers F %] DECIMAL(15, 4)
    ,[Loyal Customers T %] DECIMAL(15, 4)
    ,[Loyal Customers T+6 %] DECIMAL(15, 4)
    ,[Loyal Customers x Loyal Customers F %] DECIMAL(15, 4)
    ,[Loyal Customers x Loyal Customers T %] DECIMAL(15, 4)
    ,[Loyal Customers x Loyal Customers T+6 %] DECIMAL(15, 4)

-- ALTER TABLE [dbo].[LoyalCustomers] DROP COLUMN
--     [Date]
--     ,[Loyal Customers F %]
--     ,[Loyal Customers T %]
--     ,[Loyal Customers T+6 %]
--     ,[Loyal Customers x Loyal Customers F %]
--     ,[Loyal Customers x Loyal Customers T %]
--     ,[Loyal Customers x Loyal Customers T+6 %]
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [4] People
/**************************************************************************************************************************************************************************************************/
-- [1] Training Hours
ALTER TABLE [dbo].[TrainingHoursPerEmployee] ADD
    [Date] DATE
    ,[Training hours per employee F %] DECIMAL(15, 4)
    ,[Training hours per employee T %] DECIMAL(15, 4)
    ,[Training hours per employee T+6 %] DECIMAL(15, 4)
    ,[Training hours per employee x Training hours per employee F %] DECIMAL(15, 4)
    ,[Training hours per employee x Training hours per employee T %] DECIMAL(15, 4)
    ,[Training hours per employee x Training hours per employee T+6] DECIMAL(15, 4)

-- ALTER TABLE [dbo].[TrainingHoursPerEmployee] DROP COLUMN
--     [Date]
--     ,[Training hours per employee F %]
--     ,[Training hours per employee T %]
--     ,[Training hours per employee T+6 %]
--     ,[Training hours per employee x Training hours per employee F %]
--     ,[Training hours per employee x Training hours per employee T %]
--     ,[Training hours per employee x Training hours per employee T+6]

-- [2] Technicians turnover [%]
ALTER TABLE [dbo].[TechniciansTurnover] ADD
    [Date] DATE
    ,[Technicians turnover x Technicians turnover F %] DECIMAL(15, 4)
    ,[Technicians turnover x Technicians turnover T %] DECIMAL(15, 4)
    ,[Technicians turnover x Technicians turnover T+6] DECIMAL(15, 4)
    ,[Technicians turnover F %] DECIMAL(15, 4)
    ,[Technicians turnover T %] DECIMAL(15, 4)
    ,[Technicians turnover T+6 %] DECIMAL(15, 4)
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [5] Sustainability
/**************************************************************************************************************************************************************************************************/
-- [1] Renewable Energy
ALTER TABLE [Proj_NORS].[dbo].[RenewableEnergy] ADD
    [Date] DATE
    ,[Renewable energy x Renewable energy F %] DECIMAL(15, 4)
    ,[Renewable energy x Renewable energy T %] DECIMAL(15, 4)
    ,[Renewable energy x Renewable energy T+6] DECIMAL(15, 4)
    ,[Renewable energy F %] DECIMAL(15, 4)
    ,[Renewable energy T %] DECIMAL(15, 4)
    ,[Renewable energy T+6 %] DECIMAL(15, 4)

-- ALTER TABLE [Proj_NORS].[dbo].[RenewableEnergy] DROP COLUMN
--     [Date]
--     ,[Renewable energy x Renewable energy F %]
--     ,[Renewable energy x Renewable energy T %]
--     ,[Renewable energy x Renewable energy T+6]
--     ,[Renewable energy F %]
--     ,[Renewable energy T %]
--     ,[Renewable energy T+6 %]

-- [2] Percentage waste recovered over total waste produced [%]
ALTER TABLE [Proj_NORS].[dbo].[PercentageWasteRecovered] ADD
    [Date] DATE
    ,[Percentage waste recovered x Percentage waste recovered F %] DECIMAL(15, 4)
    ,[Percentage waste recovered x Percentage waste recovered T %] DECIMAL(15, 4)
    ,[Percentage waste recovered x Percentage waste recovered T+6 %] DECIMAL(15, 4)
    ,[Percentage waste recovered F %] DECIMAL(15, 4)
    ,[Percentage waste recovered T %] DECIMAL(15, 4)
    ,[Percentage waste recovered T+6 %] DECIMAL(15, 4)

-- 5.3 Own Fleet Zero Emission Vehicle (% Total Fleet)
ALTER TABLE [Proj_NORS].[dbo].[OwnFleetZeroEmission] ADD
    [Date] DATE
    ,[Own fleet zero emission x Own fleet zero emission F %] DECIMAL(15, 4)
    ,[Own fleet zero emission x Own fleet zero emission T %] DECIMAL(15, 4)
    ,[Own fleet zero emission x Own fleet zero emission T+6 %] DECIMAL(15, 4)
    ,[Own fleet zero emission F %] DECIMAL(15, 4)
    ,[Own fleet zero emission T %] DECIMAL(15, 4)
    ,[Own fleet zero emission T+6 %] DECIMAL(15, 4)

-- 5.4 Circularity Projects (#)
ALTER TABLE [Proj_NORS].[dbo].[CircularityProjects] ADD
    [Date] DATE
    ,[Circularity Projects x Circularity Projects F %] DECIMAL(15, 4)
    ,[Circularity Projects x Circularity Projects T %] DECIMAL(15, 4)
    ,[Circularity Projects x Circularity Projects T+6 %] DECIMAL(15, 4)
    ,[Circularity Projects F %] DECIMAL(15, 4)
    ,[Circularity Projects T %] DECIMAL(15, 4)
    ,[Circularity Projects T+6 %] DECIMAL(15, 4)

-- 5.5 Remanufactured Parts (% of Total Parts Turnover)
ALTER TABLE [Proj_NORS].[dbo].[RemanufacturedParts] ADD
    [Date] DATE
    ,[Remanufactured Parts x Remanufactured Parts F %] DECIMAL(15, 4)
    ,[Remanufactured Parts x Remanufactured Parts T %] DECIMAL(15, 4)
    ,[Remanufactured Parts x Remanufactured Parts T+6 %] DECIMAL(15, 4)
    ,[Remanufactured Parts F %] DECIMAL(15, 4)
    ,[Remanufactured Parts T %] DECIMAL(15, 4)
    ,[Remanufactured Parts T+6 %] DECIMAL(15, 4)
    -- ,[Date6y] DATE

GO

-- SELECT TOP (1000) [pillar]
--       ,[kpi]
--       ,[wheight_kpi]
--       ,[wheight_pillar]
--   FROM [Proj_NORS].[dbo].[Wheights]

-- SELECT 
-- AVG([KPI]) AS [Pillar]
-- FROM (
-- 	SELECT AVG([Renewable energy] / [Renewable energy F]) AS [KPI] 
-- 	FROM [dbo].[RenewableEnergy] WITH (NOLOCK)
-- 	UNION ALL
-- 	SELECT AVG([OPEX/Turnover] / [OPEX/Turnover F]) AS [KPI]
-- 	FROM [Proj_NORS].[dbo].[OPEXTurnover] WITH (NOLOCK)
-- ) AS Growth

-- SELECT AVG([Average Service Lead Time] / [Average Service Lead Time F])
-- FROM [Proj_NORS].[dbo].[AverageServiceLeadTime]
USE [Proj_NORS]
GO

/**************************************************************************************************************************************************************************************************/
-- [1] Growth
/**************************************************************************************************************************************************************************************************/
-- [1] Revenue
UPDATE [dbo].[Revenue] 
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[Revenue T %] = (100 - [Revenue T]) / 100
    ,[Revenue x Revenue T %] = [Revenue] / [Revenue T]
    ,[Revenue F %] = (100 - [Revenue F]) / 100
    ,[Revenue x Revenue F %] = [Revenue] / [Revenue F]
    ,[Revenue T+6 %] = (100 - [Revenue T+6]) / 100
    ,[Revenue x Revenue T+6 %] = [Revenue] / [Revenue T+6]

-- [2] OPEX Turnover
UPDATE [dbo].[OPEXTurnover] 
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[OPEX/Turnover x OPEX/Turnover F %] = [OPEX/Turnover] / [OPEX/Turnover F]
    ,[OPEX/Turnover F %] = (100 - [OPEX/Turnover F]) / 100
    ,[OPEX/Turnover x OPEX/Turnover T %] = [OPEX/Turnover] / [OPEX/Turnover T]
    ,[OPEX/Turnover T %] = (100 - [OPEX/Turnover T]) / 100
    ,[OPEX/Turnover x OPEX/Turnover T+6 %] = [OPEX/Turnover] / [OPEX/Turnover T+6]
    ,[OPEX/Turnover T+6 %] = (100 - [OPEX/Turnover T+6]) / 100
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [2] Efficiency
/**************************************************************************************************************************************************************************************************/
-- [1] Average Service Lead Time
UPDATE [dbo].[AverageServiceLeadTime]
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[Average Service Lead Time x Average Service Lead Time F %] = ([Average Service Lead Time] / [Average Service Lead Time F])
    ,[Average Service Lead Time F %] = (100 - [Average Service Lead Time F]) / 100
    ,[Average Service Lead Time x Average Service Lead Time T %] = ([Average Service Lead Time] / [Average Service Lead Time T])
    ,[Average Service Lead Time T %] = ( 100 - [Average Service Lead Time T]) / 100
    ,[Average Service Lead Time x Average Service Lead Time T+6 %] = ([Average Service Lead Time] / [Average Service Lead Time T+6])
    ,[Average Service Lead Time T+6 %] = (100 - [Average Service Lead Time T+6]) / 100


-- [2] Absorption rate
UPDATE [dbo].[AbsorptionRate]
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[Absorption Rate x Absorption Rate F %] = [Absorption Rate] / [Absorption Rate F]
    ,[Absorption Rate F %] = 100 - ([Absorption Rate F]) / 100
    ,[Absorption Rate x Absorption Rate T %] = [Absorption Rate] / [Absorption Rate T]
    ,[Absorption Rate T %] = (100 - [Absorption Rate T]) / 100
    ,[Absorption Rate x Absorption Rate T+6 %] = [Absorption Rate] / [Absorption Rate T+6]
    ,[Absorption Rate T+6 %] = (100 - [Absorption Rate T+6]) / 100

-- [3] NPS
UPDATE [dbo].[NPS]
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[NPS x NPS F %] = [NPS] / [NPS F]
    ,[NPS F %] = (100 - [NPS F]) / 100
    ,[NPS x NPS T %] = [NPS] / [NPS T]
    ,[NPS T %] = [NPS T] / 100
    ,[NPS x NPS T+6 %] = [NPS] / [NPS T+6]
    ,[NPS T+6 %] = (100 - [NPS T+6]) / 100

GO
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [3] Transformation
/**************************************************************************************************************************************************************************************************/
-- [1] Sales Via Digital Channel
UPDATE [dbo].[SalesViaDigitalChannel]
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[Sales via digital channel x Sales via digital channel F %] = 
        CASE [Sales via digital channel F] 
            WHEN 0 THEN 0
            ELSE [Sales via digital channel] / [Sales via digital channel F]
        END
    ,[Sales via digital channel F %] = [Sales via digital channel F] / 100
    ,[Sales via digital channel x Sales via digital channel T %] = 
        CASE [Sales via digital channel T]
            WHEN 0 THEN 0
            ELSE [Sales via digital channel] / [Sales via digital channel T]
        END
    ,[Sales via digital channel T %] = [Sales via digital channel T] / 100
    ,[Sales via digital channel x Sales via digital channel T+6 %] = 
        CASE[Sales via digital channel T+6]
            WHEN 0 THEN 0
            ELSE [Sales via digital channel] / [Sales via digital channel T+6]
        END
    ,[Sales via digital channel T+6 %] = [Sales via digital channel T+6] / 100

-- [2] Loyal Customers
UPDATE [dbo].[LoyalCustomers]
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[Loyal Customers F %] = (100 - [Loyal Customers F]) / 100
    ,[Loyal Customers T %] = (100 - [Loyal Customers T]) / 100
    ,[Loyal Customers T+6 %] = (100 - [Loyal Customers T+6]) / 100
    ,[Loyal Customers x Loyal Customers F %] = [Loyal Customers] / [Loyal Customers F]
    ,[Loyal Customers x Loyal Customers T %] = [Loyal Customers] / [Loyal Customers T]
    ,[Loyal Customers x Loyal Customers T+6 %] = [Loyal Customers] / [Loyal Customers T+6]
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [4] People
/**************************************************************************************************************************************************************************************************/
-- [1] Training Hours
UPDATE [dbo].[TrainingHoursPerEmployee] 
SET Date = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Training hours per employee F %] = (100 - [Training hours per employee F]) / 100
    ,[Training hours per employee T %] = (100 - [Training hours per employee T]) / 100
    ,[Training hours per employee T+6 %] =  (100 - [Training hours per employee T+6]) / 100
    ,[Training hours per employee x Training hours per employee F %] = [Training hours per employee] / [Training hours per employee F]
    ,[Training hours per employee x Training hours per employee T %] = [Training hours per employee] / [Training hours per employee T]
    ,[Training hours per employee x Training hours per employee T+6] = [Training hours per employee] / [Training hours per employee T+6]

-- [2] Technicians turnover [%]
UPDATE [dbo].[TechniciansTurnover]
SET  [Date] = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Technicians turnover x Technicians turnover F %] = [Technicians turnover] / [Technicians turnover F]
    ,[Technicians turnover x Technicians turnover T %] = [Technicians turnover] / [Technicians turnover T]
    ,[Technicians turnover x Technicians turnover T+6] = [Technicians turnover] / [Technicians turnover T+6]
    ,[Technicians turnover F %] = (100 - [Technicians turnover F]) / 100
    ,[Technicians turnover T %] = (100 - [Technicians turnover T]) / 100
    ,[Technicians turnover T+6 %] = (100 - [Technicians turnover T+6]) / 100
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [5] Sustainability
/**************************************************************************************************************************************************************************************************/
-- [1] Renewable Energy
UPDATE [Proj_NORS].[dbo].[RenewableEnergy]
SET Date = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Renewable energy x Renewable energy F %] = [Renewable energy] / [Renewable energy F]
    ,[Renewable energy x Renewable energy T %] = [Renewable energy] / [Renewable energy T]
    ,[Renewable energy x Renewable energy T+6] = [Renewable energy] / [Renewable energy T+6]
    ,[Renewable energy F %] = (100 - [Renewable energy F]) / 100
    ,[Renewable energy T %] = (100 - [Renewable energy T]) / 100
    ,[Renewable energy T+6 %] = (100 - [Renewable energy T+6]) / 100

-- [2] Percentage waste recovered over total waste produced [%]
UPDATE [dbo].[PercentageWasteRecovered] 
SET [Date] = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Percentage waste recovered x Percentage waste recovered F %] = 1 - ([Percentage waste recovered] / [Percentage waste recovered F])
    ,[Percentage waste recovered x Percentage waste recovered T %] = 1 - ([Percentage waste recovered] / [Percentage waste recovered T])
    ,[Percentage waste recovered x Percentage waste recovered T+6 %] = [Percentage waste recovered] / [Percentage waste recovered T+6]
    ,[Percentage waste recovered F %] = (100 - [Percentage waste recovered F]) / 100
    ,[Percentage waste recovered T %] = (100 - [Percentage waste recovered T]) / 100
    ,[Percentage waste recovered T+6 %] = [Percentage waste recovered T+6] / 100

-- 5.3 Own Fleet Zero Emission Vehicle (% Total Fleet)
UPDATE [Proj_NORS].[dbo].[OwnFleetZeroEmission]
SET [Date] = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Own fleet zero emission x Own fleet zero emission F %] = [Own fleet zero emission] / [Own fleet zero emission F]
    ,[Own fleet zero emission x Own fleet zero emission T %] = [Own fleet zero emission] / [Own fleet zero emission T]
    ,[Own fleet zero emission x Own fleet zero emission T+6 %] = [Own fleet zero emission] / [Own fleet zero emission T+6]
    ,[Own fleet zero emission F %] = (100 - [Own fleet zero emission F]) / 100
    ,[Own fleet zero emission T %] = (100 - [Own fleet zero emission T]) / 100
    ,[Own fleet zero emission T+6 %] = (100 - [Own fleet zero emission T+6]) / 100

-- 5.4 Circularity Projects (#)
UPDATE [Proj_NORS].[dbo].[CircularityProjects]
SET [Date] = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Circularity Projects x Circularity Projects F %] = [Circularity Projects] / [Circularity Projects F]
    ,[Circularity Projects x Circularity Projects T %] = [Circularity Projects] / [Circularity Projects T]
    ,[Circularity Projects x Circularity Projects T+6 %] = [Circularity Projects] / [Circularity Projects T+6]
    ,[Circularity Projects F %] = (100 - [Circularity Projects F]) / 100
    ,[Circularity Projects T %] = (100 - [Circularity Projects T]) / 100
    ,[Circularity Projects T+6 %] = (100 - [Circularity Projects T+6]) / 100

-- 5.5 Remanufactured Parts (% of Total Parts Turnover)
UPDATE [Proj_NORS].[dbo].[RemanufacturedParts]
SET [Date] = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Remanufactured Parts x Remanufactured Parts F %] = [Remanufactured Parts] / [Remanufactured Parts F]
    ,[Remanufactured Parts x Remanufactured Parts T %] = [Remanufactured Parts] / [Remanufactured Parts T]
    ,[Remanufactured Parts x Remanufactured Parts T+6 %] = [Remanufactured Parts] / [Remanufactured Parts T+6]
    ,[Remanufactured Parts F %] = (100 - [Remanufactured Parts F]) / 100
    ,[Remanufactured Parts T %] = (100 - [Remanufactured Parts T]) / 100
    ,[Remanufactured Parts T+6 %] = (100 - [Remanufactured Parts T+6]) / 100
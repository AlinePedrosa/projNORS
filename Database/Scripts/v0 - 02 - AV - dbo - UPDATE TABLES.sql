USE [Proj_NORS]
GO

UPDATE [dbo].[Revenue] 
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[Revenue %] = [Revenue] / [Revenue T]
    ,[Revenue T %] = (100 - [Revenue T]) / 100
    ,[Revenue x Revenue Forecast %] = [Revenue] / [Revenue F]

UPDATE [dbo].[OPEXTurnover] 
SET [Date] = CAST(CONCAT([Year], '-', [Month], '-01') AS DATE)
    ,[OPEX/Turnover %] = [OPEX/Turnover] / [OPEX/Turnover T]
    ,[OPEX/Turnover F %] = (100 - [OPEX/Turnover F]) / 100
    ,[OPEX/Turnover T %] = (100 - [OPEX/Turnover T]) / 100
    ,[OPEX/Turnover x OPEX/Turnover F %] =  [OPEX/Turnover] /  [OPEX/Turnover F]





UPDATE [dbo].[TrainingHoursPerEmployee] 
SET DateTraining = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)



UPDATE [dbo].[RenewableEnergy]
SET DateRenewable = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Renewable Energy %] = [Renewable energy] / [Renewable energy T]


UPDATE [dbo].[PercentageWasteRecovered] 
SET [Date] = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
    ,[Percentage waste recovered %] = [Percentage waste recovered] / [Percentage waste recovered T]
    ,[Percentage waste recovered F %] = [Percentage waste recovered F] / [Percentage waste recovered T]
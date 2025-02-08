USE [Proj_NORS]
GO

/**************************************************************************************************************************************************************************************************/
-- [1] Growth [1] Revenue  
/**************************************************************************************************************************************************************************************************/
IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[Revenue]')
    AND name IN ('DateRevenue', 'Date')
) BEGIN
ALTER TABLE [dbo].[Revenue] ADD
    [DateRevenue] DATE
	,[Revenue %] DECIMAL(15, 4)
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[Revenue]')
    AND name = 'Revenue %'
) BEGIN
ALTER TABLE [dbo].[Revenue] ADD
    [Revenue %] DECIMAL(15, 4)
END

IF EXISTS (
    SELECT *
    FROM sys.columns 
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[Revenue]') 
    AND name = 'DateRevenue'
) BEGIN
    EXEC sp_rename 'dbo.Revenue.DateRevenue', 'Date';
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[Revenue]')
    AND name = 'Revenue T %'
) BEGIN
ALTER TABLE [dbo].[Revenue] ADD
    [Revenue T %] DECIMAL(15, 4)
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[Revenue]')
    AND name = 'Revenue x Revenue Forecast %]'
) BEGIN
ALTER TABLE [dbo].[Revenue] ADD
    [Revenue x Revenue Forecast %] DECIMAL(15, 4)
END

GO
/**************************************************************************************************************************************************************************************************/





/**************************************************************************************************************************************************************************************************/
-- [1] Growth [1] OPEX Turnover
/**************************************************************************************************************************************************************************************************/
IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[OPEXTurnover]')
    AND name IN ('Date')
) BEGIN
ALTER TABLE [dbo].[OPEXTurnover] ADD
    [Date] DATE
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[OPEXTurnover]')
    AND name = 'OPEX/Turnover %'
) BEGIN
ALTER TABLE [dbo].[OPEXTurnover] ADD
    [OPEX/Turnover %] DECIMAL(15, 4)
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[OPEXTurnover]')
    AND name = 'OPEX/Turnover T %'
) BEGIN
ALTER TABLE [dbo].[OPEXTurnover] ADD
    [OPEX/Turnover T %] DECIMAL(15, 4)
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[OPEXTurnover]')
    AND name = 'OPEX/Turnover F %'
) BEGIN
ALTER TABLE [dbo].[OPEXTurnover] ADD
    [OPEX/Turnover F %] DECIMAL(15, 4)
END

IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[OPEXTurnover]')
    AND name = 'OPEX/Turnover x OPEX/Turnover F %'
) BEGIN
ALTER TABLE [dbo].[OPEXTurnover] ADD
    [OPEX/Turnover x OPEX/Turnover F %] DECIMAL(15, 4)
END
/**************************************************************************************************************************************************************************************************/



/**************************************************************************************************************************************************************************************************/
-- [5]
/**************************************************************************************************************************************************************************************************/
IF NOT EXISTS (
    SELECT *
    FROM sys.columns
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[TrainingHoursPerEmployee]') 
    AND name IN ('DateTraining', 'Date')
)
BEGIN
    ALTER TABLE [dbo].[TrainingHoursPerEmployee] ADD
        DateTraining DATE
END

IF EXISTS (
    SELECT *
    FROM sys.columns 
    WHERE 1=1
    AND object_id = OBJECT_ID(N'[dbo].[TrainingHoursPerEmployee]') 
    AND name = 'DateTraining'
) BEGIN
    EXEC sp_rename 'dbo.TrainingHoursPerEmployee.DateTraining', 'Date';
END
/**************************************************************************************************************************************************************************************************/













-- ALTER TABLE [Proj_NORS].[dbo].[RenewableEnergy] ADD
--     [DateRenewable] DATE
--     ,[Renewable Energy %] DECIMAL(15, 4)

-- ALTER TABLE [Proj_NORS].[dbo].[PercentageWasteRecovered] ADD
--     [Date] DATE
--     ,[Percentage waste recovered %] DECIMAL(15, 4)
--     ,[Percentage waste recovered F %] DECIMAL(15, 4)



GO
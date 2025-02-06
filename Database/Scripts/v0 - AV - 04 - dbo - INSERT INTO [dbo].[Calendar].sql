USE [Proj_NORS]
GO

DECLARE 
    @DT_INITIAL DATE = '2000-01-01'
    ,@DT_FINAL DATE = '2050-12-31'

WHILE @DT_INITIAL <= @DT_FINAL BEGIN
    INSERT INTO [dbo].[Calendar] (
        [Date]
        ,[Year]
        ,[Quarter]
        ,[Month]
        ,[MonthName]
        ,[Week]
        ,[Day]
        ,[DayOfWeek]
        ,[DayOfYear]
        ,[Weekday]
    ) VALUES (
        @DT_INITIAL
        ,YEAR(@DT_INITIAL)
        ,DATEPART(quarter, @DT_INITIAL)
        ,MONTH(@DT_INITIAL)
        ,DATENAME( month, @DT_INITIAL)
        ,DATEPART(Week, @DT_INITIAL)
        ,DAY(@DT_INITIAL)
        ,DATENAME(WEEKDAY, @DT_INITIAL)
        ,DATEPART(dayofyear, @DT_INITIAL)
        ,DATEPART(Weekday, @DT_INITIAL)
    )

    -- PRINT @DT_INITIAL

    SET @DT_INITIAL = DATEADD(DAY, 1, @DT_INITIAL)
END
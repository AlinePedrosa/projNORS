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
        ,[ANOMES]
        ,[Week]
        ,[Day]
        ,[DayOfWeek]
        ,[DayOfYear]
        ,[Weekday]
    ) VALUES (
        @DT_INITIAL
        ,YEAR(@DT_INITIAL)
        ,DATEPART(QUARTER, @DT_INITIAL)
        ,MONTH(@DT_INITIAL)
        ,DATENAME(MONTH, @DT_INITIAL)
        ,CONCAT(
            YEAR(@DT_INITIAL)
            ,RIGHT(
                '00' + CAST(
                    MONTH(@DT_INITIAL)  
                    AS VARCHAR(2)
                ), 2
            )
        )
        ,DATEPART(WEEK, @DT_INITIAL)
        ,DAY(@DT_INITIAL)
        ,DATENAME(WEEKDAY, @DT_INITIAL)
        ,DATEPART(dayofyear, @DT_INITIAL)
        ,DATEPART(WEEKDAY, @DT_INITIAL)
    )

    -- PRINT @DT_INITIAL

    SET @DT_INITIAL = DATEADD(DAY, 1, @DT_INITIAL)
END
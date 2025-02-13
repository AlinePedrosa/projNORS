USE [Proj_NORS]
GO

IF OBJECT_ID('dbo.Calendar', 'U') IS NOT NULL
    DROP TABLE dbo.Calendar;

IF OBJECT_ID('dbo.Calendar', 'U') IS NULL
    CREATE TABLE [dbo].[Calendar] (
        [Date] DATE NOT NULL,
        [Year] INTEGER NOT NULL,
        [Quarter] INTEGER NOT NULL,
        [Month] INTEGER NOT NULL,
        [MonthName] VARCHAR(20) NOT NULL,
        [ANOMES] VARCHAR(6) NOT NULL,
        [Week] INTEGER NOT NULL,
        [Day] INTEGER NOT NULL,
        [DayOfWeek] VARCHAR(10) NOT NULL,
        [DayOfYear] INTEGER NOT NULL,
        [Weekday] INTEGER NOT NULL
        PRIMARY KEY CLUSTERED ([Date])
    )
GO

ALTER TABLE [dbo].[Calendar] ADD CONSTRAINT [Calendar_ck] CHECK (
        [Year] > 1900
        AND ([Quarter] BETWEEN 1 AND 4)
        AND ([Month] BETWEEN 1 AND 12)
        AND ([Week]  BETWEEN 1 AND 53)
        AND ([Day] BETWEEN 1 AND 31)
        AND ([DayOfYear] BETWEEN 1 AND 366)
        AND ([Weekday] BETWEEN 1 AND 7)      
)
GO
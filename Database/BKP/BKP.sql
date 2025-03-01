USE [Proj_NORS]
GO
/****** Object:  Table [dbo].[AbsorptionRate]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbsorptionRate](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Absorption Rate] [float] NULL,
	[Absorption Rate F] [float] NULL,
	[Absorption Rate T] [float] NULL,
	[Absorption Rate T+1] [float] NULL,
	[Absorption Rate T+2] [float] NULL,
	[Absorption Rate T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AverageServiceLeadTime]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AverageServiceLeadTime](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Average Service Lead Time] [float] NULL,
	[Average Service Lead Time F] [float] NULL,
	[Average Service Lead Time T] [float] NULL,
	[Average Service Lead Time T+1] [float] NULL,
	[Average Service Lead Time T+2] [float] NULL,
	[Average Service Lead Time T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[Date] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[Quarter] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[MonthName] [varchar](20) NOT NULL,
	[Week] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[DayOfWeek] [varchar](10) NOT NULL,
	[DayOfYear] [int] NOT NULL,
	[Weekday] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CircularityProjects]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CircularityProjects](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Circularity Projects] [float] NULL,
	[Circularity Projects F] [float] NULL,
	[Circularity Projects T] [float] NULL,
	[Circularity Projects T+1] [float] NULL,
	[Circularity Projects T+2] [float] NULL,
	[Circularity Projects T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[company_id] [float] NULL,
	[company_name] [nvarchar](255) NULL,
	[sector] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoyalCustomers]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoyalCustomers](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Loyal Customers] [float] NULL,
	[Loyal Customers F] [float] NULL,
	[Loyal Customers T] [float] NULL,
	[Loyal Customers T+1] [float] NULL,
	[Loyal Customers T+2] [float] NULL,
	[Loyal Customers T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NPS]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NPS](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[NPS] [float] NULL,
	[NPS F] [float] NULL,
	[NPS T] [float] NULL,
	[NPS T+1] [float] NULL,
	[NPS T+2] [float] NULL,
	[NPS T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPEXTurnover]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPEXTurnover](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[OPEX/Turnover] [float] NULL,
	[OPEX/Turnover F] [float] NULL,
	[OPEX/Turnover T] [float] NULL,
	[OPEX/Turnover T+1] [float] NULL,
	[OPEX/Turnover T+2] [float] NULL,
	[OPEX/Turnover T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OwnFleetZeroEmission]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnFleetZeroEmission](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Own fleet zero emission] [float] NULL,
	[Own fleet zero emission F] [float] NULL,
	[Own fleet zero emission T] [float] NULL,
	[Own fleet zero emission T+1] [float] NULL,
	[Own fleet zero emission T+2] [float] NULL,
	[Own fleet zero emission T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PercentageWasteRecovered]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PercentageWasteRecovered](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Percentage waste recovered] [float] NULL,
	[Percentage waste recovered F] [float] NULL,
	[Percentage waste recovered T] [float] NULL,
	[Percentage waste recovered T+1] [float] NULL,
	[Percentage waste recovered T+2] [float] NULL,
	[Percentage waste recovered T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemanufacturedParts]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemanufacturedParts](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Remanufactured Parts] [float] NULL,
	[Remanufactured Parts F] [float] NULL,
	[Remanufactured Parts T] [float] NULL,
	[Remanufactured Parts T+1] [float] NULL,
	[Remanufactured Parts T+2] [float] NULL,
	[Remanufactured Parts T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RenewableEnergy]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RenewableEnergy](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Renewable energy] [float] NULL,
	[Renewable energy F] [float] NULL,
	[Renewable energy T] [float] NULL,
	[Renewable energy T+1] [float] NULL,
	[Renewable energy T+2] [float] NULL,
	[Renewable energy T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Revenue]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revenue](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Revenue] [float] NULL,
	[Revenue F] [float] NULL,
	[Revenue T] [float] NULL,
	[Revenue T+1] [float] NULL,
	[Revenue T+2] [float] NULL,
	[Revenue T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesViaDigitalChannel]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesViaDigitalChannel](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Sales via digital channel] [float] NULL,
	[Sales via digital channel F] [float] NULL,
	[Sales via digital channel T] [float] NULL,
	[Sales via digital channel T+1] [float] NULL,
	[Sales via digital channel T+2] [float] NULL,
	[Sales via digital channel T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technicians turnover]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technicians turnover](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Technicians turnover] [float] NULL,
	[Technicians turnover F] [float] NULL,
	[Technicians turnover T] [float] NULL,
	[Technicians turnover T+1] [float] NULL,
	[Technicians turnover T+2] [float] NULL,
	[Technicians turnover T+6] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingHoursPerEmployee]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingHoursPerEmployee](
	[Company] [float] NULL,
	[Month] [float] NULL,
	[Year] [float] NULL,
	[Training hours per employee] [float] NULL,
	[Training hours per employee F] [float] NULL,
	[Training hours per employee T] [float] NULL,
	[Training hours per employee T+1] [float] NULL,
	[Training hours per employee T+2] [float] NULL,
	[Training hours per employee T+6] [float] NULL,
	[DateTraining] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wheights]    Script Date: 2/7/2025 10:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wheights](
	[pillar] [nvarchar](255) NULL,
	[kpi] [nvarchar](255) NULL,
	[wheight_kpi] [float] NULL,
	[wheight_pillar] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Calendar]  WITH CHECK ADD  CONSTRAINT [Calendar_ck] CHECK  (([Year]>(1900) AND ([Quarter]>=(1) AND [Quarter]<=(4)) AND ([Month]>=(1) AND [Month]<=(12)) AND ([Week]>=(1) AND [Week]<=(53)) AND ([Day]>=(1) AND [Day]<=(31)) AND ([DayOfYear]>=(1) AND [DayOfYear]<=(366)) AND ([Weekday]>=(1) AND [Weekday]<=(7))))
GO
ALTER TABLE [dbo].[Calendar] CHECK CONSTRAINT [Calendar_ck]
GO

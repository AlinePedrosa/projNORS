USE [Proj_NORS]
GO

IF OBJECT_ID('dbo.Revenue', 'U') IS NOT NULL 
    DROP TABLE [dbo].[Revenue]

SELECT * INTO [dbo].[Revenue] FROM [dbo].['1#1# Revenue$']

IF OBJECT_ID('dbo.OPEX_Turnover', 'U') IS NOT NULL 
    DROP TABLE [dbo].[OPEX_Turnover];

SELECT * INTO [dbo].[OPEX_Turnover] FROM dbo.['1#2# OPEX_Turnover$'];

IF OBJECT_ID('dbo.AvarageServiceLeadTime', 'U') IS NOT NULL 
    DROP TABLE [dbo].[AvarageServiceLeadTime]; 
    
SELECT * INTO [dbo].[AvarageServiceLeadTime] FROM [dbo].['2#1#Average Service Lead Time$'];

IF OBJECT_ID('dbo.AbsorptionRate', 'U') IS NOT NULL 
    DROP TABLE [dbo].[AbsorptionRate]; 
    
SELECT * INTO [dbo].[AbsorptionRate] FROM [dbo].['2#2#Absorption Rate$'];

IF OBJECT_ID('dbo.NPS', 'U') IS NOT NULL 
    DROP TABLE [dbo].[NPS];
    
SELECT * INTO [dbo].[NPS] FROM [dbo].['2#3#NPS$'];

IF OBJECT_ID('dbo.SalesViaDigitalChannel', 'U') IS NOT NULL 
    DROP TABLE [dbo].[SalesViaDigitalChannel]; 
    
SELECT * INTO [dbo].[SalesViaDigitalChannel] FROM [dbo].['3#1# Sales via digital channel$'];

IF OBJECT_ID('dbo.LoyalCustomers', 'U') IS NOT NULL 
    DROP TABLE [dbo].[LoyalCustomers]; 
    
SELECT * INTO [dbo].[LoyalCustomers] FROM [dbo].['3#2# Loyal Customers$'];

IF OBJECT_ID('dbo.TrainingHoursPerEmployee', 'U') IS NOT NULL 
    DROP TABLE [dbo].[TrainingHoursPerEmployee];
    
SELECT * INTO [dbo].[TrainingHoursPerEmployee] FROM [dbo].['4#1# Training hours per employe$'];

IF OBJECT_ID('dbo.TechniciansTurnover', 'U') IS NOT NULL
    DROP TABLE [dbo].[TechniciansTurnover]; 
    
SELECT * INTO [dbo].[TechniciansTurnover] FROM [dbo].['4#2# Technicians turnover$'];

IF OBJECT_ID('dbo.RenewableEnergy', 'U') IS NOT NULL 
    DROP TABLE [dbo].[RenewableEnergy]; 
    
SELECT * INTO [dbo].[RenewableEnergy] FROM [dbo].['5#1# Renewable energy$'];

IF OBJECT_ID('dbo.PercentageWasteRecovered', 'U') IS NOT NULL 
    DROP TABLE [dbo].[PercentageWasteRecovered]; 
    
SELECT * INTO [dbo].[PercentageWasteRecovered] FROM [dbo].['5#2# Percentage waste recovered$'];

IF OBJECT_ID('dbo.OwnFleetZeroEmission', 'U') IS NOT NULL 
    DROP TABLE [dbo].[OwnFleetZeroEmission]; 
    
SELECT * INTO [dbo].[OwnFleetZeroEmission] FROM [dbo].['5#3# Own fleet zero emission$'];

IF OBJECT_ID('dbo.CircularityProjects', 'U') IS NOT NULL 
    DROP TABLE [dbo].[CircularityProjects]; 
    
SELECT * INTO [dbo].[CircularityProjects] FROM [dbo].['5#4#Circularity Projects$'];

IF OBJECT_ID('dbo.RemanufacturedParts', 'U') IS NOT NULL 
    DROP TABLE [dbo].[RemanufacturedParts]; 
    
SELECT * INTO [dbo].[RemanufacturedParts] FROM [dbo].['5#5# Remanufactured Parts$'];

GO
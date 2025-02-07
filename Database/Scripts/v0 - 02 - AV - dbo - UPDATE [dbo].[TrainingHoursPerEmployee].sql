USE [Proj_NORS]
GO

UPDATE [dbo].[TrainingHoursPerEmployee] 
SET DateTraining = CAST(CONCAT(Year, '-', Month, '-01') AS DATE)
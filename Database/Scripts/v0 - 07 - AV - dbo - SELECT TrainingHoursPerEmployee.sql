SELECT
    AUX.Company
    ,AUX.Month
    ,AUX.Year
    ,AUX.DateTraining
    ,AUX.[Training hours per employee]
    ,AUX.[Training hours per employee F]
    ,AUX.[Training hours per employee T]
    ,AUX.[Training hours per employee T+1]
    ,AUX.[Training hours per employee T+2]
    ,AUX.[Training hours per employee T+6]
    ,AUX.[Improvement +1]
    ,AUX.[Improvement +1] + [Improvement +2] AS [Improvement +2]
    ,AUX.[Improvement +1] + [Improvement +2] + [Improvement +6] AS [Improvement +6]
FROM (
    SELECT
        T.Company
        ,T.Month
        ,T.Year
        ,T.[Training hours per employee]
        ,T.[Training hours per employee F]
        ,T.[Training hours per employee T]
        ,T.[Training hours per employee T+1]
        ,T.[Training hours per employee T+2]
        ,T.[Training hours per employee T+6]
        ,T.[Training hours per employee T+1] - T.[Training hours per employee] AS [Improvement +1]
        ,T.[Training hours per employee T+2] - T.[Training hours per employee] AS [Improvement +2]
        ,T.[Training hours per employee T+6] - T.[Training hours per employee] AS [Improvement +6]
        ,T.DateTraining
    FROM [Proj_NORS].[dbo].[TrainingHoursPerEmployee] AS T WITH (NOLOCK)
    WHERE 1=1
) AS AUX
WHERE 1=1
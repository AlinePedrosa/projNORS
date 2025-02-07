SELECT
    c.country
    ,CASE c.country
        WHEN 'PT' THEN 'Portugal'
        WHEN 'BR' THEN 'Brazil'
        WHEN 'AO' THEN 'Angola'
        WHEN 'CA' THEN 'Canada'
        WHEN 'MZ' THEN 'Mozambique'
        WHEN 'BW' THEN 'Botswana'
        WHEN 'NA' THEN 'Namibia'
        ELSE 'Unspecified'
    END [country_name]
    ,COALESCE(SUM(e.[Training hours per employee]), 0) AS [total_of_training]
FROM [Proj_NORS].[dbo].[Company] AS c WITH (NOLOCK)
LEFT JOIN [Proj_NORS].[dbo].[TrainingHoursPerEmployee] AS e WITH (NOLOCK) ON (
    e.company = c.company_id
) 
WHERE 1=1
GROUP BY
    c.country
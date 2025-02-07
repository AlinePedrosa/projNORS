SELECT
    company_id
    ,company_name
    ,sector
    ,country
    -- ,CASE country
    --     WHEN 'PT' THEN 'Portugal'
    --     WHEN 'BR' THEN 'Brazil'
    --     WHEN 'AO' THEN 'Angola'
    --     WHEN 'CA' THEN 'Canada'
    --     WHEN 'MZ' THEN 'Mozambique'
    --     WHEN 'BW' THEN 'Botswana'
    --     WHEN 'NA' THEN 'Namibia'
    --     ELSE 'Unspecified'
    -- END [country_name]
FROM [Proj_NORS].[dbo].[Company] AS C WITH (NOLOCK)
WHERE 1=1
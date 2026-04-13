-- Project: Global Cashew Production Trends
-- Objective: Analyze Year-over-Year (YoY) growth for top producing countries
-- Skill showcased: Window Functions (LAG, OVER)

SELECT 
    country_name,
    crop_year,
    production_tonnes,
    -- Get the production value from the previous year
    LAG(production_tonnes) OVER (PARTITION BY country_name ORDER BY crop_year) AS last_year_prod,
    -- Calculate the percentage growth between years
    ((production_tonnes - LAG(production_tonnes) OVER (PARTITION BY country_name ORDER BY crop_year)) 
    / NULLIF(LAG(production_tonnes) OVER (PARTITION BY country_name ORDER BY crop_year), 0)) * 100 AS yoy_growth_percentage
FROM global_crop_production
WHERE crop_type = 'Cashew Nuts'
AND country_name IN ('Nigeria', 'Cote d''Ivoire', 'Vietnam', 'Brazil')
ORDER BY country_name, crop_year;


-- Project: Cashew Quality Control (QC) Analysis
-- Objective: Categorize cashew batches based on KOR (Kernel Out-Turn) and Moisture Content
-- Skill showcased: CASE Statements, Data Filtering, and Conditional Logic

SELECT 
    batch_id,
    supplier_name,
    kor_score,
    moisture_percentage,
    -- Logic to categorize quality based on industry standards
    CASE 
        WHEN kor_score >= 50 AND moisture_percentage <= 10 THEN 'Premium Export'
        WHEN kor_score BETWEEN 45 AND 49 AND moisture_percentage <= 12 THEN 'Standard Processing'
        WHEN moisture_percentage > 14 THEN 'High Risk - Drying Required'
        ELSE 'Reject / Substandard'
    END AS quality_classification,
    -- Flagging batches that need immediate attention
    CASE 
        WHEN moisture_percentage > 12 THEN 'ACTION REQUIRED'
        ELSE 'Clear'
    END AS operational_flag
FROM raw_cashew_inspections
WHERE inspection_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY moisture_percentage DESC;


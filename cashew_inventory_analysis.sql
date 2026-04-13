-- Project: Cashew Inventory Valuation & Audit
-- Description: Calculating total weight and USD value per warehouse zone

WITH Inventory_Calc AS (
    SELECT 
        zone_id,
        cashew_grade,
        (num_layers * bags_per_layer) AS total_bags,
        ((num_layers * bags_per_layer) * 50) AS weight_kg -- Assuming 50kg standard bag weight
    FROM warehouse_stacks
)
SELECT 
    i.zone_id,
    i.cashew_grade,
    i.total_bags,
    i.weight_kg,
    (i.weight_kg * m.price_per_kg) AS estimated_value_usd
FROM Inventory_Calc i
JOIN market_pricing m ON i.cashew_grade = m.cashew_grade
WHERE m.price_date = (SELECT MAX(price_date) FROM market_pricing)
ORDER BY estimated_value_usd DESC;

-- BCG doses in stock at the beginning of the month
-- Substitute the dates with date placeholders

SELECT current_quantity
FROM drug dr
INNER JOIN inventory_store_drug isd ON isd.drug_id = dr.drug_id
WHERE concept_id= 193 AND created_on &lt;= '2016-06-01'
>>>>>>> Bcg doses in stock at the beggining of the month
ORDER BY created_on DESC
LIMIT 1;

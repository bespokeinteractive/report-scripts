-- OPV received within the month
-- Substitute the dates with date placeholders
SELECT IFNULL(SUM(quantity), 0)
FROM inventory_store_drug_transaction_detail isd
INNER JOIN drug d ON d.drug_id = isd.drug_id
WHERE opening_balance  &lt;&gt; closing_balance
AND (concept_id= 100126153 OR concept_id= 100126150 OR concept_id= 100126151) 
AND DATE(created_on) BETWEEN :startOfPeriod AND :endOfPeriod

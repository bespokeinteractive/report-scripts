-- DPT+HIB+HEP B  received within the month
-- Substitute the dates with date placeholders


SELECT IFNULL(SUM(quantity), 0)
FROM inventory_store_drug_transaction_detail isd
INNER JOIN drug d ON d.drug_id = isd.drug_id
WHERE opening_balance <> closing_balance
AND d.concept_id = 5498
AND DATE(created_on) BETWEEN :startOfPeriod AND :endOfPeriod;
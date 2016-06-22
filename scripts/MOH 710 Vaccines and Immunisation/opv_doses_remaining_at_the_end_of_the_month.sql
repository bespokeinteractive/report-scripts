-- OPV remaining at the end of the month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM drug dr
INNER JOIN inventory_store_drug isd ON isd.drug_id = dr.drug_id
WHERE (concept_id= 100126153 OR concept_id= 100126150 OR concept_id= 100126151 OR concept_id= 100126152) AND created_on &lt;= '2016-06-30';
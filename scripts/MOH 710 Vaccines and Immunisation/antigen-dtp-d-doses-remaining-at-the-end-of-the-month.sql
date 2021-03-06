-- DIPHTHERIA TETANUS AND PERTUSSIS VACCINE (drug_id: 348)
-- Doses remaining at the end of the month
-- Get the last transaction's Closing Quantity, at the end of the Month
-- Substitute the dates with date placeholders

SELECT IFNULL(SUM(closing_balance),0)
FROM (
	SELECT closing_balance
	FROM immunization_store_drug_transaction_detail isdtd

	INNER JOIN immunization_store_drug drug
	ON isdtd.immunization_store_drug_id = drug.id
	AND drug.inventory_drug_id=348

	WHERE DATE(isdtd.created_on) <= '2016-09-31'
	OR DATE(isdtd.created_on) <= '2016-09-01'

	ORDER BY isdtd.id DESC
	LIMIT 1
) AS CL
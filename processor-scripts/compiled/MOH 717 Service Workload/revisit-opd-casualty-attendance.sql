-- Get count of patients revisiting OPD Casualty
-- Assumption:
-- 1) All patients pass through OPD Casualty (5114)
select 
	count(patient_id) 
from 
	opd_patient_queue_log 
where 
	opd_concept_id = 5114 
and 
	visit_status like 'New Patient'
AND
	created_on BETWEEN :startOfPeriod AND :endOfPeriod;	

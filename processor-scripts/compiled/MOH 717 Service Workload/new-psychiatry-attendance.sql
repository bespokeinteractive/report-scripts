-- Get count of new patients attending Psychiatric Clinic
select 
	count(patient_id)
from 
	opd_patient_queue_log
where 
	opd_concept_id = 5700
and 
	visit_status like 'New Patient'
AND
	created_on BETWEEN :startOfPeriod AND :endOfPeriod;

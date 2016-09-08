-- FP Sterilization Btl
-- Substitute the dates with date placeholdersSELECT COUNT(*)

select count(*) from 
(
select person_id, min(obs_datetime) min_obs_datetime
from obs
where concept_id = 374
AND o.value_coded = 5276
group by person_id
having min_obs_datetime between '2016-08-23' and '2016-08-23'
) a;
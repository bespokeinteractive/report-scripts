--Chlorides (concept_id: 2501)
--The High and Low Limits are joined from the concept_numeric table
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN concept_numeric cn ON cn.concept_id=o.concept_id
AND o.concept_id=2501


WHERE o.value_numeric <= cn.low_normal
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';
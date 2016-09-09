-- KWASHIOKOR (concept_id: 1762)
-- Females ONLY
-- Age 0-59mnths
-- replace date placeholders

SELECT COUNT(*)

FROM obs o
INNER JOIN person p ON p.person_id=o.person_id
AND TIMESTAMPDIFF(MONTH, birthdate, obs_datetime) < 59

WHERE concept_id=100126196
AND value_coded=1762
AND DATE(obs_datetime) BETWEEN '2016-09-01' AND '2016-09-30';
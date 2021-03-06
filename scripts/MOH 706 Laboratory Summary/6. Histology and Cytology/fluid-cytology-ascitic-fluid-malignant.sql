-- ASCITIC FLUID EXAMINATION (concept_id: 2250)
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2250
AND ob.concept_id = 5655
AND ob.value_coded = 782
WHERE DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'
--get count of cervical cancer screening patients
--substitute the dates with date placeholders
--value coded 5286 is concept id for VIA


SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON p.person_id=o.person_id
WHERE concept_id=5286
AND value_coded = 782
AND o.date_created BETWEEN :startOfPeriod AND :endOfPeriod
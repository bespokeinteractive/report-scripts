#get count of cervical cancer screening patients
#substitute the dates with date placeholders
#value coded 2222 is concept id for PAP SMEAR

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON p.person_id=o.person_id

WHERE (concept_id=100126138)
AND value_coded = 2222
AND p.birthdate IS NOT NULL
AND FLOOR(DATEDIFF(CURDATE(),p.birthdate) / 365) BETWEEN 25 AND 49
AND gender = 'F'
AND o.date_created BETWEEN '2016-06-01' AND '2016-06-30'

-- get count of Clients given IPT 2nd Dose
-- substitute the begin and end dates with date placeholders
-- State id for MALARIA PROPHYLAXIS IPT2 is fixed at '26'
SELECT count(*)
FROM patient_state
WHERE state = '26'
AND start_date BETWEEN '2012-06-01' AND '2016-06-30'
-- get count of cervical cancer clients treated using cyrotherapy


SELECT SUM(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod
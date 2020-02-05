#piêtnaste
SELECT DISTINCT owner
FROM pet
where birth != date_add(CURRENT_DATE(), Interval -1 year)
ORDER BY birth

ver2-
SELECT owner
FROM `pet`  
WHERE 
EXTRACT(MONTH FROM birth) = EXTRACT(MONTH FROM(date_add(CURRENT_DATE(), Interval -1 year)))
ORDER BY birth

#EXTRACT(MONTH FROM CURRENT_TIMESTAMP)


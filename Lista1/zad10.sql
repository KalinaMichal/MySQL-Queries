
#dziesi¹te
SELECT owner, pet.name
FROM `pet` 
WHERE species = 'dog' AND
date_add(birth , Interval -1 year)> date_add(CURRENT_DATE(), Interval -1 year)
ORDER BY name

#jedynaste
SELECT name 
FROM pet
WHERE YEAR(`birth`) < '1994' AND 
YEAR(`birth`) > '1992' OR 
(YEAR(`birth`) = '1994' AND MONTH(`birth`)<7)

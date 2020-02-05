#czternaste
SELECT DISTINCT owner
FROM `pet` 
JOIN event ON event.name=pet.name
WHERE date > ( Select date
              from event
              where name = 'slim' and type ='vet'
              limit 1)


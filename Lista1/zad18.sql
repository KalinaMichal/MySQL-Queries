#osiemnaste
UPDATE event SET performer = 'Grbovic' WHERE event.type LIKE 'vet'
UPDATE event SET performer = 'Vojosevic' WHERE event.type LIKE 'litter'
UPDATE event SET performer = name WHERE event.type NOT LIKE 'litter' AND event.type NOT LIKE 'vet'  

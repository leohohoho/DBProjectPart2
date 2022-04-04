-- Leo Ho - lmh575
-- Sanidhya Sitaula - ss12801

-- Part 2 Section 4

-- part a
select * 
from flight 
WHERE departure_date_time > CURDATE(); 

-- part b
select * 
from flight 
WHERE status = "delayed";

-- part c
select name 
FROM customer NATURAL JOIN purchase;

-- part d
select ID 
FROM airplane 
WHERE airline_name = "China Eastern";
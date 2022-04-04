-- Leo Ho - lmh575
-- Sanidhya Sitaula - ss12801

-- Part 2 Section 4

-- part a
select * 
from flight 
where departure_date_time > CURDATE(); 

-- part b
select * 
from flight 
where status = "delayed";

-- part c
select name 
from customer natural join purchase;

-- part d
select ID 
from airplane 
where airline_name = "China Eastern";
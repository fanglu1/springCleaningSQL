-- 1) 
create database shirts_db

-- 2) 
create table shirts (
shirt_id INT not null primary key,
article varchar (50) not null, 
color varchar (50) not null,
shirt_size varchar(50) not null,
last_worn varchar(50) not null
);

-- 3)
insert into shirts (shirt_id, article, color, shirt_size, last_worn)
values 
(1, 't-shirt', 'white', 'S', 10),
(2, 't-shirt', 'green', 'S', 200), 
(3, 'polo shirt', 'black', 'M', 10), 
(4, 'tank top', 'blue', 'S', 50), 
(5, 't-shirt', 'pink', 'S', 0), 
(6, 'polo shirt', 'red', 'M', 5), 
(7, 'tank top', 'white', 'S', 200), 
(8, 'tank top', 'blue', 'M', 15)

-- 1)
select * from shirts

-- 2)
insert into shirts (shirt_id, article, color, shirt_size, last_worn)
values (9, 't-shirt', 'purple', 'M', 50)

-- 3)
select article, color from shirts

-- 4)
select article, shirt_size, color, last_worn 
from shirts 
where shirt_size = 'M'

-- 5)
update shirts
set  shirt_size = 'L'
where article = 'polo shirt'

-- 6)
update shirts
set last_worn = 0
where last_worn = 15

-- 7)
update shirts
set shirt_size = 'XS', color = 'off white'
where color = 'white'

-- 8)
delete from shirts
where last_worn = 200

-- 9)
delete from shirts
where article = 'tank top'

-- 10)
delete from shirts

-- 11)
drop table shirts
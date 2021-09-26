--1
begin;
insert sample.users select * from shop.users where id = 1;
commit;
--2
create view pcname as select products.name as pname, catalogs.name
from products join catalogs using(id);
select * from pcname;

-- 3.1
DELIMITER $$
create function hello()



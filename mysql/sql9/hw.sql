--1
begin;
insert sample.users select * from shop.users where id = 1;
commit;
--2


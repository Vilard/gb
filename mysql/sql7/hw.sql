--1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select * from users join orders using(id);

--2 Выведите список товаров products и разделов catalogs, который соответствует товару
select description, catalog_id from products join catalogs using(id);


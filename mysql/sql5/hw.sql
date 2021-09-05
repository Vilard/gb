--1. Пусть в таблице users поля created_at и updated_at оказались незапо    лненными. Заполните их текущими датой и временем.

alter table users add created_at datetime default null;
alter table users add update_at datetime default null;
update users 
set update_at = current_timestamp(), 
created_at = current_timestamp();


--2. Таблица users была неудачно спроектирована. Записи created_at и upd    ated_at были заданы типом VARCHAR и в них долгое время помещались знач    ения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу     DATETIME, сохранив введеные ранее значения.

alter table users modify column created_at datetime;
alter table users modify column update_at datetime;


--3. В таблице складских запасов storehouses_products в поле value могут     встречаться самые разные цифры: 0, если товар закончился и выше нуля,     если на складе имеются запасы. Необходимо отсортировать записи таким     образом, чтобы они выводились в порядке увеличения значения value. Одн    ако, нулевые запасы должны выводиться в конце, после всех записей.
select * from  storehouses_products order by null;


--агрегатные

--1. Подсчитайте средний возраст пользователей в таблице users

select sum(year(current_date) - year(birthday_at))/count(1) from users;


--2. Подсчитайте количество дней рождения, которые приходятся на каждый     из дней недели. Следует учесть, что необходимы дни недели текущего год    а, а не года рождения.

select dayname(str_to_date(concat(year(now()),'-', month(birthday_at),'-' ,day(birthday_at)), '%Y-%m-%d')) as dayname,   count(*) from users
group by dayname(str_to_date(concat(year(now()),'-', month(birthday_at),'-' ,day(birthday_at)), '%Y-%m-%d'));




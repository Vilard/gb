--1. Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

select max(from_user_id), id from users join messages using(id) where id = 4;


--2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

select count(*) from profiles join likes using(user_id) where year(now())-year(birthday) < 10;


--3. Определить кто больше поставил лайков (всего): мужчины или женщины.

select max(cnt) from (select gender, count(*) as 'cnt' from profiles join likes using(user_id) group by gender) as t1;

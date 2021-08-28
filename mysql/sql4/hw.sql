-- 1. Заполнить все таблицы БД vk данными (по 10-20 записей в каждой таблице)

-- дамп базы добавлен отдельным файлом


-- 2. Написать скрипт, возвращающий список имен (только firstname)
-- пользователей без повторений в алфавитном порядке

select distinct firstname from users;


-- 3. Написать скрипт, отмечающий несовершеннолетних пользователей 
-- как неактивных (поле is_active = false). 
-- Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)

alter table profiles add is_active tinyint not null;
select replace(is_active, 0, (year(current_date)-year(birthday)>=18)) as is_active from profiles;


-- 4. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)

delete from messages where (year(current_date)<year(created_at));


-- 5. Написать название темы курсового проекта (в комментарии)
-- Логично предположить что тем




/*1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf,
задав в нем логин и пароль, который указывался при установке.

2012  vim /home/vladimir/.my.cnf

2. Создайте базу данных example, разместите в ней таблицу users,
состоящую из двух столбцов, числового id и строкового name.
*/
create database example;
use example;
create table users (
id serial primary key,
name varchar(255) comment 'пользователь'
) comment = 'table users';

/*3. Создайте дамп базы данных example из предыдущего задания, 
разверните содержимое дампа в новую базу данных sample.
*/
create database sample;
/* 1035  mysqldump example > example.sql -u root -p
 1036  mysql sample < example.sql -u root -p
 1037  history >3.txt

4. (по желанию) Ознакомьтесь более подробно с документацией утилиты 
mysqldump. Создайте дамп единственной таблицы help_keyword базы 
данных mysql. Причем добейтесь того, чтобы дамп содержал только 
первые 100 строк таблицы.

 1076  mysqldump mysql -u root -p  help_keyword | tail -n100 > help_keyword.sql 
 1077  history > 4.txt
*/

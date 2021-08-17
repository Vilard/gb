create database example;
use example;
create table users (
id serial primary key,
name varchar(255) comment 'пользователь'
) comment = 'table users';

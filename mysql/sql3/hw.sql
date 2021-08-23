drop database if exists vk;
create database vk;
use vk;

drop table if exists users;
create table users (
    id bigint unsigned not null auto_increment primary key,
    firstname varchar(50),
    lastname varchar(50) comment 'surname',
    email varchar(120) unique,
    password_hash varchar(100),
    phone bigint UNSIGNED unique,
    index users_firstname_lastname_idx(firstname, lastname)
) comment 'users';

drop table if exists profiles;
create table profiles(
    user_id bigint unsigned not null unique,
    gender char(1),
    birthday date,
    photo_id bigint unsigned null,
    created_at datetime default now(),
    hometown varchar(100)

);

alter table profiles add constraint fk_user_id
    foreign key (user_id) references users(id)
    on update cascade
    on DELETE restrict;

drop table if exists massages;
create table massages (
    id serial,
    from_user_id bigint unsigned not null,
    to_user_id bigint unsigned not null,
    body text,
    created_at datetime default now(),
    foreign key (from_user_id) references users(id),
    foreign key (to_user_id) references users(id)
);
-- сколько человек увидело сообщение
-- сколько человек посетило страницу пользователя
-- что то прикрутить 3 раза
-- 
drop table if exists watch_profile; 
create table watch_profile (
    id serial,
    -- from_user_id bigint unsigned not null,
    users_watch_profile bigint not null,
    created_at datetime default now(),
    foreign key (users_watch_profile) references users(id)
    -- foreign key (from_user_id) references users(id)
);

-- drop table if exists watch_photo; 
-- create table watch_photo (
--     id serial bigint unsigned,
--     users_watch_photo bigint not null unsigned,
--     created_at datetime default now(),
--     foreign key (users_watch_photo) references users(id)
-- );


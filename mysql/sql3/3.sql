-- Написать крипт, добавляющий в БД vk, которую создали 
-- на занятии, 3 новые таблицы (с перечнем полей, указанием 
-- индексов и внешних ключей)


drop table if exists watch_profile; 
create table watch_profile(
    id serial,
    from_user_id bigint unsigned not null,
    users_watch_profile bigint unsigned not null,
    created_at datetime default now(),
    foreign key (id) references users(id),
    foreign key (from_user_id) references users(id)
);

drop table if exists watch_photo; 
create table watch_photo(
    id serial,
    `users_watch_photo` bigint not null,
    created_at datetime default now(),
    foreign key (id) references users(id)
);

drop table if exists hiden_profile;
create table hiden_profile(
    id serial,
    user_hiden TINYINT,
    foreign key (id) references users(id)
);
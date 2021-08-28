alter table profiles add is_active tinyint not null;
select replace(is_active, 0, (year(current_date)-year(birthday)>=18)) as is_active from profiles;

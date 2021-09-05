select * from users;

select  id,
        (select to_user_id from messages where id=1) as to_user,
        (select from_user_id from messages where id=1) as from_user,
        count(*)
from users where id = 1
group by id;

select count(*) from messages group by to_user_id;
union
select count(*) from messages group by from_user_id;
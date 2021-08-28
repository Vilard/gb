insert users(firstname, lastname, email, password_hash)
values('Jamaal', 'Epsrnser', 'jamaal.epsrnser@example.org', '3d8e11ae578d3a3db76e193a45d278aeb10bf822');

3
alter table profiles add is_active tinyint not null;
alter table profiles drop column is_active;
select (year(current_date)-year(birthday)>=18) from profiles;

select replace(is_active, 0, (year(current_date)-year(birthday)>=18)) as is_active from profiles;

4
delete from messages where (year(current_date)<year(created_at));

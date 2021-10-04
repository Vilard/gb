-- 1.1
/* 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции. */
begin;
insert sample.users select * from shop.users where id = 1;
commit;
-- 1.2
/* 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs. */
create view pcname as select products.name as pname, catalogs.name
from products join catalogs using(id);
select * from pcname;

-- 3.1
/* 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи". */
DROP function if exists hello;
CREATE FUNCTION hello ()
RETURNS varCHAR(255) DETERMINISTIC
begin
set @h = case
		when hour(now()) > 6 and hour(now()) < 12 then "доброе утро"
		when hour(now()) > 12 and hour(now()) < 18 then "добрый день"
		when hour(now()) > 18 and hour(now()) < 0 then "добрый вечер"
		when hour(now()) > 0 and hour(now()) < 6 then "доброй ночи"
	end;

RETURN @h;	
end;

-- 3.2
/* 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию. */

DROP trigger ins_to_products;
delimiter //
create trigger ins_to_products before insert on products
for EACH row 
BEGIN
	if (new.description is not Null or new.name is not Null ) then
	insert into products(description, name) values(new.description, new.name)
	end if;
END//

delimiter ;



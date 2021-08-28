delete from messages where (year(current_date)<year(created_at));

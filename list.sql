use db;
delimiter $$
create procedure list_names(inout name_list varchar(4000))
begin
declare is_done integer default 0;
declare c_name varchar(100) default "";
declare cust_cursor cursor for
select name from customer;
declare continue handler for not found set is_done=1;
open cust_cursor;
get_list:loop
fetch cust_cursor into c_name;
if is_done=1 then
leave get_list;
end if;
set name_list=concat(c_name,",",name_list);
end loop get_list;
close cust_cursor;
end $$

delimiter //
set @name_list="";

call list_names(@name_list);

use db;
select * from customer;
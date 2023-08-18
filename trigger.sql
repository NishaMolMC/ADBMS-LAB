set sql_safe_updates=0;
create database phone;
use phone;
create table phone_book(P_name varchar(15),mob_no int);
create table del_phonebook(P_name varchar(15),mob_no int,modify_date date);
insert into phone_book values("Neenu",65487);
insert into phone_book values("Silu",67341);
insert into phone_book values("Anu",89076);
insert into phone_book values("jain",23456);
insert into phone_book values("jhon",12345);
drop database phone;
delimiter //
CREATE TRIGGER save_old_mob1
AFTER DELETE 
ON phone_book
FOR EACH ROW
BEGIN

insert into del_phonebook(P_name,mob_no,modify_date) values(old.P_name,old.mob_no,sysdate());
END;
//
delimiter //
CREATE TRIGGER save_old_mob2
AFTER UPDATE 
ON phone_book
FOR EACH ROW
BEGIN

insert into del_phonebook(P_name,mob_no,modify_date) values(old.P_name,old.mob_no,sysdate());
END;
//

select*from phone_book;
desc phone_book;
desc del_phonebook;
delete from phone_book where p_name= 'Anu';
update phone_book set mob_no=94444 where P_name='silu'; 
select*from del_phonebook;


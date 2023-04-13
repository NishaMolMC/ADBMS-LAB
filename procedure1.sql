create database db;
use db;
create table customer(cust_id int,first_name varchar(10),country varchar(20));

DELIMITER //
CREATE PROCEDURE us_customer ()
BEGIN
SELECT cust_id,first_name
FROM customer
WHERE country = 'USA' ;
END //
DELIMITER ;

insert into customer values(1,'shibu','UK');
insert into customer values(2,'ruhaan','canada');
insert into customer values(1,'jhon cena','USA');

CALL us_customer();
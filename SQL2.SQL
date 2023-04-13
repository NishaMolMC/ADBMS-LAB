use db;
create table section1(s_id int,s_name varchar(20),strength int);

insert into section1 values(1,'computer science',20);
insert into section1 values(2,'portal',46);
insert into section1 values(3,'geeksforgeeks',60);
 DELIMITER //
 CREATE FUNCTION totalStrength()
 RETURNS INT 
 DETERMINISTIC
 BEGIN  
    DECLARE total INT;
    SET total=0;
    SELECT SUM(strength) INTO total FROM section1;
    RETURN total;
    END;
    
// 
DELIMITER ;

SELECT totalStrength();


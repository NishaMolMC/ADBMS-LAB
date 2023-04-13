create database studentdetails;
use studentdetails;
create table student(rollno int,name varchar(20),address varchar(20),maths int,physics int,computerscience int,total int);
insert into student values(1,'abu','kozhikode',100,80,90,270);
insert into student values(2,'anu','uk',100,80,90,270);
insert into student values(3,'aju','canada',100,100,100,300);
insert into student values(4,'manu','kochi',100,80,90,270);
insert into student values(5,'vani','banglore',100,80,90,270);
insert into student values(6,'abi','goa',100,80,90,270);
insert into student values(7,'lalu','kozhikode',100,80,90,270);
insert into student values(8,'abdu','bali',100,80,90,270);
insert into student values(9,'akash','pala',100,90,90,280);
insert into student values(10,'shibla','palakkad',100,80,100,280);
select * from student;
select rollno,name from student;
select rollno,name from student where total>250;
select name from student where address='canada';



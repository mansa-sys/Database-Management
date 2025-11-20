create database personal;
use personal;
create table personal (id int,name varchar(20),percentage int,age int,gender varchar (10),phone varchar (10),city varchar( 10) );
select * from personal;
insert into personal (id,name,percentage,age,gender,phone,city)
values
(1,'Ram Kumar',45,19,"M",4022144,"Agra"),
(2,'Sarita Kumari',55,22,"F",4034421,"Delhi"),
(3,'Salman Khan',62,20,"M",4056221,"Agra"),
(4,'Juhi Chawla',47,18,"F",4089821,"Bhopal"),
(5,'Anil Kapoor',74,22,"M",4025221,"Agra"),
(6,'John Abraham',64,21,"M",4033776,"Delhi"),
(7,'Shahid Kapoor',52,20,"M",4022784,"Agra");

#AGGREGATE FUNCTIONS
select * from personal;
select count(name) from personal;
select count(name) from personal;
select max(percentage) from personal;
select max(percentage) from personal;
select avg(age) from personal;
select max(percentage) from personal where city="agra";
select count(name) from personal where city="agra";
select count(distinct Agra) from personal;
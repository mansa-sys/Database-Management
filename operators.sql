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
select * from personal;
select count(name) from personal;
select count(name) from personal;
select max(percentage) from personal;
select max(percentage) from personal;
select avg(age) from personal;
select max(percentage) from personal where city="agra";
select count(name) from personal where city="agra";
select count(distinct Agra) from personal;

SELECT 5+6;
SELECT 5-6;
SELECT 5*6;
SELECT 5/3;

Select id,name, (percentage+5) as new_percentage from personal;

Select pi ();

Select round (4.51);
Select round (4.49);
Select round (-4.49);
Select round (1234.987,2);
Select round (1234.987,1);

select ceil(1.23);
select floor(4.56);

select pow (2,2);
select pow (2,3);
select pow (2,4);
select sqrt (16);
select sqrt (4);
select sqrt (5) ;
select (round(sqrt(5),2));
select round (sqrt(10),2);

select rand();
select rand ()*100;

select abs(-56);
select abs(-56.25);
select abs(56.25);

select sign (23);
select sign (0);
select sign (-23);

Select id, upper (name),percentage from personal;
Select id, ucase (name),percentage from personal;
Select id, lower (name),percentage from personal;
Select id, lcase (name),percentage from personal;

Select id,name,character_length(name),percentage from personal;
Select id,name,char_length(name),percentage from personal;
Select id,name,length(name),percentage from personal;

select id, concat (name,percentage) from personal;
select id, concat (name," ",percentage) from personal;
select id, concat (name,"-",percentage) from personal;

SELECT CONCAT (" MANSA ", "LIKES"," COFFEE");
SELECT 	concat_ws("-","MANSA","LIKES"," COFFEE");
SELECT 	concat_ws(" ","MANSA","LIKES"," COFFEE");

select trim( "mansa singhla"  );
select ltrim ( "mansa singhla"  );
select rtrim ( "mansa singhla"  );

select position("world" in "hello world");
select position( "o" in "hello world");
select instr("helloworld","ell");
select locate("ell","helloworld");
select locate("l","helloworld",3);
select locate("l","helloworld",7);
select locate("l","helloworld",10);

select substring("neema jha",5);
select substring("neema jha",3,6);
select substring("neema jha",-6,3);
select substr("neema jha",-6,3);
select mid("neema jha",-6,3);
select substring_index("www.neemajha.net",".",1);
select substring_index("www.neemajha.net",".",2);
select substring_index("www.neemajha.net","e",2);
select substring_index("www.neemajha.net","e",3);

select strcmp("neema jha","neema jha");
select strcmp("neema jha","neema");
select strcmp("neema","neema jha");

select format(235.3568,3);
select left ("neema jha",3);
select left("neema jha",5);
select right("neema jha",3);

select rpad("neema jha",20,"-");
select rpad("neema jha",20,"*");
select lpad("neema jha",20,"*");
select reverse ("neema jha");
select replace ("neema jha","neema","Ms.");
select replace ("hello mansa","hello","bye");
select field("a","X","a","k");
SELECT FIELD('b', 'X', 'a', 'k');
select field("b","X","a","b");
select field("a","X","A","k");
select field(5,0,1,2,3,4,5);
select field("ram","Ram","Mohan","Shyam");
select find_in_set("ram","Ram,Mohan,Shyam");

select current_date ();
select curdate();
select sysdate();
select now();
select date('2025-10-14 10:11:07');
select month('2025-10-14 10:11:07');
select monthname('2025-10-14 10:11:07');
select year('2025-10-14 10:11:07');
select quarter('2025-10-14 10:11:07');
select day('2025-10-14 10:11:07');
select dayofmonth('2025-10-14 10:11:07');
select dayname('2025-10-14 10:11:07');
select dayofweek('2025-10-14 10:11:07');
select week('2025-10-14 10:11:07');
select weekday('2025-10-14 10:11:07');
select yearweek('2025-10-14 10:11:07');
select last_day('2025-10-14 10:11:07');
select extract(month from'2025-10-14 10:11:07');
select extract(year from'2025-10-14 10:11:07');
select extract(week from'2025-10-14 10:11:07');
select extract(day from'2025-10-14 10:11:07');
select extract(hour from'2025-10-14 10:11:07');
select extract(minute from'2025-10-14 10:11:07');
select extract(second from'2025-10-14 10:11:07');
select adddate("2025-10-14",interval 10 day);
select adddate("2025-10-14",interval 1 month);
select adddate("2025-10-14",interval 1 year);
select adddate("2025-10-14",interval 500 minute);
select date_add("2025-10-14",interval 500 minute);
select subdate("2025-10-14",interval 1 day);
select datediff("2026-03-19","2025-10-14");
select current_time();
select curtime();
select current_timestamp();
select localtime();
select localtimestamp();
select time('2025-10-14 10:11:07');
select hour('2025-10-14 10:11:07');
select minute('2025-10-14 10:11:07');
select second('2025-10-14 10:11:07');
select timediff("10:09:21","9:10:21");
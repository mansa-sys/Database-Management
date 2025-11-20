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

#STRING FUNCTIONS
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
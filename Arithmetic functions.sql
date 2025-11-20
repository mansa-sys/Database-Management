#ARITHMETIC FUNCTIONS
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
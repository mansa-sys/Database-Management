
use office;
create table office_data (
emp_ID INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(30),
salary INT,
hire_date date 
);

INSERT INTO office_data (emp_id,first_name,last_name,department,salary,hire_date)
VALUES
(1,'John','Doe','IT',60000.00,'2019-01-10'),
(2,'Jane','Smith','HR',55000.00,'2018-03-05'),
(3,'Emily','Jones','IT',62000.00,'2020-07-23'),
(4,'Michael','Brown','Finance',70000.00,'2016-05-14'),
(5,'Sarah','Davis','Finance',69000.00,'2017-11-18'),
(6,'David','Johnson','HR',48000.00,'2021-09-10');

alter table office_data
add column employee VARCHAR(50);

update office_data
set employee = concat(first_name, ' ', last_name);

#1 Find the average salary of employees in each department. 
select department,
avg(salary) as avg_salary
from office_data
group by department;

#2 Find the total number of employees hired after 2019. 
select count(*) as total_employees_hired_after_2019
from office_data
where year (hire_date) > 2019;

#3 List the departments and the total salary of all employees in each department, ordered by the total salary. 
select department,
sum(salary) as total_salary
from office_data
group by department
order by total_salary desc;


#4 Find the highest salary in the Finance department. 
select max(salary) as highest_salary
from office_data
where department= 'Finance';

#5 Get the top 3 highest-paid employees. 
select *
from office_data
order by salary desc
limit 3;

#6 Find the department with the minimum average salary.  
select department,
avg(salary) as avg_salary
from office_data
group by department
order by avg_salary 
limit 1;

#7 Display the total number of employees in each department, ordered by the number of employees. 
select department,
count(*) as total_employees
from office_data 
group by department
order by total_employees ;

#8 Find the average salary of employees who were hired before 2020.
select employee,
avg(salary) as avg_salary
from office_data
where year (hire_date)<2020
group by employee;

#9 List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
select employee, hire_date
from office_data
where department = 'IT'
order by hire_date desc;

#10 Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.
select sum(salary) as total_salary
from office_data
where hire_date>'2019-01-01'
order by total_salary;

select employee, SUM(salary) as total_salary
from office_data
where hire_date > '2019-01-01'
group by employee
order by total_salary;

#11 Get the employee with the lowest salary in the HR department. 
select employee,salary
from office_data
where department= 'HR'
order by salary
limit 1;

#12 Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  
select employee,salary,department
from office_data
order by salary desc
limit 2;

#13 List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
select employee,salary
from office_data
where hire_date>2018
order by salary 
limit 4;


#14 Find the highest salary in the IT department, but limit the results to the top 1 result.   
select employee,salary
from office_data 
where department= 'IT'
order by salary desc
limit 1;

#15 Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  
select department,
avg(salary) as avg_salary
from office_data
group by department
having avg_salary > 60000;







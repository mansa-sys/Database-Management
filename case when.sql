#CASE WHEN
create database office;
use office;
CREATE TABLE employees (
emp_ID INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(30),
salary INT,
experience INT,
gender VARCHAR (10)
);

INSERT INTO employees (emp_ID,name,department,salary,experience,gender) 
VALUES 
(1,'Alice', 'HR',40000,3,'Female'),
(2,'Bob','Finance',60000,6,'Male'),
(3,'Charlie','IT',55000,4,'Male'),
(4,'David','IT',80000,10,'Male'),
(5,'Eva','Finance',45000,2,'Female'),
(6,'Frank','HR',50000,7,'Male'),
(7,'Grace','IT',3000,1,'Female'),
(8,'Helen','Finance',70000,9,'Female'),
(9,'Ian','HR',65000,8,'Male'),
(10,'Julia','IT',48000,3,'Female');

#catergorise salary level
SELECT name,salary,
CASE
WHEN salary>70000 THEN "High"
WHEN salary BETWEEN 40000 AND 70000 THEN "Medium"
ELSE "Low"
END AS salary_level
FROM employees;

#Bonus based on experience
SELECT name,experience,
 CASE
WHEN experience >= 8 THEN 10000
WHEN experience >= 5 THEN 7000
ELSE 3000
END AS bonus 
FROM employees;
 # name initials
 SELECT name,gender,
CASE
WHEN gender='Female' THEN concat("Ms.",name)
ELSE concat("Mr.",name)
END AS LOL
FROM employees;

SELECT experience,salary,
CASE
WHEN experience > 8 and salary >60000 THEN "A"
WHEN experience between 5 and 8 then "B"
ELSE "C"
END AS GRADE
FROM employees;

SELECT department,
CASE
WHEN department ="IT" THEN "D01"
WHEN department = "Finance" THEN "D02"
ELSE "D03"
END AS dep
FROM employees;

SELECT salary,
CASE 
WHEN salary>40000 then (salary +20%salary)
WHEN salary between 40000 and 60000 then(salary +10%salary)
ELSE salary+salary*0.05
END AS "INCREMENT"
FROM employees;

SELECT department,
CASE
WHEN department ="IT" THEN "technical"
WHEN department ="Finance" THEN "technical"
ELSE " non-technical"
END AS "tech"
FROM employees;

SELECT department,
CASE
WHEN department ="IT" THEN "technical"
WHEN department ="Finance" THEN "technical"
ELSE " non-technical"
END AS "tech"
FROM employees;

SELECT salary,
CASE
 WHEN salary > (SELECT AVG(salary) FROM employees) THEN 'above average'
    WHEN salary < (SELECT AVG(salary) FROM employees) THEN 'below average'
  END AS salary_average
FROM employees;


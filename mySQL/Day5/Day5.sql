-- between

-- mySQL Alias
-- rename the column in the result set => First Name
select fname as 'First Name', lname as 'Last Name', salary, address From employee;

-- IN operator
-- display all employees whos name is 'John', 'Jennifer', 'Ahmad' or 'Alicia'
SELECT * FROM employee WHERE fname IN ('John', 'Jennifer', 'Ahmad', 'Alicia');

-- DISTINCT - selects unique data(doesnt show duplicates)
select distinct salary from employee;

-- Aggregate Functions
/*AVG(), MAX(), MIN(), SUM(), COUNT()*/

-- what is average summary in your company?
select AVG(salary) as 'Average Salary' from employee;

-- what is total amount of salary employees paid?
select sum(salary) as 'Total Salary' from employee;

-- how many employees are working in your company?
select count(*) as 'Total No. of Emp' from employee;

-- display max and min salary that you pay to your employee
SELECT MAX(salary) AS 'max_salary', MIN(salary) AS 'min_salary'
FROM employee;

-- display max and min salary only for male employees
SELECT MAX(salary) AS 'max_salary', MIN(salary) AS 'min_salary'
FROM employee where SEX='M';

-- Grouping Data
-- GROUP BY - groups rows that have the same values into summary rows

-- Display how many male and how many female employees are working in your company?
select sex, count(*) as 'No of Emp' from employee where sex is not null group by sex;

-- Like keyword
select * from employee where fname like 'J%'; -- name starts with J
select * from employee where fname like '%n'; -- name ends with n
select * from employee where fname like '_o%'; -- second letter in name is o

-- Task
-- select all employees who name has 'h' as second character
select * from employee where fname like '_h%';

-- SELECT Employees who has 'me' in their first name.
SELECT * FROM employee WHERE fname LIKE '%me%';

-- Select employees who's first Name can be anything but should have 'oh' after first character.
SELECT * FROM employee WHERE fname LIKE '_oh%';

-- Select record of Employee who is born in 1965.
SELECT * FROM employee WHERE YEAR(bdate) LIKE '1965';

-- Display all employees who's first Name starts with A and ends with d.
SELECT * FROM employee WHERE fname LIKE 'A%d';

-- Display all employees who's first Name start with J and does not ends with n.
SELECT * FROM employee WHERE fname LIKE 'J%' AND fname NOT LIKE '%n';



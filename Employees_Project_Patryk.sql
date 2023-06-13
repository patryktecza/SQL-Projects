SELECT emp_no, first_name, last_name from employees;

SELECT * FROM employees WHERE birth_date not between '1955-01-01' and '1960-01-01';

SELECT first_name AS NAME FROM employees WHERE first_name like 'm%';

SELECT e.emp_no, e.first_name, s.salary, e.gender
FROM employees e JOIN salaries s ON e.emp_no = s.emp_no;

# What is the average salary earned by Basil Tramer
SELECT * FROM employees WHERE first_name = "Basil" and last_name = "Tramer";

SELECT AVG(salary) FROM salaries WHERE emp_no = '10049';

SELECT e.emp_no, ROUND(AVG(s.salary),2) AS Salary_average
FROM employees e 
JOIN salaries s 
ON e.emp_no = s.emp_no
WHERE e.first_name = "Basil" and e.last_name = "Tramer" and e.emp_no = '10049'; 

# All the unique titles in the database.alter
SELECT DISTINCT title FROM titles;

# First name and last name of all the employees who are staff

SELECT * FROM employees;

SELECT e.first_name, e.last_name, t.title
FROM employees e 
JOIN titles t
ON e.emp_no = t.emp_no
WHERE t.title = "Staff";

# Count the number of employees according to their title

SELECT title, count(title) AS counts FROM titles
GROUP BY title
ORDER BY counts DESC;

# In which department most number of employees work

SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT dept_no, count(dept_no) 
FROM dept_emp
GROUP BY dept_no
ORDER BY count(dept_no) DESC;

# Under which title, least number of employee work.

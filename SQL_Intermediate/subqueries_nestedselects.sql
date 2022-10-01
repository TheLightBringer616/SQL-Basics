--Retrieve all records with all columns
SELECT * FROM EMPLOYEES;
SELECT * FROM JOB_HISTORY;
SELECT * FROM JOBS;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

--Execute a failing query (i.e. one which gives an error) to retrieve all employees records whose salary is lower than the average salary.
select * 
from employees 
where salary < AVG(salary);

--Execute a working query using a sub-select to retrieve all employees records whose salary is lower than the average salary.
select EMP_ID, F_NAME, L_NAME, SALARY 
from employees 
where SALARY < (select AVG(SALARY) 
                from employees);

--Execute a failing query (i.e. one which gives an error) to retrieve all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
select EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY 
from employees;

--Execute a Column Expression that retrieves all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
select EMP_ID, SALARY, ( select MAX(SALARY) from employees ) AS MAX_SALARY 
from employees;

--Execute a Table Expression for the EMPLOYEES table that excludes columns with sensitive employee data (i.e. does not include columns: SSN, B_DATE, SEX, ADDRESS, SALARY).
select * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL;
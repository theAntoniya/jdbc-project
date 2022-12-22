-- Task 1 :  How many employees working for each manager
-- Task 2 :  How many locations we have  for each country
-- Task 3 :  Display all employees salary in following format as column name Employees Salary
--Ex :   Steven makes 24000
                --  Neena makes 17000

-- Task 1 :  How many employees working for each manager

select count( MANAGER_ID), count(*) as employees_count from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
having count(*)>6
order by employees_count desc;



-- Task 2 :  How many locations we have  for each country
select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID;

--wanna see only US and CA
select COUNTRY_ID, count(*) from LOCATIONS
where COUNTRY_ID IN ('US', 'CA')
group by COUNTRY_ID
order by COUNTRY_ID;

--display where location count is bigger than 2
select COUNTRY_ID, count(*) from LOCATIONS
where COUNTRY_ID IN ('US', 'CA')
group by COUNTRY_ID
having  count(*)>2
order by COUNTRY_ID;




-- Task 3 :  Display all employees salary in following format as column name Employees Salary
--Ex :   Steven makes 24000
--  Neena makes 17000

--select FIRST_NAME, SALARY*12 as Employees_Salary  from EMPLOYEES;
select  First_Name||'makes'|| salary as Employees_Salary from Employees;


select concat(concat(FIRST_NAME,' makes '),salary) as Employees_Salary from EMPLOYEES;


-- Select - Distinct - Where - Order By - Like - Group By - Having
-- 1. List all the employees first and last name with their salary in employees table
-- 2. How many employees have salary less than 5000?
-- 3. How many employees have salary between 6000 and 7000?
-- 4. List all the different region_ids in countries table
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,firstName: Douglas)
-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
-- 7. display the maximum salary in employees table
-- 8. display the the minimum salary in employees table
-- 9. display the average salary of the employees;
-- 10. count the total numbers of the departments in departs table
-- 11. sort the start_date in ascending order in job_history's table
-- 12. sort the start_date in descending order in job_history's table
-- 13. display all records whose last name contains 2 lowercase 'a's
-- 14. display all the employees whose first name starts with 'A'
-- 15. display all the employees whose job_ID contains 'IT'
-- 16. display all  unique job_id that end with CLERK in employee table
-- 17.display all  employees first name starts with A and have exactly 4 charactersTotal
-- 18. display all the employees whose department id in 50, 80, 100
-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
-- 20. divide employees into groups by using thier job id
-- 1 display the maximum salaries in each groups
-- 2 display the minium salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
-- 5 display the total budgests of each groups
-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,SA_REP, FI_ACCOUNT, AD_VP
-- 22.display max salary  for each department
-- 23. display total salary for each department except department_id 50, and where total salary >30000
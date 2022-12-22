select * from employees;

-- display any job title information ends with manager from jobs table
select * from JOBS
where JOB_TITLE like ('%Manager');


--display all employees except firstname is starting with D
select * from EMPLOYEES
where FIRST_NAME not like ('D%');


--display all employees except firstname is starting with D and has 5 letter
select * from EMPLOYEES
where FIRST_NAME not like ('D____');


--display all Countries where Region_ID is 1 and Country_Name is not Belgium
select  * from COUNTRIES
where REGION_ID  = '1' and COUNTRY_NAME NOT IN ('Belgium');
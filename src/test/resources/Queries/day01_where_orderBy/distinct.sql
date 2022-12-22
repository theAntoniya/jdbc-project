select * from employees;

select FIRST_NAME from EMPLOYEES;

--display all different names from employees
select distinct FIRST_NAME from EMPLOYEES;
--it return 91 result as different names
--origin data still stays the same

select distinct * from EMPLOYEES;
--it will check each row to filter different columns --> * --> All columns


--display different job_ids from jobs table
select JOB_ID from jobs;

select distinct JOB_ID from jobs;
--NOTE --> since Job id is PK(Primary Key) for JOBs table it will give same result with/out distinct

--display different country ids from locations table
select distinct COUNTRY_ID from LOCATIONS;
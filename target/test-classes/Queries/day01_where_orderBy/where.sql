select * from employees;

/*
 WHERE
 --Which keyword we are using in JAVA to filter?
 --if statement

 -- To filter result from database while we are running query
 we gonna use WHERE keyword

 --String(Java) --> Varchar(Database)
 --Varchar same as String

 --double,float -->Decimals in SQL
 */

select * from EMPLOYEES
where FIRST_NAME='David';  --> David (name/value) is case SENSITIVE

--display firstname,lastname,salary where firstname is Peter
select first_name,last_name,salary from EMPLOYEES
where FIRST_NAME = 'Peter';

--display firstname,lastname,salary where firstname is David and last_name is Austin
select first_name,last_name,salary from EMPLOYEES
where FIRST_NAME = 'David' and LAST_NAME ='Austin';

--display all information from employees where salary is bigger than 6000
select * from EMPLOYEES
where SALARY>6000;

--display email of who is making less than 6000
select EMAIL from EMPLOYEES
where SALARY<6000;

--display all information from employees who is making more than 600 and department id is 60
select * from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID =60;

--display all info from employees where salary is equals and more than 3000 and salary is equals or less  than 7000
select * from EMPLOYEES
where SALARY>=3000 and SALARY<=7000;

--BETWEEN LOWER AND UPPER
--it will give result within this range
select * from EMPLOYEES
where SALARY between 3000 and 7000

--dispay all info from employees where employee_id between 100 and 120
select * from EMPLOYEES
where EMPLOYEE_ID between 100 and 120; --> range is included


--display all info from employess who is working as IT_Prog or MK_Man
select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID='MK_MAN';

-- IN CLAUSES ==
--it uses or logic
--solution 2
select * from EMPLOYEES
where JOB_ID IN ('IT_PROG', 'MK_MAN');

--display all information where employee id is 121,143,156,134
select * from EMPLOYEES
where EMPLOYEE_ID IN ('121','143','156','134');

--display all information where country id equals US,IT
select * from COUNTRIES
where COUNTRY_ID = 'US' or COUNTRY_ID = 'IT';

select *from COUNTRIES
where COUNTRY_ID IN ('US', 'IT');

--display all country names expect country_id is US and IT
select COUNTRY_NAME from COUNTRIES
where COUNTRY_ID NOT IN ('US', 'IT');

--is NULL

--display all information where department id is null
select * from EMPLOYEES
where DEPARTMENT_ID is null;

--display all information from employees where manager id is null
select * from EMPLOYEES
where MANAGER_ID is null;

--is not NULL
select * from EMPLOYEES
where DEPARTMENT_ID is NOT null;


--display all information from employees where manager id is not null
select *from EMPLOYEES
where MANAGER_ID is not null;





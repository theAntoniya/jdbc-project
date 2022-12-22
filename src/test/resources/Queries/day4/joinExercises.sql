select * from employees;

--1.Display all first_name and  related department_name

--- Steven    Executive
--- David        IT
select * from employees;
select * from departments;

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D
                            on E.DEPARTMENT_ID = D.DEPARTMENT_ID;



-- order list based firstname
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D
                            on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME ;


--2.Display all first_name and department_name including the  department without employee
select * from employees;
select * from departments;
-- RIGHT JOIN
select FIRST_NAME,DEPARTMENT_NAME from employees e right join departments d
                                                              on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- LEFT  JOIN
select FIRST_NAME,DEPARTMENT_NAME from departments d left join employees e
                                                               on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

-- how many employee we have for each department name
select DEPARTMENT_NAME,count(*) from departments d left join employees e
                                                             on d.DEPARTMENT_ID = e.DEPARTMENT_ID
group by DEPARTMENT_NAME;



--3.Display all first_name and department_name including the  employee without department

select * from employees;
select * from departments;

--Matching portion + unique Employee --> LEFT JOIN
select FIRST_NAME, DEPARTMENT_NAME  from employees e left join departments d
on  e.DEPARTMENT_ID = d.DEPARTMENT_ID


--RIGHT JOIN
select FIRST_NAME, DEPARTMENT_NAME  from departments d right join employees e
                        on  e.DEPARTMENT_ID = d.DEPARTMENT_ID


--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments

select FIRST_NAME, DEPARTMENT_NAME  from departments d full join employees e
     on  e.DEPARTMENT_ID = d.DEPARTMENT_ID

--5.Display All cities and related country names
select * from LOCATIONS;
select * from COUNTRIES;

select City, COUNTRY_NAME from LOCATIONS l inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID

--6.Display All cities and related country names  including with countries without city
select * from LOCATIONS;
select * from COUNTRIES;

--RIGHT JOIN
select City, COUNTRY_NAME from LOCATIONS l right join COUNTRIES c
        on l.COUNTRY_ID = c.COUNTRY_ID


--LEFT JOIN
select City, COUNTRY_NAME from COUNTRIES c left join LOCATIONS l
         on l.COUNTRY_ID = c.COUNTRY_ID



--7.Display all department name and  street adresss
select * from LOCATIONS;
select * from DEPARTMENTS;

select DEPARTMENT_NAME, STREET_ADDRESS from DEPARTMENTS d inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;



--8.Display first_name,last_name and department_name,city for all employees
select * from DEPARTMENTS;
select * from EMPLOYEES;
select * from LOCATIONS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city  from EMPLOYEES e
    inner join Departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID


-- where is the Kimberly ?
select first_name,last_name,department_name,city from EMPLOYEES E
     left join  DEPARTMENTS D
      on E.DEPARTMENT_ID = D.DEPARTMENT_ID
      left join LOCATIONS L
      on D.LOCATION_ID = L.LOCATION_ID;

-- How many employees departments we have  in each city ?
select city,count(*) from EMPLOYEES E
    left join  DEPARTMENTS D
     on E.DEPARTMENT_ID = D.DEPARTMENT_ID
     left join LOCATIONS L
     on D.LOCATION_ID = L.LOCATION_ID
group by city
order by 2 ;


--9.Display first_name,last_name and department_name,city,country_name for all employees
select * from DEPARTMENTS;
select * from EMPLOYEES;
select * from LOCATIONS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, City, country_Name  from EMPLOYEES e
    inner join Departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID

-- How many employees departments we have  in country name ?
select COUNTRY_NAME,count(*) from EMPLOYEES E
    inner join  DEPARTMENTS D
    on E.DEPARTMENT_ID = D.DEPARTMENT_ID
    inner join LOCATIONS L
    on D.LOCATION_ID = L.LOCATION_ID
    inner join COUNTRIES C
    on L.COUNTRY_ID = C.COUNTRY_ID
group by COUNTRY_NAME
having count(*)>20
order by 2;
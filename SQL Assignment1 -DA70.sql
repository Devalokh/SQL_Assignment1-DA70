CREATE DATABASE employee;
use employee;
create table department(
department_id int primary key,
department_name varchar(100));
select * from department;

create table location(
location_id int primary key,
location varchar (30));
select * from location;

create table employees(
employee_id int primary key,
employee_name varchar(100),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key (department_id) references department(department_id),
foreign key (location_id) references location(location_id));
select * from employees;
desc employees;

---  MODIFY 
alter table employees modify age int check(age >=18);

--- ADD COLUM
alter table employees add column email varchar(100);

---  RENAME 
alter table employees change hire_date joining_date date;

--- table rename

rename table department to DEPARTMENTS;
rename table location TO LOCATIONS;
desc LOCATIONS;
select * from LOCATIONS;

INSERT into locations(location_id, location)
VALUES
(1,'New Yourk'),
(2,'London'),
(3,'Mumbai'),
(4,'kereala'),
(5,'qatar');
INSERT into Departments (department_id, department_name)
VALUES
(1,'finance'),
(2,'HR'),
(3,'IT');
 INSERT into employees(employee_id,employee_name,gender, age,Joining_date, designation,department_id,location_id,salary)
 values
 (1, 'john','M',28,'2014-05-15','Financial',1,1,250000),
 (2,'sara','F',25,'2016-08-11','HR',2,2,150000),
 (3,'HARI','M',35,'2011-02-05','CARGO',3,3,325000),
 (4,'LISA','F',30,'2020-01-06','DATA ANALYSIS', 3,1,526541),
 (5, 'DEV','M',25,'2011-05-25','MANAGER',2,5,598542),
 (6,'TRILOK','M',18,'2020-07-11','IT',2,2,200000);


-- ques 01 Distinct Values:
SELECT DISTINCT salary FROM employees;
-- create database company
create database company;

-- use company
use company;

-- create tables of company
create table job(id int(10), name varchar(45), min_salary  decimal(10,2), max_salary decimal(10,2), primary key(id));
create table country(id int(10), name varchar(45), primary key(id));
create table department(id int(10), name varchar(45), fk_country_id int(10), primary key(id), foreign key(fk_country_id) references country(id));
create table employee(id int(10), firstname varchar(45), lastname varchar(45), email varchar(45), salary decimal(10,2),
primary key(id), fk_department_id int(10), fk_job_id int(10), foreign key(fk_department_id) references department(id),
foreign key(fk_job_id) references job(id));

-- drop tables
drop table job;
drop table country;
drop table department;
drop table employee;

-- Display Structure
desc job;
desc country;
desc department;
desc employee;

-- Insert data into table
insert into job(id, name, min_salary, max_salary) values (1, 'President', 30000, 50000);
insert into job(id, name, min_salary, max_salary) values (2, 'Manager', 25000, 45000);
insert into job(id, name, min_salary, max_salary) values (3, 'Analyst', 20000, 40000);
insert into job(id, name, min_salary, max_salary) values (4, 'clerk', 20000, 40000);
insert into job(id, name, min_salary, max_salary) values (5, 'Salesman', 8000, 20000);

insert into country(id, name) values (1, 'India');
insert into country(id, name) values (2, 'China');
insert into country(id, name) values (3, 'Australia');
insert into country(id, name) values (4, 'Canada');
insert into country(id, name) values (5, 'UK');

insert into department(id, name, fk_country_id) values (1, 'computer', 1);
insert into department(id, name, fk_country_id) values (2, 'It', 2);
insert into department(id, name, fk_country_id) values (3, 'General', 3);
insert into department(id, name, fk_country_id) values (4, 'Finance', 4);
insert into department(id, name, fk_country_id) values (5, 'Testing', 5);

insert into employee(id, firstname, lastname, email, salary, fk_department_id, fk_job_id) 
values (1,'Abhay', 'Pansuriya', 'abhaypansuriya@gmail.com', 18000, 1, 1);
insert into employee(id, firstname, lastname, email, salary, fk_department_id, fk_job_id) 
values (2,'Himanshu', 'Bhavsar', 'himanshubhavshar@gmail.com', 22000, 2, 2);
insert into employee(id, firstname, lastname, email, salary, fk_department_id, fk_job_id) 
values (3, 'Dhruv', 'Acharya', 'dhruvacharya@gmail.com', 25000, 3, 3);
insert into employee(id, firstname, lastname, email, salary, fk_department_id, fk_job_id) 
values (4, 'Ravi', 'Dudhat', 'ravidudhat@gmail.com', 28000, 4, 4);
insert into employee(id, firstname, lastname, email, salary, fk_department_id, fk_job_id) 
values (5, 'Shivang', 'Gohel', 'shivangbgohel@gmail.com', 24000, 5, 5);

-- get name (firstname + lastname) with department name, country name, job name
SELECT 
    CONCAT(e.firstname, ' ', e.lastname) AS name,
    d.name AS department,
    c.name AS country,
    j.name AS job
FROM
    employee e
        INNER JOIN
    department d ON d.id = e.fk_department_id
        INNER JOIN
    country c ON d.fk_country_id = c.id
        INNER JOIN
    job j ON j.id = e.fk_job_id
GROUP BY e.id; 

-- Get 2nd highest salary of the employee
select * from employee group by salary order by  salary desc limit 1, 1;

-- Get all job name and department name in single query
select name from job union all select name from department; 
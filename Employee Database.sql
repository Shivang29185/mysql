-- Creating And displaying database
create database employee;

-- Displaying All database
show databases;

-- Selecting database
use employee;

-- Creating table
create table hobby(id int(10),name varchar(50), primary key(id));
create table employee(id int(10), first_name varchar(45), last_name varchar(45),age tinyint(3), mobile_number varchar(17), address varchar(70), primary key(id));
create table employee_salary(id int(10), date date, salary decimal(10,2), primary key(id), fk_employee_id int(10), foreign key(fk_employee_id) references employee(id));
create table employee_hobby(id int(10), fk_employee_id int (10), fk_hobby_id int (10), primary key(id), foreign key(fk_employee_id) references employee(id), foreign key(fk_hobby_id) references hobby(id));

-- Deleting table data & Structure
drop table hobby;
drop table employee;
drop table employee_salary;
drop table employee_hobby;

-- Displaying Table Structure
desc hobby;
desc employee;
desc employee_salary;
desc employee_hobby;

-- Inserting data into Tables.
insert into hobby (id, name) values (101, 'Singing') ;
insert into hobby (id, name) values (102, 'Dancing, Writing');
insert into hobby (id, name) values (103, 'Reading, Travelling, Gaming');
insert into hobby (id, name) values (104, 'Football, Tennis, Drama');
insert into hobby (id, name) values (105, 'Watching movies, Coding, fashion Designer,Gardning');

insert into employee(id, first_name, last_name, age, mobile_number, address) values (1, 'Dhruv', 'Acharya', 20, 7775487543, "23- chandkheda");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (2, 'Ravi', 'Dudhath', 23, 9677655433, "19 - Amerali ");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (3, 'Shivang', 'Gohel', 21, 7043305192, "185 - Arbuda Nagar");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (4, 'Amit', 'Chavda', 21, 9754376281, "65 - Kadi");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (5, 'Ashok', 'Patel', 22, 8472930716, "45 - Junagadh");

insert into employee_salary(id, salary, date, fk_employee_id) values  (1, 5000, '2001-02-20', 1);
insert into employee_salary(id, salary, date, fk_employee_id) values (2, 7000, '2001-03-20', 1);
insert into employee_salary(id, salary, date, fk_employee_id) values (3, 7000, '1998-05-21', 2);
insert into employee_salary(id, salary, date, fk_employee_id) values (4, 9000, '1998-06-21', 2);
insert into employee_salary(id, salary, date, fk_employee_id) values (5, 9000, '2000-09-07', 3);
insert into employee_salary(id, salary, date, fk_employee_id) values (6, 11000, '2000-10-07', 3);
insert into employee_salary(id, salary, date, fk_employee_id) values (7, 13000, '2000-11-07', 3);
insert into employee_salary(id, salary, date, fk_employee_id) values (8, 8000, '2002-11-30', 4);
insert into employee_salary(id, salary, date, fk_employee_id) values (9, 10000, '2002-12-30', 4);
insert into employee_salary(id, salary, date, fk_employee_id) values (10, 10000, '2000-07-13',5);
insert into employee_salary(id, salary, date, fk_employee_id) values (11, 12000, '2000-08-13', 5);
insert into employee_salary(id, salary, date, fk_employee_id) values (12, 14000, '2000-09-13', 5);
																
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (1, 1, 101);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (2, 2, 102);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (3, 3, 103);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (4, 4, 104);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (5, 5, 105);


-- Updating tables data
update hobby set name = 'Dancing, Writing books' where id = 102;
update employee set first_name = 'Abhay', last_name = 'Pansuriya' where id = 5;
update employee_salary set  salary = '9000' where id = 3;

-- Deleting specified data
delete from employee_salary where id in (4, 5) ;
delete from employee_hobby where id in  (4 , 5);
delete from hobby where id in (104, 105);
delete from employee where id in (4, 5);

-- Deleting tables all data
truncate table employee_salary;
truncate table employee_hobby;
SET FOREIGN_KEY_CHECKS = 0; 
truncate table hobby;
SET FOREIGN_KEY_CHECKS = 1; 
SET FOREIGN_KEY_CHECKS = 0; 
truncate table employee;
SET FOREIGN_KEY_CHECKS = 1; 

-- Create a separate select query to get a hobby, employee, employee_salary,employee_hobby.
select * from hobby;
select * from employee;
select * from employee_salary;
select * from employee_hobby;

-- Create a select single query to get all employee name, hobby_name in single column
select first_name from employee union select name from hobby;

-- Create a select query to get employee name, his/her employee_salary
select e.first_name, es.salary from employee e, employee_salary es where  e.id = es.fk_employee_id;

-- Create a select query to get employee name, total salary of employee, hobby name(comma-separated - you need to use subquery for hobby name).
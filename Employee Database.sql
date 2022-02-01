-- Creating And displaying database
create database employee;

-- Displaying All database
show databases;

-- Selecting database
use employee;

-- Creating table
create table hobby(id int(10), name varchar(50), primary key(id));
create table employee(id int(10), first_name varchar(45), last_name varchar(45),age tinyint(3), mobile_number varchar(17), address varchar(70), primary key(id));
create table employee_salary(id int(10), salary decimal(10,2), date date, primary key(id), fk_employee_id int(10), foreign key(fk_employee_id) references employee(id));
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
insert into hobby (id, name) values (101, 'Dancing');
insert into hobby (id, name) values (10, 'Singing');
insert into hobby (id, name) values (103, 'Travelling');
insert into hobby (id, name) values (104, 'Cricket');
insert into hobby (id, name) values (105, 'Reading');

insert into employee(id, first_name, last_name, age, mobile_number, address) values (1, 'Dhruv', 'Acharya', 20, 7775487543, "23- chandkheda");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (2, 'Ravi', 'Dudhath', 23, 9677655433, "19 - Amerali ");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (3, 'Shivang', 'Gohel', 21, 7043305192, "185 - Arbuda Nagar");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (4, 'Amit', 'Chavda', 21, 9754376281, "65 - Kadi");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (5, 'Ashok', 'Patel', 22, 8472930716, "45 - Junagadh");

insert into employee_salary(id, salary, date, fk_employee_id) values (1, 5000, '2001-02-20', 1);
insert into employee_salary(id, salary, date, fk_employee_id) values (2, 8000, '1998-05-07', 2);
insert into employee_salary(id, salary, date, fk_employee_id) values (3, 7000, '2000-09-11', 3);
insert into employee_salary(id, salary, date,fk_employee_id) values (4, 9000, '2000-12-18', 4);
insert into employee_salary(id, salary, date, fk_employee_id) values (5, 10000, '1999-05-15', 5);

insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (1, 1, 1);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (2, 2, 2);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (3, 3, 3);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (4, 4, 4);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (5, 5, 5);

-- Updating tables data
update hobby set name = 'Gaming' where id = 2;
update employee set first_name = 'Abhay', last_name = 'Pansuriya' where id = 5;
update employee_salary set  salary = '6000' where id = 3;

-- Displaying Tables data
select * from hobby;
select * from employee;
select * from employee_salary;
select * from employee_hobby;

-- Deleting specified data
delete from employee_salary where id = 4;
delete from employee_salary where id = 5;
delete from employee_hobby where id = 4;
delete from employee_hobby where id = 5;
delete from hobby where id = 4;
delete from hobby where id = 5;
delete from employee where id = 4;
delete from employee where id = 5;

-- Deleting tables all data
truncate table employee_salary;
truncate table employee_hobby;
SET FOREIGN_KEY_CHECKS = 0; 
truncate table hobby;
SET FOREIGN_KEY_CHECKS = 1; 
SET FOREIGN_KEY_CHECKS = 0; 
truncate table employee;
SET FOREIGN_KEY_CHECKS = 1; 
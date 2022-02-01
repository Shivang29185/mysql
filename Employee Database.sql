-- Creating And displaying database
create database employee;

-- Displaying All database
show databases;

-- Selecting database
use employee;

-- Creating table
create table hobby(id int(10), primary key(id));
create table employee(id int(10), first_name varchar(45), last_name varchar(45),age tinyint(3), mobile_number varchar(17), address varchar(70), primary key(id));
create table employee_salary(id int(10), date date, primary key(id), fk_employee_id int(10), foreign key(fk_employee_id) references employee(id));
create table employee_hobby(id int(10), fk_employee_id int (10), fk_hobby_id int (10), primary key(id), foreign key(fk_employee_id) references employee(id), foreign key(fk_hobby_id) references hobby(id));

-- Creating table for entering multiple data
create table multiple_hobby(hobby_id int(10), hobby varchar(45),primary key(hobby_id), fk_hobby_id int (10), foreign key(fk_hobby_id) references hobby(id));
create table multiple_salary(salary_id int(10), salary decimal(30,2),primary key(salary_id), fk_salary_id int (10), foreign key(fk_salary_id) references employee_salary(id));

-- Deleting table data & Structure
drop table hobby;
drop table employee;
drop table employee_salary;
drop table employee_hobby;
drop table multiple_hobby;
drop table multiple_salary;

-- Displaying Table Structure
desc hobby;
desc employee;
desc employee_salary;
desc employee_hobby;
desc multiple_hobby;
desc multiple_salary;

-- Inserting data into Tables.
insert into hobby (id) values (101) ;
insert into hobby (id) values (102);
insert into hobby (id) values (103);
insert into hobby (id) values (104);
insert into hobby (id) values (105);

insert into employee(id, first_name, last_name, age, mobile_number, address) values (1, 'Dhruv', 'Acharya', 20, 7775487543, "23- chandkheda");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (2, 'Ravi', 'Dudhath', 23, 9677655433, "19 - Amerali ");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (3, 'Shivang', 'Gohel', 21, 7043305192, "185 - Arbuda Nagar");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (4, 'Amit', 'Chavda', 21, 9754376281, "65 - Kadi");
insert into employee(id, first_name, last_name, age, mobile_number, address) values (5, 'Ashok', 'Patel', 22, 8472930716, "45 - Junagadh");

insert into employee_salary(id, date, fk_employee_id) values  (1, '2001-02-20', 1);
insert into employee_salary(id, date, fk_employee_id) values (2, '1998-05-07', 2);
insert into employee_salary(id, date, fk_employee_id) values (3, '2000-09-11', 3);
insert into employee_salary(id, date,fk_employee_id) values (4, '2000-12-18', 4);
insert into employee_salary(id, date, fk_employee_id) values (5, '1999-05-15', 5);
																
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (1, 1, 101);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (2, 2, 102);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (3, 3, 103);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (4, 4, 104);
insert into employee_hobby (id, fk_employee_id, fk_hobby_id) values (5, 5, 105);

SET FOREIGN_KEY_CHECKS = 0;
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (1, 'Singing', 1);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (2, 'Dancing', 2);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (3, 'Cooking', 2);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (4, 'Reading', 3);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (5, 'Writting', 3);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (6, 'Cricket', 3);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (7, 'Football', 4);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (8, 'Tennis', 4);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (9, 'Travelling', 4);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (10, 'Drawing', 4);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (11, 'Watching movies', 5);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (12, 'Boxing', 5);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (13, 'Running', 5);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (14, 'Swimming', 5);
insert into multiple_hobby (hobby_id, hobby, fk_hobby_id) values (15, 'Gaming', 5);
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
insert into multiple_salary (salary_id, salary,fk_salary_id) values(1, 5000, 1);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(2, 7000, 2);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(3, 9000, 2);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(4, 8000, 3);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(5, 10000, 3);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(6, 12000, 3);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(7, 9000, 4);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(8, 11000, 4);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(9, 13000, 4);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(10, 15000, 4);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(11, 10000, 5);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(12, 12000, 5);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(13, 15000, 5);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(14, 17000, 5);
insert into multiple_salary (salary_id, salary,fk_salary_id) values(15, 19000, 5);
SET FOREIGN_KEY_CHECKS = 1;

-- Updating tables data
update hobby set name = 'Gaming' where id = 2;
update employee set first_name = 'Abhay', last_name = 'Pansuriya' where id = 5;
update employee_salary set  salary = '6000' where id = 3;

-- Displaying Tables data
select * from hobby;
select * from employee;
select * from employee_salary;
select * from employee_hobby;
select * from multiple_hobby;
select * from multiple_salary;

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
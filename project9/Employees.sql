create database emp;
use emp;

create table employee(Id int primary key,Name varchar(20) not null,Age int not null,salary int not null);
desc employee;

drop table employee;

create table employee(Id int primary key,Name varchar(20) not null,Age int not null,Address varchar(20)not null,salary int not null);
desc employee;

insert into employee(Id,Name,Age,Address,Salary)values(1,'Raja',42,'Tumkur',40000);
insert into employee(Id,Name,Age,Address,Salary)values(2,'Naveen',39,'Bidar',35000);
insert into employee(Id,Name,Age,Address,Salary)values(3,'Srinivas',45,'Mangalore',45000);
insert into employee(Id,Name,Age,Address,Salary)values(4,'Sachin',26,'Udupi',47000);
insert into employee(Id,Name,Age,Address,Salary)values(5,'Rajeshh',40,'Hasan',20000);
insert into employee(Id,Name,Age,Address,Salary)values(6,'Sagar',60,'Bangalore',43000);
insert into employee(Id,Name,Age,Address,Salary)values(7,'Samiksha',25,'Mysore',33000);

select * from employee;

#Fetch Id,Name and Salary field from the employee table where salary is greater than 35000
select Id,Name,Salary from employee where Salary>35000;

#Fetch Id,Name and Salary field from the employee table where age is less than 35
select Id,Name,Salary from employee where Age<35;

#Fetch Id,Name,Salary fields Naveen
Select Id,Name,Salary from employee where Name='Naveen';

update employee set Address='Mangalore' where Id=3;

select * from employee;

delete from employee where id=1;

select * from employee;

select Id,Name,Salary from employee order by Salary;

select Name,sum(salary) from employee group by Name;

select count(*) from employee;

select max(salary) from employee;

select min(salary) from employee;

select avg(salary) from employee;
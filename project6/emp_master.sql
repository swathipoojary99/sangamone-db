create database employee_master;
use employee_master;

create table emp_mas(emp_id varchar(20)primary key,emp_name varchar(20)not null,emp_address varchar(20)not null,phone int not null,email_id  varchar(20)not null,doj date not null,dor date not null,check(doj<dor));
desc emp_mas;

insert into emp_mas(emp_id,emp_name,emp_address,phone,email_id,doj,dor)values('101','Rachana','Udupi',4567844,'rachana@gmail.com','2010-02-12','2015-12-10');
insert into emp_mas(emp_id,emp_name,emp_address,phone,email_id,doj,dor)values('102','Bharath','Udupi',8756789,'bharath@gmail.com','1998-01-10','2001-06-10');
insert into emp_mas(emp_id,emp_name,emp_address,phone,email_id,doj,dor)values('103','Suresh','Manglore',4567836,'suresh@gmail.com','2012-01-12','2018-12-10');
insert into emp_mas(emp_id,emp_name,emp_address,phone,email_id,doj,dor)values('104','Rohan','Mysore',214102,'rohan@gmail.com','2012-01-12','2015-12-12');
insert into emp_mas(emp_id,emp_name,emp_address,phone,email_id,doj,dor)values('105','Raghu','Kundapur',773153,'raghu@gmail.com','2016-01-12','2022-01-18');
insert into emp_mas(emp_id,emp_name,emp_address,phone,email_id,doj,dor)values('106','Sakshi','Brahmavar',4567858,'sakshi@gmail.com','2016-03-04','2018-12-10');

select * from emp_mas;

create table attendences(emp_id varchar(20)references emp_mas(emp_id)on delete cascade,wom int,mhrs int,thrs int,whrs int,trhrs int,fhrs int,shrs int,suhrs int,check(wom<=5));
desc attendences;

insert into attendences(emp_id,wom,mhrs,thrs,whrs,trhrs,fhrs,shrs,suhrs)values('101',5,8,4,5,2,1,6,0);
insert into attendences(emp_id,wom,mhrs,thrs,whrs,trhrs,fhrs,shrs,suhrs)values('102',0,0,0,0,0,0,0,0);
insert into attendences(emp_id,wom,mhrs,thrs,whrs,trhrs,fhrs,shrs,suhrs)values('103',4,2,2,3,1,8,2,0);
insert into attendences(emp_id,wom,mhrs,thrs,whrs,trhrs,fhrs,shrs,suhrs)values('104',3,1,8,6,5,4,5,2);
insert into attendences(emp_id,wom,mhrs,thrs,whrs,trhrs,fhrs,shrs,suhrs)values('105',5,1,2,3,4,5,6,7);
insert into attendences(emp_id,wom,mhrs,thrs,whrs,trhrs,fhrs,shrs,suhrs)values('106',1,4,2,1,1,4,2,0);

select * from attendences;

#display emp_name and email_id of all employees who are working on sunday
select emp_name,emp_id from emp_mas where emp_id in(select emp_id from attendences where suhrs>0);

#display the total hours worked by the employee Rohan
select sum(mhrs+thrs+whrs+trhrs+fhrs+shrs+suhrs)"total hours" from attendences where emp_id in(select emp_id from emp_mas where emp_name='Rohan');

#display the names of the employees who never attended the duty so far
select emp_name from emp_mas where emp_id in(select emp_id from attendences where mhrs=0 and thrs=0 and whrs=0 and trhrs=0 and fhrs=0 and shrs=0 and suhrs=0);

#display the names of the employee who have total no. of hours more than 20 hrs a week
select emp_name from emp_mas where emp_id in(select emp_id from attendences where(mhrs+thrs+whrs+trhrs+fhrs+shrs+suhrs)>20);
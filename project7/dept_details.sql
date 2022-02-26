create database department_details;
use department_details;

create table dd(dept_no varchar(7)primary key,dept_name varchar(10)not null,tot_emp int not null,cph int not null,bph int not null);
desc dd;

insert into dd(dept_no,dept_name,tot_emp,cph,bph)values('d0001','accounts',5,750,10);
insert into dd(dept_no,dept_name,tot_emp,cph,bph)values('d0002','sales',10,2000,10);
insert into dd(dept_no,dept_name,tot_emp,cph,bph)values('d0003','service',5,500,10);
insert into dd(dept_no,dept_name,tot_emp,cph,bph)values('d0004','purchase',4,600,10);

select * from dd;

create table employee_details(emp_name varchar(20)not null,dept_no varchar(20)references dd(dept_no),tot_hrs int not null);
desc employee_details;

insert into employee_details(emp_name,dept_no,tot_hrs)values('Raman','d0002',8);
insert into employee_details(emp_name,dept_no,tot_hrs)values('Deekshith','d0001',6);
insert into employee_details(emp_name,dept_no,tot_hrs)values('Naveen','d0003',4);
insert into employee_details(emp_name,dept_no,tot_hrs)values('Arun','d0002',7);
insert into employee_details(emp_name,dept_no,tot_hrs)values('Shyam','d0004',5);

select * from employee_details;

#display emp_name,department no and department name of all employees
select e.emp_name,d.dept_no,d.dept_name from dd d,employee_details e where e.dept_no=d.dept_no;

#display the department name to which Mr.Naveen belongs to
select dept_name from dd where dept_no in(select dept_no from employee_details where emp_name='Naveen');

#display the bonus got by Mr.Raman
select(e.tot_hrs*d.cph*d.bph)/100 "bonus" from employee_details e,dd d where d.dept_no=e.dept_no and e.emp_name='Raman';

#display the total number of hours taken by Accounts Department
select tot_hrs from employee_details where dept_no in(select dept_no from dd where dept_name='accounts');

SELECT * FROM employee.emp;
SELECT emp_no, name, designation from employee.emp;
select * from employee.emp where gender='f';
select distinct department from employee.emp;
select emp_no,name,Designation from employee.emp where salary>15000;
select name from employee.emp where salary in(select max(salary)from employee.emp);
select Department,count(*)from employee.emp where department in('Marketing','Sales') group by department;
select department,avg(salary),max(salary),min(salary) from employee.emp group by department;
select department from employee.emp group by department having count(*)>2;
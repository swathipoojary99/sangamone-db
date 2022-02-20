SELECT * FROM employee.emp;

#display empno,name and designation of all employees.
select emp_no,name,designation from employee.emp;

#Display the details of all female employees.
select * from employee.emp where gender='f';

#list the different department.
select distinct department from employee.emp;

#list emp_no,name and designation of all employees where salary is more than 15000.
select emp_no,name,designation from employee.emp where salary>15000;

#Display the name of the employee who gets the maximum basic pay.
select name from employee.emp where salary in(select max(salary)from employee.emp);

#Display the number of employees in marketing and sales department.
select department,count(*)from employee.emp where department in('Marketing','Sales')group by department;

#Display the avg,max,min salary of each depatment.
select department,avg(salary),max(salary),min(salary)from employee.emp group by department;

#list the department which have more than 2 employees.
select department from employee.emp group by department having count(*)>2;




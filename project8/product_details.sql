create database product_details;
use product_details;

create table pd(p_no varchar(20)primary key,p_name varchar(20)not null,qa int not null, price int not null,profit int not null);
desc pd;

insert into pd(p_no,p_name,qa,price,profit)values('p0001','monitor',10,4500,20);
insert into pd(p_no,p_name,qa,price,profit)values('p0002','pen drive',50,250,5);
insert into pd(p_no,p_name,qa,price,profit)values('p0003','cd drive',5,950,8);
insert into pd(p_no,p_name,qa,price,profit)values('p0004','keyboard',8,250,10);

select * from pd;

create table purchased_details(c_name varchar(10)not null,p_no varchar(10)references pd(p_no),qs int not null);

desc purchased_details;

insert into purchased_details(c_name,p_no,qs)values('Raman','p0003',2);
insert into purchased_details(c_name,p_no,qs)values('Laxman','p0002',5);
insert into purchased_details(c_name,p_no,qs)values('Bharath','p0002',10);
insert into purchased_details(c_name,p_no,qs)values('Manish','p0001',3);
insert into purchased_details(c_name,p_no,qs)values('Amith','p0004',2);

select * from purchased_details;

#display total amount spend by Mr.Laxman for purchasing any product
select(price*qs)"total amount" from pd p,purchased_details q where p.p_no=q.p_no and c_name='Laxman';

#display the names pof product for which either Qty available is less than 10 or QtySold is less than 4
select p_name from pd p,purchased_details q where p.p_no=q.p_no and(qa<10 or qs<4);

#display the name of product and quantity taken by Mr.Bharath
select p_name,qs from pd p,purchased_details q where p.p_no=q.p_no and c_name='Bharath';

#how much profit does the shopkeeper gets on Mr.Manish's purchase
select(qs*price*profit/100)"profit" from pd p,purchased_details q where p.p_no=q.p_no and c_name='Manish';

#how many 'Pen drives have been sold
select sum(qs) from pd p,purchased_details q where p.p_no=q.p_no and p_name='pen drive'; 




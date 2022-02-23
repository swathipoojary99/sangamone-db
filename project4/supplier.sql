create database supplier;
use supplier;

create table suppliers(s_no varchar(20)primary key, s_name varchar(20)not null,s_address varchar(20)not null,s_city varchar(20)not null);
desc suppliers;

create table computer_items(i_no varchar(45)primary key,s_no varchar(20)references suppliers(s_no),i_name varchar(20)not null, i_quantity varchar(20)not null);
desc computer_items;

insert into suppliers(s_no,s_name,s_address,s_city)values('4500','Ramesh','Mangalore','Mangalore');
insert into suppliers(s_no,s_name,s_address,s_city)values('4501','Cats','Mysore','Mysore');
insert into suppliers(s_no,s_name,s_address,s_city)values('4502','Electrotech','Udupi','Udupi');
insert into suppliers(s_no,s_name,s_address,s_city)values('4503','Microtech','Bangalore','Bangalore');
insert into suppliers(s_no,s_name,s_address,s_city)values('4504','Microsoft','Udupi','Udupi');
insert into suppliers(s_no,s_name,s_address,s_city)values('4505','Prime','Mysore','Mysore');

select * from suppliers;

insert into computer_items(i_no,s_no,i_name,i_quantity)values('1001','4501','Keyboard','10');
insert into computer_items(i_no,s_no,i_name,i_quantity)values('1002','4502','Mouse','25');
insert into computer_items(i_no,s_no,i_name,i_quantity)values('1003','4503','CPU','50');
insert into computer_items(i_no,s_no,i_name,i_quantity)values('1004','4504','Monitor','15');
insert into computer_items(i_no,s_no,i_name,i_quantity)values('1005','4505','Disc','50');
insert into computer_items(i_no,s_no,i_name,i_quantity)values('1006','4500','Printer','60');

select * from computer_items;

#list item and supplier details
select s.s_no,s.s_name,c.i_no,c.i_name from suppliers s,computer_items c where s.s_no=c.s_no;

#list the names of the suppliers who are supplying keyboard
select s_name from suppliers where s_no in(select s_no from computer_items where i_name='Keyboard');

#display the items supplied by 'Microtech'
select i_name from computer_items where s_no in(select s_no from suppliers where s_name='Microtech');

#list the items supplied by the suppliers 'Cats' and 'Electrotech'
select i_name from computer_items where s_no in(select s_no from suppliers where(s_name='Cats' or s_name='Electrotech'));

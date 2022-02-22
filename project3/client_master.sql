create database client;
use client;

create table client_master(client_no varchar(45)primary key, name varchar(45), address1 varchar(45), address2 varchar(45), city varchar(45), pincode int, state varchar(45), balance_due int);
desc client_master;

insert into client_master(client_no,name,address1,address2,city,pincode,state,balance_due)values('c1001','Rohan','Mandarthi','Brahmavar','Udupi',576213,'Karnataka',8000);
insert into client_master(client_no,name,address1,address2,city,pincode,state,balance_due)values('c1002','Bharath','Barkur','Brahmavar','Udupi',576213,'Karnataka',9000);
insert into client_master(client_no,name,address1,address2,city,pincode,state,balance_due)values('c1003','Janavi','Nilavara','Brahmavar','Udupi',576213,'Karnataka',7000);
insert into client_master(client_no,name,address1,address2,city,pincode,state,balance_due)values('c1004','Chaitra','Brahmavar','Brahmavar','Udupi',576213,'Karnataka',6000);
insert into client_master(client_no,name,address1,address2,city,pincode,state,balance_due)values('c1005','Vinyas','Udupi','Udupi','Udupi',576101,'Karnataka',8000);
insert into client_master(client_no,name,address1,address2,city,pincode,state,balance_due)values('c1006','pallavi','kolambe','Brahmavar','Udupi',576213,'Karnataka',6000);

select * from client_master;

#From the table client_master create a new table client1 that contains only client_no and name with all records of client_master.
create table client1(client_no varchar(45),name varchar(45))as select client_no,name from client_master;

#From the table client_master create a new table client2 that has the same structure as client_master but with no records.
create table client2 as select * from client_master where 1=2;

desc client2;
select * from client2;

#Insert records into table client3 from the client_master table where the client_no is 'c1001'.
create table client3 as select * from client_master where client_no='c1001';

select * from client3;

#modify the contents of the field name to 'vijay kadam' and the contents of the field address to 'sct jay kadam' for the record with client_no 'c1002'
update client_master set name='vijay kadam',address1='sct jay apartment' where client_no='c1002';

select * from client_master;


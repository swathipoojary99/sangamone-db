create schema bank;
use bank;
create table deposit(name varchar(20) , gender char(2), age int, amount bigint);
insert into deposit values('Amar','M',42,8000);
insert into deposit values('Babu','M',36,4000);
insert into deposit values('Charles','M',70,5000);
insert into deposit values('David','M',65,100000);
insert into deposit values('Ekalavya','M',24,800);
insert into deposit values('Fabin','M',58,2000);
insert into deposit values('Govind','M',40,25000);
insert into deposit values('Harnish','M',30,75000);
insert into deposit values('Irene','F',28,3900);
insert into deposit values('James','M',75,8700);
insert into deposit values('Kamaraj','M',45,9000);
insert into deposit values('Latha','F',30,200000);
insert into deposit values('Manish','M',20,55000);
insert into deposit values('Nagesh','M',22,2000);
insert into deposit values('Omar','M',23,1000);
insert into deposit values('Padma','F',24,6000);
insert into deposit values('Queenie','F',25,3000);
insert into deposit values('Roopa','F',26,2000);
insert into deposit values('Sundar','M',27,1000);
insert into deposit values('Tara','F',28,10000);
insert into deposit values('Ullas','M',29,35000);
insert into deposit values('Vasu','M',30,4000);
insert into deposit values('Wendy','F',31,4200);
insert into deposit values('Xero','M',32,900);
insert into deposit values('Yasmin','F',33,5000);
insert into deposit values('Zafar','M',34,6000);

/*senior citizens with 8.5% printing st for quaterly */
 select name,amount,(amount*0.085)/4 as intrestgained ,sum(amount + (amount*0.085/4)) as totalamount from deposit where age>=60;
 
 /* ladies with8.25% */
 
select name,amount,(amount*0.0825)/4 as intrestgained ,sum(amount + (amount*0.825/4)) as totalamount from deposit where gender='F';

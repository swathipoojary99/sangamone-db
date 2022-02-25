create database book;
use book;

create table book2(isbm varchar(20)primary key, title varchar(20), publisher varchar(25), category varchar(20), year int, price int);
desc book2;

insert into book2(isbm,title,publisher,category,year,price)values('e7rtu88','OS','Microsoft Press','Technical',2011,4005);
insert into book2(isbm,title,publisher,category,year,price)values('er34w44','God of War','Random house','Fantasy',2012,500);
insert into book2(isbm,title,publisher,category,year,price)values('ers6677w','Lord of Rings','Art House','Fantasy',2000,7000);
insert into book2(isbm,title,publisher,category,year,price)values('st24e5','sql','dtb','Education',2010,200);
insert into book2(isbm,title,publisher,category,year,price)values('g34s7','Helen Keller','nwp','Biography',2001,900);
insert into book2(isbm,title,publisher,category,year,price)values('t35c5','Lost','slp','Novel',2011,3000);


select * from book2;

#list the details of the books whose publisher's name start with 'm'
select * from book2 where publisher like 'm%';

#list the details of publishers having 'a' as the second character in their names
select * from book2 where publisher like '_a%';

#find the book published in 2010,2011,2012
select * from book2  where year in(2010,2011,2012);

#display the book_id,title,publisher of all books in the descending order of year
select isbm,title,publisher from book2 order by year desc;

#display the details of all books other than Microsoft press publishers
select * from book2 where publisher not in('Microsoft Press');

#display title,price of all books with price more than 2000 and less than 3000
select title,price from book2 where price between 2000 and 3000;
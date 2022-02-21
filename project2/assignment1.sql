create database Samay;
use Samay;
create table Countries(country_id bigint auto_increment primary key , country_name varchar(50), country_code varchar(50), currency_code varchar(50), continent_name varchar(50));
desc Countries;

create table TimeZone(timezone_id bigint auto_increment primary key, countr_id bigint ,foreign key(countr_id) references Countries(country_id),timezone_offset float);			
desc TimeZone;

create table customer(cust_id bigint auto_increment primary key, cust_name Varchar(50), products_purchased varchar(100));
desc customer;

create table Events(event_id bigint auto_increment primary key, customer_id bigint ,foreign key(customer_id) references customer(cust_id),event_type varchar(50)); 
desc Events;

create table Employee(emp_id bigint auto_increment primary key, branch_name varchar(50), location varchar(50));
desc Employee;

insert into Countries(country_name,country_code,currency_code,continent_name)values("India",356,"INR","Asia");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Canada",124,"CAD","Africa");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Afghanistan",004,"AFN","Asia");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Albania",008,"ALL","Europe");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Brazil",076,"BRL","SouthAmerica");

select *from Countries;

insert into TimeZone(timezone_offset)values(+05.30);
insert into TimeZone(timezone_offset)values(+05.30);
insert into TimeZone(timezone_offset)values(+04.30);
insert into TimeZone(timezone_offset)values(+01.00);
insert into TimeZone(timezone_offset)values(-05.00);
insert into TimeZone(timezone_offset)values(-04.00);

select * from TimeZone;

delete from Timezone where timezone_id=2 ;
delete from Timezone where timezone_id=3;
select * from TimeZone;

insert into customer(cust_name,products_purchased)values('Walmart','WaterPurifier');
insert into customer(cust_name,products_purchased)values('Amazon','book');
insert into customer(cust_name,products_purchased)values('Apple','IPad');
insert into customer(cust_name,products_purchased)values('UnitedHealthGroup','ParentalInsurance');
insert into customer(cust_name,products_purchased)values('CVSHealth','Covaccine');

Select *from customer;

insert into Events(event_type)values('ChristmasParty');
insert into Events(event_type)values('NewYearParty');
insert into Events(event_type)values('BusinessMeeting');
insert into Events(event_type)values('OffsitePlanningMeetings');
insert into Events(event_type)values('BirthdayParty');

Select *from Events;

insert into Employee(branch_name,location)values('FirstData','Chicago');
insert into Employee(branch_name,location)values('Magneto','Pune');
insert into Employee(branch_name,location)values('SLK','Germany');
insert into Employee(branch_name,location)values('Sankey','Canada');
insert into Employee(branch_name,location)values('TCS','Singapore');

select * from Employee;






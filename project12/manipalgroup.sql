create database manipalgroup;
use manipalgroup;

create table Institution(instid varchar(20) primary key,instname varchar(20)) ;
desc Institution;

insert into Institution values('H1','HealthScience');
insert into Institution values('S1','Scienceandtechnology');
insert into Institution values('L1','LibraryScience');
insert into Institution values('M1','MIT');
insert into Institution values('K1','KMC');
insert into Institution values('P1','Philosophy');
insert into Institution values('A1','Architecture');

select * from Institution;

/*courses offered in Health science institute*/
Create table courses(courseid varchar(20)primary key, instutid varchar(20),foreign key(instutid) references Institution(instid),coursename varchar(50), noofyears bigint);

Insert into courses values('c101','H1','Alliedhealth',4);
Insert into courses values('c102','H1','Dentistry',5);
Insert into courses values('c103','H1','Nursing',3);
Insert into courses values('c104','H1','Bpharm',4);
Insert into courses values('c105','H1','Mpharm',2);

select * from courses;

/*coursesoffered in Scienceandtechnology*/
Insert into courses values('S101','S1','Engineering',4);
Insert into courses values('S102','S1','NaturalScience',5);
Insert into courses values('S103','S1','Humanities',2);

/* courese offered in lib science*/
Insert into courses values('L101','L1','Libraryscience',3);
Insert into courses values('L102','L1','Europeanstudies',3);
Insert into courses values('L103','L1','Artsandphilosophy',3);

Insert into courses values('M101','M1','MCA',2);
Insert into courses values('M102','M1','BTech',3);
Insert into courses values('M103','M1','MTech',2);

Insert into courses values('K101','K1','MD',2);
Insert into courses values('K102','K1','Surgery',2);
Insert into courses values('K103','K1','MDdentistry',2);

Insert into courses values('P101','P1','MBA',2);
Insert into courses values('P102','P1','MArch',2);
Insert into courses values('P103','P1','BArch',2);

Insert into courses values('A101','A1','Archrtech',2);
Insert into courses values('A102','A1','Landscape',4);
Insert into courses values('A103','A1','design',2);



select * from Institution;
select * from courses;

Create table students(rollno varchar(20) primary key,firstname varchar(30),lastname varchar(30), gender varchar(1), corsid varchar(20), foreign key(corsid) references courses(courseid)ON DELETE SET NULL, yearofadmission bigint, collegeid varchar(20), universityid bigint);

insert into students values('H201812','Adya' ,'Rao', 'F','c101',2018,'HC123',1098);
insert into students values('S201712','Bhavya' ,'Gowda', 'F','c104',2017,'HC123',1098);
insert into students values('H201714','Bhavith' ,'Rao', 'M','L102',2017,'HL234',1098);
insert into students values('H201915','Poornima' ,'Bhagat', 'F','M103',2019,'HM256',1098);
insert into students values('H201256','Vishnu' ,'Rao', 'M','A102',2012,'HA768',1098);
insert into students values('S201818','Jhanavi' ,'Prabhu', 'F','c104',2018,'HC128',1098);
insert into students values('S201819','Vidhya' ,'Gowda', 'F','c104',2018,'HC129',1098);

select * from students;

select * from students where lastname="Rao" and Gender='M';

select * from students where Gender='F' and corsid="c104" and yearofadmission='2018';


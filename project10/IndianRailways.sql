Create schema IndianRailways;
use IndianRailways;
Create table stations(station_id int auto_increment primary key,stationname varchar(20));
Insert into stations values(1,'churchgate'),(2,'NewDelhi'),(3,'Surat'),(4,'Baroda'),(5,'Kota'),(6,'CST'),(7,'Manmad'),(8,'Nasik'),(9,'Bhopal'),(10,'Mumbai');
 
 
 
 Create table route(route_id int auto_increment primary key, startstation varchar(20), stopstation varchar(20),via varchar(20));
 
 Create table trains(train_id int primary key,train_name varchar(20),rout_id int,foreign key(rout_id) references route(route_id)ON DELETE SET NULL); 
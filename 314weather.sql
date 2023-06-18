use 314weather;
create table user(
user_id int,
user_name varchar(255),
pass varchar(255),
email varchar(255),
primary key (user_id)
);

create table data_request(
user_id int,
station_id int,
date_requested varchar(50),
request varchar (50)
);

create table weatherStation(
station_id int,
location varchar (300),
energySource varchar(300),
primary key (station_id) 
);

create table componentSensor(
component_id int,
component_name varchar(200),
reading double(7, 2),
date_read varchar(50),
last_maitenance varchar(50),
wind_direction varchar(100),
status_of_item varchar(50),
primary key (component_id) 
);

create table makeReading(
station_id int,
component_id  int,
reading double(7, 2),
date_read varchar(50),
location varchar (300),
component_name varchar(200),
wind_direction varchar(100),
foreign key (station_id) references weatherStation (station_id) ON DELETE CASCADE,
foreign key (component_id) references componentSensor (component_id) ON DELETE CASCADE
);

insert into weatherStation values(1, 'Dubai', 'Coal based electricity');
insert into weatherStation values(2, 'Sharjah', 'Coal based electricity');

-- weather in Dubai
insert into componentSensor values(1, 'Thermometer', 36.00, '09/06/2023', '09/05/2023', null, 'Active');
insert into componentSensor values(2, 'barometer', 29.43, '09/06/2023', '09/05/2023', null, 'Active');
insert into componentSensor values(3, 'UV meter', 12.00, '09/06/2023', '09/05/2023', null,'Active');
insert into componentSensor values(4, 'rain gauge', 0.00, '09/06/2023', '09/05/2023', null,'Active');
insert into componentSensor values(5, 'anemometer', 3.00, '09/06/2023', '09/05/2023', 'nort-west','Active');

-- Weather in sharjah
insert into componentSensor values(6, 'Thermometer', 35.00, '09/06/2023', '09/05/2023', null, 'Active');
insert into componentSensor values(7, 'barometer', 29.62, '09/06/2023', '09/05/2023', null, 'Active');
insert into componentSensor values(8, 'UV meter', 12, '09/06/2023', '09/05/2023', null, 'Active');
insert into componentSensor values(9, 'rain gauge', 0.00, '09/06/2023', '09/05/2023', null, 'Active');
insert into componentSensor values(10, 'anemometer', 2.00, '09/06/2023', '09/05/2023', 'north-west', 'Active');

insert into makeReading values (1, 1, 36.00, '09/06/2023', 'Dubai', 'Thermometer', null);
insert into makeReading values (1, 2, 29.43, '09/06/2023', 'Dubai', 'barometer', null);
insert into makeReading values (1, 3, 12.00, '09/06/2023', 'Dubai', 'UV meter', null);
insert into makeReading values (1, 4, 0.00, '09/06/2023', 'Dubai', 'rain gauge', null);
insert into makeReading values (1, 5, 3.00, '09/06/2023', 'Dubai', 'anemometer', 'north-west');

insert into makeReading values (2, 1, 35.00, '09/06/2023', 'Sharjah', 'Thermometer', null);
insert into makeReading values (2, 2, 29.62, '09/06/2023', 'Sharjah', 'barometer', null);
insert into makeReading values (2, 3, 12.00, '09/06/2023', 'Sharjah', 'UV meter', null);
insert into makeReading values (2, 4, 0.00, '09/06/2023', 'Sharjah', 'rain gauge', null);
insert into makeReading values (2, 5, 2.00, '09/06/2023', 'Sharjah', 'anemometer', 'north-west');

select * from weatherstation;
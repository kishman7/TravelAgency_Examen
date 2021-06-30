use TravelAgency;

--таблиц€ транспорту
create table Transport (
	id INT primary key IDENTITY(1,1),
	NameTransport NVARCHAR(50),
);

drop table Transport

SET IDENTITY_INSERT Transport ON;
insert into Transport (id, NameTransport) values (1, 'Avia');
insert into Transport (id, NameTransport) values (2, 'Avto');
insert into Transport (id, NameTransport) values (3, 'Train');
SET IDENTITY_INSERT Transport OFF;

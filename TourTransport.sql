use TravelAgency;

create table TourTransport (
	id INT primary key IDENTITY(1,1),
	TourID INT FOREIGN KEY REFERENCES Tour(ID),
	TransportID INT FOREIGN KEY REFERENCES Transport(id),
);

drop table TourTransport;
SET IDENTITY_INSERT TourTransport ON;

insert into TourTransport (id, TourID, TransportID) values (1, 1, 3);
insert into TourTransport (id, TourID, TransportID) values (2, 2, 1);
insert into TourTransport (id, TourID, TransportID) values (3, 3, 3);
insert into TourTransport (id, TourID, TransportID) values (4, 4, 1);
insert into TourTransport (id, TourID, TransportID) values (5, 5, 3);
insert into TourTransport (id, TourID, TransportID) values (6, 6, 1);
insert into TourTransport (id, TourID, TransportID) values (7, 7, 3);
insert into TourTransport (id, TourID, TransportID) values (8, 8, 2);
insert into TourTransport (id, TourID, TransportID) values (9, 9, 2);
insert into TourTransport (id, TourID, TransportID) values (10, 10, 3);
insert into TourTransport (id, TourID, TransportID) values (11, 11, 2);
insert into TourTransport (id, TourID, TransportID) values (12, 12, 3);
insert into TourTransport (id, TourID, TransportID) values (13, 13, 1);
insert into TourTransport (id, TourID, TransportID) values (14, 14, 2);
insert into TourTransport (id, TourID, TransportID) values (15, 15, 3);
insert into TourTransport (id, TourID, TransportID) values (16, 16, 2);
insert into TourTransport (id, TourID, TransportID) values (17, 17, 3);
insert into TourTransport (id, TourID, TransportID) values (18, 18, 1);
insert into TourTransport (id, TourID, TransportID) values (19, 19, 1);
insert into TourTransport (id, TourID, TransportID) values (20, 20, 2);
insert into TourTransport (id, TourID, TransportID) values (21, 21, 1);
insert into TourTransport (id, TourID, TransportID) values (22, 22, 2);
insert into TourTransport (id, TourID, TransportID) values (23, 23, 3);
insert into TourTransport (id, TourID, TransportID) values (24, 24, 2);
insert into TourTransport (id, TourID, TransportID) values (25, 25, 2);
insert into TourTransport (id, TourID, TransportID) values (26, 26, 2);
insert into TourTransport (id, TourID, TransportID) values (27, 27, 3);
insert into TourTransport (id, TourID, TransportID) values (28, 28, 3);
insert into TourTransport (id, TourID, TransportID) values (29, 29, 2);
insert into TourTransport (id, TourID, TransportID) values (30, 30, 1);

SET IDENTITY_INSERT TourTransport OFF;

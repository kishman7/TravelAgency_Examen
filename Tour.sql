use TravelAgency;

create table Tour (
	id INT primary key IDENTITY(1,1),
	NameTour NVARCHAR(50),
	DateStartTour DATE,
	DateFinishTour DATE,
	Country NVARCHAR(50),
	City NVARCHAR(50),
	EmployeeID INT FOREIGN KEY REFERENCES Employees(ID),
	PriceTour money,
);

SET IDENTITY_INSERT Tour ON;

insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (1, 'Sonair', '2020-04-15', '2020-04-30', 'Ukraine', 'Znomenka', 16, '$2453.88');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (2, 'Biodex', '2022-05-27', '2022-06-15', 'France', 'Créteil', 11, '$2010.87');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (3, 'It', '2020-03-12', '2020-03-20', 'Croatia', 'Šenkovec', 5, '$796.03');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (4, 'Latlux', '2022-06-13', '2022-06-21', 'Greece', 'Afántou', 17, '$689.38');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (5, 'Cookley', '2020-08-16', '2020-08-30', 'France', 'Beauvais', 7, '$1838.78');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (6, 'Quo Lux', '2022-01-27', '2022-02-12', 'Greece', 'Rodópoli', 4, '$1277.02');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (7, 'Bitwolf', '2020-06-23', '2020-07-15', 'Bulgaria', 'Kula', 4, '$1522.73');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (8, 'Otcom', '2020-03-05', '2020-03-15', 'France', 'Paris', 17, '$2895.00');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (9, 'Sonsing', '2021-10-04', '2021-10-14', 'Croatia', 'Rude', 20, '$659.74');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (10, 'Veribet', '2022-04-02', '2022-04-12', 'France', 'Orléans', 6, '$1806.82');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (11, 'Hatity', '2021-01-29', '2021-02-12', 'Ukraine', 'Melioratyvne', 9, '$2927.84');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (12, 'Cookley', '2020-01-25', '2020-02-06', 'France', 'Le Raincy', 19, '$923.63');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (13, 'Job', '2020-08-10', '2020-08-21', 'Germany', 'Berlin', 5, '$2278.31');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (14, 'Rank', '2021-12-03', '2021-12-23', 'Ukraine', 'Zhvanets', 6, '$795.09');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (15, 'Bitchip', '2022-06-09', '2022-06-24', 'Spain', 'Tarragona', 19, '$695.77');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (16, 'Vagram', '2022-05-30', '2022-06-10', 'Ukraine', 'Stizhkivs’ke', 19, '$689.57');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (17, 'Fix San', '2020-05-31', '2020-06-13', 'France', 'Saint-Rémy-de-Provence', 16, '$1621.13');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (18, 'Zontrax', '2020-05-29', '2020-06-22', 'France', 'Vitry-le-François', 18, '$881.92');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (19, 'Y-Solowarm', '2021-07-26', '2022-08-10', 'Greece', 'Gýtheio', 5, '$570.33');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (20, 'Zoolab', '2021-12-01', '2021-12-11', 'Greece', 'Pylaía', 12, '$727.97');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (21, 'Tin', '2020-06-17', '2020-07-06', 'France', 'Verdun', 5, '$2505.22');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (22, 'Sonair', '2022-08-31', '2022-09-11', 'France', 'Nica', 16, '$1018.24');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (23, 'Alphazap', '2020-07-13', '2020-07-23', 'Bulgaria', 'Dimitrovgrad', 8, '$1081.87');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (24, 'Konklab', '2022-01-12', '2022-01-22', 'Greece', 'Aphiny', 7, '$2079.88');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (25, 'Solarbreeze', '2022-06-04', '2022-06-14', 'Greece', 'Artémida', 18, '$814.45');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (26, 'Overhold', '2022-10-07', '2022-10-17', 'Italy', 'Rome', 12, '$1904.30');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (27, 'Toughjoyfax', '2020-09-25', '2020-10-05', 'Croatia', 'Bošnjaci', 16, '$698.74');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (28, 'Temp', '2020-11-03', '2020-11-13', 'France', 'Lagnieu', 8, '$1820.22');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (29, 'Konklux', '2021-01-11', '2021-01-21', 'Greece', 'Kými', 18, '$2419.24');
insert into Tour (id, NameTour, DateStartTour, DateFinishTour, Country, City, EmployeeID, PriceTour) values (30, 'Asoka', '2020-04-14', '2020-04-24', 'France', 'Nantes', 15, '$2125.77');

SET IDENTITY_INSERT Tour OFF

alter table Tour
add MaxClients int;

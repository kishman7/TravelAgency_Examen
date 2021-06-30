create database TravelAgency;

use TravelAgency;

--таблиц€ прац≥вник≥в
CREATE TABLE [Employees] (
    [ID] INTEGER NOT NULL IDENTITY(1, 1),
    [FirstName] VARCHAR(255) NULL,
    [LastName] VARCHAR(255) NULL,
    [Position] VARCHAR(MAX) NULL,
    [Phone] VARCHAR(100) NULL,
    [Email] VARCHAR(255) NULL,
    [Date_Employment] VARCHAR(255),
    PRIMARY KEY ([ID])
);
GO
drop table Employees;

INSERT INTO Employees([FirstName],[LastName],[Position],[Phone],[Email],[Date_Employment]) VALUES('Trevor','Jenette','CEO','1-591-383-7623','vitae.posuere@nibhlacinia.co.uk','02-06-2017'),('Upton','Mikayla','Secretary','1-889-493-2502','faucibus.leo.in@mattisInteger.co.uk','13-06-2020'),('Silas','Kirsten','CFO','1-596-279-7683','ultrices.posuere.cubilia@idmollis.org','03-03-2017'),('Andrew','Shelby','Manager','1-897-797-8085','lorem@mollisDuissit.co.uk','28-01-2022'),('Walter','Mira','Manager','1-866-764-7663','Aliquam.rutrum.lorem@sedsem.com','18-07-2018'),('Davis','Robin','Manager','1-655-535-3445','Proin@euplacerat.com','22-12-2017'),('Leroy','Megan','Manager','1-544-849-8350','Maecenas.malesuada@NullafacilisiSed.ca','22-07-2020'),('Griffith','Katell','Manager','1-563-747-6962','amet.risus.Donec@massaMaurisvestibulum.net','19-02-2016'),('Geoffrey','Diana','Manager','1-648-803-8214','mi.felis.adipiscing@Pellentesqueultricies.org','21-08-2015'),('Lee','Vivien','Manager','1-519-731-2452','erat@tinciduntcongue.edu','28-07-2020');
INSERT INTO Employees([FirstName],[LastName],[Position],[Phone],[Email],[Date_Employment]) VALUES('Jack','Ciara','Manager','1-958-828-6034','Sed@faucibusleoin.ca','22-12-2021'),('Benjamin','Katell','Manager','1-221-896-2441','fringilla.cursus.purus@molestie.org','04-04-2018'),('Stuart','Maxine','Manager','1-916-923-6454','erat.volutpat.Nulla@auctornon.net','30-08-2017'),('Honorato','Marcia','Manager','1-940-171-0671','aliquet@accumsan.org','26-10-2015'),('Yuli','Kirby','Manager','1-732-492-8848','dolor.elit@malesuadavel.org','13-11-2021'),('Hunter','Jeanette','Manager','1-743-491-7453','nisi.nibh.lacinia@necdiamDuis.org','10-08-2021'),('Todd','Quon','Manager','1-210-610-2007','pede.blandit@dolordapibusgravida.ca','15-06-2019'),('Zachary','Deborah','Manager','1-523-133-0392','eu.erat.semper@maurisMorbi.co.uk','08-11-2017'),('Zeus','Rae','Manager','1-837-765-1502','Sed@magnisdisparturient.ca','10-03-2017'),('Carter','Halee','Manager','1-349-968-3435','blandit.viverra@sed.org','22-04-2016');

UPDATE Employees
SET Date_Employment = '2016-04-22'
WHERE Date_Employment = '22-04-2016'








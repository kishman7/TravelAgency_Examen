use TravelAgency;

create table ArchivTour (
	id INT primary key IDENTITY(1,1),
	NameTour NVARCHAR(50),
	DateStartTour DATE,
	DateFinishTour DATE,
	Country NVARCHAR(50),
	City NVARCHAR(50),
	EmployeeID INT FOREIGN KEY REFERENCES Employees(ID),
	PriceTour money,
);

SET IDENTITY_INSERT ArchivTour ON;

insert into ArchivTour 
select * from Tour
where DateStartTour < GETDATE() and DateFinishTour < GETDATE();


use TravelAgency;

--�������� ���������� ���:
--1. - �� �������� ����
select * from Tour
where DateStartTour > GETDATE() and DateFinishTour > GETDATE()
order by DateStartTour

--2. - ��������� ���� � ������: ����� ���� - ��������� - �-��� �������� �������
select T.NameTour, TC.IsPayed, COUNT(TC.WasInterested) as WasInterested
from Tour T join TourClient TC on T.id = TC.TourID
where TC.IsPayed = 0
group by T.NameTour, TC.IsPayed
order by WasInterested desc

--3. - �������� �� ����, �� ��������� ��������� Leroy Megan
select T.NameTour, E.FirstName + ' ' + E.LastName as FullName
from Tour T join Employees E on T.EmployeeID = E.ID
where E.FirstName = 'Leroy' and E.LastName = 'Megan'

--4. - �������� ���������� ��� ���� �� ������� ��. ����������� �� ����
select NameTour, DateStartTour, DateFinishTour, Country
from Tour
where YEAR(DateStartTour) = 2020 and YEAR(DateFinishTour) = 2020
order by Country

--5. - �������� ���������� � ������ ������� �������, ��� �������� ��� ��� �����, ����, �-��� ��������� ����
select T.Country, T.City, COUNT(TPV.PlaceToVisitID) as CountPlace
from Tour T join TourPlaceToVisit TPV on T.id = TPV.TourID 
group by T.Country, T.City
order by T.Country

--6. - ����, �� ��������� � ��������� ������� ��� (���� �� ��������)
declare @from_data date
set @from_data = '2021-06-01' -- � ��� ����
declare @to_data date
set @to_data = '2021-10-31' -- �� ��� ����
select * from Tour
where DateStartTour BETWEEN @from_data and @to_data

--7. - ���������� ��� ����, �� �������� ������� ����� (����� �� ��������)
declare @country nvarchar(50)
set @country = 'Ukraine'
select * from Tour
where Country = @country

--8. - �������� ������������� ���������� ����� (�� �������� ������� ���� � ����������� ��������)
select top 1 Country, COUNT(Country) as CountCountry
from Tour
group by Country
order by CountCountry desc

--9. - �������� �������������� ���������� ��� (�� ����������� ������� �������� ����������� ������)
select top 1 T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour, COUNT(TC.IsPayed) as CountPayTour
from Tour T join TourClient TC on T.id = TC.ClientID
where TC.IsPayed is not null and T.DateStartTour > GETDATE() and T.DateFinishTour > GETDATE()
group by T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour
order by CountPayTour desc

--10. - �������� �������������� �������� ��� (�� ����������� ������� �������� ����������� ������)


--11. - �������� ���������������� ���������� ��� (���� �������� ������� �������� ����������� ������)
select top 1 T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour, COUNT(TC.IsPayed) as CountPayTour
from Tour T join TourClient TC on T.id = TC.ClientID
where TC.IsPayed is not null and T.DateStartTour > GETDATE() and T.DateFinishTour > GETDATE()
group by T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour
order by CountPayTour

--12. - �������� ��� ����������� ������� �� ϲ� ������ ��� ���� ����. ϲ� ������� ���������� �� ��������
declare @client_first_name nvarchar(50)
set @client_first_name = 'Loy'
declare @client_last_name nvarchar(50)
set @client_last_name = 'Lade'
select T.NameTour, T.Country, T.City, C.FirstName, C.LastName
from Tour T join TourClient TC on T.id = TC.TourID join Client C on C.ID = TC.ClientID
where C.FirstName = @client_first_name and C.LastName = @client_last_name

--13. - ��������� ��� ����������� ������� �� ϲ� ����������� �� ����� � ���. ϲ� ������� ���������� �� ��������
create proc sp_ClientTourNow as
declare @client_first_name nvarchar(50)
set @client_first_name = 'Loy'
declare @client_last_name nvarchar(50)
set @client_last_name = 'Lade' 
begin
select C.FirstName, C.LastName, T.NameTour, T.DateStartTour, T.DateFinishTour
from Client C join TourClient TC on C.ID = TC.ClientID join Tour T on T.id = TC.TourID 
where C.FirstName = @client_first_name and C.LastName = @client_last_name and T.DateStartTour < GETDATE() and T.DateFinishTour > GETDATE()
end

exec sp_ClientTourNow

--14. - ³��������� ���������� ��� ��, �� ����������� ���������� ������ �� ϲ�. ���� ������ �� � ��� ����������� ������� � ������ ������� ��������. ϲ�
--������� ���������� �� ��������
create proc SearchClientTorNow as
declare @client_first_name nvarchar(50)
set @client_first_name = 'Loy'
declare @client_last_name nvarchar(50)
set @client_last_name = 'Lade' 
begin
select @client_first_name = C.FirstName, @client_last_name = C.LastName
from Client C join TourClient TC on C.ID = TC.ClientID join Tour T on T.id = TC.TourID
WHERE EXISTS (select C.FirstName, C.LastName 
from Client C join TourClient TC on C.ID = TC.ClientID join Tour T on T.id = TC.TourID 
where C.FirstName = @client_first_name and C.LastName = @client_last_name and T.DateStartTour < GETDATE() and T.DateFinishTour > GETDATE())
if @client_first_name is NULL and @client_last_name is NULL
begin
print 'Client ' + @client_first_name + ' ' + @client_last_name + ' is tour now ' 
end
else
begin 
print 'No client in tour now'
end
end

exec SearchClientTorNow

--15. - ³��������� ���������� ��� ������������� ������� (�� ������� ��������� ����)
select top 1 C.FirstName + ' ' + C.LastName as FullName, COUNT(TC.ClientID) as CountClientTour
from Tour T join TourClient TC on T.id = TC.ClientID join Client C on C.ID = TC.TourID
where TC.IsPayed = 1
group by C.FirstName, C.LastName
order by CountClientTour desc

--16. - ³��������� ���������� �� ��� ����� ����������� ������� �����������. ����� ����������� ���������� �� ��������
create proc sp_TransportTour as
declare @transport nvarchar(50)
set @transport = 'avia'
begin
select T.NameTour, T.Country, T.City, Tr.NameTransport
from Tour T join TourTransport TT on T.id=TT.TourID join Transport Tr on Tr.id=TT.TransportID
where Tr.NameTransport = @transport
end

exec sp_TransportTour

--17. - ³��������� ���������� ��� �������������� ����� ����� ������� (�� ������� �������)
alter view vw_BestHotel as
select top 1 H.NameHotel, COUNT(TC.ClientID) as CountClientHotel
from Tour T join TourClient TC on T.id=TC.ClientID join TourHotel TH on T.id=TH.TourID join Hotel H on H.id=TH.HotelID
group by H.NameHotel
order by CountClientHotel desc

select * from vw_BestHotel

--18. - �������� ������� ������� ��������� ���� ����������� ���� (����� ���� ���������� � ���������)
alter proc sp_AvrPricePlaceToVisitTour as
declare @tour nvarchar(50)
set @tour ='It'
begin
select  AVG(T.PriceTour) as AvgPricaPlaceToVisit
from Tour T join TourPlaceToVisit TPTV on T.id=TPTV.TourID join PlaceToVisit PTV on PTV.ID=TPTV.PlaceToVisitID
where T.NameTour = @tour
--group by T.NameTour, PTV.NamePlace
end

exec sp_AvrPricePlaceToVisitTour

--19. - �������������, �� ������ ���������� ��� �볺��� � ������������� ������.
alter view vw_MaskedClient as
select Left(FirstName, 0)+'XXXXXX' as FirstName, Left(LastName, 3)+'XXX' as LastName, Email, Phone, BirthDay
from Client;

select * from vw_MaskedClient

--20. �������� ���������� ��� �����, ��� ������� �������� �������
select top 1 T.Country, COUNT(TC.ClientID) as CountClientCountry
from Tour T join TourClient TC on T.id = TC.TourID
group by T.Country
order by CountClientCountry

--21. �������� ���������� ��� ����. ���������� �� ���� ������������ ������: ����� ����, ����� (������� �������� �������� �� ������� ����, ����� 2)
--�����1, �����2, �����3� � ���������� ����� � ����� �������� �� ����
--������� ���, ������ ������� ��������� � ����� ���� � ���
create table #DaysTourCountry (
NameTour nvarchar(50), Bulgaria int, Croatia int, France int, Germany int, Greece int, Italy int, Spain int, Ukraine int)

insert into #DaysTourCountry
select NameTour, Bulgaria, Croatia, France, Germany, Greece, Italy, Spain, Ukraine
from (select T.NameTour, T.Country, DATEDIFF(day, DateStartTour, DateFinishTour) as DaysTour
	from Tour T join TourClient TC on T.id=TC.TourID) as Result
Pivot (
	SUM(DaysTour)
	for Country
	in (Bulgaria, Croatia, France, Germany, Greece, Italy, Spain, Ukraine)
	) as pvtTable

select * from #DaysTourCountry

select Country, COUNT(ID)
from Tour
group by Country
order by Country
--22. �������� ��������� �� ����������� ��� � ������: �����������: ����� +
--����� + ���������, ���������: ����� + ����� + ���������
select NameTour, Country, MAX(DISTINCT DATEDIFF(day, DateStartTour, DateFinishTour)) as  DaysTour
from Tour
group by NameTour, Country
order by DaysTour desc
--from Tour T1
--where T1.PriceTour > ALL (select T2.PriceTour
--					from Tour T2
--					where T2.id <> T1.id)
--group by NameTour, Country
--order by rank()over(order by DaysTour desc);

--23. ������ �� ������� ���� ��������. ������� ���������� ��� �������� ���� ���������� ������.
alter table Tour
add Discount int not null default 20

select NameTour, ROUND((PriceTour-(PriceTour * Discount/100)),2) as DiscountPrice
from Tour

--24. �������� ����������, �� �� ���������� �� ����� ���
  select E.FirstName, E.LastName
  from Tour T right join Employees E on T.EmployeeID = E.ID
  where T.EmployeeID is null 

--25. ���������� ����� ����������� (20% �� �������� ������� �������� ������ )
select top 1 ROUND(SUM(COUNT(TC.TourID)*T.PriceTour*0.2)OVER(),2) as ProfitTour
from Tour T join TourClient TC on T.id = TC.ClientID
where TC.IsPayed = 1 
group by T.PriceTour
--having SUM(COUNT(TC.TourID)*T.PriceTour*0.2)

--26. �������, ������� ������� ������� ���� � ����� ����� (����� �� ��������)
alter function [dbo].[AvarageTourCountry](@country varchar)
returns int
as
begin
	declare @avg_price int
	select  @avg_price = AVG(PriceTour) 
	from Tour
	where Country = @country
	group by  Country
	return @avg_price
end

declare @country varchar(50)
set @country = 'Ukraine'
select  dbo.AvarageTourCountry(@country)
from Tour

select   AVG(PriceTour) as AvgPrice
	from Tour
	where Country = 'Ukraine'
	--group by NameTour, Country
--27. �������, ��� ������� �� ������ ���� �������� � ����� �����, ���� ���� ���� ����� �� �������

--alter function CountryTour(@country varchar)
--returns @table table (ID int, NameTour nvarchar(50), PriceTour money)
--as
--begin
--	insert into @table
--	select Id, NameTour, PriceTour
--	from Tour
--	where Country = @country and PriceTour > (
--		select AVG(PriceTour)
--		from Tour)
--	return
--end

alter function CountryTour(@country varchar)
returns @table table 
(ID int, NameTour nvarchar(50), PriceTour money)
as
begin
	insert into @table
	select Id, NameTour, PriceTour
	from Tour
	where Country = @country and PriceTour > (
		select AVG(PriceTour)
		from Tour)
	return
end
declare @country varchar(50)
set @country = 'France'

select * from CountryTour(@country)

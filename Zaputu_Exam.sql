use TravelAgency;

--Показати інформацію про:
--1. - всі актуальні тури
select * from Tour
where DateStartTour > GETDATE() and DateFinishTour > GETDATE()
order by DateStartTour

--2. - Неоплачені тури у форматі: назва туру - тривалість - к-сть бажаючих відвідати
select T.NameTour, TC.IsPayed, COUNT(TC.WasInterested) as WasInterested
from Tour T join TourClient TC on T.id = TC.TourID
where TC.IsPayed = 0
group by T.NameTour, TC.IsPayed
order by WasInterested desc

--3. - Показати всі тури, які контролює працівник Leroy Megan
select T.NameTour, E.FirstName + ' ' + E.LastName as FullName
from Tour T join Employees E on T.EmployeeID = E.ID
where E.FirstName = 'Leroy' and E.LastName = 'Megan'

--4. - Показати інформацію про тури за минулий рік. Погрупувати по країні
select NameTour, DateStartTour, DateFinishTour, Country
from Tour
where YEAR(DateStartTour) = 2020 and YEAR(DateFinishTour) = 2020
order by Country

--5. - показати інформацію у вигляді зведеної таблиці, яка міститиме дані про країни, міста, к-сть визначних місць
select T.Country, T.City, COUNT(TPV.PlaceToVisitID) as CountPlace
from Tour T join TourPlaceToVisit TPV on T.id = TPV.TourID 
group by T.Country, T.City
order by T.Country

--6. - тури, які стартують в указаному діапазоні дат (дата як параметр)
declare @from_data date
set @from_data = '2021-06-01' -- з якої дати
declare @to_data date
set @to_data = '2021-10-31' -- по яку дату
select * from Tour
where DateStartTour BETWEEN @from_data and @to_data

--7. - Інформація про тури, які відвідають вказану країну (країна як параметр)
declare @country nvarchar(50)
set @country = 'Ukraine'
select * from Tour
where Country = @country

--8. - Показати найпопулярнішу туристичну країну (із найбільшої кількості турів з урахуванням архівних)
select top 1 Country, COUNT(Country) as CountCountry
from Tour
group by Country
order by CountCountry desc

--9. - Показати найпопулярніший актуальний тур (по максимальній кількості куплених туристичних путівок)
select top 1 T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour, COUNT(TC.IsPayed) as CountPayTour
from Tour T join TourClient TC on T.id = TC.ClientID
where TC.IsPayed is not null and T.DateStartTour > GETDATE() and T.DateFinishTour > GETDATE()
group by T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour
order by CountPayTour desc

--10. - Показати найпопулярніший архівний тур (по максимальній кількості куплених туристичних путівок)


--11. - Показати найнепопулярніший актуальний тур (щодо мінімальної кількості куплених туристичних путівок)
select top 1 T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour, COUNT(TC.IsPayed) as CountPayTour
from Tour T join TourClient TC on T.id = TC.ClientID
where TC.IsPayed is not null and T.DateStartTour > GETDATE() and T.DateFinishTour > GETDATE()
group by T.NameTour, T.Country, T.DateStartTour, T.DateFinishTour
order by CountPayTour

--12. - Показати для конкретного туриста по ПІБ список всіх його турів. ПІБ туриста передається як параметр
declare @client_first_name nvarchar(50)
set @client_first_name = 'Loy'
declare @client_last_name nvarchar(50)
set @client_last_name = 'Lade'
select T.NameTour, T.Country, T.City, C.FirstName, C.LastName
from Tour T join TourClient TC on T.id = TC.TourID join Client C on C.ID = TC.ClientID
where C.FirstName = @client_first_name and C.LastName = @client_last_name

--13. - Перевірити для конкретного туриста по ПІБ знаходиться він зараз у турі. ПІБ туриста передається як параметр
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

--14. - Відобразити інформацію про те, де знаходиться конкретний турист по ПІБ. Якщо турист не в турі згенерувати помилку з описом виниклої проблеми. ПІБ
--туриста передається як параметр
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

--15. - Відобразити інформацію про найактивнішого туриста (за кількістю придбаних турів)
select top 1 C.FirstName + ' ' + C.LastName as FullName, COUNT(TC.ClientID) as CountClientTour
from Tour T join TourClient TC on T.id = TC.ClientID join Client C on C.ID = TC.TourID
where TC.IsPayed = 1
group by C.FirstName, C.LastName
order by CountClientTour desc

--16. - Відобразити інформацію по всіх турах зазначеного способу пересування. Спосіб пересування передається як параметр
create proc sp_TransportTour as
declare @transport nvarchar(50)
set @transport = 'avia'
begin
select T.NameTour, T.Country, T.City, Tr.NameTransport
from Tour T join TourTransport TT on T.id=TT.TourID join Transport Tr on Tr.id=TT.TransportID
where Tr.NameTransport = @transport
end

exec sp_TransportTour

--17. - Відобразити інформацію про найпопулярніший готелі серед туристів (за кількістю туристів)
alter view vw_BestHotel as
select top 1 H.NameHotel, COUNT(TC.ClientID) as CountClientHotel
from Tour T join TourClient TC on T.id=TC.ClientID join TourHotel TH on T.id=TH.TourID join Hotel H on H.id=TH.HotelID
group by H.NameHotel
order by CountClientHotel desc

select * from vw_BestHotel

--18. - Показати середню вартість визначних місць конкретного туру (назва туру передається в параметри)
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

--19. - Представлення, що показує інформацію про клієнтів у замаскованому вигляді.
alter view vw_MaskedClient as
select Left(FirstName, 0)+'XXXXXX' as FirstName, Left(LastName, 3)+'XXX' as LastName, Email, Phone, BirthDay
from Client;

select * from vw_MaskedClient

--20. Показати інформацію про країну, яку відвідало найменше туристів
select top 1 T.Country, COUNT(TC.ClientID) as CountClientCountry
from Tour T join TourClient TC on T.id = TC.TourID
group by T.Country
order by CountClientCountry

--21. Показати інформацію про тури. Інформація має бути представлена полями: назва туру, країна (кількість стовпців залежить від кількості країн, мінімум 2)
--країна1, країна2, країна3… У стовпчиках Країна в якості значення має бути
--кількість днів, скільки туристи проведуть в певній країні в турі
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
--22. Показати найдовший та найкоротший тур у форматі: Найкоротший: Назва +
--країни + тривалість, найдовший: назва + країни + тривалість
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

--23. Додати до таблиці поле “знижка”. Вивести інформацію про актуальні тури враховуючи знижку.
alter table Tour
add Discount int not null default 20

select NameTour, ROUND((PriceTour-(PriceTour * Discount/100)),2) as DiscountPrice
from Tour

--24. Показати працівників, які не відповідають за жоден тур
  select E.FirstName, E.LastName
  from Tour T right join Employees E on T.EmployeeID = E.ID
  where T.EmployeeID is null 

--25. Порахувати дохід турагенства (20% від загальної вартості проданих квитків )
select top 1 ROUND(SUM(COUNT(TC.TourID)*T.PriceTour*0.2)OVER(),2) as ProfitTour
from Tour T join TourClient TC on T.id = TC.ClientID
where TC.IsPayed = 1 
group by T.PriceTour
--having SUM(COUNT(TC.TourID)*T.PriceTour*0.2)

--26. Функція, повертає середню вартість туру у певну країну (країна як параметр)
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
--27. Функція, яка повертає всі можливі тури агенства в певну країну, якщо ціна туру більша за середню

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

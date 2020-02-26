/*
create table DimProviderCity (
	ProviderCityId int,
	ProviderCity varchar(50)
)

create table DimPersonCounty (
	PersonCountyId int IDENTITY(1,1),
	County nvarchar(20)
)
drop table dimpersoncounty
create table DimGender (
	GenderId int IDENTITY(1,1),
	Gender varchar(20)
)

create table DimTypeOfService (
	TypeOfServiceId int IDENTITY(1,1),
	TypeOfService varchar(50)
)
*/

select *
from dimtypeofservice

create table FactBillAmount (
	FactBillAmountId int IDENTITY(1,1),
	BillAmount numeric(12,2),
	VisitDate date,
	TypeOfServiceId int,
	PersonCountyId int,
	GenderId int,
	ProviderCityId int
)


select *
--delete
from FactBillAmount


select @@servername
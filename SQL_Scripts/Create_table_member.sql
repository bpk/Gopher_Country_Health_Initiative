/*
create table Member (
	MemberId int IDENTITY(1,1) NOT NULL,
	FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null,
	Address1 nvarchar(50) null,
	City nvarchar(30) null,
	StateProvCode nvarchar(2) null,
	Zip5 char(5) null,
	Zip4 char(4) null,
	County nvarchar(50) null,
	DateOfBirth date null,
	TaxId char(9) null,
	HealthInsProvider varchar(30) null,
	AnnualIncome numeric(12,2) null,
	Gender char(10) not null,
	DateSignUp date not null,
	CreatedDate datetime not null DEFAULT getdate(),
	CreatedId varchar(30) not null DEFAULT user_name(),
	ModifiedDate datetime not null DEFAULT getdate(),
	ModifiedId varchar(30) not null DEFAULT user_name()
	CONSTRAINT PK_MemberId PRIMARY KEY (MemberId)
)
--DROP TABLE Member
--truncate table member
*/

select *
from member

--All member report
--select 
--	right('000000' + cast(memberid as varchar(6)),6) as GCHIId,
--	rtrim(ltrim(FirstName)) + ' ' + rtrim(ltrim(LastName)) as FullName,
--	address1 as Address1,
--	city as city,
--	stateprovcode as stateprovcode,
--	rtrim(ltrim(zip5)) + '-' + isnull(zip4,'') as ZipCode,
--	County as County,
--	HealthInsProvider as HealthInsProvider
--from member

--HealthInsuranceByCounty Report
--select 
--	County,
--	HealthInsProvider,
--	count(*) as cnt
--from Member
--group by County,HealthInsProvider

--TypeofService Chart
--select 
--	TypeOfService,
--	BillAmount
--from MedProviderVisit








 /*
 create table MedProviderVisit (
	MedProviderVisitId int IDENTITY(1,1),
	MedProviderId int not null,
	MemberId int NOT NULL,
	DateofService date NULL,
	TypeOfService nvarchar(50) NULL,
	BillAmount numeric(12,2) NULL,
	CreatedDate datetime NOT NULL DEFAULT getdate(),
	CreatedId varchar(30) NOT NULL DEFAULT user_name(),
	ModifiedDate datetime NOT NULL DEFAULT getdate(),
	ModifiedId varchar(30) NOT NULL DEFAULT user_name()
)
--drop table MedProviderVisit
--truncate table MedProviderVisit
*/

select *
from  MedProviderVisit
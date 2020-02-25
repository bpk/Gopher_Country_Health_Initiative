/*
create table MedProvider (
	MedProviderId int identity(1,1),
	MedProviderName nvarchar(50) NOT NULL,
	MedProviderCity nvarchar(50) NOT NULL,
	CreatedDate datetime NOT NULL DEFAULT getdate(),
	CreatedId varchar(30) NOT NULL DEFAULT user_name(),
	ModifiedDate datetime NOT NULL DEFAULT getdate(),
	ModifiedId varchar(30) NOT NULL DEFAULT user_name(),

	CONSTRAINT PK_MedProviderId PRIMARY KEY (MedProviderId),
	--INDEX IDX_MedProvider_MedProviderName (MedProviderName)
)
--DROP TABLE MedProvider
--truncate table MedProvider
*/
--xec sp_helpindex MedProvider

select *
from MedProvider


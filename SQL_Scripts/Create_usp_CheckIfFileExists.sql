
if object_id('usp_CheckIfFileExists','P') is not null
drop procedure usp_CheckIfFileExists
go

create procedure usp_CheckIfFileExists
@FileName varchar(50)
AS
BEGIN
IF EXISTS (
	select 1 
	from SourceFile
	where FileLoadName = @FileName
	and RecordCount > 0
	and LoadEndTime is not null)
BEGIN
	(select 1 as FileExistsFlag)
END
ELSE
BEGIN
	(select 0 as FileExistsFlag)
END
END

--exec usp_CheckIfFileExists 'Provider_Transactions_20200214.csv'



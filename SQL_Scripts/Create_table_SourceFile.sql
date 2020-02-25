use gchi
GO

/*`
CREATE TABLE [dbo].[SourceFile](
	[SourceFileId] [int] IDENTITY(1,1) NOT NULL,
	[FileLoadName] [varchar](50) NULL,
	[FileLoadPath] [varchar](100) NULL,
	[PackageName] [varchar](30) NULL,
	[LoadStartTime] [datetime] NULL DEFAULT getdate(),
	[LoadEndTime] [datetime] NULL,
	[RecordCount] [int] NULL,
	[ErrorCode] [varchar](50) NULL
)
--drop table sourcefile
--truncate table SourceFile
*/

select *
from sourceFile




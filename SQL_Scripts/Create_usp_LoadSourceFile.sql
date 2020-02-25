USE GCHI
GO

/****** Object:  StoredProcedure [dbo].[uspLoadSourceFileID]    Script Date: 2/25/2020 4:06:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('usp_LoadSourceFile','P') is not null
DROP PROCEDURE usp_LoadSourceFile
GO

create procedure [dbo].[usp_LoadSourceFile]
	@FileLoadName varchar(50),
	@FileLoadPath varchar(100),
	@PackageName varchar(30),
	@ErrorCode VARCHAR(30),
	@RecordCount int,
	@SourceFileID int OUTPUT
AS
	INSERT INTO SourceFile (
		FileLoadName,
		FileLoadPath,
		PackageName,
		ErrorCode,
		RecordCount)
	VALUES (
		@FileLoadName,
		@FileLoadPath,
		@PackageName,
		@ErrorCode,
		@RecordCount)
	SET @SourceFileId = SCOPE_IDENTITY()




GO


--drop procedure [usp_LoadSourceFile]
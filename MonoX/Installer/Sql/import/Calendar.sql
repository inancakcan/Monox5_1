/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[Calendar]';
DELETE FROM [dbo].[Calendar];
GO

PRINT N'Inserting values into [dbo].[Calendar]';

INSERT INTO [dbo].[Calendar] ([Id],[OwnerId],[DateCreated],[DateModified],[Name],[Slug]) VALUES ('4B60715D-2871-42E2-9DCB-9EB1010BDEE6','67C919E2-8DF4-476A-B312-C26F82A36CFB','2011-03-25T14:37:46.000',NULL,N'MonoXCalendar',N'');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


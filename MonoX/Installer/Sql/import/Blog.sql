/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[Blog]';
DELETE FROM [dbo].[Blog];
GO

PRINT N'Inserting values into [dbo].[Blog]';

INSERT INTO [dbo].[Blog] ([Id],[ApplicationId],[LanguageId],[Name],[Slug],[Description],[DateCreated],[UserId]) VALUES ('A81970C2-282F-42C5-92E4-9CF300F52FFC','67C919E2-8DF4-476A-B312-C26F82A36CFB','0543FD17-141B-4C40-BB35-B57F9EEC6EE0',N'MonoX',N'MonoX',N'MonoX Sample Blog.','2010-06-23T19:14:58.000','67C919E2-8DF4-476A-B312-C26F82A36CFB');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


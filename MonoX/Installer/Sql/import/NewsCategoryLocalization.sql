/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[NewsCategoryLocalization]';
DELETE FROM [dbo].[NewsCategoryLocalization];
GO

PRINT N'Inserting values into [dbo].[NewsCategoryLocalization]';

INSERT INTO [dbo].[NewsCategoryLocalization] ([Id],[NewsCategoryId],[LanguageId],[Title],[Name],[Description],[Published],[DateEntered],[DateModified]) VALUES ('43796F42-0EE3-4F93-9E8B-1567851CF228','CDF073F2-9404-4B09-83AA-9E6300D5794E','0543FD17-141B-4C40-BB35-B57F9EEC6EE0',N'MonoX',N'MonoX',N'MonoX news category.',1,'2011-01-06T11:39:31.000','2011-01-06T16:00:45.000');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[BlogCategory]';
DELETE FROM [dbo].[BlogCategory];
GO

PRINT N'Inserting values into [dbo].[BlogCategory]';

INSERT INTO [dbo].[BlogCategory] ([Id],[BlogId],[Name],[Slug]) VALUES ('4FFE4C16-DD0D-496D-9655-9C0D01420787','A81970C2-282F-42C5-92E4-9CF300F52FFC',N'MonoX',N'MonoX');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[aspnet_Applications]';
DELETE FROM [dbo].[aspnet_Applications];
GO

PRINT N'Inserting values into [dbo].[aspnet_Applications]';

INSERT INTO [dbo].[aspnet_Applications] ([ApplicationName],[LoweredApplicationName],[ApplicationId],[Description]) VALUES (N'MonoX',N'monox','67C919E2-8DF4-476A-B312-C26F82A36CFB',NULL);
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[Language]';
DELETE FROM [dbo].[Language];
GO

PRINT N'Inserting values into [dbo].[Language]';

INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('41416B27-E1A8-45E7-A74E-9E1D01842020',N'Croatian (Croatia)',N'hr-HR',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('0397D1E4-3502-4747-B183-9E1D0184283E',N'Turkish (Turkey)',N'tr-TR',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('FBF9A916-0C0E-4647-8F3D-9E3000BD8095',N'Italian (Italy)',N'it-IT',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('4C3F8A0A-B8DC-424E-B714-9F6D00D620A8',N'German (Germany)',N'de-DE',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('147077BE-1D27-48CF-AC50-9F6D00D63ECC',N'Slovak (Slovakia)',N'sk-SK',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('C0D536CC-6F66-4CEE-A107-9F6D00D6445D',N'Czech (Czech Republic)',N'cs-CZ',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('D4C7B3D3-648B-49B1-88A7-9F6D00D64D41',N'Danish (Denmark)',N'da-DK',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('C1409993-0F8F-470E-9D55-9F6D00D65A7B',N'Hungarian (Hungary)',N'hu-HU',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('33DD5A74-CDEE-4CC5-821F-9F6D00D692E2',N'Spanish (Spain)',N'es-ES',0);
GO
INSERT INTO [dbo].[Language] ([Id],[LanguageName],[CultureName],[DefaultLanguage]) VALUES ('0543FD17-141B-4C40-BB35-B57F9EEC6EE0',N'English',N'en-US',1);
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


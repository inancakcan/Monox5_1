/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[SnEventType]';
DELETE FROM [dbo].[SnEventType];
GO

PRINT N'Inserting values into [dbo].[SnEventType]';

INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('DDF4A9BB-CC23-4433-9DCB-1463585A7A4A',N'Member posted a wall note');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('61070973-2290-4CE0-B654-2A4266DD046A',N'posted a blog post');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('353BD182-8A3E-4A4F-ADEB-3F5BAE087D25',N'added a discussion board');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('B7E678D5-51BC-4267-9276-414C3AA3CB96',N'joined the group');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('8F25B929-F45D-4780-BDD5-4799CE7573DA',N'added a photo');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('68D5059A-650E-4C79-A7C1-4B1DA4B13714',N'added a discussion topic');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('9D4BEE67-CDF0-41B2-B110-52CFE0EDCE40',N'published an album');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('F5FC6EAC-C872-4240-B59E-6A6D1B35DDAD',N'created a group');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('09AAEE42-6731-4457-8C66-6BFEABAD611A',N'plain event');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('2BF89309-E9D8-49B9-8E89-A151559A4979',N'signed up');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('B5D5D607-7205-4B61-BB80-C4722C53B236',N'became friends with');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('3B6337F4-412E-4691-967D-CDB11A47BB37',N'updated profile');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('1FC36E03-C29F-4264-92FD-D53BAC61B6A2',N'uploaded a file');
GO
INSERT INTO [dbo].[SnEventType] ([Id],[Name]) VALUES ('78E70115-7FC5-4D1C-B3B2-D59562696A4D',N'updated status');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


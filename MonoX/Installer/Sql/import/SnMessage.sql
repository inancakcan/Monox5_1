/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[SnMessage]';
DELETE FROM [dbo].[SnMessage];
GO

PRINT N'Inserting values into [dbo].[SnMessage]';

INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('8917D18C-DD50-4F7A-BEE7-9D33015D69C5','67C919E2-8DF4-476A-B312-C26F82A36CFB','2010-03-08T19:05:10.000',N'test',N'test msg','8917D18C-DD50-4F7A-BEE7-9D33015D69C5',N'admanager');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('47598026-6FB0-4935-8FA1-9DAA01872814','A117436D-0970-4396-BF02-93DA7BFF6522','2010-07-05T21:22:25.000',N'more detail',N'Could you please sent me more details on that job offering?','47598026-6FB0-4935-8FA1-9DAA01872814',N'Erica');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('5849D481-538B-42EB-A97A-9DAC016B79A3','67C919E2-8DF4-476A-B312-C26F82A36CFB','2010-07-07T19:51:17.000',N'test',N'test','5849D481-538B-42EB-A97A-9DAC016B79A3',N'Erica');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('EEF2652B-CE75-4B26-B03F-9DAC0173659B','67C919E2-8DF4-476A-B312-C26F82A36CFB','2010-07-07T20:17:56.000',N'test',N'test 2','5849D481-538B-42EB-A97A-9DAC016B79A3',N'Erica');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('BD37AF92-2BF6-4610-8BB1-9DAE01739C11','8F620F92-BCAE-4DF7-8A18-6B8942202C93','2010-07-09T20:18:22.000',N'download?',N'Could you please let me know where to download the new version of MonoX?','BD37AF92-2BF6-4610-8BB1-9DAE01739C11',N'admin');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('EA1EBC12-A2A0-4FAE-BCBB-9DAE0173D184','8F620F92-BCAE-4DF7-8A18-6B8942202C93','2010-07-09T20:20:34.000',N'download?',N'And is it really free for both commercial and non-commercial uses?','BD37AF92-2BF6-4610-8BB1-9DAE01739C11',N'admin');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('8112370B-C386-4C95-8473-9DAE017426BF','67C919E2-8DF4-476A-B312-C26F82A36CFB','2010-07-09T20:19:50.000',N'download?',N'Just follow the link on the home page :)','BD37AF92-2BF6-4610-8BB1-9DAE01739C11',N'MarthaB');
GO
INSERT INTO [dbo].[SnMessage] ([Id],[UserId],[DateCreated],[Subject],[Body],[InReplyToMessageId],[ToList]) VALUES ('1DF029C9-9F6C-42C5-AECB-9DAE017442F2','67C919E2-8DF4-476A-B312-C26F82A36CFB','2010-07-09T20:21:05.000',N'download?',N'Yes, there are no hidden clauses in our license agreement.','BD37AF92-2BF6-4610-8BB1-9DAE01739C11',N'MarthaB');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[CalendarEvent]';
DELETE FROM [dbo].[CalendarEvent];
GO

PRINT N'Inserting values into [dbo].[CalendarEvent]';

INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('828AB8B8-92EE-44B7-95E9-9EB1016397FD','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-25T19:25:13.000',NULL,'2011-03-31T08:00:00.000','2011-03-31T11:00:00.000',0,N'Web design group meeting',N'Regular monthly meeting - please send us your suggestions for topics.',N' +
    N''',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('188D719A-70EC-4A22-AE50-9EB10165ED17','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-25T19:32:51.000',NULL,'2011-03-28T08:00:00.000','2011-03-28T21:00:00.000',0,N'ASP.NET developer''s conference',N'One of the best conferences in the area, covering advanced topics' +
    N' such as Web parts infrastructure, MVC, view engines...',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('1FE73B5F-B21C-4C25-98E2-9EB10193ABCB','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-25T22:02:45.000',NULL,'2011-03-09T08:00:00.000','2011-03-09T11:00:00.000',0,N'SEO workshop',N'Basics of Search Engine Optimization, organized by AlanJ.',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('2D643152-8CF1-4DB5-95CD-9EB10193F4F7','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-25T22:03:41.000',NULL,'2011-03-22T13:00:00.000','2011-03-22T16:00:00.000',0,N'Content Management Event',N'Learn more about state-of-the-art content management systems.',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('B7E5A16F-2265-406A-80C6-9EB40116A023','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:13:00.000',NULL,'2011-04-20T09:00:00.000','2011-04-20T10:00:00.000',0,N'MonoX presentation',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('AE9C4F78-9F33-4E26-AE3A-9EB4011719EE','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:14:34.000',NULL,'2011-04-29T08:00:00.000','2011-04-29T09:00:00.000',0,N'.NET Users Group Meeting',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('A973A881-9196-4E86-BD53-9EB40117B3A0','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:16:32.000',NULL,'2011-05-05T10:00:00.000','2011-05-05T11:00:00.000',0,N'SEO Webinar',N'First SEO webinar this year, please register in our user group to attend.',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('863040F7-8465-4EAB-AA82-9EB40117FC93','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:17:28.000',NULL,'2011-05-17T08:00:00.000','2011-05-17T11:00:00.000',0,N'Web design fundamentals',N'Nice and easy introduction to this topic by leading experts in the area.',
    N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('CFCC2B77-D003-4878-9793-9EB40118499E','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:18:27.000',NULL,'2011-05-31T13:00:00.000','2011-05-31T15:00:00.000',0,N'eCTD Office Presentation',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('CE750056-E852-4DBE-A692-9EB40118801C','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:19:09.000',NULL,'2011-05-27T08:00:00.000','2011-05-27T09:00:00.000',0,N'How to work with WAO',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('E3E4F5B6-461D-42F9-BF6C-9EB40118B92B','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T15:19:52.000',NULL,'2011-06-08T10:00:00.000','2011-06-08T11:30:00.000',0,N'Presentation of MonoX OpenSocial features',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('AAC41A81-22E0-46F0-91F8-9EB401387044','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:03:48.000',NULL,'2011-06-20T08:00:00.000','2011-06-20T09:00:00.000',0,N'eCTD new version announcement',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('4B671725-5C10-45E3-B3EA-9EB40138B1F0','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:04:38.000',NULL,'2011-06-17T09:00:00.000','2011-06-17T11:00:00.000',0,N'Web design group regular meeting',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('C411A8B3-2239-45FC-8DEC-9EB40138EBFD','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:05:23.000',NULL,'2011-07-01T00:00:00.000','2011-07-02T00:00:00.000',1,N'Web design summer festival',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('0F3BC1C2-6819-4D41-8BF3-9EB401390D54','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:05:49.000',NULL,'2011-07-11T08:00:00.000','2011-07-11T15:00:00.000',0,N'Content managemet workshop',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('C5F5706B-1021-48DE-BE0E-9EB4013930BE','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:06:16.000',NULL,'2011-07-29T08:00:00.000','2011-07-29T11:00:00.000',0,N'ASP.NET developers regular meeting',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('7F456998-15AE-4823-8ACE-9EB401395E57','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:06:51.000',NULL,'2011-07-18T08:00:00.000','2011-07-18T09:00:00.000',0,N'ASP.NET developers conference',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('8FEA0DEB-E3F9-4A45-986E-9EB40139B2C5','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:07:56.000',NULL,'2011-08-21T00:00:00.000','2011-08-22T00:00:00.000',1,N'MonoX anniversary',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('B35B3031-6E1E-4DC0-8260-9EB40139FC45','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:08:52.000',NULL,'2011-08-10T08:00:00.000','2011-08-10T13:00:00.000',0,N'MonoX Boot Camp Webcast',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('38CA52EA-786B-430E-BC46-9EB4013A3EF9','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:09:43.000',NULL,'2011-08-18T08:00:00.000','2011-08-18T10:00:00.000',0,N'Template design with MonoX',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('D9B8479F-A6AA-4C1F-8CFB-9EB4013B1F87','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:12:36.000',NULL,'2011-08-31T08:00:00.000','2011-08-31T11:00:00.000',0,N'Search Engine Optimization webinar',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('E33364A8-1133-4401-9E29-9EB4013B6E7A','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:13:36.000',NULL,'2011-09-08T13:00:00.000','2011-09-08T18:00:00.000',0,N'Developing social networks with MonoX: an introduction',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('E6737BD7-3664-489A-BE84-9EB4013BB630','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:14:31.000',NULL,'2011-09-19T08:00:00.000','2011-09-19T09:00:00.000',0,N'Using WAO to enhance your site performance',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('DA1F301F-02D7-4910-8DDD-9EB4013BDE33','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:15:02.000',NULL,'2011-09-30T08:00:00.000','2011-09-30T09:00:00.000',0,N'Web designers group regular meeting',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('9B1C40C3-0D08-40CE-A4AB-9EB4013C0136','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:15:29.000',NULL,'2011-10-06T08:00:00.000','2011-10-06T11:00:00.000',0,N'ASP.NET Web parts infrastructure',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('6F62B305-753D-4AFB-8311-9EB4013C7635','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:16:59.000',NULL,'2011-10-18T08:00:00.000','2011-10-18T10:00:00.000',0,N'Using MonoX API webinar',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('AF3F7540-A087-4645-83F1-9EB4013CAFDB','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:17:43.000',NULL,'2011-10-24T08:00:00.000','2011-10-24T11:00:00.000',0,N'Content management group regular meeting',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('19AB7AE6-2923-4245-A6FA-9EB4013CC8BD','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:18:02.000',NULL,'2011-11-10T08:00:00.000','2011-11-10T11:00:00.000',0,N'ASP.NET developers regular meeting',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('47E609BF-FDAD-4CB3-A587-9EB4013CE15B','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:18:21.000',NULL,'2011-11-21T00:00:00.000','2011-11-22T00:00:00.000',1,N'Web design conference',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('E3A21A69-B1FE-4F9E-823F-9EB4013CF109','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:18:33.000',NULL,'2011-11-22T00:00:00.000','2011-11-23T00:00:00.000',1,N'Web design conference',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('69223064-9905-48AA-9582-9EB4013D7AA0','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:20:19.000',NULL,'2011-12-08T08:00:00.000','2011-12-08T13:00:00.000',0,N'Tutorial on continous integration for MonoX projects',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('9C2474BA-7DC3-4963-A6E0-9EB4013DA2B1','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:20:50.000',NULL,'2011-12-20T00:00:00.000','2011-12-21T00:00:00.000',1,N'eCTD conference',N'',N'',NULL);
GO
INSERT INTO [dbo].[CalendarEvent] ([Id],[AuthorId],[OwnerCalendarId],[DateCreated],[DateModified],[StartTime],[EndTime],[AllDay],[Title],[Description],[Place],[RecurringDefinitionId]) VALUES ('ED4DB0BA-360D-4977-9632-9EB4013DEBF7','67C919E2-8DF4-476A-B312-C26F82A36CFB','4B60715D-2871-42E2-9DCB-9EB1010BDEE6','2011-03-28T17:21:46.000',NULL,'2011-12-14T08:00:00.000','2011-12-14T09:00:00.000',0,N'SEO group regular meeting',N'',N'',NULL);
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


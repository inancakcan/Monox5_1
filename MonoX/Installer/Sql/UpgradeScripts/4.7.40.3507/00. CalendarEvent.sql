BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.CalendarEvent
	DROP CONSTRAINT FK_CalendarEvent_CalendarEventRecurringDefinition
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.CalendarEvent
	DROP CONSTRAINT FK_CalendarEvent_aspnet_Users
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.CalendarEvent
	DROP CONSTRAINT DF_CalendarEvent_AllDay
GO
CREATE TABLE dbo.Tmp_CalendarEvent
	(
	Id uniqueidentifier NOT NULL,
	AuthorId uniqueidentifier NOT NULL,
	OwnerCalendarId uniqueidentifier NULL,
	DateCreated datetime NOT NULL,
	DateModified datetime NULL,
	StartTime datetime NOT NULL,
	EndTime datetime NOT NULL,
	AllDay bit NOT NULL,
	Title nvarchar(150) NULL,
	Description nvarchar(500) NULL,
	Place nvarchar(250) NULL,
	RecurringDefinitionId uniqueidentifier NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_CalendarEvent ADD CONSTRAINT
	DF_CalendarEvent_AllDay DEFAULT ((0)) FOR AllDay
GO
IF EXISTS(SELECT * FROM dbo.CalendarEvent)
	 EXEC('INSERT INTO dbo.Tmp_CalendarEvent (Id, AuthorId, DateCreated, DateModified, StartTime, EndTime, AllDay, Title, Description, Place, RecurringDefinitionId)
		SELECT Id, AuthorId, DateCreated, DateModified, StartTime, EndTime, AllDay, Title, Description, Place, RecurringDefinitionId FROM dbo.CalendarEvent WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.SnRelationship
	DROP CONSTRAINT FK_SnRelationship_CalendarEvent
GO
ALTER TABLE dbo.CalendarEventEntry
	DROP CONSTRAINT FK_CalendarEventEntry_CalendarEvent
GO
DROP TABLE dbo.CalendarEvent
GO
EXECUTE sp_rename N'dbo.Tmp_CalendarEvent', N'CalendarEvent', 'OBJECT' 
GO
ALTER TABLE dbo.CalendarEvent ADD CONSTRAINT
	PK_CalendarEvent PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.CalendarEvent ADD CONSTRAINT
	CK_CalendarEvent CHECK (([StartTime]<=[EndTime]))
GO
ALTER TABLE dbo.CalendarEvent ADD CONSTRAINT
	FK_CalendarEvent_aspnet_Users FOREIGN KEY
	(
	AuthorId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.CalendarEvent ADD CONSTRAINT
	FK_CalendarEvent_CalendarEventRecurringDefinition FOREIGN KEY
	(
	RecurringDefinitionId
	) REFERENCES dbo.CalendarEventRecurringDefinition
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.CalendarEvent ADD CONSTRAINT
	FK_CalendarEvent_Calendar FOREIGN KEY
	(
	OwnerCalendarId
	) REFERENCES dbo.Calendar
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.CalendarEventEntry ADD CONSTRAINT
	FK_CalendarEventEntry_CalendarEvent FOREIGN KEY
	(
	CalendarEventId
	) REFERENCES dbo.CalendarEvent
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_CalendarEvent FOREIGN KEY
	(
	CalendarEventId
	) REFERENCES dbo.CalendarEvent
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

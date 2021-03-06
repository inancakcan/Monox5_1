
/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
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
CREATE TABLE dbo.SnNote
	(
	Id uniqueidentifier NOT NULL,
	ApplicationId uniqueidentifier NOT NULL,
	LanguageId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NOT NULL,
	GroupId uniqueidentifier NULL,
	NoteContent nvarchar(MAX) NULL,
	DateCreated datetime NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.SnNote ADD CONSTRAINT
	PK_SnNote PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SnNote ADD CONSTRAINT
	FK_SnNote_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnNote ADD CONSTRAINT
	FK_SnNote_Language FOREIGN KEY
	(
	LanguageId
	) REFERENCES dbo.Language
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnNote ADD CONSTRAINT
	FK_SnNote_Applications FOREIGN KEY
	(
	ApplicationId
	) REFERENCES dbo.aspnet_Applications
	(
	ApplicationId
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.SnNote ADD CONSTRAINT
	FK_SnNote_SnGroup FOREIGN KEY
	(
	GroupId
	) REFERENCES dbo.SnGroup
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO

COMMIT

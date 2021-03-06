/*
   7. siječanj 200912:02:26
   User: 
   Server: appserver\sqlserver2005
   Database: DirhWebInternet
   Application: 
*/

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
ALTER TABLE dbo.[Document]
	DROP CONSTRAINT FK_Document_aspnet_Users
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Document]
	DROP CONSTRAINT FK_Document_Language
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Document]
	DROP CONSTRAINT FK_Document_Page
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Document]
	DROP CONSTRAINT DF_Document_DateModified
GO
ALTER TABLE dbo.[Document]
	DROP CONSTRAINT DF_Document_RevisionVersion
GO
ALTER TABLE dbo.[Document]
	DROP CONSTRAINT DF_Document_BackupVersion
GO
CREATE TABLE dbo.Tmp_Document
	(
	Id uniqueidentifier NOT NULL,
	PageId uniqueidentifier NOT NULL,
	ControlId nvarchar(200) NOT NULL,
	Title nvarchar(MAX) NULL,
	TextContent nvarchar(MAX) NULL,
	LanguageId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NULL,
	DateModified datetime NOT NULL,
	RevisionVersion bit NOT NULL,
	BackupVersion bit NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Document ADD CONSTRAINT
	DF_Document_DateModified DEFAULT (getdate()) FOR DateModified
GO
ALTER TABLE dbo.Tmp_Document ADD CONSTRAINT
	DF_Document_RevisionVersion DEFAULT ((0)) FOR RevisionVersion
GO
ALTER TABLE dbo.Tmp_Document ADD CONSTRAINT
	DF_Document_BackupVersion DEFAULT ((0)) FOR BackupVersion
GO
IF EXISTS(SELECT * FROM dbo.[Document])
	 EXEC('INSERT INTO dbo.Tmp_Document (Id, PageId, ControlId, TextContent, LanguageId, UserId, DateModified, RevisionVersion, BackupVersion)
		SELECT Id, PageId, ControlId, TextContent, LanguageId, UserId, DateModified, RevisionVersion, BackupVersion FROM dbo.[Document] WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.[Document]
GO
EXECUTE sp_rename N'dbo.Tmp_Document', N'Document', 'OBJECT' 
GO
ALTER TABLE dbo.[Document] ADD CONSTRAINT
	PK_Document PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[Document] ADD CONSTRAINT
	FK_Document_Page FOREIGN KEY
	(
	PageId
	) REFERENCES dbo.Page
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.[Document] ADD CONSTRAINT
	FK_Document_Language FOREIGN KEY
	(
	LanguageId
	) REFERENCES dbo.Language
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[Document] ADD CONSTRAINT
	FK_Document_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

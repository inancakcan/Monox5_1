/*
   22. ožujak 201015:46:25
   User: 
   Server: APPSERVER\SQLSERVER2005
   Database: MonoX2Test
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
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.SnRelationship
	(
	Id uniqueidentifier NOT NULL,
	NoteId uniqueidentifier NULL,
	FileId uniqueidentifier NULL,
	AlbumId uniqueidentifier NULL,
	BlogPostId uniqueidentifier NULL,
	MessageId uniqueidentifier NULL,
	DiscussionMessageId uniqueidentifier NULL,
	CustomId1 uniqueidentifier NULL,
	CustomId2 uniqueidentifier NULL,
	CustomId3 uniqueidentifier NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	PK_SnRelationship PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_SnNote FOREIGN KEY
	(
	NoteId
	) REFERENCES dbo.SnNote
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION
	
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_SnFile FOREIGN KEY
	(
	FileId
	) REFERENCES dbo.SnFile
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_SnAlbum FOREIGN KEY
	(
	AlbumId
	) REFERENCES dbo.SnAlbum
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_SnDiscussionMessage FOREIGN KEY
	(
	DiscussionMessageId
	) REFERENCES dbo.SnDiscussionMessage
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO

ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_SnMessage FOREIGN KEY
	(
	MessageId
	) REFERENCES dbo.SnMessage
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

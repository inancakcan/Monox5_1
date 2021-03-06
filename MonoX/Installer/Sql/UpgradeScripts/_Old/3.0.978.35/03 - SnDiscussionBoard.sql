/*
   13. siječanj 201012:18:04
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
ALTER TABLE dbo.SnDiscussionBoard
	DROP CONSTRAINT FK_SnDiscussionBoard_SnGroup
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_SnDiscussionBoard
	(
	Id uniqueidentifier NOT NULL,
	SnGroupId uniqueidentifier NULL,
	Name nvarchar(500) NOT NULL,
	UserId uniqueidentifier NULL,
	DateCreated datetime NOT NULL,
	Description nvarchar(MAX) NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.SnDiscussionBoard)
	 EXEC('INSERT INTO dbo.Tmp_SnDiscussionBoard (Id, SnGroupId, Name)
		SELECT Id, SnGroupId, Name FROM dbo.SnDiscussionBoard WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.SnDiscussionTopic
	DROP CONSTRAINT FK_SnDiscussionTopic_SnDiscussionBoard
GO
DROP TABLE dbo.SnDiscussionBoard
GO
EXECUTE sp_rename N'dbo.Tmp_SnDiscussionBoard', N'SnDiscussionBoard', 'OBJECT' 
GO
ALTER TABLE dbo.SnDiscussionBoard ADD CONSTRAINT
	PK_SnDiscussionBoard PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SnDiscussionBoard ADD CONSTRAINT
	FK_SnDiscussionBoard_SnGroup FOREIGN KEY
	(
	SnGroupId
	) REFERENCES dbo.SnGroup
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnDiscussionBoard ADD CONSTRAINT
	FK_SnDiscussionBoard_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnDiscussionTopic ADD CONSTRAINT
	FK_SnDiscussionTopic_SnDiscussionBoard FOREIGN KEY
	(
	SnDiscussionBoardId
	) REFERENCES dbo.SnDiscussionBoard
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

/*
   13. siječanj 201012:16:01
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
CREATE TABLE dbo.SnDiscussionTopic
	(
	Id uniqueidentifier NOT NULL,
	SnDiscussionBoardId uniqueidentifier NOT NULL,
	Title nvarchar(500) NOT NULL,
	UserId uniqueidentifier NULL,
	CreatedDate datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.SnDiscussionTopic ADD CONSTRAINT
	PK_SnDiscussionTopic PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

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
ALTER TABLE dbo.SnDiscussionTopic ADD CONSTRAINT
	FK_SnDiscussionTopic_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

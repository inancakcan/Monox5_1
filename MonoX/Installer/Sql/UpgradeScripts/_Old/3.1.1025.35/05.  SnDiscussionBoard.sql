/*
   21. siječanj 201013:48:17
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
ALTER TABLE dbo.SnDiscussionBoard
	DROP CONSTRAINT FK_SnDiscussionBoard_SnGroup
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnDiscussionTopic
	DROP CONSTRAINT FK_SnDiscussionTopic_SnDiscussionBoard
GO
COMMIT
BEGIN TRANSACTION
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
	 ON DELETE  CASCADE 
	
GO
COMMIT

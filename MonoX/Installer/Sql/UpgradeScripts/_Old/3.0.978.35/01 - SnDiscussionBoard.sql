/*
   13. siječanj 201012:02:51
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
CREATE TABLE dbo.SnDiscussionBoard
	(
	Id uniqueidentifier NOT NULL,
	SnGroupId uniqueidentifier NULL,
	Name nvarchar(500) NOT NULL
	)  ON [PRIMARY]
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
COMMIT

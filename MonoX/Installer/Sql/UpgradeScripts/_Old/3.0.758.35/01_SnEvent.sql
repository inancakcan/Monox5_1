/*
   4. prosinac 200913:25:46
   User: 
   Server: APPSERVER\SQLSERVER2005
   Database: MonoX2
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
ALTER TABLE dbo.SnEvent
	DROP CONSTRAINT FK_SnEvent_SnObject
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnEvent
	DROP CONSTRAINT FK_SnEvent_SnEventType
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnEvent
	DROP CONSTRAINT FK_SnEvent_aspnet_Users
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnEvent ADD
	FriendId uniqueidentifier NULL,
	BlogPostId uniqueidentifier NULL,
	SnGroupId uniqueidentifier NULL,
	SnAlbumId uniqueidentifier NULL,
	SnFileId uniqueidentifier NULL
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_aspnet_Users_UserId FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_SnEventType FOREIGN KEY
	(
	EventTypeId
	) REFERENCES dbo.SnEventType
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_aspnet_Users_FriendId FOREIGN KEY
	(
	FriendId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_SnGroup FOREIGN KEY
	(
	SnGroupId
	) REFERENCES dbo.SnGroup
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_SnAlbum FOREIGN KEY
	(
	SnAlbumId
	) REFERENCES dbo.SnAlbum
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnEvent ADD CONSTRAINT
	FK_SnEvent_SnFile FOREIGN KEY
	(
	SnFileId
	) REFERENCES dbo.SnFile
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnEvent
	DROP COLUMN ObjectId
GO
COMMIT

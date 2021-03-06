/*
   22. ožujak 201019:41:20
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
select Has_Perms_By_Name(N'dbo.SnRelationship', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnRelationship', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnRelationship', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
COMMIT
select Has_Perms_By_Name(N'dbo.aspnet_Users', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.aspnet_Users', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.aspnet_Users', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.SnRating
	(
	Id uniqueidentifier NOT NULL,
	UserId uniqueidentifier NULL,
	RelationshipId uniqueidentifier NOT NULL,
	DateEntered datetime NOT NULL,
	Rating int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.SnRating ADD CONSTRAINT
	PK_SnRating PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SnRating ADD CONSTRAINT
	FK_SnRating_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.SnRating ADD CONSTRAINT
	FK_SnRating_SnRelationship FOREIGN KEY
	(
	RelationshipId
	) REFERENCES dbo.SnRelationship
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SnRating', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnRating', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnRating', 'Object', 'CONTROL') as Contr_Per 
/*
   31. prosinac 200913:44:58
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
CREATE TABLE dbo.Blog
	(
	Id uniqueidentifier NOT NULL,
	ApplicationId uniqueidentifier NOT NULL,
	LanguageId uniqueidentifier NOT NULL,
	Name nvarchar(400) NOT NULL,
	Slug nvarchar(400) NOT NULL,
	Description nvarchar(MAX) NULL,
	DateCreated datetime NOT NULL,
	UserId uniqueidentifier NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Blog ADD CONSTRAINT
	PK_Blog PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE UNIQUE NONCLUSTERED INDEX IX_Blog ON dbo.Blog
	(
	Slug
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Blog', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Blog', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Blog', 'Object', 'CONTROL') as Contr_Per 
/*
   četvrtak, 27. ožujak 200810:12:59
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
ALTER TABLE dbo.NewsCategory
	DROP CONSTRAINT DF_NewsCategories_Id
GO
CREATE TABLE dbo.Tmp_NewsCategory
	(
	Id uniqueidentifier NOT NULL,
	ApplicationId uniqueidentifier NOT NULL,
	NewsCategoryId uniqueidentifier NULL,
	Image image NULL,
	[Order] int NOT NULL,
	DateEntered datetime NULL,
	DateModified datetime NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_NewsCategory ADD CONSTRAINT
	DF_NewsCategories_Id DEFAULT (newid()) FOR Id
GO
IF EXISTS(SELECT * FROM dbo.NewsCategory)
	 EXEC('INSERT INTO dbo.Tmp_NewsCategory (Id, NewsCategoryId, Image, [Order], DateEntered, DateModified)
		SELECT Id, NewsCategoryId, Image, [Order], DateEntered, DateModified FROM dbo.NewsCategory WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT FK_NewsItems_NewsCategories
GO
ALTER TABLE dbo.NewsCategoryInRole
	DROP CONSTRAINT FK_NewsCategories_InRoles_NewsCategories
GO
ALTER TABLE dbo.NewsCategory
	DROP CONSTRAINT FK_NewsCategories_NewsCategories
GO
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT FK_NewsCategoriesLocalization_NewsCategories
GO
ALTER TABLE dbo.NewsCategoryTemplate
	DROP CONSTRAINT FK_NewsCategoryTemplate_NewsCategory
GO
DROP TABLE dbo.NewsCategory
GO
EXECUTE sp_rename N'dbo.Tmp_NewsCategory', N'NewsCategory', 'OBJECT' 
GO
ALTER TABLE dbo.NewsCategory ADD CONSTRAINT
	PK_NewsCategories PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.NewsCategory ADD CONSTRAINT
	FK_NewsCategories_NewsCategories FOREIGN KEY
	(
	NewsCategoryId
	) REFERENCES dbo.NewsCategory
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.NewsCategory ADD CONSTRAINT
	FK_NewsCategory_aspnet_Applications FOREIGN KEY
	(
	ApplicationId
	) REFERENCES dbo.aspnet_Applications
	(
	ApplicationId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsCategoryTemplate ADD CONSTRAINT
	FK_NewsCategoryTemplate_NewsCategory FOREIGN KEY
	(
	NewsCategoryId
	) REFERENCES dbo.NewsCategory
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsCategoryLocalization ADD CONSTRAINT
	FK_NewsCategoriesLocalization_NewsCategories FOREIGN KEY
	(
	NewsCategoryId
	) REFERENCES dbo.NewsCategory
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsCategoryInRole ADD CONSTRAINT
	FK_NewsCategories_InRoles_NewsCategories FOREIGN KEY
	(
	NewsCategoryId
	) REFERENCES dbo.NewsCategory
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsItem ADD CONSTRAINT
	FK_NewsItems_NewsCategories FOREIGN KEY
	(
	NewsCategoryId
	) REFERENCES dbo.NewsCategory
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT

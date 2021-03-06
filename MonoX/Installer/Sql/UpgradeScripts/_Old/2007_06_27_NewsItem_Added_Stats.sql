/*
   27. lipanj 200713:22:33
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
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT FK_NewsItems_NewsCategories
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT FK_NewsItems_aspnet_Users
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_Id
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowOnHomePage
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_Revision
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowTitle
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowShortContent
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowCategoryTitle
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowCategoryTitleAsLink
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowFullCategoryPath
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowUserName
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowDateEntered
GO
ALTER TABLE dbo.NewsItem
	DROP CONSTRAINT DF_NewsItems_ShowDateModified
GO
CREATE TABLE dbo.Tmp_NewsItem
	(
	Id uniqueidentifier NOT NULL ROWGUIDCOL,
	NewsCategoryId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NOT NULL,
	ShowOnHomePage bit NOT NULL,
	Revision int NOT NULL,
	ShowTitle bit NOT NULL,
	ShowShortContent bit NOT NULL,
	ShowCategoryTitle bit NOT NULL,
	ShowCategoryTitleAsLink bit NOT NULL,
	ShowFullCategoryPath bit NOT NULL,
	ShowUserName bit NOT NULL,
	ShowDateEntered bit NOT NULL,
	ShowDateModified bit NOT NULL,
	Raiting int NULL,
	ViewCount int NULL,
	DateEntered datetime NULL,
	DateModified datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_Id DEFAULT (newid()) FOR Id
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowOnHomePage DEFAULT ((0)) FOR ShowOnHomePage
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_Revision DEFAULT ((0)) FOR Revision
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowTitle DEFAULT ((1)) FOR ShowTitle
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowShortContent DEFAULT ((1)) FOR ShowShortContent
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowCategoryTitle DEFAULT ((0)) FOR ShowCategoryTitle
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowCategoryTitleAsLink DEFAULT ((0)) FOR ShowCategoryTitleAsLink
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowFullCategoryPath DEFAULT ((1)) FOR ShowFullCategoryPath
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowUserName DEFAULT ((1)) FOR ShowUserName
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowDateEntered DEFAULT ((1)) FOR ShowDateEntered
GO
ALTER TABLE dbo.Tmp_NewsItem ADD CONSTRAINT
	DF_NewsItems_ShowDateModified DEFAULT ((1)) FOR ShowDateModified
GO
IF EXISTS(SELECT * FROM dbo.NewsItem)
	 EXEC('INSERT INTO dbo.Tmp_NewsItem (Id, NewsCategoryId, UserId, ShowOnHomePage, Revision, ShowTitle, ShowShortContent, ShowCategoryTitle, ShowCategoryTitleAsLink, ShowFullCategoryPath, ShowUserName, ShowDateEntered, ShowDateModified, DateEntered, DateModified)
		SELECT Id, NewsCategoryId, UserId, ShowOnHomePage, Revision, ShowTitle, ShowShortContent, ShowCategoryTitle, ShowCategoryTitleAsLink, ShowFullCategoryPath, ShowUserName, ShowDateEntered, ShowDateModified, DateEntered, DateModified FROM dbo.NewsItem WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.NewsFile
	DROP CONSTRAINT FK_NewsFiles_NewsItems
GO
ALTER TABLE dbo.NewsPublishQueue
	DROP CONSTRAINT FK_NewsPublishQueue_NewsItem
GO
ALTER TABLE dbo.NewsItemLocalization
	DROP CONSTRAINT FK_NewsItemsLocalization_NewsItems
GO
DROP TABLE dbo.NewsItem
GO
EXECUTE sp_rename N'dbo.Tmp_NewsItem', N'NewsItem', 'OBJECT' 
GO
ALTER TABLE dbo.NewsItem ADD CONSTRAINT
	PK_NewsItems PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.NewsItem ADD CONSTRAINT
	FK_NewsItems_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
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
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsItemLocalization ADD CONSTRAINT
	FK_NewsItemsLocalization_NewsItems FOREIGN KEY
	(
	NewsId
	) REFERENCES dbo.NewsItem
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsPublishQueue ADD CONSTRAINT
	FK_NewsPublishQueue_NewsItem FOREIGN KEY
	(
	NewsItemId
	) REFERENCES dbo.NewsItem
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsFile ADD CONSTRAINT
	FK_NewsFiles_NewsItems FOREIGN KEY
	(
	NewsItemId
	) REFERENCES dbo.NewsItem
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT

/*
   12. lipanj 200811:23:38
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
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT FK_NewsCategoriesLocalization_NewsCategories
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT FK_NewsCategoriesLocalization_Language
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT DF_NewsCategoriesLocalization_Id
GO
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT DF_NewsCategoriesLocalization_Published
GO
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT DF_NewsCategoriesLocalization_DateEntered
GO
ALTER TABLE dbo.NewsCategoryLocalization
	DROP CONSTRAINT DF_NewsCategoriesLocalization_DateModified
GO
CREATE TABLE dbo.Tmp_NewsCategoryLocalization
	(
	Id uniqueidentifier NOT NULL ROWGUIDCOL,
	NewsCategoryId uniqueidentifier NOT NULL,
	LanguageId uniqueidentifier NOT NULL,
	Title nvarchar(150) NOT NULL,
	Name nvarchar(150) NOT NULL,
	Description nvarchar(MAX) NULL,
	Published bit NOT NULL,
	DateEntered datetime NULL,
	DateModified datetime NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_NewsCategoryLocalization ADD CONSTRAINT
	DF_NewsCategoriesLocalization_Id DEFAULT (newid()) FOR Id
GO
ALTER TABLE dbo.Tmp_NewsCategoryLocalization ADD CONSTRAINT
	DF_NewsCategoriesLocalization_Published DEFAULT ((1)) FOR Published
GO
ALTER TABLE dbo.Tmp_NewsCategoryLocalization ADD CONSTRAINT
	DF_NewsCategoriesLocalization_DateEntered DEFAULT (getdate()) FOR DateEntered
GO
ALTER TABLE dbo.Tmp_NewsCategoryLocalization ADD CONSTRAINT
	DF_NewsCategoriesLocalization_DateModified DEFAULT (getdate()) FOR DateModified
GO
IF EXISTS(SELECT * FROM dbo.NewsCategoryLocalization)
	 EXEC('INSERT INTO dbo.Tmp_NewsCategoryLocalization (Id, NewsCategoryId, LanguageId, Title, Name, Description, Published, DateEntered, DateModified)
		SELECT Id, NewsCategoryId, LanguageId, Title, Name, Description, Published, DateEntered, DateModified FROM dbo.NewsCategoryLocalization WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.NewsCategoryLocalization
GO
EXECUTE sp_rename N'dbo.Tmp_NewsCategoryLocalization', N'NewsCategoryLocalization', 'OBJECT' 
GO
ALTER TABLE dbo.NewsCategoryLocalization ADD CONSTRAINT
	PK_NewsCategoriesLocalization PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.NewsCategoryLocalization ADD CONSTRAINT
	FK_NewsCategoriesLocalization_Language FOREIGN KEY
	(
	LanguageId
	) REFERENCES dbo.Language
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
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

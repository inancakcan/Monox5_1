/*
   23. travanj 200710:44:13
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
ALTER TABLE dbo.NewsFiles
	DROP CONSTRAINT FK_NewsFiles_NewsItems
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NewsFiles
	DROP CONSTRAINT DF_NewsFiles_Id
GO
CREATE TABLE dbo.Tmp_NewsFiles
	(
	Id uniqueidentifier NOT NULL,
	NewsItemId uniqueidentifier NOT NULL,
	ContentType nvarchar(50) NOT NULL,
	Name nvarchar(50) NULL,
	[Content] varbinary(MAX) NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_NewsFiles ADD CONSTRAINT
	DF_NewsFiles_Id DEFAULT (newid()) FOR Id
GO
IF EXISTS(SELECT * FROM dbo.NewsFiles)
	 EXEC('INSERT INTO dbo.Tmp_NewsFiles (Id, NewsItemId, Name, [Content])
		SELECT Id, NewsItemId, Name, [Content] FROM dbo.NewsFiles WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.NewsFiles
GO
EXECUTE sp_rename N'dbo.Tmp_NewsFiles', N'NewsFiles', 'OBJECT' 
GO
ALTER TABLE dbo.NewsFiles ADD CONSTRAINT
	PK_NewsFiles PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.NewsFiles ADD CONSTRAINT
	FK_NewsFiles_NewsItems FOREIGN KEY
	(
	NewsItemId
	) REFERENCES dbo.NewsItems
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT

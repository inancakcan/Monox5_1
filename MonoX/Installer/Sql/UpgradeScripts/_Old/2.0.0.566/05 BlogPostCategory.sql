
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
CREATE TABLE dbo.BlogPostCategory
	(
	Id uniqueidentifier NOT NULL,
	BlogPostId uniqueidentifier NOT NULL,
	BlogCategoryId uniqueidentifier NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.BlogPostCategory ADD CONSTRAINT
	PK_BlogPostCategory PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE dbo.BlogPostCategory ADD CONSTRAINT
	FK_BlogPostCategory_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.BlogPostCategory ADD CONSTRAINT
	FK_BlogPostCategory_BlogCategory FOREIGN KEY
	(
	BlogCategoryId
	) REFERENCES dbo.BlogCategory
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO

COMMIT

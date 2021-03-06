
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
CREATE TABLE dbo.BlogPostRole
	(
	Id uniqueidentifier NOT NULL,
	BlogPostId uniqueidentifier NOT NULL,
	RoleId uniqueidentifier NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.BlogPostRole ADD CONSTRAINT
	PK_BlogPostRole PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE dbo.BlogPostRole ADD CONSTRAINT
	FK_BlogPostRole_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.BlogPostRole ADD CONSTRAINT
	FK_BlogPostRole_aspnet_Roles FOREIGN KEY
	(
	RoleId
	) REFERENCES dbo.aspnet_Roles
	(
	RoleId
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT

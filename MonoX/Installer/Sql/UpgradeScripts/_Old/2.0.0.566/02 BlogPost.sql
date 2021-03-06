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
CREATE TABLE dbo.BlogPost
	(
	Id uniqueidentifier NOT NULL,
	IdentityId int NOT NULL IDENTITY (1, 1),
	Title nvarchar(500) NOT NULL,
	Description nvarchar(MAX) NULL,
	PostContent nvarchar(MAX) NOT NULL,
	DateCreated datetime NULL,
	DateModified datetime NULL,
	IsPublished bit NOT NULL,
	IsCommentEnabled bit NOT NULL,
	Raters int NOT NULL,
	Rating float(53) NOT NULL,
	Slug nvarchar(500) NULL,
	UserId uniqueidentifier NOT NULL,
	ApplicationId uniqueidentifier NOT NULL,
	LanguageId uniqueidentifier NOT NULL,
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	DF_BlogPost_IsPublished DEFAULT 1 FOR IsPublished
GO
ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	DF_BlogPost_IsCommentEnabled DEFAULT 1 FOR IsCommentEnabled
GO
ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	DF_BlogPost_Raters DEFAULT 0 FOR Raters
GO
ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	DF_BlogPost_Rating DEFAULT 0 FOR Rating
GO

ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	PK_BlogPost PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO


ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	FK_BlogPost_aspnet_Users FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Users
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	FK_BlogPost_aspnet_Applications FOREIGN KEY
	(
	ApplicationId
	) REFERENCES dbo.aspnet_Applications
	(
	ApplicationId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	FK_BlogPost_Language FOREIGN KEY
	(
	LanguageId
	) REFERENCES dbo.Language
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

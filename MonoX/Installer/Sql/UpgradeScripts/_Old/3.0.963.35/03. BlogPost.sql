/*
   31. prosinac 200913:53:01
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
select Has_Perms_By_Name(N'dbo.Blog', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Blog', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Blog', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT FK_BlogPost_Language
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Language', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Language', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Language', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT FK_BlogPost_aspnet_Applications
GO
COMMIT
select Has_Perms_By_Name(N'dbo.aspnet_Applications', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.aspnet_Applications', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.aspnet_Applications', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT FK_BlogPost_aspnet_Users
GO
COMMIT
select Has_Perms_By_Name(N'dbo.aspnet_Users', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.aspnet_Users', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.aspnet_Users', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT DF_BlogPost_IsPublished
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT DF_BlogPost_IsCommentEnabled
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT DF_BlogPost_Raters
GO
ALTER TABLE dbo.BlogPost
	DROP CONSTRAINT DF_BlogPost_Rating
GO
CREATE TABLE dbo.Tmp_BlogPost
	(
	Id uniqueidentifier NOT NULL,
	IdentityId int NOT NULL IDENTITY (1, 1),
	BlogId uniqueidentifier NOT NULL,
	Title nvarchar(500) NOT NULL,
	Description nvarchar(MAX) NULL,
	PostContent nvarchar(MAX) NOT NULL,
	DateCreated datetime NULL,
	DateModified datetime NULL,
	IsPublished bit NOT NULL,
	DatePublished datetime NULL,	
	IsCommentEnabled bit NOT NULL,
	Raters int NOT NULL,
	Rating float(53) NOT NULL,
	Slug nvarchar(500) NOT NULL,
	UserId uniqueidentifier NOT NULL,
	ApplicationId uniqueidentifier NOT NULL,
	LanguageId uniqueidentifier NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_BlogPost ADD CONSTRAINT
	DF_BlogPost_IsPublished DEFAULT ((1)) FOR IsPublished
GO
ALTER TABLE dbo.Tmp_BlogPost ADD CONSTRAINT
	DF_BlogPost_IsCommentEnabled DEFAULT ((1)) FOR IsCommentEnabled
GO
ALTER TABLE dbo.Tmp_BlogPost ADD CONSTRAINT
	DF_BlogPost_Raters DEFAULT ((0)) FOR Raters
GO
ALTER TABLE dbo.Tmp_BlogPost ADD CONSTRAINT
	DF_BlogPost_Rating DEFAULT ((0)) FOR Rating
GO
SET IDENTITY_INSERT dbo.Tmp_BlogPost ON
GO
IF EXISTS(SELECT * FROM dbo.BlogPost)
	 EXEC('INSERT INTO dbo.Tmp_BlogPost (Id, IdentityId, Title, Description, PostContent, DateCreated, DateModified, IsPublished, DatePublished, IsCommentEnabled, Raters, Rating, Slug, UserId, ApplicationId, LanguageId)
		SELECT Id, IdentityId, Title, Description, PostContent, DateCreated, DateModified, IsPublished, DatePublished, IsCommentEnabled, Raters, Rating, Slug, UserId, ApplicationId, LanguageId FROM dbo.BlogPost WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_BlogPost OFF
GO
ALTER TABLE dbo.BlogComment
	DROP CONSTRAINT FK_BlogComment_BlogPost
GO
ALTER TABLE dbo.BlogPostNotification
	DROP CONSTRAINT FK_BlogPostNotification_BlogPost
GO
ALTER TABLE dbo.BlogPostRole
	DROP CONSTRAINT FK_BlogPostRole_BlogPost
GO
ALTER TABLE dbo.BlogPostCategory
	DROP CONSTRAINT FK_BlogPostCategory_BlogPost
GO
ALTER TABLE dbo.BlogPostTag
	DROP CONSTRAINT FK_BlogPostTag_BlogPost
GO
ALTER TABLE dbo.SnFile
	DROP CONSTRAINT FK_SnFile_BlogPost
GO
ALTER TABLE dbo.SnEvent
	DROP CONSTRAINT FK_SnEvent_BlogPost
GO
ALTER TABLE dbo.SnComment
	DROP CONSTRAINT FK_SnComment_BlogPost
GO

DROP TABLE dbo.BlogPost
GO
EXECUTE sp_rename N'dbo.Tmp_BlogPost', N'BlogPost', 'OBJECT' 
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
ALTER TABLE dbo.BlogPost ADD CONSTRAINT
	FK_Blog_BlogPost FOREIGN KEY
	(
	BlogId
	) REFERENCES dbo.Blog
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BlogPost', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BlogPost', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BlogPost', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnComment ADD CONSTRAINT
	FK_SnComment_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SnComment', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnComment', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnComment', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
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
COMMIT
select Has_Perms_By_Name(N'dbo.SnEvent', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnEvent', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnEvent', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.SnFile ADD CONSTRAINT
	FK_SnFile_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SnFile', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnFile', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnFile', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogPostTag ADD CONSTRAINT
	FK_BlogPostTag_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BlogPostTag', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BlogPostTag', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BlogPostTag', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
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
COMMIT
select Has_Perms_By_Name(N'dbo.BlogPostCategory', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BlogPostCategory', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BlogPostCategory', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
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
COMMIT
select Has_Perms_By_Name(N'dbo.BlogPostRole', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BlogPostRole', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BlogPostRole', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogPostNotification ADD CONSTRAINT
	FK_BlogPostNotification_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BlogPostNotification', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BlogPostNotification', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BlogPostNotification', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BlogComment ADD CONSTRAINT
	FK_BlogComment_BlogPost FOREIGN KEY
	(
	BlogPostId
	) REFERENCES dbo.BlogPost
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BlogComment', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BlogComment', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BlogComment', 'Object', 'CONTROL') as Contr_Per 
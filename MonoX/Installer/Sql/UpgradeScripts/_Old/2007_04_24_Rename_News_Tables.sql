USE [MonoX2]
/*
   24. travanj 20079:58:24
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
EXECUTE sp_rename N'dbo.NewsCategories', N'NewsCategory', 'OBJECT' 
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.NewsCategoriesInRoles', N'NewsCategoryInRole', 'OBJECT' 
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.NewsCategoriesLocalization', N'NewsCategoryLocalization', 'OBJECT' 
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.NewsFiles', N'NewsFile', 'OBJECT' 
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.NewsItems', N'NewsItem', 'OBJECT' 
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.NewsItemsLocalization', N'NewsItemLocalization', 'OBJECT' 
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.NewsMetaIgnoredWords', N'NewsMetaIgnoredWord', 'OBJECT' 
GO
COMMIT

/*
   7. prosinac 200911:35:29
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
ALTER TABLE dbo.SnEventDetail
	DROP CONSTRAINT FK_SnEventDetail_SnEvent
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SnEvent', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnEvent', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnEvent', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SnEventDetail', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SnEventDetail', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SnEventDetail', 'Object', 'CONTROL') as Contr_Per 
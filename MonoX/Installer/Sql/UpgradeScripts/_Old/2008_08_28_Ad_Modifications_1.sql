/*
   28. kolovoz 200816:11:51
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
ALTER TABLE dbo.Ad
	DROP CONSTRAINT FK_Ads_aspnet_Users
GO
COMMIT
BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.Ad.UserId', N'Tmp_CampaignId', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.Ad.Tmp_CampaignId', N'CampaignId', 'COLUMN' 
GO
COMMIT

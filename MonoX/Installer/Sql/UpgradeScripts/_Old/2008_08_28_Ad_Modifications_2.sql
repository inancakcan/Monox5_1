/*
   28. kolovoz 200816:12:43
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
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Ad ADD CONSTRAINT
	FK_Ad_Campaign FOREIGN KEY
	(
	CampaignId
	) REFERENCES dbo.Campaign
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT

BEGIN TRANSACTION
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 02/23/2009 12:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[Id] [uniqueidentifier] NOT NULL,
	[BirthDate] [datetime] NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](250) NULL,
	[ZipCode] [nvarchar](250) NULL,
	[Country] [nvarchar](250) NULL,
	[AboutMySelf] [nvarchar](500) NULL,
	[WebSites] [nvarchar](500) NULL,
	[EMailVerified] [bit] NOT NULL CONSTRAINT [DF_UserProfile_EMailVerified]  DEFAULT ((0)),
	[TermsAndConditionsId] [uniqueidentifier] NULL,
	[TermsAndConditionsAgreedDate] [datetime] NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_aspnet_Users] FOREIGN KEY([Id])
REFERENCES [dbo].[aspnet_Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_aspnet_Users]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_TermsAndConditions] FOREIGN KEY([TermsAndConditionsId])
REFERENCES [dbo].[TermsAndConditions] ([Id])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_TermsAndConditions]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_UserAvatar] FOREIGN KEY([Id])
REFERENCES [dbo].[UserAvatar] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_UserAvatar]
COMMIT
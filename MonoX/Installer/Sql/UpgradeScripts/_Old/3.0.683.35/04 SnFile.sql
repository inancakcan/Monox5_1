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
CREATE TABLE [dbo].[SnFile](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Url] [nvarchar](2000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[PrivacyFlag] [int] NULL,
	[ThumbnailUrl] [nvarchar](2000) COLLATE Latin1_General_CI_AS NULL,
	[DateCreated] [datetime] NOT NULL,
	[AlbumId] [uniqueidentifier] NULL,
	[MessageId] [uniqueidentifier] NULL,
	[NoteId] [uniqueidentifier] NULL,
	[BlogPostId] [uniqueidentifier] NULL,
	[CustomId1] [uniqueidentifier] NULL,
	[CustomId2] [uniqueidentifier] NULL,
	[CustomId3] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SnPhoto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SnFile]  WITH CHECK ADD  CONSTRAINT [FK_SnFile_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[SnFile] CHECK CONSTRAINT [FK_SnFile_aspnet_Users]
GO
ALTER TABLE [dbo].[SnFile]  WITH CHECK ADD  CONSTRAINT [FK_SnFile_BlogPost] FOREIGN KEY([BlogPostId])
REFERENCES [dbo].[BlogPost] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SnFile] CHECK CONSTRAINT [FK_SnFile_BlogPost]
GO
ALTER TABLE [dbo].[SnFile]  WITH CHECK ADD  CONSTRAINT [FK_SnFile_SnAlbum] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[SnAlbum] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SnFile] CHECK CONSTRAINT [FK_SnFile_SnAlbum]
GO
ALTER TABLE [dbo].[SnFile]  WITH CHECK ADD  CONSTRAINT [FK_SnFile_SnMessage] FOREIGN KEY([MessageId])
REFERENCES [dbo].[SnMessage] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SnFile] CHECK CONSTRAINT [FK_SnFile_SnMessage]
GO
ALTER TABLE [dbo].[SnFile]  WITH CHECK ADD  CONSTRAINT [FK_SnFile_SnNote] FOREIGN KEY([NoteId])
REFERENCES [dbo].[SnNote] ([Id])
ON DELETE CASCADE
GO
COMMIT



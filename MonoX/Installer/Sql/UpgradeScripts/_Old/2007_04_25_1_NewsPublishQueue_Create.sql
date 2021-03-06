USE [MonoX2]
GO
/****** Object:  Table [dbo].[NewsPublishQueue]    Script Date: 04/25/2007 17:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsPublishQueue](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_NewsPublishQueue_Id]  DEFAULT (newid()),
	[NewsItemId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[DateEntered] [datetime] NOT NULL CONSTRAINT [DF_NewsPublishQueue_DateEntered]  DEFAULT (getdate()),
	[DateModified] [datetime] NOT NULL CONSTRAINT [DF_NewsPublishQueue_DateModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_NewsPublishQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [MonoX2]
GO
ALTER TABLE [dbo].[NewsPublishQueue]  WITH CHECK ADD  CONSTRAINT [FK_NewsPublishQueue_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[NewsPublishQueue]  WITH CHECK ADD  CONSTRAINT [FK_NewsPublishQueue_NewsItem] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[NewsItem] ([Id])
ON DELETE CASCADE
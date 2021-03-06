USE [MonoX2]
GO
/****** Object:  Table [dbo].[NewsItemsLocalization]    Script Date: 04/23/2007 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsItemsLocalization](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_NewsItemsLocalization_Id]  DEFAULT (newid()),
	[NewsId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](150) COLLATE Latin1_General_CI_AS NULL,
	[ShortContent] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Content] [text] COLLATE Latin1_General_CI_AS NULL,
	[Published] [bit] NOT NULL CONSTRAINT [DF_NewsItemsLocalization_Published]  DEFAULT ((1)),
	[PublishStart] [datetime] NULL,
	[PublishEnd] [datetime] NULL,
	[MetaDescription] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[MetaKeywords] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_NewsItemsLocalization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [MonoX2]
GO
ALTER TABLE [dbo].[NewsItemsLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsItemsLocalization_NewsItems] FOREIGN KEY([NewsId])
REFERENCES [dbo].[NewsItems] ([Id])
ON DELETE CASCADE
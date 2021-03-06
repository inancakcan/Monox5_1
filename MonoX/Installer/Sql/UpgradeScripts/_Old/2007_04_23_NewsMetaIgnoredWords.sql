USE [MonoX2]
GO
/****** Object:  Table [dbo].[NewsMetaIgnoredWords]    Script Date: 04/23/2007 15:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsMetaIgnoredWords](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_IgnoredWords_Id]  DEFAULT (newid()),
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Word] [nvarchar](255) COLLATE Croatian_CI_AS NOT NULL,
	[DateEntered] [datetime] NULL CONSTRAINT [DF_NewsMetaIgnoredWords_DateEntered]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL CONSTRAINT [DF_NewsMetaIgnoredWords_DateModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_IgnoredWords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [MonoX2]
GO
ALTER TABLE [dbo].[NewsMetaIgnoredWords]  WITH CHECK ADD  CONSTRAINT [FK_NewsMetaIgnoredWords_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
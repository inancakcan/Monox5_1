USE [MonoX2]
GO
/****** Object:  Table [dbo].[NewsCategoriesLocalization]    Script Date: 04/23/2007 16:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategoriesLocalization](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_NewsCategoriesLocalization_Id]  DEFAULT (newid()),
	[NewsCategoryId] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Published] [bit] NOT NULL CONSTRAINT [DF_NewsCategoriesLocalization_Published]  DEFAULT ((1)),
	[DateEntered] [datetime] NULL CONSTRAINT [DF_NewsCategoriesLocalization_DateEntered]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL CONSTRAINT [DF_NewsCategoriesLocalization_DateModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_NewsCategoriesLocalization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [MonoX2]
GO
ALTER TABLE [dbo].[NewsCategoriesLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategoriesLocalization_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsCategoriesLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategoriesLocalization_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategories] ([Id])
ON DELETE CASCADE
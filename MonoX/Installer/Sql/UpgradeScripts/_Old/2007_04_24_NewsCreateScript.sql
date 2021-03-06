SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsCategory](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NewsCategories_Id]  DEFAULT (newid()),
	[NewsCategoryId] [uniqueidentifier] NULL,
	[Image] [image] NULL,
	[Order] [int] NOT NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_NewsCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsItemLocalization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsItemLocalization](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_NewsItemsLocalization_Id]  DEFAULT (newid()),
	[NewsId] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[ShortContent] [nvarchar](255) NULL,
	[Content] [text] NULL,
	[Published] [bit] NOT NULL CONSTRAINT [DF_NewsItemsLocalization_Published]  DEFAULT ((1)),
	[PublishStart] [datetime] NULL,
	[PublishEnd] [datetime] NULL,
	[MetaDescription] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](255) NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_NewsItemsLocalization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsCategoryLocalization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsCategoryLocalization](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_NewsCategoriesLocalization_Id]  DEFAULT (newid()),
	[NewsCategoryId] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Published] [bit] NOT NULL CONSTRAINT [DF_NewsCategoriesLocalization_Published]  DEFAULT ((1)),
	[DateEntered] [datetime] NULL CONSTRAINT [DF_NewsCategoriesLocalization_DateEntered]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL CONSTRAINT [DF_NewsCategoriesLocalization_DateModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_NewsCategoriesLocalization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsMetaIgnoredWord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsMetaIgnoredWord](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_IgnoredWords_Id]  DEFAULT (newid()),
	[LanguageId] [uniqueidentifier] NOT NULL,
	[Word] [nvarchar](255) NOT NULL,
	[DateEntered] [datetime] NULL CONSTRAINT [DF_NewsMetaIgnoredWords_DateEntered]  DEFAULT (getdate()),
	[DateModified] [datetime] NULL CONSTRAINT [DF_NewsMetaIgnoredWords_DateModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_IgnoredWords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsCategoryInRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsCategoryInRole](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NewsCategories_InRoles_Id]  DEFAULT (newid()),
	[NewsCategoryId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_NewsCategories_InRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsItem](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_NewsItems_Id]  DEFAULT (newid()),
	[NewsCategoryId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ShowOnHomePage] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowOnHomePage]  DEFAULT ((0)),
	[Revision] [int] NOT NULL CONSTRAINT [DF_NewsItems_Revision]  DEFAULT ((0)),
	[ShowTitle] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowTitle]  DEFAULT ((1)),
	[ShowShortContent] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowShortContent]  DEFAULT ((1)),
	[ShowCategoryTitle] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowCategoryTitle]  DEFAULT ((0)),
	[ShowCategoryTitleAsLink] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowCategoryTitleAsLink]  DEFAULT ((0)),
	[ShowFullCategoryPath] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowFullCategoryPath]  DEFAULT ((1)),
	[ShowUserName] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowUserName]  DEFAULT ((1)),
	[ShowDateEntered] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowDateEntered]  DEFAULT ((1)),
	[ShowDateModified] [bit] NOT NULL CONSTRAINT [DF_NewsItems_ShowDateModified]  DEFAULT ((1)),
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_NewsItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsFile](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NewsFiles_Id]  DEFAULT (newid()),
	[NewsItemId] [uniqueidentifier] NOT NULL,
	[ContentType] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Content] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_NewsFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategories_NewsCategories]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategory]'))
ALTER TABLE [dbo].[NewsCategory]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategories_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsItemLocalization_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsItemLocalization]'))
ALTER TABLE [dbo].[NewsItemLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsItemLocalization_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsItemsLocalization_NewsItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsItemLocalization]'))
ALTER TABLE [dbo].[NewsItemLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsItemsLocalization_NewsItems] FOREIGN KEY([NewsId])
REFERENCES [dbo].[NewsItem] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategoriesLocalization_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategoryLocalization]'))
ALTER TABLE [dbo].[NewsCategoryLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategoriesLocalization_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategoriesLocalization_NewsCategories]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategoryLocalization]'))
ALTER TABLE [dbo].[NewsCategoryLocalization]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategoriesLocalization_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsMetaIgnoredWords_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsMetaIgnoredWord]'))
ALTER TABLE [dbo].[NewsMetaIgnoredWord]  WITH CHECK ADD  CONSTRAINT [FK_NewsMetaIgnoredWords_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategories_InRoles_aspnet_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategoryInRole]'))
ALTER TABLE [dbo].[NewsCategoryInRole]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategories_InRoles_aspnet_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategories_InRoles_NewsCategories]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategoryInRole]'))
ALTER TABLE [dbo].[NewsCategoryInRole]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategories_InRoles_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsItems_aspnet_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsItem]'))
ALTER TABLE [dbo].[NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_NewsItems_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsItems_NewsCategories]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsItem]'))
ALTER TABLE [dbo].[NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_NewsItems_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsFiles_NewsItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsFile]'))
ALTER TABLE [dbo].[NewsFile]  WITH CHECK ADD  CONSTRAINT [FK_NewsFiles_NewsItems] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[NewsItem] ([Id])
ON DELETE CASCADE

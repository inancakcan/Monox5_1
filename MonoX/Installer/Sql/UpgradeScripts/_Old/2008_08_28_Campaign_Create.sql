USE [MonoX2]
GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 08/31/2008 06:49:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[Start] [datetime] NULL,
	[End] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[DateEntered] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

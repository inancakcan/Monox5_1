/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[SnGroup]';
DELETE FROM [dbo].[SnGroup];
GO

PRINT N'Inserting values into [dbo].[SnGroup]';

INSERT INTO [dbo].[SnGroup] ([Id],[Name],[DateCreated],[MemberCount],[Description],[IsPublic],[UserId],[ImageUrl],[GroupCategoryId],[Slug]) VALUES ('BD56FD7B-D79E-42D3-9146-9DA4015065E7',N'ASP.NET Developers','2010-06-30T21:22:20.000',5,N'Learn all about building ASP.NET applications - server controls, events, validation, and all other topics related to Web Forms programming.',1,'67C919E2-8DF4-476A-B312-C26F82A36CFB',N'~/Upload/user/admin/group/e_1WvZ7X00KRRp2kAVBl5w/ASP.net-developers.jpg',
    '4236D1BC-291E-4323-8B15-9DA50126457B',N'ASP-NET-Developers');
GO
INSERT INTO [dbo].[SnGroup] ([Id],[Name],[DateCreated],[MemberCount],[Description],[IsPublic],[UserId],[ImageUrl],[GroupCategoryId],[Slug]) VALUES ('83E52241-AC0D-4954-96D8-9DA5017DD9C6',N'Search Engine Optimization ','2010-06-30T20:51:15.000',6,N'We are a group of SEO (Search Engine Optimization), SEM (Search Engine Marketing), social media and online marketing specialists who have been working online and experimenting with various technologies in the fields of Search Engine Optimization, S' +
    N'ocial Media, online marketing, Pay Per Click advertisements and Directory subscriptions. ',1,'67C919E2-8DF4-476A-B312-C26F82A36CFB',N'~/Upload/user/admin/group/QSLlgw2sVEmW2J2lAX3Zxg/SEO.jpg','46B03C2F-2B20-419D-910B-9DA501266E40',N'Search-Engine-Optimization');
GO
INSERT INTO [dbo].[SnGroup] ([Id],[Name],[DateCreated],[MemberCount],[Description],[IsPublic],[UserId],[ImageUrl],[GroupCategoryId],[Slug]) VALUES ('D0C404A2-AF59-4ED4-B2AD-9DA501859B92',N'Web design','2010-06-30T21:55:40.000',6,N'Our goal is to provide an open resource for topics of interest related to Web designers and Web development. We seek to help members improve their skills in Web based Graphic Design, GUI, Adobe Creative Suite, Flash, ...',1,'67C919E2-8DF4-476A-B312-C26F82A36CFB',N'~' +
    N'/Upload/user/admin/group/ogTE0Fmv1E6yrZ2lAYWbkg/Web-Design.jpg','B10090BE-7382-44AA-8823-9DA501263747',N'Web-design');
GO
INSERT INTO [dbo].[SnGroup] ([Id],[Name],[DateCreated],[MemberCount],[Description],[IsPublic],[UserId],[ImageUrl],[GroupCategoryId],[Slug]) VALUES ('3FF1C79E-BB9E-4519-A4F7-9DA501862E48',N'Content Management','2010-06-30T19:18:32.000',6,N'Meet CMS professionals and hobbyists who want to learn about current and best practices, state of the art, and current quality practices for these CMS and related system used in business, government, and academia for collaboration, Web site development, eCo' +
    N'mmerce, and social networking applications.',1,'67C919E2-8DF4-476A-B312-C26F82A36CFB',N'~/Upload/user/admin/group/nsfxP567GUWk952lAYYuSA/Content-Management.jpg','B10090BE-7382-44AA-8823-9DA501263747',N'Content-Management');
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


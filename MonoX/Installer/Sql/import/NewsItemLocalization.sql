/*
 *
 * Automatically generated for MonoX installation
 *
 */

USE MonoX2;
GO


SET NOCOUNT ON
/* ======================================================================= */

PRINT N'Deleting existing values from [dbo].[NewsItemLocalization]';
DELETE FROM [dbo].[NewsItemLocalization];
GO

PRINT N'Inserting values into [dbo].[NewsItemLocalization]';

INSERT INTO [dbo].[NewsItemLocalization] ([Id],[NewsId],[LanguageId],[Title],[ShortContent],[Content],[Published],[PublishStart],[PublishEnd],[MetaDescription],[MetaKeywords],[DateEntered],[DateModified],[VisibleDate]) VALUES ('8150D3E4-904D-4459-B943-9E6300DF50BB','3212B9B2-BF54-4C1D-9257-9E6300DF50B1','0543FD17-141B-4C40-BB35-B57F9EEC6EE0',N'New release',N'',N'',1,'2011-01-06T12:11:46.000',NULL,N'',N'We happy to announce a major upgrade to MonoX content management system and social network' +
    N'ing framework  This version includes the following 



    total redesign of the discussion system  besides changed look and feel','2011-01-06T12:11:46.000','2011-01-06T12:11:46.000','2011-01-06T12:11:46.000');
DECLARE @rowID uniqueidentifier;
SELECT @rowID= [Id] FROM [dbo].[NewsItemLocalization] WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N'<P>We are happy to announce a major upgrade to MonoX content management system and social networking framework. This version includes the following:</P>
<UL>
<LI>total redesign of the discussion system: besides changed look and feel, it can now support complex usage scenarios and features like voting, closing, moderation, reporting, syntax highlighting and mail alerting. 
<LI>more social networking features: comments, ratings, ta', 0, 436) WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N'gs and related content Web parts are now universal and can be used with custom controls. They support both programmatic control and Web part connection scenarios. 
<LI>more customization properties are added to all parts in the gallery. 
<LI>personalization system is redesigned to support scenarios in which non-admin users need to edit partial content (Web parts or whole pages) 
<LI>indroduction of sample starter projects (basic ',     436, 436) WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N'solution, localization sample) 
<LI>dozens of smaller changes and bug fixes </LI></UL>
<P>Many of the changes introduces in this version are based on our users'' feedback. We will soon introduce the new version of our main site with improved social networking features, so please do not hesitate to contact us with your your comments and requests.</P>',     872, 352) WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
GO
DECLARE @rowID uniqueidentifier;
SELECT @rowID= [Id] FROM [dbo].[NewsItemLocalization] WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N'<P>We are happy to announce a major upgrade to MonoX content management system and social networking framework. This version includes the following:<BR><BR></P>
<UL>
<LI>total redesign of the discussion system: besides changed look and feel, it can now support complex usage scenarios and features like voting, closing, moderation, reporting, syntax highlighting and mail alerting. 
<LI>more social networking features: comments, rat', 0, 436) WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N'ings, tags and related content Web parts are now universal and can be used with custom controls. They support both programmatic control and Web part connection scenarios. 
<LI>more customization properties are added to all parts in the gallery. 
<LI>personalization system is redesigned to support scenarios in which non-admin users need to edit partial content (Web parts or whole pages) 
<LI>indroduction of sample starter projects',     436, 436) WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N' (basic solution, localization sample) 
<LI>dozens of smaller changes and bug fixes </LI></UL>
<P>Many of the changes introduces in this version are based on our users'' feedback. We will soon introduce the new version of our main site with improved social networking features, so please do not hesitate to contact us with your your comments and requests.</P>',     872, 360) WHERE ([Id] = '8150D3E4-904D-4459-B943-9E6300DF50BB');
GO
GO
INSERT INTO [dbo].[NewsItemLocalization] ([Id],[NewsId],[LanguageId],[Title],[ShortContent],[Content],[Published],[PublishStart],[PublishEnd],[MetaDescription],[MetaKeywords],[DateEntered],[DateModified],[VisibleDate]) VALUES ('8B2365B7-FD59-48D9-AC6B-9E6300E524A0','0E434B68-BE7E-4D15-BAB6-9E6300E524A0','0543FD17-141B-4C40-BB35-B57F9EEC6EE0',N'New API and OpenSocial support',N'',N'',1,'2011-01-06T12:30:51.000',NULL,NULL,N'It has been an exciting year here at Mono Software  MonoX has been dow' +
    N'nloaded and installed on tens of thousands of computers  and we ve got a lot of constructive feedback  nbsp There many new nbsp end user features that introduced in the new vers','2011-01-06T12:30:51.000','2011-01-06T12:30:51.000','2011-01-06T12:30:51.000');
DECLARE @rowID uniqueidentifier;
SELECT @rowID= [Id] FROM [dbo].[NewsItemLocalization] WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N'It has been an exciting year here at Mono Software. MonoX has been downloaded and installed on tens of thousands of computers, and we''ve got a lot of constructive feedback.&nbsp;There are many new&nbsp;end-user features that are introduced in the new version, but we haven''t forgotten the developer community that is becoming stronger each day.&nbsp;While MonoX introduces powerful customization features based on the standard Web parts', 0, 436) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N' architecture, we&nbsp;learned that many developers want a standardized, open and&nbsp;"mashable" API.&nbsp;<br />
<br />
That''s why we decided to support the&nbsp;<a href="http://www.opensocial.org/" target="_blank">OpenSocial</a> standard, as it defines a common API for social applications across multiple Web sites. Our team is currently implementing MonoX OpenSocial services based on the <a href="http://opensocial-resources.goo',     436, 436) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N'glecode.com/svn/spec/1.1/Social-API-Server.xml" target="_blank">OpenSocial Social API Server Specification 1.1</a>. As far as we know, it is&nbsp;the first .NET implementation of this specification. In addition to this REST-based service set, we will include a new API with the identical functionality for the tasks that do not need the REST Web communication layer. Stay tuned for more news, or contact our support team for more detail',     872, 436) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [ShortContent] .WRITE (N's.<br />
<br />',    1308, 16) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
GO
DECLARE @rowID uniqueidentifier;
SELECT @rowID= [Id] FROM [dbo].[NewsItemLocalization] WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N'It has been an exciting year here at Mono Software. MonoX has been downloaded and installed on tens of thousands of computers, and we''ve got a lot of constructive feedback.&nbsp;There are many new&nbsp;end-user features that are introduced in the new version, but we haven''t forgotten the developer community that is becoming stronger each day.&nbsp;While MonoX introduces powerful customization features based on the standard Web parts', 0, 436) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N' architecture, we&nbsp;learned that many developers want a standardized, open and&nbsp;"mashable" API.&nbsp;<br />
<br />
That''s why we decided to support the&nbsp;<a href="http://www.opensocial.org/" target="_blank">OpenSocial</a> standard, as it defines a common API for social applications across multiple Web sites. Our team is currently implementing MonoX OpenSocial services based on the <a href="http://opensocial-resources.goo',     436, 436) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N'glecode.com/svn/spec/1.1/Social-API-Server.xml" target="_blank">OpenSocial Social API Server Specification 1.1</a>. As far as we know, it is&nbsp;the first .NET implementation of this specification. In addition to this REST-based service set, we will include a new API with the identical functionality for the tasks that do not need the REST Web communication layer. Stay tuned for more news, or contact our support team for more detail',     872, 436) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
UPDATE [dbo].[NewsItemLocalization] SET [Content] .WRITE (N's.<br />
<br />',    1308, 16) WHERE ([Id] = '8B2365B7-FD59-48D9-AC6B-9E6300E524A0');
GO
GO
GO

SET NOCOUNT OFF
/* ======================================================================= */

PRINT N'Done.';


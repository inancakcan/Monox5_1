USE [master]
GO
/****** Object:  Database [MonoX2]    Script Date: 08/07/2007 10:08:09 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'MonoX2')
BEGIN
CREATE DATABASE [MonoX2] ON  PRIMARY 
( NAME = N'MonoX2', FILENAME = N'D:\baze\MonoX2\MonoX2.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MonoX2_log', FILENAME = N'D:\baze\MonoX2\MonoX2_log.LDF' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Latin1_General_CI_AS
END

GO
EXEC dbo.sp_dbcmptlevel @dbname=N'MonoX2', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MonoX2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MonoX2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MonoX2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MonoX2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MonoX2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MonoX2] SET ARITHABORT OFF 
GO
ALTER DATABASE [MonoX2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MonoX2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MonoX2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MonoX2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MonoX2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MonoX2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MonoX2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MonoX2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MonoX2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MonoX2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MonoX2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MonoX2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MonoX2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MonoX2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MonoX2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MonoX2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MonoX2] SET  READ_WRITE 
GO
ALTER DATABASE [MonoX2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MonoX2] SET  MULTI_USER 
GO
ALTER DATABASE [MonoX2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MonoX2] SET DB_CHAINING OFF 
/****** Object:  Login [zderic]    Script Date: 08/07/2007 10:08:13 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [zderic]    Script Date: 08/07/2007 10:08:12 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'zderic')
CREATE LOGIN [zderic] WITH PASSWORD=N'ÞÁCºÒÙá®13þÞ¤ÑyGëë¬¯ÑñLÍÚ', DEFAULT_DATABASE=[Zderic.Kladionice], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [zderic] DISABLE
GO
/****** Object:  Login [SQLUser]    Script Date: 08/07/2007 10:08:13 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [SQLUser]    Script Date: 08/07/2007 10:08:13 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'SQLUser')
CREATE LOGIN [SQLUser] WITH PASSWORD=N'eÅÉU`ÍmûrOÙ&n±¹¾¢NZ	i>x;AO', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [SQLUser] DISABLE
GO
/****** Object:  Login [SoftCoCasUser]    Script Date: 08/07/2007 10:08:13 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [SoftCoCasUser]    Script Date: 08/07/2007 10:08:13 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'SoftCoCasUser')
CREATE LOGIN [SoftCoCasUser] WITH PASSWORD=N'v	O¯ ,èlX²7ÌVÈÙ(?óéÝâuV3/', DEFAULT_DATABASE=[SOFTCOCAS], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [SoftCoCasUser] DISABLE
GO
/****** Object:  Login [saadmin]    Script Date: 08/07/2007 10:08:13 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [saadmin]    Script Date: 08/07/2007 10:08:13 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'saadmin')
CREATE LOGIN [saadmin] WITH PASSWORD=N'ï§&&a7\è^Gsp>
ªeèZ8´;', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [saadmin] DISABLE
GO
/****** Object:  Login [R8Update]    Script Date: 08/07/2007 10:08:13 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [R8Update]    Script Date: 08/07/2007 10:08:13 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'R8Update')
CREATE LOGIN [R8Update] WITH PASSWORD=N'ÉVÙ§iúlò9Ýðø¤2¢ç¥G)Zp7Î', DEFAULT_DATABASE=[R8Indexes], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [R8Update] DISABLE
GO
/****** Object:  Login [R8System]    Script Date: 08/07/2007 10:08:14 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [R8System]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'R8System')
CREATE LOGIN [R8System] WITH PASSWORD=N'ôORN=rºPõ3/V%`6½dj­-Q
E]', DEFAULT_DATABASE=[R8System], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [R8System] DISABLE
GO
/****** Object:  Login [R8Search]    Script Date: 08/07/2007 10:08:14 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [R8Search]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'R8Search')
CREATE LOGIN [R8Search] WITH PASSWORD=N'}÷arªwüò> 9>âèò¨ZEêEÃâ¿KçhÌ', DEFAULT_DATABASE=[R8Indexes], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [R8Search] DISABLE
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 08/07/2007 10:08:14 ******/
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\NETWORK SERVICE]    Script Date: 08/07/2007 10:08:14 ******/
/****** Object:  Login [NT AUTHORITY\NETWORK SERVICE]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\NETWORK SERVICE')
CREATE LOGIN [NT AUTHORITY\NETWORK SERVICE] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\Anonymous Logon]    Script Date: 08/07/2007 10:08:14 ******/
/****** Object:  Login [NT AUTHORITY\Anonymous Logon]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\Anonymous Logon')
CREATE LOGIN [NT AUTHORITY\Anonymous Logon] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [MonoX]    Script Date: 08/07/2007 10:08:14 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [MonoX]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'MonoX')
CREATE LOGIN [MonoX] WITH PASSWORD=N'M´q·Ó ÿú£,\ÎUªrjÌ"ô)ï>.', DEFAULT_DATABASE=[MonoX2], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
EXEC sys.sp_addsrvrolemember @loginame = N'MonoX', @rolename = N'serveradmin'
GO
ALTER LOGIN [MonoX] DISABLE
GO
/****** Object:  Login [MONO\zarko]    Script Date: 08/07/2007 10:08:14 ******/
/****** Object:  Login [MONO\zarko]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'MONO\zarko')
CREATE LOGIN [MONO\zarko] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [MONO\kiki]    Script Date: 08/07/2007 10:08:14 ******/
/****** Object:  Login [MONO\kiki]    Script Date: 08/07/2007 10:08:14 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'MONO\kiki')
CREATE LOGIN [MONO\kiki] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [MONO\jasmin]    Script Date: 08/07/2007 10:08:15 ******/
/****** Object:  Login [MONO\jasmin]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'MONO\jasmin')
CREATE LOGIN [MONO\jasmin] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [MONO\denis]    Script Date: 08/07/2007 10:08:15 ******/
/****** Object:  Login [MONO\denis]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'MONO\denis')
CREATE LOGIN [MONO\denis] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [MONO\Administrator]    Script Date: 08/07/2007 10:08:15 ******/
/****** Object:  Login [MONO\Administrator]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'MONO\Administrator')
CREATE LOGIN [MONO\Administrator] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [kiki]    Script Date: 08/07/2007 10:08:15 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [kiki]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'kiki')
CREATE LOGIN [kiki] WITH PASSWORD=N'½ØÂj_Ê1:½gÎ#4cfÏ^RT(6jËÒIIH', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [kiki] DISABLE
GO
/****** Object:  Login [IMS_User]    Script Date: 08/07/2007 10:08:15 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [IMS_User]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'IMS_User')
CREATE LOGIN [IMS_User] WITH PASSWORD=N'AÖç,Ls´¶QÁcQ®üø:ÖñE½¶àpfìõâ', DEFAULT_DATABASE=[Arekibo.Funda], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [IMS_User] DISABLE
GO
/****** Object:  Login [funda]    Script Date: 08/07/2007 10:08:15 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [funda]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'funda')
CREATE LOGIN [funda] WITH PASSWORD=N'¥Å Ó¥Véûñl Ç¨ï°ø÷°è\t=ñG`Tbä¨°', DEFAULT_DATABASE=[Arekibo.Funda], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [funda] DISABLE
GO
/****** Object:  Login [BUILTIN\Administrators]    Script Date: 08/07/2007 10:08:15 ******/
/****** Object:  Login [BUILTIN\Administrators]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Administrators')
CREATE LOGIN [BUILTIN\Administrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [APPSERVER\SQLServer2005SQLAgentUser$APPSERVER$SQLSERVER2005]    Script Date: 08/07/2007 10:08:15 ******/
/****** Object:  Login [APPSERVER\SQLServer2005SQLAgentUser$APPSERVER$SQLSERVER2005]    Script Date: 08/07/2007 10:08:15 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'APPSERVER\SQLServer2005SQLAgentUser$APPSERVER$SQLSERVER2005')
CREATE LOGIN [APPSERVER\SQLServer2005SQLAgentUser$APPSERVER$SQLSERVER2005] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [APPSERVER\SQLServer2005MSSQLUser$APPSERVER$SQLSERVER2005]    Script Date: 08/07/2007 10:08:16 ******/
/****** Object:  Login [APPSERVER\SQLServer2005MSSQLUser$APPSERVER$SQLSERVER2005]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'APPSERVER\SQLServer2005MSSQLUser$APPSERVER$SQLSERVER2005')
CREATE LOGIN [APPSERVER\SQLServer2005MSSQLUser$APPSERVER$SQLSERVER2005] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [APPSERVER\SQLServer2005MSFTEUser$APPSERVER$SQLSERVER2005]    Script Date: 08/07/2007 10:08:16 ******/
/****** Object:  Login [APPSERVER\SQLServer2005MSFTEUser$APPSERVER$SQLSERVER2005]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'APPSERVER\SQLServer2005MSFTEUser$APPSERVER$SQLSERVER2005')
CREATE LOGIN [APPSERVER\SQLServer2005MSFTEUser$APPSERVER$SQLSERVER2005] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
USE [MonoX2]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  User [MonoX]    Script Date: 08/07/2007 10:08:16 ******/
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'MonoX')
CREATE USER [MonoX] FOR LOGIN [MonoX] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'

GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'

GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'

GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'

GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'

GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'

GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'

GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'

GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  Table [dbo].[Language]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Language](
	[Id] [uniqueidentifier] NOT NULL,
	[LanguageName] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[CultureName] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[DefaultLanguage] [bit] NULL CONSTRAINT [DF_Language_DefaultLanguage]  DEFAULT ((0)),
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [IX_Language]    Script Date: 08/07/2007 10:08:16 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Language]') AND name = N'IX_Language')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Language] ON [dbo].[Language] 
(
	[CultureName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000002_245D67DE]    Script Date: 08/07/2007 10:08:16 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_245D67DE' and object_id = object_id(N'[dbo].[Language]'))
CREATE STATISTICS [_WA_Sys_00000002_245D67DE] ON [dbo].[Language]([LanguageName]) WITH STATS_STREAM = 0x01000000010000000000000000000000E0024AC70000000057020000000000001702000000000000E7030000E7000000C80000000000000008D00000000000000700000017C66301E398000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000010000000000070410000004000000000000070410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000005C00000000000000B30000000000000010000000000000003700000000000000300010000000803F000000000000803F04000001002700430072006F0061007400690061006E00300010000000803F000000000000803F0400000100250045006E0067006C00690073006800FF01000000000000000200000002000000280000002800000000000000000000000F000000430072006F0061007400690061006E0045006E0067006C006900730068000300000040000000008108000000010708000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_245D67DE]    Script Date: 08/07/2007 10:08:16 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_245D67DE' and object_id = object_id(N'[dbo].[Language]'))
CREATE STATISTICS [_WA_Sys_00000004_245D67DE] ON [dbo].[Language]([DefaultLanguage]) WITH STATS_STREAM = 0x01000000010000000000000000000000F33CD23800000000D40100000000000094010000000000006800000068000000010001000000000000000000000000000700000017C66301E398000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00000040000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000380000000000000010000000000000002400000000000000100011000000803F000000000000803F00040000100011000000803F000000000000803F01040000
GO
/****** Object:  Statistic [IX_Language]    Script Date: 08/07/2007 10:08:16 ******/
if not exists (select * from sys.stats where name = N'IX_Language' and object_id = object_id(N'[dbo].[Language]'))
UPDATE STATISTICS [dbo].[Language]([IX_Language]) WITH STATS_STREAM = 0x01000000020000000000000000000000FEB64DC50000000083020000000000002B02000000000000E7030000E7000000140000000000000008D0000000000000240100002400000010000000000000000000000000000000070000005D036201E398000002000000000000000200000000000000000000000000003F0000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000002000000100000000000104200000040000000000000A0410000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000006600000000000000C70000000000000010000000000000003B00000000000000300010000000803F000000000000803F04000001002B0065006E0020002000200020002000200020002000300010000000803F000000000000803F04000001002B006800720020002000200020002000200020002000FF01000000000000000200000002000000280000002800000000000000000000001400000065006E00200020002000200020002000200020006800720020002000200020002000200020002000030000004000000000810A000000010A0A000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Language]    Script Date: 08/07/2007 10:08:16 ******/
if not exists (select * from sys.stats where name = N'PK_Language' and object_id = object_id(N'[dbo].[Language]'))
UPDATE STATISTICS [dbo].[Language]([PK_Language]) WITH STATS_STREAM = 0x01000000010000000000000000000000BE170BB200000000F201000000000000B201000000000000240100002400000010000000000000000000000000000000070000005D036201E398000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000002000000000008041000000400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000560000000000000010000000000000003300000000000000100020000000803F000000000000803F17FD43051B14404CBB35B57F9EEC6EE0040000100020000000803F000000000000803FD5E7401A036D054F9413D5406398CD3C040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 08/07/2007 10:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, @CurrentTimeUtc, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 08/07/2007 10:08:17 ******/
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
/****** Object:  Statistic [_WA_Sys_00000002_251C81ED]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_251C81ED' and object_id = object_id(N'[dbo].[NewsCategory]'))
CREATE STATISTICS [_WA_Sys_00000002_251C81ED] ON [dbo].[NewsCategory]([NewsCategoryId]) WITH STATS_STREAM = 0x010000000100000000000000000000002C6D4F84000000009401000000000000540100000000000024000000240000001000000000000000000000000000000007000000EE43F8001499000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000020000000000000000000803F0000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_251C81ED]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_251C81ED' and object_id = object_id(N'[dbo].[NewsCategory]'))
CREATE STATISTICS [_WA_Sys_00000005_251C81ED] ON [dbo].[NewsCategory]([Image]) WITH STATS_STREAM = 0x010000000100000000000000000000003E882059000000009401000000000000540100000000000022000000220000001000000000000000000000000000000007000000D02CFD001499000003000000000000000300000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001000000000000000000040400000404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000006_251C81ED]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_251C81ED' and object_id = object_id(N'[dbo].[NewsCategory]'))
CREATE STATISTICS [_WA_Sys_00000006_251C81ED] ON [dbo].[NewsCategory]([Order]) WITH STATS_STREAM = 0x01000000010000000000000000000000BAD1612100000000BB010000000000007B01000000000000380100003800000004000A0000000000000000000000000007000000D52CFD001499000003000000000000000300000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000404000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000004040000000000000803F00000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000009_251C81ED]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_251C81ED' and object_id = object_id(N'[dbo].[NewsCategory]'))
CREATE STATISTICS [_WA_Sys_00000009_251C81ED] ON [dbo].[NewsCategory]([DateEntered]) WITH STATS_STREAM = 0x01000000010000000000000000000000D058DCA200000000940100000000000054010000000000003D0000003D0000000800170300000000000000000000000007000000D52CFD001499000003000000000000000300000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000040400000404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_251C81ED]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_251C81ED' and object_id = object_id(N'[dbo].[NewsCategory]'))
CREATE STATISTICS [_WA_Sys_0000000A_251C81ED] ON [dbo].[NewsCategory]([DateModified]) WITH STATS_STREAM = 0x01000000010000000000000000000000D058DCA200000000940100000000000054010000000000003D0000003D0000000800170300000000000000000000000007000000D52CFD001499000003000000000000000300000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000040400000404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_NewsCategories]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsCategories' and object_id = object_id(N'[dbo].[NewsCategory]'))
UPDATE STATISTICS [dbo].[NewsCategory]([PK_NewsCategories]) WITH STATS_STREAM = 0x010000000100000000000000000000006FC0E4B900000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000E9FDF7001499000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FDC4751B9F8F7084497B3991401138456040000, ROWCOUNT = 11, PAGECOUNT = 1
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_SchemaVer__08EA5793] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_4D5F7D71]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_4D5F7D71' and object_id = object_id(N'[dbo].[aspnet_SchemaVersions]'))
CREATE STATISTICS [_WA_Sys_00000002_4D5F7D71] ON [dbo].[aspnet_SchemaVersions]([CompatibleSchemaVersion]) WITH STATS_STREAM = 0x010000000100000000000000000000006CAC9B4600000000FB01000000000000BB01000000000000E7030000E7000000000100000000000008D00000000000000700000089AABE00F398000006000000000000000600000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000000400000C0400000000000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000210000000000000057000000000000000800000000000000300010000000C040000000000000803F040000010019003100FF0100000000000000060000000100000028000000280000000000000000000000010000003100020000004000000000060100000000
GO
/****** Object:  Statistic [PK__aspnet_SchemaVer__08EA5793]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_SchemaVer__08EA5793' and object_id = object_id(N'[dbo].[aspnet_SchemaVersions]'))
UPDATE STATISTICS [dbo].[aspnet_SchemaVersions]([PK__aspnet_SchemaVer__08EA5793]) WITH STATS_STREAM = 0x01000000020000000000000000000000750738CD0000000091030000000000003903000000000000E7030000E7000000000100000000000008D0000000000000E7030000E7000000000100000000000008D0000000000000070000009F65BA00F3980000060000000000000006000000000000000000803FABAA2A3EABAA2A3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000050000000200000010000000ABAAC2410000C04000000000ABAAB241000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000FF00000000000000D50100000000000028000000000000004B000000000000007600000000000000AB00000000000000D000000000000000300010000000803F000000000000803F0400000100230063006F006D006D006F006E00300010000000803F0000803F0000803F04000001002B006D0065006D006200650072007300680069007000300010000000803F000000000000803F0400000100350070006500720073006F006E0061006C0069007A006100740069006F006E00300010000000803F000000000000803F04000001002500700072006F00660069006C006500300010000000803F000000000000803F04000001002F0072006F006C00650020006D0061006E006100670065007200FF01000000000000000600000006000000280000002800000000000000000000004200000063006F006D006D006F006E006800650061006C007400680020006D006F006E00690074006F00720069006E0067006D0065006D00620065007200730068006900700070006500720073006F006E0061006C0069007A006100740069006F006E0072006F00660069006C00650072006F006C00650020006D0061006E00610067006500720008000000400000000081060000008111060000810A170000C001210000810E2200000106300000010C36000000, ROWCOUNT = 6, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE Latin1_General_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE Latin1_General_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[Details] [ntext] COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__aspnet_WebEvent___5FB337D6] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Statistic [PK__aspnet_WebEvent___5FB337D6]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_WebEvent___5FB337D6' and object_id = object_id(N'[dbo].[aspnet_WebEvent_Events]'))
UPDATE STATISTICS [dbo].[aspnet_WebEvent_Events]([PK__aspnet_WebEvent___5FB337D6]) WITH STATS_STREAM = 0x01000000010000000000000000000000C606FEEE0000000040000000000000000000000000000000AF030000AF000000200000000000000008D0000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]  DEFAULT (newid()),
	[Description] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Applicati__7E6CC920] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_Applicati__00551192] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_Applicati__7F60ED59] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Applications_Index]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000004_6166761E]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_6166761E' and object_id = object_id(N'[dbo].[aspnet_Applications]'))
CREATE STATISTICS [_WA_Sys_00000004_6166761E] ON [dbo].[aspnet_Applications]([Description]) WITH STATS_STREAM = 0x01000000010000000000000000000000512B229100000000CB010000000000008B01000000000000E7020000E7000000000200000000000008D000000000000007000000A72FF500FF98000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000010000000000000000000004000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000002F00000000000000FF01000000020000000200000001000000280000002800000000000000000000000000000001000000000000000000
GO
/****** Object:  Statistic [aspnet_Applications_Index]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_Applications_Index' and object_id = object_id(N'[dbo].[aspnet_Applications]'))
UPDATE STATISTICS [dbo].[aspnet_Applications]([aspnet_Applications_Index]) WITH STATS_STREAM = 0x010000000100000000000000000000007E69C1D2000000000B02000000000000CB01000000000000E7030000E7000000000200000000000008D00000000000000700000058D9BB00F398000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000020410000803F0000000000002041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000290000000000000067000000000000000800000000000000300010000000803F000000000000803F040000010021006D006F006E006F007800FF0100000000000000010000000100000028000000280000000000000000000000050000006D006F006E006F007800020000004000000000010500000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK__aspnet_Applicati__7E6CC920]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Applicati__7E6CC920' and object_id = object_id(N'[dbo].[aspnet_Applications]'))
UPDATE STATISTICS [dbo].[aspnet_Applications]([PK__aspnet_Applicati__7E6CC920]) WITH STATS_STREAM = 0x01000000020000000000000000000000B4E0163D00000000DF010000000000008701000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D00000000000000700000058D9BB00F398000001000000000000000100000000000000000000000000803F0000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000002000000200000000000D0410000803F00000000000080410000204100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [UQ__aspnet_Applicati__00551192]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'UQ__aspnet_Applicati__00551192' and object_id = object_id(N'[dbo].[aspnet_Applications]'))
UPDATE STATISTICS [dbo].[aspnet_Applications]([UQ__aspnet_Applicati__00551192]) WITH STATS_STREAM = 0x01000000020000000000000000000000E609AF49000000002302000000000000CB01000000000000E7030000E7000000000200000000000008D0000000000000E7030000E7000000000200000000000008D0000000000000070000005CD9BB00F398000001000000000000000100000000000000000000000000803F0000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000002000000100000000000A0410000803F0000000000002041000020410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000290000000000000067000000000000000800000000000000300010000000803F000000000000803F040000010021004D006F006E006F005800FF0100000000000000010000000100000028000000280000000000000000000000050000004D006F006E006F005800020000004000000000010500000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [UQ__aspnet_Applicati__7F60ED59]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'UQ__aspnet_Applicati__7F60ED59' and object_id = object_id(N'[dbo].[aspnet_Applications]'))
UPDATE STATISTICS [dbo].[aspnet_Applications]([UQ__aspnet_Applicati__7F60ED59]) WITH STATS_STREAM = 0x01000000010000000000000000000000E9DB10CB000000000B02000000000000CB01000000000000E7030000E7000000000200000000000008D0000000000000070000005CD9BB00F398000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000020410000803F0000000000002041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000290000000000000067000000000000000800000000000000300010000000803F000000000000803F040000010021006D006F006E006F007800FF0100000000000000010000000100000028000000280000000000000000000000050000006D006F006E006F007800020000004000000000010500000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(20)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[PageRole]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PageRole](
	[Id] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PageRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_6D0D32F4]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_6D0D32F4' and object_id = object_id(N'[dbo].[PageRole]'))
CREATE STATISTICS [_WA_Sys_00000002_6D0D32F4] ON [dbo].[PageRole]([PageId]) WITH STATS_STREAM = 0x01000000010000000000000000000000482ACACF00000000F201000000000000B20100000000000024010000240000001000000000000000000000000000000007000000E40B2001B19800003C000000000000003C00000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000002000000000008041000070420000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000560000000000000010000000000000003300000000000000100020000000F041000000000000803F393A89CF803BEE48B8D598A601328721040000100020000000F041000000000000803F834622FB7C08074582F198A6019AD19D040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_6D0D32F4]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_6D0D32F4' and object_id = object_id(N'[dbo].[PageRole]'))
CREATE STATISTICS [_WA_Sys_00000003_6D0D32F4] ON [dbo].[PageRole]([RoleId]) WITH STATS_STREAM = 0x010000000100000000000000000000005895D1D000000000F201000000000000B20100000000000024010000240000001000000000000000000000000000000007000000067F2301B198000046000000000000004600000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000200000000000804100008C4200000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005600000000000000100000000000000033000000000000001000200000001842000000000000803FFFC981488BB62D4A85D014EF11DD1AD50400001000200000000042000000000000803F927BAFEB12BBC340B3E4FD40B9932E3E040000
GO
/****** Object:  Statistic [PK_PageRole]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_PageRole' and object_id = object_id(N'[dbo].[PageRole]'))
UPDATE STATISTICS [dbo].[PageRole]([PK_PageRole]) WITH STATS_STREAM = 0x010000000100000000000000000000005BD5BBD400000000C70100000000000087010000000000002401000024000000100000000000000000000000000000000700000002BD1901B198000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F6123BAF40FE8DD439DC398B101390ACC040000, ROWCOUNT = 0, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[Document]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Document](
	[Id] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[ControlId] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[TextContent] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_29221CFB]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_29221CFB' and object_id = object_id(N'[dbo].[Document]'))
CREATE STATISTICS [_WA_Sys_00000002_29221CFB] ON [dbo].[Document]([PageId]) WITH STATS_STREAM = 0x010000000100000000000000000000001BB4C43500000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000005DE20101EC98000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000004000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000000040000000000000803F3B295661DEADE14FB34A98E20114F1F1040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_29221CFB]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_29221CFB' and object_id = object_id(N'[dbo].[Document]'))
CREATE STATISTICS [_WA_Sys_00000003_29221CFB] ON [dbo].[Document]([ControlId]) WITH STATS_STREAM = 0x01000000010000000000000000000000212BA31D0000000097020000000000005702000000000000E7030000E7000000900100000000000008D00000000000000700000061E20101EC98000002000000000000000200000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000A04200000040000000000000A0420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000006F00000000000000F30000000000000008000000000000003000100000000040000000000000803F04000001006700630074006C00300030005F0057006500620050006100720074004D0061006E00610067006500720031005F0067007700700065006400690074006F00720031005F0065006400690074006F0072003100FF010000000000000002000000010000002800000028000000000000000000000028000000630074006C00300030005F0057006500620050006100720074004D0061006E00610067006500720031005F0067007700700065006400690074006F00720031005F0065006400690074006F0072003100020000004000000000022800000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_29221CFB]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_29221CFB' and object_id = object_id(N'[dbo].[Document]'))
CREATE STATISTICS [_WA_Sys_00000005_29221CFB] ON [dbo].[Document]([LanguageId]) WITH STATS_STREAM = 0x01000000010000000000000000000000853A722200000000F201000000000000B2010000000000002401000024000000100000000000000000000000000000000700000061E20101EC98000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000002000000000008041000000400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000560000000000000010000000000000003300000000000000100020000000803F000000000000803F17FD43051B14404CBB35B57F9EEC6EE0040000100020000000803F000000000000803FD5E7401A036D054F9413D5406398CD3C040000
GO
/****** Object:  Statistic [PK_Document]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_Document' and object_id = object_id(N'[dbo].[Document]'))
UPDATE STATISTICS [dbo].[Document]([PK_Document]) WITH STATS_STREAM = 0x0100000001000000000000000000000031D09E50000000001D02000000000000DD010000000000002401000024000000100000000000000000000000000000000700000088FF11010F9900000300000000000000030000000000000000000000ABAAAA3E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000003000000010000002000000000008041000040400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000810000000000000018000000000000003B000000000000005E00000000000000100020000000803F000000000000803F92F3FB69FEAFAA47839898E9019838C3040000100020000000803F000000000000803FE0C66CCAC194CE4F823A98E901986BE9040000100020000000803F000000000000803FD1069F69F8AB5B46B16198ED01A05581040000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[PageLocalization]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageLocalization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PageLocalization](
	[Id] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Keywords] [nvarchar](1000) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PageLocalization_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [IX_PageLocalization]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PageLocalization]') AND name = N'IX_PageLocalization')
CREATE UNIQUE NONCLUSTERED INDEX [IX_PageLocalization] ON [dbo].[PageLocalization] 
(
	[PageId] ASC,
	[LanguageId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000002_18EBB532]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_18EBB532' and object_id = object_id(N'[dbo].[PageLocalization]'))
CREATE STATISTICS [_WA_Sys_00000002_18EBB532] ON [dbo].[PageLocalization]([LanguageId]) WITH STATS_STREAM = 0x01000000010000000000000000000000A82DD10B00000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000008BF76101EB98000003000000000000000300000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000404000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000004040000000000000803F17FD43051B14404CBB35B57F9EEC6EE0040000
GO
/****** Object:  Statistic [_WA_Sys_00000004_18EBB532]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_18EBB532' and object_id = object_id(N'[dbo].[PageLocalization]'))
CREATE STATISTICS [_WA_Sys_00000004_18EBB532] ON [dbo].[PageLocalization]([Title]) WITH STATS_STREAM = 0x0100000001000000000000000000000066A5CC5700000000FB03000000000000BB03000000000000E7030000E7000000FE0100000000000008D000000000000007000000511A0B01619900000B000000000000000B00000000000000000000000000003E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000800000001000000100000005D74814100003041000000005D7481410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000007C010000000000005702000000000000400000000000000065000000000000008A00000000000000B300000000000000E00000000000000001010000000000002A010000000000005301000000000000300010000000803F000000000000803F0400000100250041006400410064006D0069006E003000100000004040000000000000803F04000001002500440065006600610075006C0074003000100000000040000000000000803F04000001002900460069006C006500410064006D0069006E00300010000000803F000000000000803F04000001002D00480065006100640065007200320043006F006C007300300010000000803F000000000000803F040000010021004C006F00670069006E00300010000000803F000000000000803F040000010029004E00650077007300410064006D0069006E00300010000000803F000000000000803F040000010029005000610067006500410064006D0069006E00300010000000803F000000000000803F040000010029005500730065007200410064006D0069006E00FF01000000000000000A00000008000000280000002800000000000000000000004200000041006400410064006D0069006E00440065006600610075006C007400460069006C006500410064006D0069006E00480065006100640065007200320043006F006C0073004C006F00670069006E004E00650077007300410064006D0069006E005000610067006500410064006D0069006E005500730065007200410064006D0069006E000900000040000000008107000000820707000082090E0000810B170000810522000081092700008109300000010939000000
GO
/****** Object:  Statistic [IX_PageLocalization]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'IX_PageLocalization' and object_id = object_id(N'[dbo].[PageLocalization]'))
UPDATE STATISTICS [dbo].[PageLocalization]([IX_PageLocalization]) WITH STATS_STREAM = 0x01000000030000000000000000000000E0B0FCAA00000000F70100000000000087010000000000002401000024000000100000000000000000000000000000002401000024000000100000000000000000000000000000002401000024000000100000000000000000000000000000000700000063936001EB98000001000000000000000100000000000000000000000000803F0000803F0000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000300000020000000000040420000803F00000000000080410000804100008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F3B295661DEADE14FB34A98E20114F1F1040000, ROWCOUNT = 48, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_PageLocalization_1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_PageLocalization_1' and object_id = object_id(N'[dbo].[PageLocalization]'))
UPDATE STATISTICS [dbo].[PageLocalization]([PK_PageLocalization_1]) WITH STATS_STREAM = 0x0100000001000000000000000000000008A98D4000000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000002F936001EB98000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F16460353C1C6D040891B98EB0187BE95040000, ROWCOUNT = 48, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[AdPage]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdPage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdPage](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_AdPage_Id]  DEFAULT (newid()),
	[AdId] [uniqueidentifier] NOT NULL,
	[PageId] [uniqueidentifier] NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_AdPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_24E777C3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_24E777C3' and object_id = object_id(N'[dbo].[AdPage]'))
CREATE STATISTICS [_WA_Sys_00000002_24E777C3] ON [dbo].[AdPage]([AdId]) WITH STATS_STREAM = 0x01000000010000000000000000000000798E1B0000000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000E2E2E9006299000004000000000000000400000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000804000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000008040000000000000803F15269F67B2F44F4BBCDC996200F12579040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_24E777C3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_24E777C3' and object_id = object_id(N'[dbo].[AdPage]'))
CREATE STATISTICS [_WA_Sys_00000003_24E777C3] ON [dbo].[AdPage]([PageId]) WITH STATS_STREAM = 0x0100000001000000000000000000000091F1E94A000000001D02000000000000DD01000000000000240100002400000010000000000000000000000000000000070000000F5EF200629900000400000000000000040000000000000000000000ABAAAA3E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000003000000010000002000000000008041000080400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000810000000000000018000000000000003B000000000000005E000000000000001000200000000040000000000000803FF3CBEB262C44614F99F39954019EC52C040000100020000000803F000000000000803F7151C2BBD69EA948BBF19954019FBC24040000100020000000803F000000000000803F63F7FACF3F857B4F9C70995401A93C73040000
GO
/****** Object:  Statistic [_WA_Sys_00000004_24E777C3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_24E777C3' and object_id = object_id(N'[dbo].[AdPage]'))
CREATE STATISTICS [_WA_Sys_00000004_24E777C3] ON [dbo].[AdPage]([LanguageId]) WITH STATS_STREAM = 0x01000000010000000000000000000000F38200B800000000F201000000000000B201000000000000240100002400000010000000000000000000000000000000070000000F5EF2006299000004000000000000000400000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000020000000000080410000804000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005600000000000000100000000000000033000000000000001000200000000040000000000000803F17FD43051B14404CBB35B57F9EEC6EE00400001000200000000040000000000000803FD5E7401A036D054F9413D5406398CD3C040000
GO
/****** Object:  Statistic [_WA_Sys_00000005_24E777C3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_24E777C3' and object_id = object_id(N'[dbo].[AdPage]'))
CREATE STATISTICS [_WA_Sys_00000005_24E777C3] ON [dbo].[AdPage]([DateEntered]) WITH STATS_STREAM = 0x01000000010000000000000000000000A0AAC30000000000E201000000000000A2010000000000003D0000003D00000008001703000000000000000000000000070000000C24F3006299000006000000000000000600000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000018000000000000410000C0400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B000000000000001000180000008040000000000000803F2508D900629900000400001000180000000040000000000000803F650CF30062990000040000
GO
/****** Object:  Statistic [_WA_Sys_00000006_24E777C3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_24E777C3' and object_id = object_id(N'[dbo].[AdPage]'))
CREATE STATISTICS [_WA_Sys_00000006_24E777C3] ON [dbo].[AdPage]([DateModified]) WITH STATS_STREAM = 0x0100000001000000000000000000000081FA188200000000E201000000000000A2010000000000003D0000003D00000008001703000000000000000000000000070000001124F3006299000006000000000000000600000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000018000000000000410000C0400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B000000000000001000180000008040000000000000803F2508D900629900000400001000180000000040000000000000803F650CF30062990000040000
GO
/****** Object:  Statistic [PK_AdPage]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_AdPage' and object_id = object_id(N'[dbo].[AdPage]'))
UPDATE STATISTICS [dbo].[AdPage]([PK_AdPage]) WITH STATS_STREAM = 0x01000000010000000000000000000000343ABE6400000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000000A05D9006299000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F9A94983909F841479267996200F12579040000, ROWCOUNT = 0, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[NewsFile]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsFile](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_NewsFiles_Id]  DEFAULT (newid()),
	[NewsItemId] [uniqueidentifier] NOT NULL,
	[ContentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Content] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_NewsFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_477199F1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_477199F1' and object_id = object_id(N'[dbo].[NewsFile]'))
CREATE STATISTICS [_WA_Sys_00000002_477199F1] ON [dbo].[NewsFile]([NewsItemId]) WITH STATS_STREAM = 0x010000000100000000000000000000008B943F0100000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000005FB2DF001999000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F6B11AA56598C0849A13799160128E43B040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_477199F1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_477199F1' and object_id = object_id(N'[dbo].[NewsFile]'))
CREATE STATISTICS [_WA_Sys_00000003_477199F1] ON [dbo].[NewsFile]([ContentType]) WITH STATS_STREAM = 0x0100000001000000000000000000000071F6F1EB000000000F02000000000000CF01000000000000E7030000E7000000640000000000000008D0000000000000070000005FB2DF001999000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000040410000803F00000000000040410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000002B000000000000006B000000000000000800000000000000300010000000803F000000000000803F0400000100230049006D006100670065007300FF01000000000000000100000001000000280000002800000000000000000000000600000049006D006100670065007300020000004000000000010600000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_477199F1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_477199F1' and object_id = object_id(N'[dbo].[NewsFile]'))
CREATE STATISTICS [_WA_Sys_00000004_477199F1] ON [dbo].[NewsFile]([Name]) WITH STATS_STREAM = 0x010000000100000000000000000000000DDB4858000000003302000000000000F301000000000000E7020000E7000000640000000000000008D000000000000007000000B5E0E3001999000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000F0410000803F000000000000F0410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000003D000000000000008F000000000000000800000000000000300010000000803F000000000000803F040000010035007300680061007200650064002D0076006900650077002E0070006E006700FF01000000000000000100000001000000280000002800000000000000000000000F0000007300680061007200650064002D0076006900650077002E0070006E006700020000004000000000010F00000000
GO
/****** Object:  Statistic [PK_NewsFiles]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsFiles' and object_id = object_id(N'[dbo].[NewsFile]'))
UPDATE STATISTICS [dbo].[NewsFile]([PK_NewsFiles]) WITH STATS_STREAM = 0x01000000010000000000000000000000D17D9A2100000000C70100000000000087010000000000002401000024000000100000000000000000000000000000000700000064B2DF001999000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FCED28EB78859CC4E9375991900F6DF95040000, ROWCOUNT = 6, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[NewsPublishQueue]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsPublishQueue]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_6BAEFA67]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_6BAEFA67' and object_id = object_id(N'[dbo].[NewsPublishQueue]'))
CREATE STATISTICS [_WA_Sys_00000002_6BAEFA67] ON [dbo].[NewsPublishQueue]([NewsItemId]) WITH STATS_STREAM = 0x010000000100000000000000000000002F13585800000000F201000000000000B20100000000000024010000240000001000000000000000000000000000000007000000B4F119011C99000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000002000000000008041000000400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000560000000000000010000000000000003300000000000000100020000000803F000000000000803FD410DA9052AF77429B94991A00F68B82040000100020000000803F000000000000803F8C14E21D6AD2AC4EA7BA991C00D43330040000
GO
/****** Object:  Statistic [PK_NewsPublishQueue]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsPublishQueue' and object_id = object_id(N'[dbo].[NewsPublishQueue]'))
UPDATE STATISTICS [dbo].[NewsPublishQueue]([PK_NewsPublishQueue]) WITH STATS_STREAM = 0x010000000100000000000000000000008DC0A33B00000000C70100000000000087010000000000002401000024000000100000000000000000000000000000000700000073F1A0001C99000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FD410DA9052AF77429B94991A00F68B82040000, ROWCOUNT = 11, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[NewsItemLocalization]    Script Date: 08/07/2007 10:08:17 ******/
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
	[Title] [nvarchar](150) COLLATE Latin1_General_CI_AS NULL,
	[ShortContent] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
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
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_73501C2F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_73501C2F' and object_id = object_id(N'[dbo].[NewsItemLocalization]'))
CREATE STATISTICS [_WA_Sys_00000002_73501C2F] ON [dbo].[NewsItemLocalization]([NewsId]) WITH STATS_STREAM = 0x01000000010000000000000000000000DF99E60700000000CB030000000000008B03000000000000240100002400000010000000000000000000000000000000070000000F7ED500309900001200000000000000120000000000000000000000D9899D3D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D0000000D0000000100000020000000000080410000904100000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002F0200000000000068000000000000008B00000000000000AE00000000000000D100000000000000F40000000000000017010000000000003A010000000000005D010000000000008001000000000000A301000000000000C601000000000000E9010000000000000C020000000000001000200000000040000000000000803FD410DA9052AF77429B94991A00F68B82040000100020000000803F000000000000803F8C14E21D6AD2AC4EA7BA991C00D43330040000100020000000803F000000000000803FD4ED87E601EA4D4F84B4991D00AE7AEE040000100020000000803F000000000000803FEE432D1593F6DC45AB12991D00AE9730040000100020000000803F000000000000803FC4B48697381DCB4FB6BD991D00AF7B53040000100020000000803F000000000000803FCAD9C193C4A05E4D8719991D00B0C1570400001000200000000040000000000000803F9608C99AB01ED7438DAB991D00B0EA91040000100020000000803F000000000000803F71387AD786B5DF4CA908991D00E024580400001000200000000040000000000000803F6178B50FB7418B4394D6991D010ECBCA040000100020000000803F000000000000803F1B4D084260729D45BE45992A00B92F65040000100020000000803F000000000000803F1304D742A05F344798EA992A00EC99E80400001000200000000040000000000000803F432ED0D5A6194447A5E1992A00F02D730400001000200000000040000000000000803FB86A150BCFCDDD4A8B77992A00F0BFF2040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_73501C2F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_73501C2F' and object_id = object_id(N'[dbo].[NewsItemLocalization]'))
CREATE STATISTICS [_WA_Sys_00000003_73501C2F] ON [dbo].[NewsItemLocalization]([LanguageId]) WITH STATS_STREAM = 0x01000000010000000000000000000000EB240C5100000000F201000000000000B201000000000000240100002400000010000000000000000000000000000000070000000F7ED5003099000012000000000000001200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000020000000000080410000904100000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005600000000000000100000000000000033000000000000001000200000005041000000000000803F17FD43051B14404CBB35B57F9EEC6EE0040000100020000000A040000000000000803FD5E7401A036D054F9413D5406398CD3C040000
GO
/****** Object:  Statistic [_WA_Sys_00000007_73501C2F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_73501C2F' and object_id = object_id(N'[dbo].[NewsItemLocalization]'))
CREATE STATISTICS [_WA_Sys_00000007_73501C2F] ON [dbo].[NewsItemLocalization]([Published]) WITH STATS_STREAM = 0x010000000100000000000000000000008AADEC4E00000000D401000000000000940100000000000068010000680000000100010000000000000000000000000007000000C24FD6003099000012000000000000001200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00009041000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003800000000000000100000000000000024000000000000001000110000004040000000000000803F000400001000110000007041000000000000803F01040000
GO
/****** Object:  Statistic [_WA_Sys_00000008_73501C2F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000008_73501C2F' and object_id = object_id(N'[dbo].[NewsItemLocalization]'))
CREATE STATISTICS [_WA_Sys_00000008_73501C2F] ON [dbo].[NewsItemLocalization]([PublishStart]) WITH STATS_STREAM = 0x010000000100000000000000000000003A12633400000000940100000000000054010000000000003D0000003D0000000800170300000000000000000000000007000000C74FD6003099000012000000000000001200000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000090410000904100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000009_73501C2F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_73501C2F' and object_id = object_id(N'[dbo].[NewsItemLocalization]'))
CREATE STATISTICS [_WA_Sys_00000009_73501C2F] ON [dbo].[NewsItemLocalization]([PublishEnd]) WITH STATS_STREAM = 0x0100000001000000000000000000000039A4D5A900000000940100000000000054010000000000003D0000003D0000000800170300000000000000000000000007000000CC4FD6003099000012000000000000001200000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000090410000904100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_NewsItemsLocalization]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsItemsLocalization' and object_id = object_id(N'[dbo].[NewsItemLocalization]'))
UPDATE STATISTICS [dbo].[NewsItemLocalization]([PK_NewsItemsLocalization]) WITH STATS_STREAM = 0x01000000010000000000000000000000FE3B78A000000000A2040000000000006204000000000000240100002400000010000000000000000000000000000000070000008CB7D600309900001200000000000000120000000000000000000000398E633D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000120000001200000001000000200000000000804100009041000000000000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000006030000000000009000000000000000B300000000000000D600000000000000F9000000000000001C010000000000003F0100000000000062010000000000008501000000000000A801000000000000CB01000000000000EE010000000000001102000000000000340200000000000057020000000000007A020000000000009D02000000000000C002000000000000E302000000000000100020000000803F000000000000803F8A332BCE4CDEBE42A13911691801BD7D040000100020000000803F000000000000803F82041E1A49DB314F824E236362E6A698040000100020000000803F000000000000803F4BF12E36A1C6FB4AA9502E683B338F2B040000100020000000803F000000000000803FED6F4865A8839140AAF531CCF66E3A10040000100020000000803F000000000000803F6FD7698827C67D4DB6FC4592610657A0040000100020000000803F000000000000803FFE8B97A3E1F0D14886604B6A354F2830040000100020000000803F000000000000803F9F5FCE9BE697EF45BB2A7A85B4ED4C18040000100020000000803F000000000000803F6BC538A3AC1EA3428E1B992A00B92F6A040000100020000000803F000000000000803F2C8053D4920B0F44BBA5992A00EC99EE040000100020000000803F000000000000803F856F552012FD114E8C41992A00F02D78040000100020000000803F000000000000803FE1F2C56942B13D499F62992A00F0BFF7040000100020000000803F000000000000803F390BA6DE4466D442BE3F992A00F0BFF7040000100020000000803F000000000000803F7FF947F28A4F91468FCBBE4EB9BBC936040000100020000000803F000000000000803FF14367AD6F87474A9281BECE2095A2D0040000100020000000803F000000000000803F47A85D6B7A56DE45AF77C49B83CA0EF4040000100020000000803F000000000000803FA90398DB8D18454CA3E3CCC19552FDC9040000100020000000803F000000000000803F22B3D8D66A6AAD448999E53D00A1FC86040000100020000000803F000000000000803F17D633127C543F4FAD1DEF9C3121A74E040000, ROWCOUNT = 19, PAGECOUNT = 3
GO
/****** Object:  Table [dbo].[NewsMetaIgnoredWord]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsMetaIgnoredWord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NewsMetaIgnoredWord](
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
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_5006DFF2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_5006DFF2' and object_id = object_id(N'[dbo].[NewsMetaIgnoredWord]'))
CREATE STATISTICS [_WA_Sys_00000002_5006DFF2] ON [dbo].[NewsMetaIgnoredWord]([LanguageId]) WITH STATS_STREAM = 0x0100000001000000000000000000000009E7607D00000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000006A7120011A99000005000000000000000500000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000A04000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000A040000000000000803FD5E7401A036D054F9413D5406398CD3C040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_5006DFF2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_5006DFF2' and object_id = object_id(N'[dbo].[NewsMetaIgnoredWord]'))
CREATE STATISTICS [_WA_Sys_00000003_5006DFF2] ON [dbo].[NewsMetaIgnoredWord]([Word]) WITH STATS_STREAM = 0x0100000001000000000000000000000073890FDA000000000205000000000000C204000000000000E7030000E7000000FE0100000000000016D000000000000007000000663005011B990000140000000000000014000000000000000000803F3694573D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000110000000100000010000000666636410000A0410000000066663641000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000C1020000000000005E030000000000008800000000000000A100000000000000BA00000000000000D300000000000000EE000000000000000D010000000000002801000000000000470100000000000062010000000000008B01000000000000AA01000000000000CD01000000000000F60100000000000025020000000000005A020000000000008302000000000000A602000000000000300010000000803F000000000000803F040000010019006400300010000000803F000000000000803F040000010019006500300010000000803F000000000000803F040000010019006900300010000000803F000000000000803F04000001001B006A006500300010000000803F000000000000803F04000001001F006A00650073006900300010000000803F000000000000803F04000001001B006E006900300010000000803F0000803F0000803F04000001001F006E00690074006900300010000000803F000000000000803F04000001001B0070006100300010000000803F000000000000803F04000001002900730064006600640073006600730064006600300010000000803F000000000000803F04000001001F007300640066006700300010000000803F000000000000803F040000010023007300640066007300640066003000100000000040000000000000803F04000001002900730064006600730064006600730064006600300010000000803F0000803F0000803F04000001002F00730064006600730064006600730064006600730064006600300010000000803F000000000000803F04000001003500730064006600730064006600730064006600730064006600730064006600300010000000803F000000000000803F04000001002900730064006600770065007200660077006500300010000000803F000000000000803F04000001002300730066007200730064006600300010000000803F000000000000803F04000001001B0074006500FF01000000000000000B0000000B0000002800000028000000000000000000000019000000640069006A006500730069006E006900730061006D00700061007300640066006700770065007200660077006500740065000D0000004000000000810100000081010100008104020000810506000081020B0000C0030D00008101100000C1030D000041030D000001030D00000106110000010217000000
GO
/****** Object:  Statistic [PK_IgnoredWords]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_IgnoredWords' and object_id = object_id(N'[dbo].[NewsMetaIgnoredWord]'))
UPDATE STATISTICS [dbo].[NewsMetaIgnoredWord]([PK_IgnoredWords]) WITH STATS_STREAM = 0x01000000010000000000000000000000E1CB7B83000000007302000000000000330200000000000024010000240000001000000000000000000000000000000007000000737120011A9900000500000000000000050000000000000000000000CDCC4C3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000050000000100000020000000000080410000A0400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000D70000000000000028000000000000004B000000000000006E000000000000009100000000000000B400000000000000100020000000803F000000000000803FF1FF7D0BEA92CC49A03D223853E03742040000100020000000803F000000000000803FE0271CE19EF8EA43A8993A09AC6B6715040000100020000000803F000000000000803F72344DD389076F46958C6C22E2481EE8040000100020000000803F000000000000803F379A605342749E4D9767E3EFD6E1E690040000100020000000803F000000000000803FC2BBAFB673D3E041B3BBE714DFD311C5040000, ROWCOUNT = 11, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[NewsCategoryLocalization]    Script Date: 08/07/2007 10:08:17 ******/
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
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_55BFB948]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_55BFB948' and object_id = object_id(N'[dbo].[NewsCategoryLocalization]'))
CREATE STATISTICS [_WA_Sys_00000002_55BFB948] ON [dbo].[NewsCategoryLocalization]([NewsCategoryId]) WITH STATS_STREAM = 0x01000000010000000000000000000000B5C81C4100000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000FF19C2001A99000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F55808E3F62F05645832F991A00D7AB05040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_55BFB948]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_55BFB948' and object_id = object_id(N'[dbo].[NewsCategoryLocalization]'))
CREATE STATISTICS [_WA_Sys_00000003_55BFB948] ON [dbo].[NewsCategoryLocalization]([LanguageId]) WITH STATS_STREAM = 0x0100000001000000000000000000000035A22E1200000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000FF19C2001A99000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F17FD43051B14404CBB35B57F9EEC6EE0040000
GO
/****** Object:  Statistic [_WA_Sys_00000007_55BFB948]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_55BFB948' and object_id = object_id(N'[dbo].[NewsCategoryLocalization]'))
CREATE STATISTICS [_WA_Sys_00000007_55BFB948] ON [dbo].[NewsCategoryLocalization]([Published]) WITH STATS_STREAM = 0x01000000010000000000000000000000F2D509C100000000B8010000000000007801000000000000680100006800000001000100000000000000000000000000070000008239BD002499000008000000000000000800000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000110000000000803F00000041000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001C0000000000000008000000000000001000110000000041000000000000803F01040000
GO
/****** Object:  Statistic [PK_NewsCategoriesLocalization]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsCategoriesLocalization' and object_id = object_id(N'[dbo].[NewsCategoryLocalization]'))
UPDATE STATISTICS [dbo].[NewsCategoryLocalization]([PK_NewsCategoriesLocalization]) WITH STATS_STREAM = 0x010000000100000000000000000000007950605C00000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000E319C2001A99000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F98D0F447DCD3844082249957FC7AD5A8040000, ROWCOUNT = 15, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[NewsItem]    Script Date: 08/07/2007 10:08:17 ******/
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
	[Rating] [int] NULL,
	[RatingCount] [int] NULL,
	[ViewCount] [int] NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_NewsItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_0A338187]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_0A338187' and object_id = object_id(N'[dbo].[NewsItem]'))
CREATE STATISTICS [_WA_Sys_00000002_0A338187] ON [dbo].[NewsItem]([NewsCategoryId]) WITH STATS_STREAM = 0x01000000010000000000000000000000AC83E92C000000009E020000000000005E02000000000000240100002400000010000000000000000000000000000000070000000E21E2005A9900000E000000000000000E0000000000000000000000ABAA2A3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060000000600000001000000200000000000804100006041000000000000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000002010000000000003000000000000000530000000000000076000000000000009900000000000000BC00000000000000DF00000000000000100020000000803F000000000000803F0B8707004F29D446BE34991B00FA6481040000100020000000A040000000000000803F7392616FDFD703459D19991B01008BD9040000100020000000803F000000000000803F7AA99F8BFF17884C81A9991D00B19EA8040000100020000000A040000000000000803F50DD7D169A2844408E56992900F08B25040000100020000000803F000000000000803F5F294C9F0EC3894F8D4A992901078E40040000100020000000803F000000000000803FE129CE63FC6455499EDE993000EFA868040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_0A338187]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_0A338187' and object_id = object_id(N'[dbo].[NewsItem]'))
CREATE STATISTICS [_WA_Sys_00000003_0A338187] ON [dbo].[NewsItem]([UserId]) WITH STATS_STREAM = 0x0100000001000000000000000000000003430E4C00000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000000921E2005A9900000E000000000000000E00000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000604100000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000006041000000000000803FE219C967F48D6A47B312C26F82A36CFB040000
GO
/****** Object:  Statistic [_WA_Sys_00000004_0A338187]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_0A338187' and object_id = object_id(N'[dbo].[NewsItem]'))
CREATE STATISTICS [_WA_Sys_00000004_0A338187] ON [dbo].[NewsItem]([ShowOnHomePage]) WITH STATS_STREAM = 0x01000000010000000000000000000000F88CC16D00000000D40100000000000094010000000000006801000068000000010001000000000000000000000000000700000044EFE5005A9900000E000000000000000E00000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00006041000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003800000000000000100000000000000024000000000000001000110000000041000000000000803F00040000100011000000C040000000000000803F01040000
GO
/****** Object:  Statistic [PK_NewsItems]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsItems' and object_id = object_id(N'[dbo].[NewsItem]'))
UPDATE STATISTICS [dbo].[NewsItem]([PK_NewsItems]) WITH STATS_STREAM = 0x0100000001000000000000000000000075B5E71300000000CB030000000000008B03000000000000240100002400000010000000000000000000000000000000070000000921E2005A9900000E000000000000000E000000000000000000803F2549923D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D0000000D0000000100000020000000000080410000604100000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002F0200000000000068000000000000008B00000000000000AE00000000000000D100000000000000F40000000000000017010000000000003A010000000000005D010000000000008001000000000000A301000000000000C601000000000000E9010000000000000C02000000000000100020000000803F000000000000803FD410DA9052AF77429B94991A00F68B82040000100020000000803F000000000000803F8C14E21D6AD2AC4EA7BA991C00D43330040000100020000000803F000000000000803FD4ED87E601EA4D4F84B4991D00AE7AEE040000100020000000803F000000000000803FEE432D1593F6DC45AB12991D00AE9730040000100020000000803F000000000000803FC4B48697381DCB4FB6BD991D00AF7B53040000100020000000803F000000000000803FCAD9C193C4A05E4D8719991D00B0C157040000100020000000803F000000000000803F9608C99AB01ED7438DAB991D00B0EA91040000100020000000803F0000803F0000803F6178B50FB7418B4394D6991D010ECBCA040000100020000000803F000000000000803F1B4D084260729D45BE45992A00B92F65040000100020000000803F000000000000803F1304D742A05F344798EA992A00EC99E8040000100020000000803F000000000000803F432ED0D5A6194447A5E1992A00F02D73040000100020000000803F000000000000803FB86A150BCFCDDD4A8B77992A00F0BFF2040000100020000000803F000000000000803FC25FA0C0676F6A4AAC16993000EFCFC1040000, ROWCOUNT = 14, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[NewsCategoryInRole]    Script Date: 08/07/2007 10:08:17 ******/
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
/****** Object:  Statistic [_WA_Sys_00000002_0880433F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_0880433F' and object_id = object_id(N'[dbo].[NewsCategoryInRole]'))
CREATE STATISTICS [_WA_Sys_00000002_0880433F] ON [dbo].[NewsCategoryInRole]([NewsCategoryId]) WITH STATS_STREAM = 0x01000000010000000000000000000000AEDCB88800000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000653DF4001599000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F30A3375C0FA86740B5F4991500B95224040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_0880433F]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_0880433F' and object_id = object_id(N'[dbo].[NewsCategoryInRole]'))
CREATE STATISTICS [_WA_Sys_00000003_0880433F] ON [dbo].[NewsCategoryInRole]([RoleId]) WITH STATS_STREAM = 0x01000000010000000000000000000000B05D40C400000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000653DF4001599000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F927BAFEB12BBC340B3E4FD40B9932E3E040000
GO
/****** Object:  Statistic [PK_NewsCategories_InRoles]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_NewsCategories_InRoles' and object_id = object_id(N'[dbo].[NewsCategoryInRole]'))
UPDATE STATISTICS [dbo].[NewsCategoryInRole]([PK_NewsCategories_InRoles]) WITH STATS_STREAM = 0x01000000010000000000000000000000AAA30E8800000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000603DF4001599000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FCF8A8FE3478A194DA8049915010F6144040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE Latin1_General_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE Latin1_General_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Statistic [PK__aspnet_Profile__286302EC]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Profile__286302EC' and object_id = object_id(N'[dbo].[aspnet_Profile]'))
UPDATE STATISTICS [dbo].[aspnet_Profile]([PK__aspnet_Profile__286302EC]) WITH STATS_STREAM = 0x0100000001000000000000000000000094337F140000000040000000000000000000000000000000240100002400000010000000000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Ad]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ad](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Ads_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NOT NULL,
	[ImageUrl] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[AdContent] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[NavigateUrl] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Keyword] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[AlternateText] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Caption] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Weight] [int] NOT NULL CONSTRAINT [DF_Ads_Weight]  DEFAULT ((0)),
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_Ad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_2AA05119]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_2AA05119' and object_id = object_id(N'[dbo].[Ad]'))
CREATE STATISTICS [_WA_Sys_00000002_2AA05119] ON [dbo].[Ad]([UserId]) WITH STATS_STREAM = 0x01000000010000000000000000000000CC99952100000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000A75E04016399000003000000000000000300000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000404000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000004040000000000000803FE219C967F48D6A47B312C26F82A36CFB040000
GO
/****** Object:  Statistic [_WA_Sys_00000006_2AA05119]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_2AA05119' and object_id = object_id(N'[dbo].[Ad]'))
CREATE STATISTICS [_WA_Sys_00000006_2AA05119] ON [dbo].[Ad]([Keyword]) WITH STATS_STREAM = 0x010000000100000000000000000000006E54A2240000000040000000000000000000000000000000E7020000E7000000FE0100000000000008D0000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_2AA05119]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_2AA05119' and object_id = object_id(N'[dbo].[Ad]'))
CREATE STATISTICS [_WA_Sys_0000000A_2AA05119] ON [dbo].[Ad]([ValidFrom]) WITH STATS_STREAM = 0x01000000010000000000000000000000B515DC9B00000000940100000000000054010000000000003D0000003D0000000800170300000000000000000000000007000000CB6817016399000003000000000000000300000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000040400000404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000B_2AA05119]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000B_2AA05119' and object_id = object_id(N'[dbo].[Ad]'))
CREATE STATISTICS [_WA_Sys_0000000B_2AA05119] ON [dbo].[Ad]([ValidTo]) WITH STATS_STREAM = 0x01000000010000000000000000000000C2DBD60900000000940100000000000054010000000000003D0000003D0000000800170300000000000000000000000007000000D06817016399000003000000000000000300000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000040400000404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_Ad]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_Ad' and object_id = object_id(N'[dbo].[Ad]'))
UPDATE STATISTICS [dbo].[Ad]([PK_Ad]) WITH STATS_STREAM = 0x01000000010000000000000000000000CA59697F000000001D02000000000000DD0100000000000024010000240000001000000000000000000000000000000007000000F75E0401639900000300000000000000030000000000000000000000ABAAAA3E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000003000000010000002000000000008041000040400000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000810000000000000018000000000000003B000000000000005E00000000000000100020000000803F000000000000803F15269F67B2F44F4BBCDC996200F12579040000100020000000803F000000000000803FB890B9E73493D442A68C996300DE428D040000100020000000803F000000000000803F94D08B0221647945A19999630114217E040000, ROWCOUNT = 0, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [aspnet_UsersInRoles_index]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_UsersInRoles_index' and object_id = object_id(N'[dbo].[aspnet_UsersInRoles]'))
UPDATE STATISTICS [dbo].[aspnet_UsersInRoles]([aspnet_UsersInRoles_index]) WITH STATS_STREAM = 0x0100000002000000000000000000000013BE732B00000000DF0100000000000087010000000000002401000024000000100000000000000000000000000000002401000024000000100000000000000000000000000000000700000079BF2C01B598000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000020000000000000420000803F00000000000080410000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FFFC981488BB62D4A85D014EF11DD1AD5040000, ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK__aspnet_UsersInRo__35BCFE0A]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_UsersInRo__35BCFE0A' and object_id = object_id(N'[dbo].[aspnet_UsersInRoles]'))
UPDATE STATISTICS [dbo].[aspnet_UsersInRoles]([PK__aspnet_UsersInRo__35BCFE0A]) WITH STATS_STREAM = 0x010000000200000000000000000000005F3673AE00000000DF0100000000000087010000000000002401000024000000100000000000000000000000000000002401000024000000100000000000000000000000000000000700000079BF2C01B598000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000020000000000000420000803F00000000000080410000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL CONSTRAINT [DF__aspnet_Me__Passw__164452B1]  DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE Latin1_General_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Membershi__1367E606] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Membership_index]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000003_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000003_4F47C5E3] ON [dbo].[aspnet_Membership]([Password]) WITH STATS_STREAM = 0x010000000100000000000000000000007C8099AD00000000FB01000000000000BB01000000000000E7030000E7000000000100000000000008D0000000000000070000002637CF002499000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000000400000004000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000002100000000000000570000000000000008000000000000003000100000000040000000000000803F040000010019003100FF0100000000000000020000000100000028000000280000000000000000000000010000003100020000004000000000020100000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000004_4F47C5E3] ON [dbo].[aspnet_Membership]([PasswordFormat]) WITH STATS_STREAM = 0x010000000100000000000000000000007338EE1F00000000BB010000000000007B01000000000000380100003800000004000A00000000000000000000000000070000002B37CF002499000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000000040000000000000803F00000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000005_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000005_4F47C5E3] ON [dbo].[aspnet_Membership]([PasswordSalt]) WITH STATS_STREAM = 0x01000000010000000000000000000000CB5638E3000000001602000000000000D601000000000000E7030000E7000000000100000000000008D0000000000000070000002B37CF002499000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000803F00000040000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000003C00000000000000720000000000000010000000000000002300000000000000100010000000803F000000000000803F040000300010000000803F000000000000803F040000010019003100FF0100000000000000020000000200000028000000280000000000000000000000010000003100020000004100000000010100000000
GO
/****** Object:  Statistic [_WA_Sys_00000006_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000006_4F47C5E3] ON [dbo].[aspnet_Membership]([MobilePIN]) WITH STATS_STREAM = 0x0100000001000000000000000000000084B023ED000000001602000000000000D601000000000000E7020000E7000000200000000000000008D0000000000000070000002B37CF002499000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000803F00000040000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000003C00000000000000720000000000000010000000000000002300000000000000100010000000803F000000000000803F040000300010000000803F000000000000803F040000010019003100FF0100000000000000020000000200000028000000280000000000000000000000010000003100020000004100000000010100000000
GO
/****** Object:  Statistic [_WA_Sys_00000007_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000007_4F47C5E3] ON [dbo].[aspnet_Membership]([Email]) WITH STATS_STREAM = 0x010000000100000000000000000000004219BDF400000000A7020000000000006702000000000000E7020000E7000000000200000000000008D000000000000007000000BD04F500FF98000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001000000000000C42000000400000000000000C420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000008400000000000000030100000000000010000000000000004100000000000000300010000000803F000000000000803F04000001003100640065006E006900730040006D006F006E006F002E0068007200300010000000803F000000000000803F0400000100430069006E0066006F0040006D006F006E006F002D0073006F006600740077006100720065002E0063006F006D00FF010000000000000002000000020000002800000028000000000000000000000023000000640065006E006900730040006D006F006E006F002E006800720069006E0066006F0040006D006F006E006F002D0073006F006600740077006100720065002E0063006F006D00030000004000000000810D00000001160D000000
GO
/****** Object:  Statistic [_WA_Sys_00000008_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000008_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000008_4F47C5E3] ON [dbo].[aspnet_Membership]([LoweredEmail]) WITH STATS_STREAM = 0x010000000100000000000000000000003B2A1FB800000000A7020000000000006702000000000000E7020000E7000000000200000000000008D0000000000000070000002D0EF000F698000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001000000000000C42000000400000000000000C420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000008400000000000000030100000000000010000000000000004100000000000000300010000000803F000000000000803F04000001003100640065006E006900730040006D006F006E006F002E0068007200300010000000803F000000000000803F0400000100430069006E0066006F0040006D006F006E006F002D0073006F006600740077006100720065002E0063006F006D00FF010000000000000002000000020000002800000028000000000000000000000023000000640065006E006900730040006D006F006E006F002E006800720069006E0066006F0040006D006F006E006F002D0073006F006600740077006100720065002E0063006F006D00030000004000000000810D00000001160D000000
GO
/****** Object:  Statistic [_WA_Sys_00000009_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000009_4F47C5E3] ON [dbo].[aspnet_Membership]([PasswordQuestion]) WITH STATS_STREAM = 0x01000000010000000000000000000000EAEB355400000000FB01000000000000BB01000000000000E7020000E7000000000200000000000008D0000000000000070000003037CF002499000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000000400000004000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000002100000000000000570000000000000008000000000000003000100000000040000000000000803F040000010019003100FF0100000000000000020000000100000028000000280000000000000000000000010000003100020000004000000000020100000000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_0000000A_4F47C5E3] ON [dbo].[aspnet_Membership]([PasswordAnswer]) WITH STATS_STREAM = 0x01000000010000000000000000000000B1A60B0000000000FB01000000000000BB01000000000000E7020000E7000000000100000000000008D000000000000007000000CEBB9B000F99000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000000400000004000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000002100000000000000570000000000000008000000000000003000100000000040000000000000803F040000010019003100FF0100000000000000020000000100000028000000280000000000000000000000010000003100020000004000000000020100000000
GO
/****** Object:  Statistic [_WA_Sys_0000000B_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000B_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_0000000B_4F47C5E3] ON [dbo].[aspnet_Membership]([IsApproved]) WITH STATS_STREAM = 0x010000000100000000000000000000000FA9DA9A00000000B8010000000000007801000000000000680100006800000001000100000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000110000000000803F00000040000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001C0000000000000008000000000000001000110000000040000000000000803F01040000
GO
/****** Object:  Statistic [_WA_Sys_0000000C_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000C_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_0000000C_4F47C5E3] ON [dbo].[aspnet_Membership]([IsLockedOut]) WITH STATS_STREAM = 0x010000000100000000000000000000007117E20600000000D4010000000000009401000000000000680100006800000001000100000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00000040000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000380000000000000010000000000000002400000000000000100011000000803F000000000000803F00040000100011000000803F000000000000803F01040000
GO
/****** Object:  Statistic [_WA_Sys_0000000D_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000D_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_0000000D_4F47C5E3] ON [dbo].[aspnet_Membership]([CreateDate]) WITH STATS_STREAM = 0x010000000100000000000000000000002647214600000000E201000000000000A2010000000000003D0100003D00000008001703000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F00000000A9980000040000100018000000803F000000000000803F00000000DB980000040000
GO
/****** Object:  Statistic [_WA_Sys_0000000E_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000E_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_0000000E_4F47C5E3] ON [dbo].[aspnet_Membership]([LastLoginDate]) WITH STATS_STREAM = 0x01000000010000000000000000000000287F33B800000000E201000000000000A2010000000000003D0100003D00000008001703000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F00000000DB980000040000100018000000803F000000000000803FFEE1AD0024990000040000
GO
/****** Object:  Statistic [_WA_Sys_0000000F_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000F_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_0000000F_4F47C5E3] ON [dbo].[aspnet_Membership]([LastPasswordChangedDate]) WITH STATS_STREAM = 0x010000000100000000000000000000002647214600000000E201000000000000A2010000000000003D0100003D00000008001703000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F00000000A9980000040000100018000000803F000000000000803F00000000DB980000040000
GO
/****** Object:  Statistic [_WA_Sys_00000010_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000010_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000010_4F47C5E3] ON [dbo].[aspnet_Membership]([LastLockoutDate]) WITH STATS_STREAM = 0x010000000100000000000000000000001305FF2A00000000E201000000000000A2010000000000003D0100003D00000008001703000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F645DD900FF980000040000100018000000803F000000000000803F000000001B990000040000
GO
/****** Object:  Statistic [_WA_Sys_00000011_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000011_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000011_4F47C5E3] ON [dbo].[aspnet_Membership]([FailedPasswordAttemptCount]) WITH STATS_STREAM = 0x01000000010000000000000000000000DAFFF54D00000000DA010000000000009A01000000000000380100003800000004000A00000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E0000000000000010000000000000002700000000000000100014000000803F000000000000803F00000000040000100014000000803F000000000000803F05000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000012_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000012_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000012_4F47C5E3] ON [dbo].[aspnet_Membership]([FailedPasswordAttemptWindowStart]) WITH STATS_STREAM = 0x010000000100000000000000000000001305FF2A00000000E201000000000000A2010000000000003D0100003D00000008001703000000000000000000000000070000003037CF002499000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F645DD900FF980000040000100018000000803F000000000000803F000000001B990000040000
GO
/****** Object:  Statistic [_WA_Sys_00000013_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000013_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000013_4F47C5E3] ON [dbo].[aspnet_Membership]([FailedPasswordAnswerAttemptCount]) WITH STATS_STREAM = 0x0100000001000000000000000000000024EFA89900000000BB010000000000007B01000000000000380100003800000004000A00000000000000000000000000070000003537CF002499000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000000040000000000000803F00000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000014_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000014_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000014_4F47C5E3] ON [dbo].[aspnet_Membership]([FailedPasswordAnswerAttemptWindowStart]) WITH STATS_STREAM = 0x01000000010000000000000000000000FDD781D700000000E201000000000000A2010000000000003D0100003D00000008001703000000000000000000000000070000003537CF002499000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F00000000B32FFFFF040000100018000000803F000000000000803F000000001B990000040000
GO
/****** Object:  Statistic [_WA_Sys_00000015_4F47C5E3]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000015_4F47C5E3' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
CREATE STATISTICS [_WA_Sys_00000015_4F47C5E3] ON [dbo].[aspnet_Membership]([Comment]) WITH STATS_STREAM = 0x010000000100000000000000000000005518E34F00000000EE01000000000000AE010000000000006300000063000000B80B00000000000008D000000000000007000000BD04F500FF98000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000010000001000000000000000000000400000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000001B000000000000004A000000000000000800000000000000100010000000803F000000000000803F040000FF01000000010000000200000002000000280000002800000000000000000000000000000001000000010000000000
GO
/****** Object:  Statistic [aspnet_Membership_index]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_Membership_index' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
UPDATE STATISTICS [dbo].[aspnet_Membership]([aspnet_Membership_index]) WITH STATS_STREAM = 0x01000000020000000000000000000000B35C9B7700000000DF010000000000008701000000000000240100002400000010000000000000000000000000000000E7020000E7000000000200000000000008D0000000000000070000007950BB00F398000002000000000000000200000000000000000000000000803F0000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000020000002000000000004C4200000040000000000000804100000C4200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000000040000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK__aspnet_Membershi__1367E606]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Membershi__1367E606' and object_id = object_id(N'[dbo].[aspnet_Membership]'))
UPDATE STATISTICS [dbo].[aspnet_Membership]([PK__aspnet_Membershi__1367E606]) WITH STATS_STREAM = 0x010000000300000000000000000000005955DFFD000000002202000000000000B201000000000000240100002400000010000000000000000000000000000000240100002400000010000000000000000000000000000000E7020000E7000000000200000000000008D0000000000000070000007950BB00F398000002000000000000000200000000000000000000000000003F0000003F0000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000300000020000000000086420000004000000000000080410000804100000C4200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000560000000000000010000000000000003300000000000000100020000000803F000000000000803F7B089EFF0FF42D40B5E698DB01468CB6040000100020000000803F000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO

/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000004_4CA06362]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_4CA06362' and object_id = object_id(N'[dbo].[aspnet_PersonalizationPerUser]'))
CREATE STATISTICS [_WA_Sys_00000004_4CA06362] ON [dbo].[aspnet_PersonalizationPerUser]([PageSettings]) WITH STATS_STREAM = 0x0100000001000000000000000000000045DEA6AC00000000830200000000000043020000000000002201000022000000701700000000000000000000000000000700000097D50201E298000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000048430000803F0000000000004843000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000E7000000000000000800000000000000300010000000803F000000000000803F0400000100DF00FF01142B0010020202021929714D6F6E6F536F6674776172652E4D6F6E6F582E506F7274616C576562506172744D616E616765722C204170705F436F64652E7834636B677835742C2056657273696F6E3D302E302E302E302C2043756C747572653D6E657274732E47656E6572696357656250617274050A677770656469746F723102011E0B4368726F6D6553746174650B2A3253797374656D2E5765622E55492E576562436F6E74726F6C732E57656250617274732E506172744368726F6D6553746174650066
GO
/****** Object:  Statistic [_WA_Sys_00000005_4CA06362]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_4CA06362' and object_id = object_id(N'[dbo].[aspnet_PersonalizationPerUser]'))
CREATE STATISTICS [_WA_Sys_00000005_4CA06362] ON [dbo].[aspnet_PersonalizationPerUser]([LastUpdatedDate]) WITH STATS_STREAM = 0x01000000010000000000000000000000FC1785D300000000BF010000000000007F010000000000003D0100003D000000080017030000000000000000000000000700000097D50201E298000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000018000000000000410000803F000000000000004100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000023000000000000000800000000000000100018000000803F000000000000803F241D6601B4980000040000
GO
/****** Object:  Statistic [aspnet_PersonalizationPerUser_index1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_PersonalizationPerUser_index1' and object_id = object_id(N'[dbo].[aspnet_PersonalizationPerUser]'))
UPDATE STATISTICS [dbo].[aspnet_PersonalizationPerUser]([aspnet_PersonalizationPerUser_index1]) WITH STATS_STREAM = 0x0100000002000000000000000000000024F3DD7800000000DF010000000000008701000000000000240000002400000010000000000000000000000000000000240000002400000010000000000000000000000000000000070000007AC91501B498000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000020000000000000420000803F00000000000080410000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F9D145E11B6BF514CBA1A1CA69080174A040000, ROWCOUNT = 0, PAGECOUNT = 1
GO
/****** Object:  Statistic [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_PersonalizationPerUser_ncindex2' and object_id = object_id(N'[dbo].[aspnet_PersonalizationPerUser]'))
UPDATE STATISTICS [dbo].[aspnet_PersonalizationPerUser]([aspnet_PersonalizationPerUser_ncindex2]) WITH STATS_STREAM = 0x01000000020000000000000000000000601F1D4800000000DF010000000000008701000000000000240000002400000010000000000000000000000000000000240000002400000010000000000000000000000000000000070000007FC91501B498000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000020000000000000420000803F00000000000080410000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F4E37FBF37ACE6949B3EC0E4C6B6EE47C040000, ROWCOUNT = 0, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK__aspnet_Personali__4D94879B]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Personali__4D94879B' and object_id = object_id(N'[dbo].[aspnet_PersonalizationPerUser]'))
UPDATE STATISTICS [dbo].[aspnet_PersonalizationPerUser]([PK__aspnet_Personali__4D94879B]) WITH STATS_STREAM = 0x010000000300000000000000000000005944303C00000000F70100000000000087010000000000002401000024000000100000000000000000000000000000002400000024000000100000000000000000000000000000002400000024000000100000000000000000000000000000000700000097D50201E298000001000000000000000100000000000000000000000000803F0000803F0000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000300000020000000000040420000803F00000000000080410000804100008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F18EADE7A9FA8704CAFEFC27D9587ED90040000, ROWCOUNT = 0, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Statistic [_WA_Sys_00000002_49C3F6B7]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_49C3F6B7' and object_id = object_id(N'[dbo].[aspnet_PersonalizationAllUsers]'))
CREATE STATISTICS [_WA_Sys_00000002_49C3F6B7] ON [dbo].[aspnet_PersonalizationAllUsers]([PageSettings]) WITH STATS_STREAM = 0x01000000010000000000000000000000A0F22412000000006A030000000000002A030000000000002201000022000000701700000000000000000000000000000700000057C90201E298000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001000000000004843000000400000000000004843000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000CE010000000000001000000000000000EF00000000000000300010000000803F000000000000803F0400000100DF00FF01142B000E020202011929714D6F6E6F536F6674776172652E4D6F6E6F582E506F7274616C576562506172744D616E616765722C204170705F436F64652E7774396372396E632C2056657273696F6E3D302E302E302E302C2043756C747572653D6E652E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D62303366356637663131643530613361051A7E2F57656250617274732F48746D6C456469746F722E61736378050C7770313334393438393732316768300010000000803F000000000000803F0400000100DF00FF01142B0013020202021929714D6F6E6F536F6674776172652E4D6F6E6F582E506F7274616C576562506172744D616E616765722C204170705F436F64652E6B6B706D7771696B2C2056657273696F6E3D302E302E302E302C2043756C747572653D6E656378050C7770323130323639343538316768050C77703231303236393435383102011E0A4368726F6D65547970650B2A3153797374656D2E5765622E55492E576562436F6E74726F6C732E57656250617274732E506172744368726F6D65547970650066
GO
/****** Object:  Statistic [_WA_Sys_00000003_49C3F6B7]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_49C3F6B7' and object_id = object_id(N'[dbo].[aspnet_PersonalizationAllUsers]'))
CREATE STATISTICS [_WA_Sys_00000003_49C3F6B7] ON [dbo].[aspnet_PersonalizationAllUsers]([LastUpdatedDate]) WITH STATS_STREAM = 0x0100000001000000000000000000000090CA7CE500000000E201000000000000A2010000000000003D0100003D000000080017030000000000000000000000000700000057C90201E298000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F2A59F800D4980000040000100018000000803F000000000000803FE5D00F01D7980000040000
GO
/****** Object:  Statistic [PK__aspnet_Personali__4AB81AF0]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Personali__4AB81AF0' and object_id = object_id(N'[dbo].[aspnet_PersonalizationAllUsers]'))
UPDATE STATISTICS [dbo].[aspnet_PersonalizationAllUsers]([PK__aspnet_Personali__4AB81AF0]) WITH STATS_STREAM = 0x010000000100000000000000000000009EA51CDA00000000C7010000000000008701000000000000240100002400000010000000000000000000000000000000070000007BF92001B598000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000803F00000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000803F000000000000803F5697984AA51A4B4C8281793E2DB1019E040000, ROWCOUNT = 4, PAGECOUNT = 2
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]  DEFAULT (newid()),
	[UserName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]  DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]  DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Users__03317E3D] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Users_Index]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO

/****** Object:  Index [aspnet_Users_Index2]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000003_41EDCAC5]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_41EDCAC5' and object_id = object_id(N'[dbo].[aspnet_Users]'))
CREATE STATISTICS [_WA_Sys_00000003_41EDCAC5] ON [dbo].[aspnet_Users]([UserName]) WITH STATS_STREAM = 0x01000000010000000000000000000000785C7BE3000000003F02000000000000FF01000000000000E7030000E7000000000200000000000008D000000000000007000000BD04F500FF98000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000104100000040000000000000104100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000050000000000000009B0000000000000010000000000000003100000000000000300010000000803F000000000000803F04000001002100640065006E0069007300300010000000803F000000000000803F04000001001F007500730065007200FF010000000000000002000000020000002800000028000000000000000000000009000000640065006E006900730075007300650072000300000040000000008105000000010405000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_41EDCAC5]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_41EDCAC5' and object_id = object_id(N'[dbo].[aspnet_Users]'))
CREATE STATISTICS [_WA_Sys_00000004_41EDCAC5] ON [dbo].[aspnet_Users]([LoweredUserName]) WITH STATS_STREAM = 0x01000000010000000000000000000000CF8823CC000000003F02000000000000FF01000000000000E7030000E7000000000200000000000008D000000000000007000000CD1DBD00F398000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000104100000040000000000000104100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000050000000000000009B0000000000000010000000000000003100000000000000300010000000803F000000000000803F04000001002100640065006E0069007300300010000000803F000000000000803F04000001001F007500730065007200FF010000000000000002000000020000002800000028000000000000000000000009000000640065006E006900730075007300650072000300000040000000008105000000010405000000
GO
/****** Object:  Statistic [_WA_Sys_00000006_41EDCAC5]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_41EDCAC5' and object_id = object_id(N'[dbo].[aspnet_Users]'))
CREATE STATISTICS [_WA_Sys_00000006_41EDCAC5] ON [dbo].[aspnet_Users]([IsAnonymous]) WITH STATS_STREAM = 0x01000000010000000000000000000000A33D8B2D00000000D40100000000000094010000000000006801000068000000010001000000000000000000000000000700000019BC9B000F99000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00000040000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000380000000000000010000000000000002400000000000000100011000000803F000000000000803F00040000100011000000803F000000000000803F01040000
GO
/****** Object:  Statistic [_WA_Sys_00000007_41EDCAC5]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000007_41EDCAC5' and object_id = object_id(N'[dbo].[aspnet_Users]'))
CREATE STATISTICS [_WA_Sys_00000007_41EDCAC5] ON [dbo].[aspnet_Users]([LastActivityDate]) WITH STATS_STREAM = 0x0100000001000000000000000000000061FA4B4300000000E201000000000000A2010000000000003D0100003D000000080017030000000000000000000000000700000066CFA8005B99000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000010000001800000000000041000000400000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000460000000000000010000000000000002B00000000000000100018000000803F000000000000803F5131AF0024990000040000100018000000803F000000000000803F5CDFDC005A990000040000
GO
/****** Object:  Statistic [aspnet_Users_Index]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_Users_Index' and object_id = object_id(N'[dbo].[aspnet_Users]'))
UPDATE STATISTICS [dbo].[aspnet_Users]([aspnet_Users_Index]) WITH STATS_STREAM = 0x01000000020000000000000000000000F3D6985700000000DF010000000000008701000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D0000000000000070000007A22BA00F398000002000000000000000200000000000000000000000000803F0000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000002000000200000000000C8410000004000000000000080410000104100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000000040000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [aspnet_Users_Index2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_Users_Index2' and object_id = object_id(N'[dbo].[aspnet_Users]'))
UPDATE STATISTICS [dbo].[aspnet_Users]([aspnet_Users_Index2]) WITH STATS_STREAM = 0x010000000300000000000000000000003076D3A800000000F70100000000000087010000000000002401000024000000100000000000000000000000000000003D0100003D00000008001703000000000000000000000000E7030000E7000000000200000000000008D0000000000000070000007A22BA00F398000002000000000000000200000000000000000000000000803F0000003F0000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000300000020000000000004420000004000000000000080410000004100001041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000000040000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK__aspnet_Users__03317E3D]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Users__03317E3D' and object_id = object_id(N'[dbo].[aspnet_Users]'))
UPDATE STATISTICS [dbo].[aspnet_Users]([PK__aspnet_Users__03317E3D]) WITH STATS_STREAM = 0x0100000003000000000000000000000068ED6A82000000002202000000000000B201000000000000240100002400000010000000000000000000000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D0000000000000070000007A22BA00F398000002000000000000000200000000000000000000000000003F0000003F0000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000030000002000000000002442000000400000000000008041000080410000104100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000560000000000000010000000000000003300000000000000100020000000803F000000000000803F7B089EFF0FF42D40B5E698DB01468CB6040000100020000000803F000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[Page]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Page]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Page](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[FilePath] [nvarchar](450) COLLATE Latin1_General_CI_AS NULL,
	[Url] [nvarchar](450) COLLATE Latin1_General_CI_AS NULL,
	[ParentId] [uniqueidentifier] NULL,
	[ShowInNavigation] [bit] NOT NULL CONSTRAINT [DF_Page_ShowInNavigation]  DEFAULT ((0)),
	[PageOrder] [int] NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [IX_Page_1]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Page]') AND name = N'IX_Page_1')
CREATE NONCLUSTERED INDEX [IX_Page_1] ON [dbo].[Page] 
(
	[Url] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000002_09A971A2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000002_09A971A2' and object_id = object_id(N'[dbo].[Page]'))
CREATE STATISTICS [_WA_Sys_00000002_09A971A2] ON [dbo].[Page]([ApplicationId]) WITH STATS_STREAM = 0x010000000100000000000000000000006AE1920200000000C701000000000000870100000000000024010000240000001000000000000000000000000000000007000000E4340F01B398000007000000000000000700000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000020000000000080410000E04000000000000080410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B000000000000000800000000000000100020000000E040000000000000803FE219C967F48D6A47B312C26F82A36CFB040000
GO
/****** Object:  Statistic [_WA_Sys_00000006_09A971A2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000006_09A971A2' and object_id = object_id(N'[dbo].[Page]'))
CREATE STATISTICS [_WA_Sys_00000006_09A971A2] ON [dbo].[Page]([FilePath]) WITH STATS_STREAM = 0x01000000010000000000000000000000555AF0C500000000CB010000000000008B01000000000000E7020000E7000000840300000000000008D00000000000000700000077C726015599000005000000000000000500000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000010000000000000000000A0400000A040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000002F00000000000000FF01000000050000000500000001000000280000002800000000000000000000000000000001000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000008_09A971A2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000008_09A971A2' and object_id = object_id(N'[dbo].[Page]'))
CREATE STATISTICS [_WA_Sys_00000008_09A971A2] ON [dbo].[Page]([ParentId]) WITH STATS_STREAM = 0x010000000100000000000000000000006CEE4C5C00000000F201000000000000B20100000000000024000000240000001000000000000000000000000000000007000000D6340F01B39800000700000000000000070000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000020000000254912410000E04000004040254912410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005600000000000000100000000000000033000000000000001000200000004040000000000000803FD04410A385EDFA46AC4E98A6019B10B4040000100020000000803F000000000000803F013D1DECEBBCF5479CCA98AB00C179BD040000
GO
/****** Object:  Statistic [_WA_Sys_00000009_09A971A2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000009_09A971A2' and object_id = object_id(N'[dbo].[Page]'))
CREATE STATISTICS [_WA_Sys_00000009_09A971A2] ON [dbo].[Page]([ShowInNavigation]) WITH STATS_STREAM = 0x010000000100000000000000000000001E7FFDF600000000D401000000000000940100000000000068010000680000000100010000000000000000000000000007000000BDEAF700E29800000B000000000000000B00000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00003041000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000380000000000000010000000000000002400000000000000100011000000C040000000000000803F00040000100011000000A040000000000000803F01040000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_09A971A2]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_0000000A_09A971A2' and object_id = object_id(N'[dbo].[Page]'))
CREATE STATISTICS [_WA_Sys_0000000A_09A971A2] ON [dbo].[Page]([PageOrder]) WITH STATS_STREAM = 0x01000000010000000000000000000000C7B489AE00000000FF08000000000000BF08000000000000380000003800000004000A0000000000000000000000000007000000C9351B012B9900003E000000000000003E00000000000000000000008A4B863C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003D0000003D0000000100000014000000000080400000784200000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000006307000000000000E801000000000000FF0100000000000016020000000000002D0200000000000044020000000000005B0200000000000072020000000000008902000000000000A002000000000000B702000000000000CE02000000000000E502000000000000FC0200000000000013030000000000002A03000000000000410300000000000058030000000000006F0300000000000086030000000000009D03000000000000B403000000000000CB03000000000000E203000000000000F903000000000000100400000000000027040000000000003E0400000000000055040000000000006C0400000000000083040000000000009A04000000000000B104000000000000C804000000000000DF04000000000000F6040000000000000D0500000000000024050000000000003B050000000000005205000000000000690500000000000080050000000000009705000000000000AE05000000000000C505000000000000DC05000000000000F3050000000000000A06000000000000210600000000000038060000000000004F0600000000000066060000000000007D060000000000009406000000000000AB06000000000000C206000000000000D906000000000000F00600000000000007070000000000001E0700000000000035070000000000004C070000000000001000140000000040000000000000803F00000000040000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F02000000040000100014000000803F000000000000803F03000000040000100014000000803F000000000000803F04000000040000100014000000803F000000000000803F05000000040000100014000000803F000000000000803F06000000040000100014000000803F000000000000803F07000000040000100014000000803F000000000000803F08000000040000100014000000803F000000000000803F09000000040000100014000000803F000000000000803F0A000000040000100014000000803F000000000000803F0B000000040000100014000000803F000000000000803F0C000000040000100014000000803F000000000000803F0D000000040000100014000000803F000000000000803F0E000000040000100014000000803F000000000000803F0F000000040000100014000000803F000000000000803F10000000040000100014000000803F000000000000803F11000000040000100014000000803F000000000000803F12000000040000100014000000803F000000000000803F13000000040000100014000000803F000000000000803F14000000040000100014000000803F000000000000803F15000000040000100014000000803F000000000000803F16000000040000100014000000803F000000000000803F17000000040000100014000000803F000000000000803F18000000040000100014000000803F000000000000803F19000000040000100014000000803F000000000000803F1A000000040000100014000000803F000000000000803F1B000000040000100014000000803F000000000000803F1C000000040000100014000000803F000000000000803F1D000000040000100014000000803F000000000000803F1E000000040000100014000000803F000000000000803F1F000000040000100014000000803F000000000000803F20000000040000100014000000803F000000000000803F21000000040000100014000000803F000000000000803F22000000040000100014000000803F000000000000803F23000000040000100014000000803F000000000000803F24000000040000100014000000803F000000000000803F25000000040000100014000000803F000000000000803F26000000040000100014000000803F000000000000803F27000000040000100014000000803F000000000000803F28000000040000100014000000803F000000000000803F29000000040000100014000000803F000000000000803F2A000000040000100014000000803F000000000000803F2B000000040000100014000000803F000000000000803F2C000000040000100014000000803F000000000000803F2D000000040000100014000000803F000000000000803F2E000000040000100014000000803F000000000000803F2F000000040000100014000000803F000000000000803F30000000040000100014000000803F000000000000803F31000000040000100014000000803F000000000000803F32000000040000100014000000803F000000000000803F33000000040000100014000000803F000000000000803F34000000040000100014000000803F000000000000803F35000000040000100014000000803F000000000000803F36000000040000100014000000803F000000000000803F37000000040000100014000000803F000000000000803F38000000040000100014000000803F000000000000803F39000000040000100014000000803F000000000000803F3A000000040000100014000000803F000000000000803F3B000000040000100014000000803F000000000000803F3C000000040000
GO
/****** Object:  Statistic [IX_Page_1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'IX_Page_1' and object_id = object_id(N'[dbo].[Page]'))
UPDATE STATISTICS [dbo].[Page]([IX_Page_1]) WITH STATS_STREAM = 0x010000000200000000000000000000009C0E88F9000000000602000000000000AE01000000000000E7020000E7000000840300000000000008D000000000000024010000240000001000000000000000000000000000000007000000C7340F01B398000007000000000000000700000000000000000000000000003F2549123E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000010000000000080410000E0400000A040000000000000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000001B000000000000004A0000000000000008000000000000001000100000000040000000000000803F040000FF01000000050000000700000002000000280000002800000000000000000000000000000001000000020000000000, ROWCOUNT = 45, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Page]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK_Page' and object_id = object_id(N'[dbo].[Page]'))
UPDATE STATISTICS [dbo].[Page]([PK_Page]) WITH STATS_STREAM = 0x010000000100000000000000000000001CE97382000000009E020000000000005E0200000000000024010000240000001000000000000000000000000000000007000000D6340F01B3980000070000000000000007000000000000000000803F2549123E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000060000000100000020000000000080410000E040000000000000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000002010000000000003000000000000000530000000000000076000000000000009900000000000000BC00000000000000DF00000000000000100020000000803F000000000000803F393A89CF803BEE48B8D598A601328721040000100020000000803F000000000000803F834622FB7C08074582F198A6019AD19D040000100020000000803F000000000000803FD04410A385EDFA46AC4E98A6019B10B4040000100020000000803F000000000000803F09C395D1880E8F4388C198AB00C14971040000100020000000803F0000803F0000803F35F4F04D4DDAD54BAB9698AB00C175B6040000100020000000803F000000000000803F013D1DECEBBCF5479CCA98AB00C179BD040000, ROWCOUNT = 45, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]  DEFAULT (newid()),
	[Path] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK__aspnet_Paths__44FF419A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Paths_index]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000003_59C55456]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_59C55456' and object_id = object_id(N'[dbo].[aspnet_Paths]'))
CREATE STATISTICS [_WA_Sys_00000003_59C55456] ON [dbo].[aspnet_Paths]([Path]) WITH STATS_STREAM = 0x010000000100000000000000000000007A527D8F00000000AE040000000000006E04000000000000E7030000E7000000000200000000000008D0000000000000070000001CD91601319900000600000000000000060000000000000000000000ABAA2A3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000060000000100000010000000000038420000C0400000000000003842000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000CE010000000000000A0300000000000030000000000000006F00000000000000AC00000000000000F30000000000000050010000000000009B01000000000000300010000000803F000000000000803F04000001003F002F004D006F006E006F00580032002F00440065006600610075006C0074002E006100730070007800300010000000803F000000000000803F04000001003D002F004D006F006E006F00580032002F004800320043006F006C0073002E006100730070007800300010000000803F000000000000803F040000010047002F004D006F006E006F00580032002F00480065006100640065007200320043006F006C0073002E006100730070007800300010000000803F000000000000803F04000001005D002F004D006F006E006F00580032002F006C0061006E00670075006100670065002F00680072002D00480052002F00440065006600610075006C0074002E006100730070007800300010000000803F000000000000803F04000001004B002F00540072006F006700690072004F006E006C0069006E0065002F00440065006600610075006C0074002E006100730070007800300010000000803F000000000000803F040000010033007E002F00440065006600610075006C0074002E006100730070007800FF0100000000000000060000000600000028000000280000000000000000000000700000002F004D006F006E006F00580032002F00440065006600610075006C0074002E0061007300700078004800320043006F006C0073002E00610073007000780065006100640065007200320043006F006C0073002E0061007300700078006C0061006E00670075006100670065002F00680072002D00480052002F00440065006600610075006C0074002E006100730070007800540072006F006700690072004F006E006C0069006E0065002F00440065006600610075006C0074002E0061007300700078007E002F00440065006600610075006C0074002E0061007300700078000A0000004000000000C001000000C007010000810C080000C001140000810A150000010F1F0000011B2E00000119490000010E62000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_59C55456]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_59C55456' and object_id = object_id(N'[dbo].[aspnet_Paths]'))
CREATE STATISTICS [_WA_Sys_00000004_59C55456] ON [dbo].[aspnet_Paths]([LoweredPath]) WITH STATS_STREAM = 0x01000000010000000000000000000000901A7E460000000048030000000000000803000000000000E7030000E7000000000200000000000008D000000000000007000000A31DBD00F39800000300000000000000030000000000000000000000ABAAAA3E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000003000000010000001000000000003842000040400000000000003842000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000E700000000000000A40100000000000018000000000000005700000000000000B400000000000000300010000000803F000000000000803F04000001003F002F006D006F006E006F00780032002F00640065006600610075006C0074002E006100730070007800300010000000803F000000000000803F04000001005D002F006D006F006E006F00780032002F006C0061006E00670075006100670065002F00680072002D00680072002F00640065006600610075006C0074002E006100730070007800300010000000803F000000000000803F040000010033007E002F00640065006600610075006C0074002E006100730070007800FF01000000000000000300000003000000280000002800000000000000000000003D0000002F006D006F006E006F00780032002F00640065006600610075006C0074002E0061007300700078006C0061006E00670075006100670065002F00680072002D00680072002F00640065006600610075006C0074002E0061007300700078007E002F00640065006600610075006C0074002E006100730070007800050000004000000000C008000000810C080000011B140000010E2F000000
GO
/****** Object:  Statistic [aspnet_Paths_index]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_Paths_index' and object_id = object_id(N'[dbo].[aspnet_Paths]'))
UPDATE STATISTICS [dbo].[aspnet_Paths]([aspnet_Paths_index]) WITH STATS_STREAM = 0x01000000020000000000000000000000C7A86E3F00000000DF010000000000008701000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D000000000000007000000788BBB00F398000003000000000000000300000000000000000000000000803FABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000020000000000078420000404000000000000080410000384200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000004040000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK__aspnet_Paths__44FF419A]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Paths__44FF419A' and object_id = object_id(N'[dbo].[aspnet_Paths]'))
UPDATE STATISTICS [dbo].[aspnet_Paths]([PK__aspnet_Paths__44FF419A]) WITH STATS_STREAM = 0x0100000003000000000000000000000024BC2968000000004D02000000000000DD01000000000000240100002400000010000000000000000000000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D000000000000007000000788BBB00F39800000300000000000000030000000000000000000000ABAAAA3EABAAAA3EABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000003000000030000002000000000009C42000040400000000000008041000080410000384200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000810000000000000018000000000000003B000000000000005E00000000000000100020000000803F000000000000803F8AFAF93BA859614D97740CC2078C2B99040000100020000000803F000000000000803FF9F38B071C10654CBFF6DE0C9FB1E868040000100020000000803F000000000000803F523EC5D87E2BF2498A8FE9C23C9932B1040000, ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]  DEFAULT (newid()),
	[RoleName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Roles__31EC6D26] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Roles_index1]    Script Date: 08/07/2007 10:08:17 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Statistic [_WA_Sys_00000003_540C7B00]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000003_540C7B00' and object_id = object_id(N'[dbo].[aspnet_Roles]'))
CREATE STATISTICS [_WA_Sys_00000003_540C7B00] ON [dbo].[aspnet_Roles]([RoleName]) WITH STATS_STREAM = 0x0100000001000000000000000000000038237790000000002A07000000000000EA06000000000000E7030000E7000000000200000000000008D0000000000000070000001D55E600FF98000010000000000000001000000000000000000000000000803D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000001000000100000000000F84100008041000000000000F841000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000E00300000000000086050000000000008000000000000000C300000000000000E20000000000000021010000000000004A010000000000007D01000000000000B001000000000000F90100000000000030020000000000006702000000000000A802000000000000E302000000000000040300000000000043030000000000007E03000000000000B503000000000000300010000000803F000000000000803F040000010043002100540045005300540020007A00740065007700720074006100730066006600670061007300640066003100300010000000803F000000000000803F04000001001F006100310073003200300010000000803F000000000000803F04000001003F0041004100410041004100200032002000730064007300660061007300640066006100730064006600300010000000803F000000000000803F04000001002900410041004100410041004100410041004100300010000000803F000000000000803F0400000100330041004100410041004100410041004100410041004100410041004100300010000000803F000000000000803F04000001003300410064006D0069006E006900730074007200610074006F0072007300300010000000803F000000000000803F040000010049004100530041005300410053004100530041005300410053004100530041002000650072007400720065007400650072007400300010000000803F000000000000803F040000010037006100730064006600610073006400660061007300640066006100730064002000300010000000803F000000000000803F040000010037006100730064006600610073006400660064006100730066006100640073006600300010000000803F000000000000803F04000001004100730064006600670073006400660067002000730064006600730064006600730064006600730064006600300010000000803F000000000000803F04000001003B00730066006700790066006700730064006600670073006400660067007300640066006700300010000000803F000000000000803F0400000100210055007300650072007300300010000000803F000000000000803F04000001003F007A007900730064006600640066006100730064006600610073006400660061007300640066002000300010000000803F000000000000803F04000001003B007A007A007400730072006700730064006600670066006400680067006800670068006700300010000000803F000000000000803F040000010037007A007A007A006100730064006600610066006100730064006600610073006400300010000000803F000000000000803F04000001002B007A007A007A006100730066006100730064006600FF01000000000000000A0000000A00000028000000280000000000000000000000960000002100540045005300540020007A007400650077007200740061007300660066006700610073006400660031004100410041004100410020003200200073006400730066006100730064006600610073006400660041004100410041004100410041004100410064006D0069006E006900730074007200610074006F0072007300730064006600610073006400660061007300640066006100730064002000640061007300660061006400730066007300660067007900660067007300640066006700730064006600670073006400660067007A0079007300640066006400660061007300640066006100730064006600610073006400660020007A0074007300720067007300640066006700660064006800670068006700680067007A0061007300660061007300640066001000000040000000008116000000C001160000C004170000810F1B000001092A0000810D3300004007400000810847000001084F00008112570000400169000081136A000040017D000081107E000001088E000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_540C7B00]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000004_540C7B00' and object_id = object_id(N'[dbo].[aspnet_Roles]'))
CREATE STATISTICS [_WA_Sys_00000004_540C7B00] ON [dbo].[aspnet_Roles]([LoweredRoleName]) WITH STATS_STREAM = 0x01000000010000000000000000000000581E0A7A00000000C1070000000000008107000000000000E7030000E7000000000200000000000008D000000000000007000000F0EABD00F398000013000000000000001300000000000000000000003694573D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001300000013000000010000001000000087F2FA41000098410000000087F2FA41000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000A1040000000000001D060000000000009800000000000000D900000000000000180100000000000041010000000000007401000000000000A901000000000000DC0100000000000025020000000000005C020000000000009302000000000000D402000000000000F50200000000000034030000000000005F030000000000009203000000000000C103000000000000F80300000000000023040000000000006204000000000000300010000000803F000000000000803F040000010041002100740065007300740020007A0074006500770072007400610073006600660067006100730064006600300010000000803F000000000000803F04000001003F0061006100610061006100200032002000730064007300660061007300640066006100730064006600300010000000803F000000000000803F04000001002900610061006100610061006100610061006100300010000000803F000000000000803F0400000100330061006100610061006100610061006100610061006100610061006100300010000000803F000000000000803F04000001003500610061006100610073006400610073006400610073006400610073006400300010000000803F000000000000803F04000001003300610064006D0069006E006900730074007200610074006F0072007300300010000000803F000000000000803F040000010049006100730061007300610073006100730061007300610073006100730061002000650072007400720065007400650072007400300010000000803F000000000000803F040000010037006100730064006600610073006400660061007300640066006100730064002000300010000000803F000000000000803F040000010037006100730064006600610073006400660064006100730066006100640073006600300010000000803F000000000000803F04000001004100730064006600670073006400660067002000730064006600730064006600730064006600730064006600300010000000803F000000000000803F0400000100210075007300650072007300300010000000803F000000000000803F04000001003F007A007900730064006600640066006100730064006600610073006400660061007300640066002000300010000000803F000000000000803F04000001002B007A007A0035003500350035003500350035003500300010000000803F000000000000803F040000010033007A007A00610073006400660061007300640066006100730064006600300010000000803F000000000000803F04000001002F007A007A007400730072006700730064006600670066006400300010000000803F000000000000803F040000010037007A007A007A006100730064006600610066006100730064006600610073006400300010000000803F000000000000803F04000001002B007A007A007A006100730066006100730064006600300010000000803F000000000000803F04000001003F007A007A007A007A0079003C0064006600610073006400660064006100730066006400610073002000300010000000803F000000000000803F04000001003F007A007A007A007A007A007A007A007A007A007A007A007A0037003700370037003700370037003700FF01000000000000000A0000000A00000028000000280000000000000000000000810000002100740065007300740020007A00740065007700720074006100730066006600670061007300640066006100610061006100610061006100610061007300640061007300640061007300640061007300640073006100730061007300610073006100730061007300610073006100200065007200740072006500740065007200740064006600610073006400660064006100730066006100640073006600750073006500720073007A007A003500350035003500350035003500350074007300720067007300640066006700660064007A0061007300660061007300640066007A007A007A007A007A007A007A007A007A00370037003700370037003700370037001000000040000000008115000000C001150000C0031600008105190000010B1E0000400129000081172A0000010E41000081054F000040025400008108560000810A5E000040016800008107690000011170000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_540C7B00]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'_WA_Sys_00000005_540C7B00' and object_id = object_id(N'[dbo].[aspnet_Roles]'))
CREATE STATISTICS [_WA_Sys_00000005_540C7B00] ON [dbo].[aspnet_Roles]([Description]) WITH STATS_STREAM = 0x010000000100000000000000000000006B0FFDA10000000057050000000000001705000000000000E7020000E7000000000200000000000008D0000000000000070000002255E600FF980000100000000000000010000000000000000000803F2549923D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000000C00000001000000100000000000A141000080410000803F0000A141000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000A602000000000000B30300000000000060000000000000007300000000000000AA00000000000000E500000000000000160100000000000043010000000000006E010000000000009D01000000000000CE010000000000000B0200000000000042020000000000006F020000000000001000100000004040000000000000803F040000300010000000803F0000803F0000803F040000010037006100730064006600610073006400660061007300640066006100730064006600300010000000803F000000000000803F04000001003B00610073006400660061007300640066006100730064006600610073006400660073006400300010000000803F000000000000803F040000010031006100730064006600610073006400660061007300640066007300300010000000803F000000000000803F04000001002D0061007300640066006100730064006600730064006100300010000000803F000000000000803F04000001002B00640065007300630069007000740069006F006E00300010000000803F000000000000803F04000001002F00660061007300640066006100730066006100730064006600300010000000803F000000000000803F040000010031006600730064006600670073006400660067007300640066006700300010000000803F000000000000803F04000001003D0067007300640066006700730064006600670073006400660067006E0062006E0062006E006200300010000000803F000000000000803F040000010037007300610064006600610073006400660061007300640066006100730064006600300010000000803F000000000000803F04000001002D0073006400610064006100730064006100640061006400300010000000803F000000000000803F040000010037007300670073006400660067007300640066006700730064006600670064006700FF01000000010000000A0000000A0000002800000028000000000000000000000051000000610073006400610073006400660061007300640066006100730064006600610073006400660066006100730064006600610073006600610073006400660067007300640066006700730064006600670073006400660067006E0062006E0062006E00620073006100640066006100730064006600610073006400660061007300640066006700730064006600670073006400660067007300640066006700640067000D0000004100000000C00300000081030300004005060000C0040B000081040F000001010100000103010000810C13000081131F00004001320000810F330000010F42000000
GO
/****** Object:  Statistic [aspnet_Roles_index1]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'aspnet_Roles_index1' and object_id = object_id(N'[dbo].[aspnet_Roles]'))
UPDATE STATISTICS [dbo].[aspnet_Roles]([aspnet_Roles_index1]) WITH STATS_STREAM = 0x0100000002000000000000000000000033B1668600000000DF010000000000008701000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D000000000000007000000CD6FBB00F398000013000000000000001300000000000000000000000000803F3694573D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000020000002000000044793D4200009841000000000000804187F2FA4100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000002B0000000000000008000000000000001000200000009841000000000000803FE219C967F48D6A47B312C26F82A36CFB040000, ROWCOUNT = 5, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK__aspnet_Roles__31EC6D26]    Script Date: 08/07/2007 10:08:17 ******/
if not exists (select * from sys.stats where name = N'PK__aspnet_Roles__31EC6D26' and object_id = object_id(N'[dbo].[aspnet_Roles]'))
UPDATE STATISTICS [dbo].[aspnet_Roles]([PK__aspnet_Roles__31EC6D26]) WITH STATS_STREAM = 0x010000000300000000000000000000004863247E000000007C040000000000000C04000000000000240100002400000010000000000000000000000000000000240100002400000010000000000000000000000000000000E7030000E7000000000200000000000008D000000000000007000000CD6FBB00F3980000130000000000000013000000000000000000803F3694573D3694573D3694573D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000030000002000000044797D420000984100000000000080410000804187F2FA4100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000B0020000000000008000000000000000A300000000000000C600000000000000E9000000000000000C010000000000002F01000000000000520100000000000075010000000000009801000000000000BB01000000000000DE010000000000000102000000000000240200000000000047020000000000006A020000000000008D02000000000000100020000000803F000000000000803FFFC981488BB62D4A85D014EF11DD1AD5040000100020000000803F000000000000803FC26B14D6A3DAA943A45498F000DCECEF040000100020000000803F000000000000803FA5C48816FA045846B3BF98F100E3D97D040000100020000000803F0000803F0000803FA439978EC64EDD4E928898F100E5F731040000100020000000803F000000000000803FE49383D432B62D408C4D98F100E7738F040000100020000000803F000000000000803FC97A577F4C0EE24A837E98F100E78BF8040000100020000000803F000000000000803FD13D94F2DB929643BA2798F100E7C91F040000100020000000803F000000400000803F67C5E88FA6466741A2D798F100FD9778040000100020000000803F000000000000803FDD49024BC0FA034686ED98F100FE0F07040000100020000000803F000000000000803F259778230150644595ED98F100FE6340040000100020000000803F000000000000803F999D7B1BFDEFB348AE5D98F101058350040000100020000000803F000000000000803F768DF555E4EB4144885F98F10108AAF0040000100020000000803F000000000000803F4A654ABBA1D1F94E80D198F201466C6A040000100020000000803F000000000000803F5E4258A8CEA25D4B800298F201467C1A040000100020000000803F000000000000803F8D0B14A9EF49A44B85A098F20146AC71040000100020000000803F000000000000803F927BAFEB12BBC340B3E4FD40B9932E3E040000, ROWCOUNT = 5, PAGECOUNT = 1
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  ' 
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  ' 
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS
SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
' 
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS
SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
' 
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  ' 
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  ' 
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS
SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
' 
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS
SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
' 
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 08/07/2007 10:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS
SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
' 
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
USE [MonoX2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategories_NewsCategories]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategory]'))
ALTER TABLE [dbo].[NewsCategory]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategories_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageRole_aspnet_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageRole]'))
ALTER TABLE [dbo].[PageRole]  WITH CHECK ADD  CONSTRAINT [FK_PageRole_aspnet_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageRole_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageRole]'))
ALTER TABLE [dbo].[PageRole]  WITH CHECK ADD  CONSTRAINT [FK_PageRole_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Document_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Document]'))
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageLocalization_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageLocalization]'))
ALTER TABLE [dbo].[PageLocalization]  WITH CHECK ADD  CONSTRAINT [FK_PageLocalization_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PageLocalization_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[PageLocalization]'))
ALTER TABLE [dbo].[PageLocalization]  WITH CHECK ADD  CONSTRAINT [FK_PageLocalization_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdPage_Ad]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdPage]'))
ALTER TABLE [dbo].[AdPage]  WITH CHECK ADD  CONSTRAINT [FK_AdPage_Ad] FOREIGN KEY([AdId])
REFERENCES [dbo].[Ad] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdPage_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdPage]'))
ALTER TABLE [dbo].[AdPage]  WITH CHECK ADD  CONSTRAINT [FK_AdPage_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdPage_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdPage]'))
ALTER TABLE [dbo].[AdPage]  WITH CHECK ADD  CONSTRAINT [FK_AdPage_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsFiles_NewsItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsFile]'))
ALTER TABLE [dbo].[NewsFile]  WITH CHECK ADD  CONSTRAINT [FK_NewsFiles_NewsItems] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[NewsItem] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsPublishQueue_aspnet_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsPublishQueue]'))
ALTER TABLE [dbo].[NewsPublishQueue]  WITH CHECK ADD  CONSTRAINT [FK_NewsPublishQueue_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsPublishQueue_NewsItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsPublishQueue]'))
ALTER TABLE [dbo].[NewsPublishQueue]  WITH CHECK ADD  CONSTRAINT [FK_NewsPublishQueue_NewsItem] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[NewsItem] ([Id])
ON DELETE CASCADE
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
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsMetaIgnoredWords_Language]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsMetaIgnoredWord]'))
ALTER TABLE [dbo].[NewsMetaIgnoredWord]  WITH CHECK ADD  CONSTRAINT [FK_NewsMetaIgnoredWords_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
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
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategories_InRoles_aspnet_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategoryInRole]'))
ALTER TABLE [dbo].[NewsCategoryInRole]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategories_InRoles_aspnet_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NewsCategories_InRoles_NewsCategories]') AND parent_object_id = OBJECT_ID(N'[dbo].[NewsCategoryInRole]'))
ALTER TABLE [dbo].[NewsCategoryInRole]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategories_InRoles_NewsCategories] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__29572725] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ads_aspnet_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ad]'))
ALTER TABLE [dbo].[Ad]  WITH CHECK ADD  CONSTRAINT [FK_Ads_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__36B12243] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__15502E78] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__5070F446] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0425A276] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_aspnet_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_aspnet_Applications] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
ON DELETE CASCADE
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Page_Page]') AND parent_object_id = OBJECT_ID(N'[dbo].[Page]'))
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_Page_Page] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Page] ([Id])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])

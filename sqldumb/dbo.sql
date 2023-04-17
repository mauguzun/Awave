/*
 Navicat Premium Data Transfer

 Source Server         : DESKTOP-3ORM46T
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : DESKTOP-3ORM46T:1433
 Source Catalog        : Awave
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 17/04/2023 08:30:56
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230416072502_init', N'7.0.5')
GO


-- ----------------------------
-- Table structure for Games
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Games]') AND type IN ('U'))
	DROP TABLE [dbo].[Games]
GO

CREATE TABLE [dbo].[Games] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Released] datetime2(7)  NOT NULL,
  [Rating] float(53)  NOT NULL,
  [Added] int  NOT NULL,
  [Playtime] int  NOT NULL,
  [RatingsCount] int  NOT NULL,
  [ReviewsTextCount] int  NOT NULL,
  [Updated] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[Games] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Games
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Games] ON
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'1', N'Grand Theft Auto V', N'2013-09-17 00:00:00.0000000', N'9', N'6267', N'48', N'19195', N'73', N'2023-04-14 07:25:37.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'2', N'The Witcher 3: Wild Hunt', N'2015-05-18 00:00:00.0000000', N'9', N'5950', N'62', N'18361', N'46', N'2023-04-13 17:27:07.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'3', N'Portal 2', N'2011-04-18 00:00:00.0000000', N'9.24', N'5202', N'31', N'17288', N'11', N'2023-04-14 13:38:32.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'4', N'Tomb Raider (2013)', N'2013-03-05 00:00:00.0000000', N'8.1', N'3628', N'11', N'15139', N'10', N'2023-04-14 13:34:30.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'5', N'Counter-Strike: Global Offensive', N'2012-08-21 00:00:00.0000000', N'9', N'3199', N'22', N'14962', N'65', N'2023-04-14 07:49:13.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'6', N'Portal', N'2007-10-09 00:00:00.0000000', N'9.02', N'4346', N'23', N'14684', N'4', N'2023-04-14 13:46:23.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'7', N'Left 4 Dead 2', N'2009-11-17 00:00:00.0000000', N'8.18', N'3031', N'9', N'14644', N'9', N'2023-04-14 13:44:24.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'8', N'The Elder Scrolls V: Skyrim', N'2011-11-11 00:00:00.0000000', N'8.84', N'4299', N'29', N'14530', N'46', N'2023-04-13 16:01:42.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'9', N'BioShock Infinite', N'2013-03-26 00:00:00.0000000', N'8.78', N'3764', N'21', N'14028', N'12', N'2023-04-14 13:31:18.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'10', N'Red Dead Redemption 2', N'2018-10-26 00:00:00.0000000', N'7.3', N'4472', N'65', N'13909', N'18', N'2023-04-13 16:03:11.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'11', N'Life is Strange', N'2015-01-29 00:00:00.0000000', N'6.99956766104626', N'3409', N'24', N'13878', N'7', N'2023-04-14 13:25:51.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'12', N'Borderlands 2', N'2012-09-18 00:00:00.0000000', N'8.04', N'3006', N'12', N'13863', N'10', N'2023-04-10 12:58:21.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'13', N'Half-Life 2', N'2004-11-16 00:00:00.0000000', N'8.98', N'3550', N'16', N'13102', N'7', N'2023-04-14 13:48:38.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'14', N'BioShock', N'2007-08-21 00:00:00.0000000', N'8.72', N'3058', N'23', N'12749', N'3', N'2023-04-14 13:43:58.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'15', N'Limbo', N'2010-07-21 00:00:00.0000000', N'8.3', N'3061', N'22', N'12401', N'3', N'2023-04-14 13:38:04.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'16', N'God of War (2018)', N'2018-04-20 00:00:00.0000000', N'9.18', N'4309', N'62', N'12224', N'10', N'2023-04-14 13:17:13.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'17', N'Destiny 2', N'2017-09-06 00:00:00.0000000', N'7.12', N'2440', N'19', N'12206', N'5', N'2023-04-11 15:10:39.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'18', N'DOOM (2016)', N'2016-05-13 00:00:00.0000000', N'8.76', N'3281', N'26', N'12193', N'10', N'2023-04-14 13:21:13.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'19', N'Fallout 4', N'2015-11-09 00:00:00.0000000', N'7.6', N'3043', N'17', N'12191', N'41', N'2023-04-12 01:22:09.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'20', N'Team Fortress 2', N'2007-10-10 00:00:00.0000000', N'7.34', N'2675', N'18', N'11886', N'9', N'2023-04-12 01:23:18.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'21', N'PAYDAY 2', N'2013-08-13 00:00:00.0000000', N'7.02', N'1983', N'13', N'11839', N'9', N'2023-04-14 13:29:14.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'22', N'Horizon Zero Dawn', N'2017-02-28 00:00:00.0000000', N'7.77', N'3446', N'37', N'11645', N'10', N'2023-04-14 13:19:23.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'23', N'Grand Theft Auto IV', N'2008-04-29 00:00:00.0000000', N'8.52', N'2708', N'16', N'11454', N'10', N'2023-04-14 09:13:44.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'24', N'Rocket League', N'2015-07-07 00:00:00.0000000', N'7.9', N'2641', N'14', N'11299', N'20', N'2023-04-14 13:22:55.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'25', N'Cyberpunk 2077', N'2020-12-10 00:00:00.0000000', N'8.22', N'2140', N'52', N'11142', N'24', N'2023-04-13 16:03:14.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'26', N'Dota 2', N'2013-07-09 00:00:00.0000000', N'6.12', N'2518', N'20', N'11130', N'14', N'2023-04-14 11:30:52.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'27', N'Terraria', N'2011-05-16 00:00:00.0000000', N'8.1', N'2151', N'12', N'11113', N'14', N'2023-04-14 09:14:08.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'28', N'Warframe', N'2013-03-25 00:00:00.0000000', N'6.84', N'1904', N'8', N'11002', N'8', N'2023-04-14 09:14:13.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'29', N'Metro 2033', N'2010-03-16 00:00:00.0000000', N'7.86', N'2032', N'2', N'10927', N'2', N'2023-04-14 13:39:46.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'30', N'Metal Gear Solid V: The Phantom Pain', N'2015-09-01 00:00:00.0000000', N'8.32', N'2344', N'15', N'10796', N'24', N'2023-04-10 16:13:10.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'31', N'Rise of the Tomb Raider', N'2015-11-10 00:00:00.0000000', N'8.08', N'2489', N'11', N'10726', N'15', N'2023-04-14 13:21:48.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'32', N'Batman: Arkham Knight', N'2015-06-23 00:00:00.0000000', N'8.46', N'2390', N'11', N'10478', N'20', N'2023-04-14 13:23:22.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'33', N'The Walking Dead: Season 1', N'2012-04-23 00:00:00.0000000', N'8.66', N'2243', N'12', N'10372', N'8', N'2023-04-14 13:36:50.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'34', N'The Witcher 2: Assassins of Kings Enhanced Edition', N'2012-04-16 00:00:00.0000000', N'8.34', N'1985', N'7', N'10306', N'7', N'2023-04-14 13:38:13.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'35', N'Half-Life 2: Lost Coast', N'2005-10-27 00:00:00.0000000', N'6.9', N'1077', N'2', N'10221', N'1', N'2023-04-14 15:06:57.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'36', N'Middle-earth: Shadow of Mordor', N'2014-09-30 00:00:00.0000000', N'7.78', N'2285', N'11', N'10148', N'13', N'2023-04-13 01:41:51.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'37', N'Grand Theft Auto: San Andreas', N'2004-10-26 00:00:00.0000000', N'9.02', N'3397', N'8', N'10135', N'2', N'2023-04-14 08:18:12.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'38', N'The Witcher: Enhanced Edition Director''s Cut', N'2008-09-16 00:00:00.0000000', N'8.14', N'1860', N'4', N'10075', N'5', N'2023-04-14 13:44:14.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'39', N'BioShock 2', N'2010-02-09 00:00:00.0000000', N'8.14', N'1770', N'8', N'9879', N'3', N'2023-04-14 13:43:56.0000000')
GO

INSERT INTO [dbo].[Games] ([Id], [Name], [Released], [Rating], [Added], [Playtime], [RatingsCount], [ReviewsTextCount], [Updated]) VALUES (N'40', N'Half-Life 2: Episode One', N'2006-06-01 00:00:00.0000000', N'7.5', N'1833', N'3', N'2', N'4', N'2023-04-14 13:48:28.0000000')
GO

SET IDENTITY_INSERT [dbo].[Games] OFF
GO


-- ----------------------------
-- Table structure for Reviews
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Reviews]') AND type IN ('U'))
	DROP TABLE [dbo].[Reviews]
GO

CREATE TABLE [dbo].[Reviews] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Comment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rating] tinyint  NOT NULL,
  [Email] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [GameId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Reviews] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Reviews
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Reviews] ON
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'1', N'ddd', N'Comment 7856', N'10', N'ddd@denis.com', N'20')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'2', N'denis', N'Comment 18627', N'7', N'denis@penis.com', N'30')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'3', N'd', N'Comment 92801', N'4', N'd@denis.com', N'30')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'4', N'ddd', N'Comment 68797', N'3', N'ddd@denis.com', N'29')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'5', N'denis', N'Comment 107510', N'3', N'denis@tenis.com', N'23')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'6', N'd', N'Comment 60620', N'7', N'd@denis.com', N'26')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'7', N'denis', N'Comment 56538', N'7', N'denis@tenis.com', N'39')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'8', N'denis', N'Comment 82590', N'6', N'denis@denis.com', N'32')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'9', N'denis', N'Comment 67852', N'8', N'denis@denis.com', N'35')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'10', N'denis', N'Comment 57982', N'8', N'denis@denis.com', N'38')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'11', N'denis', N'Comment 18054', N'4', N'denis@penis.com', N'9')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'12', N'denis', N'Comment 7308', N'3', N'denis@tenis.com', N'33')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'13', N'denis', N'Comment 6752', N'4', N'denis@tenis.com', N'27')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'14', N'deniss', N'Comment 17311', N'10', N'deniss@denis.com', N'19')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'15', N'denis', N'Comment 10571', N'3', N'denis@denis.com', N'39')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'16', N'denis', N'Comment 96764', N'5', N'denis@denis.com', N'1')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'17', N'denis', N'Comment 110524', N'6', N'denis@krenis.com', N'25')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'18', N'd', N'Comment 94315', N'6', N'd@denis.com', N'7')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'19', N'denis', N'Comment 60126', N'9', N'denis@penis.com', N'35')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'20', N'ddd', N'Comment 88799', N'10', N'ddd@denis.com', N'12')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'21', N'denis', N'Comment 3555', N'7', N'denis@tenis.com', N'14')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'22', N'd', N'Comment 108698', N'10', N'd@denis.com', N'17')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'23', N'denis', N'Comment 21812', N'8', N'denis@denis.com', N'9')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'24', N'denis', N'Comment 37173', N'8', N'denis@penis.com', N'31')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'25', N'd', N'Comment 39994', N'3', N'd@denis.com', N'37')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'26', N'ddd', N'Comment 96565', N'3', N'ddd@denis.com', N'28')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'27', N'd', N'Comment 52884', N'6', N'd@denis.com', N'28')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'28', N'd', N'Comment 90826', N'8', N'd@denis.com', N'18')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'29', N'd', N'Comment 93526', N'8', N'd@denis.com', N'9')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'30', N'deniss', N'Comment 78482', N'4', N'deniss@denis.com', N'16')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'31', N'd', N'Comment 64619', N'8', N'd@denis.com', N'21')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'32', N'denis', N'Comment 107437', N'2', N'denis@krenis.com', N'29')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'33', N'denis', N'Comment 2634', N'4', N'denis@denis.com', N'14')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'34', N'denis', N'Comment 2180', N'3', N'denis@penis.com', N'24')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'35', N'denis', N'Comment 41880', N'4', N'denis@tenis.com', N'8')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'36', N'ddd', N'Comment 34818', N'4', N'ddd@denis.com', N'36')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'37', N'ddd', N'Comment 79736', N'2', N'ddd@denis.com', N'15')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'38', N'd', N'Comment 37895', N'10', N'd@denis.com', N'33')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'39', N'd', N'Comment 39289', N'6', N'd@denis.com', N'15')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'40', N'deniss', N'Comment 111041', N'9', N'deniss@denis.com', N'21')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'41', N'ddd', N'Comment 83486', N'2', N'ddd@denis.com', N'5')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'42', N'denis', N'Comment 85167', N'10', N'denis@krenis.com', N'3')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'43', N'denis', N'Comment 42026', N'10', N'denis@denis.com', N'26')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'44', N'denis', N'Comment 50960', N'8', N'denis@tenis.com', N'35')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'45', N'deniss', N'Comment 35810', N'9', N'deniss@denis.com', N'20')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'46', N'denis', N'Comment 25068', N'3', N'denis@penis.com', N'2')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'47', N'denis', N'Comment 60674', N'3', N'denis@penis.com', N'6')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'48', N'denis', N'Comment 62824', N'3', N'denis@denis.com', N'27')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'50', N'ddd', N'Comment 94301', N'6', N'ddd@denis.com', N'13')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'51', N'denis', N'Comment 41922', N'6', N'denis@penis.com', N'20')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'52', N'd', N'Comment 64896', N'6', N'd@denis.com', N'6')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'53', N'denis', N'Comment 14844', N'10', N'denis@tenis.com', N'18')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'54', N'denis', N'Comment 82932', N'4', N'denis@penis.com', N'12')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'55', N'denis', N'Comment 12957', N'9', N'denis@krenis.com', N'31')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'56', N'denis', N'Comment 81249', N'3', N'denis@penis.com', N'1')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'57', N'denis', N'Comment 34310', N'4', N'denis@denis.com', N'2')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'58', N'd', N'Comment 88673', N'4', N'd@denis.com', N'39')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'59', N'ddd', N'Comment 66243', N'3', N'ddd@denis.com', N'21')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'60', N'denis', N'Comment 54275', N'2', N'denis@tenis.com', N'31')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'61', N'deniss', N'Comment 102070', N'3', N'deniss@denis.com', N'36')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'78', N'sdasd', N'asdas', N'1', N'mauguzun@gmail.com', N'11')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'79', N'denis', N'ADFAD\', N'1', N'gamesasd@ADFA.LV', N'11')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'80', N'DENIS', N'HLLO
', N'5', N'DENIS@DENIS', N'40')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'81', N'my name', N'hello  world ^^', N'1', N'denis@kuku.lv', N'10')
GO

INSERT INTO [dbo].[Reviews] ([Id], [Name], [Comment], [Rating], [Email], [GameId]) VALUES (N'82', N'denis', N'heelo', N'1', N'denis@ssdf.lv', N'11')
GO

SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Games
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Games]', RESEED, 1001)
GO


-- ----------------------------
-- Primary Key structure for table Games
-- ----------------------------
ALTER TABLE [dbo].[Games] ADD CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Reviews
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Reviews]', RESEED, 1001)
GO


-- ----------------------------
-- Indexes structure for table Reviews
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [Game_Email]
ON [dbo].[Reviews] (
  [GameId] ASC,
  [Email] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Reviews
-- ----------------------------
ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Reviews
-- ----------------------------
ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [FK_Reviews_Games_GameId] FOREIGN KEY ([GameId]) REFERENCES [dbo].[Games] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


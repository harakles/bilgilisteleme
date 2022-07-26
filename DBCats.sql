USE [master]
GO
/****** Object:  Database [DBCats]    Script Date: 2.08.2022 18:02:19 ******/
CREATE DATABASE [DBCats]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBCats', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBCats.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBCats_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBCats_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBCats] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBCats].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBCats] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBCats] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBCats] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBCats] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBCats] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBCats] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBCats] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBCats] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBCats] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBCats] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBCats] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBCats] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBCats] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBCats] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBCats] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBCats] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBCats] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBCats] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBCats] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBCats] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBCats] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBCats] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBCats] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBCats] SET  MULTI_USER 
GO
ALTER DATABASE [DBCats] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBCats] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBCats] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBCats] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBCats] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBCats]
GO
/****** Object:  Table [dbo].[TBLAdminData]    Script Date: 2.08.2022 18:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLAdminData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[RolId] [int] NULL,
 CONSTRAINT [PK_TBLAdminData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLEkle]    Script Date: 2.08.2022 18:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLEkle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RemoteDesktopApp] [nvarchar](max) NULL,
	[sil] [bit] NULL,
 CONSTRAINT [PK_TBLEkle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLRoles]    Script Date: 2.08.2022 18:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Roles] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLSirketTur]    Script Date: 2.08.2022 18:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLSirketTur](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sil] [bit] NULL,
	[SirketTuru] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLSirketTur] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLUserRoleMappings]    Script Date: 2.08.2022 18:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLUserRoleMappings](
	[Id] [int] NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_TBLUserRoleMappings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLVdsListe]    Script Date: 2.08.2022 18:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLVdsListe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdı] [nvarchar](max) NULL,
	[VdsIp] [nvarchar](max) NULL,
	[VdsKullanıcıAdı] [nvarchar](max) NULL,
	[VdsPw] [nvarchar](max) NULL,
	[RemoteDeskId] [int] NULL,
	[AnyDesk] [nvarchar](max) NULL,
	[AnydeskPw] [nvarchar](max) NULL,
	[TeamViewer] [nvarchar](max) NULL,
	[TeamViewerPw] [nvarchar](max) NULL,
	[SplashTop] [nvarchar](max) NULL,
	[SplashTopPw] [nvarchar](max) NULL,
	[SirketTurId] [int] NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLVdsListe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TBLAdminData] ON 

INSERT [dbo].[TBLAdminData] ([Id], [UserName], [Password], [RolId]) VALUES (1, N'Cats', N'a1', 2)
INSERT [dbo].[TBLAdminData] ([Id], [UserName], [Password], [RolId]) VALUES (2, N'Harakles', N'a2', 1)
SET IDENTITY_INSERT [dbo].[TBLAdminData] OFF
SET IDENTITY_INSERT [dbo].[TBLRoles] ON 

INSERT [dbo].[TBLRoles] ([Id], [Roles]) VALUES (1, N'Admin')
INSERT [dbo].[TBLRoles] ([Id], [Roles]) VALUES (2, N'Employee')
SET IDENTITY_INSERT [dbo].[TBLRoles] OFF
SET IDENTITY_INSERT [dbo].[TBLSirketTur] ON 

INSERT [dbo].[TBLSirketTur] ([Id], [Sil], [SirketTuru]) VALUES (1, NULL, N'Belediye')
INSERT [dbo].[TBLSirketTur] ([Id], [Sil], [SirketTuru]) VALUES (2, NULL, N'Kafe')
INSERT [dbo].[TBLSirketTur] ([Id], [Sil], [SirketTuru]) VALUES (3, NULL, N'Toptancı')
INSERT [dbo].[TBLSirketTur] ([Id], [Sil], [SirketTuru]) VALUES (4, NULL, N'Seyyar')
SET IDENTITY_INSERT [dbo].[TBLSirketTur] OFF
SET IDENTITY_INSERT [dbo].[TBLVdsListe] ON 

INSERT [dbo].[TBLVdsListe] ([Id], [SirketAdı], [VdsIp], [VdsKullanıcıAdı], [VdsPw], [RemoteDeskId], [AnyDesk], [AnydeskPw], [TeamViewer], [TeamViewerPw], [SplashTop], [SplashTopPw], [SirketTurId], [Notes]) VALUES (1, N'Cats', N'Cats', N'Cats', N'Cats', NULL, NULL, NULL, N'Cats', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[TBLVdsListe] ([Id], [SirketAdı], [VdsIp], [VdsKullanıcıAdı], [VdsPw], [RemoteDeskId], [AnyDesk], [AnydeskPw], [TeamViewer], [TeamViewerPw], [SplashTop], [SplashTopPw], [SirketTurId], [Notes]) VALUES (2, N'Data', N'Data', N'Data', N'Data', NULL, N'Data', N'Data', N'Data', NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[TBLVdsListe] ([Id], [SirketAdı], [VdsIp], [VdsKullanıcıAdı], [VdsPw], [RemoteDeskId], [AnyDesk], [AnydeskPw], [TeamViewer], [TeamViewerPw], [SplashTop], [SplashTopPw], [SirketTurId], [Notes]) VALUES (3, N'Data', N'Data', N'Data', N'Data', NULL, NULL, NULL, N'Data', NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[TBLVdsListe] ([Id], [SirketAdı], [VdsIp], [VdsKullanıcıAdı], [VdsPw], [RemoteDeskId], [AnyDesk], [AnydeskPw], [TeamViewer], [TeamViewerPw], [SplashTop], [SplashTopPw], [SirketTurId], [Notes]) VALUES (4, N'Data', N'Data', N'Data', N'Data', NULL, N'Data', N'Data', N'datat', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[TBLVdsListe] ([Id], [SirketAdı], [VdsIp], [VdsKullanıcıAdı], [VdsPw], [RemoteDeskId], [AnyDesk], [AnydeskPw], [TeamViewer], [TeamViewerPw], [SplashTop], [SplashTopPw], [SirketTurId], [Notes]) VALUES (5, N'Data', N'Data', N'Data', N'Data', NULL, N'Data', N'Data', N'asddd', NULL, NULL, NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[TBLVdsListe] OFF
ALTER TABLE [dbo].[TBLAdminData]  WITH CHECK ADD  CONSTRAINT [FK_TBLAdminData_TBLRoles] FOREIGN KEY([RolId])
REFERENCES [dbo].[TBLRoles] ([Id])
GO
ALTER TABLE [dbo].[TBLAdminData] CHECK CONSTRAINT [FK_TBLAdminData_TBLRoles]
GO
ALTER TABLE [dbo].[TBLUserRoleMappings]  WITH CHECK ADD  CONSTRAINT [FK_TBLUserRoleMappings_TBLRoles] FOREIGN KEY([Id])
REFERENCES [dbo].[TBLRoles] ([Id])
GO
ALTER TABLE [dbo].[TBLUserRoleMappings] CHECK CONSTRAINT [FK_TBLUserRoleMappings_TBLRoles]
GO
ALTER TABLE [dbo].[TBLUserRoleMappings]  WITH CHECK ADD  CONSTRAINT [FK_TBLUserRoleMappings_TBLVdsListe] FOREIGN KEY([Id])
REFERENCES [dbo].[TBLVdsListe] ([Id])
GO
ALTER TABLE [dbo].[TBLUserRoleMappings] CHECK CONSTRAINT [FK_TBLUserRoleMappings_TBLVdsListe]
GO
ALTER TABLE [dbo].[TBLVdsListe]  WITH CHECK ADD  CONSTRAINT [FK_TBLVdsListe_TBLEkle] FOREIGN KEY([RemoteDeskId])
REFERENCES [dbo].[TBLEkle] ([Id])
GO
ALTER TABLE [dbo].[TBLVdsListe] CHECK CONSTRAINT [FK_TBLVdsListe_TBLEkle]
GO
ALTER TABLE [dbo].[TBLVdsListe]  WITH CHECK ADD  CONSTRAINT [FK_TBLVdsListe_TBLSirketTur] FOREIGN KEY([SirketTurId])
REFERENCES [dbo].[TBLSirketTur] ([Id])
GO
ALTER TABLE [dbo].[TBLVdsListe] CHECK CONSTRAINT [FK_TBLVdsListe_TBLSirketTur]
GO
USE [master]
GO
ALTER DATABASE [DBCats] SET  READ_WRITE 
GO

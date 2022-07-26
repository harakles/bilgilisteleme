USE [master]
GO
/****** Object:  Database [DBCats]    Script Date: 29.07.2022 01:47:57 ******/
CREATE DATABASE [DBCats]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBCats', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DBCats.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBCats_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DBCats_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[TBLAdminData]    Script Date: 29.07.2022 01:47:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLAdminData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[LastLT] [smalldatetime] NULL,
 CONSTRAINT [PK_TBLAdminData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLRemoteDT]    Script Date: 29.07.2022 01:47:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLRemoteDT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RemoteDTName] [nvarchar](max) NULL,
	[RemoteDTValue] [int] NULL,
 CONSTRAINT [PK_TBLRemoteDT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLVdsListe]    Script Date: 29.07.2022 01:47:57 ******/
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
	[RemoteDeskAd] [nvarchar](max) NULL,
	[RemoteDeskPw] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLVdsListe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TBLAdminData] ON 

INSERT [dbo].[TBLAdminData] ([Id], [UserName], [Password], [LastLT]) VALUES (1, N'Cats', N'a1', NULL)
INSERT [dbo].[TBLAdminData] ([Id], [UserName], [Password], [LastLT]) VALUES (2, N'Harakles', N'a2', NULL)
SET IDENTITY_INSERT [dbo].[TBLAdminData] OFF
SET IDENTITY_INSERT [dbo].[TBLRemoteDT] ON 

INSERT [dbo].[TBLRemoteDT] ([Id], [RemoteDTName], [RemoteDTValue]) VALUES (1, N'AnyDesk', 1)
INSERT [dbo].[TBLRemoteDT] ([Id], [RemoteDTName], [RemoteDTValue]) VALUES (2, N'TeamViewer', 2)
INSERT [dbo].[TBLRemoteDT] ([Id], [RemoteDTName], [RemoteDTValue]) VALUES (3, N'SplashTop', 3)
SET IDENTITY_INSERT [dbo].[TBLRemoteDT] OFF
SET IDENTITY_INSERT [dbo].[TBLVdsListe] ON 

INSERT [dbo].[TBLVdsListe] ([Id], [SirketAdı], [VdsIp], [VdsKullanıcıAdı], [VdsPw], [RemoteDeskId], [RemoteDeskAd], [RemoteDeskPw], [Notes]) VALUES (1, N'Cats', N'Cats', N'Cats', N'Cats', 1, NULL, NULL, N'Cats')
SET IDENTITY_INSERT [dbo].[TBLVdsListe] OFF
ALTER TABLE [dbo].[TBLVdsListe]  WITH CHECK ADD  CONSTRAINT [FK_TBLVdsListe_TBLRemoteDT] FOREIGN KEY([Id])
REFERENCES [dbo].[TBLRemoteDT] ([Id])
GO
ALTER TABLE [dbo].[TBLVdsListe] CHECK CONSTRAINT [FK_TBLVdsListe_TBLRemoteDT]
GO
USE [master]
GO
ALTER DATABASE [DBCats] SET  READ_WRITE 
GO

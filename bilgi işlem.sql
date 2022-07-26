USE [master]
GO
/****** Object:  Database [DBBilgiListeleme]    Script Date: 25.07.2022 18:20:30 ******/
CREATE DATABASE [DBBilgiListeleme]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBBilgiListeleme', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBBilgiListeleme.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBBilgiListeleme_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBBilgiListeleme_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBBilgiListeleme] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBBilgiListeleme].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBBilgiListeleme] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBBilgiListeleme] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBBilgiListeleme] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBBilgiListeleme] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBBilgiListeleme] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBBilgiListeleme] SET  MULTI_USER 
GO
ALTER DATABASE [DBBilgiListeleme] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBBilgiListeleme] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBBilgiListeleme] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBBilgiListeleme] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBBilgiListeleme] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBBilgiListeleme]
GO
/****** Object:  Table [dbo].[TBLAdmin]    Script Date: 25.07.2022 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLAdmin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminUserName] [nvarchar](max) NULL,
	[AdminPw] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLAdmin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLCustomerVdsList]    Script Date: 25.07.2022 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLCustomerVdsList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sirketİsmi] [nvarchar](max) NULL,
	[Vdsİp] [nvarchar](max) NULL,
	[VdsName] [nvarchar](max) NULL,
	[VdsPassword] [nvarchar](max) NULL,
	[AnyDesk] [nvarchar](max) NULL,
	[AnyDeskPw] [nvarchar](max) NULL,
	[TeamViewer] [nvarchar](max) NULL,
	[TeamViewerPw] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLCustomerVdsList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLEkle]    Script Date: 25.07.2022 18:20:30 ******/
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
SET IDENTITY_INSERT [dbo].[TBLAdmin] ON 

INSERT [dbo].[TBLAdmin] ([Id], [AdminUserName], [AdminPw]) VALUES (1, N'Cats', N'a1')
INSERT [dbo].[TBLAdmin] ([Id], [AdminUserName], [AdminPw]) VALUES (2, N'Harakles', N'a2')
SET IDENTITY_INSERT [dbo].[TBLAdmin] OFF
SET IDENTITY_INSERT [dbo].[TBLCustomerVdsList] ON 

INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (1, N'Cats', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (2, N'Haykoop', N'Test', N'Test', N'Test', N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (3, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (4, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (5, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (6, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (7, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (8, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (9, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (10, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [AnyDesk], [AnyDeskPw], [TeamViewer], [TeamViewerPw], [Notes]) VALUES (11, N'Test', N'Test', N'Test', N'Test', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TBLCustomerVdsList] OFF
USE [master]
GO
ALTER DATABASE [DBBilgiListeleme] SET  READ_WRITE 
GO

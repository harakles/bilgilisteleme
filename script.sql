USE [master]
GO
/****** Object:  Database [DBBilgiListeleme]    Script Date: 22.07.2022 15:52:06 ******/
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
/****** Object:  Table [dbo].[TBLAdmin]    Script Date: 22.07.2022 15:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLAdmin](
	[Id] [int] NOT NULL,
	[AdminUserName] [nvarchar](max) NULL,
	[AdminPw] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLAdmin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLCustomerVdsList]    Script Date: 22.07.2022 15:52:06 ******/
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
	[RemoteDesktopId] [int] NULL,
 CONSTRAINT [PK_TBLCustomerVdsList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBLRemoteDesktop]    Script Date: 22.07.2022 15:52:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLRemoteDesktop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnyDesk] [nvarchar](max) NULL,
	[AnyDeskPw] [nvarchar](max) NULL,
	[TeamViewer] [nvarchar](max) NULL,
	[TeamViewerPw] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLRemoteDesktop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TBLCustomerVdsList] ON 

INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (1, N'Cats', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (2, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (3, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (4, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (5, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (6, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (7, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (8, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (9, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (10, N'Test', N'Test', N'Test', N'Test', NULL)
INSERT [dbo].[TBLCustomerVdsList] ([Id], [Sirketİsmi], [Vdsİp], [VdsName], [VdsPassword], [RemoteDesktopId]) VALUES (11, N'Test', N'Test', N'Test', N'Test', NULL)
SET IDENTITY_INSERT [dbo].[TBLCustomerVdsList] OFF
ALTER TABLE [dbo].[TBLCustomerVdsList]  WITH CHECK ADD  CONSTRAINT [FK_TBLCustomerVdsList_TBLRemoteDesktop] FOREIGN KEY([RemoteDesktopId])
REFERENCES [dbo].[TBLRemoteDesktop] ([Id])
GO
ALTER TABLE [dbo].[TBLCustomerVdsList] CHECK CONSTRAINT [FK_TBLCustomerVdsList_TBLRemoteDesktop]
GO
USE [master]
GO
ALTER DATABASE [DBBilgiListeleme] SET  READ_WRITE 
GO

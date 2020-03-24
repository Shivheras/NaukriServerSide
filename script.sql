/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4259)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF]    Script Date: 3/24/2020 3:48:15 PM ******/
CREATE DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NaukriDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQL2016\MSSQL\DATA\NaukriDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NaukriDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQL2016\MSSQL\DATA\NaukriDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET QUERY_STORE = OFF
GO
USE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF]
GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 3/24/2020 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[ExpId] [int] IDENTITY(1,1) NOT NULL,
	[CurrentDesignation] [varchar](50) NOT NULL,
	[CurrentCompney] [varchar](50) NOT NULL,
	[AnnulSalary] [varchar](50) NOT NULL,
	[WorkingSince] [varchar](50) NOT NULL,
	[CurrentLocation] [varchar](50) NOT NULL,
	[DurationOfNotice] [varchar](20) NOT NULL,
	[Industry] [varchar](50) NOT NULL,
	[FunctionalArea] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ExpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTP]    Script Date: 3/24/2020 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTP](
	[OtpId] [int] IDENTITY(1,1) NOT NULL,
	[OtpNumber] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OtpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qualifications]    Script Date: 3/24/2020 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualifications](
	[QualificationId] [int] IDENTITY(1,1) NOT NULL,
	[HighestQualification] [varchar](50) NOT NULL,
	[Courses] [varchar](50) NOT NULL,
	[Specilization] [varchar](50) NOT NULL,
	[University] [varchar](50) NOT NULL,
	[CourseType] [varchar](50) NOT NULL,
	[Passing Year] [varchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/24/2020 3:48:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Location] [varchar](40) NOT NULL,
	[Skills] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [Email], [PhoneNumber], [Password], [Location], [Skills]) VALUES (1, N'shivheras', N'abc', N'9347643634', N'abc', N'surat', N'Coding')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_ToUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_ToUsers]
GO
ALTER TABLE [dbo].[OTP]  WITH CHECK ADD  CONSTRAINT [FK_OTP_ToUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[OTP] CHECK CONSTRAINT [FK_OTP_ToUsers]
GO
ALTER TABLE [dbo].[Qualifications]  WITH CHECK ADD  CONSTRAINT [FK_Qualifications_ToUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Qualifications] CHECK CONSTRAINT [FK_Qualifications_ToUsers]
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\SHIVANGI\DOCUMENTS\NAUKRIDB.MDF] SET  READ_WRITE 
GO

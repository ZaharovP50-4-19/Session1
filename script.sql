USE [master]
GO
/****** Object:  Database [session1database]    Script Date: 25.01.2023 11:28:04 ******/
CREATE DATABASE [session1database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'session1database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\session1database.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'session1database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\session1database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [session1database] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [session1database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [session1database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [session1database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [session1database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [session1database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [session1database] SET ARITHABORT OFF 
GO
ALTER DATABASE [session1database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [session1database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [session1database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [session1database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [session1database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [session1database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [session1database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [session1database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [session1database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [session1database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [session1database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [session1database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [session1database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [session1database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [session1database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [session1database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [session1database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [session1database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [session1database] SET  MULTI_USER 
GO
ALTER DATABASE [session1database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [session1database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [session1database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [session1database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [session1database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [session1database] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [session1database] SET QUERY_STORE = OFF
GO
USE [session1database]
GO
/****** Object:  Table [dbo].[Query_Competition]    Script Date: 25.01.2023 11:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query_Competition](
	[SELECT t#* FROM wsrt_hk#competition t] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query_Competition_Skill]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query_Competition_Skill](
	[SELECT t#* FROM wsrt_hk#competition_skill t] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query_Skill]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query_Skill](
	[SELECT t#* FROM wsrt_hk#skill t] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query_Skill_Block]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query_Skill_Block](
	[SELECT t#* FROM wsrt_hk#skill_block t] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regions]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions](
	[Код] [float] NULL,
	[Название региона] [nvarchar](255) NULL,
	[Столица] [nvarchar](255) NULL,
	[Округ] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Competition]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Competition](
	[id] [float] NULL,
	[title] [nvarchar](255) NULL,
	[date_start] [nvarchar](255) NULL,
	[date_end] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[city] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Competition_Skill]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Competition_Skill](
	[competition_id] [float] NULL,
	[skill_id] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Skill]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Skill](
	[id] [float] NULL,
	[title] [nvarchar](255) NULL,
	[skill_block_id] [float] NULL,
	[is_future] [float] NULL,
	[description] [nvarchar](max) NULL,
	[площадь на рабочее место (кв#м)] [float] NULL,
	[площадь комнаты оценки на одну экспертную группу (кв# м)] [float] NULL,
	[зона брифинга (кв# м)] [float] NULL,
	[площадь склада (кв# м)] [float] NULL,
	[F10] [float] NULL,
	[количество участников в команде] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Skill_Block]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Skill_Block](
	[id] [float] NULL,
	[title] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](255) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_c]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_c](
	[#] [float] NULL,
	[FIO] [nvarchar](255) NULL,
	[gender] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[PIN] [float] NULL,
	[Дата рождения] [datetime] NULL,
	[ID role] [float] NULL,
	[skill] [float] NULL,
	[region] [float] NULL,
	[F10] [nvarchar](255) NULL,
	[место] [float] NULL,
	[чемпионат] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_c_xlnm#_FilterDatabase]    Script Date: 25.01.2023 11:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_c_xlnm#_FilterDatabase](
	[#] [float] NULL,
	[FIO] [nvarchar](255) NULL,
	[gender] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[PIN] [float] NULL,
	[Дата рождения] [datetime] NULL,
	[ID role] [float] NULL,
	[skill] [float] NULL,
	[region] [float] NULL,
	[F10] [nvarchar](255) NULL,
	[место] [float] NULL,
	[чемпионат] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [session1database] SET  READ_WRITE 
GO

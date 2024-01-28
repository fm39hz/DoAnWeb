USE [master]
GO

/****** Object:  Database [WebData]    Script Date: 01/28/2024 11:09:17 PM ******/
CREATE DATABASE [WebData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebData', FILENAME = N'/var/opt/mssql/data/WebData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebData_log', FILENAME = N'/var/opt/mssql/data/WebData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WebData] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [WebData] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [WebData] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [WebData] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [WebData] SET ARITHABORT OFF 
GO

ALTER DATABASE [WebData] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [WebData] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [WebData] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [WebData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [WebData] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [WebData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [WebData] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [WebData] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [WebData] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [WebData] SET  DISABLE_BROKER 
GO

ALTER DATABASE [WebData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [WebData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [WebData] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [WebData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [WebData] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [WebData] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [WebData] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [WebData] SET RECOVERY FULL 
GO

ALTER DATABASE [WebData] SET  MULTI_USER 
GO

ALTER DATABASE [WebData] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [WebData] SET DB_CHAINING OFF 
GO

ALTER DATABASE [WebData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [WebData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [WebData] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [WebData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [WebData] SET QUERY_STORE = ON
GO

ALTER DATABASE [WebData] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [WebData] SET  READ_WRITE 
GO

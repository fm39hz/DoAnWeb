USE [master]
GO
/****** Object:  Database [WebData]    Script Date: 12/21/2023 1:04:19 PM ******/
CREATE DATABASE [WebData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebData] SET COMPATIBILITY_LEVEL = 160
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
EXEC sys.sp_db_vardecimal_storage_format N'WebData', N'ON'
GO
ALTER DATABASE [WebData] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebData] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebData]
GO
/****** Object:  User [Fm39hz]    Script Date: 12/21/2023 1:04:19 PM ******/
CREATE USER [Fm39hz] FOR LOGIN [Admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Cpus]    Script Date: 12/21/2023 1:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cpus](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Socket] [varchar](50) NULL,
	[Tdp] [int] NULL,
	[Core] [int] NULL,
	[Thread] [int] NULL,
	[Frequency] [float] NULL,
 CONSTRAINT [Cpus_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/21/2023 1:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpecificationId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[ImageUrl] [varchar](250) NULL,
	[Manufacturer] [varchar](50) NULL,
	[BasePrice] [float] NULL,
	[InStock] [int] NULL,
	[ReviewCount] [int] NULL,
	[Rating] [float] NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 12/21/2023 1:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserUid] [varchar](50) NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingItems]    Script Date: 12/21/2023 1:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[CartId] [int] NULL,
	[PromoteType] [varchar](10) NULL,
	[Quantity] [int] NULL,
	[IsSelected] [int] NULL,
 CONSTRAINT [PK_ShoppingItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/21/2023 1:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Uid] [varchar](50) NOT NULL,
	[IsAdmin] [int] NULL,
	[ShippingInfoId] [int] NULL,
	[Credential] [varchar](2000) NULL,
 CONSTRAINT [Users_pk] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vgas]    Script Date: 12/21/2023 1:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vgas](
	[Id] [int] IDENTITY(200,1) NOT NULL,
	[Frequency] [float] NULL,
	[Vram] [int] NULL,
 CONSTRAINT [Vgas_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cpus] ON 

INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (100, N'LGA 1200', 75, 6, 12, 4.2)
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (101, N'LGA 1200', 75, 6, 12, 4.4)
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (102, N'LGA 1700', 75, 6, 12, 4.6)
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (103, N'LGA 1700', 75, 12, 20, 5)
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (104, N'LGA 1700', 75, 12, 20, 5.2)
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (105, N'LGA 1700', 75, 20, 24, 5.3)
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (109, N'LGA 1700', 75, 6, 12, 4.8)
SET IDENTITY_INSERT [dbo].[Cpus] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (1, 100, N'I5 10400f', N'Cpu i5 Gen 10', N'https://hanoicomputercdn.com/media/product/52365_intel_core_i5_10400.jpg', N'Intel', 1400000, 160, 16, 5, N'Cpu')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (2, 101, N'I5 11400f', N'Cpu i5 Gen 11', N'https://product.hstatic.net/200000722513/product/11400f_50c642a8c33646728a3993678bea79c5_b160d09f65f743898d55942e48deefe6_1024x1024.png', N'Intel', 1600000, 100, 18, 5, N'Cpu')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (3, 102, N'I5 12400f', N'Cpu i5 Gen 12', N'https://product.hstatic.net/200000722513/product/12400f_cadecfed12d84fcf836b65ae7179a9e0_abe30b4a782c4e5899a6f9e6eda7e797_1024x1024.png', N'Intel', 2100000, 160, 32, 5, N'Cpu')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (4, 200, N'RTX 3060-12G-V2', N'Vga 3xxx Series', N'https://product.hstatic.net/200000722513/product/dual-rtx3060-o12g-01_303eda4235a448c1b6993819a6009141_4ef40d3eba3444b09070dccc38fd681d_grande.jpg', N'Asus', 8400000, 300, 0, 5, N'Vga')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (5, 103, N'I5 13600k', N'Cpu i5 Gen 13 ', N'https://product.hstatic.net/200000722513/product/13600k_9284ffebca6f4d0c9a8d9cc437c7416e_970d2f0f1e9b4dea834a37a89b3c9b51_grande.png', N'Intel', 6000000, 350, 32, 5, N'Cpu')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (6, 104, N'I5 13500', N'Cpu i5 Gen 13', N'https://nguyencongpc.vn/media/product/250-24172-13500-box.jpg', N'Intel', 5500000, 75, 1, 5, N'Cpu')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (8, 105, N'I7 13700K', N'Cpu i7 Gen 13', N'https://product.hstatic.net/200000722513/product/13700k_9339724edc0c4a89b7b73e60fb615c59_d1e37d962d6e4662aa1b0d1242abf21e_grande.png', N'Intel', 8500000, 150, 32, 5, N'Cpu')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (9, 201, N'RTX 4060 WINDFORCE OC 8G', N'Vga 4xxx Series', N'https://product.hstatic.net/200000722513/product/gearvn-card-man-hinh-geforce-rtx-4060-windforce-oc-8g-1_9e431e9bf58e401fa7d61c09d26bcdf1_grande.png', N'Gigabyte', 9400000, 250, 6, 4.5, N'Vga')
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (13, 109, N'I5 12400', N'Cpu i5 Gen 12', N'https://product.hstatic.net/200000722513/product/12400_7150a7594d524982ba859a04ed952903_938a2a0ca05546eb940547a6d50e7bda_grande.png', N'Intel', 3900000, 250, 12, 4.9, N'Cpu')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [UserUid]) VALUES (1, N'iufle3c3X5WC8PP0skXqV8FylO93')
INSERT [dbo].[ShoppingCarts] ([Id], [UserUid]) VALUES (2, N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3')
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingItems] ON 

INSERT [dbo].[ShoppingItems] ([Id], [ProductId], [CartId], [PromoteType], [Quantity], [IsSelected]) VALUES (1, 3, 1, N'Cpu', 3, 1)
INSERT [dbo].[ShoppingItems] ([Id], [ProductId], [CartId], [PromoteType], [Quantity], [IsSelected]) VALUES (2, 4, 1, N'Vga', 1, 0)
INSERT [dbo].[ShoppingItems] ([Id], [ProductId], [CartId], [PromoteType], [Quantity], [IsSelected]) VALUES (3, 1, 2, N'Cpu', 3, 1)
SET IDENTITY_INSERT [dbo].[ShoppingItems] OFF
GO
INSERT [dbo].[Users] ([Uid], [IsAdmin], [ShippingInfoId], [Credential]) VALUES (N'eFe4RxFSDSfRLithJeaa29F4lPx1', 0, NULL, NULL)
INSERT [dbo].[Users] ([Uid], [IsAdmin], [ShippingInfoId], [Credential]) VALUES (N'iufle3c3X5WC8PP0skXqV8FylO93', 0, NULL, N'eyJhbGciOiJSUzI1NiIsImtpZCI6ImJlNzgyM2VmMDFiZDRkMmI5NjI3NDE2NThkMjA4MDdlZmVlNmRlNWMiLCJ0eXAiOiJKV1QifQ.eyJwaWN0dXJlIjoiaHR0cHM6Ly9hdmF0YXJzLmdpdGh1YnVzZXJjb250ZW50LmNvbS91LzcxNDU4MjEzP3Y9NCIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS93ZWJzZXJ2aWNlLWVlYWFhIiwiYXVkIjoid2Vic2VydmljZS1lZWFhYSIsImF1dGhfdGltZSI6MTcwMzA2Nzc4NSwidXNlcl9pZCI6Iml1ZmxlM2MzWDVXQzhQUDBza1hxVjhGeWxPOTMiLCJzdWIiOiJpdWZsZTNjM1g1V0M4UFAwc2tYcVY4RnlsTzkzIiwiaWF0IjoxNzAzMDY3Nzg1LCJleHAiOjE3MDMwNzEzODUsImVtYWlsIjoiaGllbjAxODg5NjZAaHVjZS5lZHUudm4iLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZW1haWwiOlsiaGllbjAxODg5NjZAaHVjZS5lZHUudm4iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.aaa6BxkCOg_quGJMA9cUYhinUyxEpNWF-DEgJh2MK_yJM-WTV-VOQtIS-8MlzgUK1PYRqV5kftv-wE7e85S4HKAopisFjtlPzUd1UqYfwioqrP9xupPgiygR5JpSbQ1HPSdiUOGqPdkkpqrEgcEqUVAtpQCu0_djTc5CqrmoeJdtqq_aC5n5N3-dykuoJmjjMRvDfn4uC9c4WQviXeD3tgSkSTCADWq9ItqIhBEhq5XSd0i2AN5CiEzSvbpLRkxkkXMYQWzROoVndnY99h2u81IXhQ2FCFUEgMwMbdgi3bGmjYzKnsCf8Oic3yu4SjLcT_57GyL6cOskumedIFGZtg')
INSERT [dbo].[Users] ([Uid], [IsAdmin], [ShippingInfoId], [Credential]) VALUES (N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3', 0, NULL, N'eyJhbGciOiJSUzI1NiIsImtpZCI6ImJlNzgyM2VmMDFiZDRkMmI5NjI3NDE2NThkMjA4MDdlZmVlNmRlNWMiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiSGnhu4NuIHBo4bqhbSIsInBpY3R1cmUiOiJodHRwczovL3Njb250ZW50LmZoYW4yLTQuZm5hLmZiY2RuLm5ldC92L3QzOS4zMDgwOC02LzQwNzcwODgxMl8xNzc0MDA2MDE2NDA3NDE5XzU3MjM2OTY5NjEzMzc2NTkxMV9uLmpwZz9fbmNfY2F0PTEwMCZjY2I9MS03Jl9uY19zaWQ9ZWZiNmU2Jl9uY19ldWkyPUFlRy1EbVo0bzBsd085SzlGcWZka040aVY0aVF0Tjk3VS1OWGlKQzAzM3RUNHpKX2tsNUtIbFhPR2dEcldJNXluRGRTLXlqZzZuaDd6NzExdzZhMTUzNncmX25jX29oYz04T1ZmaVVoUTBsRUFYLTd5LU4xJl9uY19odD1zY29udGVudC5maGFuMi00LmZuYSZvaD0wMF9BZkNDMUJYN0RIa2x5X3d5UWhrWmhtbWVlRTBDTVd2Y0dWWEhRWnlDMFZhazh3Jm9lPTY1ODU5OUNEIiwiaXNzIjoiaHR0cHM6Ly9zZWN1cmV0b2tlbi5nb29nbGUuY29tL3dlYnNlcnZpY2UtZWVhYWEiLCJhdWQiOiJ3ZWJzZXJ2aWNlLWVlYWFhIiwiYXV0aF90aW1lIjoxNzAzMDY3Nzc1LCJ1c2VyX2lkIjoiTnNXc0NNZlNvd1lMZTRjRVlZd2FWZjBCZjNIMyIsInN1YiI6Ik5zV3NDTWZTb3dZTGU0Y0VZWXdhVmYwQmYzSDMiLCJpYXQiOjE3MDMwNjc3NzUsImV4cCI6MTcwMzA3MTM3NSwiZW1haWwiOiJoaXRwb2ludDJrM0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInBob25lX251bWJlciI6Iis4NDg0OTA3MDcwMyIsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZW1haWwiOlsiaGl0cG9pbnQyazNAZ21haWwuY29tIl0sInBob25lIjpbIis4NDg0OTA3MDcwMyJdfSwic2lnbl9pbl9wcm92aWRlciI6InBhc3N3b3JkIn19.ZudJ1QJuGUoPBGP68eyx8ckcU0_6uCQdxZEjZdGbw0_NIKT4tQIvpXROMyqzw5Fyg_jHZtVE4bd83Msg_43my0i_HbL4K57kXRNmdgDIwraSAItXXK5nb5r4ZgrcqJN44zJ18WNaNS1ZhNyEmCbq9MJeM0yphfEXmVUob0Td_vWGo9EeEub1zHXKspgS-ixqQa1hO5Jv0z8IEgieP78qvolXEEFo64hx0WEwLj5uaFcmNq7eT08noxyPgzUetQvAzDBJ8SNU4pcgFzULI-alFcr8zCzYbjvBp3NYwQqRtguyoMOuviJZboSvk2twDaVoLJtqTqJqf0sfcSpErHAj-Q')
GO
SET IDENTITY_INSERT [dbo].[Vgas] ON 

INSERT [dbo].[Vgas] ([Id], [Frequency], [Vram]) VALUES (200, 1807, 12)
INSERT [dbo].[Vgas] ([Id], [Frequency], [Vram]) VALUES (201, 2475, 8)
SET IDENTITY_INSERT [dbo].[Vgas] OFF
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Users] FOREIGN KEY([UserUid])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCart_Users]
GO
ALTER TABLE [dbo].[ShoppingItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ShoppingItems] CHECK CONSTRAINT [FK_ShoppingItems_Products]
GO
ALTER TABLE [dbo].[ShoppingItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingItems_ShoppingCarts] FOREIGN KEY([CartId])
REFERENCES [dbo].[ShoppingCarts] ([Id])
GO
ALTER TABLE [dbo].[ShoppingItems] CHECK CONSTRAINT [FK_ShoppingItems_ShoppingCarts]
GO
USE [master]
GO
ALTER DATABASE [WebData] SET  READ_WRITE 
GO

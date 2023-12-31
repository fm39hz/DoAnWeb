USE [WebData]
GO
/****** Object:  Table [dbo].[Cpus]    Script Date: 12/23/2023 4:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cpus](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Socket] [varchar](50) NULL,
	[Tdp] [varchar](50) NULL,
	[Core] [varchar](50) NULL,
	[Thread] [varchar](50) NULL,
	[Frequency] [varchar](50) NULL,
 CONSTRAINT [Cpus_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 12/23/2023 4:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserUid] [varchar](50) NULL,
	[OrderId] [int] NULL,
	[CreatedTime] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/23/2023 4:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserUid] [varchar](50) NULL,
	[ShippingId] [int] NULL,
	[Status] [varchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/23/2023 4:36:22 AM ******/
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
/****** Object:  Table [dbo].[ShippingInformations]    Script Date: 12/23/2023 4:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingInformations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserUid] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_ShippingInformations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 12/23/2023 4:36:22 AM ******/
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
/****** Object:  Table [dbo].[ShoppingItems]    Script Date: 12/23/2023 4:36:22 AM ******/
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
	[OrderStatus] [varchar](10) NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_ShoppingItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/23/2023 4:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Uid] [varchar](50) NOT NULL,
	[IsAdmin] [int] NULL,
	[Credential] [varchar](2000) NULL,
 CONSTRAINT [Users_pk] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vgas]    Script Date: 12/23/2023 4:36:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vgas](
	[Id] [int] IDENTITY(200,1) NOT NULL,
	[Frequency] [varchar](50) NULL,
	[Vram] [varchar](50) NULL,
 CONSTRAINT [Vgas_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cpus] ON 

INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (100, N'LGA 1200', N'75 W', N'6', N'12', N'4.2 Hz')
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (101, N'LGA 1200', N'75 W', N'6', N'12', N'4.4 Hz')
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (102, N'LGA 1700', N'75 W', N'6', N'12', N'4.6 Hz')
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (103, N'LGA 1700', N'75 W', N'12', N'20', N'5.0 Hz')
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (104, N'LGA 1700', N'75 W', N'12', N'20', N'5.2 Hz')
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (105, N'LGA 1700', N'75 W', N'20', N'24', N'5.3 Hz')
INSERT [dbo].[Cpus] ([Id], [Socket], [Tdp], [Core], [Thread], [Frequency]) VALUES (109, N'LGA 1700', N'75 W', N'6', N'12', N'4.8 Hz')
SET IDENTITY_INSERT [dbo].[Cpus] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

INSERT [dbo].[Invoices] ([Id], [UserUid], [OrderId], [CreatedTime]) VALUES (1, N'iufle3c3X5WC8PP0skXqV8FylO93', 1, CAST(N'2023-12-22T15:27:31.427' AS DateTime))
INSERT [dbo].[Invoices] ([Id], [UserUid], [OrderId], [CreatedTime]) VALUES (2, N'eFe4RxFSDSfRLithJeaa29F4lPx1', 2, CAST(N'2023-12-22T15:33:25.943' AS DateTime))
INSERT [dbo].[Invoices] ([Id], [UserUid], [OrderId], [CreatedTime]) VALUES (7, N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3', 7, CAST(N'2023-12-23T01:27:17.387' AS DateTime))
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserUid], [ShippingId], [Status]) VALUES (1, N'iufle3c3X5WC8PP0skXqV8FylO93', 3, N'CheckedOut')
INSERT [dbo].[Orders] ([Id], [UserUid], [ShippingId], [Status]) VALUES (2, N'eFe4RxFSDSfRLithJeaa29F4lPx1', 4, N'CheckedOut')
INSERT [dbo].[Orders] ([Id], [UserUid], [ShippingId], [Status]) VALUES (7, N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3', 9, N'CheckedOut')
SET IDENTITY_INSERT [dbo].[Orders] OFF
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
INSERT [dbo].[Products] ([Id], [SpecificationId], [Name], [Description], [ImageUrl], [Manufacturer], [BasePrice], [InStock], [ReviewCount], [Rating], [Type]) VALUES (15, 202, N'RTX 4060 WINDFORCE OC 8G', N'Vga 4xxx Series', N'https://product.hstatic.net/200000722513/product/gearvn-card-man-hinh-geforce-rtx-4060-windforce-oc-8g-1_9e431e9bf58e401fa7d61c09d26bcdf1_grande.png', N'Gigabyte', 9400000, 250, 6, 4.5, N'Vga')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShippingInformations] ON 

INSERT [dbo].[ShippingInformations] ([Id], [UserUid], [Name], [PhoneNumber], [Address], [Gender]) VALUES (3, N'iufle3c3X5WC8PP0skXqV8FylO93', N'Ph?m Danh Hi?n', N'0849070703', N'54 183 Linh Nam', N'Nam')
INSERT [dbo].[ShippingInformations] ([Id], [UserUid], [Name], [PhoneNumber], [Address], [Gender]) VALUES (4, N'eFe4RxFSDSfRLithJeaa29F4lPx1', N'Ph?m Danh Hi?n', N'0849070703', N'54 183 Linh Nam', N'Nam')
INSERT [dbo].[ShippingInformations] ([Id], [UserUid], [Name], [PhoneNumber], [Address], [Gender]) VALUES (9, N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3', N'Ph?m Danh Hi?n', N'0849070703', N'54 183 Linh Nam', N'Nam')
SET IDENTITY_INSERT [dbo].[ShippingInformations] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [UserUid]) VALUES (1, N'iufle3c3X5WC8PP0skXqV8FylO93')
INSERT [dbo].[ShoppingCarts] ([Id], [UserUid]) VALUES (2, N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3')
INSERT [dbo].[ShoppingCarts] ([Id], [UserUid]) VALUES (3, N'eFe4RxFSDSfRLithJeaa29F4lPx1')
INSERT [dbo].[ShoppingCarts] ([Id], [UserUid]) VALUES (4, N'V7Cs0d2DWXRAYRFosa7T9TZWIX42')
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingItems] ON 

INSERT [dbo].[ShoppingItems] ([Id], [ProductId], [CartId], [PromoteType], [Quantity], [IsSelected], [OrderStatus], [OrderId]) VALUES (1, 3, 1, N'Cpu', 3, 1, N'Waiting', NULL)
INSERT [dbo].[ShoppingItems] ([Id], [ProductId], [CartId], [PromoteType], [Quantity], [IsSelected], [OrderStatus], [OrderId]) VALUES (2, 4, 1, N'Vga', 1, 0, N'Waiting', NULL)
INSERT [dbo].[ShoppingItems] ([Id], [ProductId], [CartId], [PromoteType], [Quantity], [IsSelected], [OrderStatus], [OrderId]) VALUES (3, 1, 2, N'Cpu', 3, 1, N'CheckedOut', 7)
SET IDENTITY_INSERT [dbo].[ShoppingItems] OFF
GO
INSERT [dbo].[Users] ([Uid], [IsAdmin], [Credential]) VALUES (N'eFe4RxFSDSfRLithJeaa29F4lPx1', 0, NULL)
INSERT [dbo].[Users] ([Uid], [IsAdmin], [Credential]) VALUES (N'iufle3c3X5WC8PP0skXqV8FylO93', 0, N'eyJhbGciOiJSUzI1NiIsImtpZCI6ImJlNzgyM2VmMDFiZDRkMmI5NjI3NDE2NThkMjA4MDdlZmVlNmRlNWMiLCJ0eXAiOiJKV1QifQ.eyJwaWN0dXJlIjoiaHR0cHM6Ly9hdmF0YXJzLmdpdGh1YnVzZXJjb250ZW50LmNvbS91LzcxNDU4MjEzP3Y9NCIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS93ZWJzZXJ2aWNlLWVlYWFhIiwiYXVkIjoid2Vic2VydmljZS1lZWFhYSIsImF1dGhfdGltZSI6MTcwMzA2Nzc4NSwidXNlcl9pZCI6Iml1ZmxlM2MzWDVXQzhQUDBza1hxVjhGeWxPOTMiLCJzdWIiOiJpdWZsZTNjM1g1V0M4UFAwc2tYcVY4RnlsTzkzIiwiaWF0IjoxNzAzMDY3Nzg1LCJleHAiOjE3MDMwNzEzODUsImVtYWlsIjoiaGllbjAxODg5NjZAaHVjZS5lZHUudm4iLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZW1haWwiOlsiaGllbjAxODg5NjZAaHVjZS5lZHUudm4iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.aaa6BxkCOg_quGJMA9cUYhinUyxEpNWF-DEgJh2MK_yJM-WTV-VOQtIS-8MlzgUK1PYRqV5kftv-wE7e85S4HKAopisFjtlPzUd1UqYfwioqrP9xupPgiygR5JpSbQ1HPSdiUOGqPdkkpqrEgcEqUVAtpQCu0_djTc5CqrmoeJdtqq_aC5n5N3-dykuoJmjjMRvDfn4uC9c4WQviXeD3tgSkSTCADWq9ItqIhBEhq5XSd0i2AN5CiEzSvbpLRkxkkXMYQWzROoVndnY99h2u81IXhQ2FCFUEgMwMbdgi3bGmjYzKnsCf8Oic3yu4SjLcT_57GyL6cOskumedIFGZtg')
INSERT [dbo].[Users] ([Uid], [IsAdmin], [Credential]) VALUES (N'NsWsCMfSowYLe4cEYYwaVf0Bf3H3', 0, N'eyJhbGciOiJSUzI1NiIsImtpZCI6ImJlNzgyM2VmMDFiZDRkMmI5NjI3NDE2NThkMjA4MDdlZmVlNmRlNWMiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiSGnhu4NuIHBo4bqhbSIsInBpY3R1cmUiOiJodHRwczovL3Njb250ZW50LmZoYW4yLTQuZm5hLmZiY2RuLm5ldC92L3QzOS4zMDgwOC02LzQwNzcwODgxMl8xNzc0MDA2MDE2NDA3NDE5XzU3MjM2OTY5NjEzMzc2NTkxMV9uLmpwZz9fbmNfY2F0PTEwMCZjY2I9MS03Jl9uY19zaWQ9ZWZiNmU2Jl9uY19ldWkyPUFlRy1EbVo0bzBsd085SzlGcWZka040aVY0aVF0Tjk3VS1OWGlKQzAzM3RUNHpKX2tsNUtIbFhPR2dEcldJNXluRGRTLXlqZzZuaDd6NzExdzZhMTUzNncmX25jX29oYz04T1ZmaVVoUTBsRUFYLTd5LU4xJl9uY19odD1zY29udGVudC5maGFuMi00LmZuYSZvaD0wMF9BZkNDMUJYN0RIa2x5X3d5UWhrWmhtbWVlRTBDTVd2Y0dWWEhRWnlDMFZhazh3Jm9lPTY1ODU5OUNEIiwiaXNzIjoiaHR0cHM6Ly9zZWN1cmV0b2tlbi5nb29nbGUuY29tL3dlYnNlcnZpY2UtZWVhYWEiLCJhdWQiOiJ3ZWJzZXJ2aWNlLWVlYWFhIiwiYXV0aF90aW1lIjoxNzAzMDY3Nzc1LCJ1c2VyX2lkIjoiTnNXc0NNZlNvd1lMZTRjRVlZd2FWZjBCZjNIMyIsInN1YiI6Ik5zV3NDTWZTb3dZTGU0Y0VZWXdhVmYwQmYzSDMiLCJpYXQiOjE3MDMwNjc3NzUsImV4cCI6MTcwMzA3MTM3NSwiZW1haWwiOiJoaXRwb2ludDJrM0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInBob25lX251bWJlciI6Iis4NDg0OTA3MDcwMyIsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZW1haWwiOlsiaGl0cG9pbnQyazNAZ21haWwuY29tIl0sInBob25lIjpbIis4NDg0OTA3MDcwMyJdfSwic2lnbl9pbl9wcm92aWRlciI6InBhc3N3b3JkIn19.ZudJ1QJuGUoPBGP68eyx8ckcU0_6uCQdxZEjZdGbw0_NIKT4tQIvpXROMyqzw5Fyg_jHZtVE4bd83Msg_43my0i_HbL4K57kXRNmdgDIwraSAItXXK5nb5r4ZgrcqJN44zJ18WNaNS1ZhNyEmCbq9MJeM0yphfEXmVUob0Td_vWGo9EeEub1zHXKspgS-ixqQa1hO5Jv0z8IEgieP78qvolXEEFo64hx0WEwLj5uaFcmNq7eT08noxyPgzUetQvAzDBJ8SNU4pcgFzULI-alFcr8zCzYbjvBp3NYwQqRtguyoMOuviJZboSvk2twDaVoLJtqTqJqf0sfcSpErHAj-Q')
INSERT [dbo].[Users] ([Uid], [IsAdmin], [Credential]) VALUES (N'V7Cs0d2DWXRAYRFosa7T9TZWIX42', 0, N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjAzMmNjMWNiMjg5ZGQ0NjI2YTQzNWQ3Mjk4OWFlNDMyMTJkZWZlNzgiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vd2Vic2VydmljZS1lZWFhYSIsImF1ZCI6IndlYnNlcnZpY2UtZWVhYWEiLCJhdXRoX3RpbWUiOjE3MDMyODA4ODYsInVzZXJfaWQiOiJWN0NzMGQyRFdYUkFZUkZvc2E3VDlUWldJWDQyIiwic3ViIjoiVjdDczBkMkRXWFJBWVJGb3NhN1Q5VFpXSVg0MiIsImlhdCI6MTcwMzI4MDg4NiwiZXhwIjoxNzAzMjg0NDg2LCJlbWFpbCI6ImhpZW4wMTg4OTY2QG51Y2UuZWR1LnZuIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7ImVtYWlsIjpbImhpZW4wMTg4OTY2QG51Y2UuZWR1LnZuIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.Pysklgp1bhySzWmjR85kHTy8S6n-49BGMR8lumIz7w7z89U2nw2zDF3fjhslBFgdvJMuYqxuuJFX41fzRvexkvtyH83kUC4-8J0oBp3J8DhaJzRXlnZPtNd7Im9HoojAfQc_GVV0c_MZMU4h_xGxni5K_YyzUSGOr4PK2A8L3NRnRTxHodqFFNCr88BjuVn3s-KZQLS7Tihj8DmqvEwj0uLz2ub0ZOoAp0qkIVhsP_jXGI-mYnN5Si_c8r4J_b6V00jEus1hUD29TBeKqyu576bKWBFDVrAlgdpgu1Iin45ArRWdUs6XpA-NuPFDwa1wHQn16LMXWjx0BxON9BBLvA')
GO
SET IDENTITY_INSERT [dbo].[Vgas] ON 

INSERT [dbo].[Vgas] ([Id], [Frequency], [Vram]) VALUES (200, N'1807 Hz', N'12 Gb')
INSERT [dbo].[Vgas] ([Id], [Frequency], [Vram]) VALUES (201, N'2475 Hz', N'8 Gb')
INSERT [dbo].[Vgas] ([Id], [Frequency], [Vram]) VALUES (202, N'2475 Hz', N'8 Gb')
SET IDENTITY_INSERT [dbo].[Vgas] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ShippingInformations] FOREIGN KEY([ShippingId])
REFERENCES [dbo].[ShippingInformations] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ShippingInformations]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserUid])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
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

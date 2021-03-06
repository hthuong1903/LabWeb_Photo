USE [lab]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 7/20/2021 9:58:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Share]') AND type in (N'U'))
DROP TABLE [dbo].[Share]
GO
/****** Object:  Table [dbo].[image]    Script Date: 7/20/2021 9:58:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[image]') AND type in (N'U'))
DROP TABLE [dbo].[image]
GO
/****** Object:  Table [dbo].[galery]    Script Date: 7/20/2021 9:58:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[galery]') AND type in (N'U'))
DROP TABLE [dbo].[galery]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 7/20/2021 9:58:36 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
DROP TABLE [dbo].[contact]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 7/20/2021 9:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[telephone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[about] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[map_url] [nvarchar](max) NULL,
	[image_main] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galery]    Script Date: 7/20/2021 9:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galery](
	[ID] [int] NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 7/20/2021 9:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] NOT NULL,
	[galery_id] [int] NULL,
	[image_url] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 7/20/2021 9:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[icon] [varchar](50) NULL,
	[socialNetwork] [varchar](50) NULL,
	[url] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[contact] ([telephone], [email], [about], [address], [city], [country], [map_url], [image_main], [description]) VALUES (N'0342322957', N'thuongnth2304@gmail.com', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim', N'FPT University, Ha Noi , Viet Nam', N'Ha Noi', N'Viet Nam', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8947406862003!2d105.83247801476347!3d21.036897285994037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aba15ec15d17%3A0x620e85c2cfe14d4c!2sHo%20Chi%20Minh%20Mausoleum!5e0!3m2!1sen!2s!4v1623837278700!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', N'images/homeImage.jpg', N'Lorem ipsum dolor sit amet')
GO
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (1, N'View Gallery 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation1', N'Gallery 1')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (2, N'View Gallery 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation2', N'Gallery 2')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (3, N'View Gallery 3', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation3', N'Gallery 3')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (4, N'View Gallery 4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation4', N'Gallery 4')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (5, N'View Gallery 5', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation5', N'Gallery 5')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (6, N'View Gallery 6', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation6', N'Gallery 6')
GO
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (1, 1, N'images/img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (2, 1, N'images/img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (3, 1, N'images/img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (4, 1, N'images/img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (5, 1, N'images/img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (6, 1, N'images/img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (7, 1, N'images/img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (8, 1, N'images/img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (9, 2, N'images/img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (10, 2, N'images/img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (11, 2, N'images/img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (12, 2, N'images/img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (13, 2, N'images/img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (14, 2, N'images/img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (15, 2, N'images/img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (16, 2, N'images/img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (17, 3, N'images/img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (18, 3, N'images/img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (19, 3, N'images/img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (20, 3, N'images/img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (21, 3, N'images/img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (22, 3, N'images/img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (23, 3, N'images/img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (24, 3, N'images/img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (25, 4, N'images/img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (26, 4, N'images/img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (27, 4, N'images/img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (28, 4, N'images/img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (29, 4, N'images/img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (30, 4, N'images/img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (31, 4, N'images/img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (32, 4, N'images/img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (33, 5, N'images/img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (34, 5, N'images/img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (35, 5, N'images/img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (36, 5, N'images/img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (37, 5, N'images/img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (38, 5, N'images/img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (39, 5, N'images/img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (40, 5, N'images/img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (41, 6, N'images/img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (42, 6, N'images/img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (43, 6, N'images/img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (44, 6, N'images/img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (45, 6, N'images/img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (46, 6, N'images/img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (47, 6, N'images/img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (48, 6, N'images/img8.jpg')
GO
INSERT [dbo].[Share] ([icon], [socialNetwork], [url]) VALUES (N'face.png', N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([icon], [socialNetwork], [url]) VALUES (N'twitter.png', N'Twitter', N'https://twitter.com/?lang=vi')
INSERT [dbo].[Share] ([icon], [socialNetwork], [url]) VALUES (N'google.png', N'Google', N'https://www.google.com/')
GO

USE [MyOnlineQuiz]
GO
/****** Object:  Table [dbo].[user]    Script Date: 8/3/2021 7:48:16 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[quiz]    Script Date: 8/3/2021 7:48:16 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[quiz]') AND type in (N'U'))
DROP TABLE [dbo].[quiz]
GO
/****** Object:  Table [dbo].[quiz]    Script Date: 8/3/2021 7:48:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](max) NOT NULL,
	[option1] [nvarchar](max) NOT NULL,
	[option2] [nvarchar](max) NOT NULL,
	[option3] [nvarchar](max) NOT NULL,
	[option4] [nvarchar](max) NOT NULL,
	[answer] [varchar](12) NOT NULL,
	[created_date] [date] NOT NULL,
	[user_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 8/3/2021 7:48:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[role] [int] NOT NULL,
	[createdDate] [date] NOT NULL,
	[email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[quiz] ON 

INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (2, N'Dung dịch phenol (C6H5OH) không phản ứng được với chất nào sau đây?', N'NaOH.', N'NaCl.', N' Br2.', N'Na.', N'3', CAST(N'2019-06-07' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (3, N'Dung dịch nào dưới đây khi phản ứng hoàn toàn với dung dịch NaOH dư, thu được kết tủa trắng?', N'Ca(HCO3)2.', N'FeCl3.', N'AlCl3.', N'H2SO4.', N'1', CAST(N'2019-04-05' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4, N'Bài hát ''''Tây lâu biệt tự'''' là bài nhạc của nước nào?', N'Quảng Bình', N'Quảng Ninh', N'Quảng Trị', N'Quảng Ngãi', N'3', CAST(N'2018-02-03' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (5, N'Đại Ngu là quốc hiệu của triều đại nào', N'Triều Ngô', N'Triều Hồ', N'Các chúa Nguyễn', N'Nhà Tây Sơn', N'2', CAST(N'2020-01-02' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (6, N'Liên kết hóa học trong phân tử Br2 thuộc loại liên kết', N'ion.', N'hiđro.', N'cộng hóa trị không cực.', N'cộng hóa trị có cực.', N'4', CAST(N'2020-01-02' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (7, N'Sản phẩm thu được khi điện phân dung dịch KCl (điện cực trơ, màng ngăn xốp) là', N'K và Cl2.', N'K, H2 và Cl2.', N'KOH, H2 và Cl2.', N'KOH, O2 và HCl.', N'3', CAST(N'2020-01-02' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (8, N'Dãy các chất nào dưới đây đều phản ứng được với Cu(OH)2 ở điều kiện thường?', N'Etylen glicol, glixerol và ancol etylic.', N'Glucozơ, glixerol và saccarozơ.', N'Glucozơ, glixerol và metyl axetat.', N'Glixerol, glucozơ và etyl axetat.', N'2', CAST(N'2020-01-02' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (9, N'Phát biểu nào sau đây không đúng?', N'Kim loại Fe phản ứng với dung dịch HCl tạo ra muối sắt (II).', N'Dung dịch FeCl3 phản ứng được với kim loại Fe.', N'Kim loại Fe không tan trong dung dịch H2SO4 đặc, nguội.', N'Trong các phản ứng hóa học, ion Fe2+ chỉ thể hiện tính khử.', N'1', CAST(N'2021-06-05' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (16, N'hôm nay là thứ mấy', N'thứ 2', N'thứ 3 ', N'thứ 4', N'thứ 5', N'4', CAST(N'2021-06-10' AS Date), 8)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (10, N'Phát biểu nào dưới đây không đúng?', N'SiO2 là oxit axit.', N'Đốt cháy hoàn toàn CH4 bằng oxi, thu được CO2 và H2O.', N'Sục khí CO2 vào dung dịch Ca(OH)2 dư, dung dịch bị vẩn đục.', N'SiO2 tan tốt trong dung dịch HCl.', N'3', CAST(N'2021-06-08' AS Date), 7)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (11, N'Phát biểu nào dưới đây không đúng?', N'Tính chất hóa học đặc trưng của kim loại là tính khử.', N'Bản chất của ăn mòn kim loại là quá trình oxi hóa - khử.', N'Ăn mòn hóa học phát sinh dòng điện.', N'Nguyên tắc chung để điều chế kim loại là khử ion kim loại thành nguyên tử kim loại.', N'2', CAST(N'2021-06-08' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (12, N'Đâu là tên một bãi biển ở Quảng Bình?', N'Đá Lăn', N'Đá Nhảy', N'Đá Chạy', N'Đá Bò', N'2', CAST(N'2021-06-09' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (13, N'Haiku là thể thơ truyền thống của nước nào?', N'Nhật Bản', N'Mông Cổ', N'Trung Quốc', N'Hàn Quốc', N'1', CAST(N'2021-06-09' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (15, N'Thuốc thử nào sau đây dùng để phân biệt khí H2S với khí CO2?', N'Dung dịch HCl.', N'Dung dịch Pb(NO3)2.', N'Dung dịch K2SO4.', N'Dung dịch NaCl.', N'2', CAST(N'2021-06-10' AS Date), 8)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (14, N'Chiến trường Đắk Tô - Tân Cảnh, nơi diễn ra chiến thắng vang đội năm 1972, nay thuộc địa bàn tỉnh nào ở Tây Nguyên?', N'Kon Tum', N'Đắk Lắk', N'Gia Lai', N'Đắk Nông', N'1', CAST(N'2021-06-09' AS Date), 1)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (17, N'Doi tuyen quoc gia nao vo dich Euro 2020?', N'Y', N'Anh', N'Bi ', N'Dan Mach', N'1,', CAST(N'2021-07-21' AS Date), 10)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (18, N'Dung dịch chất nào dưới đây có môi trường kiềm?', N'NH4Cl.', N'Al(NO3)3.', N'CH3COONa.', N'HCl.', N'3', CAST(N'2021-07-21' AS Date), 13)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (19, N'Tơ nào dưới đây thuộc loại tơ nhân tạo?', N'Tơ nilon-6,6.', N'Tơ axetat.', N'Tơ tằm.', N'Tơ capron.', N'2', CAST(N'2021-07-21' AS Date), 13)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (20, N'Phát biểu nào sau đây là đúng?', N'Thành phần chính của supephotphat kép gồm hai muối Ca(H2PO4)2 và CaSO4.', N'Urê có công thức là (NH2)2CO.', N'Supephotphat đơn chỉ có Ca(H2PO4)2.', N'Phân lân cung cấp nitơ cho cây trồng.', N'2', CAST(N'2021-07-22' AS Date), 13)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (21, N'hihi', N'1', N'2', N'3', N'4', N'2', CAST(N'2021-07-22' AS Date), 13)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (22, N'haha', N'1', N'2', N'3', N'4', N'2', CAST(N'2021-07-22' AS Date), 13)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (23, N'Axit làm quì tím đổi màu gì?', N'xanh', N'đỏ', N'vàng', N'trắng', N'2,', CAST(N'2021-08-03' AS Date), 17)
SET IDENTITY_INSERT [dbo].[quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (1, N'thuy', N'thuy', 1, CAST(N'2000-01-02' AS Date), N'123@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2, N'nam', N'123', 2, CAST(N'2003-01-23' AS Date), N'sdf@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (3, N'sa', N'1234', 2, CAST(N'2000-01-02' AS Date), N'sdfsdf@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (4, N'sa2', N'1235', 2, CAST(N'2000-01-02' AS Date), N'aa@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (5, N'sa3', N'1236', 2, CAST(N'2000-01-02' AS Date), N'bb@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (6, N'sa4', N'sa', 2, CAST(N'2021-06-05' AS Date), N'cc@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (7, N'sa1', N'sa1', 1, CAST(N'2021-06-08' AS Date), N'dd@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (8, N'sdf', N'sdf', 1, CAST(N'2021-06-08' AS Date), N'sdf')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (9, N'qwe', N'qwe', 1, CAST(N'2021-06-10' AS Date), N'sdf@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (10, N'ex', N'ex', 1, CAST(N'2021-06-10' AS Date), N'sdf@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (11, N'h_thuong', N'123', 2, CAST(N'2021-07-21' AS Date), N'thuongnth2304@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (12, N'sa5', N'sa', 1, CAST(N'2021-07-21' AS Date), N'Anhvthe140566@fpt.edu.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (13, N'admin', N'admin', 1, CAST(N'2021-07-21' AS Date), N'hihi')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (14, N'h_thuong234', N'2304', 2, CAST(N'2021-08-02' AS Date), N'thuongnthhe141093@fpt.edu.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (15, N'admin1', N'admin1', 1, CAST(N'2021-08-03' AS Date), N'thuongnth2304@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (16, N'student1', N'student1', 2, CAST(N'2021-08-03' AS Date), N'Anhvthe140566@fpt.edu.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (17, N'teacher1', N'123', 1, CAST(N'2021-08-03' AS Date), N'Anhvthe140566@fpt.edu.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (18, N'student2', N'1234', 2, CAST(N'2021-08-03' AS Date), N'phamtrantran123@gmail.com')
SET IDENTITY_INSERT [dbo].[user] OFF
GO

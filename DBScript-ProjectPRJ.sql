USE [Project_PRJ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[Displayname] [nvarchar](150) NOT NULL,
	[Role] [int] NULL,
	[Sdt] [bigint] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiThieuNV]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieuNV](
	[IDnv] [int] IDENTITY(1,1) NOT NULL,
	[Tennv] [nvarchar](50) NOT NULL,
	[Chitiet] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_GioiThieuNV] PRIMARY KEY CLUSTERED 
(
	[IDnv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgBDS]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgBDS](
	[IDbds] [int] NOT NULL,
	[img] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgBDS2]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgBDS2](
	[IDbds] [int] NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[IDimg] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ImgBDS2] PRIMARY KEY CLUSTERED 
(
	[IDimg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc1]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](250) NOT NULL,
	[Noidung] [nvarchar](max) NOT NULL,
	[ngay] [date] NOT NULL,
	[imgAvar] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TinTuc1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinBDS]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBDS](
	[IDbds] [int] IDENTITY(1,1) NOT NULL,
	[Tenbds] [nvarchar](200) NOT NULL,
	[Thongtinbds] [nvarchar](max) NOT NULL,
	[Loaibds] [nvarchar](50) NOT NULL,
	[Khuvucbds] [nvarchar](50) NOT NULL,
	[Giachu] [nvarchar](50) NOT NULL,
	[Giaso] [bigint] NOT NULL,
	[Ngay] [date] NOT NULL,
	[ImgAvar] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThongTinBDS] PRIMARY KEY CLUSTERED 
(
	[IDbds] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[ID] [int] NOT NULL,
	[Vaitro] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCau]    Script Date: 3/20/2022 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCau](
	[IDyeucau] [int] IDENTITY(1,1) NOT NULL,
	[Tennguoigui] [nvarchar](150) NOT NULL,
	[Sdt] [bigint] NOT NULL,
	[Noidung] [nvarchar](max) NOT NULL,
	[Ngaygui] [date] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_YeuCau] PRIMARY KEY CLUSTERED 
(
	[IDyeucau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([UserID], [Username], [Password], [Displayname], [Role], [Sdt]) VALUES (1, N'admin', N'123', N'Admin(Trai)', 1, 362351671)
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Displayname], [Role], [Sdt]) VALUES (9, N'nguoidung1', N'123', N'Người Dùng2', 2, 1234567890)
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Displayname], [Role], [Sdt]) VALUES (10, N'nguoidung2', N'123', N'Người Dùng3', 2, 1234567890)
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Displayname], [Role], [Sdt]) VALUES (26, N'khachhang1', N'12345', N'Khách hàng 5', 2, 1234567890)
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Displayname], [Role], [Sdt]) VALUES (46, N'chihuong', N'12345', N'Hướng ngu', 2, 1234567878)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[GioiThieuNV] ON 

INSERT [dbo].[GioiThieuNV] ([IDnv], [Tennv], [Chitiet], [Img]) VALUES (1, N'Chu Văn Ngọc', N'- Lời đầu tiên, xin chân thành cám ơn các Anh Chị và quý khách hàng yêu mến đã đến với trang Website: Bất động sản Nha Trang(CVN) để tham khảo và tìm kiếm về bất động sản Nha Trang, Khánh Hoà!<br>
                - Ngọc tự hào là một người con được sinh ra và lớn lên tại thành phố biển xinh đẹp Nha Trang, nơi được mệnh danh là 1 trong 29 Vịnh biển đẹp nhất Thế Giới. <br>
                - Ngọc từ bé đã dạo khắp các ngõ ngách của thành phố, chứng kiến từng cánh đồng bát ngát phát triển thành khu đô thị sầm uất, trải qua từng cơn biến động của thị trường bất động sản tại Nha Trang - Khánh Hoà. <br>
                - Ngọc không ngừng học hỏi và trau dồi kiến thức về bất động sản để mang đến cho khách hàng những sản phẩm “An cư”  và  “Đầu tư” tốt nhất bằng tất cả tâm huyết và sự chân thành từ chính con tim mình. <br>
                - Mỗi khách hàng là một người thân, mỗi sự tin yêu là những giá trị tinh thần cao quý Chi được trao tặng. <br>
                - Vì thế, Ngọc luôn làm việc với phương châm “Lợi ích của khách hàng là ngàn vàng, Tín nhiệm của khách hàng là kim chỉ nam” cho sự nỗ lực “trao giá trị Bất Động Sản vững niềm tin với khách hàng” <br>
               Mọi người có thể liên hệ trực tiếp với Ngọc qua các phương tiện dưới đây để nhận thông tin BĐS mới và nhanh nhất nhé : <br>
', N'gioithieu1.jpg')
SET IDENTITY_INSERT [dbo].[GioiThieuNV] OFF
GO
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (4, N'bds15.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (4, N'bds16.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (6, N'bds17.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (6, N'bds18.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (33, N'bds21.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (34, N'bds24.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (39, N'bds34.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (33, N'bds22.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (34, N'bds25.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (36, N'bds28.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (36, N'bds29.jpg')
INSERT [dbo].[ImgBDS] ([IDbds], [img]) VALUES (37, N'bds31.jpg')
GO
SET IDENTITY_INSERT [dbo].[ImgBDS2] ON 

INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (4, N'bds15.jpg', 1)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (4, N'bds16.jpg', 2)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (6, N'bds17.jpg', 3)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (6, N'bds18.jpg', 4)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (33, N'bds21.jpg', 5)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (34, N'bds24.jpg', 6)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (39, N'bds34.jpg', 7)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (33, N'bds22.jpg', 8)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (34, N'bds25.jpg', 9)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (36, N'bds28.jpg', 10)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (36, N'bds29.jpg', 11)
INSERT [dbo].[ImgBDS2] ([IDbds], [img], [IDimg]) VALUES (37, N'bds31.jpg', 12)
SET IDENTITY_INSERT [dbo].[ImgBDS2] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc1] ON 

INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (3, N'Khánh Hòa lên cơn sốt vì xu hướng “bỏ phố về quê” Đất nghỉ dưỡng xã Suối Tiên lên ngôi', N'Những ngày cuối năm 2021, cơn sốt đất bắt đầu lan tới xã Suối Tiên (Diên Khánh, Khánh Hòa). Điều lạ là cơn sốt đất lại không phải là đất nền mà là đất nghỉ dưỡng
Đổ xô tìm mua đất "tựa sơn hướng thủy"<br>
Để mục sở thị, PV đã tìm về xã Suối Tiên để tìm hiểu thông tin. Từ TP.Nha Trang (tỉnh Khánh Hòa), PV chỉ phải di chuyển khoảng đường hơn 20km thì đã tới trung tâm xã Suối Tiên. Tại đây, chứng kiến cảnh núi non trùng điệp, cảnh quan hoang sơ, độc đáo, đặc biệt lại sở hữu hàng loạt con suối xanh mát quanh năm. Vùng đất "tựa sơn, hướng thủy", lại gần thành phố biển Nha Trang, PV mới nhận ra nguyên nhân vì sao những ngày qua, tại đây lại bắt đầu xuất hiện cơn sốt đất mới. <br>
Dẫn đường cho PV là anh Nguyễn Nam (một người dân địa phương). Anh Nam cho biết, hơn hai tuần nay, tại địa bàn xã Suối Tiên suốt hiện nhiều người dân, nhà đầu tư từ TP.Nha Trang, đặc biệt là TP.Đà Nẵng, TP.Hà Nội và TP.HCM tìm đến để tìm mua các lô đất có diện tích lớn từ 1.000m2 trở lên để làm nhà vườn nghỉ dưỡng. <br> 
“Vài người bạn làm môi giới bất động sản của tôi đã giới thiệu và bán được hơn chục lô đất nghỉ dưỡng như vậy cho người có nhu cầu. Qua quan sát thực tế của tôi thì hiện nay, đất ở xã Suối Tiên này đáp ứng rất tốt xu hướng bỏ phố về quê của người dân, đặc biệt là sau đợt dịch Covid-19 gây ảnh hưởng nghiêm trọng như vừa qua. Một nơi vừa có núi, có suối, khí hậu mát mẻ, lại gần thành phố du lịch biển Nha Trang thì làm nhà vườn nghỉ dưỡng thì chỉ có một không hai”, anh Nam vui vẻ chia sẻ. <br>
Là một môi giới bất động sản lâu năm tại Khánh Hòa, chị Nguyễn Tú Lan (ngụ TP.Nha Trang) cho hay: “Hơn một năm gần đây, bất động sản nghỉ dưỡng ven đô nổi lên như một xu hướng đầu tư mới. Mô hình này, trong đó có homestay, farmstay (mô hình du lịch kết hợp trang trại nghỉ dưỡng) được dự báo sẽ bùng nổ do nhu cầu du lịch của người dân ngày càng lớn. Đặc biệt là sau đợt ảnh hưởng nghiêm trọng của dịch Covid-19 vừa qua”.
<br>
<img src="../img/tintuc/tintuc7.jpg" alt=""><br>
“Khảo sát trên các trang rao bán bất động sản tại Khánh Hòa, Nha Trang, nhan nhản các thông tin rao bán đất tại các khu vực có lợi thế về du lịch. Đơn cử, nhiều lô đất có diện tích từ 500 đến hơn 1.000 m2 tại gần khu du lịch Suối Tiên đang được rao bán với giá khoảng 2 - 11 triệu đồng/m2 tùy vị trí, được quảng cáo thích hợp xây dựng homestay, nhà nghỉ cuối tuần”, chị Tú Lan nhấn mạnh. 
Theo lời chị Tú Lan, làn sóng mua bất động sản nghỉ dưỡng tại khu vực huyện Diên Khánh, đặc biệt là xã Suối Tiên đã diễn ra từ nhiều năm trước và vẫn luôn âm ỉ cho đến nay. Đến thời điểm hiện tại thì bắt đầu xuất hiện cơn sốt. “Trong bối cảnh dịch bệnh diễn biến phức tạp, không ít người đang có xu hướng mua bất động sản nghỉ dưỡng ở xa thành phố vừa để an cư, vừa để nghỉ ngơi, thư giãn. Trào lưu "bỏ phố về rừng" nóng trở lại là một điều dễ hiểu,  kéo theo đó là nhu cầu đầu tư bất động sản nghỉ dưỡng ven đô. Song, vị trí, pháp lý... vẫn là những yếu tố được người dân, nhà đầu tư quan tâm trước khi xuống tiền”, chị Tú Lan cho hay. <br>
Theo một môi giới bất động sản (BĐS) tại TP.Nha Trang, chỉ trong gần 1 tháng nay, người này đã giao dịch thành công 10 hợp đồng, mỗi hợp đồng tiền hoa hồng được khoảng 50 triệu đồng. Ngoài ra, các nhân viên sàn giao dịch do môi giới này mới thành lập cũng đã chốt thành công hơn 30 hợp đồng. “Khách Hà Nội đang kết lô đất này, nếu anh mua thì chốt nhanh kẻo giá lại tăng. Lô này đất đã tăng giá hơn 100 triệu đồng”, môi giới này cho hay. <br>
Vóc dáng đô thị tương lai<br>
Nhiều chuyên gia bất động sản tại Khánh Hòa cho biết, thực tế thị trường bất động sản Khánh Hòa thời gian gần đây cho thấy, xu hướng dịch chuyển đầu tư từ các dự án trọng điểm ở Nha Trang như: Trung tâm thương mại tài chính Nha Trang, đô thị phía Tây Nha Trang sang các huyện Diên Khánh, Cam Lâm, Ninh Hòa để đầu tư rất nhiều. <br>
<img src="../img/tintuc/tintuc8.jpg" alt=""><br>
Vì sao bất động sản (BĐS) các khu vực ven thành phố lại hút giới đầu tư? Theo các chuyên gia thì thị trường trung tâm Nha Trang thời gian qua rất ít có dự án mới, trong khi dự án cũ giá đã tăng khá cao, còn tại các vùng ven như Diên Khánh hay Cam Lâm, cách Nha Trang chừng 15 phút đi ô tô, mức giá chỉ bằng 1/3 hoặc 1/4 nên nhà đầu tư có xu hướng chuyển dịch mạnh về đây. <br>
Khảo sát của một số sàn giao dịch BĐS đang hoạt động tại Diên Khánh cho thấy loại hình BĐS gắn liền với đất như biệt thự nhà vườn, đất nền sổ riêng (xây dựng tự do), đất vườn sinh thái đang thu hút nhà đầu tư nhiều nhất. Lý do là chi phí đầu tư còn thấp, tính thanh khoản cao cộng với mức độ gia tăng giá theo hạ tầng là cực kỳ lớn. Đồng thời dòng sản phẩm này có quyền sử dụng đất lâu dài và ổn định. <br>
Ngày nay, nhu cầu sở hữu “ngôi nhà thứ hai” trong các quần thể du lịch sinh thái, du lịch đồng quê đang trở thành xu hướng rõ thấy của những gia đình có tiền. Đa số khách hàng đều hướng tới dòng sản phẩm có giá bán vừa tầm, hạ tầng hiện hữu để tiện việc cho con cái trải nghiệm cuối tuần cũng như hạn chế rủi ro trong đầu tư. Thị trường BĐS Diên Khánh, đặc biệt là xã Suối Tiên hiện nay được xem là một kênh đầu tư mà mức giá chung cạnh tranh hơn nhiều so với các thị trường khác. <br>
<img src="../img/tintuc/tintuc9.jpg" alt=""><br>

', CAST(N'2022-02-15' AS Date), N'tintuc2.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (4, N'Tập đoàn FLC nghiên cứu siêu đô thị nghỉ dưỡng gần 8.700ha tại Ninh Hòa Khánh Hòa', N'Ngày 26/11, Ban Thường vụ Tỉnh uỷ Khánh Hoà đã có buổi làm việc để nghe FLC báo cáo về các đề xuất nghiên cứu đầu tư dự án của doanh nghiệp trên địa bàn tỉnh. <br>
 
Tham dự buổi làm việc có ông Nguyễn Hải Ninh, Ủy viên BCH Trung ương Đảng, Bí thư Tỉnh ủy Khánh Hòa; ông Nguyễn Khắc Toàn, Phó Bí thư Thường trực Tỉnh ủy, Chủ tịch HĐND tỉnh; ông Nguyễn Tấn Tuân, Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh. Về phía FLC có ông Trịnh Văn Quyết, Chủ tịch HĐQT; bà Hương Trần Kiều Dung, Phó Chủ tịch thường trực; ông Đặng Tất Thắng, Phó Chủ tịch Tập đoàn kiêm TGĐ Bamboo Airways. ''<br>
Phát biểu mở đầu buổi làm việc, Bí thư Tỉnh ủy Nguyễn Hải Ninh cho biết, đây là thời điểm Khánh Hòa đang tập trung cho đề án Tổng kết 10 năm thực hiện Kết luận số 53 của Bộ Chính trị về "Xây dựng, phát triển tỉnh Khánh Hòa đến năm 2020 và tầm nhìn đến năm 2030". Bên cạnh đó, tỉnh đang gấp rút tiến hành cùng lúc 3 quy hoạch lớn gồm: quy hoạch chung của tỉnh Khánh Hòa; điều chỉnh quy hoạch thành phố Nha Trang và điều chỉnh kế hoạch Khu kinh tế Vân Phong. <br>
"Chúng tôi đang mời gọi các nhà đầu tư chiến lược đến với Khánh Hòa để nâng tầm sản phẩm, dịch vụ du lịch Khánh Hòa, đóng góp vào sự tăng trưởng bền vững của tỉnh với mục tiêu đến năm 2030, Khánh Hòa sẽ trở thành đô thị trung ương", Bí thư Tỉnh ủy Khánh Hòa cho hay. <br>
Tại sự kiện, lãnh đạo FLC báo cáo chi tiết về đề xuất nghiên cứu đầu tư Khu phức hợp nghỉ dưỡng đô thị sinh thái cao cấp tại vịnh Nha Phu, thị xã Ninh Hòa, với quy mô nghiên cứu khoảng 8.650 ha (4000 ha mặt nước và khoảng 4650 ha đất nghiên cứu xây dựng). Dự án bao gồm 5 phân khu, với nhiều hạng mục tiêu chuẩn quốc tế như 4 khách sạn 5 sao 6000 phòng có sức chứa 12 ngàn khách; hơn 10 sân golf liên hoàn; khu nghỉ dưỡng 7 sao Bamboo Word Hòn Thị; đô thị thương mại, tài chính và dịch vụ tổng hợp…<br>
Nhiều hạng mục du lịch giải trí khác cũng được quy hoạch như công viên vui chơi giải trí theo mô hình Disneyland, vườn thú bán hoang dã… để kiến tạo một siêu dự án đô thị nghỉ dưỡng quy mô lớn nhất và đồng bộ nhất tại Khánh Hòa cũng như Việt Nam. <br>
<img src="../img/tintuc/tintuc10.jpg" alt=""><br>
Đánh giá về hiện trạng thực tế tại khu vực nghiên cứu, lãnh đạo FLC cho biết, vịnh Nha Phu có vị trí thuận lợi về mặt giao thông đặc biệt là cảnh quan tự nhiên độc đáo. Tuy nhiên, việc kết nối nội khu còn nhiều hạn chế, hạ tầng du lịch chưa thực sự đáp ứng nhu cầu tiếp cận đa dạng các phân khúc du khách, đặc biệt khách quốc tế. Để giải quyết bài toán di chuyển giữa các phân khu trong siêu dự án, FLC dự kiến quy hoạch 4 lớp giao thông gồm: đường bộ, đường thuỷ (du thuyền), cáp treo và trực thăng với tối thiểu 5 điểm đỗ trực thăng kết nối đất liền và đảo. Quan trọng hơn, ước tính hơn 80% diện tích trong khu vực nghiên cứu bao gồm cảnh quan rừng, mặt nước… sẽ được giữ nguyên hiện trạng, hầu như không tác động vào cảnh quan, môi trường, lãnh đạo FLC cho biết. <br>
Bên cạnh dự án Khu phức hợp nghỉ dưỡng nói trên, FLC cũng đề xuất nghiên cứu Công trình khách sạn, trung tâm thương mại 6 sao cao 40 tầng tại khu đất 48-48A đường Trần Phú. Theo FLC, đây đều là các dự án tổ hợp đa chức năng, với sự liên kết đồng bộ nhiều hạng mục tiện ích đa dạng giúp nâng cao năng lực đón khách cao cấp cho cơ sở hạ tầng du lịch Khánh Hòa. <br>
Chia sẻ thêm về kế hoạch đầu tư của doanh nghiệp, Chủ tịch FLC, ông Trịnh Văn Quyết nhận định Khánh Hòa sở hữu nhiều tiềm năng hiếm có về cảnh quan và vị trí địa lý. Từ lợi thế vốn có này, FLC mong muốn đầu tư xây dựng các dự án tầm cỡ, với chiến lược đồng bộ nhằm đưa toàn bộ khu vực vịnh Nha Phu trở thành một thành phố thu nhỏ của Khánh Hòa. Đánh giá cao ý tưởng cũng như tính hiệu quả các đề xuất nghiên cứu từ phía FLC, Bí thư Tỉnh ủy Nguyễn Hải Ninh nhận định quy hoạch Khu phức hợp tại vịnh Nha Phu mang tính hài hoà, gắn với bảo vệ môi trường cảnh quan và cuộc sống của người dân địa phương. <br>
“Với một tập đoàn lớn như FLC, đầu tư một dự án nghiêm túc với quy mô lớn như trên không chỉ mang lại giá trị cho doanh nghiệp mà còn với địa phương, người lao động. Đồng thời cũng đúng với định hướng góp phần đưa Khánh Hòa trở thành đô thị Trung ương vào năm 2030”, ông Nguyễn Hải Ninh nhận định và cho biết Tỉnh uỷ Khánh Hoà hoan nghênh các ý tưởng dự án và sẽ sớm có văn bản chính thức đối với đề xuất nghiên cứu đầu tư của FLC. <br>
', CAST(N'2022-02-16' AS Date), N'tintuc3.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (5, N'Dân đổ xô tìm mua đất, môi giới không có thời gian nghỉ ngơi, thị trường bất động sản sôi động', N'Anh Nguyễn Đình Vinh, một môi giới BĐS tại khu vực Đồng Mai, Hà Đông cho biết trong quãng thời gian 2 tuần gần đây số người liên hệ với anh gọi đề nghị dẫn đi xem đất tăng nhiều. Có hôm, anh dẫn 4-5 đoàn khách đi xem thực địa, vào những ngày cuối tuần thì số khách muốn được dẫn đi xem đất nhiều hơn. <br>
Theo anh Vinh, những khách hàng liên hệ với anh tìm mua đất chủ yếu là những người mua bất động sản lần đầu, những người có nhu cầu tìm một nơi an cư tại thủ đô sau nhiều năm ở trọ. Chính vì thế, khách hàng của anh là những người có nhu cầu mua đất với diện tích từ 40 đến 50 mét vuông và có mức giá dưới 2 tỷ đồng. Đặc biệt, với những thửa đất có mức giá chuyển nhượng từ 1,2 đến 1,5 tỷ đồng rất dễ chốt khách thời điểm này. <br>
<img src="../img/tintuc/tintuc11.jpg" alt=""><br>
Anh Vinh chia sẻ chỉ trong quãng thời gian 2 tuần vừa qua đã chốt thành công 10 lô đất cho những người có nhu cầu: “Số lượng người tìm mua đất trong 2 tuần vừa qua có thể bằng cả 2 tháng trước đây cộng lại. Nhiều người có nhu cầu ở thực nên thời điểm này những mảnh đất có diện tích và giá cả vừa phải rất dễ chốt”, môi giới này cho biết. <br>
Dẫn đoàn khách đi thực địa những mảnh đất tại khu vực Yên Nghĩa, Hà Đông, Hà Nội, chị Thanh cho biết những môi giới như chị không có thời gian nghỉ ngơi vào những dịp cuối tuần bởi đây là thời điểm mà những người có nhu cầu mua đất mới có thời gian để đi xem thực tế. <br>
Môi giới này chia sẻ trong 2 ngày cuối tuần đã từ chối nhiều cuộc hẹn liên hoan với bạn bè và người quen để dành thời gian dẫn khách đi xem đất. Tuy nhiên, chị Thanh cho biết, dù khách nhờ dẫn xem đất đông nhưng nhiều người vẫn chưa sẵn sàng xuống tiền đầu tư ở thời điểm hiện tại: “Phần lớn khách tôi dẫn đi xem vẫn đang ở trạng thái thăm dò, tham khảo thôi chứ chưa có người thực sự xuống tiền đầu tư”. <br>
Trong cơn “sốt đất”, nhiều gia đình cũng tranh thủ bán bớt đất của mình để lấy vốn làm ăn. Chị Châu Giang (Hà Đông) cho biết tranh thủ giá đất trong khu vực đang tăng cao, gia đình chị quyết định cắt bán bớt 240 mét vuông đất với giá gần 30 triệu đồng/mét vuông để lấy vốn làm ăn. Chị Giang cho hay kể từ khi đăng tin rao bán gia đình chị đã tiếp hàng chục đoàn khách vào xem và các bên vẫn đang thương lượng về giá. Chủ nhà này cũng cho biết những khách hỏi mua chủ yếu là những nhà đầu tư lớn, họ thu gom những mảnh lớn rồi cắt nhỏ ra xây nhà bán cho những người có nhu cầu mua nhà xây sẵn. <br>
Anh Hoàng Cương, một cư dân tại Yên Nghĩa, Hà Đông cho biết khá bất ngờ với đà tăng của giá đất trong khu vực trong quãng thời gian 2 năm gần đây. Anh Cương chia sẻ một năm rưỡi trước đây một người quen của anh mua mảnh đất 44 mét vuông chỉ với giá 19,5 triệu đồng/m2 nhưng mới đây đã bán xong với giá 32 triệu đồng/mét vuông. Trong khi đó, người chủ mới mua mảnh đất đó hiện đang chào giá lên tới 37 triệu đồng mỗi mét vuông. Vào những ngày cuối tuần vẫn có hàng chục lượt khách tới xem mảnh đất này. <br>
<img src="../img/tintuc/tintuc12.jpg" alt=""><br>
Tại phía Nam, chị Trinh một môi giới BĐS tại TP HCM cho biết kể từ khi các địa phương dỡ bỏ các biện pháp giãn cách xã hội thì nhu cầu tìm mua đất của người dân đã tăng mạnh. Môi giới này cho biết khu vực Bình Châu (Xuyên Mộc – Bà Rịa Vũng Tàu) hay Lâm Đồng đang nhận được sự quan tâm của nhiều nhà đầu tư từ TPHCM và cả Hà Nội. <br>

Chị Trinh chia sẻ, nhiều khách hàng của chị thậm chí đồng ý chốt cọc ngay khi được xem video giới thiệu về khu đất mà chưa cần xem thực tế. Trong ngày thứ bảy vừa qua, chị đã dẫn 3 khách của mình đi công chứng chuyển nhượng và cũng đi xem đất ở nhiều nơi khác. <br>
Theo chị Trinh, khác với trước đây, thời gian này khách mua đất chốt cọc nhanh đến bất ngờ. Theo đó, có những lô đất chị vừa giới thiệu cho những nhóm khách của mình trong buổi sáng thì đến 23 giờ đêm chủ đất báo lại đã nhận đặt cọc của người mua khác. Nhu cầu nhờ giới thiệu của khách tăng vọt nên bản thân chị cũng không có thời gian nghỉ ngơi, chăm sóc cho gia đình. Nhiều hôm phải lên đường dẫn khách xem đất từ sớm trong khi phải đến đêm và rạng sáng mới về đến nhà để chợp mắt lấy sức cho ngày làm việc hôm sau. <br>
Theo TS Nguyễn Văn Đính, Phó chủ tịch Hiệp hội Bất động sản Việt Nam, Chủ tịch Hội Môi giới BĐS Việt Nam nhận định trong hai năm qua, dù chịu ảnh hưởng nặng nề từ Covid-19 nhưng thị trường bất động sản vẫn có nhiều điểm sáng. Các giao dịch vẫn diễn ra một cách tích cực với hàng trăm nghìn sản phẩm được chào bán và hàng vạn giao dịch thành công. Ông cũng cho biết trong thời gian tới nhiều phân khúc thị trường BĐS sẽ tiếp tục hồi phục và sôi động. <br>

', CAST(N'2022-01-20' AS Date), N'tintuc4.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (10, N'Khánh Hòa: Khu Kinh tế Vân Phong thu hút hàng loạt tập đoàn lớn quan tâm và đề xuất đầu tư các dự án nghìn tỷ', N'Khánh Hòa đang trong quá trình hoàn thiện quy hoạch Khu kinh tế Vân Phong nhưng đã có hàng loạt tập đoàn lớn quan tâm và đề xuất đầu tư các dự án nghìn tỷ tại khu vực này. <br>
Hơn 4,1 tỷ USD đã được đầu tư vào KKT Vân Phong<br>
Ngày 11/1, ông Nguyễn Trọng Hoàng – Trưởng Ban quản lý Khu kinh tế Vân Phong (KKT Vân Phong) cho biết, sau hơn 15 năm thành lập và phát triển, KKT Vân Phong đã có những đóng góp quan trọng cho sự phát triển kinh tế xã hội của tỉnh Khánh Hoà. <br>
Cụ thể, giai đoạn 2016 – 2020, KKT Vân Phong đã thu hút mới 42 dự án (trong đó có 9 dự án FDI), điều chỉnh tăng vốn cho 14 dự án (trong đó có 4 dự án FDI) với tổng vốn đăng ký 66.045 tỷ đồng, vượt mục tiêu Nghị quyết của Tỉnh ủy về phát triển KKT Vân Phong giai đoạn 2016-2020 (50.000 tỷ đồng). <br>
Tính đến cuối năm 2021, KKT Vân Phong đã thu hút được 155 dự án đầu tư (125 dự án trong nước và 30 dự án có vốn ĐTNN) với tổng vốn đăng ký khoảng 4,1 tỷ USD, vốn thực hiện là 2,15 tỷ USD đạt 52% vốn đăng ký. Trong đó, có 97 dự án đã đi vào hoạt động; 58 dự án đã được cấp giấy chứng nhận đầu tư đang triển khai đầu tư xây dựng; giải quyết việc làm cho khoảng trên 6.000 lao động. <br>
Tuy nhiên, ông Nguyễn Trọng Hoàng cho biết, bên cạnh những kết quả đạt được, quá trình xây dựng và phát triển KKT Vân Phong thời gian qua vẫn gặp nhiều khó khăn chưa phát huy được hết tiềm năng, lợi thế của khu vực, chưa đáp ứng kỳ vọng trở thành "đầu tàu" thu hút đầu tư và là động lực phát triển kinh tế cho các vùng lân cận và cả nước như mục tiêu đã được Thủ tướng Chính phủ xác định. <br>
<img src="../img/tintuc/tintuc5.jpg" alt=""><br><br>
“Để khắc phục những bất cập này, đồng thời đổi mới mô hình phát triển phù hợp với KKT, tháng 6/2020 Thủ tướng Chính phủ đã đồng ý chủ trương cho phép lập đồ án điều chỉnh Quy hoạch chung xây dựng KKT Vân Phong đến năm 2040, tầm nhìn đến năm 2050. Mục tiêu quy hoạch lần này được xác định, xây dựng KKT Vân Phong phù hợp với chiến lược phát triển quốc gia nói chung và chiến lược phát triển biển Việt Nam nói riêng; trở thành trung tâm kinh tế năng động phát triển ngành nghề mới, trình độ cao trọng tâm là lĩnh vực cảng biển, logistic, Khu công nghiệp, khu chức năng công nghiệp, lọc hóa dầu, điện khí, bất động sản và du lịch nghỉ dưỡng, công nghiệp giải trí hiện đại có casino, công nghiệp công nghệ cao; trung tâm khởi nghiệp, sáng tạo và giao thương quốc tế của khu vực; phát triển thân thiện môi trường, khai thác hiệu quả tiềm năng khác biệt, cơ hội nổi trội, thu hút mạnh các nguồn lực đầu tư và quy tụ nguồn lực sáng tạo, phương thức quản lý mới, tiên tiến; bảo đảm quốc phòng - an ninh góp phần giữ vững độc lập chủ quyền và toàn vẹn lãnh thổ” – ông Hoàng cho biết. <br>
Hướng đến mốc 150.000 tỷ<br>
Cũng theo ông Hoàng, Khánh Hòa xác định một trong những nhiệm vụ trọng tâm, đột phá nhằm tạo động lực mới cho địa phương những năm tới là tập trung phát triển khu vực Vân Phong. <br>
Theo đó, thời gian qua, lãnh đạo tỉnh Khánh Hòa đã tiếp đón, làm việc với rất nhiều nhà đầu tư đến nghiên cứu cơ hội đầu tư vào KKT Vân Phong trong lĩnh vực cảng biển, logistic, Khu công nghiệp, khu chức năng công nghiệp, lọc hóa dầu, điện khí, bất động sản và du lịch nghỉ dưỡng. <br>
<img src="../img/tintuc/tintuc6.jpg" alt=""><br><br>
Trong đó có nhiều nhà đầu tư lớn như: Tập đoàn IPPG; Tập đoàn Sungroup; Công ty CP Tập đoàn Sovico; Liên danh Công ty Nova Land và Công ty Đất Tâm, Tập đoàn FPT, Tập đoàn Hòa Phát, Công ty CP ĐT XD Trung Nam, Công ty CP  Tập đoàn  Flamingo, Công ty CP Stavian GFS Land, Công ty CP PT BĐS Phát Đạt, Công ty CP Dầu khí Phương Đông... Cùng với các tập đoàn trong nước là các tập đoàn quốc tế như Tập đoàn Sumitomo (Nhật Bản), Công ty J.Power (Nhật Bản), Công ty Millennium Energy (Hoa Kỳ), Tập đoàn Quantum (Hoa Kỳ)... đặt vấn đề đầu tư và đề xuất đóng góp ý tưởng để hoàn thiện quy hoạch KKT Vân Phong cho phù hợp với nhu cầu phát triển của xu thế và định hướng phát triển. <br>
“Dự kiến sau khi điều chỉnh quy hoạch KKT Vân Phong được cấp có thẩm quyền phê duyệt, KKT Vân Phong hứa hẹn sẽ thu hút vốn đầu tư nhiều tỷ USD từ các Nhà đầu tư lớn trong và ngoài nước” – ông Hoàng cho biết. <br>
Trưởng Ban quản lý KKT Vân Phong cho biết thêm, hiện có nhiều dự án hạ tầng đi qua KKT Vân Phong được đầu tư trong giai đoạn 2021-2025  tại khu vực này như đường bộ cao tốc Khánh Hòa-Buôn Mê Thuột (điểm đầu tuyến là ngã ba QL1A-QL26B thuộc KKT Vân Phong), đường bộ cao tốc Vân Phong - Nha Trang, nâng cấp mở rộng QL 26B, đường sắt cao tốc Nha Trang-Hồ Chí Minh, nâng cấp mở rộng quy mô Cảng tổng hợp Bắc Vân Phong và Nam Vân Phong. <br>


', CAST(N'2022-03-13' AS Date), N'tintuc1.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (11, N'Quý 3/2021 gần 2 tỷ USD vốn ngoại đổ vào thị trường bất động sản', N'<br>Theo báo cáo, tính đến 20/9/2021, tổng vốn đăng ký cấp mới, điều chỉnh và góp vốn mua cổ phần, mua phần vốn góp của nhà đầu tư nước ngoài đạt 22,15 tỷ USD, tăng 4,4% so với cùng kỳ năm 2020; trong đó, tổng vốn đăng ký lũy kế vào lĩnh vực bất động sản từ đầu năm đến nay đạt 1,78 tỷ USD. <br>
 
 
Số liệu trên được Bộ Xây dựng đưa ra tại Báo cáo Thị trường BĐS quý 3/2021.
Bất chấp tình hình dịch bệnh do Covid – 19 diễn ra phức tạp, tổng vốn đăng ký cấp mới, điều chỉnh và góp vốn mua cổ phần của nhà đầu tư nước ngoài vào ngành kinh doanh bất động sản tăng dần từ cuối tháng 3 đến tháng 9 năm 2021 từ 0,6 tỷ USD đến 1,78 tỷ USD. Cùng với đó, vốn đăng ký lũy kế vào lĩnh vực bất động sản cũng có xu thế tăng dần theo quý. <br>
Như vậy, có thể thấy, Việt Nam vẫn đang được đánh giá có vị thế tốt để thu hút FDI vào ngành kinh doanh bất động sản. <br>
Liên quan đến vấn đề này, báo cáo của Savills mới phát hành gần đây cho thấy, trong quý 3 vừa qua, bất chấp tình hình dịch bệnh diễn ra phức tạp, khiến nhiều tỉnh, thành phố phải thực hiện cách ly xã hội nhưng trong quý vẫn diễn ra một số giao dịch mua bán & sáp nhập (M&A) lớn. <br>
Điển hình như, Công ty Aseana Properties Ltd. đã bán cổ phần tại Bệnh viện Quốc tế City cho một đối tác liên doanh với tổng giá trị khoảng 95 triệu USD.
Tập đoàn Ascott Ltd. (Capitaland) mua lại tổ hợp 364 căn hộ Somerset Metropolitan West Hanoi với giá khoảng 93 triệu đô la Mỹ. <br>
<img src="../img/tintuc/tintuc14.jpg" alt=""><br><br>
Hay Nishi Nippon Railroad đã mua lại phần vốn góp của Công ty cổ phần đầu tư Nam Long tại Công ty TNHH Một thành viên Paragon Đại Phước. Nishi Nippon Railroad đã từng hợp tác cùng Nam Long Group trong việc phát triển Khu đô thị Nam Long Đại Phước với quy mô 45 ha. <br>
Theo thống kê của Savills Việt Nam, bất chấp những tác động của đại dịch, thị trường bất động sản công nghiệp tại Việt Nam vẫn chứng kiến nhiều dấu hiệu tích cực như các thương vụ mua bán sáp nhập doanh nghiệp cũng như sự gia tăng các diện tích đất công nghiệp mới. Những nhà máy sản xuất có quy mô lớn nhất trong nửa đầu năm 2021 là những dự án được đầu tư bởi các nhà đầu tư Hong Kong và Singapore tại hai tỉnh là Quảng Ninh và Bắc Giang. <br>
Ông John Campbell, Quản lý bộ phận bất động sản công nghiệp Savills Việt Nam cho biết, tính theo khu vực, phía Bắc nhận được phần lớn các khoản đầu tư mới đăng ký vào lĩnh vực sản xuất lên đến 1,97 tỷ USD, chiếm 64% thị phần. Khu vực phía Nam đứng thứ hai với 728 triệu USD, chiếm 23% và sau cùng là khu vực miền Trung với 395 triệu USD, chiếm khoảng 13%.<br>
Xét theo các tỉnh thì Bắc Giang có số vốn đăng ký mới cao nhất với 589 triệu USD, theo sau là Quảng Ninh với 569 triệu USD và Bắc Ninh với 222 triệu USD. Đại diện khu vực phía Nam là Bình Dương đứng ở vị trí thứ 4 với 208 triệu USD. <br>

', CAST(N'2021-11-04' AS Date), N'tintuc13.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (12, N'Giới thiệu chung về Khu kinh tế Vân Phong Vạn Ninh Khánh Hòa', N'<br>
- Khu kinh tế Vân Phong được Thủ tướng Chính phủ thành lập theo Quyết định số 92/2006/QĐ-TTg ngày 25/4/2006 với tổng diện tích khoảng 150.000 ha (70.000 ha mặt đất và 80.000 ha mặt nước), nằm trên địa bàn huyện Vạn Ninh và thị xã Ninh Hòa, tỉnh Khánh Hòa, thuộc khu vực duyên hải Nam Trung bộ của Việt Nam. <br>

- Ngày 17/3/2014, Thủ tướng Chính phủ ban hành Quyết định 380/QĐ-TTg phê duyệt điều chỉnh quy hoạch chung xây dựng Khu kinh tế Vân Phong, tỉnh Khánh Hòa đến năm 2030 với tính chất: <br>

Là Khu kinh tế tổng hợp đa ngành, đa lĩnh vực. Trong đó có cảng trung chuyển container quốc tế, công nghiệp lọc hóa dầu, trung chuyển dầu mỏ và sản phẩm dầu mỏ giữ vai trò chủ đạo, kết hợp phát triển kinh tế du lịch, dịch vụ, công nghiệp, nuôi trồng hải sản và các ngành kinh tế khác. <br>
•	
Là trung tâm kinh tế của tỉnh Khánh Hòa có vai trò đầu tàu thu hút đầu tư và là động lực phát triển kinh tế cho các vùng lân cận và cho cả nước. <br>
•	
- Khu kinh tế Vân Phong tập trung chủ yếu tại hai khu vực: Nam Vân Phong (thuộc khu vực thị xã Ninh Hòa) và Bắc Vân Phong (thuộc khu vực huyện Vạn Ninh). <br>

(Bản đồ xác định vị trí Khu kinh tế Vân Phong trên bản đồ Việt Nam) <br>

Vị trí: <br>

KKT Vân Phong nằm ở phía Bắc tỉnh Khánh Hòa: <br>

- Cách Tp HCM: khoảng 500 km. <br>

- Cách Hà Nội : khoảng 1.200 km. <br>

- Cách Tp. Nha Trang (trung tâm tỉnh Khánh Hòa) về phía Bắc: khoảng 30 km. <br>

- Cách sân bay quốc tế Cam Ranh khoảng 65 km về phía Nam Khu kinh tế. <br>

- Cách sân bay Tuy Hòa – tỉnh Phú Yên khoảng 40 km về phía Bắc Khu kinh tế. <br>

Hạ tầng: <br>

- Đường bộ: Quốc lộ 1A, Quốc lộ 26B ,  Tỉnh lộ 1A, Tỉnh lộ 1B, đường từ Quốc lộ 1A đi Ninh Hải kết nối các khu chức năng khu vực Nam Vân Phong, đường trục chính từ Quốc lộ 1A (Đèo Cổ Mã) đến Cảng trung chuyển quốc tế Vân Phong. <br>

- Đường biển: Cảng tổng hợp Nam Vân Phong (30.000 DWT) liền kề KCN Ninh Thủy; Bến Cảng tổng hợp Bắc Vân Phong (50.000 DWT) tại Đầm Môn; Cảng Hòn Khói (3.000 DWT) và các cảng chuyên dùng khác... <br>

- Đường hàng không:  cách sân bay quốc tế Cam Ranh khoảng 65 km về phía Nam Khu kinh tế, cách sân bay Tuy Hòa – tỉnh Phú Yên khoảng 40 km về phía Bắc Khu kinh tế. <br>

- Đường sắt: đường sắt Bắc Nam chạy dọc Khu kinh tế. <br>

- Cấp nước: hệ thống cấp nước từ hồ Đá Bàn (75 triệu m3); Hồ Tiên Du (9 triệu m3); Hồ Đồng Điền (100 triệu m3); hồ Đồng Điền (dung tích 100 triệu m3); Hồ Hoa Sơn (19 triệu m3). <br>

- Cấp điện: Điện lưới quốc gia qua trạm 220KV Tuy Hòa - Nha Trang; Trạm 110KV tại KCN Ninh Thủy; điện lưới hạ thế 35KV được lắp đặt đến khu vực Cảng trung chuyển quốc tế. <br>

- Hệ thống thông tin liên lạc, nguồn nhân lực, các khu tái định cư cơ bản sẵn sàng đáp ứng nhu cầu nhà đầu tư. <br>

Lợi thế: <br>

- Đường quốc lộ 1A, đường sắt Bắc - Nam chạy dọc Khu kinh tế. <br>

- Vịnh Vân Phong có độ sâu trung bình 20-27m, kín gió, nằm gần đường hàng hải quốc tế, có điều kiện thuận lợi để xây dựng cảng trung chuyển quốc tế và phát triển kinh tế biển. <br>

- Có vị trí địa lý là cửa mở hướng ra Biển Đông đối với vùng Tây Nguyên để phát triển hành lang kinh tế Đông Tây. Khoảng cách ra Biển Đông là gần nhất đối với vùng Tây Nguyên (130km). <br>

- Một số dự án công nghiệp có quy mô lớn đang hoạt động có hiệu quả  ở Khu vực Nam Vân Phong (Nhà máy đóng tàu Hyundai- Vinashin, Tổng kho xăng dầu ngoại quan Vân Phong), đang triển khai thủ tục đầu tư (Nhà máy nhiệt điện BOT Vân Phong 1, Tổ hợp lọc hóa dầu Nam. <br>

- Phong cảnh đẹp, hệ sinh thái đa dạng, khí hậu ôn hòa thuận lợi để phát triển du lịch.
<br>

', CAST(N'2022-03-17' AS Date), N'tintuc15.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (13, N'Trung tâm năng lượng Quốc gia Nam Vân Phong sẽ phát triển điện lực quốc gia lên tầm cao mới', N'<br>
VOV.VN - UBND tỉnh Khánh Hòa đã đề nghị các cơ quan xem xét, bổ sung dự án Trung tâm Điện khí và Kho cảng đầu mối khí hỏa lỏng thiên nhiên tại Vân Phong vào Quy hoạch phát triển điện lực quốc gia. <br>

Với những lợi thế về điều kiện tự nhiên, khu vực Nam Vân Phong, tỉnh Khánh Hòa đang có cơ hội trở thành trung tâm năng lượng, cung cấp khí hóa lỏng cho cả nước. UBND tỉnh Khánh Hòa vừa kiến nghị Thủ tướng Chính phủ, ủng hộ chủ trương đầu tư dự án Trung tâm Điện khí hóa lỏng và Kho cảng đầu mối khí thiên nhiên hóa lỏng (LNG) tại khu vực Nam Vân Phong, thị xã Ninh Hòa. <br>

Từ đầu năm đến nay, nhiều DN trong và ngoài nước đã đến khu vực Nam Vân Phong, tỉnh Khánh Hòa tìm hiểu cơ hội đầu tư dự án điện khí, kho chứa khí hóa lỏng. Tập đoàn Năng lượng Millennium (Mỹ), JP Power (Nhật Bản) cũng vừa tìm đến vùng đất này. Tập đoàn Millennium đang lập hồ sơ đầu tư dự án Trung tâm Điện khí Vân Phong và Kho cảng đầu mối khí hóa lỏng, trên diện tích hơn 360 ha tại xã Ninh Phước, thị xã Ninh Hòa với tổng số vốn đầu tư hơn 27 tỷ USD. <br>

<img src="../img/tintuc/tintuc17.jpg" alt=""><br><br>


Theo đó, xây dựng Trung tâm Điện khí LNG Vân Phong có công suất 4.800 MW với 4 tổ máy, được chia làm 2 giai đoạn, giai đoạn 1 dự kiến vận hành từ năm 2027 - 2030. Dự án Kho cảng đầu mối dự kiến vận hành sau năm 2025, có tổng công suất 17 triệu m3 khí thiên nhiên hóa lỏng, cung cấp cho các nhà máy điện khí trong nước và hướng tới xuất khẩu trong khu vực Đông Nam Á. <br>

 
Tại khu vực Vân Phong có những dự án năng lượng lớn đã và đang xây dựng như Nhà máy Nhiệt điện BOT Vân Phong 1, Kho xăng dầu ngoại quan Vân Phong. Cùng với các dự án này, những dự án điện khí vừa được đề xuất bổ sung tạo cơ hội cho Nam Vân Phong trở thành trung tâm năng lượng lớn của cả nước. <br>

 
Ông Nguyễn Tấn Tuân, Chủ tịch UBND tỉnh Khánh Hòa cho biết, những dự án lớn sẽ là động lực quan trọng, thúc đẩy nền kinh tế tỉnh Khánh Hòa phát triển nhanh. “Toàn bộ khu vực ở Ninh Phước, Ninh Tịnh tỉnh muốn được hình thành Trung tâm năng lượng quốc gia. Tỉnh đã báo cáo với Chính phủ, Bộ Công Thương nghiên cứu tạo điều kiện để Khánh Hòa có thể đưa vào quy hoạch Điện VIII. Đây là những dự án “mỏ neo” để kêu gọi những nhà đầu tư chuyển từ các quốc gia khác đến làm ăn với Việt Nam”, ông Tuân thông tin. <br>

UBND tỉnh Khánh Hòa đã đề nghị các cơ quan Trung ương xem xét, bổ sung dự án Trung tâm Điện khí và Kho cảng đầu mối khí hỏa lỏng thiên nhiên tại Vân Phong, vào Quy hoạch phát triển điện lực quốc gia giai đoạn 2021- 2030 (quy hoạch Điện VIII) và Quy hoạch tổng thể về năng lượng quốc gia thời kỳ 2021- 2030, tầm nhìn đến 2050. Đến nay, tổng các dự án điện khí tại Vân Phong dự kiến đăng ký lên đến 20.000 MW. <br>

Tuy nhiên, việc phát triển này đang đối mặt với các khó khăn như giá thành, truyền tải. Mặc dù tiềm năng làm điện khí của Khánh Hòa rất lớn nhưng tại đây có phụ tải thấp. Trong khi đó, để truyền tải điện vào khu vực phía Nam lại rất tốn kém. Thứ trưởng Bộ Công thương Trần Quốc Khánh cho biết, trước mắt, Bộ sẽ bố trí quy hoạch ở quy mô 6.000 MW nhằm làm nền tảng để phát triển kho chứa khí. <br>

“Chủ trương đầu tư điện khí đúng với Nghị quyết 55, nhưng đây là nguồn điện có chi phí đầu tư khá lớn, giá thành sản xuất khá cao nên cần phải xem xét một cách tổng thể trên rất nhiều khía cạnh. Trước hết, tối ưu hóa về chi phí chung của cả hệ thống điện, tỷ trọng điện khí lên khoảng 40%- 50% nên chi phí chung sẽ rất cao, khiến giá bán điện không thể tăng cao theo, do đó cần làm sao cho hệ thống nguồn điện tối ưu về mặt chi phí”, Thứ trưởng Trần Quốc Khánh nêu rõ. <br>

<img src="../img/tintuc/tintuc18.jpg" alt=""><br>


Mới đây, khi đến kiểm tra thực tế tại khu vực Vân Phong, Ủy viên Bộ Chính trị, Trưởng ban Kinh tế Trung ương Trần Tuấn Anh cho rằng, khu vực Nam Vân Phong có rất nhiều lợi thế để phát triển kho cảng chứa LNG và làm điện khí. Với vị trí nằm gần đường hàng hải quốc tế, nếu đặt kho cảng khí hóa lỏng tại Nam Vân Phong sẽ thuận lợi cho việc cung cấp khí cho 2 đầu đất nước, thậm chí là Đông Nam Á. Các tàu chở khí đều là tàu có tải trọng lớn, khó có khu vực nào phù hợp hơn khu vực Vân Phong làm cầu cảng để tiếp nhận các loại tàu này.
Ông Trần Tuấn Anh gợi ý lãnh đạo tỉnh Khánh Hoà, cần sớm đề xuất với Bộ Công Thương bổ sung vào các quy hoạch về phát triển điện lực quốc gia và quy hoạch tổng thể về năng lượng quốc gia. <br>

“6.000 MW có lẽ là con số lớn nhất trong số các trung tâm năng lượng đã được phê duyệt. Nhưng nếu so với cảng khí có quy mô lớn như Millennium tính toán, rõ ràng chưa hết tiềm năng. Cần phải tính đến vai trò của các nhà đầu tư và vị thế giao thông cảng lớn ở trong khu vực Tây Á- Thái Bình Dương nên không chỉ nhằm vào hạ nguồn của 1- 2 nhà máy điện, mà là tầm vóc của trung tâm kết nối khu vực”, ông Trần Tuấn Anh chỉ rõ./. <br>

Nguồn : Thái Bình/VOV-Miền Trung (VOV.Vn)
<br>
', CAST(N'2022-03-13' AS Date), N'tintuc16.png')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (14, N'Vốn đầu tư dự kiến từ 23.200 – 25.700 tỉ đồng. Cao tốc Khánh Hòa – Buôn Ma Thuột sẽ được làm luôn một lần', N'<br>
Dự án cao tốc Khánh Hòa – Buôn Ma Thuột dài khoảng 118km, tổng vốn đầu tư dự kiến từ 23.200 – 25.700 tỉ đồng sẽ được đầu tư hoàn thiện trong giai đoạn 2021 – 2025, không phân kỳ đầu tư. <br>

 <img src="../img/tintuc/tintuc20.jpg" alt=""><br>
<br>

Hình minh hoạ<br>

UBND tỉnh Khánh Hòa đã thống nhất với Bộ Giao thông vận tải (GTVT) về phương án đầu tư cao tốc Khánh Hòa - Buôn Ma Thuột. Dự án sẽ được đầu tư xây dựng giai đoạn 2021 - 2025, làm hoàn thiện một lần, không phân kỳ đầu tư; qua đó tạo động lực để phát triển khu vực kinh tế Nam Vân Phong và kết nối với các tỉnh Tây Nguyên. <br>

Dự án cao tốc Khánh Hòa - Buôn Ma Thuột có chiều dài khoảng 118km, điểm đầu từ nút giao giữa Quốc lộ 26B và Quốc lộ 1 (thị xã Ninh Hòa); điểm cuối giao cắt tại khoảng Km12 450 đường Hồ Chí Minh tránh phía đông TP. Buôn Ma Thuột (tỉnh Đắk Lắk) <br>

Quy mô dự án 4 làn xe, đầu tư trong giai đoạn 2021 - 2025, vận tốc thiết kế 80 - 100km/giờ. Quy mô mặt cắt ngang: Giai đoạn hoàn thiện đường cao tốc 4 làn xe là 24,75m. Tổng nhu cầu sử dụng đất và tài nguyên theo quy mô hoàn chỉnh hơn 1.000ha. <br>

Tổng mức đầu tư dự kiến theo các phương án từ hơn 23.200 tỉ đồng đến 25.700 tỉ đồng. So với đề xuất trước đó, tổng chiều dài tuyến đường dài hơn 8km, thay vì kết nối vào cao tốc Bắc - Nam đoạn Nha Trang - Cam Lâm sẽ kết nối đến nút giao Quốc lộ 26B; quy mô giảm từ 6 làn xe (đoạn đầu tư hoàn chỉnh) xuống còn 4 làn xe.
<br>
', CAST(N'2022-03-12' AS Date), N'tintuc19.jpg')
INSERT [dbo].[TinTuc1] ([ID], [Tieude], [Noidung], [ngay], [imgAvar]) VALUES (15, N'Thị trường bất động sản tại Việt Nam sẽ phục hồi sau đại dịch ?', N'<br>
Đợt bùng phát lần thứ 4 của đại dịch Covid-19 với diễn biến phức tạp khiến nền kinh tế nói chung và bất động sản nói riêng chịu tác động và thiệt hại nặng nề. Cơ chế chính sách được coi là một trong những "đòn bẩy" để thị trường bất động sản phục hồi sau đại dịch. Vậy những chính sách nào đã được ban hành để thúc đẩy thị trường? <br>

Trước những ảnh hưởng nặng nề của đại dịch Covid-19 đến sự phát triển của nền kinh tế nói chung và các doanh nghiệp nói riêng, Bộ Xây dựng cho biết, trong quý 3/2021, Nhà nước đã có những chỉ đạo quyết liệt thông qua nhiều nghị quyết, quyết định như Quyết định 27/2021/QĐ-TTg ngày 25/9/2021 của Thủ tướng Chính phủ về việc giảm tiền thuê đất của năm 2021 đối với các đối tượng bị ảnh hưởng bởi dịch Covid-19. <br>

<img src="../img/tintuc/tintuc22.jpg" alt=""><br>
<br>

Bên cạnh đó, Bộ Xây dựng cũng đã ban hành nhiều văn bản quy phạm pháp luật mới trong lĩnh vực xây dựng, bất động sản như: <br>

Ngày 16/8/2021, Bộ Xây dựng đã ban hành Thông tư số 09/2021/TT-BXD về việc hướng dẫn thực hiện một số nội dung của Nghị định số 100/2015/NĐ-CP ngày 20 tháng 10 năm 2015 của Chính phủ về phát triển và quản lý nhà ở xã hội và Nghị định số 49/2021/NĐ-CP ngày 01 tháng 4 năm 2021 của Chính phủ sửa đổi, bổ sung một số điều của Nghị định số 100/2015/NĐ-CP ngày 20 tháng 10 năm 2015 của Chính phủ về phát triển và quản lý nhà ở xã hội. Theo đó, Thông tư này hướng dẫn thực hiện một số nội dung về: điều kiện, tiêu chí lựa chọn chủ đầu tư dự án đầu tư xây dựng nhà ở xã hội; phương pháp xác định giá bán, giá cho thuê, giá cho thuê mua nhà ở xã hội; mẫu giấy tờ chứng minh đối tượng, điều kiện để được hưởng chính sách hỗ trợ về nhà ở xã hội; mẫu hợp đồng mua bán, thuê, thuê mua nhà ở xã hội. <br>

Ngày 26/8/2021, Bộ Xây dựng ban hành văn bản hợp nhất số 04/VBHN-BXD về việc hợp nhất Thông tư hướng dẫn thực hiện một số nội dung của Luật Nhà ở và Nghị định số 99/2015/NĐ-CP ngày 20 tháng 10 năm 2015 của Chính phủ quy định chi tiết và hướng dẫn thi hành một số điều của Luật Nhà ở. Thông tư này hướng dẫn thực hiện một số nội dung về phát triển nhà ở, quản lý, sử dụng nhà ở, giao dịch về nhà ở, sở hữu nhà ở, quản lý nhà nước về nhà ở quy định tại Luật Nhà ở 2014 và Nghị định số 99/2015/NĐ-CP ngày 20 tháng 10 năm 2015 của Chính phủ quy định chi tiết và hướng dẫn thi hành một số điều của Luật Nhà ở. <br>

Ngày 31/8/2021, Bộ Xây dựng ban hành Thông tư số 11/2021/TT-BXD hướng dẫn một số nội dung xác định và quản lý chi phí đầu tư xây dựng. Theo đó, Thông tư này hướng dẫn một số nội dung xác định và quản lý chi phí đầu tư xây dựng gồm: sơ bộ tổng mức đầu tư xây dựng, tổng mức đầu tư xây dựng, dự toán xây dựng công trình, dự toán gói thầu, giá xây dựng, giá xây dựng công trình, chỉ số giá xây dựng, suất vốn đầu tư xây dựng, quy đổi vốn đầu tư xây dựng, chi phí tư vấn đầu tư xây dựng. <br>

Ngày 07/9/2021, Bộ Xây dựng ban hành văn bản hợp nhất số 05/VBHN-BXD về việc hợp nhất Thông tư ban hành Quy chế quản lý, sử dụng nhà chung cư. Theo đó, Quy chế này áp dụng đối với nhà chung cư có mục đích để ở và nhà chung cư có mục đích sử dụng hỗn hợp dùng để ở và sử dụng vào các mục đích khác (bao gồm căn hộ dùng để ở, cơ sở lưu trú du lịch, công trình dịch vụ, thương mại, văn phòng và các công trình khác) theo quy định tại Luật Nhà ở 2014, bao gồm: Nhà chung cư thương mại; Nhà chung cư xã hội; Nhà chung cư phục vụ tái định cư; Nhà chung cư cũ thuộc sở hữu nhà nước đã được cải tạo, xây dựng lại; Nhà chung cư sử dụng làm nhà ở công vụ. <br>

Những thông tin tích cực trên như một sự chia sẻ khó khăn với doanh nghiệp và tháo gỡ những vướng mắc của thị trường. Do đó, thị trường bất động sản đang chịu tác động nặng nề của đại dịch Covid-19 được kì vọng sẽ đón những luồng gió mới trong thời gian tới.
<br>
', CAST(N'2022-03-21' AS Date), N'tintuc21.jpg')
SET IDENTITY_INSERT [dbo].[TinTuc1] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTinBDS] ON 

INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (1, N'Cần bán nhanh căn hộ tầng 7, chung cư HUD khu đô thị Phước Long', N'Bao gồm: (1 phòng khách, 1 bếp, 2 phòng ngủ, 2wc)<br>
Diện tích; 60m<br>
Hướng Đông Bắc<br>
Đầy đủ nội thất xịn sò<br>
Giá 1tỷ100tr<br>
', N'#canho', N'#nhatrang', N'1tỷ100tr', 1100000000, CAST(N'2022-03-01' AS Date), N'bds1.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (4, N'CHỦ KẸT BÁN VỐN CĂN HUD NGUYỄN THIỆN THUẬT VIEW thành phố Nha Trang siêu đẹp', N'- Dt: 60m2 hướng Nam, tầng 24<br>
- 2pn, 2 toitet, bếp, …<br>
- Nhà chưa sử dụng, để lại nội thất<br>
- Nằm ngay tttp, cách biển 600m<br>
Giá: 3ty3<br>
', N'#canho', N'#nhatrang', N'3tỷ3', 3300000000, CAST(N'2021-04-02' AS Date), N'bds2.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (6, N'căn hộ PH Võ Thị Sáu Nha Trang tâng 18 Block A. 68 m2, giá chỉ 1 tỷ 3', N'View công viên mát mẻ, hướng đông nam<br>
Diện tích : 68m2<br>
- 2phòng ngủ , 2 phòng vệ sinh, 1 lô gia phơi quần áo và 1 ban công trồng cây<br>
 Căn hộ full nội thất bao gồm : máy nóng lạnh 30 lít , máy rửa chén , ti vi , máy lạnh , máy giặc , may loc nuoc tất cả đều mới.... sàn đã ốp gỗ xịn<br>
Đã thanh toán 95% cho CDT<br>
giá : 1ty3<br>
', N'#canho', N'#nhatrang', N'1tỷ3', 1300000000, CAST(N'2021-12-05' AS Date), N'bds3.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (7, N'CĂN HỘ TẦNG 5 CT2 VCN PHƯỚC HẢI Nha Trang 79 m2. 2 tỷ 3', N'TẦNG 5 CẠNH HỒ BƠI VS CÔNG VIÊN CT2 VCN PHƯỚC HẢI TP NHA TRANG.<br>
DT 79.2m2<br>
Hướng Tây Bắc<br>
Pháp lý Sổ Hồng 2020<br>
thiết kế sàn gỗ với 3PN, 2 WC, PK Bếp. <br>
Vị trí tiềm năng tiện ích xung quanh cao<br>
Cách biển chỉ 4km<br>
giá bán 2ty300tr<br>
', N'#canho', N'#nhatrang', N'2ty3tr', 2300000000, CAST(N'2022-01-05' AS Date), N'bds4.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (8, N'Bán lô đất Võ Dõng, Vĩnh Trung chỉ 9,6tr/m 104,8m2 ( ngang 5,5m ) thổ cư 100%', N'Khu dân cư đông,đường bê tông 4m oto vào tận đất<br>

Cách Võ Nguyên Giáp chỉ 300m, thông ra 23/10<br>

Hướng Tây Bắc<br>

Giá Bán chỉ 1 tỷ (9,6tr/m) <br>
', N'#datnen', N'#nhatrang', N'1tỷ', 1000000000, CAST(N'2022-01-06' AS Date), N'bds5.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (14, N'Đất Vĩnh Phương cách QL1A chỉ 500m * Diện tích : 173m2 ( 70m2 thổ )', N'* Ngang 12.45m nở hậu 14.65m<br>

* Hướng Đông Bắc<br>

* Hẻm rộng 2.5m<br>

* Nằm ngay khu dân cư hiện hữu<br>

* Cách QL1A chỉ 500m<br>

* Gần chợ Vĩnh Phương & các khu công nghiệp<br>
Giá chỉ 720triệu<br>
', N'#datnen', N'#nhatrang', N'720triệu', 720000000, CAST(N'2022-02-19' AS Date), N'bds6.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (15, N'Bán đất tặng nhà cấp 4 xã Diên Thạnh - Diên Khánh - Diện tích : 212 m² ( 120m ONT , còn lại CLN )', N'- Đường bê tông : 3 m<br>
LÔ đất nằm trong khu dân cư .Điện, nước đầy đủ .Cách chợ Cây Me , TL2 = 300m .Cách Ủy ban , trường học , tòa án = 1km<br>
- Giá : 1 tỷ 6<br>
', N'#nhapho', N'#diemkhanh', N'1tỷ6', 1600000000, CAST(N'2022-03-01' AS Date), N'bds7.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (16, N'BÁN BIỆT THỰ VƯỜN PHƯỚC ĐỒNG 100% THỔ CƯ rộng 735m, full thổ', N'Có căn nhà villa xinh xắn gồm 2 phòng ngủ, 2 wc, p.khách, bếp, kho, sân thượng
Vị trí nhà cách Đại Lộ Nguyễn Tất Thành chỉ 200m<br>
Đường oto 6m, có thêm đường QH 20m phía sau đất. <br>
Giá bán 10,5 tỷ (thương lượng) <br>
', N'#bietthu', N'#nhatrang', N'10tỷ5  ', 10500000000, CAST(N'2022-03-02' AS Date), N'bds8.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (17, N'Đất Cam Hải Tây, Cam Lâm DT: 342,6m2 lô góc (đường 4m và 3m), full thổ, ngang dọc 24 x 18m', N'Gần dân cư, oto vivu<br>

Cách Đường vành đai ven đầm 50m, cách đầm 250m<br>

Giá: 3ty1<br>
', N'#datnen', N'#canlam', N'3tỷ1', 3100000000, CAST(N'2022-03-03' AS Date), N'bds9.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (18, N'Phú Ân Nam 3 - Diên An cách 23/10 300m Diện tích: 66,1m2 | ngang 5m | full thổ', N'Đường bê tông rộng 4-5m<br>
Hướng Tây<br>
Ngay khu dân cư đông đúc<br>
Giá:830triệu<br>
', N'#datnen', N'#dienkhanh', N'830triệu', 830000000, CAST(N'2022-02-20' AS Date), N'bds10.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (20, N'Cần bán lô đất Thôn Đông- Sông Cầu- Khánh Vĩnh Diện tích hơn 1,6ha (BHK)', N'Đường bê tông hiện trạng rộng hơn 3m, đất ôm đường tầm 200m<br>
Gần ngay đường TL 2 và trung tâm thị trấn Khánh Vĩnh với nhiều tiện ích<br>
G.i.á chỉ 400triệu/sào (1000m2) <br>
', N'#datnen', N'#khanhvinh', N'400triệu', 400000000, CAST(N'2022-02-26' AS Date), N'bds11.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (22, N'Hot. Dịch kéo dài bán lỗ lô PARA GRUS -KN Paradise Cam Ranh. chỉ 20tr /m2. Rẻ nhất thị trường', N'KN PARADISE - MỘT ĐIỂM ĐẾN KHÁM PHÁ VẠN TIỆN ÍCH, TẬN HƯỞNG TRẢI NGHIỆM THỜI THƯỢNG TRIỆU NGƯỜI MƠ<br>
 Quy mô khổng lồ, Tổng diện tích gần 800ha<br>
•	 Quảng trường trung tâm và công viên Cát Tường độc đáo<br>
•	 Công viên nước và vui chơi giải trí khác biệt<br>
•	 Top 10 bãi biển đẹp nhất hành tinh<br>
•	 Top 10 sân Golf tốt nhất Việt Nam<br>
•	 Hệ thống giáo dục liên cấp, bệnh viện chăm sóc sức khoẻ đẳng cấp chất lượng quốc tế. <br>
 Chi tiết lô : <br>
 Diện tích 120 m2 ( 6m x 20m ) <br>
 Đường rộng 10<br>
Bãi biển dài 4,7 km<br>
Giá bán 2 tỷ 4 ( chỉ 20 tr/ m2) rẻ nhất thị trường<br>
 KN PARADISE - THÀNH PHỐ NGHỈ DƯỠNG QUỐC TẾ - ĐIỂM ĐẾN TOÀN CẦU MỚI<br>
', N'#datnen', N'#camrang', N'2tỷ4 ', 2400000000, CAST(N'2022-02-27' AS Date), N'bds12.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (25, N'Chính chủ gửi bán gấp ruộng lúa Ninh Quang Ninh Hòa gần 9000 m2 Diện tích: 8991 m2', N'Đường đất 5m<br>
Cách đường DT 5 chỉ 2 km<br>
Giá chỉ: 1 tỷ 1<br>
', N'#datnen', N'#ninhhoa', N'1tỷ1', 1100000000, CAST(N'2022-01-28' AS Date), N'bds13.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (27, N'LÔ ĐẤT 6083.7m2 BÊN ĐẢO MẶT BIỂN THÔN ĐẦM MÔN, VẠN THẠNH, HUYỆN VẠN NINH.', N'Dt: 6083.7m2 ( ngang mặt biển 55m )<br>
Hướng Đông Nam, đất cây hàng năm<br>
Hiện đang dùng điện năng lượng vs nc giếng, thích hợp cho quý anh chị đầu làm du lịch tại đây. <br>
 Giá bán 7 Tỷ<br>
', N'#datnen', N'#vanninh', N'7 Tỷ', 7000000000, CAST(N'2022-01-29' AS Date), N'bds14.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (32, N'Bán căn hộ CT6 Vĩnh Điềm Trung Nha Trang', N'Diện tích : 58,7 m2<br>
Hướng : Đông Nam . <br>
Full nội thất ( 2pn , 1 wc, bếp , khách ) <br>
Giá 1tỷ350 . <br><br>
', N'#canho', N'#nhatrang', N'1tỷ350 ', 1350000000, CAST(N'2022-03-17' AS Date), N'bds19.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (33, N'Căn hộ mặt biển Trần Phú The Aston Nha Trang', N'The Aston Nha Trang nằm ngay khu đất vàng rộng 7,9 ha cuối cùng trên trục đường Trần Phú sầm uất được ví như trái tim của thành phố biển nổi tiếng. Là căn hộ có sổ hồng sở hữu lâu dài duy nhất nằm ngay mặt tiền Xóm Cồn, sát bên Condotel Mường Thành, phường Xuân Hương, TP Nha Trang, tỉnh Khánh Hòa.
<br>
 
Quy hoạch với diện tích lớn gồm 3 block chung cư và 4 biệt thự thấp tầng với view sông Cái, cầu Trần Phú và vịnh biển Nha Trang, từ dự án dễ dàng kết nối đến hệ thống giao thông công cộng, hưởng luồng sinh khí dồi dào từ đại dương và sinh khí tài lộc, thịnh vượng từ phố thị tấp nập. Không đơn thuần mang đến những sản phẩm an cư, đầu tư chất lượng, dự án The Aston  ghi điểm tuyệt đối với chuỗi tiện ích nội khu độc đáo, trở thành thiên đường nghỉ dưỡng mang đến những trải nghiệm sống mới, khác biệt như Sky Infinity Pool – Bể bơi vô cực tầm cao, Sky Desk, Sky Bar, phòng hội thảo, Business center…<br>

Nếu bạn đang tìm hiểu thông tin về căn hộ The Aston thì không thể bỏ qua bài viết dưới đây của nhóm chuyên gia chúng tôi. Tất tần tật về tổng quan, vị trí, kết nối, tiện ích, chủ đầu tư, thiết kế…của dự án sẽ được cập nhập chi tiết, đầy đủ nhất. <br>

Tổng Quan The Aston Luxury Residence<br>

•	Tên dự án: The Aston Nha Trang
<br>

•	Vị trí: Mặt tiền đường Xóm Cồn, phường Hương Xuân, TP Nha Trang, tỉnh Khánh Hoà<br>
•	Chủ đầu tư: Công ty Cổ phần Đầu tư VHR<br>
•	Đơn Vị Phân Phối:  DKR<br>
•	Đơn vị thiết kế: Công ty Cổ phần Thiết kế Sản xuất nội thất Hàn Quốc<br>
•	Tổng vốn đầu tư: 2.718 tỷ đồng<br>
•	Loại hình: căn hội chung cư, biệt thự, nhà liền kề<br>
•	Diện tích khu đất: 7,9 ha<br>
•	Mật độ xây dựng: 36,43%<br>
•	Quy mô: 3 khu chung cư, 4 khu nhà liền kề và biệt thự song lập<br>
•	Quy mô dân số: 4.100 người<br>
•	Pháp lý: Sổ hồng – Sở hữu lâu dài<br>
', N'#canho', N'#nhatrang', N'2 tỷ', 2000000000, CAST(N'2022-03-17' AS Date), N'bds20.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (34, N'Shophouse kinh doanh VCN Phước Hải Nha Trang 80 m2', N'Bán lỗ Shophouse kinh doanh CT3 VCN Phước Hải 80m2 giá cực rẻ<br>
Diện tích sàn : 80 m2<br>
Mặt tiền 4m, dài 13m<br>
Nhà bao gồm :1 phòng khách. 1 bếp. 2 phòng ngủ. 2wc<br>
Đường trước nhà 5m, sân đậu ô tô<br>
Hướng Đông Nam mát mẻ quanh năm. <br>
Khu dân cư an ninh. dân trí cao. <br>
Thích hợp để ở và kinh doanh phòng khám bệnh, dạy học, yoga, massage, nail, cắt tóc, vẽ tranh, nhạc, bán hàng online .. <br>
Giá bán nhanh :chỉ với 2 tỷ 8 có ngay nhà ở trung tâm thành phố vừa ở vừa kinh doanh hoặc cho thuê thì quá hời<br>
', N'#canho', N'#nhatrang', N'2tỷ8', 2800000000, CAST(N'2022-03-17' AS Date), N'bds23.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (35, N'BÁN LÔ ĐẤT KHÁNH BÌNH - KHÁNH VĨNH Mặt tiền đường nhựa Tỉnh Lộ 8B hiện trạng 13m. Quy hoạch rộng 42m', N'Khu dân cư, điện nước đầy đủ<br>
Cách Chợ, Trung tâm Khánh Bình chỉ 900m<br>
Sổ Hồng, Pháp lý chuẩn . <br>
Diện tích : 546m (Ngang hơn 10m ) <br>
Giá bán : 680 triệu<br>
', N'#datnen', N'#khanhvinh', N'680 triệu', 680000000, CAST(N'2022-03-17' AS Date), N'bds26.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (36, N'Cần bán nhà mới xây 100 m2 thôn phước tuỵ 1 , diên phước , diên khánh', N'-Nhà 2 phòng ngủ, 1 khách,1 bếp. Có sân để xe rộng<br>
Nằm khu dân cư đông đúc, cách tiện ích xung quanh 500m<br>
Giá 1ty4 bao thuế phí<br>
', N'#nhapho', N'#diemkhanh', N'1 tỷ4', 1400000000, CAST(N'2022-03-17' AS Date), N'bds27.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (37, N'Bán Nhà Mặt Tiền Đường Rọc Chu THIẾT KẾ MẪU HIỆN ĐẠI , Có Sân Vườn Đậu ôTô', N'Vị Trí Trung Tâm , Nằm Gần Hương Lộ 5 Và Đường Đồng Khởi . Gần chợ , trường học & các tiện ích sinh hoạt hằng ngày ,…<br>
Diện Tích Trên Sổ : 77m2 ( Diện Tích Thực Ở Ngoài 140m2) <br>
Nhà Có 2pn, 1p Thờ , PK, Bếp, WC , Phơi Đồ & Sân Vườn Để ôtô, Hồ Cá - Non Bộ Tiểu Cảnh ...Bao Gồm Tủ Bếp & 3 máy lạnh ... <br>
Giá Chỉ 1.5 (có bớt lộc ) <br>
Ngân hàng hổ trợ vay 70%<br>
', N'#nhapho', N'#nhatrang', N'1 tỷ5', 1500000000, CAST(N'2022-03-17' AS Date), N'bds30.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (38, N'Nhà mới ở DIÊN ĐIỀN Diên Khánh Diện tích :80,5 m² Ngang 5m', N'Đường : 4m<br>
Nhà mặt tiền đường Đồng Giữa .Gồm 1 mê đúc , 3 P ngủ , 1P thờ , 1 bếp ,2 wc , mái tôn<br>
Cách chợ , trạm y tế , trường học 300m _400m<br>
Cách QL 1 A khoảng 1,5km<br>
Giá : 1tỷ450<br>
', N'#nhapho', N'#diemkhanh', N'1tỷ450', 1450000000, CAST(N'2022-03-17' AS Date), N'bds32.jpg')
INSERT [dbo].[ThongTinBDS] ([IDbds], [Tenbds], [Thongtinbds], [Loaibds], [Khuvucbds], [Giachu], [Giaso], [Ngay], [ImgAvar]) VALUES (39, N'Bán đất biệt thự vườn ven sông Cái . Vị trí thôn Phú Bình, xã Vĩnh thạnh, TP Nha Trang', N'Dt 1373m2 có 100m2 thổ cư, còn lại là cây lâu năm ( năm 2063)<br>
Hướng Nam , ngang 26m. Hiện trạng đã có ngôi nhà bằng gỗ phong cách Tây, chòi, bàn ghế gỗ, có 4pn 3wc ... <br>
Đường 3m , oto 7 chỗ vào tận đất<br>
Cách cầu vĩnh phương 500m, chợ Ga 1.3km, tttp Nha Trang bán kính 6km<br>
Phù hợp phân khúc nghỉ dưỡng, nhà vườn. Gần phố nhưng cảnh thơ mộng<br>
Giá: 5tr100 /m2 ( TL chính chủ) <br>
', N'#bietthu', N'#nhatrang', N'7 tỷ', 70000000000, CAST(N'2022-03-17' AS Date), N'bds33.jpg')
SET IDENTITY_INSERT [dbo].[ThongTinBDS] OFF
GO
INSERT [dbo].[VaiTro] ([ID], [Vaitro]) VALUES (1, N'/admin')
INSERT [dbo].[VaiTro] ([ID], [Vaitro]) VALUES (2, N'/nguoidung')
GO
SET IDENTITY_INSERT [dbo].[YeuCau] ON 

INSERT [dbo].[YeuCau] ([IDyeucau], [Tennguoigui], [Sdt], [Noidung], [Ngaygui], [UserID]) VALUES (1, N'trai', 1234567890, N'mua hết', CAST(N'2022-03-14' AS Date), 9)
INSERT [dbo].[YeuCau] ([IDyeucau], [Tennguoigui], [Sdt], [Noidung], [Ngaygui], [UserID]) VALUES (2, N'hh', 123, N'noidunggggg', CAST(N'2022-03-14' AS Date), 9)
INSERT [dbo].[YeuCau] ([IDyeucau], [Tennguoigui], [Sdt], [Noidung], [Ngaygui], [UserID]) VALUES (4, N'trai họ', 12345678780, N'mua hết luôn', CAST(N'2022-03-14' AS Date), 9)
SET IDENTITY_INSERT [dbo].[YeuCau] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_VaiTro] FOREIGN KEY([Role])
REFERENCES [dbo].[VaiTro] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_VaiTro]
GO
ALTER TABLE [dbo].[ImgBDS]  WITH CHECK ADD  CONSTRAINT [FK_ImgBDS_ThongTinBDS] FOREIGN KEY([IDbds])
REFERENCES [dbo].[ThongTinBDS] ([IDbds])
GO
ALTER TABLE [dbo].[ImgBDS] CHECK CONSTRAINT [FK_ImgBDS_ThongTinBDS]
GO
ALTER TABLE [dbo].[ImgBDS2]  WITH CHECK ADD  CONSTRAINT [FK_ImgBDS2_ThongTinBDS] FOREIGN KEY([IDbds])
REFERENCES [dbo].[ThongTinBDS] ([IDbds])
GO
ALTER TABLE [dbo].[ImgBDS2] CHECK CONSTRAINT [FK_ImgBDS2_ThongTinBDS]
GO
ALTER TABLE [dbo].[YeuCau]  WITH CHECK ADD  CONSTRAINT [FK_YeuCau_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([UserID])
GO
ALTER TABLE [dbo].[YeuCau] CHECK CONSTRAINT [FK_YeuCau_Account]
GO

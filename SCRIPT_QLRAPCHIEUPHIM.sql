CREATE DATABASE [QL_RAPCHIEUPHIM]
GO
USE [QL_RAPCHIEUPHIM]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[maChucVu] [varchar](10) NOT NULL,
	[tenChucVu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DoAn]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DoAn](
	[maHD] [varchar](10) NOT NULL,
	[maDoAn] [varchar](10) NOT NULL,
	[soLuong] [int] NULL,
	[thanhTien] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maDoAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ve]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ve](
	[maHD] [varchar](10) NOT NULL,
	[maGhe] [varchar](10) NOT NULL,
	[maLichChieu] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maGhe] ASC,
	[maLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_ManHinh]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_ManHinh](
	[maManHinh] [varchar](10) NOT NULL,
	[tenManHinh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoAn]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoAn](
	[maDoAn] [varchar](10) NOT NULL,
	[tenDoAn] [nvarchar](255) NULL,
	[donGia] [decimal](18, 2) NULL,
	[hinhAnh] [nvarchar](255) NULL,
	[soLuong] [int] NULL,
	[trangThai] [int] NULL,
 CONSTRAINT [PK__DoAn__335F058C4C27AB2A] PRIMARY KEY CLUSTERED 
(
	[maDoAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[maGhe] [varchar](10) NOT NULL,
	[maPhongChieu] [varchar](10) NULL,
	[cots] [varchar](5) NULL,
	[hang] [varchar](5) NULL,
	[loaiGhe] [nvarchar](50) NULL,
	[trangThai] [int] NULL,
	[gia] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[maGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [varchar](10) NOT NULL,
	[maNV] [varchar](10) NULL,
	[maKH] [varchar](10) NULL,
	[ngayBan] [date] NULL,
	[tongTien] [decimal](18, 2) NULL,
	[maKhuyenMai] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [varchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[SDT] [nvarchar](15) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[maKhuyenMai] [varchar](10) NOT NULL,
	[tenKM] [nvarchar](255) NULL,
	[thoiGianBD] [date] NULL,
	[thoiGianKT] [date] NULL,
	[phanTramKhuyenMai] [decimal](5, 2) NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[maLichChieu] [varchar](10) NOT NULL,
	[maPhim] [varchar](10) NULL,
	[maPhongChieu] [varchar](10) NULL,
	[ngayChieu] [date] NULL,
	[gioBD] [time](7) NULL,
	[gioKT] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhim](
	[maLoai] [varchar](10) NOT NULL,
	[tenLoai] [nvarchar](255) NULL,
	[moTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[SDT] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien_ChucVu]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien_ChucVu](
	[tenDangNhap] [nvarchar](255) NOT NULL,
	[maChucVu] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC,
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[maChucVu] [varchar](10) NULL,
	[maManHinh] [varchar](10) NULL,
	[coQuyen] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[maPhim] [varchar](10) NOT NULL,
	[tenPhim] [nvarchar](255) NULL,
	[thoiLuong] [int] NULL,
	[daoDien] [nvarchar](255) NULL,
	[quocGia] [nvarchar](255) NULL,
	[noiDung] [nvarchar](max) NULL,
	[hinhAnh] [nvarchar](255) NULL,
	[ngayChieu] [date] NULL,
	[ngayKT] [date] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim_LoaiPhim]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim_LoaiPhim](
	[maPhim] [varchar](10) NOT NULL,
	[maLoai] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhim] ASC,
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[maPhongChieu] [varchar](10) NOT NULL,
	[tenPhongChieu] [nvarchar](255) NULL,
	[soLuongGhe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhongChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tenDangNhap] [nvarchar](255) NOT NULL,
	[pass] [nvarchar](255) NULL,
	[hoatDong] [int] NULL,
	[maNhanVien] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu] ([maChucVu], [tenChucVu]) VALUES (N'CV001', N'Quản lý')
INSERT [dbo].[ChucVu] ([maChucVu], [tenChucVu]) VALUES (N'CV002', N'Nhân viên bán vé')
INSERT [dbo].[ChucVu] ([maChucVu], [tenChucVu]) VALUES (N'CV003', N'Nhân viên quản lý phim')
GO
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD016', N'DA004', 1, CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD017', N'DA004', 7, CAST(105000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD018', N'DA003', 1, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD018', N'DA004', 1, CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD019', N'DA002', 1, CAST(20000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD019', N'DA003', 1, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD019', N'DA004', 3, CAST(45000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD020', N'DA002', 3, CAST(60000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD020', N'DA003', 1, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD020', N'DA004', 1, CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD021', N'DA003', 1, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD022', N'DA003', 1, CAST(55000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD022', N'DA004', 5, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD023', N'DA002', 1, CAST(20000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_DoAn] ([maHD], [maDoAn], [soLuong], [thanhTien]) VALUES (N'HD023', N'DA003', 3, CAST(165000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD016', N'G001', N'LC006')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD016', N'G002', N'LC006')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD016', N'G003', N'LC006')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD016', N'G004', N'LC006')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD016', N'G005', N'LC006')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD016', N'G011', N'LC006')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD017', N'G001', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD017', N'G002', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD017', N'G003', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD017', N'G004', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD017', N'G005', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD017', N'G006', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD021', N'G007', N'LC002')
INSERT [dbo].[CT_Ve] ([maHD], [maGhe], [maLichChieu]) VALUES (N'HD021', N'G008', N'LC002')
GO
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH001', N'frm_QLTaiNguyen')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH002', N'frm_QLPhim')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH003', N'frm_QLLoaiPhim')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH004', N'frm_QLPhongChieu')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH005', N'frm_QLLichChieu')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH006', N'frm_QLVe')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH007', N'frm_QLDichVu')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH008', N'frm_QLKhuyenMai')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH009', N'frm_QLNhanVien')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH010', N'frm_QLKhachHang')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH011', N'frm_QLKhuyenMai')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH012', N'frm_QLNguoiDung')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH013', N'frm_ThongKe')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH014', N'frm_QLTaiKhoan')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH015', N'frm_QLChucVu')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH016', N'frm_QLNhanVien')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH017', N'frm_QLDMManHinh')
INSERT [dbo].[DM_ManHinh] ([maManHinh], [tenManHinh]) VALUES (N'MH018', N'frm_QLPhanQuyen')
GO
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA001', N'Bắp rang', CAST(50000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA001.jpg', 1000, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA002', N'Pepsi', CAST(20000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA002.png', 17, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA003', N'Nachos', CAST(55000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA003.jpg', 9996, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA004', N'Nước ngọt', CAST(15000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA004.png', 995, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA005', N'Hot Dog', CAST(80000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA005.jpg', 19, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA006', N'Kẹo', CAST(10000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA006.png', 30, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA007', N'Sô cô la', CAST(70000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA007.jpg', 40, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA008', N'Kem', CAST(45000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA008.jpg', 20, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA009', N'Khoai tây chiên', CAST(95000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA009.jpg', 30, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA010', N'Pizza miếng', CAST(120000.00 AS Decimal(18, 2)), N'Resources\DichVu\DA010.jpg', 40, 1)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA011', N'AA', CAST(150.00 AS Decimal(18, 2)), N'Resources\DichVu\DA011.png', 12, 0)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA012', N'A', CAST(122.00 AS Decimal(18, 2)), N'Resources\DichVu\DA012.png', 100, 0)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA013', N'AA', CAST(20.00 AS Decimal(18, 2)), N'Resources\DichVu\DA013.png', 10, 0)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA014', N'AA', CAST(1000.00 AS Decimal(18, 2)), N'Resources\DichVu\init_image.jpg', 2, 0)
INSERT [dbo].[DoAn] ([maDoAn], [tenDoAn], [donGia], [hinhAnh], [soLuong], [trangThai]) VALUES (N'DA015', N'A', CAST(1000.00 AS Decimal(18, 2)), N'Resources\DichVu\init_image.jpg', 23, 0)
GO
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G001', N'PC001', N'1', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G002', N'PC001', N'2', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G003', N'PC001', N'3', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G004', N'PC001', N'4', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G005', N'PC001', N'5', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G006', N'PC001', N'6', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G007', N'PC001', N'7', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G008', N'PC001', N'8', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G009', N'PC001', N'9', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G010', N'PC001', N'10', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G011', N'PC001', N'1', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G012', N'PC001', N'2', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G013', N'PC001', N'3', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G014', N'PC001', N'4', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G015', N'PC001', N'5', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G016', N'PC001', N'6', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G017', N'PC001', N'7', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G018', N'PC001', N'8', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G019', N'PC001', N'9', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G020', N'PC001', N'10', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G021', N'PC001', N'1', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G022', N'PC001', N'2', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G023', N'PC001', N'3', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G024', N'PC001', N'4', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G025', N'PC001', N'5', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G026', N'PC001', N'6', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G027', N'PC001', N'7', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G028', N'PC001', N'8', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G029', N'PC001', N'9', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G030', N'PC001', N'10', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G031', N'PC001', N'1', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G032', N'PC001', N'2', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G033', N'PC001', N'3', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G034', N'PC001', N'4', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G035', N'PC001', N'5', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G036', N'PC001', N'6', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G037', N'PC001', N'7', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G038', N'PC001', N'8', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G039', N'PC001', N'9', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G040', N'PC001', N'10', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G041', N'PC001', N'1', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G042', N'PC001', N'2', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G043', N'PC001', N'3', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G044', N'PC001', N'4', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G045', N'PC001', N'5', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G046', N'PC001', N'6', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G047', N'PC001', N'7', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G048', N'PC001', N'8', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G049', N'PC001', N'9', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G050', N'PC001', N'10', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G051', N'PC001', N'1', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G052', N'PC001', N'2', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G053', N'PC001', N'3', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G054', N'PC001', N'4', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G055', N'PC001', N'5', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G056', N'PC001', N'6', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G057', N'PC001', N'7', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G058', N'PC001', N'8', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G059', N'PC001', N'9', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G060', N'PC001', N'10', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G061', N'PC002', N'1', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G062', N'PC002', N'2', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G063', N'PC002', N'3', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G064', N'PC002', N'4', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G065', N'PC002', N'5', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G066', N'PC002', N'6', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G067', N'PC002', N'7', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G068', N'PC002', N'8', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G069', N'PC002', N'9', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G070', N'PC002', N'10', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G071', N'PC002', N'1', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G072', N'PC002', N'2', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G073', N'PC002', N'3', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G074', N'PC002', N'4', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G075', N'PC002', N'5', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G076', N'PC002', N'6', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G077', N'PC002', N'7', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G078', N'PC002', N'8', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G079', N'PC002', N'9', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G080', N'PC002', N'10', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G081', N'PC002', N'1', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G082', N'PC002', N'2', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G083', N'PC002', N'3', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G084', N'PC002', N'4', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G085', N'PC002', N'5', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G086', N'PC002', N'6', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G087', N'PC002', N'7', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G088', N'PC002', N'8', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G089', N'PC002', N'9', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G090', N'PC002', N'10', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G091', N'PC002', N'1', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G092', N'PC002', N'2', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G093', N'PC002', N'3', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G094', N'PC002', N'4', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G095', N'PC002', N'5', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G096', N'PC002', N'6', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G097', N'PC002', N'7', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G098', N'PC002', N'8', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G099', N'PC002', N'9', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G100', N'PC002', N'10', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G101', N'PC002', N'1', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G102', N'PC002', N'2', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G103', N'PC002', N'3', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G104', N'PC002', N'4', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G105', N'PC002', N'5', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G106', N'PC002', N'6', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G107', N'PC002', N'7', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G108', N'PC002', N'8', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G109', N'PC002', N'9', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G110', N'PC002', N'10', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G111', N'PC002', N'1', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G112', N'PC002', N'2', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G113', N'PC002', N'3', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G114', N'PC002', N'4', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G115', N'PC002', N'5', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G116', N'PC002', N'6', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G117', N'PC002', N'7', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G118', N'PC002', N'8', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G119', N'PC002', N'9', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G120', N'PC002', N'10', N'F', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G121', N'PC003', N'1', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G122', N'PC003', N'2', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G123', N'PC003', N'3', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G124', N'PC003', N'4', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G125', N'PC003', N'5', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G126', N'PC003', N'6', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G127', N'PC003', N'7', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G128', N'PC003', N'8', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G129', N'PC003', N'9', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G130', N'PC003', N'10', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G131', N'PC003', N'1', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G132', N'PC003', N'2', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G133', N'PC003', N'3', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G134', N'PC003', N'4', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G135', N'PC003', N'5', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G136', N'PC003', N'6', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G137', N'PC003', N'7', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G138', N'PC003', N'8', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G139', N'PC003', N'9', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G140', N'PC003', N'10', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G141', N'PC003', N'1', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G142', N'PC003', N'2', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G143', N'PC003', N'3', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G144', N'PC003', N'4', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G145', N'PC003', N'5', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G146', N'PC003', N'6', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G147', N'PC003', N'7', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G148', N'PC003', N'8', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G149', N'PC003', N'9', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G150', N'PC003', N'10', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G151', N'PC003', N'1', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G152', N'PC003', N'2', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G153', N'PC003', N'3', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G154', N'PC003', N'4', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G155', N'PC003', N'5', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G156', N'PC003', N'6', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G157', N'PC003', N'7', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G158', N'PC003', N'8', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G159', N'PC003', N'9', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G160', N'PC003', N'10', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G161', N'PC003', N'1', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G162', N'PC003', N'2', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G163', N'PC003', N'3', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G164', N'PC003', N'4', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G165', N'PC003', N'5', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G166', N'PC003', N'6', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G167', N'PC003', N'7', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G168', N'PC003', N'8', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G169', N'PC003', N'9', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G170', N'PC003', N'10', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G171', N'PC004', N'1', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G172', N'PC004', N'2', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G173', N'PC004', N'3', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G174', N'PC004', N'4', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G175', N'PC004', N'5', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G176', N'PC004', N'6', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G177', N'PC004', N'7', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G178', N'PC004', N'8', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G179', N'PC004', N'9', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G180', N'PC004', N'10', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G181', N'PC004', N'1', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G182', N'PC004', N'2', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G183', N'PC004', N'3', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G184', N'PC004', N'4', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G185', N'PC004', N'5', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G186', N'PC004', N'6', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G187', N'PC004', N'7', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G188', N'PC004', N'8', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G189', N'PC004', N'9', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G190', N'PC004', N'10', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G191', N'PC004', N'1', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G192', N'PC004', N'2', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G193', N'PC004', N'3', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G194', N'PC004', N'4', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G195', N'PC004', N'5', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G196', N'PC004', N'6', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G197', N'PC004', N'7', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G198', N'PC004', N'8', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G199', N'PC004', N'9', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G200', N'PC004', N'10', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G201', N'PC004', N'1', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G202', N'PC004', N'2', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G203', N'PC004', N'3', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G204', N'PC004', N'4', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G205', N'PC004', N'5', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G206', N'PC004', N'6', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G207', N'PC004', N'7', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G208', N'PC004', N'8', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G209', N'PC004', N'9', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G210', N'PC004', N'10', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G211', N'PC004', N'1', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G212', N'PC004', N'2', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G213', N'PC004', N'3', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G214', N'PC004', N'4', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G215', N'PC004', N'5', N'E', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G216', N'PC004', N'6', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G217', N'PC004', N'7', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G218', N'PC004', N'8', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G219', N'PC004', N'9', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G220', N'PC004', N'10', N'E', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G221', N'PC005', N'1', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G222', N'PC005', N'2', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G223', N'PC005', N'3', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G224', N'PC005', N'4', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G225', N'PC005', N'5', N'A', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G226', N'PC005', N'6', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G227', N'PC005', N'7', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G228', N'PC005', N'8', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G229', N'PC005', N'9', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G230', N'PC005', N'10', N'A', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G231', N'PC005', N'1', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G232', N'PC005', N'2', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G233', N'PC005', N'3', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G234', N'PC005', N'4', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G235', N'PC005', N'5', N'B', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G236', N'PC005', N'6', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G237', N'PC005', N'7', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G238', N'PC005', N'8', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G239', N'PC005', N'9', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G240', N'PC005', N'10', N'B', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G241', N'PC005', N'1', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G242', N'PC005', N'2', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G243', N'PC005', N'3', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G244', N'PC005', N'4', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G245', N'PC005', N'5', N'C', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G246', N'PC005', N'6', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G247', N'PC005', N'7', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G248', N'PC005', N'8', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G249', N'PC005', N'9', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G250', N'PC005', N'10', N'C', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G251', N'PC005', N'1', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G252', N'PC005', N'2', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G253', N'PC005', N'3', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G254', N'PC005', N'4', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G255', N'PC005', N'5', N'D', N'VIP', 0, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G256', N'PC005', N'6', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G257', N'PC005', N'7', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G258', N'PC005', N'8', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G259', N'PC005', N'9', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Ghe] ([maGhe], [maPhongChieu], [cots], [hang], [loaiGhe], [trangThai], [gia]) VALUES (N'G260', N'PC005', N'10', N'D', N'Thường', 0, CAST(75000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD001', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(75000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD002', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(100000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD003', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(225000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD004', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(50000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD005', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(20000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD006', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(475000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD007', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(100000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD008', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(295000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD009', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(70000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD010', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(220000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD011', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(150000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD012', N'NV001', N'KH002', CAST(N'2024-12-07' AS Date), CAST(75000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD013', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(150000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD014', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(300000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD015', N'NV001', N'KH000', CAST(N'2024-12-07' AS Date), CAST(300000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD016', N'NV001', N'KH002', CAST(N'2024-12-09' AS Date), CAST(531000.00 AS Decimal(18, 2)), N'KM001')
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD017', N'NV001', N'KH002', CAST(N'2024-12-09' AS Date), CAST(612000.00 AS Decimal(18, 2)), N'KM001')
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD018', N'NV001', N'KH000', CAST(N'2024-12-09' AS Date), CAST(70000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD019', N'NV001', N'KH000', CAST(N'2024-12-09' AS Date), CAST(120000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD020', N'NV001', N'KH000', CAST(N'2024-12-09' AS Date), CAST(130000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD021', N'NV001', N'KH000', CAST(N'2024-12-09' AS Date), CAST(205000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD022', N'NV001', N'KH000', CAST(N'2024-12-09' AS Date), CAST(130000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[HoaDon] ([maHD], [maNV], [maKH], [ngayBan], [tongTien], [maKhuyenMai]) VALUES (N'HD023', N'NV001', N'KH000', CAST(N'2024-12-09' AS Date), CAST(185000.00 AS Decimal(18, 2)), NULL)
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH000', N'N/A', N'N/A', N'temp@gmail.com', N'0123456789', NULL)
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH002', N'Nguyễn Thị Ngọc', N'Hà Nội', N'nguyenthim@gmail.com', N'0326081303', CAST(N'1992-03-20' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH003', N'Trần Văn Oanh', N'Đà Nẵng', N'tranvano@gmail.com', N'0927890123', CAST(N'1985-07-12' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH004', N'Lê Thị Phương', N'Hải Phòng', N'lethip@gmail.com', N'0938901234', CAST(N'1994-09-05' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH005', N'Hoàng Văn Quang', N'Cần Thơ', N'hoangvanq@gmail.com', N'0949012345', CAST(N'1988-11-22' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH006', N'Ngô Thị Rạng', N'Nha Trang', N'ngothir@gmail.com', N'0950123456', CAST(N'1980-05-08' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH007', N'Lý Văn Sơn', N'Huế', N'lyvans@gmail.com', N'0961234567', CAST(N'1995-10-10' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH008', N'Đặng Thị Thanh', N'Biên Hòa', N'dangthit@gmail.com', N'0972345678', CAST(N'1993-02-28' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH009', N'Nguyễn Văn Út', N'Vũng Tàu', N'nguyenvanu@gmail.com', N'0983456789', CAST(N'1987-04-18' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH010', N'Trần Thị Vân', N'Bình Dương', N'tranthiv@gmail.com', N'0994567890', CAST(N'1990-06-25' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH011', N'Tuấn Anh', N'TPHCM', N'TuanAnh200@gmail.com', N'0838175471', CAST(N'1990-06-27' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH012', N'Nguyễn Thanh Hoàn', N'TPHCM', N'hoan@gmail.com', N'0326081202', CAST(N'1990-06-30' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH013', N'Lê Thị La', N'TPHCM', N'lela@gmail.com', N'0907785983', CAST(N'1990-12-25' AS Date))
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [email], [SDT], [NgaySinh]) VALUES (N'KH014', N'Trần Mỹ Hạnh', N'TPHCM', N'hanhhh@gmail.com', N'0374857412', CAST(N'1996-01-30' AS Date))
GO
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM001', N'Khuyến mãi 10%', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-31' AS Date), CAST(0.10 AS Decimal(5, 2)), 1)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM002', N'Khuyến mãi 20%', CAST(N'2024-02-01' AS Date), CAST(N'2024-02-28' AS Date), CAST(0.20 AS Decimal(5, 2)), 1)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM003', N'Khuyến mãi 15%', CAST(N'2024-03-01' AS Date), CAST(N'2024-03-31' AS Date), CAST(0.15 AS Decimal(5, 2)), 0)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM004', N'Khuyến mãi 5%', CAST(N'2024-04-01' AS Date), CAST(N'2024-04-30' AS Date), CAST(0.05 AS Decimal(5, 2)), 1)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM005', N'Khuyến mãi 50%', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-31' AS Date), CAST(0.50 AS Decimal(5, 2)), 0)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM006', N'Khuyến mãi 30%', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-30' AS Date), CAST(0.30 AS Decimal(5, 2)), 1)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM007', N'Khuyến mãi 40%', CAST(N'2024-07-01' AS Date), CAST(N'2024-07-31' AS Date), CAST(0.40 AS Decimal(5, 2)), 0)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM008', N'Khuyến mãi 25%', CAST(N'2024-08-01' AS Date), CAST(N'2024-08-31' AS Date), CAST(0.25 AS Decimal(5, 2)), 1)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM009', N'Khuyến mãi 35%', CAST(N'2024-09-01' AS Date), CAST(N'2024-09-30' AS Date), CAST(0.35 AS Decimal(5, 2)), 1)
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKM], [thoiGianBD], [thoiGianKT], [phanTramKhuyenMai], [trangThai]) VALUES (N'KM010', N'Khuyến mãi 45%', CAST(N'2024-10-01' AS Date), CAST(N'2024-10-31' AS Date), CAST(0.45 AS Decimal(5, 2)), 0)
GO
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhongChieu], [ngayChieu], [gioBD], [gioKT]) VALUES (N'LC002', N'PH001', N'PC001', CAST(N'2024-11-08' AS Date), CAST(N'21:07:00' AS Time), CAST(N'22:04:00' AS Time))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhongChieu], [ngayChieu], [gioBD], [gioKT]) VALUES (N'LC004', N'PH002', N'PC002', CAST(N'2024-12-28' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhongChieu], [ngayChieu], [gioBD], [gioKT]) VALUES (N'LC006', N'PH001', N'PC001', CAST(N'2024-12-11' AS Date), CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhongChieu], [ngayChieu], [gioBD], [gioKT]) VALUES (N'LC008', N'PH001', N'PC002', CAST(N'2024-12-11' AS Date), CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhongChieu], [ngayChieu], [gioBD], [gioKT]) VALUES (N'LC010', N'PH007', N'PC001', CAST(N'2024-12-14' AS Date), CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP001', N'Hành Động', N'Phim hành động với nhiều pha hành động kịch tính.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP002', N'Hài Hước', N'Phim hài hước mang lại tiếng cười cho khán giả.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP003', N'Tâm Lý', N'Phim tâm lý, cảm xúc sâu sắc về cuộc sống.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP004', N'Kinh Dị', N'Phim kinh dị với nhiều tình huống gây sợ hãi.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP005', N'Hoạt Hình', N'Phim hoạt hình dành cho trẻ em và người lớn.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP006', N'Khoa Học Viễn Tưởng', N'Phim khoa học viễn tưởng với những yếu tố giả tưởng.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP007', N'Tình Cảm', N'Phim tình cảm với những câu chuyện tình yêu lãng mạn.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP008', N'Hồi Hộp', N'Phim hồi hộp, căng thẳng với nhiều bất ngờ.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP009', N'Tài Liệu', N'Phim tài liệu khám phá những chủ đề thực tế.')
INSERT [dbo].[LoaiPhim] ([maLoai], [tenLoai], [moTa]) VALUES (N'LP010', N'Ca Nhạc', N'Phim ca nhạc hay, nhảy múa với các bài hát hấp dẫn.')
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV001', N'Nguyễn Hữu Minh', N'TP.HCM', N'nguyenhuu@gmail.com', N'0901234567')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV002', N'Trần Thị Lan', N'Hà Nội', N'tranlan@gmail.com', N'0912345678')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV003', N'Lê Quốc Đạt', N'Đà Nẵng', N'lequocdat@gmail.com', N'0923456789')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV004', N'Phạm Ngọc Bích', N'Hải Phòng', N'phamngocbich@gmail.com', N'0934567890')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV005', N'Hoàng Văn Hoàng', N'Cần Thơ', N'hoangvanhoang@gmail.com', N'0945678901')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV006', N'Ngô Thị Hồng', N'Nha Trang', N'ngothihong@gmail.com', N'0956789012')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV007', N'Lý Minh Anh', N'Huế', N'lyminhanh@gmail.com', N'0967890123')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV008', N'Đặng Hữu Tài', N'Biên Hòa', N'danghuutai@gmail.com', N'0978901234')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV009', N'Nguyễn Thanh Sơn', N'Vũng Tàu', N'nguyenthanhson@gmail.com', N'0989012345')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV010', N'Trần Kim Chi', N'Bình Dương', N'trankimchi@gmail.com', N'0990123456')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [diaChi], [email], [SDT]) VALUES (N'NV011', N'Trần Chí Đạt', N'TP.HCM', N'chidat@gmail.com', N'0398541203')
GO
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'huuminh', N'CV001')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'huutai', N'CV002')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'kimchi', N'CV002')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'ngocbich', N'CV002')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'thilan', N'CV002')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'vanhoang', N'CV002')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'minhanh', N'CV003')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'quocdat', N'CV003')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'thanhson', N'CV003')
INSERT [dbo].[NhanVien_ChucVu] ([tenDangNhap], [maChucVu]) VALUES (N'thihong', N'CV003')
GO
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH001', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH002', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH003', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH004', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH005', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH006', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH007', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH008', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH009', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH010', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH011', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH012', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH013', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH014', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH015', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH016', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH017', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV001', N'MH018', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH001', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH006', 0)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV002', N'MH001', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV002', N'MH006', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH002', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH003', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH004', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH005', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH007', 0)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH008', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV003', N'MH011', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV002', N'MH010', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV002', N'MH013', 1)
INSERT [dbo].[PhanQuyen] ([maChucVu], [maManHinh], [coQuyen]) VALUES (N'CV002', N'MH007', 1)
GO
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'P001', N'Phim A', 120, N'Director A', N'Viet Nam', N'Noi dung Phim A', N'hinhA.jpg', CAST(N'2023-01-01' AS Date), CAST(N'2023-12-31' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'P002', N'Phim B', 90, N'Director B', N'USA', N'Noi dung Phim B', N'hinhB.jpg', CAST(N'2023-06-01' AS Date), CAST(N'2023-11-30' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH001', N'Em Chưa 18', 100, N'Erik Nguyễn', N'Việt Nam', N'Một bộ phim hài lãng mạn xoay quanh câu chuyện tình yêu thú vị giữa một cô gái trẻ và một người đàn ông lớn tuổi.', N'Resources\Phim\PH001.jpg', CAST(N'2024-01-01' AS Date), CAST(N'2025-05-31' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH002', N'Tình Người Duyên Ma', 110, N'DaEang', N'Thái Lan', N'Một câu chuyện tình yêu bi kịch giữa con người và thế giới tâm linh.', N'Resources\Phim\PH002.jpg', CAST(N'2024-02-01' AS Date), CAST(N'2025-02-22' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH003', N'Nhà Bà Nữ', 120, N'Huỳnh Đông', N'Việt Nam', N'Câu chuyện về một gia đình truyền thống tại Sài Gòn với những tình huống hài hước và sâu sắc.', N'Resources\Phim\PH003.jpg', CAST(N'2024-03-01' AS Date), CAST(N'2025-03-08' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH004', N'The Conjuring', 112, N'James Wan', N'Mỹ', N'Một gia đình phải đối mặt với những hiện tượng kỳ bí khi chuyển đến một ngôi nhà mới.', N'Resources\Phim\PH004.jpg', CAST(N'2024-04-01' AS Date), CAST(N'2025-03-06' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH005', N'Interstellar', 169, N'Christopher Nolan', N'Mỹ', N'Một cuộc hành trình xuyên không gian và thời gian để tìm kiếm một hành tinh mới cho nhân loại.', N'Resources\Phim\PH005.jpg', CAST(N'2025-12-01' AS Date), CAST(N'2025-03-13' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH006', N'Bố Già', 120, N'Trấn Thành', N'Việt Nam', N'Một bộ phim hài cảm động xoay quanh mối quan hệ giữa cha và con, khám phá những khó khăn trong cuộc sống gia đình.', N'Resources\Phim\PH006.jpg', CAST(N'2024-12-04' AS Date), CAST(N'2025-04-25' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH007', N'Fast & Furious 10', 140, N'Louis Leterrier', N'Mỹ', N'Một bộ phim hành động về cuộc chiến giữa các băng nhóm, với những pha đua xe tốc độ và tình bạn bền chặt.', N'Resources\Phim\PH007.jpg', CAST(N'2024-11-06' AS Date), CAST(N'2025-01-23' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH008', N'John Wick: Chapter 4', 169, N'Chad Stahelski', N'Mỹ', N'Một cuộc chiến không ngừng nghỉ của John Wick khi anh tìm cách thoát khỏi tổ chức tội phạm.', N'Resources\Phim\PH008.jpg', CAST(N'2024-10-28' AS Date), CAST(N'2025-03-06' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH009', N'Hồn Papa, Da Con Gái', 120, N'Nguyễn Hữu Tiến', N'Việt Nam', N'Một bộ phim hài lãng mạn về tình cha con và những khó khăn trong cuộc sống.', N'Resources\Phim\PH009.jpg', CAST(N'2024-11-06' AS Date), CAST(N'2025-01-24' AS Date), 1)
INSERT [dbo].[Phim] ([maPhim], [tenPhim], [thoiLuong], [daoDien], [quocGia], [noiDung], [hinhAnh], [ngayChieu], [ngayKT], [trangThai]) VALUES (N'PH010', N'Người Bất Tử', 130, N'Victor Vũ', N'Việt Nam', N'Một câu chuyện kỳ bí về cuộc sống và tình yêu kéo dài qua nhiều thế kỷ.', N'Resources\Phim\PH010.jpg', CAST(N'2024-11-06' AS Date), CAST(N'2025-04-05' AS Date), 1)
GO
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH001', N'LP002')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH002', N'LP003')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH003', N'LP002')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH004', N'LP004')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH005', N'LP006')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH006', N'LP002')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH007', N'LP001')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH008', N'LP001')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH009', N'LP002')
INSERT [dbo].[Phim_LoaiPhim] ([maPhim], [maLoai]) VALUES (N'PH010', N'LP003')
GO
INSERT [dbo].[PhongChieu] ([maPhongChieu], [tenPhongChieu], [soLuongGhe]) VALUES (N'PC001', N'Phòng Chiếu 1', 60)
INSERT [dbo].[PhongChieu] ([maPhongChieu], [tenPhongChieu], [soLuongGhe]) VALUES (N'PC002', N'Phòng Chiếu 2', 60)
INSERT [dbo].[PhongChieu] ([maPhongChieu], [tenPhongChieu], [soLuongGhe]) VALUES (N'PC003', N'Phòng Chiếu 3', 50)
INSERT [dbo].[PhongChieu] ([maPhongChieu], [tenPhongChieu], [soLuongGhe]) VALUES (N'PC004', N'Phòng Chiếu 4', 50)
INSERT [dbo].[PhongChieu] ([maPhongChieu], [tenPhongChieu], [soLuongGhe]) VALUES (N'PC005', N'Phòng Chiếu 5', 40)
GO
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'chidat', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1, N'NV011')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'huuminh', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV001')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'huutai', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV008')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'kimchi', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV010')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'minhanh', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV007')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'ngocbich', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV004')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'quocdat', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV003')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'thanhson', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV009')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'thihong', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV006')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'thilan', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV002')
INSERT [dbo].[TaiKhoan] ([tenDangNhap], [pass], [hoatDong], [maNhanVien]) VALUES (N'vanhoang', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1, N'NV005')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_SDT]    Script Date: 12/10/2024 1:32:12 AM ******/
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [UC_SDT] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CT_DoAn]  WITH CHECK ADD  CONSTRAINT [FK__CT_DoAn__maDoAn__5629CD9C] FOREIGN KEY([maDoAn])
REFERENCES [dbo].[DoAn] ([maDoAn])
GO
ALTER TABLE [dbo].[CT_DoAn] CHECK CONSTRAINT [FK__CT_DoAn__maDoAn__5629CD9C]
GO
ALTER TABLE [dbo].[CT_DoAn]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[CT_Ve]  WITH CHECK ADD FOREIGN KEY([maGhe])
REFERENCES [dbo].[Ghe] ([maGhe])
GO
ALTER TABLE [dbo].[CT_Ve]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[CT_Ve]  WITH CHECK ADD FOREIGN KEY([maLichChieu])
REFERENCES [dbo].[LichChieu] ([maLichChieu])
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD FOREIGN KEY([maPhongChieu])
REFERENCES [dbo].[PhongChieu] ([maPhongChieu])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([maKhuyenMai])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([maPhim])
REFERENCES [dbo].[Phim] ([maPhim])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([maPhongChieu])
REFERENCES [dbo].[PhongChieu] ([maPhongChieu])
GO
ALTER TABLE [dbo].[NhanVien_ChucVu]  WITH CHECK ADD FOREIGN KEY([maChucVu])
REFERENCES [dbo].[ChucVu] ([maChucVu])
GO
ALTER TABLE [dbo].[NhanVien_ChucVu]  WITH CHECK ADD FOREIGN KEY([tenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([tenDangNhap])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_ChucVu] FOREIGN KEY([maChucVu])
REFERENCES [dbo].[ChucVu] ([maChucVu])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_ChucVu]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_DM_ManHinh] FOREIGN KEY([maManHinh])
REFERENCES [dbo].[DM_ManHinh] ([maManHinh])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_DM_ManHinh]
GO
ALTER TABLE [dbo].[Phim_LoaiPhim]  WITH CHECK ADD FOREIGN KEY([maLoai])
REFERENCES [dbo].[LoaiPhim] ([maLoai])
GO
ALTER TABLE [dbo].[Phim_LoaiPhim]  WITH CHECK ADD FOREIGN KEY([maPhim])
REFERENCES [dbo].[Phim] ([maPhim])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[DoAn]  WITH CHECK ADD  CONSTRAINT [CK_SoLuong_GT0] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[DoAn] CHECK CONSTRAINT [CK_SoLuong_GT0]
GO
/****** Object:  Trigger [dbo].[trg_UpdateTrangThai]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_UpdateTrangThai]
ON [dbo].[DoAn]
AFTER UPDATE
AS
BEGIN
    -- Update the trangThai to 0 where soLuong is 0
    UPDATE DoAn
    SET trangThai = 0
    WHERE soLuong = 0 AND EXISTS (
        SELECT 1
        FROM inserted
        WHERE inserted.maDoAn = DoAn.maDoAn
    );
END;
GO
ALTER TABLE [dbo].[DoAn] ENABLE TRIGGER [trg_UpdateTrangThai]
GO
/****** Object:  Trigger [dbo].[trg_ValidateNgayChieu]    Script Date: 12/10/2024 1:32:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_ValidateNgayChieu]
ON [dbo].[LichChieu]
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Phim p ON i.maPhim = p.maPhim
        WHERE i.ngayChieu < p.ngayChieu OR i.ngayChieu > p.ngayKT
    )
    BEGIN
        RAISERROR ('ngayChieu must be between Phim ngayChieu and ngayKT.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END
GO
ALTER TABLE [dbo].[LichChieu] ENABLE TRIGGER [trg_ValidateNgayChieu]
GO

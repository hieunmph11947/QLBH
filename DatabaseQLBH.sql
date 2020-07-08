create database QuanLyBanHang
go
use QuanLyBanHang
go
create table NhanVien
(
	MaNV nvarchar not null,
	TenNV nvarchar not null,
	NgaySinh datetime not null,
	GioiTinh nvarchar not null,
	DiaChi nvarchar not null,
	SoDT int not null,
	constraint PK_NhanVien primary key(MaNV)
)
go
create table KhachHang
(
	MaKH nvarchar not null,
	TenKH nvarchar not null,
	NgaySinh nvarchar not null,
	GioiTinh nvarchar not null,
	DiaChi nvarchar not null,
	SoDT int not null,
	constraint PK_KhachHang primary key(MaKH)
)
go
create table ChiTietHoaDon
(
	MaHD nvarchar not null,
	MaSP nvarchar not null,
	SoLuong int not null,
	DonGia int not null,
	TongTien int not null
	constraint FK_ChiTietHoaDon_HoaDon foreign key(MaHD) references HoaDon(MAHD),
	constraint FK_ChiTietHoaDon_SanPham foreign key(MaSP) references SanPham(MASP),
	)
go
create table HoaDon
(
	MaHD nvarchar not null,
	MaKH nvarchar not null,
	MaNV nvarchar not null,
	NgayBan datetime not null,
	TrangThai nvarchar not null,
	constraint PK_HoaDon primary key(MaHD),
	constraint FK_HoaDon_NhanVien foreign key(MaNV) references NHANVIEN(MANV),
	constraint FK_HoaDon_KhacHang foreign key(MaKH) references KHACHHANG(MAKH)  
)
go
create table SanPham
(
	MaSP nvarchar not null,
	TenSP nvarchar not null,
	SoLuong nvarchar not null,
	DonGia int not null,
	NgaySanXuat datetime not null,
	constraint PK_SanPham primary key(MaSP),
	
)
go

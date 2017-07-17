create SCHEMA user1 
create table user1.NhanVien 
(
	MaNV VARGRAPHIC(5) not null PRIMARY KEY ,
	HoNV VARGRAPHIC (10) not null ,
	TenNV VARGRAPHIC (30) not null,
	DiaChi VARGRAPHIC (50) not null ,
	SDT VARGRAPHIC(12) NOT NULL  ,
	NgayVaoLam DATE NOT NULL ,
	LuongCB int  CHECK ( LuongCB > 0 ) ,
	GioiTinh SMALLINT not null ,
	NgaySinh Date NOT NULL ,
	CMND nvarchar(10) not null ,
	TenDN VARGRAPHIC(10) NOT NULL ,
	MatKhau VARGRAPHIC(10) NOT NULL,
	Quyen SMALLINT NOT NULL 
)

create table user1.Ban
(
	 MaBan VARGRAPHIC(5) NOT NULL PRIMARY KEY ,
     SoNguoi int NOT NULL 
)
create table user1.LoaiMon
(
	MaLoai VARGRAPHIC (5) NOT NULL PRIMARY KEY ,
	TenLoai VARGRAPHIC(30) NOT NULL 
	)
	
create table user1.nguyenlieu 
( 	
	
	MaNL VARGRAPHIC(5) NOT NULL PRIMARY KEY ,
	TenNL VARGRAPHIC(30) NOT NULL ,
	HamLuong double,
	Donvi VARCHAR(10) ,
	Tong double 
)
create table user1.ChamCong
(
	
	MaNV VARGRAPHIC( 5) NOT NULL FOREIGN REFERENCES user1.NhanVien(MaNV) ON DELETE CASCADE ,
	Ngay date PRIMARY KEY not null ,
	SoCa int 
)

create table user1.ThucDon
(
	MaMon VARGRAPHIC (5) NOT NULL PRIMARY KEY ,
	TenMon VARGRAPHIC(30) NOT NULL ,
	MaLoai VARGRAPHIC (5) NOT NULL FOREIGN REFERENCES user1.LoaiMon(MaLoai) ON DELETE CASCADE,
	Dongia float ,
	DVT VARGRAPHIC(20) ,
	AnhMon vargraphic (30)
	)  
create table user1.CongThuc 
(
 	
 	MaMon VARGRAPHIC (5) not null FOREIGNB REFERENCES user1.ThucDon(MaMon) ON DELETE CASCADE ,
 	MaNL VARGRAPHIC(5)not null FOREIGNA REFERENCES user1.NguyenLieu(MaNL) ON DELETE CASCADE,
 	HamLuong float ,
 	DonVi nvarchar (10) ,
 	Tong DOUBLE  
)
create table user1.ChiTietPhieu 
(
	MaBan VARGRAPHIC(5)not null FOREIGNA REFERENCES user1.Ban(MaBan)ON DELETE CASCADE,
	MaMon VARGRAPHIC (5) not null FOREIGNB REFERENCES user1.ThucDon(MaMon) ON DELETE CASCADE ,
	GiamGia double ,
	SoLuong double ,
	DonGia double 
	 
)
create table user1.phieu 
(
   MaPhieu VARGRAPHIC(10) NOT NULL ,
   MaNV VARGRAPHIC( 5) NOT NULL FOREIGN REFERENCES user1.NhanVien(MaNV) ON DELETE CASCADE ,
   NgayTao date NOT NULL ,
   MaBan VARGRAPHIC(5)not null FOREIGNA REFERENCES user1.Ban(MaBan)ON DELETE CASCADE,
   Tongsotien int NOT NULL ,
   TrangThai SMALLINT NOT NULL 
   )
   
   









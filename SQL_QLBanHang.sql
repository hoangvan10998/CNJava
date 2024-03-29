create database QLBanHang

use QLBanHang


create table SanPham
(
	Masanpham nvarchar(20) primary key,
	Tensanpham nvarchar(50) not null,
	Giadagiam float not null,
	Giaban float not null,
	Soluong int not null,
	Nhacungcap nvarchar(30),
	Maloai nvarchar(20) not null,
	Hinhanh image not null,
	Soluongnhap int not null,
	Soluongban int not null
)

create table ThongTinSanPham
(
	Masanpham nvarchar(20) primary key,
	Mota1 nvarchar(1000),
	Hinhanhchitiet image not null
)

create table TaiKhoan
(
	Tentaikhoan nvarchar(100) primary key,
	Matkhau nvarchar(20) not null,
	Tenkhachhang nvarchar(100) not null,
	Gioitinh nvarchar(3) not null,
	Sodienthoai nvarchar(11)not null,
	Email nvarchar(50) not null,
	Soluotmua int,
	Quyen nvarchar(10)
	
)
create table NhaCungCap
(
	Manhacungcap nvarchar(20) primary key,
	Tennhacungcap nvarchar(100) not null,
	Diachi nvarchar(100) not null,
	Sodienthoai nvarchar(11)not null
	
)
create table DonHang
(
	Madonhang nvarchar(20) primary key,
	Tentaikhoan nvarchar(100) not null,
	DSmasanpham nvarchar(20) not null,
	DStensanpham nvarchar(100) not null,
	Tongsoluong int not null,
	Tongtien int not null,
	Ngaymua date not null,
	Diachi nvarchar(100) not null,
	Sodienthoai nvarchar(11) not null,
	Email nvarchar(100) not null,
	TinhtrangDH nvarchar(50) not null
	constraint Tentaikhoan_FK foreign key(Tentaikhoan) references TaiKhoan(Tentaikhoan)
	
)
create table LoaiSanPham
(
	Maloai nvarchar(20) primary key,
	Tenloai nvarchar(100) not null,
	Manhacungcap nvarchar(20) not null,
	Mota nvarchar(1000) not null
	constraint Manhacungcap_FK foreign key(Manhacungcap) references NhaCungCap(Manhacungcap)
	
)

insert into TaiKhoan values (N'Admin',N'Admin',N'Admin', N'Nam','326546515', N'admin98@gmail.com', N'10 Nguyễn Nhạc', '0', N'Admin')
insert into TaiKhoan values (N'Hoangvan','Hoangvan',N'Hoàng Vân', 'Nữ','035155555', N'thanhvan10998@gmail.com', N'390 Nguyễn Thái Học', '2', N'Khách hàng')
insert into TaiKhoan values (N'Namnhu','Namnhu',N'Nam Như', 'Nữ','26848562', N'namnhu123@gmail.com', N'3  Lý Thường Kiệt', '6', N'Khách hàng')
 Select *from TaiKhoan


insert into DonHang values ('1',N'Hoangvan','1',N'Đầm nữ', '1','200000', '9/23/2019', N'390 Nguyễn Thái Học', '035155555', N'thanhvan10998@gmail.com', N'Đã xác nhận đơn hàng')
insert into DonHang values ('2',N'Namnhu','2',N'Áo thun', '2','300000', '9/23/2019', N'3 Lý Thường kiệt', '26848562', N'namnhu123@gmail.com', N'Đang chờ xác nhận đơn hàng')
insert into DonHang values ('3',N'Aivi','1',N'Đầm nữ', '1','200000', '9/23/2019', N'390 Nguyễn Thái Học', '068986465', N'thanhvan10998@gmail.com', N'Đã xác nhận đơn hàng')



insert into NhaCungCap values ('01',N'A.P.C',N'504 Nguyễn Thái Học', '0691512545')
insert into NhaCungCap values ('02',N'Louis Vuitton',N'504 Nguyễn Thái Học', '0691512545')
insert into NhaCungCap values ('03',N'Vetements',N'504 Nguyễn Thái Học', '0691512545')
insert into NhaCungCap values ('04',N'Etudes Studio',N'504 Nguyễn Thái Học', '0691512545')
insert into NhaCungCap values ('05',N'Coco Chanel',N'504 Nguyễn Thái Học', '0691512545')
insert into NhaCungCap values ('06',N'Ami',N'504 Nguyễn Thái Học', '0691512545')



insert into LoaiSanPham values ('1', N'Đầm nữ','01',N'Đầm hoa')
insert into LoaiSanPham values ('2', N'Áo thun','02',N'Áo thun')
insert into LoaiSanPham values ('3', N'Áo khoác','03',N'Áo khoác')
insert into LoaiSanPham values ('4', N'Quần tây','04',N'Quần tây')
insert into LoaiSanPham values ('5',N'Áo sơ mi', '05',N'Áo sơ mi ')



insert into SanPham values ('1',N'Đầm nữ','500000', '700000','100', N'A.P.C', '1','dam_nu.jpg', '100','1')
insert into SanPham values ('2',N'Áo thun','500000', '700000','100', N'Coco Chanel', '1','ao_thun.jpg', '100','0')
insert into SanPham values ('3',N'Áo sơ mi','500000', '700000','100', N'Louis', '1','ao_so_mi.png', '100','0')


insert into ThongTinSanPham values ('1',N'Thiết kế dáng đầm ôm phối voan cách điệu tay áo, kèm phụ kiện hoa ngay eo.Thiết kế đầm cổ chữ v xẻ tà sau. Kiểu dáng đơn giản nhưng sang trọng thích hợp mặc dự tiệc. Shop CAM KẾT CHẤT LƯỢNG xứng đáng với đồng tiền các chị bỏ ra. Chất liệu: Thun cotton lụa CAO CẤP, Phối voan, dây kéo sau. Mua là ĐẢM BẢO MẶC VỪA','500000', '700000','100', N'A.P.C', '1','dam_nu.jpg')
insert into ThongTinSanPham values ('2',N'Chất liệu cao cấp: mềm hơn, mịn hơn, thoáng mát hơn. Kiểu dáng: trẻ trung, năng động nhưng không kém phần duyên dáng. Chất liệu vải: không xù lông, giặt không phai màu','ao_thun.jpg')
insert into ThongTinSanPham values ('3',N'Với thiết kế thời trang năng động và sành điệu. Giá tốt tiết kiệm hơn cho nàng. Dễ mặc, dễ phối, màu sắc hiện đại giúp sáng da hơn khi mặc','ao_so_mi.png')





create database QLKS
go

use QLKS
go
create table LoaiPhong (MaLoai varchar(10) primary key, TenLoai nvarchar(30), GhiChu nvarchar(250), DuongDanAnh varchar(50))
go
create table Phong (MaPhong varchar(10) primary key, TenPhong varchar(10), MaLoai varchar(10) references LoaiPhong(MaLoai), DienTich int, GiaThue int)
go
create table TaiKhoan (TenTaiKhoan varchar(20) primary key, MatKhau varchar(20), HoTen nvarchar(30), SoDienThoai varchar(20), Email varchar(35), LaAdmin bit not null)
go
create table DatPhong (MaDatPhong int primary key, TenTaiKhoan varchar(20) references TaiKhoan(TenTaiKhoan), MaPhong varchar(10) references Phong(MaPhong), NgayDat date, NgayDen date, NgayTra date, DichVu nvarchar(100), ThanhTien int)
go
create table DichVu (MaDichVu varchar(10) primary key, TenDichVu nvarchar(20), GiaDichVu int)
go

insert into LoaiPhong values (N'LP01', N'Phòng Tiêu Chuẩn', N'Đây là loại phòng có thiết kế đơn giản, có diện tích nhỏ, nằm ở các tầng thấp và không có tầm nhìn đẹp. Trong phòng được trang bị những thiết bị tối thiểu, đây là loại phòng có mức giá thấp nhất trong khách sạn.', N'/Content/images/phongtieuchuan.jpg')
insert into LoaiPhong values (N'LP02', N'Phòng Đơn', N'Đây là loại phòng có diện tích nhỏ, chỉ có một phòng ngủ, thích hợp cho những người đi công tác một mình hay đi chơi ngắn ngày.', N'/Content/images/phongdon.jpg')
insert into LoaiPhong values (N'LP03', N'Phòng Đôi', N'Đây là loại phòng có diện tích tương đối vừa phải, có 2 phòng ngủ, rất thích hợp cho những người đi du lịch với gia đình hay đi công tác nhiều người', N'/Content/images/phongdoi.jpg')
insert into LoaiPhong values (N'LP04', N'Phòng VIP', N'Đây là loại phòng nghỉ cao cấp của khách sạn. Nằm ở tầng cao của khách sạn, được trang bị những đồ dùng cao cấp, những thiết bị buồng phòng tiện nghi, đẳng cấp nhất và cả các dịch vụ đặc biệt kèm theo.', N'/Content/images/phongvip.jpg')
insert into LoaiPhong values (N'LP05', N'Phòng Căn Hộ', N'Đây là loại phòng căn hộ, có trang bị đầy đủ tiện nghi như một căn hộ cao cấp, thích hợp cho những gia đình hay hội nhóm đi du lịch, nghĩ dưỡng lâu ngày', N'/Content/images/phongcanho.jpg')
insert into LoaiPhong values (N'LP06', N'Phòng Vila', N'Đây là loại phòng cao cấp nhất của chuổi khách sạn, đây là một căn hộ có trang bị đầy đủ trang thiết bị như một căn biệt thự cao cấp, có hồ bơi vô cực độc lập, thích hợp cho những người muốn tìm nơi nghĩ dưỡng', N'/Content/images/phongvila.jpg')

insert into Phong values ('MP01', '01001', 'LP01', 18, 200)
insert into Phong values ('MP02', '02002', 'LP02', 22, 240)
insert into Phong values ('MP03', '03003', 'LP03', 30, 340)
insert into Phong values ('MP04', '04004', 'LP04', 50, 600)
insert into Phong values ('MP05', '05001', 'LP05', 30, 350)
insert into Phong values ('MP06', '01002', 'LP01', 25, 270)
insert into Phong values ('MP07', '02003', 'LP02', 26, 280)
insert into Phong values ('MP08', '02004', 'LP02', 27, 290)
insert into Phong values ('MP09', '03001', 'LP03', 32, 350)
insert into Phong values ('MP10', '03002', 'LP03', 33, 370)
insert into Phong values ('MP11', '01003', 'LP01', 24, 290)
insert into Phong values ('MP12', '03004', 'LP03', 35, 410)
insert into Phong values ('MP13', '04001', 'LP05', 40, 420)
insert into Phong values ('MP14', '04002', 'LP05', 42, 440)
insert into Phong values ('MP15', '04003', 'LP05', 44, 460)
insert into Phong values ('MP16', '01004', 'LP01', 22, 240)
insert into Phong values ('MP17', '02001', 'LP02', 30, 400)
insert into Phong values ('MP18', '05002', 'LP04', 70, 700)
insert into Phong values ('MP19', '01005', 'LP01', 22, 220)
insert into Phong values ('MP20', '01006', 'LP01', 20, 210)
insert into Phong values ('MP21', 'A-1','LP06', 200, 10000)
insert into Phong values ('MP22', 'A-2','LP06', 200, 10000)

insert into DichVu values ('DV01', N'Ăn Sáng', 50)
insert into DichVu values ('DV02', N'Ăn Trưa', 100)
insert into DichVu values ('DV03', N'Ăn Tối', 100)

insert into TaiKhoan values (N'Duong', N'10011998', N'Nguyễn Trọng Dương', N'0333316221', N'duongnguyen@gmail.com', 0)
insert into TaiKhoan values (N'NguyenTrongDuong', N'1234', N'Nguyễn Trọng Dương', N'0333316221', N'nguyentrongduong98@gmail.com', 1)


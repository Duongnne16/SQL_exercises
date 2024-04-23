--tạo database
create database k_team
go

use k_team
go
--tao bang
create table GiaoVien 
(
	MaGV nvarchar(10),
	TenGV nvarchar(100)
)

create table HocSinh
(
	MaHS nvarchar(10),
	TenHS nvarchar(100)
)

--sửa bảng thêm cột ngày sinh
alter table HocSinh 
	add NgaySinh date

--xoa du lieu cua bảng
truncate table HocSinh

--xóa hoàn toàn bảng
drop table HocSinh



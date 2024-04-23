-- thêm dữ liệu
--kiểu số ->số bình thường
-- kiểu kí tự hoặc ngày cần để trong cặp nháy đơn
-- nếu là unicode thì cần có n phía trước cặp nháy đơn N''

create table Test
(
	MaSo int,
	Ten nvarchar(10),
	NgaySinh date,
	Nam bit,
	diachia char(20),
	tienluong float
)
go

insert dbo.HocSinh (MaHS, Name, NgaySinh)
values ( N'S', --maHS - varchar(10)
		 N'Duong ne', -- Name - nvarchar(100)
		 '20040601', -- NgaySinh - date
		)

insert dbo.Test
(
	MaSo int,
	Ten nvarchar(10),
	NgaySinh date,
	Nam bit,
	diachia char(20),
	tienluong float
)


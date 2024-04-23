use HowKteam
go

--cấu trúc truy vấn
SELECT * FROM dbo.DETAI --lấy hết các dữ liệu trong bảng bộ môn ra 
--lấy mã bộ môn + tên bộ môn trong bảng bộ môn

SELECT MABM, TENBM FROM dbo. BOMON

--đổi tên cột hiển thị
SELECT MABM AS '1', TENBM AS '2' FROM dbo.BOMON

--ghép 2 bảng

Select * FROM dbo.GIAOVIEN, dbo.BOMON



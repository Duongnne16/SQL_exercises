use HowKteam
go

--lấy mã gv, tên gv, tên bộ môn
SELECT GV.MAGV, HOTEN, NT.TEN FROM dbo.GIAOVIEN AS GV, dbo. NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV

SELECT * FROM GIAOVIEN
WHERE LUONG > 2000

--lấy ra giáo viên là nữ và lương > 2000
SELECT * FROM GIAOVIEN
WHere PHAI = N'Nữ' AND Luong > 2000

--lấy ra giáo viên nhỏ hơn 50 tuổi
--YEAR -> lấy ra năm sinh của ngày 
--Getdate -> lấy ra ngày hiện tại
SELECT * FROM GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) > 50

--lấy ra họ tên năm sinh và tuổi của giáo viên < 50 tuổi
SELECT HOTEN, NGSINH,YEAR(GETDATE()) - YEAR(NGSINH) AS OLD FROM GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) < 50

--lấy ra mã gv, tên gv, tên khoa đang làm việc
SELECT GV.MAGV, gv.HOTEN, k.TENKHOA FROM GIAOVIEN AS GV, BOMON AS BM ,KHOA AS K
WHERE gv.MABM = Bm.MABM AND bm.MAKHOA = K.MAKHOA

--lấy ra giáo viên là trưởng bộ môn
SELECT GV.* FROM GIAOVIEN AS GV, BOMON AS BM
WHERE gv.MAGV = bm.TRUONGBM

--đếm số lượng giáo viên
-- hàm đếm là COUNT(*) -> đếm số lượng của tất cả record
--COUNT(tên trường) đếm số lượng của tên trường đó
SELECT COunt(*) AS N'số lượng giáo viên' FROM GIAOVIEN

--đếm số lượng người thân của giáo viên có mã 007
SELECT COunt(*) AS N'Số lượng người thân' 
SELECT *
FROM GIAOVIEN AS GV, NGUOITHAN AS NT
WHERE gv.MAGV = '007' AND gv.MAGV = NT.MAGV
 
 --lấy ra thông tin giáo viên đó làm những đề tài nào
 SELECT Giaovien.HOTEN, DETAI.TENDT From GIAOVIEN, DETAI, THAMGIADT
 where GIAOVIEN. MAGV = THAMGIADT. MAGV and THAMGIADT. MADT = DETAI.MADT

  --lấy ra thông tin giáo viên tham gia đề tài nhiều hơn 1 lần
 SELECT Giaovien.HOTEN, DETAI.TENDT From GIAOVIEN, DETAI, THAMGIADT
 where GIAOVIEN. MAGV = THAMGIADT. MAGV and THAMGIADT. MADT = DETAI.MADT
 --> bài này phải học truy vấn lồng mới làm được 
 --Bài tập
 --1. Xuất ra thông tin giáo viên và giáo viên quản lí chủ nhiệm của người đó
 SELECT GIAOVIEN. HOTEN, FROM GIAOVIEN
 WHERE GIAOVIEN.GVQLCM = GIAOVIEN. MAGV

 --2. Xuất ra số lượng giáo viên của khoa cntt
  SELECT Count(gv.MAGV) FROM GIAOVIEN AS gv, BOMON as bm, KHOA as k
 WHERE gv.MABM = bm.MABM and bm.MAKHOA = k.MAKHOA and k.MAKHOA = N'CNTT'
 --3. Xuất ra thông tin giáo viên và đề tài người đó tham gia khi kết quả là đạt
 SELECT gv.HOTEN, dt.TENDT FROM GIAOVIEN as gv, THAMGIADT as tg, DETAI as dt
 WHere gv. MAGV = tg.MAGV and tg.MADT = dt.MADT and tg.KETQUA = N'Đạt'

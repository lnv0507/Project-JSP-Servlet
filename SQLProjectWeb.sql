create DATABASE projectweb
use projectweb
go

create table account(
IDACCOUNT VARCHAR(255) PRIMARY KEY,
TENACCOUNT VARCHAR(255),
SODIENTHOAI VARCHAR(10),
DIACHI VARCHAR(255),
EMAIL VARCHAR(50),
CHUCVU VARCHAR(5),
PASSWORD VARCHAR(255)
);


CREATE table product(
IDPRODUCT VARCHAR(50) PRIMARY KEY,
TENPRODUCT VARCHAR(255),
LOAI VARCHAR(	50),
CHATLIEU VARCHAR(50),
GIATIEN int,
SOLUONGTRONGKHO INT,
DANHGIA VARCHAR(255)
);

ALTER table product MODIFY column DANHGIA NVARCHAR(255)
ALTER table product MODIFY column tinhtrang NVARCHAR(100)
ALTER table product MODIFY column LOAI NVARCHAR(50)
ALTER table product MODIFY column CHATLIEU NVARCHAR(50)
 
alter table product
add column tinhtrang varchar(100)

alter table product
add column image BLOB


CREATE TABLE lienhe(
MALIENHE VARCHAR(50) PRIMARY KEY,
EMAIL VARCHAR(255),
SODIENTHOAI VARCHAR(10),
MUCCANLIENHE VARCHAR (255),
NOIDUNGLIENHE NVARCHAR(40000),
IDACCOUNT VARCHAR(255),
FOREIGN KEY(IDACCOUNT) REFERENCES account(IDACCOUNT)
);

CREATE TABLE giohang(
MAGIOHANG VARCHAR(50) PRIMARY KEY,
IDACCOUNT VARCHAR(255),
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT)
);

CREATE table giaiquyetlienhe(
IDACCOUNT VARCHAR(255),
MALIENHE VARCHAR(50),
TRANGTHAI VARCHAR(20),
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT),
FOREIGN KEY(MALIENHE) REFERENCES lienhe(MALIENHE)
);

create table thietke(
MATHIETKE VARCHAR (50) PRIMARY KEY,
TENTHIETKE VARCHAR(255)
);
create table chitietthietke(
MATHIETKE VARCHAR(50),
MASANPHAM VARCHAR(50),
SOLUONG INT,
FOREIGN KEY(MATHIETKE) REFERENCES thietke(MATHIETKE)
);

CREATE TABLE tintuc(
matintuc varchar(50) PRIMARY KEY,
tieude nvarchar(100),
noidung nvarchar (4000),
IDACCOUNT VARCHAR(50),
NGAYDANG DATE,
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT)
);


CREATE TABLE DONHANG(
MADONHANG VARCHAR(50) PRIMARY KEY,
MAGIOHANG VARCHAR(50),
TONGTHANHTIEN INT,
FOREIGN KEY(MAGIOHANG) REFERENCES GIOHANG(MAGIOHANG)
);

CREATE TABLE chitietdonhang(
MADONHANG VARCHAR(50),
IDPRODUCT VARCHAR(50),
SOLUONG INT,
FOREIGN KEY(MADONHANG) REFERENCES DONHANG(MADONHANG),
FOREIGN KEY(IDPRODUCT) REFERENCES product(IDPRODUCT)
);

CREATE TABLE DATHANG(
MADATHANG VARCHAR(50),
MAGIOHANG VARCHAR(50),
SOLUONG INT,
FOREIGN KEY(MAGIOHANG) REFERENCES GIOHANG(MAGIOHANG)
);

CREATE TABLE YEUTHICH(
IDACCOUNT VARCHAR(255),
IDPRODUCT VARCHAR(50),
FOREIGN KEY(IDPRODUCT) REFERENCES product(IDPRODUCT),
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT)
);

CREATE TABLE donvivanchuyen(
MADONVIVANCHUYEN VARCHAR(50) PRIMARY KEY,
TENDONVIVANCHUYEN VARCHAR(255),
PHIVANCHUYEN INT
);

CREATE TABLE HOADON(
MAHOADON VARCHAR(50) PRIMARY KEY,
MADONVIVANCHUYEN VARCHAR(50),
MADONHANG VARCHAR(50),
THANHTIEN INT,
FOREIGN KEY(MADONVIVANCHUYEN) REFERENCES donvivanchuyen(MADONVIVANCHUYEN),
FOREIGN KEY(MADONHANG) REFERENCES DONHANG(MADONHANG)
);

CREATE TABLE GIAOHANG(
MAHOADON VARCHAR(50),
MADONVIVANCHUYEN VARCHAR(50),
IDACCOUNT VARCHAR(255),
DIACHI VARCHAR(255),
NGAYGIAO DATE,
TRANGTHAI VARCHAR(50),
FOREIGN KEY(MADONVIVANCHUYEN) REFERENCES donvivanchuyen(MADONVIVANCHUYEN),
FOREIGN KEY(MAHOADON) REFERENCES HOADON(MAHOADON)
);
INSERT INTO PRODUCT (IDPRODUCT, TENPRODUCT, LOAI, CHATLIEU, GIATIEN, SOLUONGTRONGKHO, DANHGIA)
VALUES('MFDTCA701.N09','Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ Tự Nhiên (90cm)','Bàn ăn','Gỗ',2490000,0,'65'),
('MFDTCA701.B09','Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu (90cm)','Bàn ăn','Gỗ',2490000,0,'76'),
('MFDTCA703.B16','Bàn Ăn Gỗ Tràm MOHO MALAGA 301 (Màu Nâu)','Bàn ăn','Gỗ',3490000,0,'43'),
('MFDTCA702.N16','Bàn Ăn Gỗ Sồi MOHO MILAN 901 (Màu Gỗ Tự Nhiên)','Bàn ăn','Gỗ',3490000,0,'37'),
('MFDTCA801.N18','Bàn Ăn Gỗ Sồi MOHO VERONA 901 (1m8)','Bàn ăn','Gỗ',3790000,0,'88'),
('MFDTCA701.B16','Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu','Bàn ăn','Gỗ',3190000,0,'2'),
('MFDTCA701.N16','Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ Tự Nhiên','Bàn ăn','Gỗ',3190000,0,'85'),
('MFDTCA601.W15','Bàn Ăn Gỗ Sồi MOHO BOSTON 901 (1m5)','Bàn ăn','Gỗ',3490000,0,'7'),
('MFDTCA501.G15','Bàn Ăn Gỗ Tràm MOHO MALAGA 302 (1m5)','Bàn ăn','Gỗ',2290000,0,'88'),
('MFDTCA501.G12','Bàn Ăn Gỗ Tràm MOHO MALAGA 302 (1m2)','Bàn ăn','Gỗ',1990000,0,'53'),
('MFDTBJN01.1014','Bàn Ăn Gỗ Cao Su MOHO OSLO 601','Bàn ăn','Gỗ',2490000,0,'43'),
('SETMDFDTCA701.N16.07','Bộ Bàn Ăn 2 Ghế Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ Tự Nhiên (90cm)','Bộ bàn ăn','Gỗ',4088000,0,'11'),
('SETMDFDTCA701.B16.07','Bộ Bàn Ăn 2 Ghế Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu (90cm)','Bộ bàn ăn','Gỗ',4088000,0,'70'),
('SETMFDTCA601.W15.01','Bộ Bàn Ăn 2 băng ngồi Gỗ Sồi MOHO BOSTON 901','Bộ bàn ăn','Gỗ',6470000,0,'91'),
('SETMDFDTCA701.B16.01','Bộ Bàn Ăn 4 Ghế Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu','Bộ bàn ăn','Gỗ',6386000,0,'82'),
('SETMDFDTCA701.B16.03','Bộ Bàn Ghế Ăn 4 Chỗ Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu (Băng Tựa)','Bộ bàn ăn','Gỗ',6778000,0,'32'),
('SETMDFDTCA701.N16.03','Bộ Bàn Ghế Ăn 4 Chỗ Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ (Băng Tựa)','Bộ bàn ăn','Gỗ',6778000,0,'45'),
('SETMDFDTCA701.N16.01','Bộ Bàn Ăn 4 Ghế Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ Tự Nhiên','Bộ bàn ăn','Gỗ',6386000,0,'39'),
('SETMFDTCA702.N16','Bộ Bàn Ăn 4 Ghế Gỗ Sồi MOHO MILAN 901 (Màu Gỗ Tự Nhiên)','Bộ bàn ăn','Gỗ',6686000,0,'87'),
('SETMFDTBJN01.1014','Bộ Bàn Ăn 4 Ghế Gỗ Cao Su MOHO OSLO 601','Bộ bàn ăn','Gỗ',5686000,0,'18'),
('SETMFDTCA801.N18.02','Bộ Bàn Ăn 6 Ghế Gỗ Sồi MOHO VERONA 901','Bộ bàn ăn','Gỗ',8584000,0,'52'),
('SETMFDTCA801.N18.01','Bộ Bàn Ăn 4 Ghế Gỗ Sồi MOHO VERONA 901','Bộ bàn ăn','Gỗ',6986000,0,'34'),
('SETMDFDTCA701.B16.04','Bộ Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu (Kèm 2 Ghế Băng Dài)','Bộ bàn ăn','Gỗ',6670000,0,'85'),
('SETMDFDTCA701.N16.04','Bộ Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ (Kèm 2 Ghế Băng Dài)','Bộ bàn ăn','Gỗ',6670000,0,'62'),
('MFSTCA804.N09','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi MOHO VERONA 901','Bàn sofa','Gỗ',1490000,0,'40'),
('MFSTCA803.G07-1','Set 2 Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO VERONA 801 (Trắng & Xám Xanh)','Bàn sofa','Gỗ',1148000,0,'23'),
('MFSTCA801.W06','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO VERONA 801 (Trắng)','Bàn sofa','Gỗ',549000,0,'79'),
('MFSTCA802.G07','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO VERONA 801 (Xám Xanh)','Bàn sofa','Gỗ',599000,0,'44'),
('MFSTCA803.N06','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO VERONA 802','Bàn sofa','Gỗ',599000,0,'66'),
('MFSTCA604.N09','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi MOHO MILAN 901','Bàn sofa','Gỗ',2790000,0,'79'),
('MFSTCA603.B10','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Thông MOHO VLINE 501 (Nâu)','Bàn sofa','Gỗ',1790000,0,'26'),
('MFSTCA602.N05-N07','Set 2 Bàn Sofa – Bàn Cafe – Bàn Trà Tròn Gỗ Sồi MOHO OSLO 901','Bàn sofa','Gỗ',2089000,0,'13'),
('MFSTCA601.N07','Bàn Sofa – Bàn Cafe – Bàn Trà Tròn Gỗ Sồi MOHO OSLO 901','Bàn sofa','Gỗ',1290000,0,'15'),
('MFSTCA606.N09','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi MOHO MILAN 902','Bàn sofa','Gỗ',1990000,0,'53'),
('MFSTCA602.N05','Bàn Sofa – Bàn Cafe Tròn Gỗ Sồi MOHO OSLO 901','Bàn sofa','Gỗ',799000,0,'54'),
('MFSTCA501.N09','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ MOHO VIENNA 201','Bàn sofa','Gỗ',1290000,0,'35'),
('MFSTCA201.G10','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi MOHO BOSTON 901','Bàn sofa','Gỗ',1790000,0,'74'),
('MFSTBJN01.2003','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi MOHO OSLO 901','Bàn sofa','Gỗ',1490000,0,'14'),
('MFSTBJN02.1003','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO OSLO 601','Bàn sofa','Gỗ',1490000,0,'63'),
('STSAMCOLTAB01.0005','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi Tự Nhiên MOHO MINIMAL (Vuông)','Bàn sofa','Gỗ',1990000,0,'53'),
('STSAMCOLTAB01.0002','Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Sồi Tự Nhiên MOHO NORDIC','Bàn sofa','Gỗ',2990000,0,'30'),
('MFTCBJN01.M16','Tủ Kệ Tivi Gỗ MOHO OSLO 201 Màu Gỗ Phối Trắng','Tủ Tivi','Gỗ',2490000,0,'45'),
('MFTCCA702.N16','Tủ Kệ Tivi Gỗ Sồi MOHO MILAN 902','Tủ Tivi','Gỗ',4490000,0,'42'),
('MFTCCA901.B16','Tủ Kệ Tivi Gỗ Tràm MOHO VLINE 601 Màu Nâu','Tủ Tivi','Gỗ',3990000,0,'9'),
('MFTCCA901.N16','Tủ Kệ Tivi Gỗ Sồi MOHO VLINE 601 (Màu Gỗ Tự Nhiên)','Tủ Tivi','Gỗ',3990000,0,'4'),
('MFTCCA702.N12','Tủ Kệ Tivi Gỗ Sồi MOHO VERONA 902','Tủ Tivi','Gỗ',3490000,0,'0'),
('MFTCCA701.N16','Tủ Kệ Tivi Gỗ Sồi MOHO VERONA 901','Tủ Tivi','Gỗ',4490000,0,'67'),
('MFTCCA601.G14','Tủ Kệ Tivi Gỗ Sồi MOHO BOSTON 901','Tủ Tivi','Gỗ',3290000,0,'77'),
('MFTCCA505.N08-1','Set 2 Tủ Kệ Tivi Gỗ MOHO VIENNA 204','Tủ Tivi','Gỗ',1980000,0,'34'),
('MFTCCA505.N08','Tủ Kệ Tivi Gỗ MOHO VIENNA 204 (Kệ Phải)','Tủ Tivi','Gỗ',990000,0,'66'),
('MFTCCA504.N08','Tủ Kệ Tivi Gỗ MOHO VIENNA 204 (Kệ Trái)','Tủ Tivi','Gỗ',990000,0,'54'),
('MFTCCA503.N16','Tủ Kệ Tivi Gỗ MOHO VIENNA 203','Tủ Tivi','Gỗ',2490000,0,'60'),
('MFTCCA502.N16','Tủ Kệ Tivi Gỗ MOHO VIENNA 202','Tủ Tivi','Gỗ',2490000,0,'71'),
('MFTCCA201.N14','Tủ Kệ Tivi Gỗ MOHO TORINO 201','Tủ Tivi','Gỗ',1990000,0,'27'),
('MFTCBJN01.1016','Tủ Kệ Tivi Gỗ MOHO OSLO 201','Tủ Tivi','Gỗ',2490000,0,'42'),
('LS625003R9','Tủ Kệ Tivi Mini MOHO','Tủ Tivi','Gỗ',1290000,0,'46'),
('STSAMCOLSHE01.0004','Tủ Kệ Tivi Gỗ Sồi MOHO MINIMAL (1 Ngăn Kéo)','Tủ Tivi','Gỗ',2490000,0,'42'),
('STSAMCOLCHE01.0004','Tủ Kệ Tivi Gỗ Sồi MOHO MINIMAL (4 Ngăn Kéo)','Tủ Tivi','Gỗ',5990000,0,'34'),
('STSAMCOLSHE01.0006','Tủ Kệ Tivi Gỗ Sồi MOHO MINIMAL (2 Hộc Tủ + 1 Ngăn Kéo)','Tủ Tivi','Gỗ',4490000,0,'2'),
('MFDCCAD06.N05','Ghế Ăn Gỗ Cao su Tự Nhiên MOHO TORINO (Màu gỗ)','Ghế','Gỗ',899000,0,'41'),
('MFDCCAD05.N05','Ghế Ăn Gỗ Tần Bì Tự Nhiên MOHO PALERMO (Màu Gỗ)','Ghế','Gỗ',1390000,0,'94'),
('MFDCCAD05.B05','Ghế Ăn Gỗ Tần Bì Tự Nhiên MOHO PALERMO (Màu nâu)','Ghế','Gỗ',1390000,0,'82'),
('MFDCCAD04.N05','Ghế Ăn Gỗ Cao su Tự Nhiên MOHO SOFIA','Ghế','Gỗ',899000,0,'35'),
('MFDCCA601.N06','Ghế Ăn Gỗ Cao Su Tự Nhiên MOHO VERONA 601','Ghế','Gỗ',799000,0,'42'),
('MFDBCA501.W11','Ghế Băng Dài Gỗ Tràm MOHO BOSTON 901','Ghế','Gỗ',1490000,0,'98'),
('MFDCCA701.B05','Ghế Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601 (Màu Nâu)','Ghế','Gỗ',799000,0,'51'),
('MFDCCA701.N05','Ghế Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601','Ghế','Gỗ',799000,0,'99'),
('MFDCCA501.N08','Ghế Ăn Gỗ Cao Su Tự Nhiên MOHO OSLO 601','Ghế','Gỗ',799000,0,'51'),
('MFDBCA602.B11','Ghế Băng Dài Gỗ Cao Su Tự Nhiên MOHO VLINE 602 Màu Nâu','Ghế','Gỗ',1490000,0,'50'),
('MFBSCA601.B11','Ghế Băng Dài Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Nâu','Ghế','Gỗ',1990000,0,'57'),
('MFDBCA602.N11','Ghế Băng Dài Gỗ Cao Su Tự Nhiên MOHO VLINE 602 Màu Gỗ Tự Nhiên','Ghế','Gỗ',1490000,0,'98'),
('MFDBCA601.N11','Ghế Băng Dài Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Màu Gỗ Tự Nhiên','Ghế','Gỗ',1990000,0,'28'),
('MFBNCA801.N16','Giường Ngủ Gỗ Sồi MOHO MILAN 901 Màu Gỗ Tự Nhiên','Giường ngủ','Gỗ',5990000,0,'49'),
('MFBNCA804.B16','Giường Ngủ Gỗ Tràm MOHO VLINE 601 Màu Nâu','Giường ngủ','Gỗ',5990000,0,'68'),
('MFBNCA804.N16','Giường Ngủ Gỗ Sồi MOHO VLINE 601 Màu Gỗ Tự Nhiên','Giường ngủ','Gỗ',5990000,0,'37'),
('MFBNCA502.N16','Giường Ngủ Gỗ Tràm MOHO MALAGA 302','Giường ngủ','Gỗ',3990000,0,'11'),
('MFBNCA501.N16','Giường Ngủ Gỗ Tràm MOHO MALAGA 301','Giường ngủ','Gỗ',3490000,0,'43'),
('MFSNCA601.G17','Ghế Sofa Gỗ Cao Su MOHO MILAN 901','Sofa','Gỗ',7990000,0,'44'),
('MFSNCA602.G16','Ghế Sofa Gỗ Cao Su MOHO MILAN 902 (Màu Gỗ Tự Nhiên)','Sofa','Gỗ',5990000,0,'54'),
('MFSNCA702.N18','Ghế Sofa Gỗ Cao Su MOHO VLINE 601 (Màu Gỗ Tự Nhiên)','Sofa','Gỗ',7990000,0,'50'),
('MFSNCA702.B18','Ghế Sofa Gỗ Cao Su MOHO VLINE 601 (Màu Nâu)','Sofa','Gỗ',7990000,0,'29'),
('MFSHCA801.G08','Tủ Giày – Kệ Giày MOHO BOSTON 901','Tủ giày','Gỗ',2490000,0,'33'),
('MFCDCA901.B08','Tủ Giày – Tủ Trang Trí Gỗ Tràm MOHO VLINE 601 (Màu Nâu)','Tủ giày','Gỗ',2990000,0,'21'),
('MFCDCA901.N08','Tủ Giày – Tủ Trang Trí Gỗ Sồi MOHO VLINE 601 (Màu Gỗ Tự Nhiên)','Tủ giày','Gỗ',2990000,0,'22'),
('MFSHCA601.N08','Tủ Giày – Tủ Trang trí MOHO OSLO 901','Tủ giày','Gỗ',1990000,0,'45'),
('MFSHCA502.N07','Tủ Giày – Tủ Trang Trí Gỗ MOHO VIENNA 202','Tủ giày','Gỗ',1790000,0,'7'),
('MFSHCA602.G07','Tủ Giày – Tủ Trang Trí Gỗ Sồi MOHO BOSTON 901','Tủ giày','Gỗ',2490000,0,'43'),
('MFTCCA505.N08-2','Tủ Giày Mini Gỗ MOHO VIENNA 204','Tủ giày','Gỗ',990000,0,'28'),
('MFDSCA801.N11','Kệ Trang Trí – Kệ Đa Năng Gỗ Sồi MOHO VLINE 801 Màu Gỗ Tự Nhiên','Tủ kệ','Gỗ',1990000,0,'25'),
('MFDSCA801.B11','Kệ Trang Trí – Kệ Đa Năng Gỗ Tràm MOHO VLINE 801 Màu Nâu','Tủ kệ','Gỗ',1990000,0,'17'),
('MFCDCA801.N08','Tủ Ngăn Kéo Gỗ Sồi MOHO MILAN 901','Tủ kệ','Gỗ',4490000,0,'28'),
('MFCDCA901.N08','Tủ Giày – Tủ Trang Trí Gỗ Sồi MOHO VLINE 601 (Màu Gỗ Tự Nhiên)','Tủ kệ','Gỗ',2990000,0,'45'),
('MFSHCA601.N08','Tủ Giày – Tủ Trang trí MOHO OSLO 901','Tủ kệ','Gỗ',1990000,0,'48'),
('MFBSCA601.N16','Kệ Gỗ – Kệ Sách MOHO OSLO 901 (1m6)','Tủ kệ','Gỗ',1990000,0,'92'),
('MFSHCA502.N07','Tủ Giày – Tủ Trang Trí Gỗ MOHO VIENNA 202','Tủ kệ','Gỗ',1790000,0,'69'),
('MFBSCA602.N16','Kệ Gỗ – Kệ Sách MOHO OSLO 902','Tủ kệ','Gỗ',2290000,0,'76'),
('MFBSCA603.N14','Kệ Gỗ – Kệ Sách MOHO OSLO 903','Tủ kệ','Gỗ',1790000,0,'59'),
('MFBSCA601.N12','Kệ Gỗ – Kệ Sách MOHO OSLO 901 (1m2)','Tủ kệ','Gỗ',1490000,0,'74'),
('MFCDCA602.G09','Tủ Ngăn Kéo Gỗ Sồi MOHO BOSTON 901','Tủ kệ','Gỗ',3790000,0,'65'),
('MFCDCA601.N07','Tủ Ngăn Kéo Gỗ Cao Su MOHO OSLO 901','Tủ kệ','Gỗ',2490000,0,'22'),
('MFSHCA602.G07','Tủ Giày – Tủ Trang Trí Gỗ Sồi MOHO BOSTON 901','Tủ kệ','Gỗ',2490000,0,'56'),
('MFCDCA501.N08','Tủ Ngăn Kéo Gỗ MOHO VIENNA 201 3 Ngăn Kéo','Tủ kệ','Gỗ',1990000,0,'28'),
('LS625002R9','Tủ Ngăn Kéo MOHO VANI','Tủ kệ','Gỗ',2490000,0,'99'),
('STSAMCOLCHE01.0002','Tủ Ngăn Kéo Gỗ Sồi MOHO MINIMAL (3 Ngăn Kéo)','Tủ kệ','Gỗ',4490000,0,'4'),
('STSAMCOLCHE01.0003','Tủ Ngăn Kéo Gỗ Sồi MOHO MINIMAL (4 Ngăn Kéo)','Tủ kệ','Gỗ',4990000,0,'45'),
('MFWRCA801.N14','Tủ Quần Áo Gỗ 3 cánh MOHO MILAN 901','Tủ quần áo','Gỗ',8990000,0,'38'),
('MFWRCA702.G10','Tủ Quần Áo Gỗ MOHO BOSTON 902','Tủ quần áo','Gỗ',5790000,0,'46'),
('MFWRCA507.M05','Tủ Quần Áo Gỗ Kệ Ngăn MOHO VIENNA 201 Màu Gỗ Phối Trắng','Tủ quần áo','Gỗ',2990000,0,'8'),
('MFWRCA508.M05','Tủ Quần Áo Gỗ Thanh Treo MOHO VIENNA 201 Màu Gỗ Phối Trắng','Tủ quần áo','Gỗ',2990000,0,'68'),
('MFWRCA509.M10','Tủ Quần Áo MOHO VIENNA 201 Màu Gỗ Phối Trắng','Tủ quần áo','Gỗ',4990000,0,'47'),
('SET2TUQUANAO(01)-3','Set Tủ Quần Áo MOHO VIENNA 201 3 Cánh Màu Gỗ Phối Trắng (Thanh Treo)','Tủ quần áo','Gỗ',7980000,0,'59'),
('SET3TUQUANAO-2','Set Tủ Quần Áo MOHO VIENNA 201 4 Cánh Màu Gỗ Phối Trắng','Tủ quần áo','Gỗ',10970000,0,'34'),
('SET2TUQUANAO(01)-1-3','Set Tủ Quần Áo MOHO VIENNA 201 3 Cánh Màu Gỗ Phối Trắng (Kệ Ngăn)','Tủ quần áo','Gỗ',7980000,0,'88'),
('SET2TUQUANAO(01)-1-1-1-1','Set Tủ Quần Áo MOHO VIENNA 201 2 Cánh Màu Gỗ Phối Trắng','Tủ quần áo','Gỗ',5980000,0,'4'),
('SET2TUQUANAO(01)-1-2','Set Tủ Quần Áo MOHO VIENNA 201 3 Cánh (Kệ Ngăn) Màu Trắng','Tủ quần áo','Gỗ',7980000,0,'99'),
('SET2TUQUANAO(01)-1-1-1','Set Tủ Quần Áo MOHO VIENNA 201 2 Cánh Màu Trắng','Tủ quần áo','Gỗ',5980000,0,'11'),
('SET2TUQUANAO(01)-2','Set Tủ Quần Áo MOHO VIENNA 201 3 Cánh (Thanh Treo) Màu Trắng','Tủ quần áo','Gỗ',7980000,0,'66'),
('SET3TUQUANAO-1','Set Tủ Quần Áo MOHO VIENNA 201 4 Cánh Màu Trắng','Tủ quần áo','Gỗ',10970000,0,'77'),
('MFWRCA505.W05','Tủ Quần Áo Gỗ Thanh Treo MOHO VIENNA 201 Màu Trắng','Tủ quần áo','Gỗ',2990000,0,'13'),
('MFWRCA504.W05','Tủ Quần Áo Gỗ Kệ Ngăn MOHO VIENNA 201 Màu Trắng','Tủ quần áo','Gỗ',2990000,0,'79'),
('MFWRCA506.W10','Tủ Quần Áo Gỗ MOHO VIENNA 201 Màu Trắng','Tủ quần áo','Gỗ',4990000,0,'45'),
('SET2TUQUANAO(01)-1-1','Set Tủ Quần Áo MOHO VIENNA 201 2 Cánh','Tủ quần áo','Gỗ',5980000,0,'17'),
('SET2TUQUANAO(01)-1','Set Tủ Quần Áo MOHO VIENNA 201 3 Cánh (Kệ Ngăn)','Tủ quần áo','Gỗ',7980000,0,'47'),
('SET3TUQUANAO','Set Tủ Quần Áo MOHO VIENNA 201 4 Cánh','Tủ quần áo','Gỗ',10970000,0,'5'),
('SET2TUQUANAO(01)','Set Tủ Quần Áo MOHO VIENNA 201 3 Cánh (Thanh Treo)','Tủ quần áo','Gỗ',7980000,0,'74'),
('MFDSCA801.N11','Kệ Trang Trí – Kệ Đa Năng Gỗ Sồi MOHO VLINE 801 Màu Gỗ Tự Nhiên','Tủ đầu giường','Gỗ',1990000,0,'93'),
('MFDSCA801.B11','Kệ Trang Trí – Kệ Đa Năng Gỗ Tràm MOHO VLINE 801 Màu Nâu','Tủ đầu giường','Gỗ',1990000,0,'7'),
('MFBSCA802.B05','Tủ Đầu Giường Gỗ Tràm MOHO VLINE 801 (Màu Nâu)','Tủ đầu giường','Gỗ',1790000,0,'79'),
('MFBSCA803.B05','Kệ Đầu Giường Gỗ Tràm MOHO VLINE 802 Màu Nâu','Tủ đầu giường','Gỗ',1290000,0,'44'),
('MFBSCA801.N05','Tủ Đầu Giường Gỗ Sồi MOHO VERONA 601','Tủ đầu giường','Gỗ',2190000,0,'71'),
('MFBSCA802.N05','Tủ Đầu Giường Gỗ Sồi MOHO VLINE 801','Tủ đầu giường','Gỗ',1790000,0,'42'),
('MFBSCA803.N05','Kệ Đầu Giường Gỗ Sồi MOHO VLINE 802','Tủ đầu giường','Gỗ',1290000,0,'81'),
('MFBSCA701.N05','Tủ Đầu Giường Gỗ Sồi MOHO MILAN 901','Tủ đầu giường','Gỗ',1990000,0,'61'),
('MFBSCA601.G05','Tủ Đầu Giường Gỗ Sồi MOHO BOSTON 901','Tủ đầu giường','Gỗ',1790000,0,'74'),
('MFBSCA501.N05','Tủ Đầu Giường Gỗ MOHO VIENNA 201','Tủ đầu giường','Gỗ',990000,0,'79'),
('STSAMCOLTAB01.0004','Tủ Đầu Giường MOHO MINIMAL','Tủ đầu giường','Gỗ',2990000,0,'56');

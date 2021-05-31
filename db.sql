CREATE DATABASE [photocopy_shop]
USE [photocopy_shop]
/* create table test dùng để test */
CREATE TABLE test (
   id int IDENTITY(1,1) PRIMARY KEY,
   name nvarchar(255) NOT NULL, /* Email làm tài khoản đăng nhập */
);
/* create table users */
CREATE TABLE users (
   id int IDENTITY(1,1) PRIMARY KEY,
   email nvarchar(255) NOT NULL, /* Email làm tài khoản đăng nhập */
   pwd nvarchar(255), /* Password lưu trữ khi đã mã hóa, không thể dùng từ khóa password */
   full_name nvarchar(100), /* Tên đầu đủ của người dùng */
   addr nvarchar(100), /* Địa chỉ của người dùng, không thể dùng từ khóa address */
   phone varchar(10), /* số điện thoại của người dùng */
   role nvarchar(10), /* Role: quyền hạn của người dùng (customer, admin) */
);

/* create table users */
CREATE TABLE product_category (
  id int IDENTITY(1,1) PRIMARY KEY,
  name nvarchar(255) NOT NULL, /* Danh mục sản phẩm: Photocopy, fax, in đen trắng, in màu, scan */
);

/* create table users */
CREATE TABLE photocopy_machine (
   id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
   machine_name nvarchar(255), /* Tên máy: Máy photocopy công suất lớn Ricoh Aficio MP 2555SP */
   machine_type nvarchar(255), /* Loại máy: Photocopy đen trắng */
   machine_feature nvarchar(255), /* Chức năng: Copy + In mạng + Scan màu + Duplex + ARDF */
   paper_tray nvarchar(255),/* Khay giấy: 01 x 550 tờ, khay tay 100 tờ */
   paper_size nvarchar(255), /* Khổ giấy: A3/A4 */
   print_speed nvarchar(255), /* Tốc độ in: 25 trang/phút */
   is_reverse_the_clone bit, /* Đảo mặt bản sao: Có */
   has_ARDF bit, /* Bộ nạp và đảo bản gốc tự động (ARDF): Có sẵn */
   communication_gate varchar(255), /* Cổng giao tiếp: USB/ LAN */
   ink nvarchar(255), /* Dùng mực: Ricoh 3554S (25.000 trang) */
   guarantee nvarchar(255), /* Bảo hành: 12 tháng tại nơi sử dụng */
   machine_status nvarchar(255), /* Tình trạng máy: 100% mới, nguyên tem, nguyên hộp, CO/CQ */
   category_id int NOT NULL foreign key references product_category(id), /* Danh mục sản phẩm: Photocopy, fax */

   create_at datetime, /* Ngày tạo */
   create_by int NOT NULL foreign key references users(id), /* Người tạo */
   update_at datetime, /* Ngày cập nhật */
   update_by int foreign key references users(id), /* Người cập nhật */
   price float
   );

/* create table cart */
CREATE TABLE cart (
  id int IDENTITY(1,1) PRIMARY KEY,
  customer_id int NOT NULL foreign key references users(id) /* Khác hàng sở hữu giỏ hàng */
);

/* create table cart detail */
CREATE TABLE cart_detail (
  cart_id int NOT NULL foreign key references cart(id),
  photocopy_machine_id int NOT NULL foreign key references photocopy_machine(id), /* Sản phẩnm */
  quantity int /* Số lượng sản phẩm */
);

/* Nếu xóa csdl thì xóa theo thứ tự: cart_detail -> cart -> photocopy_machine -> pruduct_category -> users */
select * from users
insert into users values('nguyen@gmail.com','301220',N'Lê Thị Nguyên',N'TpHCM','0867655232','admin')
insert into users values('thinh@gmail.com','111111',N'Nguyễn Phúc Thịnh',N'Bình Định','0841527352','admin')
insert into users values('anhtuan@gmail.com','222222',N'Phạm Anh Tuấn',N'Bình Dương','0514257362','admin')
insert into users values('haanh@gmail.com','333333',N'Lê Hà Anh',N'Nghệ An','0123756745','customer')
insert into users values('vietanh@gmail.com','444444',N'Hoàng Việt Anh',N'Hà Nội','0853375537','customer')
insert into users values('ha@gmail.com','555555',N'Nguyễn Thanh Hà',N'Hà Tĩnh','0326345267','customer')
insert into users values('hang@gmail.com','333222',N'Phan Thu Hằng',N'Cà Mau','0875434566','customer')
insert into users values('tu@gmail.com','121212',N'Nguyễn Hữu Tú',N'Nam Định','0865445677','customer')
insert into users values('haianh@gmail.com','131313',N'Hoàng Hải Anh',N'Thái Bình','0875355244','customer')
insert into users values('mai@gmail.com','171717',N'Hoàng Mai',N'Thanh Hoá','0753565456','customer')


select * from product_category
insert into product_category values('Photocopy')
insert into product_category values('Fax')
insert into product_category values(N'In màu')
insert into product_category values(N'In trắng đen')
insert into product_category values('Scan')

select * from photocopy_machine
/*Máy Fax*/
insert into photocopy_machine values(N'Máy fax tích hợp in & photo Brother 2840',N'Fax laser đa năng Brother',N'In - Copy - Fax',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'20 trang/phút',0,0,N'USB/LAN',N'Brother TN-2280(2600 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,4400000)

insert into photocopy_machine values(N'Máy in 2 mặt đa chức năng Brother MFC-L2701d',N'Máy in laser đen trắng đa chức Brother',
N'In – Copy – Scan – Fax – Duplex',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút',1,1,N'USB 2.0',N'Brother TN-2385 (2.600 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,5150000)

insert into photocopy_machine values(N'Máy in 2 mặt đa chức năng Brother MFC-L2701dw',N'Máy in laser đen trắng đa chức Brother',
N' In – Copy – Scan – Fax – Duplex – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút',1,1,N'USB/WiFi',N'Brother TN-2385 (2.600 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,6190000)

insert into photocopy_machine values(N'Máy in đa chức năng kèm fax HP Laser 137fnw (4ZB84A)',N'Máy in laser đen trắng đa chức năng HP',
N'In – Copy – Scan – Fax – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'20 trang/phút',1,0,N'USB/ LAN/ WiFi',N' HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,3890000)

insert into photocopy_machine values(N'Máy in laser đa chức năng kèm fax HP M130fw (G3Q60A)',N'Máy in laser đen trắng đa chức năng HP',
N'In – Copy – Scan – Fax – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'22 trang/phút',0,1,N'USB/ LAN/ WiFi',N' HP CF217A (1.600 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,4590000)

insert into photocopy_machine values(N'Máy in laser đa chức năng kèm fax HP M130fn (G3Q59A)',N'Máy in laser đen trắng đa chức năng HP',
N' In – Copy – Scan – Fax – LAN',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'22 trang/phút',0,1,N'USB/ LAN',N'HP CF217A (1.600 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,3550000)

insert into photocopy_machine values(N'Máy in 2 mặt đa chức năng HP M428fdw (W1A30A)',N'Máy in laser đen trắng đa chức năng HP',
N'In – Copy – Scan – Fax – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'38 trang/phút',1,1,N'USB/ WiFi',N'HP CF276A (3.000 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,8690000)

insert into photocopy_machine values(N'Máy in 2 mặt đa chức năng Ricoh SP 230SFNw',N'Máy in laser đen trắng đa chức năng HP',
N'In – Copy – Scan – Fax – Duplex – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút',1,1,N'USB/ LAN/ WiFi',N'Ricoh SP230 (3.000 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,6150000)

insert into photocopy_machine values(N'Máy in laser đa chức năng Ricoh SP 325SFNw',N'Máy in laser đen trắng đa chức năng Ricoh',
N'n – Copy – Scan – Fax – Duplex – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút',1,1,N'USB/ LAN/ WiFi',N'Ricoh SP310LS (2.000 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,5900000)

insert into photocopy_machine values(N'Máy in laser màu đa năng Ricoh SP C250SF',N'Máy in laser đen trắng đa chức năng Ricoh',
N' In – Copy – Scan – Fax – Duplex – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'20 trang/phút',1,0,N'USB/ LAN/ WiFi',N' Ricoh 250S B/ C/ M/ Y (5.000 trang)',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,11000000)

insert into photocopy_machine values(N'Máy in laser đa chức năng Ricoh SP 325SFNw',N'Máy in laser đen trắng đa chức năng Ricoh',
N'n – Copy – Scan – Fax – Duplex – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút',1,1,N'USB/ LAN/ WiFi',N'Ricoh 360S B/ C/ M/ Y (7.000 trang)',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,5900000)

insert into photocopy_machine values(N'Máy in laser đa chức năng Ricoh SP 212SFNw',N'Máy in laser đen trắng đa chức năng Ricoh',
N'In – Copy – Scan – Fax – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'22 trang/phút',0,1,N'USB/ LAN/ WiFi',N'Ricoh SP210S (2.600 trang)',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,3890000)

insert into photocopy_machine values(N'Máy in đa năng Ricoh SP210SF',N'Máy in laser đen trắng đa chức năng Ricoh',
N'In – Copy – Scan – Fax – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'22 trang/phút',0,1,N'USB',N' Ricoh SP210S (2.600 trang)',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,2890000)

insert into photocopy_machine values(N'Máy in đa chức năng Canon imageCLASS MF247dw',N' Máy in laser đen trắng đa chức năng Canon',
N'In – Copy – Scan – Fax – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N' 27 trang/phút',1,1,N'USB/ LAN/ WiFi',N'Cartridge 337 (2.000 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,7490000)

insert into photocopy_machine values(N'Máy in 2 mặt đa chức năng HP M227fdn (G3Q79A)',N' Máy in laser đen trắng đa chức năng HP',
N'In – Copy – Scan – Fax – LAN – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'28 trang/phút',1,1,N' USB/ LAN',N' HP CF230A (1.600 trang)',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,5090000)

insert into photocopy_machine values(N'Máy in laser màu Ricoh SP C360SFNw',N'Máy in laser màu đa chức năng Ricoh',
N'In – Copy – Scan – Fax – Duplex – WiFi',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút',1,0,N'USB/ LAN/ WiFi',N'Ricoh 360S B/ C/ M/ Y (7.000 trang)',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',2,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,18350000)



/*Máy Scan*/
insert into photocopy_machine values(N'Máy quét ADF tốc độ cao Canon DR-C225',N'Máy scan ADF',
N'Scan',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'25 trang/phút ; 50 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,18350000)

insert into photocopy_machine values(N'Máy quét ADF tốc độ cao Canon DR-C225',N'Máy scan ADF',
N'Scan',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'25 trang/phút ; 50 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,10990000)

insert into photocopy_machine values(N'Máy quét HP Digital Sender Flow 8500 fn1 (L2719A)',N'Máy scan ADF',
N'Scan',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'60 trang/phút, 120 hình ảnh/phút',1,1,N'USB/LAN',N'',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,54400000)

insert into photocopy_machine values(N'Máy quét HP Scanjet Enterprise Flow 5000 S2 (L2751A)',N'Máy scan ADF',
N'Scan',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',N'30 trang/phút, 60 hình ảnh/phút',1,1,N'USB 2.0',N'',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,12500000)

insert into photocopy_machine values(N'Máy quét HP Scanjet Enterprise Flow 7000 S2 (L2730B)',N'Máy scan ADF',
N'Scan',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 309 mm.',N'45 trang/phút, 90 ảnh/phút',1,1,N'USB 2.0',N'',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,21000000)

insert into photocopy_machine values(N'Máy quét HP Scanjet Enterprise Flow N9120',N'Máy scan ADF',
N'Scan',
N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 300 x 864 mm',N'50 trang/phút, 100 ảnh/phút',1,1,N'USB 2.0',N'',N'Chính hãng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,62450000)

insert into photocopy_machine values(N'Máy quét HP ScanJet N6350',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 210 x 356 mm (ADF), 210 x 297 mm (flatbed)',
N'50 trang/phút, 100 ảnh/phút',1,1,N'USB/ LAN',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,13740000)

insert into photocopy_machine values(N'Máy quét HP Scanjet Pro 3000 S2 (L2737A)',N'Máy scan nạp giấy',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 215.9 x 864 mm',
N'20 trang/phút, 40 ảnh/phút',1,1,N'USB',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,5500000)

insert into photocopy_machine values(N'Máy quét tài liệu chuyên dụng Canon DR-F120',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'20 trang/phút ; 36 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,6700000)

insert into photocopy_machine values(N'Máy scan 2 mặt không dây Epson DS-570w',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'235 trang/phút',1,1,N'USB/ WiFi',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,13300000)

insert into photocopy_machine values(N'Máy scan 2 mặt không dây HP 4500 FN1 (L2749A)',N'Máy scan phẳng không dây ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'30 trang/phút, 60 hình ảnh/phút',1,1,N' USB/ WiFi',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,17100000)

insert into photocopy_machine values(N'Máy scan 2 mặt nhỏ gọn Canon P-215II',N' Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'15 trang/phút (trắng đen); 10 trang/phút (màu)',1,1,N'USB 2.0, USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,6350000)

insert into photocopy_machine values(N'Máy scan 2 mặt không dây Epson DS-570w',N' Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'35 trang/phút',1,1,N'USB/ WiFi',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,13300000)

insert into photocopy_machine values(N'Máy scan 2 mặt không dây HP 4500 FN1 (L2749A)',N'Máy scan phẳng không dây ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'30 trang/phút, 60 hình ảnh/phút',1,1,N'USB/ WiFi',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,17100000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Canon DR-C240',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'45 trang/phút ; 90 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,14300000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Canon DR-M140',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'40 trang/phút ; 90 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,27300000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Canon DR-M260',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'60 trang/phút ; 90 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,25700000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Epson DS-1630',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'90 hình/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,9290000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Epson DS-410',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'26 trang/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,71900000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Epson DS-530',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'35 trang/phút',1,1,N'USB/ LAN',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,8450000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao Epson DS-770',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A4',
N'45 trang/phút',1,1,N'USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,17800000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP 2000 S1 (L2759A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N' A4/A5',
N'30 trang/phút hoặc 60 ảnh/phút',1,1,N'USB 2.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,6500000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP 2000 S2 (6FW06A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N' A4/A5',
N'35 trang/phút hoặc 70 ảnh/phút',1,1,N'USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,7400000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP 5000 S3 (L2751A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 309 mm',
N' 30 trang/phút, 60 hình ảnh/phút',1,1,N'USB',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,11500000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP 5000 S4 (L2755A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 309 mm',
N' 30 trang/phút, 60 hình ảnh/phút',1,1,N'USB 2.0/ USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,14300000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP ScanJet 7000 S3 (L2757A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 310 mm',
N'màu 5.98s/trang; A4 6.51s/trang',1,1,N'USB 2.0/ USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,17500000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP Scanjet 7500 (L2725B)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 310 mm',
N'50 trang/phút, 100 ảnh/phút',1,1,N'USB 2.0/ USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,26000000)


insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP ScanJet Pro 3500 F1 (L2741A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 297 mm',
N'25 trang/phút, 50 hình ảnh/phút',1,1,N'USB 2.0/ USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,10000000)

insert into photocopy_machine values(N'Máy scan 2 mặt tốc độ cao HP Scanjet 7500 (L2725B)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 310 mm',
N'20 trang/phút, 40 hình ảnh/phút',1,1,N'USB 2.0/ USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,52500000)


insert into photocopy_machine values(N'Máy scan 2 mặt tự động HP 3000 S3 (L2737A)',N'Máy scan ADF',
N'Scan',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa 216 x 310 mm',
N'35 trang/phút, 70 ảnh/phút',1,1,N'USB 2.0/ USB 3.0',N'',N'12 tháng tại nơi sử dụng',
N'100% mới, nguyên tem, nguyên hộp, CO/CQ',5,N'2021-02-14 22:02:01',2,'2021-02-19 22:02:01',2,8300000)

insert into photocopy_machine (machine_name,machine_type,machine_feature,paper_tray,paper_size,print_speed,is_reverse_the_clone,has_ARDF,communication_gate,ink,guarantee,machine_status,category_id,create_at,create_by,update_at,update_by,price) values
(N'Máy photocopy Canon iR2004',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu',N'01 x 250 tờ, khay tay 100 tờ',N'A3/A4','20 trang/phút',0,0,'USB',N'Canon NPG-59 (10.000 trang)',N'12 tháng hoặc 40.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,3212312),
(N'Máy Photocopy Canon iR2535',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','35 trang/phút',1,1,'USB/ LAN',N'Canon NPG-51 (14.600 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,2789999),
(N'Máy photocopy Canon iR2545W',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','45 trang/phút',1,1,'USB/ LAN',N'Canon NPG-51 (14.600 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,30984993),
(N'Máy photocopy công suất lớn Canon iR2006n',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','20 trang/phút',1,1,'USB/ LAN/ WiFi',N'Canon NPG-59 (10.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 23400000),
(N'Máy photocopy công suất lớn Canon iR2520W',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','20 trang/phút',1,1,'USB/ LAN/',N'Canon NPG-51 (14.600 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,27800000),
(N'Máy photocopy công suất lớn Canon iR2525W',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','25 trang/phút',1,1,'USB/ LAN/',N'Canon NPG-51 (14.600 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,29839999),
(N'Máy photocopy công suất lớn Canon iR2530W',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','30 trang/phút',1,1,'USB/ LAN/',N'Canon NPG-51 (14.600 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,29034444),
(N'Máy photocopy công suất lớn Canon iR2525i',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','25 trang/phút',1,1,'USB/ LAN/',N'Canon NPG-84 (14.600 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,42300000),
(N'Máy photocopy Canon iR2004n',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – WiFi',N'Không',N'A3/A4','20 trang/phút',1,1,'USB/ LAN/ WiFi',N'Canon NPG-59 (10.000 trang)',N'12 tháng hoặc 40.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,28999999),
(N'Máy photocopy HP LaserJet Managed MFP M72625dn',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','25 trang/phút',1,1,'USB/ LAN',N'HP W9005MC (in khoảng 48.000 trang)',N'12 tháng hoặc 50.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,18999999),
(N'Máy photocopy HP LaserJet Managed MFP M72630dn',N'Máy photocopy đen trắng Canon',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','30 trang/phút',1,1,'USB/ LAN',N'Canon NPG-59 (10.000 trang)',N'12 tháng hoặc 40.000 bản in',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,23477777),
(N'Máy photocopy công suất lớn Ricoh Aficio M2701',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF + LAN',N'01 x 500 tờ, khay tay 100 tờ',N'Tối đa A3','27 trang/phút',1,1,'USB/ LAN',N'Canon NPG-59 (10.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 33674546),
(N'Máy photocopy công suất lớn Ricoh Aficio M2702',N'Máy photocopy đen trắng ',N'Copy – In – Scan màu – Duplex – DADF – LAN',N'Không',N'A3/A4','20 trang/phút',1,1,'USB/ LAN',N'Ricoh 3554S (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1,39678788),
(N'Máy photocopy công suất lớn Ricoh Aficio MP 2555SP',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'01 x 250 tờ, khay tay 100 tờ',N'A3/A4','25 trang/phút',1,1,'USB/ LAN/ WiFi',N'Ricoh 3554S (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 59000000),
(N'Máy photocopy công suất lớn Ricoh MP 2014ad',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF+ LAN',N'01 x 250 tờ, khay tay 100 tờ',N'Tối đa A3','20 trang/phút',1,1,'USB/ LAN/ WiFi',N'MP2014S (7.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 52970000),
(N'Máy photocopy Ricoh Aficio MP 3055SP',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu qua mạng',N'Không',N'Tối đa A3','30 trang/phút',1,1,'USB/ LAN/ WiFi',N'Ricoh 3554S (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 20100000),
(N'Máy photocopy Ricoh Aficio MP 4055SP',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'02 x 550 tờ, khay tay 100 tờ',N'A3/A4','40 trang/phút',1,1,'USB/ LAN/ WiFi',N'Ricoh 4054S (37.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 102900000),
(N'Máy photocopy Ricoh Aficio MP2001',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'Không',N'Tối đa A3','20 trang/phút',1,1,'USB 2.0',N'2501S (9.000 trang)',N'12 tháng ',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 18800000),
(N'Máy photocopy Ricoh Aficio MP2501L',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'Không',N'Tối đa A3','25 trang/phút',1,1,'USB 2.0',N'2501S (9.000 trang)',N'12 tháng hoặc 40.000 bản',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 30500000),
(N'Máy photocopy Ricoh MP 5055SP',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'02 x 550 tờ, khay tay 100 tờ',N'A3/A4','50 trang/phút',1,1,'USB/ LAN',N'Ricoh 4054S (37.000 trang)',N'12 tháng hoặc 50.000 bản',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 131000000),
(N'Máy photocopy công suất lớn Fuji Xerox DocuCentre-V 3060 CPS',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N' 02 x 500 tờ, khay tay 96 tờ',N'A3/A4','30 trang/phút',1,1,'USB/ LAN ',N'CT 202509 (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 49900000),
(N'Máy photocopy công suất lớn Fuji Xerox DocuCentre-V 3065 CPS',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'02 x 500 tờ, khay tay 96 tờ',N'A3/A4','35 trang/phút',1,1,'USB/ LAN',N'CT 202509 (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 53490000),
(N'Máy photocopy công suất lớn Fuji Xerox DocuCentre-V 4070 CPS',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'02 x 500 tờ, khay tay 96 tờ',N'A3/A4','45 trang/phút',1,1,'USB/ LAN',N'CT 202344 (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 74800000),
(N'Máy photocopy công suất lớn Fuji Xerox DocuCentre-V 5070 CPS',N'Máy photocopy đen trắng ',N' Copy/ In mạng/ Scan màu/ Scan mạng/ DADF + Duplex',N'02 x 500 tờ, khay tay 96 tờ',N'A3/A4','55 trang/phút (A4), 28 trang/phút (A3) (in/copy)',1,1,'USB/ LAN',N'CT 202344 (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 92800000),
(N'Máy photocopy Fuji Xerox DocuCentre-V 2060 CPS',N'Máy photocopy đen trắng ',N'Copy/ In mạng/ Scan màu/ Scan mạng/ DADF + Duplex',N'02 x 500 tờ, khay tay 96 tờ',N'A3/A4','25 trang/phút',1,1,'USB/ LAN',N'CT 202509 (25.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 17700000),
(N'Máy photocopy Fuji Xerox S2011 CPS',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'Không',N'A3-A5','20 trang A4/phút, 10 trang A3/phút',1,1,'USB/ LAN',N'CT202384 (9.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 17700000),
(N'Máy photocopy Fuji-Xerox DocuCentre S2110',N'Máy photocopy đen trắng ',N'Copy + In mạng + Scan màu + Duplex + ARDF',N'01 x 250 tờ, khay tay 100 tờ',N'A3/A4','21 trang/phút',1,1,'USB/ LAN',N'CT 202837 (9.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',1,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 18000000),

(N'Máy in 4 màu đa chức năng Brother DCP-T310',N'Máy in phun màu đa năng Brother',N'In – Copy – Scan',N'Không',N'Tối đa A4','27 trang/phút',1,1,'USB 2.0',N'BT6000BK/ BT5000C/ M/ Y (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3390000),
(N'Máy in 4 màu đa chức năng Brother DCP-T510w',N'Máy in phun màu đa năng Brothe',N' In – Copy – Scan – WiFi',N'Không',N'Tối đa A4','27 trang/phút',1,1,'USB/ WiFi',N'BT6000BK/ BT5000C/ M/ Y (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 2380000),
(N'Máy in 4 màu đa chức năng Brother MFC-T810w',N'Máy in phun màu đa năng Brother ',N' In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','27 trang/phút',1,1,'USB/ WiFi',N'BT6000BK/ C/ M/ Y (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 5890000),
(N'Máy in 4 màu đơn năng Epson L1110',N'Máy in phun màu đơn chức Epson',N'In – Copy – Scan – Fax',N'Không',N'Tối đa A4','33 trang đen/phút, 15 trang màu/phút',0,1,'USB 2.0',N'Epson 003 Ecotack (5.000 trang)',N'24 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3350000),
(N'Máy in 5 màu khổ A3 Epson L1300',N'Máy in phun màu đơn năng Epson ',N'In – Copy – Scan – Fax',N'Không',N'Tối đa A3','15 trang/phút',1,1,'USB',N'Epson T6641 – T6644 (6.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 10900000),
(N'Máy in 6 màu A3 Epson L1800',N'Máy in phun màu đơn năng Epson ',N'In – Copy – Scan – Fax',N'Không',N'Tối đa A3','15 trang/phút',1,1,' USB 2.0',N'Epson T6731 – T6736 (6.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 13500000),
(N'Máy in 6 màu đa chức năng Epson L850',N'Máy in phun màu đa năng Epson',N'In – Copy – Scan',N'Không',N'Tối đa A4','38 trang/phút',0,1,' USB 2.0',N'Epson T6731 – T6736 (6.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 9400000),
(N'Máy in 6 màu đơn năng Epson L805',N'Máy in phun màu đơn năng Epson',N'In – Copy – Scan',N'Không',N'Tối đa A4',' 34 trang/phút',0,1,'USB/ WiFi',N'Epson T6731 – T6736 (6.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 5890000),
(N'Máy in laser màu 2 mặt Ricoh SP C260DNw',N'Máy in laser màu đơn chức Ricoh ',N'In – Copy – Scan',N'Không',N' Tối đa A4','20 trang/phút',1,1,' USB/ LAN/ WiFi',N'Ricoh 260S BK/ C/ M/ Y (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6990000),
(N'Máy in laser màu 2 mặt Ricoh SP C261DNw',N'Máy in laser màu đơn chức Ricoh ',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ LAN/ WiFi',N'Ricoh 260S BK/ C/ M/ Y (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 7500000),
(N'Máy in laser màu 2 mặt Ricoh SP C360DNw',N'Máy in laser màu đơn chức Ricoh',N'In – Copy – Scan',N'Không',N'Tối đa A4','30 trang/phút',1,1,'USB/ LAN/ WiFi',N' Ricoh SP C360A (BK/ C/ M/ Y – 5000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 10500000),
(N'Máy in laser màu 2 mặt tốc độ cao HP M454dn (W1Y44A)',N'Máy in laser màu đơn chức HP',N'Copy + In mạng + Scan màu ',N'Không',N'Tối đa A4','28 trang/phút',1,1,'USB/ LAN',N'HP 416BK/ C/ M/ Y (2.300 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 8700000),
(N'Máy in laser màu A3 Canon LBP 841Cdn',N'Máy in laser màu đơn chức Canon ',N'In – Copy – Scan',N'Không',N'Tối đa A3','26 trang/phút',1,1,'USB/ LAN',N'Cartridge 335 BK/ C/ Y/ M (7.000 trang)',N'Chính hãng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 42180000),
(N'Máy in laser màu A3 Canon LBP 843Cx',N'Máy in laser màu đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A3','31 trang/phút',1,1,'USB/ LAN',N'Cartridge 335 BK/ C/ Y/ M (7.000 trang)',N' Chính hãng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 47480000),
(N'Máy in laser màu Brother HL-L3230Cdn',N'Máy in laser màu đơn chức Brother',N'In – Copy – Scan',N'Không',N'Tối đa A4','18 trang/phút',1,1,'USB/ LAN',N'Brother TN-236BK/ C/ M/ Y (4.000 trang)',N'24 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6300000),
(N'Máy in laser màu Brother HL-L8260Cdn',N' Máy in laser màu đơn chức Brother',N'In – Copy – Scan',N'Không',N'Tối đa A4','28 trang/phút',1,1,'USB/ LAN',N' Brother TN-431BK/ C/ M/ Y (5.000 trang)',N'Chính hãng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 7900000),
(N'Máy in laser màu Brother HL-L8360Cdw',N'Máy in laser màu đơn chức Brother',N': In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','31 trang/phút',1,1,'USB/ LAN/ WiFi',N'Brother TN-451BK/ C/ M/ Y (5.000 trang)',N'Chính hãng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 8800000),
(N'Máy in laser màu đa chức năng HP M181fw (T6B71A)',N'Máy in laser màu đa chức năng HP',N': In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','16 trang/phút',0,1,'USB/ LAN/ WiFi',N'HP CF510A/ CF511A/ CF513A/ CF512A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 8490000),
(N'Máy in laser màu đa chức năng HP M281fdn (T6B81A)',N'Máy in laser màu đa chức năng HP',N'In – Copy – Scan – Fax – Duplex – LAN',N'Không',N'Tối đa A4','21 trang/phút',1,1,'USB/ LAN',N'HP CF500A/ CF501A/ CF502A/ CF503A (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 9750000),
(N'Máy in laser màu đa năng Brother DCP-L3551Cdw',N'Máy in laser màu đơn chức Brother',N'In – Copy – Scan – Duplex – WiFi',N'Không',N'Tối đa A4','18 trang/phút',1,1,' USB/ WiFi',N'Brother TN-263BK/ C/ M/ Y (4.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 9750000),
(N'Máy in laser màu đa năng Brother MFC-L3750Cdw',N'Máy in laser màu đơn chức Brother',N'In – Copy – Scan – Fax – Duplex – WiFi',N'Không',N'Tối đa A4','24 trang/phút',1,1,'USB/ LAN/ WiFi',N'Brother TN-263BK/ C/ M/ Y (4.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 12800000),
(N'Máy in laser màu đa năng Brother MFC-L8690Cdw',N'Máy in laser màu đơn chức Brother',N'In – Copy – Scan – Fax – Duplex – WiFi',N'Không',N'Tối đa A4','32 trang/phút',1,1,'USB/ LAN/ WiFi',N'Brother TN-650 (8.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 15490000),
(N'Máy in laser màu đa năng HP M176n (CF547A)',N' Máy in laser màu đa chức năng HP',N'In – Copy – Scan – LAN',N'Không',N'Tối đa A4','116 trang đen/phút, 4 trang màu/phútt',0,1,'USB/ LAN',N'HP CF350A/ CF351A/ CF352A/ CF353A (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6890000),
(N'Máy in laser màu đơn năng Canon LBP 611Cn',N'Máy in laser màu đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','120 trang/phút',0,1,'USB/ LAN/ WiFi',N'Cartridge 045 BK/ C/ Y/ M (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6800000),
(N'Máy in laser màu HP Enterprise M553DN',N'Máy in laser màu đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','40 trang/phút',1,1,'USB/ LAN',N'HP CF360A/ CF361A/ CF362A/ CF363A (10.000 trang)',N'Chính hãng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 16300000),
(N'Máy in laser màu HP M553N',N'Máy in laser màu đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','40 trang/phút',0,1,'USB/ LAN',N'HP CF360A/ CF361A/ CF362A/ CF363A (10.000 trang)',N'Chính hãng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 11890000),
(N'Máy in laser màu khổ A3 HP CP5225dn (CE712A)',N'Máy in laser màu đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A3','30 trang/phút',1,1,'USB/ LAN',N'HP CE270A/ CE271A/ CE272A/ CE273A (15.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 32400000),
(N'Máy in laser màu khổ A3 HP CP5225n (CE711A)',N'Máy in laser màu đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A3','30 trang/phút',10,1,'USB/ LAN',N'HP CE270A/ CE271A/ CE272A/ CE273A (15.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 27900000),
(N'Máy in laser màu tốc độ cao HP M252n (B4A21A)',N'Máy in laser màu đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','18 trang/phút',1,1,'USB/ LAN',N'HP CF400A/ CF401A/ CF402A/ CF403A (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6900000),
(N'Máy in màu 2 mặt Canon LBP 613Cdw',N'Máy in laser màu đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ LAN/ WiFi',N'Cartridge 045 BK/ C/ Y/ M (5.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',3,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6300000),

(N'Máy in 2 mặt Canon LBP 6230dn',N'Máy in laser đen trắng đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','25 trang/phút',1,1,'USB/ LAN',N'Canon 326 (2.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4230000),
(N'Máy in 2 mặt đa chức năng Canon imageCLASS MF221d',N'Máy in laser đen trắng đa chức năng Canon',N'In – Copy – Scan – Duplex',N'Không',N'Tối đa A4','27 trang/phút',1,1,'USB 2.0',N'Canon 337 (2.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4490000),
(N'Máy in 2 mặt kết nối wifi Brother HL-L2366dw',N'Máy in laser đen trắng đơn chức Brother',N'In – Copy – Scan',N'Không',N'Tối đa A4','30 trang/phút',1,1,'USB/ LAN/ WiFi',N'Toner TN-2385 / Drum DR-2385',N'24 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4490000),
(N'Máy in 2 mặt laser Brother HL-B2000d',N'Máy in laser đen trắng đơn chức Brothe',N'In – Copy – Scan',N'Không',N'Tối đa A4','36 trang/phút',1,1,'USB 2.0',N'Toner TN-2385 / Drum DR-2385',N'24 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3290000),
(N'Máy in 2 mặt laser Brother HL-L2321d',N'Máy in laser đen trắng đơn chức Brother',N'In – Copy – Scan',N'Không',N'Tối đa A4','30 trang/phút',1,1,' USB 2.0',N'Toner TN-2385 / Drum DR-2385',N'24 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3390000),
(N'Máy in 2 mặt laser Brother HL-L2361dn',N'Máy in laser đen trắng đơn chức Brother',N'In – Copy – Scan',N'Không',N'Tối đa A4','30 trang/phút',1,1,'USB/ LAN',N'Toner TN-2385 / Drum DR-2385',N'24 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3150000),
(N'Máy in 2 mặt tốc độ cao Canon LBP 226dw',N' Máy in laser đen trắng đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','38 trang/phút',1,1,'USB/ LAN/ WiFi',N'Canon 057 (3.100 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 5000000),
(N'Máy in 2 mặt tốc độ cao HP M402d (C5F92A)',N'Máy in laser đen trắng đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','38 trang/phút',1,1,'USB 2.0',N'HP CF226A (3.100 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4990000),
(N'Máy in cá nhân nhỏ gọn Canon LBP 6030',N'Máy in laser đen trắng đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','19 trang/phút',1,1,'USB 2.0',N'Canon 325 (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3390000),
(N'Máy in đa chức năng kèm fax HP Laser 137fnw (4ZB84A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – Fax – LAN – WiFi',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ LAN/ WiFi',N'HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3890000),
(N'Máy in đa năng nhỏ gọn HP Laser 135a (4ZB82A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB 2.0',N'HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 2730000),
(N'Máy in không dây đa chức năng HP Laser 135w (4ZB83A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – WiFi',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ WiFi',N'HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3250000),
(N'Máy in không dây đa chức năng HP Neverstop 1200w (4RY26A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – WiFi',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ WiFi',N'HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4490000),
(N'Máy in không dây nhỏ gọn Canon LBP 6030w',N'Máy in laser đen trắng đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','28 trang/phút',1,1,'USB/ WiFi',N'Canon 325 (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3700000),
(N'Máy in không dây nhỏ gọn HP Laser 107w (4ZB78A)',N'Máy in laser đen trắng đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ WiFi',N'HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 2550000),
(N'Máy in không dây nhỏ gọn HP Neverstop 1000w (4RY23A)',N'Máy in laser đen trắng đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',1,1,'USB/ WiFi',N'HP W1103A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 2950000),
(N'Máy in laser đa chức năng HP M130nw (G3Q58A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – LAN – WiFi',N'Không',N'Tối đa A4','22 trang/phút',1,1,'USB/ LAN/ WiFi',N'HP CF217A (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3750000),
(N'Máy in laser đa chức năng kèm fax HP M130fw (G3Q60A)',N'Máy in laser đen trắng đa chức năng HP',N' In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','20 trang/phút',0,1,'USB/ LAN/ WiFi',N'HP CF217A (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4590000),
(N'Máy in laser không dây Canon LBP 113W',N'Máy in laser đen trắng đơn chức Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','22 trang/phút',1,1,'USB/ WiFi',N'Canon 047 (1.700 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3650000),
(N'Máy in nhỏ gọn đa chức năng HP Neverstop 1200A (4QD21A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',0,1,'USB 2.0',N' HP W1103A (2.500 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4490000),
(N'Máy in nhỏ gọn đa năng Canon imageCLASS MF3010ae',N'Máy in laser đen trắng đa chức năng Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','18 trang/phút',0,1,'USB 2.0',N'Canon 325 (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 3690000),
(N'Máy in siêu bền Canon LBP 2900 (chính hãng)',N'Máy in laser đen trắng đa chức năng Canon',N'In – Copy – Scan',N'Không',N'Tối đa A4','12 trang/phút',0,1,'USB 2.0',N'Canon 303 (2.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4450000),
(N'Máy in tài liệu nhỏ gọn HP laser 107a (4ZB77A)',N'Máy in laser đen trắng đơn chức HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','20 trang/phút',0,1,'USB 2.0',N'HP W1107A (1.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 2290000),
(N'Máy in nhỏ gọn đa chức năng HP M28a (W2G54A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan',N'Không',N'Tối đa A4','18 trang/phút',0,1,'USB 2.0',N'HP CF279A (1.400 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 2250000),
(N'Máy in 2 mặt đa chức năng Brother DCP-L2520d',N'Máy in laser đen trắng đa chức Brother',N'In – Copy – Scan – Duplex',N'Không',N'Tối đa A4','26 trang/phút',1,1,'USB 2.0',N'Brother TN-2385 (2.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 4090000),
(N'Máy in 2 mặt đa chức năng Brother MFC-L2701d',N'Máy in laser đen trắng đa chức Brother',N'In – Copy – Scan – Duplex',N'Không',N'Tối đa A4','30 trang/phút',1,1,'USB 2.0',N'Brother TN-2385 (2.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 5150000),
(N'Máy in 2 mặt đa chức năng Brother MFC-L2701dw',N'Máy in laser đen trắng đa chức Brother',N'In – Copy – Scan – Fax – Duplex – WiFi',N'Không',N'Tối đa A4','26 trang/phút',1,1,' USB/ WiFi',N'Brother TN-2385 (2.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6190000),
(N'Máy in 2 mặt đa chức năng HP M227fdn (G3Q79A',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – Duplex – LAN',N'Không',N'Tối đa A4','28 trang/phút',1,1,' USB/ LAN',N'HP CF230A (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 5090000),
(N'Máy in 2 mặt đa chức năng HP M227fdw (G3Q75A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','28 trang/phút',1,1,' USB/ WiFi',N'HP CF230A (1.600 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6250000),
(N'Máy in 2 mặt đa chức năng HP M426fdw (F6W15A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','40 trang/phút',1,1,' USB/ WiFi',N'HP CF226A (3.100 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 11200000),
(N'Máy in 2 mặt đa chức năng HP M428FDN (W1A29A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – Fax – LAN',N'Không',N'Tối đa A4','40 trang/phút',1,1,' USB/ LAN',N'HP CF276A (3.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 7690000),
(N'Máy in 2 mặt đa chức năng HP M428fdw (W1A30A)',N'Máy in laser đen trắng đa chức năng HP',N'In – Copy – Scan – Fax – WiFi',N'Không',N'Tối đa A4','38 trang/phút',1,1,' USB/ WiFi',N'HP CF276A (3.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 8690000),
(N'Máy in 2 mặt đa chức năng Ricoh SP 230SFNw',N'Máy in laser đen trắng đa chức năng Ricoh',N'In – Copy – Scan – Fax – Duplex – LAN – WiFi',N'Không',N'Tối đa A4','30 trang/phút',1,1,' USB/ LAN/ WiFi',N'Ricoh SP230 (3.000 trang)',N'12 tháng tại nơi sử dụng',N'100% mới, nguyên tem, nguyên hộp, CO/CQ',4,'2021-02-14 22:02:01',1,'2021-02-19 22:02:01',1, 6150000)







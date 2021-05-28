CREATE DATABASE [photocopy_shop]
USE [photocopy_shop]
/* create table users */
CREATE TABLE users (
    id int IDENTITY(1,1) PRIMARY KEY,
    email varchar(255) NOT NULL,
	pwd varchar(255)
);

/* create table users */
CREATE TABLE product_category (
	id int IDENTITY(1,1) PRIMARY KEY,
    name varchar(255) NOT NULL, /* Danh mục sản phẩm: Photocopy, fax */
);

/* create table users */
CREATE TABLE photocopy_machine (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    machine_name varchar(255), /* Tên máy: Máy photocopy công suất lớn Ricoh Aficio MP 2555SP */
	machine_type varchar(255), /* Loại máy: Photocopy đen trắng */
	machine_feature varchar(255), /* Chức năng: Copy + In mạng + Scan màu + Duplex + ARDF */
	paper_tray varchar(255),/* Khay giấy: 01 x 550 tờ, khay tay 100 tờ */
	paper_sizer varchar(255), /* Khổ giấy: A3/A4 */
	print_speed varchar(255), /* Tốc độ in: 25 trang/phút */
	is_reverse_the_clone bit, /* Đảo mặt bản sao: Có */
	has_ARDF bit, /* Bộ nạp và đảo bản gốc tự động (ARDF): Có sẵn */
	communication_gate varchar(255), /* Cổng giao tiếp: USB/ LAN */
	ink varchar(255), /* Dùng mực: Ricoh 3554S (25.000 trang) */
	guarantee int, /* Bảo hành: 12 tháng tại nơi sử dụng */
	machine_status varchar(255), /* Tình trạng máy: 100% mới, nguyên tem, nguyên hộp, CO/CQ */
	category_id int NOT NULL foreign key references product_category(id), /* Danh mục sản phẩm: Photocopy, fax */

	create_at datetime, /* Ngày tạo */
	create_by int NOT NULL foreign key references users(id), /* Người tạo */
	update_at datetime, /* Ngày cập nhật */
	update_by int foreign key references users(id), /* Người cập nhật */
);
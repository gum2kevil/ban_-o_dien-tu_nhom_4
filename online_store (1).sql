-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2022 lúc 12:15 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_store`
--
CREATE DATABASE IF NOT EXISTS `online_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `online_store`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_muc_gio_hang`
--

CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chi_muc_gio_hang`
--

INSERT INTO `chi_muc_gio_hang` (`id`, `so_luong`, `ma_gio_hang`, `ma_san_pham`) VALUES
(10, 7, 1, 64),
(11, 1, 1, 54),
(12, 1, 1, 60),
(13, 2, 1, 56),
(14, 1, 1, 62),
(15, 1, 2, 88),
(16, 1, 2, 85),
(19, 1, 4, 63),
(20, 1, 4, 62),
(23, 2, 5, 199),
(25, 1, 3, 200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `don_gia`, `so_luong`, `ma_don_hang`, `ma_san_pham`, `so_luong_dat`, `so_luong_nhan_hang`) VALUES
(1, 13980000, 2, 32, 62, 0, 0),
(2, 25990000, 1, 32, 57, 0, 0),
(3, 22490000, 1, 32, 54, 0, 0),
(4, 52990000, NULL, 43, 199, 1, 0),
(5, 33690000, NULL, 44, 202, 1, 0),
(6, 75380000, NULL, 44, 196, 2, 0),
(7, 33690000, NULL, 46, 202, 1, 0),
(8, 75380000, NULL, 46, 196, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`) VALUES
(1, 'LAPTOP'),
(2, 'TIVI'),
(3, 'TỦ LẠNH'),
(4, 'MÁY GIẶT'),
(5, ' BÌNH NƯỚC NÓNG'),
(6, 'ĐIỀU HÒA KHÔNG KHÍ'),
(7, 'ĐIỆN GIA DỤNG'),
(8, 'PHỤ KIỆN CÁC LOẠI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `dia_chi_nhan`, `ghi_chu`, `ho_ten_nguoi_nhan`, `ngay_dat_hang`, `ngay_giao_hang`, `ngay_nhan_hang`, `sdt_nhan_hang`, `trang_thai_don_hang`, `ma_nguoi_dat`, `ma_shipper`, `tong_gia_tri`) VALUES
(31, 'bd', 'asdf', 'aaa', '2018-12-01 14:38:26', NULL, NULL, 'dsf', 'Đang chờ duyệt', NULL, NULL, 0),
(32, 'fadf', 'asdf', 'aaa', '2018-12-05 21:58:24', NULL, NULL, '13', 'created', 2, NULL, 0),
(33, '1', NULL, 'duc', '2021-11-27 21:31:11', '2021-12-09 07:19:36', NULL, '19', 'Đã bị hủy', 6, 3, 11489000),
(34, '1', NULL, 'duc', '2021-11-27 21:31:19', '2021-12-09 07:19:44', NULL, '19', 'Đã bị hủy', 6, 3, 11489000),
(35, 'VN', NULL, 'Đức', '2021-12-09 07:21:45', '2021-12-09 07:22:34', NULL, '012345678', 'Đã bị hủy', 5, 3, 140970000),
(36, 'VN', NULL, 'Đức', '2021-12-09 07:22:13', '2021-12-09 07:56:00', NULL, '012345678', 'Đã bị hủy', 5, 3, 140970000),
(37, 'VN', NULL, 'Đức', '2021-12-09 07:22:51', NULL, NULL, '012345678', 'Đã bị hủy', 5, NULL, 140970000),
(38, 'VN', NULL, 'Đức', '2021-12-09 07:27:30', NULL, NULL, '012345678', 'Đã bị hủy', 5, NULL, 140970000),
(39, 'n', NULL, 'v', '2021-12-09 07:37:33', NULL, NULL, '9', 'Đã bị hủy', 5, NULL, 140970000),
(40, 'vn', NULL, 'hùng', '2021-12-09 07:59:34', '2021-12-09 08:17:40', NULL, '098765432', 'Đang giao', 8, 3, 52990000),
(41, 'vn', NULL, 'hùng', '2021-12-09 08:01:18', NULL, NULL, '098765432', 'Đã bị hủy', 8, NULL, 52990000),
(42, 'q', NULL, 'q', '2021-12-09 08:03:07', NULL, NULL, '9', 'Đã bị hủy', 8, NULL, 52990000),
(43, '1', NULL, 'Đức', '2021-12-21 20:37:56', '2021-12-21 20:38:47', NULL, '9', 'Đang giao', 9, NULL, 52990000),
(44, 'Hà Nội', NULL, 'hùng', '2021-12-25 22:25:06', NULL, NULL, '0335109341', 'Đang chờ giao', 9, NULL, 109070000),
(45, 'Hà Nội', NULL, 'hùng', '2021-12-25 22:29:04', NULL, NULL, '0335109341', 'Đã bị hủy', 9, NULL, 109070000),
(46, 'hà nội', NULL, 'hùng', '2021-12-25 22:30:00', NULL, NULL, '0335109341', 'Đang chờ giao', 9, NULL, 109070000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `tong_tien`, `ma_nguoi_dung`) VALUES
(1, NULL, 2),
(2, NULL, 1),
(3, NULL, 5),
(4, NULL, 6),
(5, NULL, 8),
(6, NULL, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang_san_xuat`) VALUES
(2, 'Apple'),
(3, 'Asus'),
(4, 'Acer'),
(5, 'Dell'),
(6, 'HP'),
(8, 'MSI'),
(11, 'Samsung'),
(13, 'LG'),
(14, 'SONY'),
(15, 'Panasonic'),
(16, 'Elextrolux'),
(17, ' Ariston'),
(18, 'Xiaomi'),
(19, ' Daikin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `email_lien_he`, `ngay_lien_he`, `ngay_tra_loi`, `noi_dung_lien_he`, `noi_dung_tra_loi`, `trang_thai`, `ma_nguoi_tra_loi`) VALUES
(1, 'user@gmail.com', '2021-12-25 22:40:18', NULL, '0927678191', NULL, 'Đang chờ trả lời', NULL),
(2, 'admin@gmail.com', '2021-12-25 22:47:43', NULL, 'q', NULL, 'Đang chờ trả lời', NULL),
(3, 'user@gmail.com', '2021-12-25 22:52:21', NULL, 'hùng 0927678191', NULL, 'Đang chờ trả lời', NULL),
(4, 'user@gmail.com', '2021-12-25 22:54:15', NULL, '1', NULL, 'Đang chờ trả lời', NULL),
(5, 'user@gmail.com', '2021-12-25 22:54:51', NULL, 'hùng 01', NULL, 'Đang chờ trả lời', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`ma_nguoi_dung`, `ma_vai_tro`) VALUES
(1, 1),
(5, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `dia_chi`, `email`, `ho_ten`, `password`, `so_dien_thoai`) VALUES
(1, NULL, 'admin@gmail.com', 'Nguyễn Xuân Nam', '$2a$10$/VFMNUPBKNVRMjxPFCYKZ.lKahoLQda0EaAxdqoun1w3DqwNLa2me', '123456789'),
(2, NULL, 'member@gmail.com', NULL, '$2a$10$j7Upgupou72GBmukz0G6pOATk3wlCAgaoFCEqAhSvLToD/V/1wlpu', NULL),
(3, NULL, 'shipper@gmail.com', NULL, '$2a$10$u2B29HDxuWVYY3fUJ8R2qunNzXngfxij5GpvlFAEtIz3JpK/WFXF2', NULL),
(5, 'Việt Nam', 'phamduc19@gmail.com', 'Phạm Đức Vụ', '$2a$10$CpPvc/JEGVdKV4xlXYmB1.tgJ30xA34KnsUn/jgn2BFRIo6irzq4e', '0927678191'),
(6, 'a', 'phamduc@gmail.com', 'pham', '$2a$10$GMDpNzfbG6i.RAFCx83Zfe6Vc8WiZM0Xs0dZ//4LKD2umHlZLSWba', '12345678'),
(8, 'Việt Nam', 'hung@gmail.com', 'Hùng', '$2a$10$G9QOikvZARRB5x0oicDgI.Ye.txJv9Gx6.SZHWSQ4u3aYLgq1wkoa', '09876543'),
(9, 'Việt Nam', 'user@gmail.com', 'Nguyễn Văn Hùng', '$2a$10$q1I9lJ/sVGIKYUJksk7jU.Cwr4AQBrFi81gve8n2xyNddKFmU1rfC', '0335109341');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `dung_luong_pin` varchar(255) DEFAULT NULL,
  `he_dieu_hanh` varchar(255) DEFAULT NULL,
  `man_hinh` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thiet_ke` varchar(255) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(54, 'i7 11800H 2.30 GHz', 28290000, 0, 140, '53 Wh', 'Windows 10 Home SL', '15.6\"Full HD (1920 x 1080)144Hz', '8 GBDDR4 2 khe (1 khe 8GB + 1 khe rời)3200 MHz', 'Laptop MSI Katana Gaming GF66 11UC i7', ' Vỏ nhựa', '12 tháng', 'Laptop MSI Katana GF66 11UC i7 (224VN) mang vẻ ngoài cơ động cùng cấu hình mạnh mẽ, đẩy nhanh quá trình xử lý mọi tác vụ hay sẵn sàng đồng hành cùng bạn chiến mọi thể loại game đầy kịch tính. ', 1, 8),
(56, '15.6\"Full HD (1920 x 1080)300Hz', 54110000, 0, 110, '7000', 'Windows 10 Home SL', ' 15.6 inchWide-View', '16 GBDDR4 2 khe (1 khe 8GB + 1 khe 8GB)2933 MHz', 'Laptop HP Omen 15 ek0078TX i7', ' Kim loại và polycarbonate', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 6),
(57, 'i5 11400H 2.7GHz', 24190000, 0, 110, '48 Wh', 'Windows 11 Home SL', '15.6\"Full HD (1920 x 1080)144Hz', ' DDR4 2 khe (1 khe 8GB + 1 khe rời)', 'Laptop Asus TUF Gaming FX506HCB i5', ' Vỏ nhựa - nắp lưng bằng kim loại', '12 tháng', 'Laptop Asus TUF Gaming FX506HCB i5 sở hữu thiết kế độc đáo với cấu hình mạnhnhà  mẽ cùng hiệu suất chơi game gần như hoàn hảo nhờ sở hữu con chip Intel Gen 11 hiện đại.', 1, 3),
(60, 'i7 11800H 2.30 GHz', 74090000, 0, 100, '99.9 Wh', 'Windows 10 Home SL', '15.6\"QHD (2560 x 1440)240Hz', '32 GBDDR4 2 khe (1 khe 16GB + 1 khe 16GB)3200 MHz', 'Laptop MSI Gaming GE66 Raider 11UH i7', 'Vỏ kim loại', '6 tháng', 'MSI Gaming GE66 Raider 11UH i7 (259VN) thuộc dòng laptop gaming cao cấp của nhà MSI, sở hữu thiết kế độc đáo với cấu hình mạnh mẽ cùng hiệu suất chơi game gần như hoàn hảo nhờ sở hữu con chip Intel Gen 11 hiện đại.', 1, 8),
(62, 'i7 1165G7 2.8GHz', 59990000, 0, 50, ' 4-cell Li-ion', 'Windows 10 Home SL', ' 13.4\"4K/UHD (3840 x 2400)', ' 16 GBLPDDR4X (On board)4267 MHz', 'Laptop Dell XPS 13 9310 i7', ' Vỏ kim loại nguyên khối', '6 tháng', 'Laptop Dell XPS 13 9310 i7 1165G7 (JGNH62), sự kết hợp hoàn mỹ giữa hiệu năng, khả năng phản hồi cùng hình ảnh ảnh sắc nét cho một dòng máy tính xách tay thời trang đầy sang trọng.', 1, 5),
(63, 'Intel Core i7 Tiger Lake - 11800H', 27990000, 0, 50, '57 Wh', 'Window 10', '15.6\"Full HD (1920 x 1080)144Hz', ' 8 GB DDR4 2 khe (1 khe 8GB + 1 khe rời)', 'Acer Nitro 5 Gaming AN515 57 727J i7', 'Vỏ nhựa', '6 tháng', 'Acer Nitro 5 Gaming AN515 57 727J i7 (NH.QD9SV.005.) có thiết kế cực ngầu, cấu hình siêu khủng với bộ vi xử lý Intel thế hệ 11, không chỉ thực hiện những trận game đỉnh cao mà nó còn có thể đáp ứng các tác vụ đồ hoạ, kỹ thuật chuyên nghiệp.', 1, 4),
(64, 'Apple M1 Max', 90990000, 0, 60, 'Khoảng 10 tiếng', 'Mac OS', '14.2 inch, Liquid Retina XDR display (3024 x 1964)', '16 GB', 'MacBook Pro 16 M1 Max', 'Vỏ kim loại nguyên khối', '6 tháng', 'Siêu phẩm MacBook Pro 2021', 1, 2),
(85, NULL, 229900000, 0, 80, NULL, NULL, NULL, NULL, 'Smart Tivi Neo QLED 4K 98 inch Samsung QA98QN90A', NULL, '6 tháng', 'Đường nét Smart Tivi Neo QLED 4K 98 inch Samsung QA98QN90A sắc sảo, gam màu đen lịch lãm, chất liệu viền tivi và chân đế bằng kim loại cứng cáp, cho vẻ ngoài tivi càng thêm sang trọng, phong cách', 2, 11),
(88, NULL, 49900000, 0, 80, NULL, NULL, NULL, NULL, 'Smart Tivi QLED 4K 55 inch Samsung QA55Q65A', NULL, '6 tháng', 'Smart Tivi QLED 4K 55 inch Samsung QA55Q65A với thiết kế với màn hình tràn viền 4 cạnh, cho người dùng trải nghiệm khung hình giải trí trên tivi chân thực như thực tế đang xảy ra trước mắt.', 2, 11),
(145, NULL, 890000000, 0, 50, NULL, NULL, NULL, NULL, 'Smart Tivi OLED LG 8K 88 inch 88Z1PTA', NULL, '12 tháng', 'Hình ảnh chân thực, màu sắc phong phú với công nghệ màn hình OLED - điểm ảnh tự phát sáng', 2, 13),
(146, NULL, 199900000, 0, 100, NULL, NULL, NULL, NULL, 'Android Tivi Sony 8K 85 inch XR-85Z9', NULL, '12 tháng', 'Tivi LED Sony XR-85Z9J được thiết kế nguyên khối liền mạch, màn hình tràn viền ấn tượng, chân đế mỏng thanh lịch có 3 cách lắp đặt: Tiêu chuẩn, hẹp và kết hợp cùng loa thanh cho người dùng thêm đa dạng sự lựa chọn về cách bày trí tivi.', 2, 14),
(147, NULL, 174900000, 0, 150, NULL, NULL, NULL, NULL, 'Android Tivi Sony 8K 85 inch KD-85Z8H', NULL, '12 tháng', 'Android Tivi Sony 8K 85 inch KD-85Z8H thiết kế tối giản, tinh tế với màn hình kiểu đơn tấm - One Slate siêu mỏng, viền nhôm bóng loáng ôm trọn các cạnh màn hình, tô điểm cho không gian sống thêm sang trọng, đậm chất nghệ thuật.', 2, 14),
(148, NULL, 82900000, 0, 50, NULL, NULL, NULL, NULL, 'Tủ lạnh Samsung Inverter 599 lít RF60A91R177/SV', NULL, '2 năm', 'Tủ lạnh Samsung Inverter 599 lít RF60A91R177/SV có thiết kế 4 cửa kiểu Pháp sang trọng, kết hợp với mặt kính Glam Glass đầy tinh tế', 3, 11),
(149, NULL, 72390000, 0, 50, NULL, NULL, NULL, NULL, 'Tủ lạnh Panasonic Inverter 589 lít NR-F603GT-X2', NULL, '3 năm', 'Tủ lạnh Panasonic Inverter 589 lít NR-F603GT-X2 là dòng tủ lạnh có thiết kế kiểu tủ 6 cửa vô cùng hiện đại. Cửa tủ được thiết kế như một tấm gương soi lớn nhờ chất liệu mặt gương tráng bạc cao cấp.', 3, 15),
(150, NULL, 54990000, 0, 100, NULL, NULL, NULL, NULL, 'Tủ lạnh LG Inverter 496 lít GR-X22MB', NULL, '2 năm', 'Thiết kế InstaView™ Door-in-Door® của tủ lạnh LG có tấm kính trong suốt và bật sáng khi gõ nhanh 2 lần cho phép bạn nhìn xuyên thấu được bên trong tủ mà không cần phải mở cửa.', 3, 13),
(151, NULL, 65800000, 0, 100, NULL, NULL, NULL, NULL, 'Combo 2 Tủ lạnh Samsung RB33T307029/SV', NULL, '12 tháng', 'Combo 2 Tủ lạnh Samsung RB33T307029/SV được thiết kế âm tường giúp góp phần tạo nên sự rộng rãi, hiện đại cho không gian bếp của bạn.', 3, 11),
(152, NULL, 44900000, 0, 50, NULL, NULL, NULL, NULL, 'Máy giặt sấy LG Inverter 21 kg F2721HTTV', NULL, '2 năm', 'Máy giặt sấy LG Inverter 21 kg F2721HTTV đến từ thương hiệu LG nổi tiếng của Hàn Quốc có thiết kế bên ngoài vô cùng sang trọng và tinh tế, hứa hẹn sẽ trở thành điểm nhấn nổi bật cho không gian nội thất của gia đình.', 4, 13),
(153, NULL, 26490000, 0, 100, NULL, NULL, NULL, NULL, 'Máy giặt Electrolux Inverter 11 kg EWF1141SESA', NULL, '2 năm', 'Máy giặt Electrolux EWF1141SESA có thiết kế màu xám thời thượng cùng những đường nét tinh tế tạo nên sự sang trọng cho mọi không gian nhà ở', 4, 16),
(154, NULL, 33090000, 0, 100, NULL, NULL, NULL, NULL, 'Máy giặt sấy Samsung Inverter 21 kg WD21T6500GV/SV', NULL, '2 năm', 'AI Wash trang bị 4 loại cảm biến để nhận biết khối lượng và độ bẩn áo quần, từ đó tối ưu lượng nước, lượng nước giặt, nước xả và thời gian giặt xả, giúp giặt sạch hoàn hảo mà không phải tốn nhiều công sức hay xử lý trước mỗi lần giặt.', 4, 11),
(156, NULL, 5190000, 0, 200, NULL, NULL, NULL, NULL, 'Máy nước nóng trực tiếp Panasonic 4500W DH-4NP1VS', NULL, '12 tháng', 'Máy nước nóng Panasonic DH-4NP1VS 4500W được thiết kế nhỏ gọn, tắt bật với 1 nút bấm phù hợp từ không gian hẹp đến rộng rãi và có màu bạc tinh tế giúp tôn phòng tắm nhà bạn thêm sang trọng hơn.', 5, 15),
(157, NULL, 5190000, 0, 300, NULL, NULL, NULL, NULL, 'Máy nước nóng trực tiếp Panasonic 4500W DH-4NTP1VM', NULL, '12 tháng', 'Máy nước nóng Panasonic DH-4NTP1VM 4500W có thiết kế mới với vỏ cong thanh lịch, màu bạc sang trọng đi kèm thanh trượt vòi sen cấu tạo bởi crom chắc chắn, làm cho phòng tắm của bạn trở nên thu hút hơn bao giờ hết.', 5, 15),
(158, NULL, 4490000, 0, 100, NULL, NULL, NULL, NULL, 'Máy nước nóng trực tiếp Ariston 4500W ST45PE-VN', NULL, '2 năm', 'Máy nước nóng Ariston ST45PE-VN có thiết kế màn hình cảm ứng và hiển thị nhiệt độ chính xác không chỉ mang đến vẻ đẹp sang trọng, đẳng cấp mà nó còn giúp bạn nhận biết được nhiệt độ của nước ở thời điểm hiện tại là bao nhiêu.', 5, 17),
(159, NULL, 4290000, 0, 300, NULL, NULL, NULL, NULL, 'Máy nước nóng gián tiếp Ariston 30 lít 2500W SL2 30 LUX ECO 2.5 FE', NULL, '2 năm', 'Với dáng thiết kế ngang độc đáo, máy nước nóng Ariston 30 lít 2500W SL2 30 LUX ECO 2.5 FE còn được nhấn nhá với hai gam màu đen trắng vô cùng sang trọng, dễ dàng kết hợp với nhiều phong cách nội thất của gia đình bạn.', 5, 17),
(161, NULL, 31890000, 0, 100, NULL, NULL, NULL, NULL, 'Bộ multi LG 2 dàn lạnh', NULL, '2 năm', 'Máy lạnh bao gồm 1 dàn nóng làm nhiệm vụ cấp lạnh cho 2 dàn lạnh, thích hợp lắp đặt tại các căn hộ hoặc chung cư có diện tích nhỏ giúp tiết kiệm thời gian và chi phí lắp đặt, bảo trì.', 6, 13),
(162, NULL, 31890000, 0, 150, NULL, NULL, NULL, NULL, 'Máy lạnh Daikin Inverter 2.5 HP FTKC60UVMV', NULL, '12 tháng', 'Máy lạnh Daikin Inverter 2.5 HP FTKC60UVMV mang gam màu trắng quen thuộc, cùng những đường cong mềm mại, tối giản không phù hợp cho những vị gia chủ yêu thích vẻ đẹp đơn giản nhưng không kém phần sang trọng, thanh lịch.', 6, 19),
(163, NULL, 30290000, 0, 100, NULL, NULL, NULL, NULL, 'Máy lạnh Daikin Inverter 2 HP FTKZ50VVMV', NULL, '12 tháng', 'Công nghệ Streamer loại bỏ vi khuẩn và nấm mốc bám trên phin lọc dưới hình thức phóng điện plasma tiên tiến với khả năng phân hủy oxy hóa nhanh hơn 1000 lần hoặc hơn so với phóng điện plasma thông thường. ', 6, 19),
(164, NULL, 6759000, 0, 100, NULL, NULL, NULL, NULL, 'Robot hút bụi lau nhà Xiaomi Vacuum Mop SKV4093GL', NULL, '12 tháng', 'Robot hút bụi Xiaomi Vacuum Mop SKV4093GLL chiếm được ưu thế với chức năng lau nhà, tự động điều khiển được lượng nước hợp lý', 7, 18),
(165, NULL, 7990000, 0, 100, NULL, NULL, NULL, NULL, 'Robot hút bụi lau nhà Xiaomi Vacuum Mop Pro SKV4109GL', NULL, '12 tháng', 'Robot hút bụi Xiaomi Vacuum Mop Pro SKV4109GL hoạt động không dây thông minh, thiết kế sang trọng làm đẹp không gian sống hiện đại', 7, 18),
(166, NULL, 2120000, 0, 200, NULL, NULL, NULL, NULL, 'Nồi chiên không dầu Xiaomi Mi Smart MAF02 3.5 lít ', NULL, '2 năm', 'Nồi chiên không dầu Xiaomi giúp giảm đến 85% lượng mỡ, đa dạng chức năng chiên nướng', 7, 18),
(167, NULL, 20990000, 0, 50, NULL, NULL, NULL, NULL, 'Máy rửa chén độc lập Electrolux ESF5512LOX', NULL, '2 năm', 'Thiết kế cao cấp, nhỏ gọn, dễ bố trí, tiết kiệm thời gian bên gia đình, phù hợp với người dị ứng nước rửa chén', 7, 16),
(168, NULL, 8490000, 0, 20, NULL, NULL, NULL, NULL, 'Máy rửa chén mini Electrolux ESF6010BW ', NULL, '2 năm', 'Được trang bị công nghệ rửa nước nóng, máy rửa chén dễ dàng đánh bay mọi vết dầu mỡ, vi khuẩn trên chén đĩa. Không những vậy, rửa nước nóng còn làm cho chén đĩa nhanh khô hơn.', 7, 16),
(169, NULL, 28418000, 0, 100, NULL, NULL, NULL, NULL, 'Bếp 4 vùng nấu lắp âm Electrolux EHXD875FAK ', NULL, '2 năm', 'Bếp từ đôi Electrolux EHXD875FAK thiết kế lắp âm hiện đại sang trọng. Bảng điều khiển cảm ứng có hệ thống đèn led dễ sử dụng', 7, 16),
(170, NULL, 24643000, 0, 100, NULL, NULL, NULL, NULL, 'Bếp từ 4 vùng nấu lắp âm Electrolux EHD8740FOK', NULL, '2 năm', 'Bếp từ Electrolux với mặt kính Ceran cao cấp, chịu nhiệt và chịu lực tốt, bền đẹp, dễ vệ sinh', 7, 16),
(171, NULL, 6390000, 0, 100, NULL, NULL, NULL, NULL, 'Bếp hồng ngoại Electrolux EHC7240BA ', NULL, '2 năm', 'Bếp hồng ngoại đôi Electrolux EHC7240BA lắp đặt âm kiểu dáng đơn giản, sang trọng, nền nã trong không gian bếp hiện đại', 7, 16),
(172, NULL, 4171000, 0, 100, NULL, NULL, NULL, NULL, 'Lò vi sóng có nướng Samsung MG30T5018CK/SV 30 lít', NULL, '2 năm', 'Lò vi sóng Samsung thiết kế tinh tế, kết cấu gọn chắc cho không gian mọi căn bếp thêm đẳng cấp, sang trọng', 7, 11),
(173, NULL, 3590000, 0, 50, NULL, NULL, NULL, NULL, 'Lò vi sóng có nướng Samsung MG23J5133AM/SV-N 23 lít ', NULL, '2 năm', 'Lò vi sóng Samsung sang trọng, thời thượng với chất liệu thép không gỉ bóng loáng, cửa kính cao cấp nổi bật, dung tích 23 lít ', 7, 11),
(174, NULL, 1627000, 0, 200, NULL, NULL, NULL, NULL, 'Bàn ủi hơi nước Electrolux E7SI1-80DB', NULL, '2', 'Bàn ủi có chế độ ngắt tự động khi không sử dụng, tránh các sự cố nguy hiểm do điện và nhiệt độ cao, tăng tuổi thọ sản phẩm', 7, 16),
(175, NULL, 1186000, 0, 220, NULL, NULL, NULL, NULL, 'Bàn ủi hơi nước Electrolux ESI6123', NULL, '2 năm', 'Bàn ủi hơi nước Electrolux trẻ trung, sang trọng với 2 màu trắng và xanh dương, tạo điểm nhấn đẹp mắt cho không gian sử dụng', 7, 16),
(176, NULL, 4431000, 0, 220, NULL, NULL, NULL, NULL, 'Cây nước nóng lạnh Electrolux EQAXF01BXBV', NULL, '2 năm', 'Cây nước nóng lạnh Electrolux có màu đen sang trọng với thiết kế nhỏ gọn, phù hợp mọi không gian.', 7, 16),
(177, NULL, 4690000, 0, 330, NULL, NULL, NULL, NULL, 'Máy sấy tóc Panasonic EH-NA98RP645', NULL, '12 tháng', 'Dưỡng ẩm, giảm khô xơ, chống tia UV hiệu quả với công nghệ sấy bổ sung nanoe và ion khoáng chất kép', 7, 15),
(178, NULL, 5590000, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2 ', NULL, '12 tháng', 'Tai nghe sở hữu thiết kế thời trang và nhỏ gọn, trọng lượng cũng rất nhẹ không khác mấy so với tai nghe True Wireless AirPods thế hệ đầu tiên', 8, 2),
(179, NULL, 3190000, 0, 1000, NULL, NULL, NULL, NULL, 'Bàn phím Magic Keyboard US Apple MLA22', NULL, '12 tháng', 'Bàn phím Magic Keyboard US Apple MLA22 có thiết kế sang trọng với màu trắng trang nhã', 8, 2),
(180, NULL, 2490000, 0, 900, NULL, NULL, NULL, NULL, 'Chuột Bluetooth Apple MK2E3 Trắng ', NULL, '12 tháng', 'Chuột Apple MK2E3 Trắng tương thích tốt với máy tính Mac hỗ trợ Bluetooth với OS X 10.11 trở lên và iPad với iPadOS 13.4 trở lên', 8, 2),
(181, NULL, 2390000, 0, 500, NULL, NULL, NULL, NULL, 'Adapter Sạc 45W Apple MacBook Air MC747', NULL, '12 tháng', 'Adapter sạc chuyên dụng dùng cho nhiều dòng MacBook Air.\r\nĐèn LED trên dây sạc giúp thông báo tình trạng pin (đỏ - đang sạc, xanh lá - sạc đầy pin).\r\nĐầu kết nối MagSafe (hít nam châm với máy) giúp cáp khi sạc khó rớt ra.', 8, 2),
(182, NULL, 1290000, 0, 1000, NULL, NULL, NULL, NULL, 'Cáp Type-C - Type-C 80 cm Apple MQ4H2', NULL, '12 tháng', 'Có khả năng truyền tải dữ liệu lên đến 40 Gbps và sạc với công suất tối đa 100W.\r\nKết nối tốt với adapter chuyển đổi, Macbook, Mac Mini,...\r\nDây dài 0.8 m dễ dàng sự dụng mọi hoàn cảnh.\r\n2 đầu Type-C có thể dùng để sạc thiết bị hay chia sẻ dữ liệu.', 8, 2),
(183, NULL, 990000, 0, 1000, NULL, NULL, NULL, NULL, 'Cáp Type C - Lightning 2m Apple MQGH2 Trắng', NULL, '12 tháng', 'Cáp sạc được bọc bởi lớp nhựa dẻo dai bền, chịu lực uốn cong tốt, dễ dàng quấn gọn, tiện lợi để bạn mang theo đi học, đi làm. Chiều dài 2 m thuận tiện kết nối thiết bị ở khoảng cách xa, sạc pin, truyền tải dữ liệu thoải mái hơn.', 8, 2),
(184, NULL, 2590000, 0, 550, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth True Wireless Earphones 2 Xiaomi ZBW4493GL', NULL, '12 tháng', 'Kiểu dáng nhỏ gọn, là người bạn đồng hành trên mọi nẻo đường\r\nTai nghe Bluetooth True Wireless Earphones 2 Xiaomi ZBW4493GL có hộp sạc bảo vệ, vừa vặn với kích thước của tai nghe. ', 8, 18),
(185, NULL, 790000, 0, 660, NULL, NULL, NULL, NULL, 'Pin sạc dự phòng Polymer 10.000 mAh Type C Xiaomi', NULL, '12 tháng', 'Pin sạc dự phòng Polymer 10.000mAh Type C Xiaomi Power Bank 3 Ultra Compact đen gần như chỉ bằng 1 tấm thẻ ngân hàng, trọng lượng 200 gram, không chiếm diện tích, cho bạn dễ dàng bỏ vào túi quần, balo, túi xách và mang theo bên mình khi cần.', 8, 18),
(186, NULL, 699000, 0, 990, NULL, NULL, NULL, NULL, 'Pin sạc dự phòng không dây Polymer 10.000 mAh Type C Xiaomi', NULL, '12 tháng', 'Thiết kế nhỏ gọn, độ bền cao\r\nPin sạc dự phòng Xiaomi Mi Essential thiết kế dạng hình chữ nhật quen thuộc với lớp vỏ chắc chắn và có độ nhám giúp tăng ma sát, chống trơn trượt khi cầm nắm.', 8, 18),
(187, NULL, 3490000, 0, 800, NULL, NULL, NULL, NULL, 'Bút cảm ứng Samsung S Pen Pro EJ-P5450 Đen ', NULL, '12 tháng', 'Toàn thân bút có màu đen sang trọng, hình dạng và kích cỡ của bút cảm ứng Samsung S Pen Pro EJ-P5450 đen như bút chì hay bút mực thông thường, rất dễ dàng cho bạn làm quen và sử dụng', 8, 11),
(188, NULL, 3990000, 0, 800, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth True Wireless Galaxy Buds Pro ', NULL, '12 tháng', 'Thiết kế sang trọng, thời thượng cùng hộp sạc đồng nhất màu sắc đi kèm', 8, 11),
(189, NULL, 1450000, 0, 500, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth Samsung Level U Pro BN920C ', NULL, '12 tháng', 'Tai nghe Samsung Level U Pro BN920C được thiết kế sang trọng\r\nToàn thân tai nghe được gia công bằng vỏ nhựa và cao su, phần cao su sẽ giúp tai nghe tiếp xúc với da trơn hơn, thoải mái hơn.', 8, 11),
(190, NULL, 8490000, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe chụp tai Bluetooth Sony WH-1000XM4', NULL, '12 tháng', 'Tai nghe chụp tai Bluetooth Sony WH-1000XM4/BME Đen có thiết kế đơn giản, kích thước nhỏ gọn, màu sắc hài hòa đáp ứng nhu cầu giải trí bằng âm nhạc ở mọi địa điểm. Tai nghe có cấu trúc gấp thông minh bạn có thể dễ dàng gấp bỏ vào balo mang theo muôn nơi.', 8, 14),
(191, NULL, 4990000, 0, 100, NULL, NULL, NULL, NULL, 'Loa Bluetooth Sony Extra Bass SRS-XB43', NULL, '12 tháng', 'Loa Bluetooth Sony có kiểu dáng hiện đại, gọn đẹp, năng động\r\nKích cỡ hơi lớn nhưng bạn vẫn cầm nắm, di chuyển thoái mái đến mọi nơi nghe nhạc. Màu đen, xanh dương đẹp mắt, tinh tế, dễ lựa chọn. ', 8, 14),
(192, NULL, 4190000, 0, 150, NULL, NULL, NULL, NULL, 'Tai nghe Bluetooth True Wireless LG TONE-FP8 Đen', NULL, '12 tháng', 'Tai nghe LG có hộp sạc kháng khuẩn UVnano\r\nHộp sạc tai nghe  Bluetooth True Wireless LG TONE-FP8 tích hợp công nghệ UVnano tiêu diệt 99.9% vi khuẩn chỉ trong 5 phút giúp tai nghe luôn sạch khuẩn, an toàn cho người sử dụng.', 8, 13),
(193, 'i7 1165G7 2.8GHz', 41990000, 0, 100, '67 Wh', 'Windows 11 Home SL', '13.3\"4K/UHD (3840 x 2160), OLED', '16 GBLPDDR4X (On board)4267 MHz', 'Laptop Asus ZenBook UX371EA i7', ' Vỏ kim loại nguyên khối', '12 tháng', 'Không thể cưỡng lại sự đẳng cấp của phiên bản laptop cao cấp - sang trọng ZenBook UX371EA i7 (HL725WS) đến từ nhà Asus khi sở hữu phong cách thiết kế thời thượng, hiện đại cùng sức mạnh tiềm năng đến từ con chip Intel thế hệ 11 mạnh mẽ.', 1, 3),
(194, 'i5 1135G7 2.4GHz', 27490000, 0, 160, '67 Wh', 'Windows 10 Home SL', ' 13.3\"Full HD (1920 x 1080) OLED', '8 GBLPDDR4X (On board)4267 MHz', 'Asus ZenBook Flip UX363EA i5', ' Vỏ kim loại nguyên khối', '12 tháng', 'Ghi dấu ấn mạnh mẽ trong mắt người dùng với sự đẳng cấp đến từ lối thiết kế kiêu hãnh cùng hiệu năng ấn tượng của con chip Intel thế hệ 11 mạnh mẽ.', 1, 3),
(195, 'i7 11800H 2.30 GHz', 48140000, 0, 160, '59 Wh', 'Windows 10 Home SL', ' 15.6\"QHD (2560 x 1440)165Hz', '16 GBDDR4 2 khe (1 khe 8GB + 1 khe 8GB)3200 MHz', 'Acer Predator Triton 300 PT35 71DJ i7', ' Vỏ kim loại', '12 tháng', 'Trải nghiệm chơi game cực mượt mà trên chiếc laptop Acer Predator Triton 300 PT315 53 71DJ i7 (NH.QDSSV.001) mang trong mình bộ xử lý Intel thế hệ 11 mạnh mẽ cân được nhiều tựa game hot.', 1, 4),
(196, ' i7 11800H 2.30 GHz', 37690000, 0, 170, '59 Wh', 'Windows 10 Home SL', '15.6\"QHD (2560 x 1440)165Hz', ' 16 GBDDR4 2 khe (1 khe 8GB + 1 khe 8GB)3200 MHz', 'Acer Predator Helios PH315 75YD i7', ' Vỏ nhựa - nắp lưng bằng kim loại', '12 tháng', 'Trải nghiệm chơi game mượt mà cùng đồ họa chuyên nghiệp với bộ vi xử lý Intel thế hệ 11 trên Acer Predator Helios PH315 54 75YD i7 (NH.QC2SV.002) cùng phong cách trẻ trung.', 1, 4),
(197, ' Ryzen 75800H 3.2GHz', 33390000, 0, 190, '56 Wh', 'Windows 10 Home SL', ' 15.6\"Full HD (1920 x 1080)120Hz', ' 16 GBDDR4 2 khe (1 khe 8GB + 1 khe 8GB)3200 MHz', 'Laptop Dell Gaming G15 5515 R7', ' Vỏ nhựa', '12 tháng', 'Dell Gaming G15 5515 R7 (70258051) mang trong mình bộ xử lý mạnh mẽ đến từ nhà AMD cân được nhiều tác vụ với kiểu dáng vô cùng sang trọng', 1, 5),
(198, ' i5 1135G7 2.4GHz', 30490000, 0, 200, '52 Wh', 'Windows 10 Home SL', ' 14.5 inch2K', ' 16 GBLPDDR4X (On board)4267 MHz', 'Laptop Dell Inspiron 7400 i5', ' Vỏ nhựa - nắp lưng bằng kim loại', '12 tháng', 'Mang đến kiểu dáng sang trọng và đẳng cấp, laptop Dell Inspiron 7400 i5 1135G7 (N4I5134W) với sức mạnh hiệu năng mạnh mẽ từ chip Intel Gen 11, là cộng sự lý tưởng ở cả công việc và giải trí.', 1, 5),
(199, ' Apple M1', 52990000, 0, 10, ' Khoảng 10 tiếng', 'Mac OS', '13.3\"Retina (2560 x 1600)', '16 GB', 'Laptop Apple MacBook Pro M1 2020', ' Vỏ kim loại nguyên khối', '12 tháng', 'Laptop Apple Macbook Pro M1 2020 (Z11C000CJ) với chip M1 dành riêng cho MacBook đưa hiệu năng của MacBook Pro 2020 lên một tầm cao mới.', 1, 2),
(200, ' i7 1165G7 2.8GHz', 41290000, 0, 160, '53 Wh', 'Windows 10 Home SL', ' 13.3\"Full HD (1920 x 1080)', ' 16 GBDDR4 (On board)3200 MHz', 'Laptop HP EliteBook X360 830 G8 i7', ' Vỏ kim loại', '12 tháng', 'Laptop HP EliteBook X360 830 G8 i7 (3G1A4PA) thuộc dòng laptop cao cấp - sang trọng với lớp vỏ kim loại sáng bóng, mỏng nhẹ và hiệu năng mạnh mẽ nhờ con chip Intel thế hệ 11 hứa hẹn sẽ là một trợ thủ đắc lực của bạn trong công việc.', 1, 6),
(201, 'i7 1165G7 2.8GHz', 54890000, 0, 10, '80 Wh', 'Windows 10 Home Standard', '17\"WQXGA (2560 x 1600)', '16 GBLPDDR4X (On board)4266 MHz', 'Laptop LG Gram 17 2021 i7', ' Hợp kim Nano Carbon - Magie', '12 tháng', 'Laptop LG Gram 17 2021 i7 (17Z90P-G.AH78A5) với vẻ ngoài mềm mại, mỏng nhẹ còn bên trong là cấu hình mạnh mẽ, tự tin đồng hành cùng bạn trong mọi công việc.', 1, 13),
(202, ' i7 1165G7 2.8GHz', 33690000, 0, 100, '51 Wh', 'Windows 10 Home SL', '13.3\"Full HD (1920 x 1080)', '16 GBDDR4 (On board)2933 MHz', 'Laptop HP Envy 13 ba1031TU i7', ' Vỏ kim loại nguyên khối', '12 tháng', 'Laptop HP Envy 13 ba1031TU i7 1165G7 (2K0B7PA) là chiếc laptop mới ra mắt năm 2020 có cấu hình mạnh mẽ với chip Intel Core i7 thế hệ thứ 11.', 1, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL,
  `ten_vai_tro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_SHIPPER');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  ADD KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  ADD KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  ADD KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`);

--
-- Chỉ mục cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  ADD KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  ADD KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  ADD CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

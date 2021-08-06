-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2021 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webgr01`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id_blog` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `ten_blog` varchar(255) DEFAULT NULL,
  `noidung_blog` text DEFAULT NULL,
  `hinhanh_blog` varchar(255) DEFAULT NULL,
  `ngay_blog` int(11) DEFAULT NULL,
  `thang_blog` varchar(20) DEFAULT NULL,
  `nguoitao_blog` varchar(255) DEFAULT NULL,
  `comments_blog` int(11) DEFAULT NULL,
  `view_blog` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id_blog`, `id_danhmuc`, `ten_blog`, `noidung_blog`, `hinhanh_blog`, `ngay_blog`, `thang_blog`, `nguoitao_blog`, `comments_blog`, `view_blog`) VALUES
(4, 0, '| CẢM ƠN MẸ | Đ𝑎̃ 𝑣𝑖̀ 𝑐𝑜𝑛 𝑚𝑎̀ 𝑡𝑟𝑜̛̉ 𝑡ℎ𝑎̀𝑛ℎ 𝑛𝑔𝑢̛𝑜̛̀𝑖 𝑝ℎ𝑢̣ 𝑛𝑢̛̃ 𝑡𝑢𝑦𝑒̣̂𝑡 𝑣𝑜̛̀𝑖 𝑛ℎ𝑎̂́𝑡!', '💐 NGÀY CỦA MẸ đang đến gần, NEM và diễn viên Nguyệt Hằng với vai diễn bà Hoài trong bộ phim \"Hãy nói lời yêu\" trên VTV3 đã cùng thực hiện một bộ ảnh để chia sẻ thông điệp về lời cảm ơn gửi đến những người phụ nữ đã làm Mẹ.|\r\nĐôi lời gửi mẹ!|\r\n💐 Là diễn viên nổi tiếng nhưng cũng là mẹ của 4 đứa con, chị Nguyệt Hằng đã có những chia sẻ đầy sâu sắc và xúc động trong hành trình trở thành người phụ nữ thành công, đồng thời là một người Mẹ tuyệt vời trong mắt các con của mình. Chia sẻ với NEM, chị Nguyệt Hằng cho rằng: \"Không có tình thương nào sâu sắc và ý nghĩa bằng tình yêu của người mẹ dành cho con. Giữa mối quan hệ ấy, dường như có một sợi dây kết nối vô hình không thể chia cắt.\"|\r\n💐 Nhân \"ngày của mẹ\", cùng GLAMMY kể những câu chuyện của bạn và gửi lời cảm ơn tới mẹ của mình bạn nhé!|\r\nMẹ tuyệt vời nhất !', 'ngay_cua_me.jpg', 7, 'Dec', 'Anna Balashova', 15, 259),
(5, 0, '🌼 𝑴𝒂̀𝒖 𝒄𝒖̉𝒂 𝑵𝒂̆́𝒏𝒈', '💐 NGÀY CỦA MẸ đang đến gần, NEM và diễn viên Nguyệt Hằng với vai diễn bà Hoài trong bộ phim \"Hãy nói lời yêu\" trên VTV3 đã cùng thực hiện một bộ ảnh để chia sẻ thông điệp về lời cảm ơn gửi đến những người phụ nữ đã làm Mẹ.|\r\nĐôi lời gửi mẹ!|\r\n💐 Là diễn viên nổi tiếng nhưng cũng là mẹ của 4 đứa con, chị Nguyệt Hằng đã có những chia sẻ đầy sâu sắc và xúc động trong hành trình trở thành người phụ nữ thành công, đồng thời là một người Mẹ tuyệt vời trong mắt các con của mình. Chia sẻ với NEM, chị Nguyệt Hằng cho rằng: \"Không có tình thương nào sâu sắc và ý nghĩa bằng tình yêu của người mẹ dành cho con. Giữa mối quan hệ ấy, dường như có một sợi dây kết nối vô hình không thể chia cắt.\"|\r\n💐 Nhân \"ngày của mẹ\", cùng GLAMMY kể những câu chuyện của bạn và gửi lời cảm ơn tới mẹ của mình bạn nhé!|\r\nMẹ tuyệt vời nhất !', 'nang.jpg', 24, 'aug', 'Anna Balashova', 15, 259),
(6, 0, '𝐌𝐀𝐃𝐄𝐌𝐎𝐈𝐒𝐄𝐋𝐋𝐄 - NEW ARRIAL', '💐 NGÀY CỦA MẸ đang đến gần, NEM và diễn viên Nguyệt Hằng với vai diễn bà Hoài trong bộ phim \"Hãy nói lời yêu\" trên VTV3 đã cùng thực hiện một bộ ảnh để chia sẻ thông điệp về lời cảm ơn gửi đến những người phụ nữ đã làm Mẹ.|\r\nĐôi lời gửi mẹ!|\r\n💐 Là diễn viên nổi tiếng nhưng cũng là mẹ của 4 đứa con, chị Nguyệt Hằng đã có những chia sẻ đầy sâu sắc và xúc động trong hành trình trở thành người phụ nữ thành công, đồng thời là một người Mẹ tuyệt vời trong mắt các con của mình. Chia sẻ với NEM, chị Nguyệt Hằng cho rằng: \"Không có tình thương nào sâu sắc và ý nghĩa bằng tình yêu của người mẹ dành cho con. Giữa mối quan hệ ấy, dường như có một sợi dây kết nối vô hình không thể chia cắt.\"|\r\n💐 Nhân \"ngày của mẹ\", cùng GLAMMY kể những câu chuyện của bạn và gửi lời cảm ơn tới mẹ của mình bạn nhé!|\r\nMẹ tuyệt vời nhất !', 'arrial.jpg', 8, 'oct', 'Anna Balashova', 15, 259),
(7, 0, '𝐇𝐎𝐔𝐍𝐃𝐒𝐓𝐎𝐎𝐓𝐇 - HỌA TIẾT CỔ ĐIỂN LÊN NGÔI', '💐 NGÀY CỦA MẸ đang đến gần, NEM và diễn viên Nguyệt Hằng với vai diễn bà Hoài trong bộ phim \"Hãy nói lời yêu\" trên VTV3 đã cùng thực hiện một bộ ảnh để chia sẻ thông điệp về lời cảm ơn gửi đến những người phụ nữ đã làm Mẹ.|\r\nĐôi lời gửi mẹ!|\r\n💐 Là diễn viên nổi tiếng nhưng cũng là mẹ của 4 đứa con, chị Nguyệt Hằng đã có những chia sẻ đầy sâu sắc và xúc động trong hành trình trở thành người phụ nữ thành công, đồng thời là một người Mẹ tuyệt vời trong mắt các con của mình. Chia sẻ với NEM, chị Nguyệt Hằng cho rằng: \"Không có tình thương nào sâu sắc và ý nghĩa bằng tình yêu của người mẹ dành cho con. Giữa mối quan hệ ấy, dường như có một sợi dây kết nối vô hình không thể chia cắt.\"|\r\n💐 Nhân \"ngày của mẹ\", cùng GLAMMY kể những câu chuyện của bạn và gửi lời cảm ơn tới mẹ của mình bạn nhé!|\r\nMẹ tuyệt vời nhất !', 'hoa_tiet_co_dien.jpg', 16, 'sep', 'Anna Balashova', 14, 325),
(8, 0, 'HOA NỞ TRÊN TÀ VÁY', '💐 NGÀY CỦA MẸ đang đến gần, NEM và diễn viên Nguyệt Hằng với vai diễn bà Hoài trong bộ phim \"Hãy nói lời yêu\" trên VTV3 đã cùng thực hiện một bộ ảnh để chia sẻ thông điệp về lời cảm ơn gửi đến những người phụ nữ đã làm Mẹ.|\r\nĐôi lời gửi mẹ!|\r\n💐 Là diễn viên nổi tiếng nhưng cũng là mẹ của 4 đứa con, chị Nguyệt Hằng đã có những chia sẻ đầy sâu sắc và xúc động trong hành trình trở thành người phụ nữ thành công, đồng thời là một người Mẹ tuyệt vời trong mắt các con của mình. Chia sẻ với NEM, chị Nguyệt Hằng cho rằng: \"Không có tình thương nào sâu sắc và ý nghĩa bằng tình yêu của người mẹ dành cho con. Giữa mối quan hệ ấy, dường như có một sợi dây kết nối vô hình không thể chia cắt.\"|\r\n💐 Nhân \"ngày của mẹ\", cùng GLAMMY kể những câu chuyện của bạn và gửi lời cảm ơn tới mẹ của mình bạn nhé!|\r\nMẹ tuyệt vời nhất !', 'hoa_no.jpg', 24, 'feb', 'Anna Balashova', 25, 152),
(9, 0, 'COLOR REPORT: CAMEL, BEIGE & NUDE', '💐 NGÀY CỦA MẸ đang đến gần, NEM và diễn viên Nguyệt Hằng với vai diễn bà Hoài trong bộ phim \"Hãy nói lời yêu\" trên VTV3 đã cùng thực hiện một bộ ảnh để chia sẻ thông điệp về lời cảm ơn gửi đến những người phụ nữ đã làm Mẹ.|\r\nĐôi lời gửi mẹ!|\r\n💐 Là diễn viên nổi tiếng nhưng cũng là mẹ của 4 đứa con, chị Nguyệt Hằng đã có những chia sẻ đầy sâu sắc và xúc động trong hành trình trở thành người phụ nữ thành công, đồng thời là một người Mẹ tuyệt vời trong mắt các con của mình. Chia sẻ với NEM, chị Nguyệt Hằng cho rằng: \"Không có tình thương nào sâu sắc và ý nghĩa bằng tình yêu của người mẹ dành cho con. Giữa mối quan hệ ấy, dường như có một sợi dây kết nối vô hình không thể chia cắt.\"|\r\n💐 Nhân \"ngày của mẹ\", cùng GLAMMY kể những câu chuyện của bạn và gửi lời cảm ơn tới mẹ của mình bạn nhé!|\r\nMẹ tuyệt vời nhất !', 'nude.jpg', 8, 'Oct', 'Anna Balashova', 152, 2594);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitietmuahang`
--

CREATE TABLE `tbl_chitietmuahang` (
  `id_chitietmua` int(11) NOT NULL,
  `id_muahang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua_sanpham` int(11) NOT NULL,
  `dongia_sanpham` int(11) NOT NULL,
  `mau_sanpham` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sizemua_sanpham` varchar(25) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitietmuahang`
--

INSERT INTO `tbl_chitietmuahang` (`id_chitietmua`, `id_muahang`, `id_sanpham`, `soluongmua_sanpham`, `dongia_sanpham`, `mau_sanpham`, `sizemua_sanpham`) VALUES
(45, 1, 12, 1, 229000, 'Kem', ' M'),
(58, 1, 54, 1, 560000, 'Kem', 'S'),
(59, 35, 50, 1, 695000, 'Nâu', 'S'),
(61, 1, 33, 1, 495000, 'Kem', '35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhgia`
--

CREATE TABLE `tbl_danhgia` (
  `id_danhgia` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_nguoidung` int(11) DEFAULT NULL,
  `noidung_danhgia` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ngay_danhgia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhgia`
--

INSERT INTO `tbl_danhgia` (`id_danhgia`, `id_sanpham`, `id_nguoidung`, `noidung_danhgia`, `ngay_danhgia`) VALUES
(1, 11, 10, 'Sản phẩm rất đẹp. Giá cả phải chăng vừa túi tiền. Shop giao hàng nhanh và đóng gói đẹp. Sẽ tiếp tục ủng hộ.\r\n\r\n', '2021-05-22 23:36:10'),
(2, 12, 10, 'Sản phẩm rất đẹp. Sẽ tiếp tục ủng hộ cửa hàng\r\n\r\n', '2021-05-13 23:36:15'),
(3, 11, 10, 'Sản phẩm chất lượng.\r\n\r\n', '2021-05-05 23:36:26'),
(16, 52, 10, 'đẹp\r\n ', '2021-05-22 06:38:54'),
(19, 55, 10, 'hihi ', '2021-05-22 14:45:10'),
(20, 55, 10, 'hihi ', '2021-05-22 14:45:17'),
(21, 46, 10, 'Ahihi ', '2021-05-22 14:54:22'),
(22, 46, 10, 'Ahihi ', '2021-05-22 14:54:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhgiasanpham`
--

CREATE TABLE `tbl_danhgiasanpham` (
  `id_danhgiasanpham` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_danhgia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenphu_danhmuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `ten_danhmuc`, `tenphu_danhmuc`) VALUES
(1, 'Quần', 'Sản phẩm'),
(2, 'Áo', 'Sản phẩm'),
(4, 'Đầm', 'Sản phẩm'),
(5, 'Giày', 'Phụ kiện'),
(6, 'Túi xách', 'Phụ kiện'),
(7, 'BTS Xanh dương', 'Bộ sưu tập'),
(8, 'Công sở', 'Bộ sưu tập'),
(9, 'Cá tính', 'Bộ sưu tập\r\n'),
(10, 'Blog', 'Blog'),
(11, 'Blog Post', 'Blog');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_muahang`
--

CREATE TABLE `tbl_muahang` (
  `id_muahang` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `thoigian_muahang` date NOT NULL,
  `trangthai_muahang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_muahang`
--

INSERT INTO `tbl_muahang` (`id_muahang`, `id_nguoidung`, `thoigian_muahang`, `trangthai_muahang`) VALUES
(1, 10, '2021-05-21', 'nhap'),
(35, 11, '2021-05-22', 'hoàn tất'),
(46, 11, '2021-05-22', 'nhap');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nguoidung`
--

CREATE TABLE `tbl_nguoidung` (
  `id_nguoidung` int(11) NOT NULL,
  `email_nguoidung` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_nguoidung` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten_nguoidung` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai_nguoidung` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nguoidung`
--

INSERT INTO `tbl_nguoidung` (`id_nguoidung`, `email_nguoidung`, `password_nguoidung`, `hoten_nguoidung`, `dienthoai_nguoidung`) VALUES
(10, 'a', '1', 'Nguyễn Quốc Duy', '0334433229'),
(11, 'tnu1805', '1', 'Nguyễn Duy', '0334433229');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `ten_sanpham` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chitiet_sanpham` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thongtin_sanpham` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hinhanh_sanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '200x300px',
  `hinhanhphu1_sanpham` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '200x300px',
  `hinhanhphu2_sanpham` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '200x300px',
  `hinhanhphu3_sanpham` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT '200x300px',
  `gia_sanpham` int(11) DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `soluong_sanpham` int(11) DEFAULT NULL,
  `size_sanpham` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sale_sanpham` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `ten_sanpham`, `chitiet_sanpham`, `thongtin_sanpham`, `hinhanh_sanpham`, `hinhanhphu1_sanpham`, `hinhanhphu2_sanpham`, `hinhanhphu3_sanpham`, `gia_sanpham`, `id_danhmuc`, `soluong_sanpham`, `size_sanpham`, `sale_sanpham`) VALUES
(1, 'QUẦN LỬNG KẺ ỐNG ĐỨNG', 'Dòng sản phẩm: Ladies\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Ống đứng\r\nĐộ dài: Ngang mắt cá chân\r\nHọa tiết: Kẻ\r\nChất liệu: Tuysi', 'Quần lửng kẻ ống rộng, cạp cao. Đường ly thẳng cố định trên ống. Có 2 túi chéo, 1 bên đính 3 khuy kim loại hình tròn trang trí. Cài bằng khóa kéo ẩn sau lưng.\r\nMang kiểu dáng đơn giản, rộng vừa phải, dễ mặc và dễ phối cùng những kiểu áo khác, giúp người mặc thể hiện được sự chỉnh chu nhưng vẫn thanh lịch và thời trang. Đặc biệt, chất liệu Tuysi đứng phom sẽ giúp nàng tôn được đôi chân dài đồng thời cũng có tác dụng giúp đôi chân thêm thon gọn.', 'quan1.jpg', 'quan1_1.jpg', 'quan1_2.jpg', 'quan1_3.jpg', 350000, 1, 50, 'XS,S,M,L,XL', 10),
(2, 'QUẦN JEANS DÁNG CULOTTES', 'Dòng sản phẩm: You\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Culottes\r\nĐộ dài: Ngang bắp chân\r\nHọa tiết: Trơn\r\nChất liệu: Denim', 'Quần jeans cạp cao có đỉa. Ống dài rộng, dài ngang bắp chân, gấu thả chỉ. Có 5 túi. Cài khóa kéo và khuy kim loại. Kiểu dáng ống suông trẻ trung, năng động\r\n- Thành phần chủ yếu cotton: Mềm mại, an toàn cho da nhạy cảm nhất\r\n- Không sử dụng các chất làm màu, hóa chất độc. Khi mua jeans, khách hàng được tặng gói hút ẩm để bảo quản sp tối ưu\r\n- Có độ bền cao, hạn chế phai, bạc màu: Khóa YKK, cúc được sản xuất riêng. Quá trình giặt cầm màu cho màu bền hơn.', 'quan2.jpg', 'quan2_1.jpg', 'quan2_2.jpg', 'quan2_3.jpg', 410000, 1, 6, 'XS,S,M,L,XL', NULL),
(3, 'QUẦN SOOC ỐNG SUÔNG', 'Dòng sản phẩm: You\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Ống suông\r\nĐộ dài: Ngang đùi\r\nHọa tiết: Trơn\r\nChất liệu: Tuysi', 'Quần sooc cạp cao, cài bằng khóa kéo và khuy. 2 túi chéo 2 bên. Gấu quần lật. Ống suông kiểu rộng.\r\nTrên nền vải Tuysi mềm mại, dễ mặc, độ thấm hút tốt. Các sợi vải rất nhẹ và mềm mịn giúp thoáng mát ban ngày và giữ ấm vào buổi tối. Luôn tạo cảm giác thoải mái cho người mặc và dễ dàng di chuyển, vận động.', 'quan3.jpg', 'quan3_1.jpg', 'quan3_2.jpg', 'quan3_3.jpg', 455000, 1, 10, 'XS,S,M,L,XL', 20),
(4, 'QUẦN LỬNG THÊU VIỀN', 'Dòng sản phẩm: You\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Ống suông\r\nĐộ dài: Lửng\r\nHọa tiết: Trơn\r\nChất liệu: Tuysi', 'Quần lửng ống rộng, cạp cao. Có 2 túi chéo được thêu viền chữ IVY moda. Cài bằng khóa kéo sau lưng.\r\n\r\nMang kiểu dáng đơn giản, rộng vừa phải, dễ mặc và dễ phối cùng những kiểu áo khác, giúp người mặc thể hiện được sự chỉnh chu nhưng vẫn thanh lịch và thời trang.\r\n\r\nĐặc biệt, chất liệu lụa mềm mại, bay bổng sẽ giúp nàng tôn được đôi chân dài đồng thời cũng có tác dụng giúp đôi chân thêm thon gọn.', 'quan4.jpg', 'quan4_1.jpg', 'quan4_2.jpg', 'quan4_3.jpg', 399000, 1, 20, 'XS,S,M,L,XL', NULL),
(5, 'QUẦN SOOC 4 KHUY HOA', 'Dòng sản phẩm: You\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Ống suông\r\nĐộ dài: Ngang đùi\r\nHọa tiết: Trơn\r\nChất liệu: Tuysi', 'Quần sooc ngang đùi, ống suông. Cạp cao, trang trí 4 bông hoa cắt có khuy bọc vải cùng màu phía trước. 2 túi vuông 2 bên. Cài bằng khóa kéo ẩn bên hông.\r\nLà món đồ cực kỳ cơ bản, nhưng đồng thời lại trở thành item không thể thiếu trong tủ đồ của những cô nàng trẻ trung, năng động. Thiết kế củacủa quần đơn giản với chất liệu Tuysi ổn định form dáng, bền màu, ít nhăn. ', 'quan5.jpg', 'quan5_1.jpg', 'quan5_2.jpg', 'quan5_3.jpg', 500000, 1, 8, 'XS,S,M,L,XL', 50),
(6, 'QUẦN SOOC KHAKI GIẢ VÁY', 'Dòng sản phẩm: You\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Giả váy\r\nĐộ dài: Ngang đùi\r\nHọa tiết: Trơn\r\nChất liệu: Khaki', 'Quần sooc khaki giả váy với độ dài ngang đùi. Tà trước đáp chéo, có 6 khuy trang trí phía trước. Cài bằng khóa kéo ẩn sau lưng.\r\nPhần lưng quần được thiết kế với tác dụng che khuyết điểm vòng 2 và khiến eo thon thả hơn nếu nàng sơ vin cùng các kiểu áo khác nhau. ', 'quan6.jpg', 'quan6_1.jpg', 'quan6_2.jpg', 'quan6_3.jpg', 480000, 1, 9, 'XS,S,M,L,XL', 10),
(7, 'QUẦN CULOTTES CHẤM BI', 'Dòng sản phẩm: Ladies\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Culottes\r\nĐộ dài: Qua mắt cá chân\r\nHọa tiết: Chấm bi\r\nChất liệu: Lụa', 'Quần lửng ống suông dáng Culottes. Có 2 túi phía trước. Cài bằng khóa và dây kéo.\r\nMang kiểu dáng đơn giản, ống suông rộng vừa phải, dễ mặc và dễ phối cùng những kiểu áo khác, giúp người mặc thể hiện được sự chỉnh chu nhưng vẫn thanh lịch và thời trang. Đặc biệt, chất liệu lụa mềm mại, bay bổng sẽ giúp nàng tôn được đôi chân dài đồng thời cũng có tác dụng giúp đôi chân thêm thon gọn.', 'quan7.jpg', 'quan7_1.jpg', 'quan7_2.jpg', 'quan7_3.jpg', 495000, 1, 60, 'XS,S,M,L,XL', NULL),
(8, 'QUẦN SOOC GIẢ VÁY', 'Dòng sản phẩm: Ladies\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Giả váy\r\nĐộ dài: Ngang đùi\r\nHọa tiết: Trơn\r\nChất liệu: Tuysi\r\n', 'Quần sooc giả váy, đai dính liền có khóa kim loại 1 bên. Xếp ly lệch 1 bên. Cài bằng khóa kéo ẩn phía sau.\r\nVới thiết kế đơn giản, trẻ trung và năng động. Sử dụng chất liệu Tuysi mềm mại, nhẹ nhàng cho nàng thêm phần tự tin, thoải mái. Đây cũng là một item cơ bản diện hằng ngày, chỉ cần phối hợp kiểu áo khác nhau là bạn đã có thể khéo léo khoe dáng người cân đối cùng đôi chân dài.', 'quan8.jpg', 'quan8_1.jpg', 'quan8_2.jpg', 'quan8_3.jpg', 499000, 1, 15, 'XS,S,M,L,XL', NULL),
(9, 'QUẦN LỬNG ỐNG LOE ', 'Dòng sản phẩm: You\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Ống loe\r\nĐộ dài: Qua gối\r\nHọa tiết: Trơn\r\nChất liệu: Tuysi', 'Quần lửng ống loe. Đáp 2 túi trước may viền ngoài, 2 túi sau không nắp. Trang trí bằng 2 đường khóa kéo kim loại kéo từ trên eo xuống.\r\nThiết kế quần với độ dài ngang bắp chân đem lại sự trẻ trung, cá tính. Dây kéo kim loại tạo điểm nhấn khác biệt, giúp ngưiờ mặc trở nên cá tính và nổi bật. Chất liệu vải Tuysi cao cấp mềm mại, không nhăn, không bai dão, bền bỉ. Mix cùng áo sơ mi, áo thun, áo khoác...để có ngay set đồ mặc đi chơi, đi làm, hẹn hò cực đẹp.', 'quan9.jpg', 'quan9_1.jpg', 'quan9_2.jpg', 'quan9_3.jpg', 500000, 1, 4, 'XS,S,M,L,XL', 20),
(10, 'QUẦN LỬNG KHAKI', 'Dòng sản phẩm: Ladies\r\nNhóm sản phẩm: Quần\r\nKiểu dáng: Ngố ôm\r\nĐộ dài: Ngang mắt cá chân\r\nHọa tiết: Trơn\r\nChất liệu: Khaki', 'Quần lửng dáng ngố ôm, eo có đỉa. Gấu quần may ẩn, xẻ nhẹ. Có 1 túi sau gập viền. Cài bằng dây kéo và khuy bấm.\r\nThiết kế quần với độ dài ngang bắp chân đem lại sự trẻ trung, cá tính. Chất liệu vải Khaki cao cấp bền màu, chuẩn phom, hút ẩm tốt có thể co giãn. Mix cùng áo sơ mi, áo thun, áo khoác...để có ngay set đồ mặc đi chơi, đi làm, hẹn hò cực đẹp.', 'quan10.jpg', 'quan10_1.jpg', 'quan10_2.jpg', 'quan10_3.jpg', 410000, 1, 9, 'XS,S,M,L,XL', 50),
(11, 'Áo dây phối nơ GUMAC', 'Mã sản phẩm: TXN476.\r\n\r\nKiểu dáng: Túi xách thời trang.\r\n\r\nChất liệu: Da tổng hợp.\r\n\r\nMàu sắc: Xanh - Kem - Đen - Nâu.\r\n\r\nKích cỡ: 11cm x 19cm x 3cm.\r\n\r\nXuất xứ: Việt Nam.\r\n\r\nGiá đã bao gồm VAT', 'Túi xách nhỏ trang trí đơn giản nhưng rất sang trọng.\r\n\r\nChiếc túi có 4 sự lựa chọn về màu sắc nhẹ nhàng, pha trộn giữa sắc thái tự nhiên và những sắc thái kỹ thuật số.\r\n\r\nĐiểm nhấn đặc biệt nằm ở họa tiết trang trí Logo dập nổi ấn tượng.\r\n\r\nKiểu dáng chiếc túi rất dễ sử dụng. Bên trong có 1 ngăn lớn. Túi tặng kèm dây đeo da có thể điều chỉnh độ dài.\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp nhiều dịp: đi làm, dạo phố, dự tiệc.', 'Áo11.jpg', 'Áo11.1.jpg', 'Áo11.2.jpg', 'Áo11.3.jpg', 220000, 2, 100, 'S, M, L', 50),
(12, 'Áo kiểu nữ Toson yasua', 'Thương Hiệu: TosonFashion\r\nXuất Xứ: Việt Nam\r\nChất Liệu: Chiffon\r\nMàu Sắc: Trắng\r\nSize: S, M, L\r\n \r\nÁo kiểu nữ Toson trắng cổ tròn ngực mí gân đính nơ hoa 11230W130 thiết kế trẻ trung hiện đại, mang đến hình ảnh dịu dàng nữ tính cùng cảm giác thoải mái khi mặc. Áo kiểu nữ vừa phù hợp với bạn gái năng động trẻ trung, vừa có thể dành cho phụ nữ trưởng thành chín chắn. Những chiếc áo kiểu nữ luôn được TosonFashion không ngừng cập nhật xu hướng đưa vào thiết kế của mình nên bạn hoàn toàn có thể yên tâm khi lựa chọn. Hãy chọn những chiếc áo kiểu nữ TosonFashion với kiểu dáng cách điệu vừa phải, đừng chọn những kiểu cách điệu quá nhiều. Với những chiếc áo đã được cách điệu nhiều chi tiết bạn nên chọn những chiếc quần hoặc chân váy đơn giản để tạo sự cân bằng hoàn hảo cho set đồ của mình nhé!\r\n\r\nĐặc điểm sản phẩm\r\n- Thiết kế form suông, tay dài thanh lịch\r\n- Kiểu dáng thời trang, mang đậm nét dịu dàng, nữ tính\r\n- Dáng suông dễ mặc, phù hợp nhiều đối tượng khách hàng\r\n- Màu sắc cơ bản, giúp nàng thoải mái mix-match nhiều phong cách\r\n- Phù hợp nhiều hoàn cảnh, dễ dàng kết hợp trang phục và nhiều phụ kiện', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp\r\n', 'Áo12.jpg', 'Áo12.1.jpg', 'Áo12.2.jpg', 'Áo12.3.jpg', 229000, 2, 100, 'S, M, L', 50),
(13, 'Áo kiểu nữ tay bồng Clara ', 'Thương Hiệu: Clara Mare\r\nXuất Xứ: Việt Nam\r\nChất Liệu: Voan tơ Hàn Quốc\r\nThành Phần: 30% Rayon, 70% Polyester\r\nMàu Sắc	Hoa nền trắng\r\nLớp Lót	Không\r\nSize	S, M, L\r\n \r\nÁo kiểu nữ tay bồng Clara Mare cổ tim đai dún hoa ba màu BLS30023 thiết kế trẻ trung hiện đại, mang đến hình ảnh dịu dàng nữ tính cùng cảm giác thoải mái khi mặc. Áo kiểu nữ vừa phù hợp với bạn gái năng động trẻ trung, vừa có thể dành cho phụ nữ trưởng thành chín chắn. Những chiếc áo kiểu nữ luôn được Clara Mare Fashion không ngừng cập nhật xu hướng đưa vào thiết kế của mình nên bạn hoàn toàn có thể yên tâm khi lựa chọn. Hãy chọn những chiếc áo kiểu nữ Clara Mare với kiểu dáng cách điệu vừa phải, đừng chọn những kiểu cách điệu quá nhiều. Với những chiếc áo đã được cách điệu nhiều chi tiết bạn nên chọn những chiếc quần hoặc chân váy đơn giản để tạo sự cân bằng hoàn hảo cho set đồ của mình nhé!\r\n\r\nĐặc điểm sản phẩm:\r\n- Thiết kế cổ V, tay lửng, dáng ngắn\r\n\r\n- Kiểu dáng thời trang, mang đậm nét dịu dàng, nữ tính\r\n\r\n- Dáng suông dễ mặc, phù hợp nhiều đối tượng khách hàng\r\n\r\n- Màu sắc cơ bản, giúp nàng thoải mái mix-match nhiều phong cách\r\n\r\n- Phù hợp nhiều hoàn cảnh, dễ dàng kết hợp trang phục và nhiều phụ kiện', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo13.jpg', 'Áo13.1.jpg', 'Áo13.2.jpg', 'Áo13.3.jpg', 299000, 2, 100, 'S, M, L', 20),
(14, 'Áo kiểu nữ Toson cam', 'Thương Hiệu: TosonFashion\r\nXuất Xứ	Việt Nam\r\nChất Liệu: Lụa\r\nMàu Sắc	Cam\r\nSize: S, M, L\r\n\r\nÁo kiểu nữ Toson cam cổ xếp can đính cúc 14112C930 được may từ chất liệu Lụa đem đến hình ảnh nhẹ nhàng và nữ tính cho phái đẹp. Áo kiểu nữ vừa phù hợp với bạn gái năng động trẻ trung, vừa có thể dành cho phụ nữ trưởng thành chín chắn. Những chiếc áo kiểu nữ luôn được La Lune Fashion không ngừng cập nhật xu hướng đưa vào thiết kế của mình nên bạn hoàn toàn có thể yên tâm khi lựa chọn. Hãy chọn những chiếc áo kiểu nữ TosonFashion với kiểu dáng cách điệu vừa phải, đừng chọn những kiểu cách điệu quá nhiều. Với những chiếc áo đã được cách điệu nhiều chi tiết bạn nên chọn những chiếc quần hoặc chân váy đơn giản để tạo sự cân bằng hoàn hảo cho set đồ của mình nhé!\r\n\r\n \r\n\r\nĐặc điểm sản phẩm\r\n- Thiết kế cổ xếp can đính cúc trang trí\r\n\r\n- Kiểu dáng trẻ trung, thanh lịch nữ tính\r\n\r\n- Form may đúng chuẩn, đường may đẹp mắt\r\n\r\n- Phù hợp với nhiều dáng người và nhiều không gian đến\r\n\r\n- Gam màu tinh tế, dễ kết hợp trang phục, thoải mái mix&match', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo14.jpg', 'Áo14.1.jpg', 'Áo14.2.jpg', 'Áo14.3.jpg', 399000, 2, 100, 'S, M, L', 20),
(15, 'Áo kiểu nữ cổ V J-P Fashion', 'Thương Hiệu: J-P Fashion\r\n\r\nXuất Xứ: Việt Nam\r\n\r\nChất Liệu: Kate\r\n\r\nMàu Sắc: Nâu\r\n\r\nSize: S, M, L\r\n\r\nÁo kiểu nữ cổ V J-P Fashion 10604112 Nâu sở hữu kiểu dáng đơn giản đề cao sự thoải mái, tự tin nhưng cũng không kém phần thời trang dành riêng cho những cô nàng sành điệu. J-P Fashion mang đến xu hướng thời trang đa dạng, độc đáo, mẫu mã mới luôn được cập nhật thường xuyên với tiêu chí \"UY TÍN - ĐƠN GIẢN & TIỆN LỢI\". Áo kiểu nữ cổ V 10604112 sẽ đem đến cho phái đẹp những trải nghiệm tuyệt vời mỗi lần mặc cũng như giúp các nàng trở nên xinh đẹp và tinh tế hơn khi khoác lên người sản phẩm của J-P Fashion.\r\n\r\n \r\nĐặc điểm sản phẩm\r\n- Mang phong cách năng động, trẻ trung\r\n\r\n- Thiết kế thời trang kết hợp cùng gam màu hiện đại\r\n\r\n- Đường may tỉ mỉ, chắc chắn và bền đẹp kết hợp với thiết kế độc đáo\r\n\r\n- Kiểu dáng dễ dàng mix&match trang phục và các phụ kiện thời trang khác\r\n\r\n- Phù hợp nhiều không gian đến, giúp phái đẹp tự tin thể hiện cá tính thời trang', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo15.jpg', 'Áo15.1.jpg', 'Áo15.2.jpg', 'Áo15.3.jpg', 249000, 2, 100, 'S, M, L', 10),
(16, 'Áo kiểu nữ  thanh lịch', 'Thương Hiệu: Quyên\r\nXuất Xứ: Việt Nam\r\nChất Liệu: Chifon cát\r\nMàu Sắc: Hồng/ Trắng/Ghi\r\nSize: S, M, L\r\n \r\nÁo kiểu nữ Quyên thanh lịch AA484 AA484 thiết kế trẻ trung hiện đại, mang đến hình ảnh dịu dàng nữ tính cùng cảm giác thoải mái khi mặc. Áo kiểu nữ vừa phù hợp với bạn gái năng động trẻ trung, vừa có thể dành cho phụ nữ trưởng thành chín chắn. Những chiếc áo kiểu nữ luôn được Quyên Fashion không ngừng cập nhật xu hướng đưa vào thiết kế của mình nên bạn hoàn toàn có thể yên tâm khi lựa chọn. Hãy chọn những chiếc áo kiểu nữ với kiểu dáng cách điệu vừa phải, đừng chọn những kiểu cách điệu quá nhiều. Với những chiếc áo đã được cách điệu nhiều chi tiết bạn nên chọn những chiếc quần hoặc chân váy đơn giản để tạo sự cân bằng hoàn hảo cho set đồ của mình nhé!\r\n\r\n \r\nĐặc điểm sản phẩm\r\n- Thiết kế hiện đại trẻ trung, phong cách Hàn Quốc\r\n\r\n- Kiểu dáng thời trang, mang đậm nét dịu dàng, nữ tính\r\n\r\n- Dáng suông dễ mặc, phù hợp nhiều đối tượng khách hàng\r\n\r\n- Màu sắc cơ bản, giúp nàng thoải mái mix-mach nhiều phong cách\r\n\r\n- Phù hợp nhiều hoàn cảnh, dễ mix cùng quần tây, quần kiểu, chân váy', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo16.jpg', 'Áo16.1.jpg', 'Áo16.2.jpg', 'Áo16.3.jpg', 199000, 2, 100, 'S, M, L', 10),
(17, 'Áo Kyeon Fashion hồng ', 'Thương Hiệu:Kyeon Fashion\r\nXuất Xứ: Việt Nam\r\nChất Liệu: Cát hàn\r\nMàu Sắc	Hồng\r\nSize: S, M, L\r\n \r\nÁo kiểu nữ Kyeon Fashion hồng cổ trắng thanh lịch KA108 được may từ chất liệu Cát hàn, thiết kế trẻ trung hiện đại, mang đến hình ảnh dịu dàng nữ tính cùng cảm giác thoải mái khi mặc. Áo kiểu nữ là món đồ thời trang phải có của bất kỳ cô gái nào. Bạn có thể mặc đi làm, đi học hoặc đi chơi... chỉ cần biết cách kết hợp cùng trang phục phù hợp. Những chiếc áo kiểu nữ luôn được Kyeon Fashion không ngừng cập nhật xu hướng đưa vào thiết kế của mình nên bạn hoàn toàn có thể yên tâm khi lựa chọn. Hãy chọn những chiếc áo với kiểu dáng cách điệu vừa phải, đừng chọn những kiểu cách điệu quá nhiều. Với những chiếc áo kiểu  đã được cách điệu nhiều chi tiết bạn nên chọn những chiếc quần hoặc chân váy đơn giản để tạo sự cân bằng hoàn hảo cho set đồ của mình nhé!\r\n\r\n\r\nĐặc điểm sản phẩm\r\n- Thiết kế đơn giản nhưng nhẹ nhàng, thanh lịch\r\n\r\n- Kiểu dáng thời trang, mang đậm nét dịu dàng, nữ tính\r\n\r\n- Form dáng dễ mặc, phù hợp với nhiều đối tượng khách hàng\r\n\r\n- Đẹp hơn khi sơ vin chiếc áo của bạn khi kết hợp cùng quần hoặc chân váy\r\n\r\n- Phù hợp nhiều hoàn cảnh, dễ dàng kết hợp trang phục và phụ kiện khác nhau', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo17.jpg', 'Áo17.1.jpg', 'Áo17.2.jpg', 'Áo17.3.jpg', 499000, 2, 100, 'S, M, L', NULL),
(18, 'Áo Kyeon Fashion tay lỡ', 'Thương Hiệu: Kyeon Fashion\r\nXuất Xứ: Việt Nam\r\nChất Liệu: Lụa\r\nMàu Sắc: Be\r\n \r\nÁo kiểu nữ Kyeon Fashion cổ đổ tay lỡ thanh lịch KA052 được may từ chất liệu Lụa, thiết kế trẻ trung hiện đại, mang đến hình ảnh dịu dàng nữ tính cùng cảm giác thoải mái khi mặc. Áo kiểu nữ  vừa phù hợp với bạn gái năng động trẻ trung, vừa có thể dành cho phụ nữ trưởng thành chín chắn. Những chiếc áo kiểu nữ Kyeon Fashion không ngừng cập nhật xu hướng đưa vào thiết kế của mình nên bạn hoàn toàn có thể yên tâm khi lựa chọn. Hãy chọn những chiếc áo kiểu nữ  với kiểu dáng cách điệu vừa phải, đừng chọn những kiểu cách điệu quá nhiều. Với những chiếc áo đã được cách điệu nhiều chi tiết bạn nên chọn những chiếc quần hoặc chân váy đơn giản để tạo sự cân bằng hoàn hảo cho set đồ của mình nhé!\r\n\r\n \r\nĐặc điểm sản phẩm\r\n- Thiết kế đơn giản nhưng thời thượng tinh tế\r\n\r\n- Kiểu dáng thời trang, mang đậm nét dịu dàng, nữ tính\r\n\r\n- Dáng suông dễ mặc, phù hợp nhiều đối tượng khách hàng\r\n\r\n- Màu sắc cơ bản, giúp nàng thoải mái mix-mach nhiều phong cách\r\n\r\n- Phù hợp nhiều hoàn cảnh, dễ dàng kết hợp trang phục và nhiều phụ kiện', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo18.jpg', 'Áo18.1.jpg', 'Áo18.2.jpg', 'Áo18.3.jpg', 479000, 2, 100, 'S, M, L', NULL),
(19, 'Áo Phông Xanh Cổ Tròn', 'Thương Hiệu: TosonFashion\r\nXuất Xứ: Việt Nam\r\nChất Liệu: Cotton\r\nMàu Sắc	Xanh\r\nSize: S, M, L\r\n \r\n\r\nÁo Phông Xanh Cổ Tròn In Chữ Serotomin TOSON AP002X51 đem đến hình ảnh nhẹ nhàng và nữ tính cho phái đẹp. Áo thun nữ là sự kết hợp hoàn hảo giữa chất liệu, kiểu dáng và màu sắc. Chỉ cần chút khéo léo nàng sẽ biến chiếc áo quen thuộc trở nên cá tính, đa dạng phong cách. Thời trang TOSON sẽ giúp các nàng tỏa sáng theo cách riêng của mình khi kết hợp trang phục hay phụ kiện phù hợp. Hãy cùng Yes24 tạo nên vẻ đẹp sành điệu và duyên dáng cho chị em chúng mình nhé.\r\n\r\n \r\nĐặc điểm sản phẩm\r\nChất liệu được chọn lọc tỉ mỉ, kỹ càng\r\nThiết kế basic, phù hợp nhiều dáng người\r\nKiểu dáng thời trang, nữ tính, giúp phái đẹp tự tin và quyến rũ hơn\r\nĐường may cẩn thận, tinh tế, tạo nên giá trị cũng như chất lượng của sản phẩm\r\nPhù hợp nhiều hoàn cảnh, dễ dàng kết hợp trang phục và nhiều phụ kiện', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo19.jpg', 'Áo19.1.jpg', 'Áo19.2.jpg', 'Áo19.3.jpg', 159000, 2, 100, 'S, M, L', 10),
(20, 'Sơ mi cổ thêu cành tay lỡ', 'Chất Vải: Chất liệu vải Hàn Quốc cao cấp\r\nĐặc Điểm: Sơ mi cổ tròn rút đai eo thêu cành hóa lá tay lỡ cao cấp của MM Outfit.\r\nÁo dáng peplum cổ tròn, tay lỡ bo nhẹ, thêu hoa trang trí phần cầu ngực trái.\r\nÁo peplum trước giờ vẫn luôn là những chiếc áo mang đầy sự quyến rũ, quyền lực sẽ giúp chị em tạo lên phong thái lịch sự và sang trọng.\r\nKích Thước: Chiều dài áo size S là 57 cm, mỗi size chênh lệch khoảng 2cm\r\nMàu Sắc: Trắng, vàng', 'Hướng Dẫn Bảo Quản	\r\n- Giặt riêng sản phẩm màu sáng và màu tối\r\n- Giặt sản phẩm với nước ở nhiệt độ thường\r\n- Không nên sử dụng chất tẩy, không xoắn vắt mạnh\r\n- Ủi mặt trái sản phẩm và ủi với nhiệt độ không quá 110 độ C\r\n- Nên phơi mặt trái sản phẩm và không phơi dưới ánh nắng trực tiếp', 'Áo20.jpg', 'Áo20.1.jpg', 'Áo20.2.jpg', 'Áo20.3.jpg', 459000, 2, 100, 'S, M, L', NULL),
(21, 'ĐẦM LỤA HOA NỔI', 'Đầm 2 lớp với thiết kế cổ cách điệu, đính hoa nổi giúp các cố quý trở nên quyến rũ. Ở phần eo có chiết kéo tà lệch, giúp tôn dáng tạo sự nhẹ nhàng, mềm mại cho người mặc. Tùng váy xòe, cài bằng khóa kéo ẩn bên sườn.\r\n\r\nĐầm 2 lớp có chất liệu lụa bóng cao cấp mềm mại càng tôn lên sự nhẹ nhàng, sang trọng, giúp các quý cô luôn tự tin. Sản phẩm phù hợp với đi event sang trọng, đi làm hay đi chơi đều dễ dàng ứng dụng.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam21.jpg', 'Dam21.1.jpg', 'Dam21.2.jpg', 'Dam21.3.jpg', 1790000, 4, 100, 'XS,S,M,L,XL', 20),
(22, 'ĐẦM XẾP LY CỔ YẾM', 'Đầm xếp ly dáng xuông, cổ yếm được đan dây. Có đai rời cùng màu đi kèm. Độ dài ngang bắp. Cài bằng khuy giọt lệ sau cổ. Bên ngoài là vải lụa bóng, bên trong được lót lớp lụa mỏng đồng màu.\r\n\r\nKhó có thể phủ nhận sức hấp dẫn của chiếc đầm cổ yếm, phom rộng thanh thoát. Được sáng tạo dựa trên trang phục truyền thống của phụ nữ Việt. Phom dáng rộng rãi, độ xòe lý tưởng và bảng màu phong phú là những điểm làm nên sức hấp dẫn, biến thiết kế này trở thành “hot trend” của mùa Hè năm nay.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam22.jpg', 'Dam22.1.jpg', 'Dam22.2.jpg', 'Dam22.3.jpg', 1890000, 4, 100, 'XS,S,M,L,XL', NULL),
(23, 'ĐẦM XÒE CỔ TRÒN', 'Đầm xòe cổ tròn, dáng sát nách (không tay). Eo chiết có đai liền kiểu giắc lăng đính khuy. Mặt trước xếp nếp may chần tạo xòe. Cài bằng khóa kéo ẩn sau lưng.\r\n\r\nĐược triển khai trên nền chất liệu Tuysi mềm mại, thân thiện với làn da, thấm hút mồ hôi tốt, tạo cảm giác thoáng mát, dễ chịu \"mặc như không mặc\" thích hợp để nàng diện trong những ngày hè nóng bức sắp tới. Gam màu nhẹ nhàng, trang nhã và đảm bảo rằng tone màu này tạo nên một diện mạo giúp nàng thu hút mọi ánh nhìn. Nàng có thể thoải mái diện khi đi làm, dạo phố, hẹn hò...', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam23.jpg', 'Dam23.1.jpg', 'Dam23.2.jpg', NULL, 1390000, 4, 100, 'XS,S,M,L,XL', 50),
(24, 'ĐẦM CHIFFON HẠT NỔI', 'Đầm cổ tròn, tay ngắn bằng vải 1 lớp kiểu xuyên thấu. Eo chiết có đai kiểu giắc lăng đi liền, xếp ly cố định dài xuống tùng tạo xòe. Phần chân kiểu đuôi cá xẻ phía sau. Cài bằng khóa kéo ẩn sau lưng.\r\n\r\nBằng chất liệu Chiffon hạt nổi bên trong có lót lớp lụa rời đem đến cảm giác kín đáo đầy trang nhã. Với thiết kế này nàng có thể diện nhiều dịp khác nhau, dạo phố cùng bạn bè hay đến sở làm đều mang lại cho nàng cảm giác thoải mái và chỉnh chu.\r\n\r\nMàu sắc: Họa tiết Đen - Họa tiết Xanh Tím Than - Họa tiết Xanh Dương Đậm', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam24.jpg', 'Dam24.1.jpg', 'Dam24.2.jpg', 'Dam24.3.jpg', 1290000, 4, 100, 'XS,X,M,L,XL', NULL),
(25, 'ĐẦM LỤA CỔ ĐỔ TÙNG XẾP ', 'Đầm lụa 2 lớp, cổ đổ có tay áo. Eo chiết. Tùng váy xếp ly đều cách điệu. Trang trí hạt ngọc trai tạo điểm nhấn trên ngực. Cài khóa kéo ẩn bên hông. Vải hiệu ưng hạt nổi.\r\n\r\nKiểu dáng sang trọng, thời thượng cùng thiết kế mới lạ sẽ giúp bạn ghi điểm ngay khi diện. Đừng quên mix cùng phụ kiện để giúp nàng tỏa sáng hơn nhé.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam25.jpg', 'Dam25.1.jpg', 'Dam25.2.jpg', 'Dam25.3.jpg', 1575000, 4, 100, 'XS,S,M,L,XL', 20),
(26, 'ĐẦM LỤA GÂN TAY LỠ', 'Đầm lụa gân bên trong lót vải. Cổ V, tay lỡ bo gấu. Eo chiết có dây móc tạo điểm nhấn. Tùng váy xòe dài ngang bắp chân. Cài bằng khóa kéo ẩn sau lưng.\r\n\r\nĐược may trên chất liệu vải gân cao cấp, không cần bất cứ họa tiết nào, chiếc đầm này cũng khiến người mặc trở nên thật thanh lịch và kiêu sa. Để item này trở nên nổi bật đừng quên phối cùng đổi bông tai to bản và đôi giày cao gót để tôn lên vóc dáng chuẩn chỉnh.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam26.jpg', 'Dam26.1.jpg', 'Dam26.2.jpg', 'Dam26.3.jpg', 1343000, 4, 100, 'XS,S,M,L,XL', NULL),
(27, 'ĐẦM XÒE CỔ 2 VE', 'Đầm xòe 2 lớp, cổ hai ve khoét chữ K. Vạt đắp chéo, eo chiết có đỉa kèm đai mặt tròn. Phần tùng xếp nếp tạo xòe. Cài bằng khóa kéo ẩn bên sườn.\r\n\r\nĂn điểm ở dáng đầm phá cách, đầm dáng sơ mi tùng váy xòe. Chất liệu tuysi cao cấp mềm, co giãn, khả năng giữ form dáng hoàn hảo. Là items phù hợp cho những nàng văn phòng công sở, cho những set đồ thời trang lịch sự và sang trọng.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam27.jpg', 'Dam27.1.jpg', 'Dam27.2.jpg', 'Dam27.3.jpg', 1268000, 4, 100, 'XS,S,M,L,XL', 10),
(28, 'ĐẦM LỤA XÒE VAI LỆCH', 'Đầm lụa 2 lớp vai lệch. 1 bên tay áo ngắn xếp nếp phồng nhẹ. Eo chiết. Tùng váy xòe. Cài bằng khóa kéo ẩn bên hông.\r\n\r\nForm dáng sang trọng, quyến rũ với điểm nhấn vai lệch cổ điển, điệu đà nữ tính. Gam màu đơn sắc nhã nhặn và tôn da nàng kết hợp ăn ý cùng chất liệu lụa 2 da cao cấp mềm mịn, nhẹ, không bám dính trên người mặc và không nhăn. Với thiết kế này chỉ cần diện thêm một đôi giày cao gót và phụ kiện đơn giản nàng đã nổi bật dù ở nơi đâu.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam28.jpg', 'Dam28.1.jpg', 'Dam28.2.jpg', 'Dam28.3.jpg', 1550000, 4, 100, 'XS,S,M,L,XL', 10),
(29, 'ĐẦM LỤA XÒE VAI XOẮN', 'Đầm lụa 2 lớp, cổ xoắn 1 bên. Dáng không tay. Eo chiết. Tùng váy xếp ly xòe. Cài bằng khóa kéo ẩn sau lưng.\r\n\r\nVới kiểu dáng xòe đơn giản bồng bềnh, được nhấn nhá ở vòng eo giúp định hình vòng eo tôn dáng, nàng có thể diện vừa diện đi làm vừa diện đi tiệc tùng sau giờ tan tầm cũng cực kỳ hợp lý. Chất lụa bóng mềm, mát, có lớp lót bên trong kín đáo.', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam29.jpg', 'Dam29.1.jpg', 'Dam29.2.jpg', 'Dam29.3.jpg', 1418000, 4, 100, 'XS,S,M,L,XL', NULL),
(30, 'ĐẦM MAXI CỔ Vila', 'Đầm maxi cổ V, tay sát nách. Eo chiết có đai rời đi kèm. Tùng váy xòe xếp lớp, dài ngang mắt cá chân. Cài bằng khóa kéo ẩn sau lưng.\r\n\r\nChất liệu vải lụa (có lớp lót bên trong) mềm mịn, co dãn nhẹ, mặc cực thoải mái, lên form dáng cực chuẩn !', 'Chi tiết bảo quản sản phẩm : \r\n\r\n* Vải dệt kim : sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.\r\n\r\n* Vải voan , lụa , chiffon nên giặt bằng tay.\r\n\r\n* Vải thô , tuytsy , kaki không có phối hay trang trí đá cườm thì có thể giặt máy.\r\n\r\n* Vải thô , tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.\r\n\r\n* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans.Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác. \r\n\r\n* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.\r\n\r\n* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ , vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.\r\n\r\n* Nên phơi sản phẩm tại chỗ thoáng mát , tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.\r\n\r\n* Những chất vải 100% cotton , không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.\r\n\r\n* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng , mát và không bị cháy , giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải. ', 'Dam30.jpg', 'Dam30.1.jpg', 'Dam30.2.jpg', 'Dam30.3.jpg', 1790000, 4, 100, 'XS,S,M,L,XL', 20),
(31, 'Giày Sandal Điệu 2 Màu', 'Mã sản phẩm: SD07065\r\nKiểu dáng: Giày xăng đan\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 7cm\r\nMàu sắc: Xanh-Trắng kem-Đen\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Giày ôm cổ chân quai mảnh thanh lịch\r\nThiết kế đơn giản, thanh lịch. Giày cao 5cm, gót cách điệu 2 màu nổi bật\r\nChất liệu da tổng hợp cao cấp. Giày phù hợp để đi làm, dạo phố hay đi tiệc', 'giay1.jpg', 'giay1_1.jpg', 'giay1_2.jpg', 'giay1_3.jpg', 495000, 5, 10, '35,36,37,38,39', 20),
(32, 'Giày Sandal Quai Ngang', 'Mã sản phẩm: SD07061\r\nKiểu dáng: Giày xăng đan\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 7cm\r\nMàu sắc: Kem-Trắng-Đen\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Thiết kế tối giản, dễ phối với quần áo\r\nGót vuông thời thượng cao 7cm phối kim loại cực bắt mắt, có kèm rãnh chống trượt\r\nChất liệu da tổng hợp cao cấp, phù hợp để sử dụng mọi dịp, từ đi làm, dạo phố hay đi tiệc.', 'giay2.jpg', 'giay2_1.jpg', 'giay2_2.jpg', 'giay2_3.jpg', 495000, 5, 8, '35,36,37,38,39', 50),
(33, 'Giày Slingback Gót 2 Màu', 'Mã sản phẩm: CG07105\r\nKiểu dáng: Giày cao gót\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 7cm\r\nMàu sắc: Trắng kem-Đen-Hồng\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Giày slingback mũi bít hiện đại, thời thượng\r\nGót cao 7cm phối 2 màu nổi bật\r\nChất liệu da tổng hợp cao cấp, phù hợp mang mọi dịp: đi làm, đi tiệc, dạo phố', 'giay3.jpg', 'giay3_1.jpg', 'giay3_2.jpg', 'giay3_3.jpg', 495000, 5, 7, '35,36,37,38,39', NULL),
(34, 'Giày Sandal Gót Chữ A', 'Mã sản phẩm: SD07064\r\nKiểu dáng: Giày xăng đan\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 7cm\r\nMàu sắc: Trắng kem-Đen-Hồng\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Sandal mũi vuông, quai mảnh thanh lịch\r\nGót chữ a cách điệu nổi bật\r\nChất liệu da tổng hợp cao cấp, phù hợp mọi dịp: đi làm, dạo phố hoặc dự tiệc', 'giay4.jpg', 'giay4_1.jpg', 'giay4_2.jpg', 'giay4_3.jpg', 495000, 5, 9, '35,36,37,38,39', NULL),
(35, 'Giày Sandal Đế Đúp Gót', 'Mã sản phẩm: SD09093\r\nKiểu dáng: Giày xăng đan\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 9cm\r\nMàu sắc: Xanh-Đen-Hồng\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Giày sandal đế đúp nổi bật, quai ngang thanh mảnh\r\nĐây là đôi giày có kiểu dáng thanh lịch và 3 sự lựa chọn về màu sắc: Xanh, Hồng, Đen. \r\nChất liệu da tổng hợp cao cấp, phù hợp mọi dịp: đi làm, dạo phố hoặc dự tiệc.', 'giay5.jpg', 'giay5_1.jpg', 'giay5_2.jpg', 'giay5_3.jpg', 495000, 5, 4, '35,36,37,38,39', 20),
(36, 'Giày Thanh Phối Si Satin', 'Mã sản phẩm: CG09138\r\nKiểu dáng: Giày cao gót\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 9cm\r\nMàu sắc: Nâu-Nâu nhạt-Đen\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Với 3 sự lựa chọn về màu sắc đa dạng, đôi giày còn toát lên vẻ nhã nhặn, tinh tế mới phần mũi nhọn thời thượng.\r\nPhần quai hậu phía sau làm tăng phần mềm mại cho đôi chân của các nàng. Gót thanh nhỏ, cao 9cm và có đế chống trượt giúp di chuyển dễ dàng.\r\nChất liệu da tổng hợp cao cấp, phù hợp mọi dịp: đi làm, dạo phố hoặc dự tiệc.', 'giay6.jpg', 'giay6_1.jpg', 'giay6_2.jpg', 'giay6_3.jpg', 455000, 5, 6, '35,36,37,38,39', NULL),
(37, 'Giày Cao Gót Mũi Nhọn Gót ', 'Mã sản phẩm: CG09130\r\nKiểu dáng: Giày cao gót\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 9cm\r\nMàu sắc: Kem-Trắng-Đen\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Giày ankle strap tối giản, thanh lịch\r\nMũi bít, gót cao 9cm kèm đế chống trượt\r\nChất liệu da tổng hợp cao cấp, phù hợp mang mọi dịp: đi làm, dạo phố hay đi tiệc.', 'giay7.jpg', 'giay7_1.jpg', 'giay7_2.jpg', 'giay7_3.jpg', 455000, 5, 3, '35,36,37,38,39', 50),
(38, 'Giày Sandal Dây Mảnh Gót', 'Mã sản phẩm: SD09092\r\nKiểu dáng: Giày xăng đan\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 9cm\r\nMàu sắc: Kem-Bạc-Đen\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Sandal dây mảnh gót thanh, quai ôm cổ chân quyến rũ\r\nGót nhọn cao 9cm có rãnh chống trượt sẽ giúp đôi chân di chuyển mềm mại hơn\r\nChất liệu da tổng hợp cao cấp, phù hợp mọi dịp: đi làm, dạo phố hoặc dự tiệc.', 'giay8.jpg', 'giay8_1.jpg', 'giay8_2.jpg', 'giay8_3.jpg', 455000, 5, 6, '35,36,37,38,39', NULL),
(39, 'Giày Cao Gót Mũi Nhọn Xi', 'Mã sản phẩm: CG09129\r\nKiểu dáng: Giày cao gót\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 9cm\r\nMàu sắc: Đen-Kem-Xám\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Giày pump gót kim loại sang trọng, thanh lịch\r\nThiết kế tối giản dễ ứng dụng. Gót kim loại cao 9cm, đế kèm rãnh chống trượt\r\nChất liệu da tổng hợp cao cấp, sử dụng nhiều dịp: đi làm, dạo phố hoặc dự tiệc.', 'giay9.jpg', 'giay9_1.jpg', 'giay9_2.jpg', 'giay9_3.jpg', 495000, 5, 8, '35,36,37,38,39', NULL),
(40, 'Giày Cao Gót Gót Thanh Xi', 'Mã sản phẩm: CG09123\r\nKiểu dáng: Giày cao gót\r\nChất liệu: Da tổng hợp\r\nĐộ cao: 9cm\r\nMàu sắc: Kem-Cam-Đen\r\nKích cỡ: 35-36-37-38-39\r\nXuất xứ: Việt Nam\r\nGiá đã bao gồm VAT', 'Giày ankle strap gót kim loại sang trọng\r\nMũi bít trang trí viền thanh kim loại mềm thời thượng. Gót 9cm với đế chống trượt\r\nChất liệu da tổng hợp cao cấp, phù hợp mang mọi dịp: đi làm, dạo phố, đi tiệc', 'giay10.jpg', 'giay10_1.jpg', 'giay10_2.jpg', 'giay10_3.jpg', 495000, 5, 2, '35,36,37,38,39', 10),
(41, 'Túi Handy Sweetest Clutch', 'Mã sản phẩm: TXN417\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Trắng kem nhũ-Đen-Hồng\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Clutch đựng điện thoại lấy ý tưởng từ kem thuộc BST Summer Taste\r\nBề mặt ngoài dập gân nổi, quai tròn bằng kim loại lạ mắt. Bên trong có 1 ngăn đựng vừa smartphone và vật dụng cá nhân nhỏ. Tặng kèm quai kim loại dài để đeo chéo\r\nChất liệu da tổng hợp cao cấp, phù hợp để dạo phố và dự tiệc', 'tx411.jpg', 'tx412.jpg', 'tx413.jpg', 'tx414.jpg', 460000, 6, 100, 'S,M,L', 20),
(42, 'Túi Xách Nhỏ Và Clutch 2in1', 'Mã sản phẩm: TXT201\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Kem-Trắng-Nâu nhạt-Đen-Hồng\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách nhỏ kết hợp với clutch 2 in1 tiện dụng\r\nThiết kế túi nhỏ gọn, có tay cầm kèm dây đeo dây sắt dễ dàng sử dụng\r\nChất liệu da tổng hợp cao cấp với 3 tông màu dễ chọn.', 'tx425.jpg', 'tx426.jpg', 'tx425.jpg', 'tx426.jpg', 560000, 6, 100, 'S,M,L', 10),
(43, 'Túi Freezing Fluffy', 'Mã sản phẩm: TXN420\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Xanh Rêu-Kem hồng-Đen\r\nKích cỡ: 23cmx15cmx7cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi dạng xếp lấy ý tưởng từ kem thuộc BST Summer Taste\r\nBề mặt ngoài dập gân nổi, đính kèm charm hình que kem xinh xắn. Bên trong có nhiều ngăn xếp lạ mắt. Quai dây xích thanh lịch.\r\nChất liệu da tổng hợp cao cấp, phù hợp để đi làm, dạo phố.', 'tx431.jpg', 'tx432.jpg', 'tx433.jpg', 'tx434.jpg', 399000, 6, 100, 'S,M,L', 20),
(44, 'Túi Xách Nhỏ Minnie Hộp', 'Mã sản phẩm: TXN474\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Vàng-Kem-Đen-Hồng-Xanh mint\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách mini với điểm nhấn khóa Mickey phiên bản Minnie thuốc bộ sưu tập MickeyxJuno\r\n\r\nPhối màu ombre tinh tế với liệu da cao cấp, 3 tông màu pastel dễ chọn.\r\n\r\nTúi phù hợp khi phối đồ đi tiệc, dạo phố theo phong cách năng động hay cá tính', 'tx441.jpg', 'tx442.jpg', 'tx443.jpg', 'tx444.jpg', 490000, 6, 110, 'S,M,L', 10),
(45, 'Túi Xách Nhỏ Tuck-In', 'Mã sản phẩm: TXN472\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Kem-Đen\r\nKích cỡ: 22cmx12cmx7cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách nhỏ nắp cách điệu lạ mắt\r\n\r\nChiếc túi độc đáo với kiểu dáng mới dễ sử dụng. Nắp túi được cách điệu vô cùng thú vị. Túi có 3 sự lựa chọn về màu sắc, dễ phối đồ.\r\n\r\nBên trong gồm 1 ngăn lớn và 1 ngăn có khóa kéo. Túi kèm dây đeo da có thể điều chỉnh độ dài.\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp mang nhiều dịp: đi làm, dạo phố, dự tiệc', 'txt451.jpg', 'txt452.jpg', 'txt453.jpg', 'txt454.jpg', 399000, 6, 100, 'S,M,L', 10),
(46, 'Túi Xách Lớn Tote Charm', 'Mã sản phẩm: TXL057\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Vàng kem-Đen-Xám\r\nKích cỡ: 35cmx25cmx7cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách tote lớn với quai phối móc trang trí hiện đại, thanh lịch\r\n\r\nKhoang túi bên trong rộng rãi, có nhiều ngăn nhỏ giúp việc sắp xếp ngăn nắp, tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp bền đẹp', 'txt461.jpg', 'txt462.jpg', 'txt463.jpg', 'txt464.jpg', 405000, 6, 100, 'S,M,L', 50),
(47, 'Túi Xách Lớn Laptop', 'Mã sản phẩm: BL063\r\nKiểu dáng: Balo thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Trắng-Đen-Xám\r\nKích cỡ: 26cmx25cmx13cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Ba lô thiết kế nổi bật với kiểu dáng nhiều ngăn, khóa kim loại bắt mắt\r\nBên trong có 1 ngăn lớn, 2 ngăn nhỏ kèm khóa kéo tiện dụng\r\nChất liệu da tổng hợp cao cấp, phù hợp để đi làm, dạo phố', 'txt471.jpg', 'txt472.jpg', 'txt473.jpg', 'txt474.jpg', 399000, 6, 100, 'S,M,L', 20);
INSERT INTO `tbl_sanpham` (`id_sanpham`, `ten_sanpham`, `chitiet_sanpham`, `thongtin_sanpham`, `hinhanh_sanpham`, `hinhanhphu1_sanpham`, `hinhanhphu2_sanpham`, `hinhanhphu3_sanpham`, `gia_sanpham`, `id_danhmuc`, `soluong_sanpham`, `size_sanpham`, `sale_sanpham`) VALUES
(48, 'Túi Xách Lớn Tote', 'Mã sản phẩm: TXT204\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Kem-Xanh Rêu-Đen-Hồng\r\nKích cỡ: 27cmx20cmx10cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách tote lớn với quai phối móc trang trí hiện đại, thanh lịch\r\n\r\nKhoang túi bên trong rộng rãi, có nhiều ngăn nhỏ giúp việc sắp xếp ngăn nắp, tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp bền đẹp', 'tx481.jpg', 'tx482.jpg', 'tx483.jpg', 'tx484.jpg', 609000, 6, 100, 'S,M,L', 10),
(49, 'Túi Xách Top Handle', 'Mã sản phẩm: TXN296\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Trắng kem-Xanh rêu-Đen-Xanh lục lam-Đỏ-Hồng\r\nKích cỡ: 20cmx15cmx9cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách tote trung với quai cầm tay chắc chắn, thanh lịch\r\n\r\nKhoang túi bên trong rộng rãi, có nhiều ngăn nhỏ giúp việc sắp xếp ngăn nắp, tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp bền đẹp', 'tx491.jpg', 'tx492.jpg', 'tx493.jpg', 'tx494.jpg', 505000, 6, 100, 'S,M,L', 50),
(50, 'Balo Bucket Quai Đeo Vai', 'Mã sản phẩm: TXN420\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Xanh Rêu-Kem hồng-Đen\r\nKích cỡ: 23cmx15cmx7cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Ba lô và túi xách tay 2-trong-1 lạ mắt\r\n\r\nQuai ba lô dạng xích, có thể tháo rời đế nàng có thể xách phần quai như túi. Bên trong có nhiều ngăn lớn rộng rãi kèm khóa kéo tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp. Ba lô phù hợp để đi làm, dạo phố', 'tx501.jpg', 'tx502.jpg', 'tx503.jpg', 'tx504.jpg', 695000, 6, 100, 'S,M,L', 20),
(51, 'Balo Buckle Phối Si Vân', 'Mã sản phẩm: TXT201\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Kem-Trắng-Nâu nhạt-Đen-Hồng\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Ba lô có vân trang trí khóa kim loại hiện đại\r\n\r\nThiết kế dễ ứng dụng với 3 sự lựa chọn về màu sắc rất nhã nhặn. Điểm nhấn chiếc ba lô nằm ở phần nắp gập có khóa kim loại nổi bật và lớp vân trên da\r\n\r\nBên trong có ngăn đựng lớn, rộng rãi. Ba lô có quai để xách hoặc đeo\r\n\r\nChất liệu da tổng hợp cao cấp bền đẹp, dễ vệ sinh', 'tx511.jpg', 'tx512.jpg', 'tx513.jpg', 'tx514.jpg', 795000, 6, 100, 'S,M,L', 50),
(52, 'Balo Phom  3D BL063', 'Mã sản phẩm: TXN397\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Kem-Trắng-Đen da rắn-Hồng\r\nKích cỡ: 26cmx15cmx6cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Balo phong đứng với họa tiết dập nổi 3D lạ mắt, nổi bật\r\n\r\nChất liệu da tổng hợp sang trọng, dễ vệ sinh\r\n\r\nDây đeo chắc chắn, phối charm tinh tế', 'tx521.jpg', 'tx522.jpg', 'tx523.jpg', 'tx524.jpg', 405000, 6, 100, 'S,M,L', 10),
(53, 'Ví Trang Trí Khóa The Maze', 'Mã sản phẩm: TXT238\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Kem-Đen-Xanh bạc hà\r\nKích cỡ: 25cmx17cmx6cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Ví cầm tay hiện đại, khối khóa kim loại the maze nổi bật\r\n\r\nBên trong có nhiều ngăn kèm khóa kéo, có tặng thêm dây xích tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp với dịp dạo phố hay đi tiệc', 'tx531.jpg', 'tx532.jpg', 'tx533.jpg', 'tx534.jpg', 555000, 6, 100, 'S,M,L', 20),
(54, 'Ví Dài Nắp Pixel-Cut', 'Mã sản phẩm: TXT238\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Kem-Đen-Xanh bạc hà\r\nKích cỡ: 25cmx17cmx6cm\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Điểm nhấn khóa kim loại sang trọng, hiện đại. Bên trong có nhiều ngăn kèm khóa kéo tiện dụng.\r\n\r\nVí kèm quai xích mảnh đeo dài để làm ví đi tiệc\r\n\r\nChất liệu da tổng hợp cao cấp. Ví phù hợp để sử dụng như ví tiền hàng ngày hay ví đi tiệc', 'tx541.jpg', 'tx542.jpg', 'tx543.jpg', 'tx544.jpg', 560000, 6, 100, 'S,M,L', 50),
(55, 'Túi Xách Satchel ', 'Mã sản phẩm: TXN486\r\nKiểu dáng: Túi xách thời trang\r\nChất liệu: Da tổng hợp\r\nMàu sắc: Xanh-Vàng-Kem-Đen-Hồng đất\r\nXuất xứ: Trung Quốc\r\nGiá đã bao gồm VAT', 'Túi xách trung đơn giản, sang trọng\r\n\r\nTúi gồm ngăn lớn trong và ngăn nhỏ bên ngoài có nắp gập. Kích thước lớn tiện dụng để đựng nhiều đồ\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp với đi làm, đi chơi và đi dự tiệc.', 'tx551.jpg', 'tx552.jpg', 'tx553.jpg', 'tx554.jpg', 855000, 6, 100, 's,m,l', 20);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_chitietmuahang`
--
ALTER TABLE `tbl_chitietmuahang`
  ADD PRIMARY KEY (`id_chitietmua`),
  ADD KEY `id_muahang` (`id_muahang`,`id_sanpham`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_danhgia`
--
ALTER TABLE `tbl_danhgia`
  ADD PRIMARY KEY (`id_danhgia`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `tbl_danhgiasanpham`
--
ALTER TABLE `tbl_danhgiasanpham`
  ADD PRIMARY KEY (`id_danhgiasanpham`),
  ADD KEY `id_sanpham` (`id_sanpham`,`id_danhgia`),
  ADD KEY `id_danhgia` (`id_danhgia`),
  ADD KEY `id_sanpham_2` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_muahang`
--
ALTER TABLE `tbl_muahang`
  ADD PRIMARY KEY (`id_muahang`),
  ADD KEY `id_nguoidung` (`id_nguoidung`),
  ADD KEY `id_nguoidung_2` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  ADD PRIMARY KEY (`id_nguoidung`),
  ADD UNIQUE KEY `email_nguoidung` (`email_nguoidung`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD UNIQUE KEY `ten_sanpham` (`ten_sanpham`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_chitietmuahang`
--
ALTER TABLE `tbl_chitietmuahang`
  MODIFY `id_chitietmua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `tbl_danhgia`
--
ALTER TABLE `tbl_danhgia`
  MODIFY `id_danhgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_danhgiasanpham`
--
ALTER TABLE `tbl_danhgiasanpham`
  MODIFY `id_danhgiasanpham` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_muahang`
--
ALTER TABLE `tbl_muahang`
  MODIFY `id_muahang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  MODIFY `id_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11114;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_danhgia`
--
ALTER TABLE `tbl_danhgia`
  ADD CONSTRAINT `tbl_danhgia_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_sanpham` (`id_sanpham`),
  ADD CONSTRAINT `tbl_danhgia_ibfk_2` FOREIGN KEY (`id_nguoidung`) REFERENCES `tbl_nguoidung` (`id_nguoidung`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

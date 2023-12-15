-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2023 lúc 08:30 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_taikhoan`, `id_sanpham`, `noidung`) VALUES
(19, 15, 3, 'Sản phẩm dùng rất tốt.'),
(27, 22, 3, 'gia re'),
(28, 5, 3, 'Thanks b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`id`, `id_donhang`, `id_sanpham`, `soluong`, `gia`) VALUES
(37, 43, 5, 1, 7490000),
(38, 43, 4, 1, 9190000),
(41, 45, 9, 2, 11790000),
(47, 50, 17, 3, 4990000),
(48, 50, 10, 1, 27000000),
(50, 51, 3, 1, 39490000),
(55, 53, 20, 2, 6290000),
(56, 54, 3, 2, 39490000),
(57, 54, 22, 1, 10000000),
(58, 55, 23, 2, 66666),
(59, 55, 20, 1, 6290000),
(60, 55, 22, 2, 10000000),
(61, 49, 3, 1, 39490000),
(62, 49, 10, 1, 27000000),
(63, 49, 19, 1, 10020000),
(64, 49, 30, 1, 98000),
(68, 57, 3, 1, 39490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(11) NOT NULL,
  `danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `danhmuc`) VALUES
(1, 'Sách bán chạy'),
(3, 'Sách mới '),
(4, 'Sách thiếu nhi'),
(5, 'Sách nuôi dạy con'),
(6, 'Sách khai giáo'),
(7, 'Khách ngoại ngữ'),
(8, 'Sách văn học'),
(9, 'Sách kỹ năng sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `diachi` text DEFAULT NULL,
  `thoigian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_taikhoan`, `tongtien`, `status`, `diachi`, `thoigian`) VALUES
(43, 15, 16680000, 3, 'Đại Học Công Nghiệp Hà Nội, Bắc Từ Liêm, Hà Nội', '05-02-2022 21:08:43'),
(45, 16, 23580000, 3, 'số nhà 19 ngõ 86 Phú Kiều, Phúc Diễn, Bắc Từ Liêm, Hà Nội', '10-03-2022 21:46:44'),
(54, 21, 88980000, 2, ' hcm vn q9', '09-05-2023 14:38:42'),
(55, 22, 26423332, 2, ' hcm vn q9', '09-05-2023 14:51:00'),
(57, 5, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `nhasanxuat` varchar(255) NOT NULL,
  `loaimoi` varchar(255) NOT NULL,
  `nguyenlieu` varchar(255) NOT NULL,
  `thuonghieu` varchar(255) NOT NULL,
  `baohanh` varchar(255) NOT NULL,
  `xuatxu` varchar(255) NOT NULL,
  `bonho` varchar(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh1` text NOT NULL,
  `anh2` text NOT NULL,
  `anh3` text NOT NULL,
  `chitiet` text NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_danhmuc`, `ten`, `nhasanxuat`, `loaimoi`, `nguyenlieu`, `thuonghieu`, `baohanh`, `xuatxu`, `bonho`, `gia`, `anh1`, `anh2`, `anh3`, `chitiet`, `mota`, `luotxem`, `status`) VALUES
(3, 1, 'TỪ ĐIỂN TIẾNG \"EM\"', 'Việt Nam', 'Mới', 'giấy', 'Việt Nam', '5', '6', '512', 58000, 'tu-dien-tieng-em_L.jpg', '', '', ' \r\nTỪ ĐIỂN TIẾNG “EM” – Định nghĩa về thế giới mới!\r\n\r\nBạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.\r\n\r\nVà sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…\r\n\r\nDĩ nhiên là vì Từ Điển Tiếng “Em” không phải là một cuốn từ điển thông thường rồi!\r\n\r\nNói đến “từ điển”, xưa nay chúng ta đều nghĩ về một bộ sách đồ sộ, giải ', 'Từ Điển Tiếng “Em” là những câu cửa miệng của giới trẻ thời nay; là hoạt động tưởng vô bổ nhưng cần thiết cho sự sống: ăn, ngủ, tắm, gội cũng được định nghĩa hết sức dí dỏm... Và cũng không thiếu những “tật xấu, thói hư” nghĩ đến đã thấy “tức cái lồng ngực”...', 1576, 0),
(29, 1, 'BỒI DƯỠNG HỌC SINH GIỎI SINH HỌC 9 - PHAN KHẮC NGHỆ', 'Việt Nam', 'Mới', 'giấy', 'Việt Nam', '5', '4', '4', 51000, 'boi-duong-hoc-sinh-gioi-sinh-hoc-9-1.jpg', '', '', 'Bồi Dưỡng Học Sinh Giỏi Sinh Học Lớp 9 được viết bám sát chương trình Sinh học lớp 9. Nội dung cuốn sách được chia làm 3 phần:\r\n\r\nPhần I: Di truyền và Biến dị\r\n\r\nPhần II: Sinh vật và Mội trường\r\n\r\nPhần III: Giới thiệu 10 đề ôn luyện và đáp án \r\n\r\nỞ mỗi chương có hệ thống các câu hỏi và bài tập và trình bày theo các dạng để bạn đọc dễ dàng sử dụng', 'Hệ thống hóa, mở rộng và nâng cao các kiến thức sinh học qua các dạng câu hỏi và bài tập nâng cao theo các chuyên đề, giúp các em chuẩn bị tốt cho các kỳ thi học sinh giỏi môn sinh lớp 9', 6, 1),
(30, 6, 'BÁCH KHOA TRI THỨC THAI SẢN 2 - CHĂM SÓC SỨC KHỎE KHI MANG THAI', 'Việt Nam', 'cũ', 'giấy', 'Việt Nam', '5', '5', '5', 52000, 'sach-bach-khoa-tri-thuc-thai-san-tap-2-cham-soc-suc-khoe-khi-mang-thai.jpg', '', '', 'Bách Khoa Tri Thức Thai Sản Tập 2 - Chăm Sóc Sức Khỏe Khi Mang Thai\r\n\r\nThời kỳ mang thai là giai đoạn khó khăn nhất cho người mẹ khi phải đảm bảo sức khỏe về thể chất và tinh thần, đáp ứng những nhu cầu về dinh dưỡng cho sự phát triển của thai nhi trong bụng, ngoài ra còn cần thích ứng với thay đổi sinh lý bên trong cơ thể. \r\n\r\nChăm sóc sức khỏe khi mang thai gồm 215 trang và 2 chương chia sẻ những kiến thức về chăm sóc khỏe trong thời kỳ mang thai của sản phụ.', 'Bách Khoa Tri Thức Thai Sản Tập 2 - Chăm Sóc Sức Khỏe Khi Mang Thai - Thời kỳ mang thai là giai đoạn khó khăn nhất cho người mẹ khi phải đảm bảo sức khỏe về thể chất và tinh thần, đáp ứng những nhu cầu về dinh dưỡng cho sự phát triển của thai nhi trong bụng, ngoài ra còn cần thích ứng với thay đổi sinh lý bên trong cơ th', 6, 1),
(31, 5, 'CÙNG NHẬP VAI - THÁM HIỂM THẾ GIỚI KHỦNG LONG', 'Việt Nam', 'cũ', 'giấy', 'Việt Nam', '5', '5', '5', 18100, 'sach-cung-nhap-vai-tham-hiem-the-gioi-khung-long.jpg', '', '', 'Cùng Nhập Vai - Thám Hiểm Thế Giới Khủng Long\r\n\r\nTrẻ nhỏ thường tỏ ra thích thú khi được hóa thân vào các nhân vật và làm nhiều công việc khác nhau. Mỗi đứa trẻ đều có những ước mơ riêng và ước mơ đó thường thay đổi theo từng giai đoạn. Còn gì thú vị hơn khi với một bộ sách, trẻ được hòa mình nhập vai vào các nhân vật đa dạng?\r\n\r\nĐúng như tên gọi, bộ sách Cùng nhập vai sẽ giúp các bé được đóng vai một cách linh hoạt, chìm đắm trong từng hoàn cảnh, câu chuyện để cảm nhận những điểm thú vị của từng tuýp người trong xã hội.', 'Cùng Nhập Vai - Thám Hiểm Thế Giới Khủng Long - Cuốn sách sẽ giúp bé có những trải nghiệm thú vị, bé sẽ lang thang trong thế giới của các loài khủng long và được làm quen với một số con khủng long thời tiền sử, chúng sống trên mặt đất, trên bầu trời bao la và cả dưới đại dương mênh mông, sâu thẳm.', 4, 1),
(32, 1, 'COMBO VỞ CHÉP TAY KINH ĐỊA TẠNG + KINH ĐỊA TẠNG BỒ TÁT BỔN NGUYỆN TRỌN BỘ (BÌA MỀM)', 'Viet nam', 'Mới', 'giấy', 'Việt Nam', '5', '5', '5', 95000, 'sach-combo-vo-chep-tay-kinh-dia-tang-kinh-dia-tang-bo-tat-bon-nguyen-tron-bo-bia-mem-1.jpg', '', '', 'Combo Vở Chép Tay Kinh Địa Tạng + Kinh Địa Tạng Bồ Tát Bổn Nguyện Trọn Bộ (Bìa Mềm)\r\n\r\n \r\n\r\n1. Vở Chép Tay Kinh Địa Tạng\r\n\r\nLợi ích của việc chép kinh:\r\n\r\n- Gieo duyên lành với nhà Phật\r\n\r\n- Kinh Sách là khó gặp ở đời, gặp được tin lại càng khó, thực hành lại càng khó hơn nữa.\r\n\r\n- Tích phước, gia tăng trí tuệ - lắng đọng tâm tư, giúp giảm căng thẳng, mệt mỏi, áp lực.\r\n\r\n- Học được chữ Hán, thuộc mặt chữ qua chép Kinh.', 'Combo Vở Chép Tay Kinh Địa Tạng + Kinh Địa Tạng Bồ Tát Bổn Nguyện Trọn Bộ (Bìa Mềm) - Kinh này cho thấy các phương pháp theo các giáo lý của Phật giáo và giải thích các công đức, đức tính của Bồ tát Quán Thế Âm. Nó liên quan đến Luật nhân quả và các hoạt động của nó bằng cách mô tả các hậu quả do những hành động xấu gây ra.', 1, 1),
(33, 1, 'BỒI DƯỠNG HỌC SINH GIỎI QUA CÁC KÌ THI CHUYÊN ĐỀ LÍ LUẬN VĂN HỌC', 'Việt Nam', 'Mới', 'giấy', 'Việt Nam', '5', '5', '5', 99000, '812761472829.gif', '', '', 'Đây là cuốn sách tham khảo văn học để đáp ứng nhu cầu của các em cũng như giáo viên trong việc bồi dưỡng học sinh khá, giỏi môn Ngữ văn THPT và các em có nhu cầu được tiếp xúc, rèn luyện với những dạng đề thi cơ bản và nâng cao trong các kì thi học sinh giỏi cấp quận, huyện, thành phố. Tác giả Nguyễn Thành Huân đã biên soạn cuốn Bộ Đề Bồi Dưỡng Học Sinh Giỏi Qua Các Kì Thi Chuyên Đề Lí Luận Văn Học để phục vụ bạn đọc.', 'Bộ Đề Bồi Dưỡng Học Sinh Giỏi Qua Các Kì Thi Chuyên Đề Lí Luận Văn Học cung cấp đa dạng các đề, những bài làm văn hay, nâng cao, mở rộng kiến thức.', 0, 1),
(34, 1, 'DIỆN CHẨN ABC - PHƯƠNG PHÁP CHỮA BỆNH CỦA NGƯỜI VIỆT NAM', 'Viet nam', 'Mới', 'giấy', 'Việt Nam', '4', '5', '5', 145000, 'sach-dien-chan-abc-phuong-phap-chua-benh-cua-nguoi-viet-nam.jpg', '', '', 'Diện Chẩn ABC - Phương Pháp Chữa Bệnh Của Người Việt Nam\r\n\r\n\r\n\r\nNăm 1980, Giáo sư Bùi Quốc Châu đã tìm ra phương pháp đáng ngạc nhiên này và gọi nó là Diện Châm do ông thực hành nó với những chiếc kim châm cứu. Kể từ năm 1982, ông bắt đầu sử dụng từ Diện Chẩn vì không còn dùng kim châm cứu nữa. Để giúp đỡ mọi người, giáo sư Châu mong muốn \"biến bệnh nhân trở thành thầy thuốc của chính mình\". Ông bắt đầu sáng chế ra các dụng cụ như : que dò, cây lăn nhỏ và lớn, búa cao su ... cho đến nay (2009) đã có khoảng 90 dụng cụ. Ngay cả ngón tay cũng có thể trở thành những dụng cụ hiệu quả. Chúng ta cũng có thể xoa các khớp với ngón cái gập lại hoặc các ngón khác, chỉ cần chà, vỗ nhẹ hoặc miết các khu vực bị bệnh.', 'Diện Chẩn ABC - Phương Pháp Chữa Bệnh Của Người Việt Nam - Phương Pháp Chữa Bệnh Của Người Việt Nam, đưa ra những phương pháp chữa bệnh y học gia truyền, được nghiên cứu bởi GS. Bùi Quốc Châu', 0, 0),
(35, 3, 'VƯỢT QUA THỜI KHÔNG ĐỂ YÊU ANH - TẬP 2', 'Việt Nam', 'Mới', 'giấy', 'Việt Nam', '5', '5', '5', 171000, 'sach-vuot-qua-thoi-khong-de-yeu-anh-tap-2.jpg', '', '', 'Vượt Qua Thời Không Để Yêu Anh - Tập 2\r\n\r\nNăm 2025…\r\n\r\nTrần Tịch là một cô gái ba mươi tuổi thông minh, mạnh mẽ, điển hình của mẫu phụ nữ hiện đại, đảm nhiệm chức vụ giám đốc kỹ thuật chuyên nghiên cứu, chế tạo robot AI với phong cách làm việc sấm rền gió cuốn… Nhưng chỉ một số ít người thân quen biết được rằng, bên trong cái vỏ bọc giám đốc kỹ thuật Trần Tịch là một cô nàng có trái tim thiếu nữ, đu idol cũng vô cùng dữ dội. Thần tượng của cô là siêu sao đang trên đỉnh cao sự nghiệp, kiêm bạn học cấp ba: Lục Thành. Chỉ có điều, hơn mười năm rồi hai người không liên lạc…\r\n', 'Vượt Qua Thời Không Để Yêu Anh - Tập 2 - Mười năm đủ để biến một cô sinh viên năm hai thành một giám đốc kỹ thuật của một tập đoàn sản xuất robot hàng đầu, cũng đủ để biến một chàng thực tập sinh non nớt thành siêu sao của làng giải trí, chỉ có điều, những bi kịch của tương lai vẫn đang chờ đợi họ.', 0, 0),
(36, 9, '7 CHIẾN LƯỢC ĐỂ KHỞI NGHIỆP THÀNH CÔNG - PHƯƠNG THỨC KINH DOANH LANCHESTER', 'Viet nam', 'Mới', 'giấy', 'Pháp', '5', '5', '5', 114000, '7-chien-luoc-de-khoi-nghiep-thanh-cong-phuong-thuc-kinh-doanh-lanchester.jpg', '', '', '7 Chiến Lược Để Khởi Nghiệp Thành Công - Phương Thức Kinh Doanh Lanchester\r\n\r\nTrong kinh doanh, chiến lược Lanchester hướng dẫn các công ty khởi nghiệp hoặc doanh nghiệp đã hoạt động lựa chọn thị trường mới, dựa trên các phân tích về tương quan sức mạnh, nhằm tìm ra thị trường dễ thâm nhập nhất. Chiến lược Lanchester là một biến thể của chiến thuật chia-cắt-và-chinh-phục, cho phép kẻ sử dụng nó vượt qua những thách thức chiến thuật cực kì khó khăn. Nếu một công ty khởi nghiệp hoặc doanh nghiệp nhỏ muốn tham gia vào một thị trường đang bị thống trị bởi một công ty độc quyền, việc áp dụng chiến thuật đối đầu trực diện sẽ gặp thất bại. Theo chiến lược Lanchester, cách tiếp cận hiệu quả hơn là nhắm mục tiêu vào một khía cạnh hoặc vị trí của đối thủ để phá hỏng thế độc quyền. Chiến lược Lanchester du nhập vào Nhật Bản vào những năm 1950 và được phổ biến bởi nhà tư vấn Nobuo Taoka vào những năm 1960. Sau đó, chiến lược Lanchester ngày càng được nhiều công ty sử dụng để chiếm thị phần.', '7 Chiến Lược Để Khởi Nghiệp Thành Công - Phương Thức Kinh Doanh Lanchester - Nếu như bạn thực sự có suy nghĩ muốn khởi nghiệp ... Nếu như bạn đã khởi nghiệp, nhưng gặp nhiều khó khăn và mọi chuyện không suôn sẻ ... Nếu vậy bạn nên mua cuốn sách này ngay lập tức.', 0, 0),
(37, 4, 'sdf', '3', '4', '4', '4', '4', '4', '4', 234, '0_blue-earth-view-from-moon-surface-Usa.jpg', '', '', '4', '4', 0, 1),
(38, 1, 'HỆ THỐNG BÀI TẬP & CÂU HỎI TRẮC NGHIỆM NGUYÊN LÝ KẾ TOÁN', 'Việt Nam', 'Mới', 'giấy', 'Việt Nam', '2', '4', '5', 24000, 'sach-he-thong-bai-tap-cau-hoi-trac-nghiem-nguyen-ly-ke-toan.jpg', '', '', 'Hệ Thống Bài Tập & Câu Hỏi Trắc Nghiệm Nguyên Lý Kế Toán\r\n\r\nCuốn giáo trình Hệ Thống Bài Tập & Câu Hỏi Trắc Nghiệm Nguyên Lý Kế Toán này được biên soạn để giúp các bạn sinh viên nắm vững phần lý thuyết đã được học và rèn luyện kỹ năng thực hành.\r\n\r\nCác bài tập được soạn theo chương trình môn học Nguyên lý Kế toán được giảng dạy ở hầu hết các trường đại học. Sau mỗi chương đã học, sinh viên phải thực hành các bài tập để củng cố kiến thức được cung cấp. Ngoài ra, các  bài tập tình huống được biên soạn có tính tổng hợp nhiều sự kiện và giao dịch phát sinh trong hoạt động của doanh nghiệp để người học phân tích và giải quyết một số yêu cầu có tính chuyên sâu nhằm tăng cường năng lực tư duy khi học tập và nghiên cứu môn học nguyên lý kế toán.', 'Hệ Thống Bài Tập & Câu Hỏi Trắc Nghiệm Nguyên Lý Kế Toán - Cuốn sách này được biên soạn để giúp các bạn sinh viên nắm vững phần lý thuyết đã được học và rèn luyện kỹ năng thực hành.', 0, 1),
(39, 4, 'NHIỆM VỤ BẢO VỆ ĐẠI DƯƠNG', 'Việt Nam', 'Mới', 'giấy', 'Việt Nam', '2', '4', '6', 77000, 'nhiem-vu-bao-ve-dai-duong.jpg', '', '', 'Nhiệm Vụ Bảo Vệ Đại Dương\r\n\r\nĐại dương là khởi nguồn của sự sống trên mặt đất, không có đại dương thì không có sự sống trên Trái đất. Đại dương khoẻ mạnh, hành tinh lành mạnh. Nếu đại dương chết, chúng ta cũng diệt vong. Vì vậy, bảo vệ đại dương chính là bảo vệ sự sống của chúng ta. Chúng ta có thể bảo vệ thế giới đại dương chỉ bằng những việc làm rất đơn giản: nhặt rác thải trên bờ biển, không sử dụng đồ nhựa, quan sát và tìm hiểu môi trường sống.', 'Nhiệm Vụ Bảo Vệ Đại Dương - Đại dương là khởi nguồn của sự sống trên mặt đất, không có đại dương thì không có sự sống trên Trái đất. Đại dương khoẻ mạnh, hành tinh lành mạnh. Nếu đại dương chết, chúng ta cũng diệt vong.', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `anh` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `ten`, `link`, `anh`, `mota`) VALUES
(1, 'Tủ sách kinh tế', 'detail.php?id=3', 'kinhte.jpg', 'Từ Tốt Đến Vĩ Đại - Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại.'),
(8, ' Bộ bí kíp nuôi con', 'detail.php?id=12', 'nuoicon.jpg', ' Để con được ốm là một cuốn nhật ký học làm mẹ thông qua những câu chuyện từ trải nghiệm thực tế mà chị Uyên Bùi đã trải qua từ khi mang thai đến khi em bé chào đời và trở thành một cô bé khỏe mạnh, vu... '),
(9, 'Ôn tập kiến thức THPT', 'detail.php?id=11','thi.jpg', 'Chiến Thuật Giải Đề Đạt Điểm 10 Môn Tiếng Anh Kì Thi Trung Học Phổ Thông Quốc Gia - Là cuốn sách dành cho các bạn học sinh đặt mục tiêu đạt điểm 10 môn tiếng Anh cho kì thi Trung học Phổ thông Quốc gia (THPT QG).');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(55) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `anh` text NOT NULL,
  `sdt` text NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `hoten`, `anh`, `sdt`, `diachi`, `phanquyen`, `status`) VALUES
(1, 'nguyenvana@gmail.com', 'nguyenvana', 'Nguyễn Văn A', '', '0983428914', 'Khu tái định cư Thôn Lạc Thịnh, Hợp Thịnh, Tam Dương, Vĩnh Phúc', 0, 0),
(5, 'admin', 'admin', 'Admin', 'comment_3.png', '04234234234', 'Càn thơ', 1, 0),
(13, 'levanb@gmail.com', 'levanb', 'Lê Văn B', 'comment_3.png', '0987346849', 'Chung cư Tân Tây Đô, xã Tân Lập, huyện Đan Phượng, TP. Hà Nội', 0, 0),
(15, 'doubled@gmail.com', 'doubled', 'DoubleD', 'comment_2.png', '0989994981', 'Đại Học Công Nghiệp Hà Nội, Bắc Từ Liêm, Hà Nội', 0, 0),
(16, 'phungvanc@gmail.com', 'phungvanc', 'Phùng Văn C', '', '0977146357', 'số nhà 19 ngõ 86 Phú Kiều, Phúc Diễn, Bắc Từ Liêm, Hà Nội', 0, 0),
(18, 'kienltk710@gmail.com', 'ltkdt12343', 'Le Kienxxx', '', '0947028450', '', 1, 1),
(19, 'nnn@gmail.com', 'nnn', 'nnn', '', '0987654321', '', 0, 1),
(20, 'demoweb@gmail.com', 'demoweb1', 'demoweb', '638176054475714902_acer-aspire-a315-59-321n-i3-1215u-bac-dd.jpg', '0987654321', '', 0, 1),
(21, 'democode@gmail.com', 'democode1', 'democodexx', 'ban.jpg', '0987654321', 'hcm q99', 1, 0),
(22, 'Demno1@gmail.com', 'Demno1', 'Demno1', 'mac-banner.jpg', '0987654321', 'hcm', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tlbinhluan`
--

CREATE TABLE `tlbinhluan` (
  `id` int(11) NOT NULL,
  `id_binhluan` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tlbinhluan`
--

INSERT INTO `tlbinhluan` (`id`, `id_binhluan`, `noidung`) VALUES
(13, 19, 'Cảm ơn bạn đã bình luận về sản phẩm ạ. Chúc bạn một ngày tốt lành');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id sản phẩm` (`id_sanpham`),
  ADD KEY `id tài khoản` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_donhang` (`id_donhang`),
  ADD KEY `Fk_id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_takhoan` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id danh mục` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id bình luận` (`id_binhluan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_id_sanpham_bl` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_id_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

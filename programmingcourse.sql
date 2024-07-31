-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2024 lúc 08:49 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `programmingcourse`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adminID` varchar(100) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `resetPassword` varchar(100) DEFAULT NULL,
  `phoneNumber` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `gmail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `password`, `resetPassword`, `phoneNumber`, `address`, `gmail`) VALUES
('a1', 'lam', 'a', NULL, 674, 'hcm', 'lam@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` varchar(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `rating` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `name`, `description`, `img`, `rating`) VALUES
('1', 'Học Java hiệu quả', 'Để học Java hiệu quả, có một số bước bạn có thể thực hiện:\r\n\r\n1. **Học lý thuyết cơ bản**: Bắt đầu từ việc hiểu cú pháp cơ bản của Java, kiểu dữ liệu, cấu trúc điều khiển, và các khái niệm quan trọng khác. Có thể bạn cần đọc sách hoặc tham gia các khóa học trực tuyến miễn phí như trên Coursera, edX, hoặc Khan Academy.\r\n\r\n2. **Thực hành thường xuyên**: Việc thực hành là cực kỳ quan trọng. Hãy viết các đoạn mã đơn giản từ những gì bạn đã học và thử nghiệm chúng. Dùng IDE (môi trường phát triển tích hợp) như Eclipse, IntelliJ IDEA hoặc NetBeans để viết mã và thử nghiệm.\r\n\r\n3. **Hiểu về các cấu trúc dữ liệu và thuật toán**: Java không chỉ là về ngôn ngữ lập trình mà còn về việc áp dụng nó vào giải quyết các vấn đề. Học về cấu trúc dữ liệu như mảng, danh sách liên kết, hàng đợi, cây, đồ thị và thuật toán cơ bản như tìm kiếm, sắp xếp, đệ quy.\r\n\r\n4. **Đọc mã nguồn mở và tài liệu**: Đọc mã nguồn mở của các dự án Java lớn có thể giúp bạn hiểu sâu hơn về cách thức làm việc với Java trong các dự án thực tế. Ngoài ra, tài liệu chính thống của Oracle Java là một nguồn thông tin quan trọng.\r\n\r\n5. **Tham gia cộng đồng**: Tham gia các diễn đàn, nhóm Facebook, Reddit, hoặc Stack Overflow để thảo luận với những người khác và hỏi các câu hỏi khi bạn gặp khó khăn.\r\n\r\n6. **Xây dựng các dự án thực tế**: Để thử nghiệm kiến thức của mình và phát triển kỹ năng lập trình, hãy thử xây dựng các dự án thực tế như ứng dụng web, ứng dụng di động hoặc game sử dụng Java.\r\n\r\n7. **Học liên tục**: Ngôn ngữ lập trình luôn phát triển và có những cập nhật mới. Hãy theo dõi các tài liệu và tài nguyên mới để duy trì và cải thiện kỹ năng của bạn.\r\n\r\nNhớ rằng việc học Java, hoặc bất kỳ ngôn ngữ lập trình nào, đều cần sự kiên nhẫn và thời gian. Hãy tiếp tục thử thách bản thân và không ngừng học hỏi!', 'imgMNM/java.jpg', '3'),
('2', 'Học C/C++ hiệu quả', 'Để học Java hiệu quả, có một số bước bạn có thể thực hiện:\r\n\r\n1. **Học lý thuyết cơ bản**: Bắt đầu từ việc hiểu cú pháp cơ bản của Java, kiểu dữ liệu, cấu trúc điều khiển, và các khái niệm quan trọng khác. Có thể bạn cần đọc sách hoặc tham gia các khóa học trực tuyến miễn phí như trên Coursera, edX, hoặc Khan Academy.\r\n\r\n2. **Thực hành thường xuyên**: Việc thực hành là cực kỳ quan trọng. Hãy viết các đoạn mã đơn giản từ những gì bạn đã học và thử nghiệm chúng. Dùng IDE (môi trường phát triển tích hợp) như Eclipse, IntelliJ IDEA hoặc NetBeans để viết mã và thử nghiệm.\r\n\r\n3. **Hiểu về các cấu trúc dữ liệu và thuật toán**: Java không chỉ là về ngôn ngữ lập trình mà còn về việc áp dụng nó vào giải quyết các vấn đề. Học về cấu trúc dữ liệu như mảng, danh sách liên kết, hàng đợi, cây, đồ thị và thuật toán cơ bản như tìm kiếm, sắp xếp, đệ quy.\r\n\r\n4. **Đọc mã nguồn mở và tài liệu**: Đọc mã nguồn mở của các dự án Java lớn có thể giúp bạn hiểu sâu hơn về cách thức làm việc với Java trong các dự án thực tế. Ngoài ra, tài liệu chính thống của Oracle Java là một nguồn thông tin quan trọng.\r\n\r\n5. **Tham gia cộng đồng**: Tham gia các diễn đàn, nhóm Facebook, Reddit, hoặc Stack Overflow để thảo luận với những người khác và hỏi các câu hỏi khi bạn gặp khó khăn.\r\n\r\n6. **Xây dựng các dự án thực tế**: Để thử nghiệm kiến thức của mình và phát triển kỹ năng lập trình, hãy thử xây dựng các dự án thực tế như ứng dụng web, ứng dụng di động hoặc game sử dụng Java.\r\n\r\n7. **Học liên tục**: Ngôn ngữ lập trình luôn phát triển và có những cập nhật mới. Hãy theo dõi các tài liệu và tài nguyên mới để duy trì và cải thiện kỹ năng của bạn.\r\n\r\nNhớ rằng việc học Java, hoặc bất kỳ ngôn ngữ lập trình nào, đều cần sự kiên nhẫn và thời gian. Hãy tiếp tục thử thách bản thân và không ngừng học hỏi!', 'imgMNM/anh-c++.jpg', ''),
('3', 'Học Python hiệu quả', 'Để học Java hiệu quả, có một số bước bạn có thể thực hiện:\r\n\r\n1. **Học lý thuyết cơ bản**: Bắt đầu từ việc hiểu cú pháp cơ bản của Java, kiểu dữ liệu, cấu trúc điều khiển, và các khái niệm quan trọng khác. Có thể bạn cần đọc sách hoặc tham gia các khóa học trực tuyến miễn phí như trên Coursera, edX, hoặc Khan Academy.\r\n\r\n2. **Thực hành thường xuyên**: Việc thực hành là cực kỳ quan trọng. Hãy viết các đoạn mã đơn giản từ những gì bạn đã học và thử nghiệm chúng. Dùng IDE (môi trường phát triển tích hợp) như Eclipse, IntelliJ IDEA hoặc NetBeans để viết mã và thử nghiệm.\r\n\r\n3. **Hiểu về các cấu trúc dữ liệu và thuật toán**: Java không chỉ là về ngôn ngữ lập trình mà còn về việc áp dụng nó vào giải quyết các vấn đề. Học về cấu trúc dữ liệu như mảng, danh sách liên kết, hàng đợi, cây, đồ thị và thuật toán cơ bản như tìm kiếm, sắp xếp, đệ quy.\r\n\r\n4. **Đọc mã nguồn mở và tài liệu**: Đọc mã nguồn mở của các dự án Java lớn có thể giúp bạn hiểu sâu hơn về cách thức làm việc với Java trong các dự án thực tế. Ngoài ra, tài liệu chính thống của Oracle Java là một nguồn thông tin quan trọng.\r\n\r\n5. **Tham gia cộng đồng**: Tham gia các diễn đàn, nhóm Facebook, Reddit, hoặc Stack Overflow để thảo luận với những người khác và hỏi các câu hỏi khi bạn gặp khó khăn.\r\n\r\n6. **Xây dựng các dự án thực tế**: Để thử nghiệm kiến thức của mình và phát triển kỹ năng lập trình, hãy thử xây dựng các dự án thực tế như ứng dụng web, ứng dụng di động hoặc game sử dụng Java.\r\n\r\n7. **Học liên tục**: Ngôn ngữ lập trình luôn phát triển và có những cập nhật mới. Hãy theo dõi các tài liệu và tài nguyên mới để duy trì và cải thiện kỹ năng của bạn.\r\n\r\nNhớ rằng việc học Java, hoặc bất kỳ ngôn ngữ lập trình nào, đều cần sự kiên nhẫn và thời gian. Hãy tiếp tục thử thách bản thân và không ngừng học hỏi!', 'imgMNM/python.jpg', ''),
('4', 'Học R hiệu quả', 'Để học Java hiệu quả, có một số bước bạn có thể thực hiện:\r\n\r\n1. **Học lý thuyết cơ bản**: Bắt đầu từ việc hiểu cú pháp cơ bản của Java, kiểu dữ liệu, cấu trúc điều khiển, và các khái niệm quan trọng khác. Có thể bạn cần đọc sách hoặc tham gia các khóa học trực tuyến miễn phí như trên Coursera, edX, hoặc Khan Academy.\r\n\r\n2. **Thực hành thường xuyên**: Việc thực hành là cực kỳ quan trọng. Hãy viết các đoạn mã đơn giản từ những gì bạn đã học và thử nghiệm chúng. Dùng IDE (môi trường phát triển tích hợp) như Eclipse, IntelliJ IDEA hoặc NetBeans để viết mã và thử nghiệm.\r\n\r\n3. **Hiểu về các cấu trúc dữ liệu và thuật toán**: Java không chỉ là về ngôn ngữ lập trình mà còn về việc áp dụng nó vào giải quyết các vấn đề. Học về cấu trúc dữ liệu như mảng, danh sách liên kết, hàng đợi, cây, đồ thị và thuật toán cơ bản như tìm kiếm, sắp xếp, đệ quy.\r\n\r\n4. **Đọc mã nguồn mở và tài liệu**: Đọc mã nguồn mở của các dự án Java lớn có thể giúp bạn hiểu sâu hơn về cách thức làm việc với Java trong các dự án thực tế. Ngoài ra, tài liệu chính thống của Oracle Java là một nguồn thông tin quan trọng.\r\n\r\n5. **Tham gia cộng đồng**: Tham gia các diễn đàn, nhóm Facebook, Reddit, hoặc Stack Overflow để thảo luận với những người khác và hỏi các câu hỏi khi bạn gặp khó khăn.\r\n\r\n6. **Xây dựng các dự án thực tế**: Để thử nghiệm kiến thức của mình và phát triển kỹ năng lập trình, hãy thử xây dựng các dự án thực tế như ứng dụng web, ứng dụng di động hoặc game sử dụng Java.\r\n\r\n7. **Học liên tục**: Ngôn ngữ lập trình luôn phát triển và có những cập nhật mới. Hãy theo dõi các tài liệu và tài nguyên mới để duy trì và cải thiện kỹ năng của bạn.\r\n\r\nNhớ rằng việc học Java, hoặc bất kỳ ngôn ngữ lập trình nào, đều cần sự kiên nhẫn và thời gian. Hãy tiếp tục thử thách bản thân và không ngừng học hỏi!', 'imgMNM/banner.png', '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `packages` int(11) NOT NULL,
  `namePackages` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `costPrice` double DEFAULT NULL,
  `salePrice` double DEFAULT NULL,
  `payment` longtext DEFAULT NULL,
  `videoID` int(11) NOT NULL,
  `tenVideo` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`id`, `packages`, `namePackages`, `description`, `costPrice`, `salePrice`, `payment`, `videoID`, `tenVideo`, `video`) VALUES
(1, 1, 'Java cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 1, 'Welcome to programming course', './video/welcome.mp4'),
(2, 1, 'Java cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 2, 'Bài 1. Java là gì?', './video/java_bai1.mp4'),
(3, 1, 'Java cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 3, 'Bài 2. Học Java như thế nào?', './video/java_bai2.mp4'),
(4, 2, 'Python cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 4, 'Welcome to programming course', './video/welcome.mp4'),
(5, 2, 'Python cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 5, 'Bài 1. Python là gì?', './video/python_bai1.mp4'),
(6, 3, 'C/C++ cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 6, 'Welcome to programming course', './video/welcome.mp4'),
(8, 2, 'Python cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 8, 'Bài 2: Học python như thế nào?', './video/python_bai2.mp4'),
(9, 2, 'Python cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 9, 'Bài 3: Dòng code Python đầu tiên', './video/python_bai3.mp4'),
(13, 3, 'C/C++ cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 653, 'Bài 1. C/C++ là gì? ', './video/c_bai1.mp4'),
(14, 3, 'C/C++ cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 5473, 'Bài 2: Học C/C++ như thế nào?', './video/c_bai2.mp4'),
(15, 3, 'C/C++ cơ bản', 'không có gì ', 0, 0, 'Chuyển khoản ngân hàng', 584, 'Bài 3. Dòng code C/C++ đầu tiên', './video/c_bai3.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `resetPassword` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` longtext DEFAULT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `joinDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customerID`, `userName`, `password`, `resetPassword`, `name`, `address`, `phoneNumber`, `email`, `dob`, `gender`, `joinDate`) VALUES
('1', 'phuongthao', '1', '', 'phương thảo', 'tân phú', 2165, 'phuongthao@gmail.com', '2024-03-14 01:15:04', 'nữ', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `details`
--

CREATE TABLE `details` (
  `customerID` varchar(20) NOT NULL,
  `pakagesID` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `rating` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`) USING BTREE;

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `videoID` (`videoID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Chỉ mục cho bảng `details`
--
ALTER TABLE `details`
  ADD KEY `FK_details_customer` (`customerID`),
  ADD KEY `FK_details_packages` (`pakagesID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `FK_details_customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_details_packages` FOREIGN KEY (`pakagesID`) REFERENCES `pk` (`packagesID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

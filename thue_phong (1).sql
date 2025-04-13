-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 05:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thue_phong`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `message` text NOT NULL,
  `status` enum('Chưa xử lý','Đã xử lý') DEFAULT 'Chưa xử lý'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_id`, `name`, `phone`, `email`, `created_at`, `message`, `status`) VALUES
(1, 29, 'admin2', '24234', '432@gmail.com', '2025-03-28 08:44:21', '3', 'Đã xử lý'),
(2, 28, 'Người thuê 1', '097368397', 'nguoithue1@gmail.com', '2025-03-28 09:08:09', 'Thuê phòng', 'Đã xử lý'),
(3, 29, 'd', '395094350943', 'pjo#@gmail.cpom', '2025-04-03 03:56:07', 'kjf', 'Chưa xử lý'),
(4, 27, 'PhanTienPhu', '09403248', 'Phnd@gmail.com', '2025-04-05 11:13:45', 'no ghi chus', 'Chưa xử lý'),
(5, 32, '2', '2', 'user1@gmail.com', '2025-04-07 09:06:40', '2', 'Chưa xử lý'),
(6, 32, '2', '2', 'user1@gmail.com', '2025-04-07 09:06:53', '2', 'Chưa xử lý'),
(7, 33, '', '', '', '2025-04-07 09:12:16', '', 'Chưa xử lý'),
(8, 33, '', '', '', '2025-04-07 09:13:11', '', 'Chưa xử lý'),
(9, 33, '', '', '', '2025-04-07 09:13:28', '', 'Chưa xử lý'),
(10, 33, '', '', '', '2025-04-07 09:15:01', '', 'Chưa xử lý'),
(11, 33, 'Nguyễn Văn A', '0123456789', 'invalid-email', '2025-04-07 09:17:13', '', 'Chưa xử lý'),
(12, 33, 'Nguyễn Văn A', '0912345678', 'sai_dinh_dang_email', '2025-04-07 09:19:33', '', 'Chưa xử lý'),
(13, 27, '2', '2', 'admin@example.com', '2025-04-07 09:20:48', '2', 'Chưa xử lý'),
(14, 33, 'Nguyễn Văn A', '0912345678', 'nguyenvana@example.com', '2025-04-07 09:21:51', 'Tôi quan tâm đến phòng này.', 'Chưa xử lý'),
(15, 33, '2', '2', 'user1@gmail.com', '2025-04-07 09:22:11', '2', 'Chưa xử lý'),
(16, 33, 'Nguyễn Văn A', '0912345678', 'nguyenvana@example.com', '2025-04-07 09:23:36', 'Tôi quan tâm đến phòng này.', 'Chưa xử lý'),
(17, 27, '32', '3', 'phantienphu160120022@gmail.com', '2025-04-07 09:23:56', '2', 'Chưa xử lý'),
(18, 33, 'Nguyễn Văn A', '0912345678', 'nguyenvana@example.com', '2025-04-07 09:25:48', 'Tôi quan tâm đến phòng này.', 'Chưa xử lý'),
(19, 33, 'Nguyễn Văn A', '0912345678', 'nguyenvana@example.com', '2025-04-07 09:27:53', 'Tôi quan tâm đến phòng này.', 'Chưa xử lý'),
(20, 33, 'Nguyễn Văn A', '0987654321', 'nguyenvana@example.com', '2025-04-07 09:29:50', 'Tôi muốn thuê phòng vào tuần sau.', 'Chưa xử lý'),
(21, 33, 'Nguyễn Văn A', '0987654321', 'nguyenvana@example.com', '2025-04-07 09:31:46', 'Tôi muốn thuê phòng vào tuần sau.', 'Chưa xử lý'),
(22, 33, 'Nguyễn Văn A', '0912345678', 'nguyenvana@example.com', '2025-04-07 09:32:06', 'Tôi quan tâm đến phòng này.', 'Chưa xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','hidden') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `status`, `created_at`) VALUES
(1, 'a', 'a', '/ckfinder/userfiles/images/sv1.jpg.jpg', 'active', '2025-03-23 15:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `payment_proofs`
--

CREATE TABLE `payment_proofs` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'admin'),
(2, 'chu_tro'),
(3, 'nguoi_dung');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected','waiting_for_payment') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(225) DEFAULT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `district` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `payment_proof` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `owner_id`, `title`, `description`, `price`, `location`, `status`, `created_at`, `image`, `discount_price`, `district`, `ward`, `latitude`, `longitude`, `payment_proof`) VALUES
(5, 5, 'eeeđsad', 'dsadas ds', 23213122.00, 'dsd sfds e', 'rejected', '2025-03-23 08:09:35', '', NULL, '', '', 0, 0, NULL),
(6, 5, 'eeeđsad d', 'dsadas ds', 23213122.00, 'dsd sfds e', 'waiting_for_payment', '2025-03-23 08:10:26', '', NULL, '', '', 0, 0, '../assets/payment_proofs/proof_67f3645965edf4.71230702.png'),
(12, 5, 'e', 'ewqe', 24324.00, 'rểwr', 'rejected', '2025-03-23 09:12:44', NULL, NULL, '', '', 0, 0, NULL),
(16, 5, 'rểwrwer', '343', 32432.00, 'rew', '', '2025-03-23 15:32:20', NULL, NULL, '', '', 0, 0, NULL),
(24, 5, 'Phòng Trọ Cho Thuê', 'Phòng Trọ Cho Thuê 30m2, rộng rãi thoải mãi', 3000000.00, '32 - Linh Trung - Thủ Đức', 'rejected', '2025-03-26 15:07:07', NULL, NULL, '', '', 0, 0, NULL),
(27, 7, 'Nhà Trọ Thân Thiện', 'Diện tích 30m2 | Giới hạn 2 người ở | An ninh cực tốt | Nhiều tiện ích xung quanh', 3500000.00, '32. Đ Số 7 - Linh Trung - Thủ Đức', 'approved', '2025-03-26 15:37:13', NULL, NULL, 'Thủ Đức', 'Linh Trung', 10.858602313876924, 106.7672457106705, NULL),
(28, 7, 'Phòng Trọ Sinh Viên', 'Phòng trọ sinh viên giá rẻ | không chung chủ | không giới hạn giờ giấc', 3000000.00, 'Hẻm 1 Đặng Thuỳ Trâm - Phường 13 - Bình Thạnh', 'approved', '2025-03-26 15:40:49', NULL, 2500000.00, 'Bình Thạnh', 'Phường 13', 10.825613506994177, 106.70291467717405, NULL),
(29, 7, 'Nhà Trọ Hạnh Phúc', 'Diện tích 40m2 | Cửa vân tay | An ninh cực tốt | Có máy lạnh', 4000000.00, '79 Đ. Tân Lập 2 - Hiệp Phú - Quận 9', 'approved', '2025-03-26 15:44:42', NULL, NULL, 'Quận 9', 'Hiệp Phú', 0, 0, NULL),
(30, 7, 'Phòng Trọ Cao Cấp', 'Diện Tích 45m2 | Có gác | Nội thất đầy đủ | Bảo vệ gác 24/24 ', 6000000.00, '268 Đường 379 - Phường 26 - Bình Thạnh', 'approved', '2025-03-26 15:49:42', NULL, 5800000.00, 'Bình Thạnh', 'Phường 26', 0, 0, NULL),
(31, 5, 'Nhà Trọ Xanh', ' Diện tích 40m2 | Cửa vân tay | An ninh cực tốt | Có máy lạnh', 3500000.00, '329 Võ Văn Ngân - Bình Thọ - Thủ Đức', 'approved', '2025-04-05 15:20:35', NULL, NULL, 'Thủ Đức', 'Bình Thọ', 10.849751659156187, 106.77088744407807, NULL),
(32, 5, 'Nhà Trọ Sạch Sẽ', ' Diện tích 30m2 | Giới hạn 3 người ở | An ninh cực tốt | Nhiều tiện ích xung quanh', 4000000.00, 'Số 17 Đ. 904 - Hiệp Phú - Quận 9', 'approved', '2025-04-05 15:24:20', NULL, NULL, 'Quận 9', 'Hiệp Phú', 10.85331139011676, 106.78228415702512, NULL),
(33, 7, 'Nhà Trọ FullHouse', ' Diện tích 30m2 | Giới hạn 2 người ở | An ninh cực tốt | Nhiều tiện ích xung quanh', 2500000.00, '532 Nguyễn Xiển - Long Thạnh Mỹ - Quận 9', 'approved', '2025-04-05 15:33:07', NULL, 2800000.00, 'Quận 9', 'Long Thạnh Mỹ', 10.840442823864, 106.82953476909, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`) VALUES
(1, 12, '/ckfinder/userfiles/files/sv2.jpg'),
(17, 6, '/ckfinder/userfiles/files/Jacket_2.jpg'),
(21, 16, '/ckfinder/userfiles/files/Pants-1-detail.png'),
(23, 5, '/ckfinder/userfiles/files/Cap-1.png'),
(32, 27, '/ckfinder/userfiles/files/ptro_1.jpg'),
(34, 29, '/ckfinder/userfiles/files/ptro_3.jpg'),
(35, 30, '/ckfinder/userfiles/images/ptro_4.png'),
(36, 31, '/ckfinder/userfiles/images/ptro_6.jpg'),
(37, 31, '/ckfinder/userfiles/images/ptro_7.jpg'),
(38, 32, '/ckfinder/userfiles/images/ptro_7.jpg'),
(39, 28, '/ckfinder/userfiles/files/ptro_2.jpg'),
(47, 33, '/ckfinder/userfiles/images/ptro_5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','owner','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `created_at`, `role`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$iZYJH/fSEiUx19/qntbbMuCT2jURardRw.sUOD2R0Cv/2dCnKjhUa', '0123456789', '2025-03-22 14:59:45', 'admin'),
(5, 'a', 'phantienphu160120022@gmail.com', '$2y$10$C6edm7zK4JE..dgs4y9lGOji/zfjIMI8MgMmMiw/ojeIRL5WhpU.y', '0989999999', '2025-03-22 16:24:11', 'owner'),
(6, 'Phan Tiến Phú', 'user1@gmail.com', '$2y$10$XCrIwnNyaTrDWULujSHH1eDEdVxiClqyLP83apaeuZg3iQcVBKWbO', NULL, '2025-03-24 14:31:20', 'user'),
(7, 'Tiến Phú', 'cocphan5@gmail.com', '$2y$10$BmhuP916U4UmtTfzROX6f.m4xPln4vwpOkuI6zIDqsAmOHz51NtFm', '0559359379', '2025-03-26 15:31:03', 'owner'),
(8, 'Nguyễn Văn B', 'b@example.com', '$2y$10$wPwjMiQEeXp2ojHYgtxYbuGabpt0ZD.MT1T3uNIXa0VK5nrzcOJ0.', '0909998888', '2025-04-07 09:17:41', 'user'),
(11, 'Nguyễn Văn A', 'nguyenvana1744018267642@example.com', '$2y$10$pxV5RM/YR3kt7gRHBDlsM.d5gzc1ruovlmqV7ExsVLi2RCsXzjJnO', NULL, '2025-04-07 09:31:09', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_proofs`
--
ALTER TABLE `payment_proofs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_proofs`
--
ALTER TABLE `payment_proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_proofs`
--
ALTER TABLE `payment_proofs`
  ADD CONSTRAINT `payment_proofs_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

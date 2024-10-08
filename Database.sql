-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 16, 2021 lúc 10:37 PM
-- Phiên bản máy phục vụ: 10.3.29-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `topzotisffcom_shopfb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_banking`
--

CREATE TABLE `table_banking` (
  `banking_id` int(11) NOT NULL,
  `banking_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_transfer` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banking_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_banks`
--

CREATE TABLE `table_banks` (
  `banks_id` int(11) NOT NULL,
  `banks_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_images` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_account_holder` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_number_holder` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_branch` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_banks`
--

INSERT INTO `table_banks` (`banks_id`, `banks_name`, `banks_images`, `banks_account_holder`, `banks_number_holder`, `banks_branch`, `banks_status`, `banks_time`) VALUES
(1, 'false', 'https://static.mservice.io/img/logo-momo.png', 'Ly Trong Nguyen', '0907156104', 'false', 'true', '1611290637'),
(2, 'Ngân hàng CIMB Việt Nam', 'https://www.icgn.org/sites/default/files/styles/440_width/public/CIMB%20logo%20-%20web_0.jpg?itok=Le7afsgx', 'NGUYEN THAI DUONG', '00336500264534', 'false', 'true', '1611982872');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_buff`
--

CREATE TABLE `table_buff` (
  `buff_id` int(11) NOT NULL,
  `buff_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_fb_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_server` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_minutes` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_note` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_present` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_payment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_card`
--

CREATE TABLE `table_card` (
  `card_id` int(11) NOT NULL,
  `card_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_serial` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_pin` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_value` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_history_buy`
--

CREATE TABLE `table_history_buy` (
  `history_buy_id` int(11) NOT NULL,
  `history_buy_username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_point_original` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_point_final` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_history_user`
--

CREATE TABLE `table_history_user` (
  `history_user_id` int(11) NOT NULL,
  `history_user_username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `history_user_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_user_ip` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_user_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_history_user`
--

INSERT INTO `table_history_user` (`history_user_id`, `history_user_username`, `history_user_content`, `history_user_ip`, `history_user_time`) VALUES
(1, 'hicode', 'Đăng nhập tài khoản.', '42.117.162.35', '1626445054');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_service`
--

CREATE TABLE `table_service` (
  `service_id` int(11) NOT NULL,
  `service_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_category` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_price` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_price_server_1` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_price_server_2` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_price_server_3` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_price_server_4` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_min_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_max_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_info` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `service_noted` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `service_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_service`
--

INSERT INTO `table_service` (`service_id`, `service_title`, `service_slug`, `service_category`, `service_price`, `service_price_server_1`, `service_price_server_2`, `service_price_server_3`, `service_price_server_4`, `service_min_amount`, `service_max_amount`, `service_info`, `service_noted`, `service_status`, `service_time`) VALUES
(1, 'Tăng like bài viết Facebook', 'buff-like-post-facebook', 'facebook', '9', '16', '20', '46', '0', '100', '100000', '<p>- Mua bằng ID b&agrave;i viết đ&atilde; mở chế độ theo d&otilde;i c&ocirc;ng khai (phải c&oacute; n&uacute;t like).</p>\n<p>- Ch&uacute;ng t&ocirc;i kh&ocirc;ng ho&agrave;n tiền cho đơn đ&atilde; thanh to&aacute;n.</p>', '<p>- Ngi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồi trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; banned khỏi hệ thống vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n<p>- Kh&ocirc;ng c&agrave;i nhiều đơn c&ugrave;ng 1 l&uacute;c, đơn cũ l&ecirc;n xong th&igrave; mới l&ecirc;n tiếp đơn mới.</p>\n<p>- Kh&ocirc;ng mua đơn nhiều site 1 l&uacute;c, tụt hay thiếu kh&ocirc;ng hỗ trợ.</p>\n<p>- Mỗi ID c&oacute; thể tăng tối đa 10 lần tr&ecirc;n hệ thống để tr&aacute;nh Spam, cần mua th&ecirc;m vui l&ograve;ng li&ecirc;n hệ với admin để được giải quyết.</p>\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>', '1', '1624003576'),
(2, 'Tăng like trang Facebook', 'buff-like-page-facebook', 'facebook', '28', '33', '45', '0', '0', '100', '10000', '<p>- Mua bằng ID Page đ&atilde; mở chế độ theo d&otilde;i c&ocirc;ng khai (chế độ đăng b&agrave;i) (c&oacute; like v&agrave; theo d&otilde;i).</p>\n<p>- Ch&uacute;ng t&ocirc;i kh&ocirc;ng ho&agrave;n tiền cho đơn đ&atilde; thanh to&aacute;n.</p>', '<p>- Ngi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồi trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; banned khỏi hệ thống vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n<p>- Kh&ocirc;ng c&agrave;i nhiều đơn c&ugrave;ng 1 l&uacute;c, đơn cũ l&ecirc;n xong th&igrave; mới l&ecirc;n tiếp đơn mới.</p>\n<p>- Kh&ocirc;ng mua đơn nhiều site 1 l&uacute;c, tụt hay thiếu kh&ocirc;ng hỗ trợ.</p>\n<p>- Mỗi ID c&oacute; thể tăng tối đa 10 lần tr&ecirc;n hệ thống để tr&aacute;nh Spam, cần mua th&ecirc;m vui l&ograve;ng li&ecirc;n hệ với admin để được giải quyết.</p>\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>', '1', '1624003681'),
(3, 'Tăng bình luận Facebook', 'buff-comment-facebook', 'facebook', '9', '16', '23', '0', '0', '20', '10000', '<p>- Mua bằng ID b&agrave;i viết đ&atilde; mở chế độ theo d&otilde;i c&ocirc;ng khai.</p>\n<p>- Ch&uacute;ng t&ocirc;i kh&ocirc;ng ho&agrave;n tiền cho đơn đ&atilde; thanh to&aacute;n.</p>', '<p>- Ngi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồi trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; banned khỏi hệ thống vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n<p>- Kh&ocirc;ng c&agrave;i nhiều đơn c&ugrave;ng 1 l&uacute;c, đơn cũ l&ecirc;n xong th&igrave; mới l&ecirc;n tiếp đơn mới.</p>\n<p>- Kh&ocirc;ng mua đơn nhiều site 1 l&uacute;c, tụt hay thiếu kh&ocirc;ng hỗ trợ.</p>\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>', '1', '1624003773'),
(4, 'Tăng chia sẽ Facebook', 'buff-share-facebook', 'facebook', '8', '18', '28', '38', '0', '100', '20000', '<p>- Share c&ocirc;ng khai bằng acc fb thật bạn b&egrave; cao chất lượng</p>\n<p>- N&ecirc;n set tổng 1 lần , set nhiều lần c&oacute; thể bị tr&ugrave;ng acc</p>\n<p>- Duyệt thủ c&ocirc;ng n&ecirc;n đợi &iacute;t ph&uacute;t nh&eacute;</p>', '<p>- Ngi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồi trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; banned khỏi hệ thống vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n<p>- Kh&ocirc;ng c&agrave;i nhiều đơn c&ugrave;ng 1 l&uacute;c, đơn cũ l&ecirc;n xong th&igrave; mới l&ecirc;n tiếp đơn mới.</p>\n<p>- Kh&ocirc;ng mua đơn nhiều site 1 l&uacute;c, tụt hay thiếu kh&ocirc;ng hỗ trợ.</p>\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>', '1', '1624003869'),
(5, 'Tăng theo dõi Facebook', 'buff-follow-facebook', 'facebook', '11', '23', '29', '45', '0', '300', '1000000', '<p>- Mua bằng ID Facebook đ&atilde; mở chế độ theo d&otilde;i c&ocirc;ng khai (c&oacute; n&uacute;t kết bạn v&agrave; theo d&otilde;i).</p>\n<p>- Ch&uacute;ng t&ocirc;i kh&ocirc;ng ho&agrave;n tiền cho đơn đ&atilde; thanh to&aacute;n.</p>', '<p>- Ngi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồi trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; banned khỏi hệ thống vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n<p>- Kh&ocirc;ng c&agrave;i nhiều đơn c&ugrave;ng 1 l&uacute;c, đơn cũ l&ecirc;n xong th&igrave; mới l&ecirc;n tiếp đơn mới.</p>\n<p>- Kh&ocirc;ng mua đơn nhiều site 1 l&uacute;c, tụt hay thiếu kh&ocirc;ng hỗ trợ.</p>\n<p>- Mỗi ID c&oacute; thể tăng tối đa 10 lần tr&ecirc;n hệ thống để tr&aacute;nh Spam, cần mua th&ecirc;m vui l&ograve;ng li&ecirc;n hệ với admin để được giải quyết.</p>\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>', '1', '1624003944'),
(6, 'Tăng mắt live Facebook', 'buff-eye-live-facebook', 'facebook', '1.4', '1.5', '2', '3', '0', '100', '100000', '<p>- Mua bằng ID b&agrave;i viết đ&atilde; mở chế độ theo d&otilde;i c&ocirc;ng khai.</p>\n<p>- Ch&uacute;ng t&ocirc;i kh&ocirc;ng ho&agrave;n tiền cho đơn đ&atilde; thanh to&aacute;n.</p>', '<p>- Ngi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồi trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; banned khỏi hệ thống vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>', '1', '1624004002'),
(7, 'Tăng lượt xem video Facebook', 'buff-view-video-facebook', 'facebook', '20', '25', '50', '0', '0', '250', '20000', '<p>- Mua bằng ID b&agrave;i viết đ&atilde; mở chế độ theo d&otilde;i c&ocirc;ng khai.</p>\n<p>- Ch&uacute;ng t&ocirc;i kh&ocirc;ng ho&agrave;n tiền cho đơn đ&atilde; thanh to&aacute;n.</p>', '<p>- Đối với view thường sẽ ho&agrave;n th&agrave;nh trong 24h, thời gian khởi động t&ugrave;y l&uacute;c. Thường th&igrave; ban ng&agrave;y nhanh hơn ban đ&ecirc;m</p>\n<p>- Đối với view nhanh ho&agrave;n th&agrave;nh từ v&agrave;i ph&uacute;t đến v&agrave;i tiếng.</p>\n<p>- 1 ID KH&Ocirc;NG C&Agrave;I 2 ĐƠN 1 L&Uacute;C .Nếu c&agrave;i chậm rồi c&agrave;i qua nhanh th&igrave; link chậm sẽ bị hủy kh&ocirc;ng ho&agrave;n tiền.</p>\n<p>- C&agrave;i nhanh trước rồi c&oacute; thể c&agrave;i qua chậm, nhưng đợi view l&ecirc;n xong h&atilde;y c&agrave;i.</p>', '1', '1624004119');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_site`
--

CREATE TABLE `table_site` (
  `site_id` int(11) NOT NULL,
  `site_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_keyword` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_domain` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_fb_token` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_zalo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_fanpage` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_mail_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_mail_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_mmo_partner_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_mmo_partner_key` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_card_partner_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_card_partner_key` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `site_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_site`
--

INSERT INTO `table_site` (`site_id`, `site_title`, `site_logo`, `site_name`, `site_keyword`, `site_domain`, `site_fb_token`, `site_facebook`, `site_zalo`, `site_fanpage`, `site_mail_username`, `site_mail_password`, `site_mmo_partner_id`, `site_mmo_partner_key`, `site_card_partner_id`, `site_card_partner_key`, `site_status`, `site_time`) VALUES
(1, 'Chào mừng bạn đến với hệ thống tăng Like ', '/assets/images/facebook.png', 'AutoMxh.Vn', 'tăng like fb, buff like, mua like facebook', 'https://webshopgame.com', '1', 'https://www.facebook.com/', '0582921672', 'https://www.facebook.com/', '1', '1', '387', 'a51356846e7f7b872041afdb1e3662c3', '9123814261', 'fb0260a31c7b0dd14e8745256f1e8382', '1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_user`
--

CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL,
  `user_token` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_fullname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_fb` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_point` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_ip` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_blocked` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_time_last` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `table_banking`
--
ALTER TABLE `table_banking`
  ADD PRIMARY KEY (`banking_id`),
  ADD KEY `banking_username` (`banking_username`);

--
-- Chỉ mục cho bảng `table_banks`
--
ALTER TABLE `table_banks`
  ADD PRIMARY KEY (`banks_id`),
  ADD KEY `banks_number_holder` (`banks_number_holder`);

--
-- Chỉ mục cho bảng `table_buff`
--
ALTER TABLE `table_buff`
  ADD PRIMARY KEY (`buff_id`),
  ADD KEY `buff_username` (`buff_username`);

--
-- Chỉ mục cho bảng `table_card`
--
ALTER TABLE `table_card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `card_username` (`card_username`);

--
-- Chỉ mục cho bảng `table_history_buy`
--
ALTER TABLE `table_history_buy`
  ADD PRIMARY KEY (`history_buy_id`),
  ADD KEY `history_buy_username` (`history_buy_username`);

--
-- Chỉ mục cho bảng `table_history_user`
--
ALTER TABLE `table_history_user`
  ADD PRIMARY KEY (`history_user_id`),
  ADD KEY `history_user_username` (`history_user_username`);

--
-- Chỉ mục cho bảng `table_service`
--
ALTER TABLE `table_service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `service_slug` (`service_slug`);

--
-- Chỉ mục cho bảng `table_site`
--
ALTER TABLE `table_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Chỉ mục cho bảng `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_username` (`user_username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `table_banking`
--
ALTER TABLE `table_banking`
  MODIFY `banking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_banks`
--
ALTER TABLE `table_banks`
  MODIFY `banks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `table_buff`
--
ALTER TABLE `table_buff`
  MODIFY `buff_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_card`
--
ALTER TABLE `table_card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_history_buy`
--
ALTER TABLE `table_history_buy`
  MODIFY `history_buy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_history_user`
--
ALTER TABLE `table_history_user`
  MODIFY `history_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_service`
--
ALTER TABLE `table_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `table_site`
--
ALTER TABLE `table_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_user`
--
ALTER TABLE `table_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

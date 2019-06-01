-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2019 at 06:51 AM
-- Server version: 5.6.43-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `humungadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `forgot_passwords`
--

CREATE TABLE `forgot_passwords` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry_time` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forgot_passwords`
--

INSERT INTO `forgot_passwords` (`id`, `user_id`, `token`, `expiry_time`, `created_at`, `updated_at`) VALUES
(1, 2, 'cfa0e200a31f76428704f57715f1d945c57cf584L2', '1559282198', '2019-05-31 12:41:38', '2019-05-31 12:41:38'),
(2, 2, '48f8f8aef67ef9888d1a9782f34eab63356f0f72L2', '1559282242', '2019-05-31 12:42:22', '2019-05-31 12:42:22'),
(3, 2, '3f11ee934a6b2ad89fbf8484e4aa8b4bf4fefb43L2', '1559282515', '2019-05-31 12:46:55', '2019-05-31 12:46:55'),
(4, 2, 'da42ff3734f472cedfe092ac43b733f951a9804cL2', '1559282592', '2019-05-31 12:48:12', '2019-05-31 12:48:12'),
(6, 2, 'dcc4b8f2e225c2946205a027b50a5aa89774b98eL2', '1559283831', '2019-05-31 13:08:51', '2019-05-31 13:08:51'),
(8, 7, 'd2e5c57a975a4d9600ae00028d07a4319016e726L7', '1559312924', '2019-05-31 21:13:44', '2019-05-31 21:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` int(11) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `section_name`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Welcome Note', 'WE ARE HUMUNGA', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 0, '2019-05-24 15:10:14', '2019-05-24 22:19:23'),
(2, 'Second section', 'CREATE  <br>YOUR<br>   GALLERY <br>NOW', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p><a href=\"#\">GET STARTED</a></p>', 0, '2019-05-24 15:10:14', '2019-05-27 13:48:51'),
(3, 'Third Section ', 'Perfect tool for Customization', '<p class=\"lead topmargin-sm\">Create as much unique content as you want with this Template which has powerful &amp;\r\n        optimized code.</p>\r\n<a href=\"#\" class=\"button button-border button-rounded button-light button-large\">Get Started</a>', 0, '2019-05-24 15:11:54', '2019-05-24 15:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yt_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vimeo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referenced_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `plan_id`, `facebook_id`, `image`, `business`, `website`, `biography`, `phone`, `country`, `facebook`, `instagram`, `yt_link`, `vimeo`, `linkedin`, `referral_code`, `referenced_code`, `created_at`, `updated_at`) VALUES
(2, 'ombrinfotech', 'om.brinfotech@gmail.com', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06bd70bdb2234a6e502ad7e23e4246473579ae6c', NULL, '2019-05-02 14:14:46', '2019-05-31 12:55:27'),
(5, 'rahulbrinfotech', 'rahul.brinfotech@gmail.com', NULL, '7c222fb2927d828af22f592134e8932480637c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1a91a8593fbe095a3911fc30fa1f7d8d2ec5ca22', NULL, '2019-05-27 19:34:11', '2019-05-27 19:34:11'),
(7, 'sourabhbrinfotech', 'sourabh.brinfotech@gmail.com', NULL, '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f8b507ef48e9c55cbd8c19d135f953858a2f48f5', NULL, '2019-05-28 21:17:26', '2019-05-28 21:17:26'),
(13, 'Mohit pandey', 'mohit.brinfotech@gmail.com', NULL, 'd13a39520015522693b02e527090854bca66fc8b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '789456123', NULL, NULL, NULL, NULL, NULL, NULL, '9dd8e18e94717b31ccdb672b8fc26bdd34e0d3bf', NULL, '2019-06-01 20:25:44', '2019-06-01 20:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `status` tinyint(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'icon_7851558941820.png', 'PASSWORD PROTECT', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, '2019-05-24 14:02:30', '2019-05-27 14:23:40'),
(2, 'icon_761558707869.png', 'CUSTOM ALBUMS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, '2019-05-24 14:02:30', '2019-05-27 12:40:21'),
(3, 'icon_6921558707879.png', 'SHARINGgggg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, '2019-05-24 14:02:47', '2019-05-27 21:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` text,
  `description` text,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `icon`, `title`, `description`, `type`, `status`, `created_at`, `updated_at`) VALUES
(8, '731558704287.jpg', 'icon_6671558708001.png', NULL, NULL, 'Home', 1, '2019-05-24 14:26:41', '2019-05-24 21:26:41'),
(9, 'image_711558941898.jpg', 'icon_6091558941898.png', NULL, NULL, 'Home', 1, '2019-05-27 08:36:47', '2019-05-27 15:36:47'),
(10, 'image_5701558946527.png', NULL, 'Custom Album3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\r\n                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\n                        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure\r\n                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                        Excepteur\r\n                        sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\r\n                        laborum.', 'Mini', 1, '2019-05-27 08:51:19', '2019-05-27 15:51:19'),
(11, 'image_1931558946712.png', NULL, 'CUSTOM ALBUM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\r\n                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\n                        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure\r\n                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                        Excepteur\r\n                        sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\r\n                        laborum.', 'Mini', 1, '2019-05-27 08:51:41', '2019-05-27 15:51:41'),
(12, 'image_9351558946739.png', NULL, 'CUSTOM ALBUM2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\r\n                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\n                        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure\r\n                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                        Excepteur\r\n                        sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\r\n                        laborum.', 'Mini', 1, '2019-05-27 09:30:02', '2019-05-27 16:30:02'),
(13, 'image_501558947241.png', NULL, 'CUSTOM ALBUM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\r\n                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis\r\n                        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure\r\n                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n                        Excepteur\r\n                        sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\r\n                        laborum.', 'Mini', 1, '2019-05-27 09:30:23', '2019-05-27 16:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `data_space` varchar(255) DEFAULT NULL,
  `heading` text NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `offer_duration1` varchar(100) DEFAULT NULL,
  `offer_percent1` decimal(10,0) DEFAULT NULL,
  `offer_expiry1` varchar(100) DEFAULT NULL,
  `offer_duration2` varchar(100) DEFAULT NULL,
  `offer_percent2` varchar(100) DEFAULT NULL,
  `offer_expiry2` varchar(100) DEFAULT NULL,
  `offer_duration3` varchar(100) DEFAULT NULL,
  `offer_percent3` varchar(100) DEFAULT NULL,
  `offer_expiry3` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name`, `duration`, `data_space`, `heading`, `description`, `price`, `offer_duration1`, `offer_percent1`, `offer_expiry1`, `offer_duration2`, `offer_percent2`, `offer_expiry2`, `offer_duration3`, `offer_percent3`, `offer_expiry3`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business', '30', '1', '&nbsp;', '<ul>\r\n	<li><strong>Full</strong> Access</li>\r\n	<li>Source Files</li>\r\n	<li><strong>500</strong> User Accounts</li>\r\n	<li><strong>3 Years</strong> License</li>\r\n	<li>Phone Email Support</li>\r\n</ul>', '19', '3', '0', '29-04-2019', '6', '0', '01-05-2019', '12', '0', '26-07-2019', 1, '2019-04-24 10:21:58', '2019-04-24 04:51:58'),
(2, 'Professional', '30', '1', 'Most Popular', '<ul>\r\n                                            <li><strong>Full</strong> Access</li>\r\n                                            <li><i class=\"icon-code\"></i> Source Files</li>\r\n                                            <li><strong>1000</strong> User Accounts</li>\r\n                                            <li><strong>2 Years</strong> License</li>\r\n                                            <li><i class=\"icon-star3\"></i>\r\n                                                <i class=\"icon-star3\"></i>\r\n                                                <i class=\"icon-star3\"></i>\r\n                                                <i class=\"icon-star3\"></i>\r\n                                                <i class=\"icon-star3\"></i>\r\n											</li>\r\n                                        </ul>', '12', '3', '5', '22-05-2019', '6', '10', '30-04-2019', '12', '20', '30-04-2019', 1, '2019-04-24 10:20:13', '2019-04-24 04:50:13'),
(3, 'Starter', '30', '1', 'Starter Plan', '<ul>\r\n	<li><strong>Full</strong> Access</li>\r\n	<li>Source Files</li>\r\n	<li><strong>100</strong> User Accounts</li>\r\n	<li><strong>1 Year</strong> License</li>\r\n	<li>Phone Email Support</li>\r\n</ul>', '10', '3', '5', '30-04-2019', '6', '10', '30-04-2019', '12', '20', '30-04-2019', 1, '2019-04-26 09:42:36', '2019-04-26 16:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `systememails`
--

CREATE TABLE `systememails` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systememails`
--

INSERT INTO `systememails` (`id`, `title`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Contact us', 'Contact Us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2019-04-18 14:03:53', '2019-04-18 08:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `systempages`
--

CREATE TABLE `systempages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `heading` text NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systempages`
--

INSERT INTO `systempages` (`id`, `name`, `heading`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'About us', 'About us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2019-04-19 00:44:51', '2019-04-19 00:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$V1LjdaPEDFkeF4bcxCa5.umB13Yx1Gqh/bVLTcL4seUmVJlp1rgwG', 'qCCxj7gnbUlzQQoz5eDk2SvcilmqOuqY8SNSHFqJ1UJ9xpKW1x5av3rZAxYl', '2019-04-13 06:05:36', '2019-04-13 06:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_plan_details`
--

CREATE TABLE `user_plan_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `data_space` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `heading` text NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website_details`
--

CREATE TABLE `website_details` (
  `id` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `skype_address` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_details`
--

INSERT INTO `website_details` (`id`, `logo`, `email`, `phone`, `address`, `skype_address`, `updated_at`) VALUES
(1, '1555918329.png', 'info@humunga.com', '1234561230', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'humungaOnSkype', '2019-04-22 02:02:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systememails`
--
ALTER TABLE `systememails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systempages`
--
ALTER TABLE `systempages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_plan_details`
--
ALTER TABLE `user_plan_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `systememails`
--
ALTER TABLE `systememails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `systempages`
--
ALTER TABLE `systempages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_plan_details`
--
ALTER TABLE `user_plan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

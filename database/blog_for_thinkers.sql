-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 04:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_for_thinkers`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add signup', 7, 'add_signup'),
(26, 'Can change signup', 7, 'change_signup'),
(27, 'Can delete signup', 7, 'delete_signup'),
(28, 'Can view signup', 7, 'view_signup'),
(29, 'Can add blog', 8, 'add_blog'),
(30, 'Can change blog', 8, 'change_blog'),
(31, 'Can delete blog', 8, 'delete_blog'),
(32, 'Can view blog', 8, 'view_blog'),
(33, 'Can add contact', 9, 'add_contact'),
(34, 'Can change contact', 9, 'change_contact'),
(35, 'Can delete contact', 9, 'delete_contact'),
(36, 'Can view contact', 9, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_app_blog`
--

CREATE TABLE `blog_app_blog` (
  `id` int(11) NOT NULL,
  `unm` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `dscr` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_app_blog`
--

INSERT INTO `blog_app_blog` (`id`, `unm`, `image`, `title`, `dscr`) VALUES
(12, 'meera', 'images/slide10_Rtq57Zn.jpg', 'blog1', 'this is blog1'),
(13, 'meera', 'images/slide1_jTmZS9c.jpg', 'blog2', 'this is blog2'),
(14, 'meera', 'images/slide2.png', 'blog 3', 'this is blog3'),
(15, 'meera', 'images/slide9.jpg', 'blog4', 'this is blog4'),
(16, 'meera', 'images/slide13.jpg', 'blog5', 'this is blog 5'),
(17, 'meera', 'images/slide17.jpg', 'blog6', 'this is blog6');

-- --------------------------------------------------------

--
-- Table structure for table `blog_app_contact`
--

CREATE TABLE `blog_app_contact` (
  `id` int(11) NOT NULL,
  `u_nm` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_sub` varchar(50) NOT NULL,
  `u_msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_app_contact`
--

INSERT INTO `blog_app_contact` (`id`, `u_nm`, `u_email`, `u_sub`, `u_msg`) VALUES
(1, 'mira', 'mi@gmail.com', 'ffffffff', 'ffffff'),
(2, 'miraqasas', 'masssi@gmail.com', 'ffffffff', 'aaaaaaaaaaaaaaaaaa'),
(3, 'sdsds', 'sdsd@gmail.com', 'ffffffff', 'ssssssssssssssss'),
(4, 'miraqasas', 'mi@gmail.com', 'ffffffff', 'dfdgfdgfyhgf');

-- --------------------------------------------------------

--
-- Table structure for table `blog_app_signup`
--

CREATE TABLE `blog_app_signup` (
  `id` int(11) NOT NULL,
  `dp` varchar(100) NOT NULL,
  `unm` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_app_signup`
--

INSERT INTO `blog_app_signup` (`id`, `dp`, `unm`, `email`, `password`) VALUES
(1, 'profile_picture/slide11.jpg', 'meera', 'mirudobariya18@gmail.com', 'meera');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'blog_app', 'blog'),
(9, 'blog_app', 'contact'),
(7, 'blog_app', 'signup'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-17 10:07:42.187296'),
(2, 'auth', '0001_initial', '2021-02-17 10:07:44.264274'),
(3, 'admin', '0001_initial', '2021-02-17 10:07:59.497006'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-17 10:08:04.261668'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-17 10:08:04.333719'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-17 10:08:05.993840'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-17 10:08:07.922727'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-17 10:08:08.413632'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-17 10:08:08.557900'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-17 10:08:09.645543'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-17 10:08:09.665259'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-17 10:08:09.737215'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-17 10:08:09.828900'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-17 10:08:09.925433'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-17 10:08:10.085184'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-17 10:08:10.117542'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-17 10:08:10.281081'),
(18, 'blog_app', '0001_initial', '2021-02-17 10:08:10.490255'),
(19, 'blog_app', '0002_blod', '2021-02-17 10:08:12.558195'),
(20, 'blog_app', '0003_auto_20210217_1316', '2021-02-17 10:08:13.638488'),
(21, 'blog_app', '0004_delete_blog', '2021-02-17 10:08:14.104447'),
(22, 'blog_app', '0005_blog', '2021-02-17 10:08:14.730228'),
(23, 'sessions', '0001_initial', '2021-02-17 10:08:15.666926'),
(24, 'blog_app', '0006_contact', '2021-02-18 04:04:17.601782'),
(25, 'blog_app', '0007_auto_20210218_1438', '2021-02-18 09:08:26.694798'),
(26, 'blog_app', '0008_auto_20210218_1446', '2021-02-18 09:16:29.777964'),
(27, 'blog_app', '0009_auto_20210219_1019', '2021-02-19 04:49:13.493035'),
(28, 'blog_app', '0010_auto_20210219_1033', '2021-02-19 05:03:26.292016'),
(29, 'blog_app', '0011_auto_20210219_1057', '2021-02-19 05:27:26.374414'),
(30, 'blog_app', '0012_auto_20210219_1104', '2021-02-19 05:35:06.143990'),
(31, 'blog_app', '0013_delete_signup', '2021-02-19 07:12:59.070784'),
(32, 'blog_app', '0014_signup', '2021-02-19 07:13:16.197038');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cezrpl5xc2bi6k45agrwg7i2terbj8vl', '.eJwVyjEOgCAMAMC_dCYSNuPkT0illdRQIVUGY_y7ul7uhh6FYAoOqMEEXpkEfbO6SuHYJJ3d2B9FiEMYtpbBAStK-bKKdaoLmlwYxjn_PKSqX-m7_oHZEJ4XwwUiLA:1lD1oJ:FISUSb23xCctXsO7KICmtCMd4cwuqvI3aCDwH4U0Pn0', '2021-03-05 09:10:51.090179');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_app_blog`
--
ALTER TABLE `blog_app_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_app_contact`
--
ALTER TABLE `blog_app_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_app_signup`
--
ALTER TABLE `blog_app_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_app_blog`
--
ALTER TABLE `blog_app_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blog_app_contact`
--
ALTER TABLE `blog_app_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_app_signup`
--
ALTER TABLE `blog_app_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

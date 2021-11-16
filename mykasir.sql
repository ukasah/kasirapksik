-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 02:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mykasir`
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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add post', 8, 'add_post'),
(30, 'Can change post', 8, 'change_post'),
(31, 'Can delete post', 8, 'delete_post'),
(32, 'Can view post', 8, 'view_post'),
(33, 'Can add barang', 9, 'add_barang'),
(34, 'Can change barang', 9, 'change_barang'),
(35, 'Can delete barang', 9, 'delete_barang'),
(36, 'Can view barang', 9, 'view_barang'),
(37, 'Can add terjual', 10, 'add_terjual'),
(38, 'Can change terjual', 10, 'change_terjual'),
(39, 'Can delete terjual', 10, 'delete_terjual'),
(40, 'Can view terjual', 10, 'view_terjual'),
(41, 'Can add tambah', 11, 'add_tambah'),
(42, 'Can change tambah', 11, 'change_tambah'),
(43, 'Can delete tambah', 11, 'delete_tambah'),
(44, 'Can view tambah', 11, 'view_tambah');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$br8SthplqV7bxaiCxotqEq$NZz46Uj7lLi2IWwY1NU7DiTaIQ1SYHVgY1pM9PlRmoM=', '2021-11-15 13:31:35.229981', 1, 'ukas', '', '', 'ukas@gmail.com', 1, 1, '2021-11-15 13:16:51.635449'),
(3, 'pbkdf2_sha256$260000$kqdBQlJDAFMlFTWYXGgpIF$HY/Q+Gumcu9erAw1IQiYMIUQBCslCIugY5QPTN4TNAI=', NULL, 1, 'julydio', '', '', 'julydio@gmail.com', 1, 1, '2021-11-16 07:13:52.515054'),
(4, 'pbkdf2_sha256$260000$TaXnsdeoy0CtXqtQpiCrRe$lfAUIQxP11f27GdbN5WITXhg1Zf8IjB1YedTg77gyCE=', NULL, 1, 'roni', '', '', 'roni@gmail.com', 1, 1, '2021-11-16 07:14:15.954323');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-15 13:35:51.090338', '3', 'Post object (3)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-11-15 13:35:54.803798', '3', 'Post object (3)', 2, '[]', 8, 1),
(3, '2021-11-15 13:35:58.918333', '3', 'Post object (3)', 2, '[]', 8, 1),
(4, '2021-11-15 16:30:11.621641', '4', 'Sandal Adidas ORI', 1, '[{\"added\": {}}]', 7, 1),
(5, '2021-11-16 07:12:25.972007', '2', 'julydio', 1, '[{\"added\": {}}]', 4, 1),
(6, '2021-11-16 07:12:31.577320', '2', 'julydio', 2, '[]', 4, 1),
(7, '2021-11-16 07:12:54.385353', '2', 'julydio', 3, '', 4, 1),
(8, '2021-11-16 07:15:54.912757', '3', 'Sepatu Bola', 1, '[{\"added\": {}}]', 10, 1),
(9, '2021-11-16 10:38:27.239181', '4', 'Sepatu Bola', 1, '[{\"added\": {}}]', 10, 1),
(10, '2021-11-16 13:11:52.397630', '1', 'SB1', 1, '[{\"added\": {}}]', 11, 1);

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
(5, 'contenttypes', 'contenttype'),
(9, 'kasirapp', 'barang'),
(8, 'kasirapp', 'post'),
(7, 'kasirapp', 'product'),
(11, 'kasirapp', 'tambah'),
(10, 'kasirapp', 'terjual'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-15 13:02:55.919861'),
(2, 'auth', '0001_initial', '2021-11-15 13:02:56.263771'),
(3, 'admin', '0001_initial', '2021-11-15 13:02:56.350949'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-15 13:02:56.363890'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-15 13:02:56.374846'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-15 13:02:56.422566'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-15 13:02:56.463479'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-15 13:02:56.484423'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-15 13:02:56.495394'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-15 13:02:56.528264'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-15 13:02:56.532201'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-15 13:02:56.543172'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-15 13:02:56.562016'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-15 13:02:56.578974'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-15 13:02:56.596923'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-15 13:02:56.608904'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-15 13:02:56.627840'),
(18, 'kasirapp', '0001_initial', '2021-11-15 13:02:56.646828'),
(19, 'sessions', '0001_initial', '2021-11-15 13:02:56.672270'),
(20, 'kasirapp', '0002_auto_20211115_2028', '2021-11-15 13:28:06.960924'),
(21, 'kasirapp', '0003_barang', '2021-11-15 15:12:58.226956'),
(22, 'kasirapp', '0004_auto_20211115_2217', '2021-11-15 15:17:16.903228'),
(23, 'kasirapp', '0005_auto_20211116_1255', '2021-11-16 05:55:36.925027'),
(24, 'kasirapp', '0006_terjual_nama_barang', '2021-11-16 06:13:14.858120'),
(25, 'kasirapp', '0002_delete_post', '2021-11-16 07:20:59.701151'),
(26, 'kasirapp', '0003_tambah', '2021-11-16 13:04:33.665024');

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
('hpjjwxrgsf6cdql1culh41pzf1wtqhbw', '.eJxVjEEOwiAQRe_C2hBmoAVcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsQJx-t0j8yG0H6U7tNkue27pMUe6KPGiX1znl5-Vw_w4q9fqtC4waPHmIechJOS6ESkNhB96ZoglNjm7wSCNqtNqCMgzWYcKi2Vvx_gDVXDcQ:1mmc59:pfsGCIftXMebiZis2N-ldkDIuytZmx5JSAbFhqUof5o', '2021-11-29 13:31:35.232973');

-- --------------------------------------------------------

--
-- Table structure for table `kasirapp_product`
--

CREATE TABLE `kasirapp_product` (
  `id` bigint(20) NOT NULL,
  `kode_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasirapp_product`
--

INSERT INTO `kasirapp_product` (`id`, `kode_barang`, `nama_barang`, `jumlah`, `harga`) VALUES
(1, 'SL1', 'Sepatu Lari', 4, 50000),
(2, 'SB1', 'Sepatu Bola', 20, 100000),
(3, 'SA1', 'Sandal Adidas', 8, 40000),
(4, 'SA2', 'Sandal Adidas ORI', 10, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `kasirapp_tambah`
--

CREATE TABLE `kasirapp_tambah` (
  `id` bigint(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `kode_barang` varchar(5) NOT NULL,
  `qtymasuk` int(11) NOT NULL,
  `tglmasuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasirapp_tambah`
--

INSERT INTO `kasirapp_tambah` (`id`, `nama_barang`, `kode_barang`, `qtymasuk`, `tglmasuk`) VALUES
(1, 'SB1', 'SB1', 10, '2021-11-16');

--
-- Triggers `kasirapp_tambah`
--
DELIMITER $$
CREATE TRIGGER `stoktambah` AFTER INSERT ON `kasirapp_tambah` FOR EACH ROW BEGIN	
	UPDATE kasirapp_product SET jumlah = jumlah + NEW.qtymasuk
    WHERE kode_barang = NEW.Kode_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kasirapp_terjual`
--

CREATE TABLE `kasirapp_terjual` (
  `id` bigint(20) NOT NULL,
  `kode_barang` varchar(5) NOT NULL,
  `qtyterjual` int(11) NOT NULL,
  `tglterjual` date NOT NULL,
  `nama_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasirapp_terjual`
--

INSERT INTO `kasirapp_terjual` (`id`, `kode_barang`, `qtyterjual`, `tglterjual`, `nama_barang`) VALUES
(2, 'SL1', 1, '2021-11-16', 'Sepatu Lari'),
(3, 'SB1', 2, '2021-11-16', 'Sepatu Bola'),
(4, 'SB1', 8, '2021-11-16', 'Sepatu Bola');

--
-- Triggers `kasirapp_terjual`
--
DELIMITER $$
CREATE TRIGGER `stokterjual` BEFORE INSERT ON `kasirapp_terjual` FOR EACH ROW BEGIN	
	UPDATE kasirapp_product SET jumlah = jumlah - NEW.qtyterjual
    WHERE kode_barang = NEW.Kode_barang;
END
$$
DELIMITER ;

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
-- Indexes for table `kasirapp_product`
--
ALTER TABLE `kasirapp_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `kasirapp_tambah`
--
ALTER TABLE `kasirapp_tambah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `kasirapp_terjual`
--
ALTER TABLE `kasirapp_terjual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_barang` (`kode_barang`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kasirapp_product`
--
ALTER TABLE `kasirapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kasirapp_tambah`
--
ALTER TABLE `kasirapp_tambah`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kasirapp_terjual`
--
ALTER TABLE `kasirapp_terjual`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

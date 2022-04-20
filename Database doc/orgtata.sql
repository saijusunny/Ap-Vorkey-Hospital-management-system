-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 04:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orgtata`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_doctor`
--

CREATE TABLE `app1_doctor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `items` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_doctor`
--

INSERT INTO `app1_doctor` (`id`, `name`, `username`, `password`, `number`, `section_id`, `mail`, `items`) VALUES
(3, 'Sunny', 'sunny', '1234', 1452587, 2, 'saijusunny1301@gmail.com', 'propic/items/DSC_0005_eF7may4.JPG'),
(7, 'Deepa Babu', 'depa', '1234', 14578569, 6, 'saiju@gmail.com', 'propic/items/IMG_20211011_125855.jpg'),
(8, 'Vishnu ', 'vishnu', '1234', 1457852, 4, 'saijusunny1301@gmail.com', 'propic/items/20210215201346_IMG_9617_1ymLlB1.jpg'),
(9, 'Deepthi', 'deepthi', '1234', 754896, 5, 'saijusunny1301@gmail.com', 'propic/items/DSC_0006.JPG'),
(10, 'Aswathi', 'aswathi', '1234', 1457852552, 11, 'saijusunny1301@gmail.com', 'propic/items/20210926155021_IMG_5199.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `app1_patient`
--

CREATE TABLE `app1_patient` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_patient`
--

INSERT INTO `app1_patient` (`id`, `name`, `address`, `mobile`, `email`, `age`, `section_id`) VALUES
(3, 'Lissy', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 2154685, 'saijusunny1301@gmail.com', 25, 5),
(4, 'sunny', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 85478596, 'saijusunny1301@gmail.com', 25, 5),
(5, 'Arjun', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 145207845, 'saijusunny1301@gmail.com', 25, 6),
(8, 'Ajmal', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 14578549, 'saijusunny1301@gmail.com', 29, 11),
(9, 'Ajmal', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 828757584, 'saijusunny1301@gmail.com', 18, 2),
(10, 'arsheed', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 14587956, 'saijusunny1301@gmail.com', 18, 2),
(11, 'Devendu', 'Thumpunkal (H), Chottanikkara (Po), Kanayannoor, Ernakulam', 84571245, 'deevendudileep55@gmail.com', 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_section`
--

CREATE TABLE `app1_section` (
  `id` bigint(20) NOT NULL,
  `Section_name` varchar(225) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_section`
--

INSERT INTO `app1_section` (`id`, `Section_name`, `room_no`) VALUES
(1, 'ENT', 14),
(2, 'Eye', 14),
(3, 'Skin', 53),
(4, 'Dental', 3),
(5, 'Scan', 123),
(6, 'Causality', 2),
(9, 'Labour Room', 18),
(11, 'X-ray', 175),
(12, 'Cardiology', 13);

-- --------------------------------------------------------

--
-- Table structure for table `app1_staff`
--

CREATE TABLE `app1_staff` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `item` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_staff`
--

INSERT INTO `app1_staff` (`id`, `name`, `username`, `password`, `number`, `section_id`, `mail`, `item`) VALUES
(7, 'Akhil', 'alhil', '1234', 4587956, 2, 'saijusunny1301@gmail.com', 'static/image/icon.png'),
(9, 'adam', 'adam', '1234', 1234, 9, 'saijusunny1301@gmail.com', 'propic/items/20210215201346_IMG_9617_YYvZmyv.jpg'),
(10, 'Amirtha', 'ammu', '1234', 7845896, 6, 'saijusunny1301@gmail.com', 'propic/items/DSC_0018_MPvA25A.JPG'),
(11, 'Althaf don', 'althaf', '1234', 1457856, 11, 'saijusunny1301@gmail.com', 'propic/items/1597818489379.jpg'),
(12, 'Saibu Sunny', 'saibusunny', '1234', 2147483647, 9, 'saijusunny1301@gmail.com', 'propic/items/IMG_20211009_102623.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `app1_userlogin`
--

CREATE TABLE `app1_userlogin` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(11) NOT NULL,
  `repassword` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_userlogin`
--

INSERT INTO `app1_userlogin` (`id`, `name`, `username`, `password`, `repassword`, `image`, `email`, `user_id`) VALUES
(4, 'Saiju t Sunny', 'saiju', 1234, 1234, 'image/20210215201346_IMG_9617.jpg', 'saijusunny1301@gmail.com', 1);

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
(25, 'Can add staff', 7, 'add_staff'),
(26, 'Can change staff', 7, 'change_staff'),
(27, 'Can delete staff', 7, 'delete_staff'),
(28, 'Can view staff', 7, 'view_staff'),
(29, 'Can add doctor', 8, 'add_doctor'),
(30, 'Can change doctor', 8, 'change_doctor'),
(31, 'Can delete doctor', 8, 'delete_doctor'),
(32, 'Can view doctor', 8, 'view_doctor'),
(33, 'Can add patient', 9, 'add_patient'),
(34, 'Can change patient', 9, 'change_patient'),
(35, 'Can delete patient', 9, 'delete_patient'),
(36, 'Can view patient', 9, 'view_patient'),
(37, 'Can add section', 10, 'add_section'),
(38, 'Can change section', 10, 'change_section'),
(39, 'Can delete section', 10, 'delete_section'),
(40, 'Can view section', 10, 'view_section'),
(41, 'Can add userlogin', 11, 'add_userlogin'),
(42, 'Can change userlogin', 11, 'change_userlogin'),
(43, 'Can delete userlogin', 11, 'delete_userlogin'),
(44, 'Can view userlogin', 11, 'view_userlogin');

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
(1, 'pbkdf2_sha256$320000$u7HEdwH8k2OXwkJPyDfO8z$kBGi9+sVRJ6ddbflzkWQxT3DI061Rgz1qQbL9Zf/wo8=', '2022-04-20 02:39:15.675970', 0, 'saiju', 'Saiju', 'Sunny', 'saijusunny1301@gmail.com', 0, 1, '2022-04-07 14:49:59.575297'),
(6, 'pbkdf2_sha256$320000$1Q2v1Bk4d5hDkR7sYxIzjU$NhI34oSfv5PDirVwgRxgmjYHu7rH5oNwtNBZZSWj7eA=', '2022-04-18 14:52:57.885491', 1, 'saijusunny1301@gmail.com', '', '', 'saijusunny1301@gmail.com', 1, 1, '2022-04-15 14:28:27.967117'),
(7, 'pbkdf2_sha256$320000$56IweeUJXJMInhaj6wHC4r$wuTq7lRTzNazT7jYlzPH0MHHlAzCZpqbHbb+SPjZSHw=', '2022-04-17 07:44:47.351253', 0, 'saibu', 'Saibu', 'sunny', 'saijusunny1301@gmail.com', 0, 1, '2022-04-17 07:43:13.000000');

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
(3, '2022-04-15 14:38:43.110879', '9', 'doctor object (9)', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 8, 6),
(4, '2022-04-15 14:39:12.334956', '4', 'patient object (4)', 2, '[]', 9, 6),
(5, '2022-04-15 14:40:42.534946', '2', 'saibu', 3, '', 4, 6),
(6, '2022-04-15 14:40:49.462925', '4', 'vincy', 3, '', 4, 6),
(7, '2022-04-15 14:41:29.127021', '7', 'staff object (7)', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 7, 6),
(8, '2022-04-15 14:44:13.743117', '3', 'doctor object (3)', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 8, 6),
(9, '2022-04-17 07:43:13.966938', '7', 'saibu', 1, '[{\"added\": {}}]', 4, 6),
(10, '2022-04-17 07:44:06.310989', '7', 'saibu', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]', 4, 6),
(11, '2022-04-17 07:48:48.439330', '3', 'doctor object (3)', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 8, 6),
(12, '2022-04-17 13:11:14.124457', '3', 'doctor object (3)', 2, '[{\"changed\": {\"fields\": [\"Section\"]}}]', 8, 6);

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
(8, 'app1', 'doctor'),
(9, 'app1', 'patient'),
(10, 'app1', 'section'),
(7, 'app1', 'staff'),
(11, 'app1', 'userlogin'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
(1, 'contenttypes', '0001_initial', '2022-04-07 14:46:47.851539'),
(2, 'auth', '0001_initial', '2022-04-07 14:46:57.850679'),
(3, 'admin', '0001_initial', '2022-04-07 14:47:00.422308'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-07 14:47:00.468371'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-07 14:47:00.548380'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-07 14:47:01.519982'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-07 14:47:02.444817'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-07 14:47:02.580150'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-07 14:47:02.648553'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-07 14:47:03.243893'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-07 14:47:03.282375'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-07 14:47:03.346378'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-07 14:47:03.535615'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-07 14:47:04.326167'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-07 14:47:04.498410'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-07 14:47:04.542396'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-07 14:47:04.662412'),
(18, 'app1', '0001_initial', '2022-04-07 14:47:05.028662'),
(19, 'app1', '0002_delete_images', '2022-04-07 14:47:05.217037'),
(20, 'app1', '0003_initial', '2022-04-07 14:47:07.257928'),
(21, 'app1', '0004_remove_student_course_delete_course_delete_student', '2022-04-07 14:47:28.975059'),
(22, 'app1', '0005_initial', '2022-04-07 14:47:40.640025'),
(23, 'app1', '0006_delete_admin', '2022-04-07 14:47:40.858569'),
(24, 'app1', '0007_admin', '2022-04-07 14:47:42.003762'),
(25, 'app1', '0008_remove_doctor_user_remove_staff_user_and_more', '2022-04-07 14:47:46.174303'),
(26, 'app1', '0009_initial', '2022-04-07 14:47:47.444565'),
(27, 'app1', '0010_staff_username', '2022-04-07 14:47:47.632238'),
(28, 'app1', '0011_remove_staff_mail_remove_staff_password_and_more', '2022-04-07 14:47:48.073235'),
(29, 'app1', '0012_doctor_delete_staff', '2022-04-07 14:47:49.388670'),
(30, 'app1', '0013_staff_delete_doctor', '2022-04-07 14:47:49.843913'),
(31, 'app1', '0014_doctor', '2022-04-07 14:47:50.377277'),
(32, 'app1', '0015_doctor_items_staff_item', '2022-04-07 14:47:50.628168'),
(33, 'app1', '0016_patient', '2022-04-07 14:47:52.054084'),
(34, 'app1', '0017_remove_patient_section', '2022-04-07 14:47:52.636116'),
(35, 'app1', '0018_patient_section', '2022-04-07 14:47:52.773607'),
(36, 'app1', '0019_doctor_patient', '2022-04-07 14:47:53.497829'),
(37, 'app1', '0020_rename_patient_doctor_pat', '2022-04-07 14:47:54.657032'),
(38, 'app1', '0021_rename_pat_doctor_patient', '2022-04-07 14:47:56.022813'),
(39, 'app1', '0022_remove_doctor_patient', '2022-04-07 14:47:56.634014'),
(40, 'app1', '0023_section', '2022-04-07 14:47:57.056843'),
(41, 'app1', '0024_alter_doctor_section_alter_patient_section_and_more', '2022-04-07 14:48:05.711518'),
(42, 'sessions', '0001_initial', '2022-04-07 14:48:06.605990'),
(43, 'app1', '0025_userlogin', '2022-04-09 09:04:58.075469');

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
('1gdggjdnrwizv6jww66heelrmw6ya7s5', '.eJxVjEEOwiAQRe_C2hCgwzC4dO8ZCFNQqgaS0q6Md7dNutDte-__twhxXUpYe57DlMRZaHH6ZRzHZ667SI9Y702OrS7zxHJP5GG7vLaUX5ej_TsosZdtjZ4ZXFaWB4s3C8Zpowk8OePRklM2JibCAVD5tBFW4DVS9ECQUYnPF55aNbw:1ncr5S:SiR3wbq-e36CaFMZmnCmqbhMgqcHppWz8VkSGiR7ux8', '2022-04-22 16:03:50.021395');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_doctor`
--
ALTER TABLE `app1_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_doctor_section_id_81617411` (`section_id`);

--
-- Indexes for table `app1_patient`
--
ALTER TABLE `app1_patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_patient_section_id_10bb5047` (`section_id`);

--
-- Indexes for table `app1_section`
--
ALTER TABLE `app1_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_staff`
--
ALTER TABLE `app1_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_staff_section_id_1a50db3f` (`section_id`);

--
-- Indexes for table `app1_userlogin`
--
ALTER TABLE `app1_userlogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_userlogin_user_id_b6624a7b_fk_auth_user_id` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_doctor`
--
ALTER TABLE `app1_doctor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_patient`
--
ALTER TABLE `app1_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_section`
--
ALTER TABLE `app1_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `app1_staff`
--
ALTER TABLE `app1_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `app1_userlogin`
--
ALTER TABLE `app1_userlogin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app1_doctor`
--
ALTER TABLE `app1_doctor`
  ADD CONSTRAINT `app1_doctor_section_id_81617411_fk_app1_section_id` FOREIGN KEY (`section_id`) REFERENCES `app1_section` (`id`);

--
-- Constraints for table `app1_patient`
--
ALTER TABLE `app1_patient`
  ADD CONSTRAINT `app1_patient_section_id_10bb5047_fk_app1_section_id` FOREIGN KEY (`section_id`) REFERENCES `app1_section` (`id`);

--
-- Constraints for table `app1_staff`
--
ALTER TABLE `app1_staff`
  ADD CONSTRAINT `app1_staff_section_id_1a50db3f_fk_app1_section_id` FOREIGN KEY (`section_id`) REFERENCES `app1_section` (`id`);

--
-- Constraints for table `app1_userlogin`
--
ALTER TABLE `app1_userlogin`
  ADD CONSTRAINT `app1_userlogin_user_id_b6624a7b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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

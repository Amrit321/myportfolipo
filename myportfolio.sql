-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 12:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfolio`
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
(25, 'Can add personal_info', 7, 'add_personal_info'),
(26, 'Can change personal_info', 7, 'change_personal_info'),
(27, 'Can delete personal_info', 7, 'delete_personal_info'),
(28, 'Can view personal_info', 7, 'view_personal_info'),
(29, 'Can add blog', 8, 'add_blog'),
(30, 'Can change blog', 8, 'change_blog'),
(31, 'Can delete blog', 8, 'delete_blog'),
(32, 'Can view blog', 8, 'view_blog'),
(33, 'Can add services', 9, 'add_services'),
(34, 'Can change services', 9, 'change_services'),
(35, 'Can delete services', 9, 'delete_services'),
(36, 'Can view services', 9, 'view_services'),
(37, 'Can add portfolio', 10, 'add_portfolio'),
(38, 'Can change portfolio', 10, 'change_portfolio'),
(39, 'Can delete portfolio', 10, 'delete_portfolio'),
(40, 'Can view portfolio', 10, 'view_portfolio');

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
(1, 'pbkdf2_sha256$260000$nmRl3luueQwe8qBYF8EtvB$exDPIwKVewpG0Xl0ck0v+XClhJRkbzzz5WiDK2P5hnk=', '2022-05-17 06:40:23.612608', 1, 'amrit', '', '', 'amrit@gmail.com', 1, 1, '2022-05-09 16:16:28.566888'),
(2, 'pbkdf2_sha256$260000$sPKhLd3FEc7NEnQAjJuizk$7BwFUS/FIQ/eDsgdon1yHjDJAtb65Low+eGIliYLz/Y=', NULL, 0, 'test', '', '', '', 1, 1, '2022-05-09 16:37:14.000000'),
(3, 'pbkdf2_sha256$260000$fe10B1vgbHTuN53SUEM8qq$wvVUfHJ80vRxdTXD+bMmVw5NdgKiemt/esh0/X6ZRhA=', NULL, 0, 'admin', '', '', '', 0, 1, '2022-05-18 06:35:02.580395');

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

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24);

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
(1, '2022-05-09 16:37:15.035362', '2', 'test', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-05-10 05:07:25.814272', '2', 'test', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]', 4, 1),
(3, '2022-05-10 07:20:41.127003', '1', 'Blog object (1)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-05-18 06:35:02.862557', '3', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(5, '2022-05-18 09:47:27.440746', '1', 'Personal_info object (1)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-05-18 09:48:15.102253', '1', 'Blog object (1)', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(7, '2022-05-19 09:28:30.598465', '1', 'Personal_info object (1)', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(8, '2022-05-19 10:16:54.497986', '1', 'Personal_info object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1);

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
(8, 'home', 'blog'),
(7, 'home', 'personal_info'),
(10, 'home', 'portfolio'),
(9, 'home', 'services'),
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
(1, 'contenttypes', '0001_initial', '2022-05-09 07:14:43.415345'),
(2, 'auth', '0001_initial', '2022-05-09 07:14:44.445139'),
(3, 'admin', '0001_initial', '2022-05-09 07:14:44.685266'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-09 07:14:44.699482'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-09 07:14:44.715176'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-09 07:14:44.807851'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-09 07:14:44.896605'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-09 07:14:44.921796'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-09 07:14:44.932792'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-09 07:14:44.994355'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-09 07:14:45.000359'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-09 07:14:45.013978'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-09 07:14:45.042683'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-09 07:14:45.070483'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-09 07:14:45.097197'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-09 07:14:45.109201'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-09 07:14:45.132083'),
(18, 'sessions', '0001_initial', '2022-05-09 07:14:45.195920'),
(19, 'home', '0001_initial', '2022-05-10 06:06:38.247743'),
(20, 'home', '0002_blog', '2022-05-10 06:59:29.058818'),
(21, 'home', '0003_services', '2022-05-18 07:29:54.886782'),
(22, 'home', '0004_portfolio', '2022-05-19 09:19:09.284720'),
(23, 'home', '0005_alter_personal_info_phone', '2022-05-19 09:22:14.854109'),
(24, 'home', '0006_alter_personal_info_phone', '2022-05-19 09:28:02.943784');

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
('mb6w7vx2k7otw9hwkg3893jrzb0h81n6', '.eJxVjDsOwjAQBe_iGllZx3HWlPScIfL6bUgAxVI-FeLuECkFtG9m3st0aVuHblt07kaYsyFz-t0k5YdOO8A9Tbdic5nWeRS7K_agi70W6PNyuH8HQ1qGb-2ZeleLoKaIKmSHCGXOTdWSiCNunIevOQSiqleOHgoJPYOaVgLM-wPUoTeq:1noQct:OgWb10PpLzkMh1qi5C9vClOqq8lT6AUwC610NMYgfW8', '2022-05-24 14:14:11.253753'),
('xlvn2i8avfyfk0b3fefwb79l9hw89cc7', '.eJxVjDsOwjAQBe_iGllZx3HWlPScIfL6bUgAxVI-FeLuECkFtG9m3st0aVuHblt07kaYsyFz-t0k5YdOO8A9Tbdic5nWeRS7K_agi70W6PNyuH8HQ1qGb-2ZeleLoKaIKmSHCGXOTdWSiCNunIevOQSiqleOHgoJPYOaVgLM-wPUoTeq:1nqqsZ:p3hiKFlrZggXX4SpNkj8lFBPjwXbTMQhTcT3wN5P-Zc', '2022-05-31 06:40:23.620111'),
('xyf94x6rj6k63dt6iqhgb02tfpkt7zgk', '.eJxVjDsOwjAQBe_iGllZx3HWlPScIfL6bUgAxVI-FeLuECkFtG9m3st0aVuHblt07kaYsyFz-t0k5YdOO8A9Tbdic5nWeRS7K_agi70W6PNyuH8HQ1qGb-2ZeleLoKaIKmSHCGXOTdWSiCNunIevOQSiqleOHgoJPYOaVgLM-wPUoTeq:1no66x:534ywDKvkFo3fLKkfWxnabCnHSogTGVmJ4zBM3Q_q94', '2022-05-23 16:19:51.281472');

-- --------------------------------------------------------

--
-- Table structure for table `home_blog`
--

CREATE TABLE `home_blog` (
  `id` bigint(20) NOT NULL,
  `writer_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_blog`
--

INSERT INTO `home_blog` (`id`, `writer_name`, `type`, `title`, `content`, `image`, `date`) VALUES
(1, 'Sujana Gurung', 'Technology', 'Exactly', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In aliquam sem fringilla ut. Lobortis mattis aliquam faucibus purus in. Nunc pulvinar sapien et ligula ullamcorper. Lacus luctus accumsan tortor posuere ac ut consequat. Ultrices eros in cursus turpis massa. Dictum sit amet justo donec. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Purus in massa tempor nec feugiat. Amet est placerat in egestas erat imperdiet sed. Ut consequat semper viverra nam. Sit amet risus nullam eget felis eget nunc lobortis. Amet nisl purus in mollis nunc sed.', 'media/blog/sarswotimaafinal.jpg', '2022-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `home_personal_info`
--

CREATE TABLE `home_personal_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `post_desc` longtext NOT NULL,
  `fb_link` varchar(254) NOT NULL,
  `linkedin_link` varchar(254) NOT NULL,
  `insta_link` varchar(254) NOT NULL,
  `twitter_link` varchar(254) NOT NULL,
  `github_link` varchar(254) NOT NULL,
  `about_myself` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_personal_info`
--

INSERT INTO `home_personal_info` (`id`, `name`, `email`, `phone`, `image`, `address`, `post`, `post_desc`, `fb_link`, `linkedin_link`, `insta_link`, `twitter_link`, `github_link`, `about_myself`) VALUES
(1, 'Amrit Chapagain', 'peaceamrit95@gmail.com', 9826142107, 'media/personal/personal.png', 'Pokhara-26, Nepal', 'Web/Mobile app developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.facebook.com/amrit.chapagain.39', 'https://www.linkedin.com/in/amrit-chapagain-12b702165/', 'https://www.instagram.com/chapagain.amrit/', 'https://twitter.com/mrit_c', 'https://github.com/Amrit321', 'Faucibus purus in massa tempor. Scelerisque eleifend donec pretium vulputate sapien. Non blandit massa enim nec dui nunc mattis enim. Duis tristique sollicitudin nibh sit. Turpis massa tincidunt dui ut. Velit scelerisque in dictum non consectetur. Condimentum id venenatis a condimentum vitae. Dignissim convallis aenean et tortor at risus. In ornare quam viverra orci sagittis eu. Dignissim suspendisse in est ante in nibh mauris cursus mattis. Dui id ornare arcu odio ut sem. Quam viverra orci sagittis eu volutpat. Dui nunc mattis enim ut tellus elementum sagittis. Cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Eu lobortis elementum nibh tellus. Placerat vestibulum lectus mauris ultrices eros in. Dolor magna eget est lorem.');

-- --------------------------------------------------------

--
-- Table structure for table `home_portfolio`
--

CREATE TABLE `home_portfolio` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_services`
--

CREATE TABLE `home_services` (
  `id` bigint(20) NOT NULL,
  `service` varchar(50) NOT NULL,
  `detail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `home_blog`
--
ALTER TABLE `home_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_personal_info`
--
ALTER TABLE `home_personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_portfolio`
--
ALTER TABLE `home_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `home_blog`
--
ALTER TABLE `home_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_personal_info`
--
ALTER TABLE `home_personal_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_portfolio`
--
ALTER TABLE `home_portfolio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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

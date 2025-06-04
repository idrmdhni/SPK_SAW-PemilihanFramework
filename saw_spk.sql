-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 01:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw_spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(255) NOT NULL,
  `hasil_alternatif` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add criteria', 7, 'add_criteria'),
(26, 'Can change criteria', 7, 'change_criteria'),
(27, 'Can delete criteria', 7, 'delete_criteria'),
(28, 'Can view criteria', 7, 'view_criteria'),
(29, 'Can add framework', 8, 'add_framework'),
(30, 'Can change framework', 8, 'change_framework'),
(31, 'Can delete framework', 8, 'delete_framework'),
(32, 'Can view framework', 8, 'view_framework'),
(33, 'Can add framework score', 9, 'add_frameworkscore'),
(34, 'Can change framework score', 9, 'change_frameworkscore'),
(35, 'Can delete framework score', 9, 'delete_frameworkscore'),
(36, 'Can view framework score', 9, 'view_frameworkscore'),
(37, 'Can add user profile', 10, 'add_userprofile'),
(38, 'Can change user profile', 10, 'change_userprofile'),
(39, 'Can delete user profile', 10, 'delete_userprofile'),
(40, 'Can view user profile', 10, 'view_userprofile');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(6, 'pbkdf2_sha256$720000$adDxC1uB4H0Ta6m0R23Wxn$Ij6msTq1hbHHQ7iPPussIlXrkaguo79yUVYxXge4rAI=', '2025-06-04 10:51:20.257107', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-06-03 13:42:19.343554'),
(7, 'pbkdf2_sha256$720000$fFBaL6BWAU2hGak1yg2tcF$x1/QZgSPvbk+mlIJMz9pdqGDa+f8mjxBwyM4UTFqj5k=', '2025-06-03 16:49:38.305868', 0, 'indra', '', '', 'indrmdhni@gmail.com', 0, 1, '2025-06-03 16:49:30.410701');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'spk', 'criteria'),
(8, 'spk', 'framework'),
(9, 'spk', 'frameworkscore'),
(10, 'spk', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-27 17:02:26.669378'),
(2, 'auth', '0001_initial', '2025-05-27 17:02:27.007624'),
(3, 'admin', '0001_initial', '2025-05-27 17:02:27.101147'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-27 17:02:27.107907'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-27 17:02:27.117984'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-27 17:02:27.179353'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-27 17:02:27.233792'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-27 17:02:27.252296'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-27 17:02:27.264501'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-27 17:02:27.348473'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-27 17:02:27.351970'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-27 17:02:27.367601'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-27 17:02:27.411953'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-27 17:02:27.439142'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-27 17:02:27.461567'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-27 17:02:27.471541'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-27 17:02:27.488998'),
(18, 'sessions', '0001_initial', '2025-05-27 17:02:27.527399'),
(19, 'spk', '0001_initial', '2025-05-27 17:02:27.672555'),
(20, 'spk', '0002_framework_community_framework_learning_time_and_more', '2025-05-27 17:42:31.583881'),
(21, 'spk', '0002_alter_frameworkscore_framework', '2025-06-03 13:09:05.415095');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0lryarl0amiafyba7tlr21a9386ijk5a', '.eJxVjDsOwjAQBe_iGlne2PhDSZ8zWOvdNQ6gRMqnQtwdIqWA9s3Me6mM29rytsicB1YX5dXpdytIDxl3wHccb5OmaVznoehd0QdddD-xPK-H-3fQcGnfWqqxYLyr2HkCMR5TZ8UlCRwTOonMBF0BQBKyHKkYCJQI_NnWGEC9P-_wOCs:1uMdcn:bLyrHfI6PtKUuXGkvhKsNKLQEYWlRlpHTI6lSN6pDmk', '2025-06-18 02:13:05.719236'),
('1votwhecuzrkao21f1dwuv83t47tzjgs', '.eJxVjMEOwiAQRP-FsyFASxc8eu83kN0FpWogKe3J-O9K0oMeZ96beYmA-5bD3tIalijOwojTb0fIj1Q6iHcstyq5lm1dSHZFHrTJucb0vBzu30HGlr9rdklHZ7RCH1E51ApgsDyAJwbFOpEZiSblSbuEPcMVDJvJRmPd6MT7A-L6N8Q:1uMU2q:OPQTtqzgHYlulTQy65iV6yWYOE6jl3cVba3UwksGEN8', '2025-06-17 15:59:20.984573'),
('2w0900ljeeqncf6v8zkmhw0q633475yz', '.eJxVjDsOwjAQBe_iGlne2PhDSZ8zWOvdNQ6gRMqnQtwdIqWA9s3Me6mM29rytsicB1YX5dXpdytIDxl3wHccb5OmaVznoehd0QdddD-xPK-H-3fQcGnfWqqxYLyr2HkCMR5TZ8UlCRwTOonMBF0BQBKyHKkYCJQI_NnWGEC9P-_wOCs:1uMhLK:nS6Iefb8t6atICc4U7Xly3ieejUwBudbOWKud92LWs0', '2025-06-18 06:11:18.659111'),
('7acmxb36vjyb2abukim9kvzxa6ekmlu5', 'e30:1uJzeb:WYEBXuGwcg58-a7RLF0ltoKnJi6c4cW_uyvQzkemb3U', '2025-06-10 19:08:01.363582'),
('cg2ju7xchhfinmmip0gae3mf9ugpl47h', '.eJxVjDsOwjAQBe_iGlne2PhDSZ8zWOvdNQ6gRMqnQtwdIqWA9s3Me6mM29rytsicB1YX5dXpdytIDxl3wHccb5OmaVznoehd0QdddD-xPK-H-3fQcGnfWqqxYLyr2HkCMR5TZ8UlCRwTOonMBF0BQBKyHKkYCJQI_NnWGEC9P-_wOCs:1uMliK:SAjempEPoX-GEUPN0L6hs8f8eFpM43aZ7g1n6Ri3NjM', '2025-06-18 10:51:20.259600'),
('czms7cqjl0mt67m2q8mkm17dgc8qvzw6', 'e30:1uKVa1:ikl86yE7pEzCyhlDwIr6vzWJBqxR5brzXhuGLu7hW-A', '2025-06-12 05:13:25.788091'),
('pu9zoyyigy7kfwgxvg0pyzkf64guiam2', '.eJxVjDsOwjAQBe_iGlne2PhDSZ8zWOvdNQ6gRMqnQtwdIqWA9s3Me6mM29rytsicB1YX5dXpdytIDxl3wHccb5OmaVznoehd0QdddD-xPK-H-3fQcGnfWqqxYLyr2HkCMR5TZ8UlCRwTOonMBF0BQBKyHKkYCJQI_NnWGEC9P-_wOCs:1uMgx2:w81RTlOztvn6XOJg5bWfianPHzm60eyZgXfD2KdOjeI', '2025-06-18 05:46:12.571513');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `tipe_kriteria` varchar(10) NOT NULL,
  `bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(6) NOT NULL,
  `ket_nilai` varchar(45) NOT NULL,
  `jum_nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'Sendy', 'admin', '0192023a7bbd73250516f069df18b500'),
(2, 'Sendy1', 'user', '3eebd69424a45eb473712b78e69686a9');

-- --------------------------------------------------------

--
-- Table structure for table `rangking`
--

CREATE TABLE `rangking` (
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai_rangking` double NOT NULL,
  `nilai_normalisasi` double NOT NULL,
  `bobot_normalisasi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spk_criteria`
--

CREATE TABLE `spk_criteria` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `weight` double NOT NULL,
  `attribute` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spk_criteria`
--

INSERT INTO `spk_criteria` (`id`, `name`, `weight`, `attribute`) VALUES
(13, 'Performa', 0.25, 'benefit'),
(14, 'Skalabilitas', 0.2, 'benefit'),
(15, 'Komunitas', 0.2, 'benefit'),
(16, 'Kemudahan Belajar', 0.15, 'cost'),
(18, 'Pemeliharaan & Update', 0.2, 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `spk_framework`
--

CREATE TABLE `spk_framework` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `community` int(11) NOT NULL,
  `learning_time` int(11) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `performance` double NOT NULL,
  `scalability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spk_framework`
--

INSERT INTO `spk_framework` (`id`, `name`, `description`, `community`, `learning_time`, `maintenance`, `performance`, `scalability`) VALUES
(13825, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 436665, 178, 14, 5946, 3),
(13826, 'Pyramid', 'React framework dengan SSR dan static generatio', 286571, 182, 4, 9772, 3),
(13827, 'FastAPI', 'React framework dengan SSR dan static generatio', 181650, 114, 18, 9147, 2),
(13828, 'Symfony', 'React framework dengan SSR dan static generatio', 235759, 163, 13, 6861, 2),
(13829, 'Angular', 'React framework dengan SSR dan static generatio', 210722, 127, 10, 7415, 4),
(13830, 'Vue', 'React framework dengan SSR dan static generatio', 279473, 147, 6, 3894, 3),
(13831, 'Laravel', 'React framework dengan SSR dan static generatio', 371386, 50, 11, 2474, 4),
(13832, 'Pyramid', 'React framework dengan SSR dan static generatio', 469842, 145, 20, 2207, 2),
(13833, 'Symfony', 'React framework dengan SSR dan static generatio', 343031, 44, 8, 7007, 3),
(13834, 'Django', 'React framework dengan SSR dan static generatio', 416038, 196, 11, 6469, 3),
(13835, 'Svelte', 'React framework dengan SSR dan static generatio', 248702, 191, 1, 1571, 4),
(13836, 'Flask', 'React framework dengan SSR dan static generatio', 295180, 103, 7, 5495, 3),
(13837, 'Tornado', 'React framework dengan SSR dan static generatio', 94235, 165, 16, 8615, 5),
(13838, 'CakePHP', 'React framework dengan SSR dan static generatio', 205090, 139, 7, 961, 1),
(13839, 'Symfony', 'React framework dengan SSR dan static generatio', 377743, 101, 2, 7190, 1),
(13840, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 455705, 132, 11, 828, 3),
(13841, 'Django', 'React framework dengan SSR dan static generatio', 454387, 166, 20, 2719, 5),
(13842, 'Next.js', 'React framework dengan SSR dan static generatio', 134560, 69, 6, 6655, 3),
(13843, 'Next.js', 'React framework dengan SSR dan static generatio', 164924, 39, 21, 8066, 3),
(13844, 'Yii2', 'React framework dengan SSR dan static generatio', 15370, 183, 20, 4765, 1),
(13845, 'Vue', 'React framework dengan SSR dan static generatio', 31033, 126, 5, 8139, 4),
(13846, 'CakePHP', 'React framework dengan SSR dan static generatio', 426302, 103, 15, 7707, 2),
(13847, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 34869, 176, 8, 830, 2),
(13848, 'FastAPI', 'React framework dengan SSR dan static generatio', 19786, 98, 15, 2987, 1),
(13849, 'Yii2', 'React framework dengan SSR dan static generatio', 185002, 161, 11, 8053, 2),
(13850, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 195928, 115, 22, 2720, 1),
(13851, 'Tornado', 'React framework dengan SSR dan static generatio', 430668, 174, 3, 6753, 3),
(13852, 'Symfony', 'React framework dengan SSR dan static generatio', 263250, 49, 10, 3548, 4),
(13853, 'Pyramid', 'React framework dengan SSR dan static generatio', 290320, 162, 17, 1256, 2),
(13854, 'Svelte', 'React framework dengan SSR dan static generatio', 182946, 22, 5, 9828, 1),
(13855, 'FastAPI', 'React framework dengan SSR dan static generatio', 166893, 31, 24, 2655, 2),
(13856, 'Symfony', 'React framework dengan SSR dan static generatio', 422741, 93, 3, 8606, 3),
(13857, 'CakePHP', 'React framework dengan SSR dan static generatio', 87873, 17, 11, 4571, 1),
(13858, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 487673, 165, 23, 7739, 3),
(13859, 'Flask', 'React framework dengan SSR dan static generatio', 470296, 175, 18, 5241, 4),
(13860, 'React', 'React framework dengan SSR dan static generatio', 292639, 161, 14, 8395, 4),
(13861, 'Next.js', 'React framework dengan SSR dan static generatio', 355676, 75, 22, 3783, 1),
(13862, 'Django', 'React framework dengan SSR dan static generatio', 454940, 163, 12, 7758, 1),
(13863, 'Pyramid', 'React framework dengan SSR dan static generatio', 261475, 159, 1, 2498, 5),
(13864, 'Pyramid', 'React framework dengan SSR dan static generatio', 105028, 101, 2, 848, 4),
(13865, 'Laravel', 'React framework dengan SSR dan static generatio', 161544, 166, 19, 8562, 1),
(13866, 'React', 'React framework dengan SSR dan static generatio', 272883, 64, 14, 4923, 4),
(13867, 'FastAPI', 'React framework dengan SSR dan static generatio', 369197, 32, 1, 1693, 5),
(13868, 'Angular', 'React framework dengan SSR dan static generatio', 188046, 35, 11, 5947, 3),
(13869, 'Angular', 'React framework dengan SSR dan static generatio', 118547, 33, 23, 7026, 5),
(13870, 'FastAPI', 'React framework dengan SSR dan static generatio', 271832, 109, 20, 8469, 1),
(13871, 'Yii2', 'React framework dengan SSR dan static generatio', 165349, 131, 24, 1729, 1),
(13872, 'Vue', 'React framework dengan SSR dan static generatio', 378870, 168, 11, 5118, 4),
(13873, 'Symfony', 'React framework dengan SSR dan static generatio', 324918, 172, 9, 9174, 5),
(13874, 'Django', 'React framework dengan SSR dan static generatio', 189461, 35, 19, 1026, 1),
(13875, 'React', 'React framework dengan SSR dan static generatio', 327153, 133, 3, 686, 2),
(13876, 'Angular', 'React framework dengan SSR dan static generatio', 100119, 155, 13, 4867, 2),
(13877, 'Yii2', 'React framework dengan SSR dan static generatio', 485442, 192, 10, 6472, 4),
(13878, 'Vue', 'React framework dengan SSR dan static generatio', 132134, 160, 1, 6436, 2),
(13879, 'Angular', 'React framework dengan SSR dan static generatio', 298193, 188, 1, 796, 4),
(13880, 'Vue', 'React framework dengan SSR dan static generatio', 351243, 60, 21, 5441, 5),
(13881, 'React', 'React framework dengan SSR dan static generatio', 22312, 194, 1, 4745, 4),
(13882, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 499478, 166, 7, 6572, 5),
(13883, 'Symfony', 'React framework dengan SSR dan static generatio', 330447, 62, 15, 6970, 2),
(13884, 'Pyramid', 'React framework dengan SSR dan static generatio', 430936, 82, 17, 4357, 4),
(13885, 'Vue', 'React framework dengan SSR dan static generatio', 52410, 127, 6, 2823, 1),
(13886, 'Laravel', 'React framework dengan SSR dan static generatio', 393694, 158, 14, 6878, 4),
(13887, 'Flask', 'React framework dengan SSR dan static generatio', 360774, 51, 6, 2735, 1),
(13888, 'Django', 'React framework dengan SSR dan static generatio', 198452, 177, 9, 3714, 5),
(13889, 'Yii2', 'React framework dengan SSR dan static generatio', 17938, 155, 1, 7187, 3),
(13890, 'Laravel', 'React framework dengan SSR dan static generatio', 495803, 112, 2, 5999, 1),
(13891, 'Tornado', 'React framework dengan SSR dan static generatio', 398003, 166, 11, 8978, 2),
(13892, 'Flask', 'React framework dengan SSR dan static generatio', 235782, 21, 1, 2440, 2),
(13893, 'React', 'React framework dengan SSR dan static generatio', 366944, 39, 18, 8533, 4),
(13894, 'FastAPI', 'React framework dengan SSR dan static generatio', 287349, 109, 16, 3980, 2),
(13895, 'Yii2', 'React framework dengan SSR dan static generatio', 489596, 197, 19, 6827, 4),
(13896, 'Tornado', 'React framework dengan SSR dan static generatio', 411092, 138, 22, 6516, 5),
(13897, 'Angular', 'React framework dengan SSR dan static generatio', 379400, 85, 22, 7847, 3),
(13898, 'Vue', 'React framework dengan SSR dan static generatio', 287993, 79, 20, 2175, 3),
(13899, 'Symfony', 'React framework dengan SSR dan static generatio', 442091, 32, 2, 2691, 3),
(13900, 'Tornado', 'React framework dengan SSR dan static generatio', 170133, 52, 16, 1927, 2),
(13901, 'Svelte', 'React framework dengan SSR dan static generatio', 108729, 137, 6, 8972, 5),
(13902, 'CakePHP', 'React framework dengan SSR dan static generatio', 175455, 15, 11, 5058, 4),
(13903, 'Tornado', 'React framework dengan SSR dan static generatio', 405581, 193, 16, 2200, 4),
(13904, 'Flask', 'React framework dengan SSR dan static generatio', 385618, 95, 15, 9506, 2),
(13905, 'Yii2', 'React framework dengan SSR dan static generatio', 376250, 195, 11, 2037, 3),
(13906, 'Vue', 'React framework dengan SSR dan static generatio', 378923, 60, 21, 4661, 4),
(13907, 'Yii2', 'React framework dengan SSR dan static generatio', 274090, 88, 8, 7658, 2),
(13908, 'FastAPI', 'React framework dengan SSR dan static generatio', 205997, 122, 17, 596, 4),
(13909, 'Yii2', 'React framework dengan SSR dan static generatio', 172332, 64, 11, 3549, 3),
(13910, 'FastAPI', 'React framework dengan SSR dan static generatio', 332767, 91, 19, 932, 4),
(13911, 'Next.js', 'React framework dengan SSR dan static generatio', 470363, 112, 24, 5025, 1),
(13912, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 270631, 49, 3, 1558, 5),
(13913, 'Tornado', 'React framework dengan SSR dan static generatio', 275155, 22, 16, 2373, 5),
(13914, 'React', 'React framework dengan SSR dan static generatio', 471746, 199, 3, 5715, 2),
(13915, 'Angular', 'React framework dengan SSR dan static generatio', 382971, 85, 12, 5956, 2),
(13916, 'Tornado', 'React framework dengan SSR dan static generatio', 327334, 143, 19, 9321, 2),
(13917, 'Svelte', 'React framework dengan SSR dan static generatio', 435122, 48, 8, 8249, 2),
(13918, 'FastAPI', 'React framework dengan SSR dan static generatio', 63301, 47, 10, 9693, 2),
(13919, 'React', 'React framework dengan SSR dan static generatio', 294220, 38, 1, 2773, 3),
(13920, 'Yii2', 'React framework dengan SSR dan static generatio', 385319, 30, 15, 1678, 2),
(13921, 'Symfony', 'React framework dengan SSR dan static generatio', 21486, 153, 7, 7123, 2),
(13922, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 348078, 13, 15, 8386, 1),
(13923, 'CakePHP', 'React framework dengan SSR dan static generatio', 204170, 199, 23, 9357, 4),
(13924, 'Yii2', 'React framework dengan SSR dan static generatio', 440130, 145, 3, 3592, 5),
(13925, 'Flask', 'React framework dengan SSR dan static generatio', 261728, 145, 11, 7482, 3),
(13926, 'Svelte', 'React framework dengan SSR dan static generatio', 457397, 144, 22, 1862, 2),
(13927, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 229183, 87, 8, 1152, 5),
(13928, 'Yii2', 'React framework dengan SSR dan static generatio', 423199, 66, 14, 2144, 2),
(13929, 'Symfony', 'React framework dengan SSR dan static generatio', 26723, 160, 14, 5461, 2),
(13930, 'Next.js', 'React framework dengan SSR dan static generatio', 398593, 126, 5, 7793, 4),
(13931, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 272850, 36, 9, 7916, 2),
(13932, 'FastAPI', 'React framework dengan SSR dan static generatio', 370704, 156, 24, 928, 4),
(13933, 'Symfony', 'React framework dengan SSR dan static generatio', 52926, 101, 16, 7133, 3),
(13934, 'Laravel', 'React framework dengan SSR dan static generatio', 280969, 93, 6, 5765, 5),
(13935, 'React', 'React framework dengan SSR dan static generatio', 299968, 132, 20, 9565, 2),
(13936, 'Yii2', 'React framework dengan SSR dan static generatio', 259907, 40, 8, 1803, 3),
(13937, 'CakePHP', 'React framework dengan SSR dan static generatio', 26173, 108, 4, 9732, 5),
(13938, 'Yii2', 'React framework dengan SSR dan static generatio', 48447, 55, 9, 4813, 5),
(13939, 'Django', 'React framework dengan SSR dan static generatio', 424277, 154, 24, 5572, 2),
(13940, 'Tornado', 'React framework dengan SSR dan static generatio', 38313, 62, 16, 5255, 2),
(13941, 'Flask', 'React framework dengan SSR dan static generatio', 231879, 13, 3, 6599, 4),
(13942, 'React', 'React framework dengan SSR dan static generatio', 305729, 86, 7, 1250, 3),
(13943, 'CakePHP', 'React framework dengan SSR dan static generatio', 179104, 156, 17, 2019, 2),
(13944, 'React', 'React framework dengan SSR dan static generatio', 454627, 162, 8, 2874, 2),
(13945, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 424222, 190, 7, 7141, 3),
(13946, 'Tornado', 'React framework dengan SSR dan static generatio', 124165, 180, 15, 2160, 2),
(13947, 'Symfony', 'React framework dengan SSR dan static generatio', 235523, 60, 16, 2310, 4),
(13948, 'Angular', 'React framework dengan SSR dan static generatio', 367544, 33, 5, 6766, 4),
(13949, 'CakePHP', 'React framework dengan SSR dan static generatio', 364035, 48, 24, 5410, 3),
(13950, 'Next.js', 'React framework dengan SSR dan static generatio', 157734, 27, 3, 7648, 3),
(13951, 'Flask', 'React framework dengan SSR dan static generatio', 352836, 141, 1, 7659, 1),
(13952, 'Angular', 'React framework dengan SSR dan static generatio', 498884, 43, 16, 8738, 5),
(13953, 'Next.js', 'React framework dengan SSR dan static generatio', 424400, 182, 11, 1620, 2),
(13954, 'Angular', 'React framework dengan SSR dan static generatio', 345764, 148, 9, 1292, 4),
(13955, 'Svelte', 'React framework dengan SSR dan static generatio', 267132, 144, 15, 4289, 5),
(13956, 'Django', 'React framework dengan SSR dan static generatio', 485898, 14, 24, 6903, 4),
(13957, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 219903, 125, 13, 4465, 4),
(13958, 'Flask', 'React framework dengan SSR dan static generatio', 108187, 16, 10, 6495, 1),
(13959, 'Laravel', 'React framework dengan SSR dan static generatio', 298687, 154, 4, 3729, 3),
(13960, 'React', 'React framework dengan SSR dan static generatio', 132928, 11, 5, 1254, 1),
(13961, 'Symfony', 'React framework dengan SSR dan static generatio', 154641, 140, 11, 2304, 1),
(13962, 'Angular', 'React framework dengan SSR dan static generatio', 200695, 19, 22, 9436, 5),
(13963, 'Next.js', 'React framework dengan SSR dan static generatio', 218878, 158, 21, 1770, 1),
(13964, 'Svelte', 'React framework dengan SSR dan static generatio', 117466, 141, 20, 6614, 2),
(13965, 'Vue', 'React framework dengan SSR dan static generatio', 410104, 112, 15, 1748, 1),
(13966, 'CakePHP', 'React framework dengan SSR dan static generatio', 68659, 192, 5, 9110, 1),
(13967, 'Tornado', 'React framework dengan SSR dan static generatio', 191492, 193, 12, 3834, 2),
(13968, 'Pyramid', 'React framework dengan SSR dan static generatio', 145928, 162, 16, 8921, 1),
(13969, 'CakePHP', 'React framework dengan SSR dan static generatio', 411995, 63, 1, 9633, 2),
(13970, 'Tornado', 'React framework dengan SSR dan static generatio', 112903, 88, 16, 8002, 4),
(13971, 'Angular', 'React framework dengan SSR dan static generatio', 417612, 90, 3, 8857, 3),
(13972, 'Svelte', 'React framework dengan SSR dan static generatio', 185651, 194, 24, 9979, 4),
(13973, 'Tornado', 'React framework dengan SSR dan static generatio', 191544, 97, 2, 2427, 4),
(13974, 'FastAPI', 'React framework dengan SSR dan static generatio', 430469, 63, 15, 8227, 4),
(13975, 'FastAPI', 'React framework dengan SSR dan static generatio', 280274, 143, 2, 1080, 3),
(13976, 'CakePHP', 'React framework dengan SSR dan static generatio', 99665, 137, 10, 6622, 2),
(13977, 'Svelte', 'React framework dengan SSR dan static generatio', 146207, 106, 21, 2027, 4),
(13978, 'FastAPI', 'React framework dengan SSR dan static generatio', 143004, 84, 7, 2452, 5),
(13979, 'Pyramid', 'React framework dengan SSR dan static generatio', 251364, 190, 5, 659, 1),
(13980, 'Svelte', 'React framework dengan SSR dan static generatio', 384518, 67, 11, 9155, 2),
(13981, 'Django', 'React framework dengan SSR dan static generatio', 219037, 60, 10, 4084, 2),
(13982, 'Flask', 'React framework dengan SSR dan static generatio', 473279, 131, 14, 4368, 5),
(13983, 'Django', 'React framework dengan SSR dan static generatio', 64714, 97, 18, 8332, 1),
(13984, 'Pyramid', 'React framework dengan SSR dan static generatio', 53111, 25, 14, 4863, 2),
(13985, 'Symfony', 'React framework dengan SSR dan static generatio', 142678, 100, 9, 6674, 4),
(13986, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 421320, 16, 14, 6595, 1),
(13987, 'CakePHP', 'React framework dengan SSR dan static generatio', 307551, 113, 14, 1427, 5),
(13988, 'Laravel', 'React framework dengan SSR dan static generatio', 18972, 101, 4, 9779, 1),
(13989, 'CakePHP', 'React framework dengan SSR dan static generatio', 357603, 46, 10, 9177, 2),
(13990, 'Yii2', 'React framework dengan SSR dan static generatio', 379660, 108, 8, 5175, 2),
(13991, 'Pyramid', 'React framework dengan SSR dan static generatio', 122693, 52, 10, 955, 4),
(13992, 'Next.js', 'React framework dengan SSR dan static generatio', 284451, 71, 4, 4385, 1),
(13993, 'Django', 'React framework dengan SSR dan static generatio', 369362, 175, 4, 5405, 3),
(13994, 'Symfony', 'React framework dengan SSR dan static generatio', 29994, 162, 3, 9163, 1),
(13995, 'React', 'React framework dengan SSR dan static generatio', 349812, 183, 23, 9293, 2),
(13996, 'Flask', 'React framework dengan SSR dan static generatio', 176436, 138, 13, 8586, 3),
(13997, 'Pyramid', 'React framework dengan SSR dan static generatio', 226887, 136, 15, 1144, 5),
(13998, 'FastAPI', 'React framework dengan SSR dan static generatio', 381737, 171, 7, 8768, 5),
(13999, 'React', 'React framework dengan SSR dan static generatio', 329135, 76, 19, 2733, 1),
(14000, 'Pyramid', 'React framework dengan SSR dan static generatio', 216373, 164, 16, 6529, 3),
(14001, 'Laravel', 'React framework dengan SSR dan static generatio', 58426, 175, 2, 9682, 1),
(14002, 'CakePHP', 'React framework dengan SSR dan static generatio', 73806, 172, 2, 6664, 2),
(14003, 'CakePHP', 'React framework dengan SSR dan static generatio', 231488, 109, 10, 5711, 3),
(14004, 'Vue', 'React framework dengan SSR dan static generatio', 386437, 110, 5, 6374, 3),
(14005, 'Vue', 'React framework dengan SSR dan static generatio', 474071, 165, 2, 5975, 3),
(14006, 'FastAPI', 'React framework dengan SSR dan static generatio', 424683, 102, 12, 6060, 1),
(14007, 'React', 'React framework dengan SSR dan static generatio', 225897, 50, 23, 4171, 1),
(14008, 'CakePHP', 'React framework dengan SSR dan static generatio', 494309, 97, 21, 8088, 3),
(14009, 'Flask', 'React framework dengan SSR dan static generatio', 411604, 199, 21, 1298, 1),
(14010, 'Symfony', 'React framework dengan SSR dan static generatio', 449713, 106, 17, 5115, 2),
(14011, 'Tornado', 'React framework dengan SSR dan static generatio', 305366, 50, 24, 6590, 5),
(14012, 'Flask', 'React framework dengan SSR dan static generatio', 212437, 121, 12, 3287, 3),
(14013, 'Tornado', 'React framework dengan SSR dan static generatio', 71016, 36, 21, 8002, 1),
(14014, 'Django', 'React framework dengan SSR dan static generatio', 247645, 66, 4, 6124, 2),
(14015, 'Vue', 'React framework dengan SSR dan static generatio', 229684, 171, 13, 4031, 3),
(14016, 'React', 'React framework dengan SSR dan static generatio', 225049, 133, 16, 3042, 4),
(14017, 'Angular', 'React framework dengan SSR dan static generatio', 66247, 91, 14, 5317, 4),
(14018, 'Symfony', 'React framework dengan SSR dan static generatio', 156993, 51, 9, 6884, 4),
(14019, 'Pyramid', 'React framework dengan SSR dan static generatio', 183578, 15, 5, 5481, 5),
(14020, 'React', 'React framework dengan SSR dan static generatio', 274356, 59, 4, 2640, 1),
(14021, 'Tornado', 'React framework dengan SSR dan static generatio', 125717, 99, 14, 3294, 3),
(14022, 'Next.js', 'React framework dengan SSR dan static generatio', 38832, 29, 12, 1122, 1),
(14023, 'Tornado', 'React framework dengan SSR dan static generatio', 270863, 142, 1, 5023, 5),
(14024, 'Symfony', 'React framework dengan SSR dan static generatio', 438380, 134, 4, 4204, 3),
(14025, 'Yii2', 'React framework dengan SSR dan static generatio', 436691, 21, 2, 4175, 3),
(14026, 'Pyramid', 'React framework dengan SSR dan static generatio', 124063, 42, 4, 9045, 4),
(14027, 'Tornado', 'React framework dengan SSR dan static generatio', 421971, 153, 10, 6574, 4),
(14028, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 15977, 22, 1, 2885, 5),
(14029, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 260518, 29, 13, 4971, 3),
(14030, 'FastAPI', 'React framework dengan SSR dan static generatio', 329014, 183, 4, 1217, 5),
(14031, 'Django', 'React framework dengan SSR dan static generatio', 353841, 53, 10, 8779, 2),
(14032, 'Yii2', 'React framework dengan SSR dan static generatio', 204560, 67, 9, 5958, 5),
(14033, 'Symfony', 'React framework dengan SSR dan static generatio', 368630, 112, 14, 8440, 3),
(14034, 'React', 'React framework dengan SSR dan static generatio', 163110, 170, 8, 5281, 3),
(14035, 'CakePHP', 'React framework dengan SSR dan static generatio', 233161, 94, 24, 6429, 1),
(14036, 'Django', 'React framework dengan SSR dan static generatio', 105826, 61, 6, 3723, 3),
(14037, 'Angular', 'React framework dengan SSR dan static generatio', 14756, 151, 23, 9760, 4),
(14038, 'Flask', 'React framework dengan SSR dan static generatio', 63868, 47, 12, 6424, 2),
(14039, 'Flask', 'React framework dengan SSR dan static generatio', 180010, 55, 17, 9133, 2),
(14040, 'React', 'React framework dengan SSR dan static generatio', 66742, 195, 19, 6546, 4),
(14041, 'Tornado', 'React framework dengan SSR dan static generatio', 380633, 158, 8, 6717, 1),
(14042, 'Angular', 'React framework dengan SSR dan static generatio', 185835, 107, 8, 5845, 4),
(14043, 'Next.js', 'React framework dengan SSR dan static generatio', 459922, 55, 5, 8599, 2),
(14044, 'Laravel', 'React framework dengan SSR dan static generatio', 217641, 98, 10, 2605, 3),
(14045, 'Django', 'React framework dengan SSR dan static generatio', 226162, 146, 6, 4941, 3),
(14046, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 50127, 99, 6, 9951, 1),
(14047, 'Yii2', 'React framework dengan SSR dan static generatio', 373629, 163, 23, 6811, 3),
(14048, 'Svelte', 'React framework dengan SSR dan static generatio', 277282, 135, 5, 2859, 5),
(14049, 'Tornado', 'React framework dengan SSR dan static generatio', 437620, 43, 18, 4358, 4),
(14050, 'FastAPI', 'React framework dengan SSR dan static generatio', 336940, 36, 14, 7568, 3),
(14051, 'Flask', 'React framework dengan SSR dan static generatio', 260622, 59, 8, 7601, 4),
(14052, 'Flask', 'React framework dengan SSR dan static generatio', 359856, 13, 7, 8255, 2),
(14053, 'Django', 'React framework dengan SSR dan static generatio', 137166, 70, 15, 7854, 3),
(14054, 'Angular', 'React framework dengan SSR dan static generatio', 322301, 157, 11, 3907, 2),
(14055, 'Angular', 'React framework dengan SSR dan static generatio', 409220, 55, 18, 8397, 5),
(14056, 'Symfony', 'React framework dengan SSR dan static generatio', 166480, 44, 6, 8852, 4),
(14057, 'CakePHP', 'React framework dengan SSR dan static generatio', 419228, 168, 19, 3450, 5),
(14058, 'FastAPI', 'React framework dengan SSR dan static generatio', 454604, 14, 11, 1496, 5),
(14059, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 150315, 154, 21, 3213, 2),
(14060, 'CakePHP', 'React framework dengan SSR dan static generatio', 290744, 100, 17, 8772, 1),
(14061, 'CakePHP', 'React framework dengan SSR dan static generatio', 481306, 188, 6, 5664, 2),
(14062, 'Laravel', 'React framework dengan SSR dan static generatio', 425294, 63, 13, 8442, 3),
(14063, 'Vue', 'React framework dengan SSR dan static generatio', 130553, 69, 5, 7793, 5),
(14064, 'Angular', 'React framework dengan SSR dan static generatio', 447540, 27, 21, 6366, 5),
(14065, 'Flask', 'React framework dengan SSR dan static generatio', 394667, 116, 7, 4196, 4),
(14066, 'Flask', 'React framework dengan SSR dan static generatio', 90635, 176, 19, 7928, 1),
(14067, 'Angular', 'React framework dengan SSR dan static generatio', 21930, 176, 11, 1731, 5),
(14068, 'Django', 'React framework dengan SSR dan static generatio', 48043, 97, 19, 2396, 1),
(14069, 'Vue', 'React framework dengan SSR dan static generatio', 371057, 99, 16, 3835, 5),
(14070, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 497781, 189, 10, 7467, 4),
(14071, 'Tornado', 'React framework dengan SSR dan static generatio', 202937, 29, 14, 6309, 3),
(14072, 'Laravel', 'React framework dengan SSR dan static generatio', 347587, 76, 8, 8175, 1),
(14073, 'Vue', 'React framework dengan SSR dan static generatio', 221815, 141, 14, 9958, 5),
(14074, 'Vue', 'React framework dengan SSR dan static generatio', 119414, 27, 1, 9938, 3),
(14075, 'Tornado', 'React framework dengan SSR dan static generatio', 127712, 104, 8, 5992, 2),
(14076, 'Yii2', 'React framework dengan SSR dan static generatio', 112345, 35, 6, 8433, 1),
(14077, 'Next.js', 'React framework dengan SSR dan static generatio', 132246, 150, 18, 2795, 3),
(14078, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 260325, 40, 18, 1021, 2),
(14079, 'Tornado', 'React framework dengan SSR dan static generatio', 65152, 169, 17, 2855, 1),
(14080, 'Symfony', 'React framework dengan SSR dan static generatio', 141415, 146, 20, 4235, 5),
(14081, 'FastAPI', 'React framework dengan SSR dan static generatio', 385745, 51, 2, 5173, 1),
(14082, 'Flask', 'React framework dengan SSR dan static generatio', 390381, 167, 10, 6734, 3),
(14083, 'Yii2', 'React framework dengan SSR dan static generatio', 496738, 28, 10, 6387, 2),
(14084, 'Laravel', 'React framework dengan SSR dan static generatio', 191753, 104, 23, 2701, 3),
(14085, 'Angular', 'React framework dengan SSR dan static generatio', 40811, 75, 6, 8564, 4),
(14086, 'Tornado', 'React framework dengan SSR dan static generatio', 310012, 88, 7, 5898, 1),
(14087, 'Pyramid', 'React framework dengan SSR dan static generatio', 301056, 45, 15, 9212, 4),
(14088, 'Tornado', 'React framework dengan SSR dan static generatio', 154247, 36, 7, 1307, 3),
(14089, 'FastAPI', 'React framework dengan SSR dan static generatio', 94263, 154, 8, 9480, 5),
(14090, 'Flask', 'React framework dengan SSR dan static generatio', 340181, 166, 2, 3860, 2),
(14091, 'Pyramid', 'React framework dengan SSR dan static generatio', 441636, 165, 23, 7031, 1),
(14092, 'Next.js', 'React framework dengan SSR dan static generatio', 236318, 107, 20, 2692, 3),
(14093, 'Laravel', 'React framework dengan SSR dan static generatio', 440149, 23, 13, 8356, 2),
(14094, 'FastAPI', 'React framework dengan SSR dan static generatio', 295150, 39, 9, 3165, 1),
(14095, 'FastAPI', 'React framework dengan SSR dan static generatio', 213099, 127, 5, 7058, 3),
(14096, 'Next.js', 'React framework dengan SSR dan static generatio', 157071, 47, 9, 7487, 5),
(14097, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 332715, 59, 23, 5689, 5),
(14098, 'Angular', 'React framework dengan SSR dan static generatio', 398942, 191, 2, 2940, 1),
(14099, 'Pyramid', 'React framework dengan SSR dan static generatio', 485561, 44, 15, 7909, 3),
(14100, 'Next.js', 'React framework dengan SSR dan static generatio', 248971, 160, 18, 9120, 2),
(14101, 'Flask', 'React framework dengan SSR dan static generatio', 121008, 146, 1, 3936, 2),
(14102, 'Next.js', 'React framework dengan SSR dan static generatio', 126779, 184, 1, 2935, 1),
(14103, 'FastAPI', 'React framework dengan SSR dan static generatio', 343951, 30, 17, 2211, 5),
(14104, 'FastAPI', 'React framework dengan SSR dan static generatio', 398895, 81, 2, 7211, 2),
(14105, 'Svelte', 'React framework dengan SSR dan static generatio', 206251, 114, 10, 9305, 3),
(14106, 'Next.js', 'React framework dengan SSR dan static generatio', 303997, 108, 6, 4754, 1),
(14107, 'Django', 'React framework dengan SSR dan static generatio', 132646, 196, 12, 8431, 5),
(14108, 'Laravel', 'React framework dengan SSR dan static generatio', 409864, 163, 15, 2162, 4),
(14109, 'Django', 'React framework dengan SSR dan static generatio', 203395, 72, 17, 7873, 1),
(14110, 'Svelte', 'React framework dengan SSR dan static generatio', 174679, 16, 8, 8958, 5),
(14111, 'Angular', 'React framework dengan SSR dan static generatio', 272204, 71, 17, 9336, 5),
(14112, 'Laravel', 'React framework dengan SSR dan static generatio', 32295, 130, 14, 6239, 5),
(14113, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 158041, 187, 11, 5321, 3),
(14114, 'Svelte', 'React framework dengan SSR dan static generatio', 217933, 133, 18, 2976, 3),
(14115, 'Django', 'React framework dengan SSR dan static generatio', 369034, 111, 11, 6172, 2),
(14116, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 479810, 58, 6, 6859, 5),
(14117, 'Laravel', 'React framework dengan SSR dan static generatio', 34024, 56, 3, 9623, 3),
(14118, 'React', 'React framework dengan SSR dan static generatio', 77335, 60, 2, 5608, 4),
(14119, 'Angular', 'React framework dengan SSR dan static generatio', 272204, 71, 17, 9336, 5),
(14120, 'Laravel', 'React framework dengan SSR dan static generatio', 32295, 130, 14, 6239, 5),
(14121, 'CodeIgniter', 'React framework dengan SSR dan static generatio', 158041, 187, 11, 5321, 3),
(14122, 'Svelte', 'React framework dengan SSR dan static generatio', 217933, 133, 18, 2976, 3),
(14123, 'Svelte', 'React framework dengan SSR dan static generatio', 277282, 135, 5, 2859, 5),
(14124, 'FastAPI', 'React framework dengan SSR dan static generatio', 329014, 183, 4, 1217, 5);

-- --------------------------------------------------------

--
-- Table structure for table `spk_frameworkscore`
--

CREATE TABLE `spk_frameworkscore` (
  `id` bigint(20) NOT NULL,
  `value` double NOT NULL,
  `criteria_id` bigint(20) NOT NULL,
  `framework_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spk_frameworkscore`
--

INSERT INTO `spk_frameworkscore` (`id`, `value`, `criteria_id`, `framework_id`) VALUES
(64335, 5946, 13, 13825),
(64336, 3, 14, 13825),
(64337, 436665, 15, 13825),
(64338, 178, 16, 13825),
(64339, 14, 18, 13825),
(64340, 9772, 13, 13826),
(64341, 3, 14, 13826),
(64342, 286571, 15, 13826),
(64343, 182, 16, 13826),
(64344, 4, 18, 13826),
(64345, 9147, 13, 13827),
(64346, 2, 14, 13827),
(64347, 181650, 15, 13827),
(64348, 114, 16, 13827),
(64349, 18, 18, 13827),
(64350, 6861, 13, 13828),
(64351, 2, 14, 13828),
(64352, 235759, 15, 13828),
(64353, 163, 16, 13828),
(64354, 13, 18, 13828),
(64355, 7415, 13, 13829),
(64356, 4, 14, 13829),
(64357, 210722, 15, 13829),
(64358, 127, 16, 13829),
(64359, 10, 18, 13829),
(64360, 3894, 13, 13830),
(64361, 3, 14, 13830),
(64362, 279473, 15, 13830),
(64363, 147, 16, 13830),
(64364, 6, 18, 13830),
(64365, 2474, 13, 13831),
(64366, 4, 14, 13831),
(64367, 371386, 15, 13831),
(64368, 50, 16, 13831),
(64369, 11, 18, 13831),
(64370, 2207, 13, 13832),
(64371, 2, 14, 13832),
(64372, 469842, 15, 13832),
(64373, 145, 16, 13832),
(64374, 20, 18, 13832),
(64375, 7007, 13, 13833),
(64376, 3, 14, 13833),
(64377, 343031, 15, 13833),
(64378, 44, 16, 13833),
(64379, 8, 18, 13833),
(64380, 6469, 13, 13834),
(64381, 3, 14, 13834),
(64382, 416038, 15, 13834),
(64383, 196, 16, 13834),
(64384, 11, 18, 13834),
(64385, 1571, 13, 13835),
(64386, 4, 14, 13835),
(64387, 248702, 15, 13835),
(64388, 191, 16, 13835),
(64389, 1, 18, 13835),
(64390, 5495, 13, 13836),
(64391, 3, 14, 13836),
(64392, 295180, 15, 13836),
(64393, 103, 16, 13836),
(64394, 7, 18, 13836),
(64395, 8615, 13, 13837),
(64396, 5, 14, 13837),
(64397, 94235, 15, 13837),
(64398, 165, 16, 13837),
(64399, 16, 18, 13837),
(64400, 961, 13, 13838),
(64401, 1, 14, 13838),
(64402, 205090, 15, 13838),
(64403, 139, 16, 13838),
(64404, 7, 18, 13838),
(64405, 7190, 13, 13839),
(64406, 1, 14, 13839),
(64407, 377743, 15, 13839),
(64408, 101, 16, 13839),
(64409, 2, 18, 13839),
(64410, 828, 13, 13840),
(64411, 3, 14, 13840),
(64412, 455705, 15, 13840),
(64413, 132, 16, 13840),
(64414, 11, 18, 13840),
(64415, 2719, 13, 13841),
(64416, 5, 14, 13841),
(64417, 454387, 15, 13841),
(64418, 166, 16, 13841),
(64419, 20, 18, 13841),
(64420, 6655, 13, 13842),
(64421, 3, 14, 13842),
(64422, 134560, 15, 13842),
(64423, 69, 16, 13842),
(64424, 6, 18, 13842),
(64425, 8066, 13, 13843),
(64426, 3, 14, 13843),
(64427, 164924, 15, 13843),
(64428, 39, 16, 13843),
(64429, 21, 18, 13843),
(64430, 4765, 13, 13844),
(64431, 1, 14, 13844),
(64432, 15370, 15, 13844),
(64433, 183, 16, 13844),
(64434, 20, 18, 13844),
(64435, 8139, 13, 13845),
(64436, 4, 14, 13845),
(64437, 31033, 15, 13845),
(64438, 126, 16, 13845),
(64439, 5, 18, 13845),
(64440, 7707, 13, 13846),
(64441, 2, 14, 13846),
(64442, 426302, 15, 13846),
(64443, 103, 16, 13846),
(64444, 15, 18, 13846),
(64445, 830, 13, 13847),
(64446, 2, 14, 13847),
(64447, 34869, 15, 13847),
(64448, 176, 16, 13847),
(64449, 8, 18, 13847),
(64450, 2987, 13, 13848),
(64451, 1, 14, 13848),
(64452, 19786, 15, 13848),
(64453, 98, 16, 13848),
(64454, 15, 18, 13848),
(64455, 8053, 13, 13849),
(64456, 2, 14, 13849),
(64457, 185002, 15, 13849),
(64458, 161, 16, 13849),
(64459, 11, 18, 13849),
(64460, 2720, 13, 13850),
(64461, 1, 14, 13850),
(64462, 195928, 15, 13850),
(64463, 115, 16, 13850),
(64464, 22, 18, 13850),
(64465, 6753, 13, 13851),
(64466, 3, 14, 13851),
(64467, 430668, 15, 13851),
(64468, 174, 16, 13851),
(64469, 3, 18, 13851),
(64470, 3548, 13, 13852),
(64471, 4, 14, 13852),
(64472, 263250, 15, 13852),
(64473, 49, 16, 13852),
(64474, 10, 18, 13852),
(64475, 1256, 13, 13853),
(64476, 2, 14, 13853),
(64477, 290320, 15, 13853),
(64478, 162, 16, 13853),
(64479, 17, 18, 13853),
(64480, 9828, 13, 13854),
(64481, 1, 14, 13854),
(64482, 182946, 15, 13854),
(64483, 22, 16, 13854),
(64484, 5, 18, 13854),
(64485, 2655, 13, 13855),
(64486, 2, 14, 13855),
(64487, 166893, 15, 13855),
(64488, 31, 16, 13855),
(64489, 24, 18, 13855),
(64490, 8606, 13, 13856),
(64491, 3, 14, 13856),
(64492, 422741, 15, 13856),
(64493, 93, 16, 13856),
(64494, 3, 18, 13856),
(64495, 4571, 13, 13857),
(64496, 1, 14, 13857),
(64497, 87873, 15, 13857),
(64498, 17, 16, 13857),
(64499, 11, 18, 13857),
(64500, 7739, 13, 13858),
(64501, 3, 14, 13858),
(64502, 487673, 15, 13858),
(64503, 165, 16, 13858),
(64504, 23, 18, 13858),
(64505, 5241, 13, 13859),
(64506, 4, 14, 13859),
(64507, 470296, 15, 13859),
(64508, 175, 16, 13859),
(64509, 18, 18, 13859),
(64510, 8395, 13, 13860),
(64511, 4, 14, 13860),
(64512, 292639, 15, 13860),
(64513, 161, 16, 13860),
(64514, 14, 18, 13860),
(64515, 3783, 13, 13861),
(64516, 1, 14, 13861),
(64517, 355676, 15, 13861),
(64518, 75, 16, 13861),
(64519, 22, 18, 13861),
(64520, 7758, 13, 13862),
(64521, 1, 14, 13862),
(64522, 454940, 15, 13862),
(64523, 163, 16, 13862),
(64524, 12, 18, 13862),
(64525, 2498, 13, 13863),
(64526, 5, 14, 13863),
(64527, 261475, 15, 13863),
(64528, 159, 16, 13863),
(64529, 1, 18, 13863),
(64530, 848, 13, 13864),
(64531, 4, 14, 13864),
(64532, 105028, 15, 13864),
(64533, 101, 16, 13864),
(64534, 2, 18, 13864),
(64535, 8562, 13, 13865),
(64536, 1, 14, 13865),
(64537, 161544, 15, 13865),
(64538, 166, 16, 13865),
(64539, 19, 18, 13865),
(64540, 4923, 13, 13866),
(64541, 4, 14, 13866),
(64542, 272883, 15, 13866),
(64543, 64, 16, 13866),
(64544, 14, 18, 13866),
(64545, 1693, 13, 13867),
(64546, 5, 14, 13867),
(64547, 369197, 15, 13867),
(64548, 32, 16, 13867),
(64549, 1, 18, 13867),
(64550, 5947, 13, 13868),
(64551, 3, 14, 13868),
(64552, 188046, 15, 13868),
(64553, 35, 16, 13868),
(64554, 11, 18, 13868),
(64555, 7026, 13, 13869),
(64556, 5, 14, 13869),
(64557, 118547, 15, 13869),
(64558, 33, 16, 13869),
(64559, 23, 18, 13869),
(64560, 8469, 13, 13870),
(64561, 1, 14, 13870),
(64562, 271832, 15, 13870),
(64563, 109, 16, 13870),
(64564, 20, 18, 13870),
(64565, 1729, 13, 13871),
(64566, 1, 14, 13871),
(64567, 165349, 15, 13871),
(64568, 131, 16, 13871),
(64569, 24, 18, 13871),
(64570, 5118, 13, 13872),
(64571, 4, 14, 13872),
(64572, 378870, 15, 13872),
(64573, 168, 16, 13872),
(64574, 11, 18, 13872),
(64575, 9174, 13, 13873),
(64576, 5, 14, 13873),
(64577, 324918, 15, 13873),
(64578, 172, 16, 13873),
(64579, 9, 18, 13873),
(64580, 1026, 13, 13874),
(64581, 1, 14, 13874),
(64582, 189461, 15, 13874),
(64583, 35, 16, 13874),
(64584, 19, 18, 13874),
(64585, 686, 13, 13875),
(64586, 2, 14, 13875),
(64587, 327153, 15, 13875),
(64588, 133, 16, 13875),
(64589, 3, 18, 13875),
(64590, 4867, 13, 13876),
(64591, 2, 14, 13876),
(64592, 100119, 15, 13876),
(64593, 155, 16, 13876),
(64594, 13, 18, 13876),
(64595, 6472, 13, 13877),
(64596, 4, 14, 13877),
(64597, 485442, 15, 13877),
(64598, 192, 16, 13877),
(64599, 10, 18, 13877),
(64600, 6436, 13, 13878),
(64601, 2, 14, 13878),
(64602, 132134, 15, 13878),
(64603, 160, 16, 13878),
(64604, 1, 18, 13878),
(64605, 796, 13, 13879),
(64606, 4, 14, 13879),
(64607, 298193, 15, 13879),
(64608, 188, 16, 13879),
(64609, 1, 18, 13879),
(64610, 5441, 13, 13880),
(64611, 5, 14, 13880),
(64612, 351243, 15, 13880),
(64613, 60, 16, 13880),
(64614, 21, 18, 13880),
(64615, 4745, 13, 13881),
(64616, 4, 14, 13881),
(64617, 22312, 15, 13881),
(64618, 194, 16, 13881),
(64619, 1, 18, 13881),
(64620, 6572, 13, 13882),
(64621, 5, 14, 13882),
(64622, 499478, 15, 13882),
(64623, 166, 16, 13882),
(64624, 7, 18, 13882),
(64625, 6970, 13, 13883),
(64626, 2, 14, 13883),
(64627, 330447, 15, 13883),
(64628, 62, 16, 13883),
(64629, 15, 18, 13883),
(64630, 4357, 13, 13884),
(64631, 4, 14, 13884),
(64632, 430936, 15, 13884),
(64633, 82, 16, 13884),
(64634, 17, 18, 13884),
(64635, 2823, 13, 13885),
(64636, 1, 14, 13885),
(64637, 52410, 15, 13885),
(64638, 127, 16, 13885),
(64639, 6, 18, 13885),
(64640, 6878, 13, 13886),
(64641, 4, 14, 13886),
(64642, 393694, 15, 13886),
(64643, 158, 16, 13886),
(64644, 14, 18, 13886),
(64645, 2735, 13, 13887),
(64646, 1, 14, 13887),
(64647, 360774, 15, 13887),
(64648, 51, 16, 13887),
(64649, 6, 18, 13887),
(64650, 3714, 13, 13888),
(64651, 5, 14, 13888),
(64652, 198452, 15, 13888),
(64653, 177, 16, 13888),
(64654, 9, 18, 13888),
(64655, 7187, 13, 13889),
(64656, 3, 14, 13889),
(64657, 17938, 15, 13889),
(64658, 155, 16, 13889),
(64659, 1, 18, 13889),
(64660, 5999, 13, 13890),
(64661, 1, 14, 13890),
(64662, 495803, 15, 13890),
(64663, 112, 16, 13890),
(64664, 2, 18, 13890),
(64665, 8978, 13, 13891),
(64666, 2, 14, 13891),
(64667, 398003, 15, 13891),
(64668, 166, 16, 13891),
(64669, 11, 18, 13891),
(64670, 2440, 13, 13892),
(64671, 2, 14, 13892),
(64672, 235782, 15, 13892),
(64673, 21, 16, 13892),
(64674, 1, 18, 13892),
(64675, 8533, 13, 13893),
(64676, 4, 14, 13893),
(64677, 366944, 15, 13893),
(64678, 39, 16, 13893),
(64679, 18, 18, 13893),
(64680, 3980, 13, 13894),
(64681, 2, 14, 13894),
(64682, 287349, 15, 13894),
(64683, 109, 16, 13894),
(64684, 16, 18, 13894),
(64685, 6827, 13, 13895),
(64686, 4, 14, 13895),
(64687, 489596, 15, 13895),
(64688, 197, 16, 13895),
(64689, 19, 18, 13895),
(64690, 6516, 13, 13896),
(64691, 5, 14, 13896),
(64692, 411092, 15, 13896),
(64693, 138, 16, 13896),
(64694, 22, 18, 13896),
(64695, 7847, 13, 13897),
(64696, 3, 14, 13897),
(64697, 379400, 15, 13897),
(64698, 85, 16, 13897),
(64699, 22, 18, 13897),
(64700, 2175, 13, 13898),
(64701, 3, 14, 13898),
(64702, 287993, 15, 13898),
(64703, 79, 16, 13898),
(64704, 20, 18, 13898),
(64705, 2691, 13, 13899),
(64706, 3, 14, 13899),
(64707, 442091, 15, 13899),
(64708, 32, 16, 13899),
(64709, 2, 18, 13899),
(64710, 1927, 13, 13900),
(64711, 2, 14, 13900),
(64712, 170133, 15, 13900),
(64713, 52, 16, 13900),
(64714, 16, 18, 13900),
(64715, 8972, 13, 13901),
(64716, 5, 14, 13901),
(64717, 108729, 15, 13901),
(64718, 137, 16, 13901),
(64719, 6, 18, 13901),
(64720, 5058, 13, 13902),
(64721, 4, 14, 13902),
(64722, 175455, 15, 13902),
(64723, 15, 16, 13902),
(64724, 11, 18, 13902),
(64725, 2200, 13, 13903),
(64726, 4, 14, 13903),
(64727, 405581, 15, 13903),
(64728, 193, 16, 13903),
(64729, 16, 18, 13903),
(64730, 9506, 13, 13904),
(64731, 2, 14, 13904),
(64732, 385618, 15, 13904),
(64733, 95, 16, 13904),
(64734, 15, 18, 13904),
(64735, 2037, 13, 13905),
(64736, 3, 14, 13905),
(64737, 376250, 15, 13905),
(64738, 195, 16, 13905),
(64739, 11, 18, 13905),
(64740, 4661, 13, 13906),
(64741, 4, 14, 13906),
(64742, 378923, 15, 13906),
(64743, 60, 16, 13906),
(64744, 21, 18, 13906),
(64745, 7658, 13, 13907),
(64746, 2, 14, 13907),
(64747, 274090, 15, 13907),
(64748, 88, 16, 13907),
(64749, 8, 18, 13907),
(64750, 596, 13, 13908),
(64751, 4, 14, 13908),
(64752, 205997, 15, 13908),
(64753, 122, 16, 13908),
(64754, 17, 18, 13908),
(64755, 3549, 13, 13909),
(64756, 3, 14, 13909),
(64757, 172332, 15, 13909),
(64758, 64, 16, 13909),
(64759, 11, 18, 13909),
(64760, 932, 13, 13910),
(64761, 4, 14, 13910),
(64762, 332767, 15, 13910),
(64763, 91, 16, 13910),
(64764, 19, 18, 13910),
(64765, 5025, 13, 13911),
(64766, 1, 14, 13911),
(64767, 470363, 15, 13911),
(64768, 112, 16, 13911),
(64769, 24, 18, 13911),
(64770, 1558, 13, 13912),
(64771, 5, 14, 13912),
(64772, 270631, 15, 13912),
(64773, 49, 16, 13912),
(64774, 3, 18, 13912),
(64775, 2373, 13, 13913),
(64776, 5, 14, 13913),
(64777, 275155, 15, 13913),
(64778, 22, 16, 13913),
(64779, 16, 18, 13913),
(64780, 5715, 13, 13914),
(64781, 2, 14, 13914),
(64782, 471746, 15, 13914),
(64783, 199, 16, 13914),
(64784, 3, 18, 13914),
(64785, 5956, 13, 13915),
(64786, 2, 14, 13915),
(64787, 382971, 15, 13915),
(64788, 85, 16, 13915),
(64789, 12, 18, 13915),
(64790, 9321, 13, 13916),
(64791, 2, 14, 13916),
(64792, 327334, 15, 13916),
(64793, 143, 16, 13916),
(64794, 19, 18, 13916),
(64795, 8249, 13, 13917),
(64796, 2, 14, 13917),
(64797, 435122, 15, 13917),
(64798, 48, 16, 13917),
(64799, 8, 18, 13917),
(64800, 9693, 13, 13918),
(64801, 2, 14, 13918),
(64802, 63301, 15, 13918),
(64803, 47, 16, 13918),
(64804, 10, 18, 13918),
(64805, 2773, 13, 13919),
(64806, 3, 14, 13919),
(64807, 294220, 15, 13919),
(64808, 38, 16, 13919),
(64809, 1, 18, 13919),
(64810, 1678, 13, 13920),
(64811, 2, 14, 13920),
(64812, 385319, 15, 13920),
(64813, 30, 16, 13920),
(64814, 15, 18, 13920),
(64815, 7123, 13, 13921),
(64816, 2, 14, 13921),
(64817, 21486, 15, 13921),
(64818, 153, 16, 13921),
(64819, 7, 18, 13921),
(64820, 8386, 13, 13922),
(64821, 1, 14, 13922),
(64822, 348078, 15, 13922),
(64823, 13, 16, 13922),
(64824, 15, 18, 13922),
(64825, 9357, 13, 13923),
(64826, 4, 14, 13923),
(64827, 204170, 15, 13923),
(64828, 199, 16, 13923),
(64829, 23, 18, 13923),
(64830, 3592, 13, 13924),
(64831, 5, 14, 13924),
(64832, 440130, 15, 13924),
(64833, 145, 16, 13924),
(64834, 3, 18, 13924),
(64835, 7482, 13, 13925),
(64836, 3, 14, 13925),
(64837, 261728, 15, 13925),
(64838, 145, 16, 13925),
(64839, 11, 18, 13925),
(64840, 1862, 13, 13926),
(64841, 2, 14, 13926),
(64842, 457397, 15, 13926),
(64843, 144, 16, 13926),
(64844, 22, 18, 13926),
(64845, 1152, 13, 13927),
(64846, 5, 14, 13927),
(64847, 229183, 15, 13927),
(64848, 87, 16, 13927),
(64849, 8, 18, 13927),
(64850, 2144, 13, 13928),
(64851, 2, 14, 13928),
(64852, 423199, 15, 13928),
(64853, 66, 16, 13928),
(64854, 14, 18, 13928),
(64855, 5461, 13, 13929),
(64856, 2, 14, 13929),
(64857, 26723, 15, 13929),
(64858, 160, 16, 13929),
(64859, 14, 18, 13929),
(64860, 7793, 13, 13930),
(64861, 4, 14, 13930),
(64862, 398593, 15, 13930),
(64863, 126, 16, 13930),
(64864, 5, 18, 13930),
(64865, 7916, 13, 13931),
(64866, 2, 14, 13931),
(64867, 272850, 15, 13931),
(64868, 36, 16, 13931),
(64869, 9, 18, 13931),
(64870, 928, 13, 13932),
(64871, 4, 14, 13932),
(64872, 370704, 15, 13932),
(64873, 156, 16, 13932),
(64874, 24, 18, 13932),
(64875, 7133, 13, 13933),
(64876, 3, 14, 13933),
(64877, 52926, 15, 13933),
(64878, 101, 16, 13933),
(64879, 16, 18, 13933),
(64880, 5765, 13, 13934),
(64881, 5, 14, 13934),
(64882, 280969, 15, 13934),
(64883, 93, 16, 13934),
(64884, 6, 18, 13934),
(64885, 9565, 13, 13935),
(64886, 2, 14, 13935),
(64887, 299968, 15, 13935),
(64888, 132, 16, 13935),
(64889, 20, 18, 13935),
(64890, 1803, 13, 13936),
(64891, 3, 14, 13936),
(64892, 259907, 15, 13936),
(64893, 40, 16, 13936),
(64894, 8, 18, 13936),
(64895, 9732, 13, 13937),
(64896, 5, 14, 13937),
(64897, 26173, 15, 13937),
(64898, 108, 16, 13937),
(64899, 4, 18, 13937),
(64900, 4813, 13, 13938),
(64901, 5, 14, 13938),
(64902, 48447, 15, 13938),
(64903, 55, 16, 13938),
(64904, 9, 18, 13938),
(64905, 5572, 13, 13939),
(64906, 2, 14, 13939),
(64907, 424277, 15, 13939),
(64908, 154, 16, 13939),
(64909, 24, 18, 13939),
(64910, 5255, 13, 13940),
(64911, 2, 14, 13940),
(64912, 38313, 15, 13940),
(64913, 62, 16, 13940),
(64914, 16, 18, 13940),
(64915, 6599, 13, 13941),
(64916, 4, 14, 13941),
(64917, 231879, 15, 13941),
(64918, 13, 16, 13941),
(64919, 3, 18, 13941),
(64920, 1250, 13, 13942),
(64921, 3, 14, 13942),
(64922, 305729, 15, 13942),
(64923, 86, 16, 13942),
(64924, 7, 18, 13942),
(64925, 2019, 13, 13943),
(64926, 2, 14, 13943),
(64927, 179104, 15, 13943),
(64928, 156, 16, 13943),
(64929, 17, 18, 13943),
(64930, 2874, 13, 13944),
(64931, 2, 14, 13944),
(64932, 454627, 15, 13944),
(64933, 162, 16, 13944),
(64934, 8, 18, 13944),
(64935, 7141, 13, 13945),
(64936, 3, 14, 13945),
(64937, 424222, 15, 13945),
(64938, 190, 16, 13945),
(64939, 7, 18, 13945),
(64940, 2160, 13, 13946),
(64941, 2, 14, 13946),
(64942, 124165, 15, 13946),
(64943, 180, 16, 13946),
(64944, 15, 18, 13946),
(64945, 2310, 13, 13947),
(64946, 4, 14, 13947),
(64947, 235523, 15, 13947),
(64948, 60, 16, 13947),
(64949, 16, 18, 13947),
(64950, 6766, 13, 13948),
(64951, 4, 14, 13948),
(64952, 367544, 15, 13948),
(64953, 33, 16, 13948),
(64954, 5, 18, 13948),
(64955, 5410, 13, 13949),
(64956, 3, 14, 13949),
(64957, 364035, 15, 13949),
(64958, 48, 16, 13949),
(64959, 24, 18, 13949),
(64960, 7648, 13, 13950),
(64961, 3, 14, 13950),
(64962, 157734, 15, 13950),
(64963, 27, 16, 13950),
(64964, 3, 18, 13950),
(64965, 7659, 13, 13951),
(64966, 1, 14, 13951),
(64967, 352836, 15, 13951),
(64968, 141, 16, 13951),
(64969, 1, 18, 13951),
(64970, 8738, 13, 13952),
(64971, 5, 14, 13952),
(64972, 498884, 15, 13952),
(64973, 43, 16, 13952),
(64974, 16, 18, 13952),
(64975, 1620, 13, 13953),
(64976, 2, 14, 13953),
(64977, 424400, 15, 13953),
(64978, 182, 16, 13953),
(64979, 11, 18, 13953),
(64980, 1292, 13, 13954),
(64981, 4, 14, 13954),
(64982, 345764, 15, 13954),
(64983, 148, 16, 13954),
(64984, 9, 18, 13954),
(64985, 4289, 13, 13955),
(64986, 5, 14, 13955),
(64987, 267132, 15, 13955),
(64988, 144, 16, 13955),
(64989, 15, 18, 13955),
(64990, 6903, 13, 13956),
(64991, 4, 14, 13956),
(64992, 485898, 15, 13956),
(64993, 14, 16, 13956),
(64994, 24, 18, 13956),
(64995, 4465, 13, 13957),
(64996, 4, 14, 13957),
(64997, 219903, 15, 13957),
(64998, 125, 16, 13957),
(64999, 13, 18, 13957),
(65000, 6495, 13, 13958),
(65001, 1, 14, 13958),
(65002, 108187, 15, 13958),
(65003, 16, 16, 13958),
(65004, 10, 18, 13958),
(65005, 3729, 13, 13959),
(65006, 3, 14, 13959),
(65007, 298687, 15, 13959),
(65008, 154, 16, 13959),
(65009, 4, 18, 13959),
(65010, 1254, 13, 13960),
(65011, 1, 14, 13960),
(65012, 132928, 15, 13960),
(65013, 11, 16, 13960),
(65014, 5, 18, 13960),
(65015, 2304, 13, 13961),
(65016, 1, 14, 13961),
(65017, 154641, 15, 13961),
(65018, 140, 16, 13961),
(65019, 11, 18, 13961),
(65020, 9436, 13, 13962),
(65021, 5, 14, 13962),
(65022, 200695, 15, 13962),
(65023, 19, 16, 13962),
(65024, 22, 18, 13962),
(65025, 1770, 13, 13963),
(65026, 1, 14, 13963),
(65027, 218878, 15, 13963),
(65028, 158, 16, 13963),
(65029, 21, 18, 13963),
(65030, 6614, 13, 13964),
(65031, 2, 14, 13964),
(65032, 117466, 15, 13964),
(65033, 141, 16, 13964),
(65034, 20, 18, 13964),
(65035, 1748, 13, 13965),
(65036, 1, 14, 13965),
(65037, 410104, 15, 13965),
(65038, 112, 16, 13965),
(65039, 15, 18, 13965),
(65040, 9110, 13, 13966),
(65041, 1, 14, 13966),
(65042, 68659, 15, 13966),
(65043, 192, 16, 13966),
(65044, 5, 18, 13966),
(65045, 3834, 13, 13967),
(65046, 2, 14, 13967),
(65047, 191492, 15, 13967),
(65048, 193, 16, 13967),
(65049, 12, 18, 13967),
(65050, 8921, 13, 13968),
(65051, 1, 14, 13968),
(65052, 145928, 15, 13968),
(65053, 162, 16, 13968),
(65054, 16, 18, 13968),
(65055, 9633, 13, 13969),
(65056, 2, 14, 13969),
(65057, 411995, 15, 13969),
(65058, 63, 16, 13969),
(65059, 1, 18, 13969),
(65060, 8002, 13, 13970),
(65061, 4, 14, 13970),
(65062, 112903, 15, 13970),
(65063, 88, 16, 13970),
(65064, 16, 18, 13970),
(65065, 8857, 13, 13971),
(65066, 3, 14, 13971),
(65067, 417612, 15, 13971),
(65068, 90, 16, 13971),
(65069, 3, 18, 13971),
(65070, 9979, 13, 13972),
(65071, 4, 14, 13972),
(65072, 185651, 15, 13972),
(65073, 194, 16, 13972),
(65074, 24, 18, 13972),
(65075, 2427, 13, 13973),
(65076, 4, 14, 13973),
(65077, 191544, 15, 13973),
(65078, 97, 16, 13973),
(65079, 2, 18, 13973),
(65080, 8227, 13, 13974),
(65081, 4, 14, 13974),
(65082, 430469, 15, 13974),
(65083, 63, 16, 13974),
(65084, 15, 18, 13974),
(65085, 1080, 13, 13975),
(65086, 3, 14, 13975),
(65087, 280274, 15, 13975),
(65088, 143, 16, 13975),
(65089, 2, 18, 13975),
(65090, 6622, 13, 13976),
(65091, 2, 14, 13976),
(65092, 99665, 15, 13976),
(65093, 137, 16, 13976),
(65094, 10, 18, 13976),
(65095, 2027, 13, 13977),
(65096, 4, 14, 13977),
(65097, 146207, 15, 13977),
(65098, 106, 16, 13977),
(65099, 21, 18, 13977),
(65100, 2452, 13, 13978),
(65101, 5, 14, 13978),
(65102, 143004, 15, 13978),
(65103, 84, 16, 13978),
(65104, 7, 18, 13978),
(65105, 659, 13, 13979),
(65106, 1, 14, 13979),
(65107, 251364, 15, 13979),
(65108, 190, 16, 13979),
(65109, 5, 18, 13979),
(65110, 9155, 13, 13980),
(65111, 2, 14, 13980),
(65112, 384518, 15, 13980),
(65113, 67, 16, 13980),
(65114, 11, 18, 13980),
(65115, 4084, 13, 13981),
(65116, 2, 14, 13981),
(65117, 219037, 15, 13981),
(65118, 60, 16, 13981),
(65119, 10, 18, 13981),
(65120, 4368, 13, 13982),
(65121, 5, 14, 13982),
(65122, 473279, 15, 13982),
(65123, 131, 16, 13982),
(65124, 14, 18, 13982),
(65125, 8332, 13, 13983),
(65126, 1, 14, 13983),
(65127, 64714, 15, 13983),
(65128, 97, 16, 13983),
(65129, 18, 18, 13983),
(65130, 4863, 13, 13984),
(65131, 2, 14, 13984),
(65132, 53111, 15, 13984),
(65133, 25, 16, 13984),
(65134, 14, 18, 13984),
(65135, 6674, 13, 13985),
(65136, 4, 14, 13985),
(65137, 142678, 15, 13985),
(65138, 100, 16, 13985),
(65139, 9, 18, 13985),
(65140, 6595, 13, 13986),
(65141, 1, 14, 13986),
(65142, 421320, 15, 13986),
(65143, 16, 16, 13986),
(65144, 14, 18, 13986),
(65145, 1427, 13, 13987),
(65146, 5, 14, 13987),
(65147, 307551, 15, 13987),
(65148, 113, 16, 13987),
(65149, 14, 18, 13987),
(65150, 9779, 13, 13988),
(65151, 1, 14, 13988),
(65152, 18972, 15, 13988),
(65153, 101, 16, 13988),
(65154, 4, 18, 13988),
(65155, 9177, 13, 13989),
(65156, 2, 14, 13989),
(65157, 357603, 15, 13989),
(65158, 46, 16, 13989),
(65159, 10, 18, 13989),
(65160, 5175, 13, 13990),
(65161, 2, 14, 13990),
(65162, 379660, 15, 13990),
(65163, 108, 16, 13990),
(65164, 8, 18, 13990),
(65165, 955, 13, 13991),
(65166, 4, 14, 13991),
(65167, 122693, 15, 13991),
(65168, 52, 16, 13991),
(65169, 10, 18, 13991),
(65170, 4385, 13, 13992),
(65171, 1, 14, 13992),
(65172, 284451, 15, 13992),
(65173, 71, 16, 13992),
(65174, 4, 18, 13992),
(65175, 5405, 13, 13993),
(65176, 3, 14, 13993),
(65177, 369362, 15, 13993),
(65178, 175, 16, 13993),
(65179, 4, 18, 13993),
(65180, 9163, 13, 13994),
(65181, 1, 14, 13994),
(65182, 29994, 15, 13994),
(65183, 162, 16, 13994),
(65184, 3, 18, 13994),
(65185, 9293, 13, 13995),
(65186, 2, 14, 13995),
(65187, 349812, 15, 13995),
(65188, 183, 16, 13995),
(65189, 23, 18, 13995),
(65190, 8586, 13, 13996),
(65191, 3, 14, 13996),
(65192, 176436, 15, 13996),
(65193, 138, 16, 13996),
(65194, 13, 18, 13996),
(65195, 1144, 13, 13997),
(65196, 5, 14, 13997),
(65197, 226887, 15, 13997),
(65198, 136, 16, 13997),
(65199, 15, 18, 13997),
(65200, 8768, 13, 13998),
(65201, 5, 14, 13998),
(65202, 381737, 15, 13998),
(65203, 171, 16, 13998),
(65204, 7, 18, 13998),
(65205, 2733, 13, 13999),
(65206, 1, 14, 13999),
(65207, 329135, 15, 13999),
(65208, 76, 16, 13999),
(65209, 19, 18, 13999),
(65210, 6529, 13, 14000),
(65211, 3, 14, 14000),
(65212, 216373, 15, 14000),
(65213, 164, 16, 14000),
(65214, 16, 18, 14000),
(65215, 9682, 13, 14001),
(65216, 1, 14, 14001),
(65217, 58426, 15, 14001),
(65218, 175, 16, 14001),
(65219, 2, 18, 14001),
(65220, 6664, 13, 14002),
(65221, 2, 14, 14002),
(65222, 73806, 15, 14002),
(65223, 172, 16, 14002),
(65224, 2, 18, 14002),
(65225, 5711, 13, 14003),
(65226, 3, 14, 14003),
(65227, 231488, 15, 14003),
(65228, 109, 16, 14003),
(65229, 10, 18, 14003),
(65230, 6374, 13, 14004),
(65231, 3, 14, 14004),
(65232, 386437, 15, 14004),
(65233, 110, 16, 14004),
(65234, 5, 18, 14004),
(65235, 5975, 13, 14005),
(65236, 3, 14, 14005),
(65237, 474071, 15, 14005),
(65238, 165, 16, 14005),
(65239, 2, 18, 14005),
(65240, 6060, 13, 14006),
(65241, 1, 14, 14006),
(65242, 424683, 15, 14006),
(65243, 102, 16, 14006),
(65244, 12, 18, 14006),
(65245, 4171, 13, 14007),
(65246, 1, 14, 14007),
(65247, 225897, 15, 14007),
(65248, 50, 16, 14007),
(65249, 23, 18, 14007),
(65250, 8088, 13, 14008),
(65251, 3, 14, 14008),
(65252, 494309, 15, 14008),
(65253, 97, 16, 14008),
(65254, 21, 18, 14008),
(65255, 1298, 13, 14009),
(65256, 1, 14, 14009),
(65257, 411604, 15, 14009),
(65258, 199, 16, 14009),
(65259, 21, 18, 14009),
(65260, 5115, 13, 14010),
(65261, 2, 14, 14010),
(65262, 449713, 15, 14010),
(65263, 106, 16, 14010),
(65264, 17, 18, 14010),
(65265, 6590, 13, 14011),
(65266, 5, 14, 14011),
(65267, 305366, 15, 14011),
(65268, 50, 16, 14011),
(65269, 24, 18, 14011),
(65270, 3287, 13, 14012),
(65271, 3, 14, 14012),
(65272, 212437, 15, 14012),
(65273, 121, 16, 14012),
(65274, 12, 18, 14012),
(65275, 8002, 13, 14013),
(65276, 1, 14, 14013),
(65277, 71016, 15, 14013),
(65278, 36, 16, 14013),
(65279, 21, 18, 14013),
(65280, 6124, 13, 14014),
(65281, 2, 14, 14014),
(65282, 247645, 15, 14014),
(65283, 66, 16, 14014),
(65284, 4, 18, 14014),
(65285, 4031, 13, 14015),
(65286, 3, 14, 14015),
(65287, 229684, 15, 14015),
(65288, 171, 16, 14015),
(65289, 13, 18, 14015),
(65290, 3042, 13, 14016),
(65291, 4, 14, 14016),
(65292, 225049, 15, 14016),
(65293, 133, 16, 14016),
(65294, 16, 18, 14016),
(65295, 5317, 13, 14017),
(65296, 4, 14, 14017),
(65297, 66247, 15, 14017),
(65298, 91, 16, 14017),
(65299, 14, 18, 14017),
(65300, 6884, 13, 14018),
(65301, 4, 14, 14018),
(65302, 156993, 15, 14018),
(65303, 51, 16, 14018),
(65304, 9, 18, 14018),
(65305, 5481, 13, 14019),
(65306, 5, 14, 14019),
(65307, 183578, 15, 14019),
(65308, 15, 16, 14019),
(65309, 5, 18, 14019),
(65310, 2640, 13, 14020),
(65311, 1, 14, 14020),
(65312, 274356, 15, 14020),
(65313, 59, 16, 14020),
(65314, 4, 18, 14020),
(65315, 3294, 13, 14021),
(65316, 3, 14, 14021),
(65317, 125717, 15, 14021),
(65318, 99, 16, 14021),
(65319, 14, 18, 14021),
(65320, 1122, 13, 14022),
(65321, 1, 14, 14022),
(65322, 38832, 15, 14022),
(65323, 29, 16, 14022),
(65324, 12, 18, 14022),
(65325, 5023, 13, 14023),
(65326, 5, 14, 14023),
(65327, 270863, 15, 14023),
(65328, 142, 16, 14023),
(65329, 1, 18, 14023),
(65330, 4204, 13, 14024),
(65331, 3, 14, 14024),
(65332, 438380, 15, 14024),
(65333, 134, 16, 14024),
(65334, 4, 18, 14024),
(65335, 4175, 13, 14025),
(65336, 3, 14, 14025),
(65337, 436691, 15, 14025),
(65338, 21, 16, 14025),
(65339, 2, 18, 14025),
(65340, 9045, 13, 14026),
(65341, 4, 14, 14026),
(65342, 124063, 15, 14026),
(65343, 42, 16, 14026),
(65344, 4, 18, 14026),
(65345, 6574, 13, 14027),
(65346, 4, 14, 14027),
(65347, 421971, 15, 14027),
(65348, 153, 16, 14027),
(65349, 10, 18, 14027),
(65350, 2885, 13, 14028),
(65351, 5, 14, 14028),
(65352, 15977, 15, 14028),
(65353, 22, 16, 14028),
(65354, 1, 18, 14028),
(65355, 4971, 13, 14029),
(65356, 3, 14, 14029),
(65357, 260518, 15, 14029),
(65358, 29, 16, 14029),
(65359, 13, 18, 14029),
(65360, 1217, 13, 14030),
(65361, 5, 14, 14030),
(65362, 329014, 15, 14030),
(65363, 183, 16, 14030),
(65364, 4, 18, 14030),
(65365, 8779, 13, 14031),
(65366, 2, 14, 14031),
(65367, 353841, 15, 14031),
(65368, 53, 16, 14031),
(65369, 10, 18, 14031),
(65370, 5958, 13, 14032),
(65371, 5, 14, 14032),
(65372, 204560, 15, 14032),
(65373, 67, 16, 14032),
(65374, 9, 18, 14032),
(65375, 8440, 13, 14033),
(65376, 3, 14, 14033),
(65377, 368630, 15, 14033),
(65378, 112, 16, 14033),
(65379, 14, 18, 14033),
(65380, 5281, 13, 14034),
(65381, 3, 14, 14034),
(65382, 163110, 15, 14034),
(65383, 170, 16, 14034),
(65384, 8, 18, 14034),
(65385, 6429, 13, 14035),
(65386, 1, 14, 14035),
(65387, 233161, 15, 14035),
(65388, 94, 16, 14035),
(65389, 24, 18, 14035),
(65390, 3723, 13, 14036),
(65391, 3, 14, 14036),
(65392, 105826, 15, 14036),
(65393, 61, 16, 14036),
(65394, 6, 18, 14036),
(65395, 9760, 13, 14037),
(65396, 4, 14, 14037),
(65397, 14756, 15, 14037),
(65398, 151, 16, 14037),
(65399, 23, 18, 14037),
(65400, 6424, 13, 14038),
(65401, 2, 14, 14038),
(65402, 63868, 15, 14038),
(65403, 47, 16, 14038),
(65404, 12, 18, 14038),
(65405, 9133, 13, 14039),
(65406, 2, 14, 14039),
(65407, 180010, 15, 14039),
(65408, 55, 16, 14039),
(65409, 17, 18, 14039),
(65410, 6546, 13, 14040),
(65411, 4, 14, 14040),
(65412, 66742, 15, 14040),
(65413, 195, 16, 14040),
(65414, 19, 18, 14040),
(65415, 6717, 13, 14041),
(65416, 1, 14, 14041),
(65417, 380633, 15, 14041),
(65418, 158, 16, 14041),
(65419, 8, 18, 14041),
(65420, 5845, 13, 14042),
(65421, 4, 14, 14042),
(65422, 185835, 15, 14042),
(65423, 107, 16, 14042),
(65424, 8, 18, 14042),
(65425, 8599, 13, 14043),
(65426, 2, 14, 14043),
(65427, 459922, 15, 14043),
(65428, 55, 16, 14043),
(65429, 5, 18, 14043),
(65430, 2605, 13, 14044),
(65431, 3, 14, 14044),
(65432, 217641, 15, 14044),
(65433, 98, 16, 14044),
(65434, 10, 18, 14044),
(65435, 4941, 13, 14045),
(65436, 3, 14, 14045),
(65437, 226162, 15, 14045),
(65438, 146, 16, 14045),
(65439, 6, 18, 14045),
(65440, 9951, 13, 14046),
(65441, 1, 14, 14046),
(65442, 50127, 15, 14046),
(65443, 99, 16, 14046),
(65444, 6, 18, 14046),
(65445, 6811, 13, 14047),
(65446, 3, 14, 14047),
(65447, 373629, 15, 14047),
(65448, 163, 16, 14047),
(65449, 23, 18, 14047),
(65450, 2859, 13, 14048),
(65451, 5, 14, 14048),
(65452, 277282, 15, 14048),
(65453, 135, 16, 14048),
(65454, 5, 18, 14048),
(65455, 4358, 13, 14049),
(65456, 4, 14, 14049),
(65457, 437620, 15, 14049),
(65458, 43, 16, 14049),
(65459, 18, 18, 14049),
(65460, 7568, 13, 14050),
(65461, 3, 14, 14050),
(65462, 336940, 15, 14050),
(65463, 36, 16, 14050),
(65464, 14, 18, 14050),
(65465, 7601, 13, 14051),
(65466, 4, 14, 14051),
(65467, 260622, 15, 14051),
(65468, 59, 16, 14051),
(65469, 8, 18, 14051),
(65470, 8255, 13, 14052),
(65471, 2, 14, 14052),
(65472, 359856, 15, 14052),
(65473, 13, 16, 14052),
(65474, 7, 18, 14052),
(65475, 7854, 13, 14053),
(65476, 3, 14, 14053),
(65477, 137166, 15, 14053),
(65478, 70, 16, 14053),
(65479, 15, 18, 14053),
(65480, 3907, 13, 14054),
(65481, 2, 14, 14054),
(65482, 322301, 15, 14054),
(65483, 157, 16, 14054),
(65484, 11, 18, 14054),
(65485, 8397, 13, 14055),
(65486, 5, 14, 14055),
(65487, 409220, 15, 14055),
(65488, 55, 16, 14055),
(65489, 18, 18, 14055),
(65490, 8852, 13, 14056),
(65491, 4, 14, 14056),
(65492, 166480, 15, 14056),
(65493, 44, 16, 14056),
(65494, 6, 18, 14056),
(65495, 3450, 13, 14057),
(65496, 5, 14, 14057),
(65497, 419228, 15, 14057),
(65498, 168, 16, 14057),
(65499, 19, 18, 14057),
(65500, 1496, 13, 14058),
(65501, 5, 14, 14058),
(65502, 454604, 15, 14058),
(65503, 14, 16, 14058),
(65504, 11, 18, 14058),
(65505, 3213, 13, 14059),
(65506, 2, 14, 14059),
(65507, 150315, 15, 14059),
(65508, 154, 16, 14059),
(65509, 21, 18, 14059),
(65510, 8772, 13, 14060),
(65511, 1, 14, 14060),
(65512, 290744, 15, 14060),
(65513, 100, 16, 14060),
(65514, 17, 18, 14060),
(65515, 5664, 13, 14061),
(65516, 2, 14, 14061),
(65517, 481306, 15, 14061),
(65518, 188, 16, 14061),
(65519, 6, 18, 14061),
(65520, 8442, 13, 14062),
(65521, 3, 14, 14062),
(65522, 425294, 15, 14062),
(65523, 63, 16, 14062),
(65524, 13, 18, 14062),
(65525, 7793, 13, 14063),
(65526, 5, 14, 14063),
(65527, 130553, 15, 14063),
(65528, 69, 16, 14063),
(65529, 5, 18, 14063),
(65530, 6366, 13, 14064),
(65531, 5, 14, 14064),
(65532, 447540, 15, 14064),
(65533, 27, 16, 14064),
(65534, 21, 18, 14064),
(65535, 4196, 13, 14065),
(65536, 4, 14, 14065),
(65537, 394667, 15, 14065),
(65538, 116, 16, 14065),
(65539, 7, 18, 14065),
(65540, 7928, 13, 14066),
(65541, 1, 14, 14066),
(65542, 90635, 15, 14066),
(65543, 176, 16, 14066),
(65544, 19, 18, 14066),
(65545, 1731, 13, 14067),
(65546, 5, 14, 14067),
(65547, 21930, 15, 14067),
(65548, 176, 16, 14067),
(65549, 11, 18, 14067),
(65550, 2396, 13, 14068),
(65551, 1, 14, 14068),
(65552, 48043, 15, 14068),
(65553, 97, 16, 14068),
(65554, 19, 18, 14068),
(65555, 3835, 13, 14069),
(65556, 5, 14, 14069),
(65557, 371057, 15, 14069),
(65558, 99, 16, 14069),
(65559, 16, 18, 14069),
(65560, 7467, 13, 14070),
(65561, 4, 14, 14070),
(65562, 497781, 15, 14070),
(65563, 189, 16, 14070),
(65564, 10, 18, 14070),
(65565, 6309, 13, 14071),
(65566, 3, 14, 14071),
(65567, 202937, 15, 14071),
(65568, 29, 16, 14071),
(65569, 14, 18, 14071),
(65570, 8175, 13, 14072),
(65571, 1, 14, 14072),
(65572, 347587, 15, 14072),
(65573, 76, 16, 14072),
(65574, 8, 18, 14072),
(65575, 9958, 13, 14073),
(65576, 5, 14, 14073),
(65577, 221815, 15, 14073),
(65578, 141, 16, 14073),
(65579, 14, 18, 14073),
(65580, 9938, 13, 14074),
(65581, 3, 14, 14074),
(65582, 119414, 15, 14074),
(65583, 27, 16, 14074),
(65584, 1, 18, 14074),
(65585, 5992, 13, 14075),
(65586, 2, 14, 14075),
(65587, 127712, 15, 14075),
(65588, 104, 16, 14075),
(65589, 8, 18, 14075),
(65590, 8433, 13, 14076),
(65591, 1, 14, 14076),
(65592, 112345, 15, 14076),
(65593, 35, 16, 14076),
(65594, 6, 18, 14076),
(65595, 2795, 13, 14077),
(65596, 3, 14, 14077),
(65597, 132246, 15, 14077),
(65598, 150, 16, 14077),
(65599, 18, 18, 14077),
(65600, 1021, 13, 14078),
(65601, 2, 14, 14078),
(65602, 260325, 15, 14078),
(65603, 40, 16, 14078),
(65604, 18, 18, 14078),
(65605, 2855, 13, 14079),
(65606, 1, 14, 14079),
(65607, 65152, 15, 14079),
(65608, 169, 16, 14079),
(65609, 17, 18, 14079),
(65610, 4235, 13, 14080),
(65611, 5, 14, 14080),
(65612, 141415, 15, 14080),
(65613, 146, 16, 14080),
(65614, 20, 18, 14080),
(65615, 5173, 13, 14081),
(65616, 1, 14, 14081),
(65617, 385745, 15, 14081),
(65618, 51, 16, 14081),
(65619, 2, 18, 14081),
(65620, 6734, 13, 14082),
(65621, 3, 14, 14082),
(65622, 390381, 15, 14082),
(65623, 167, 16, 14082),
(65624, 10, 18, 14082),
(65625, 6387, 13, 14083),
(65626, 2, 14, 14083),
(65627, 496738, 15, 14083),
(65628, 28, 16, 14083),
(65629, 10, 18, 14083),
(65630, 2701, 13, 14084),
(65631, 3, 14, 14084),
(65632, 191753, 15, 14084),
(65633, 104, 16, 14084),
(65634, 23, 18, 14084),
(65635, 8564, 13, 14085),
(65636, 4, 14, 14085),
(65637, 40811, 15, 14085),
(65638, 75, 16, 14085),
(65639, 6, 18, 14085),
(65640, 5898, 13, 14086),
(65641, 1, 14, 14086),
(65642, 310012, 15, 14086),
(65643, 88, 16, 14086),
(65644, 7, 18, 14086),
(65645, 9212, 13, 14087),
(65646, 4, 14, 14087),
(65647, 301056, 15, 14087),
(65648, 45, 16, 14087),
(65649, 15, 18, 14087),
(65650, 1307, 13, 14088),
(65651, 3, 14, 14088),
(65652, 154247, 15, 14088),
(65653, 36, 16, 14088),
(65654, 7, 18, 14088),
(65655, 9480, 13, 14089),
(65656, 5, 14, 14089),
(65657, 94263, 15, 14089),
(65658, 154, 16, 14089),
(65659, 8, 18, 14089),
(65660, 3860, 13, 14090),
(65661, 2, 14, 14090),
(65662, 340181, 15, 14090),
(65663, 166, 16, 14090),
(65664, 2, 18, 14090),
(65665, 7031, 13, 14091),
(65666, 1, 14, 14091),
(65667, 441636, 15, 14091),
(65668, 165, 16, 14091),
(65669, 23, 18, 14091),
(65670, 2692, 13, 14092),
(65671, 3, 14, 14092),
(65672, 236318, 15, 14092),
(65673, 107, 16, 14092),
(65674, 20, 18, 14092),
(65675, 8356, 13, 14093),
(65676, 2, 14, 14093),
(65677, 440149, 15, 14093),
(65678, 23, 16, 14093),
(65679, 13, 18, 14093),
(65680, 3165, 13, 14094),
(65681, 1, 14, 14094),
(65682, 295150, 15, 14094),
(65683, 39, 16, 14094),
(65684, 9, 18, 14094),
(65685, 7058, 13, 14095),
(65686, 3, 14, 14095),
(65687, 213099, 15, 14095),
(65688, 127, 16, 14095),
(65689, 5, 18, 14095),
(65690, 7487, 13, 14096),
(65691, 5, 14, 14096),
(65692, 157071, 15, 14096),
(65693, 47, 16, 14096),
(65694, 9, 18, 14096),
(65695, 5689, 13, 14097),
(65696, 5, 14, 14097),
(65697, 332715, 15, 14097),
(65698, 59, 16, 14097),
(65699, 23, 18, 14097),
(65700, 2940, 13, 14098),
(65701, 1, 14, 14098),
(65702, 398942, 15, 14098),
(65703, 191, 16, 14098),
(65704, 2, 18, 14098),
(65705, 7909, 13, 14099),
(65706, 3, 14, 14099),
(65707, 485561, 15, 14099),
(65708, 44, 16, 14099),
(65709, 15, 18, 14099),
(65710, 9120, 13, 14100),
(65711, 2, 14, 14100),
(65712, 248971, 15, 14100),
(65713, 160, 16, 14100),
(65714, 18, 18, 14100),
(65715, 3936, 13, 14101),
(65716, 2, 14, 14101),
(65717, 121008, 15, 14101),
(65718, 146, 16, 14101),
(65719, 1, 18, 14101),
(65720, 2935, 13, 14102),
(65721, 1, 14, 14102),
(65722, 126779, 15, 14102),
(65723, 184, 16, 14102),
(65724, 1, 18, 14102),
(65725, 2211, 13, 14103),
(65726, 5, 14, 14103),
(65727, 343951, 15, 14103),
(65728, 30, 16, 14103),
(65729, 17, 18, 14103),
(65730, 7211, 13, 14104),
(65731, 2, 14, 14104),
(65732, 398895, 15, 14104),
(65733, 81, 16, 14104),
(65734, 2, 18, 14104),
(65735, 9305, 13, 14105),
(65736, 3, 14, 14105),
(65737, 206251, 15, 14105),
(65738, 114, 16, 14105),
(65739, 10, 18, 14105),
(65740, 4754, 13, 14106),
(65741, 1, 14, 14106),
(65742, 303997, 15, 14106),
(65743, 108, 16, 14106),
(65744, 6, 18, 14106),
(65745, 8431, 13, 14107),
(65746, 5, 14, 14107),
(65747, 132646, 15, 14107),
(65748, 196, 16, 14107),
(65749, 12, 18, 14107),
(65750, 2162, 13, 14108),
(65751, 4, 14, 14108),
(65752, 409864, 15, 14108),
(65753, 163, 16, 14108),
(65754, 15, 18, 14108),
(65755, 7873, 13, 14109),
(65756, 1, 14, 14109),
(65757, 203395, 15, 14109),
(65758, 72, 16, 14109),
(65759, 17, 18, 14109),
(65760, 8958, 13, 14110),
(65761, 5, 14, 14110),
(65762, 174679, 15, 14110),
(65763, 16, 16, 14110),
(65764, 8, 18, 14110),
(65765, 9336, 13, 14111),
(65766, 5, 14, 14111),
(65767, 272204, 15, 14111),
(65768, 71, 16, 14111),
(65769, 17, 18, 14111),
(65770, 6239, 13, 14112),
(65771, 5, 14, 14112),
(65772, 32295, 15, 14112),
(65773, 130, 16, 14112),
(65774, 14, 18, 14112),
(65775, 5321, 13, 14113),
(65776, 3, 14, 14113),
(65777, 158041, 15, 14113),
(65778, 187, 16, 14113),
(65779, 11, 18, 14113),
(65780, 2976, 13, 14114),
(65781, 3, 14, 14114),
(65782, 217933, 15, 14114),
(65783, 133, 16, 14114),
(65784, 18, 18, 14114),
(65785, 6172, 13, 14115),
(65786, 2, 14, 14115),
(65787, 369034, 15, 14115),
(65788, 111, 16, 14115),
(65789, 11, 18, 14115),
(65790, 6859, 13, 14116),
(65791, 5, 14, 14116),
(65792, 479810, 15, 14116),
(65793, 58, 16, 14116),
(65794, 6, 18, 14116),
(65795, 9623, 13, 14117),
(65796, 3, 14, 14117),
(65797, 34024, 15, 14117),
(65798, 56, 16, 14117),
(65799, 3, 18, 14117),
(65800, 5608, 13, 14118),
(65801, 4, 14, 14118),
(65802, 77335, 15, 14118),
(65803, 60, 16, 14118),
(65804, 2, 18, 14118),
(65805, 9336, 13, 14119),
(65806, 5, 14, 14119),
(65807, 272204, 15, 14119),
(65808, 71, 16, 14119),
(65809, 17, 18, 14119),
(65810, 6239, 13, 14120),
(65811, 5, 14, 14120),
(65812, 32295, 15, 14120),
(65813, 130, 16, 14120),
(65814, 14, 18, 14120),
(65815, 5321, 13, 14121),
(65816, 3, 14, 14121),
(65817, 158041, 15, 14121),
(65818, 187, 16, 14121),
(65819, 11, 18, 14121),
(65820, 2976, 13, 14122),
(65821, 3, 14, 14122),
(65822, 217933, 15, 14122),
(65823, 133, 16, 14122),
(65824, 18, 18, 14122),
(65825, 2859, 13, 14123),
(65826, 5, 14, 14123),
(65827, 277282, 15, 14123),
(65828, 135, 16, 14123),
(65829, 5, 18, 14123),
(65830, 1217, 13, 14124),
(65831, 5, 14, 14124),
(65832, 329014, 15, 14124),
(65833, 183, 16, 14124),
(65834, 4, 18, 14124);

-- --------------------------------------------------------

--
-- Table structure for table `spk_userprofile`
--

CREATE TABLE `spk_userprofile` (
  `id` bigint(20) NOT NULL,
  `preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`preferences`)),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spk_userprofile`
--

INSERT INTO `spk_userprofile` (`id`, `preferences`, `user_id`) VALUES
(5, '{}', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

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
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `rangking`
--
ALTER TABLE `rangking`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `spk_criteria`
--
ALTER TABLE `spk_criteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spk_criteria_name_d1e20778_uniq` (`name`);

--
-- Indexes for table `spk_framework`
--
ALTER TABLE `spk_framework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spk_frameworkscore`
--
ALTER TABLE `spk_frameworkscore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spk_frameworkscore_framework_id_criteria_id_ec53383f_uniq` (`framework_id`,`criteria_id`),
  ADD KEY `spk_frameworkscore_criteria_id_685a6575_fk_spk_criteria_id` (`criteria_id`);

--
-- Indexes for table `spk_userprofile`
--
ALTER TABLE `spk_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spk_criteria`
--
ALTER TABLE `spk_criteria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `spk_framework`
--
ALTER TABLE `spk_framework`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14125;

--
-- AUTO_INCREMENT for table `spk_frameworkscore`
--
ALTER TABLE `spk_frameworkscore`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65835;

--
-- AUTO_INCREMENT for table `spk_userprofile`
--
ALTER TABLE `spk_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `rangking`
--
ALTER TABLE `rangking`
  ADD CONSTRAINT `rangking_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`),
  ADD CONSTRAINT `rangking_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);

--
-- Constraints for table `spk_frameworkscore`
--
ALTER TABLE `spk_frameworkscore`
  ADD CONSTRAINT `spk_frameworkscore_criteria_id_685a6575_fk_spk_criteria_id` FOREIGN KEY (`criteria_id`) REFERENCES `spk_criteria` (`id`),
  ADD CONSTRAINT `spk_frameworkscore_framework_id_590d248e_fk_spk_framework_id` FOREIGN KEY (`framework_id`) REFERENCES `spk_framework` (`id`);

--
-- Constraints for table `spk_userprofile`
--
ALTER TABLE `spk_userprofile`
  ADD CONSTRAINT `spk_userprofile_user_id_0a673bca_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 07:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ragheb', 'ragheb@gmail.com', '$2y$10$r153ykHxyqe4C8aBzikC9OZjoM2qKeTaYdBINcdU5SNL/VgJhBjzO', '2020-04-13 00:58:58', '2020-04-13 00:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'programming', '2020-04-10 18:59:40', '2020-04-10 18:59:40'),
(2, 'marketing', '2020-04-10 18:59:40', '2020-04-10 18:59:40'),
(3, 'language', '2020-04-10 18:59:40', '2020-04-10 18:59:40'),
(4, 'business', '2020-04-13 17:12:33', '2020-04-13 17:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `trainer_id`, `name`, `desc`, `content`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'course num 1 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1685, '11.png', '2020-04-11 17:10:16', '2020-04-11 17:10:16'),
(2, 1, 5, 'course num 2 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2840, '12.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(3, 1, 2, 'course num 3 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3117, '13.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(4, 1, 5, 'course num 4 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1400, '14.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(5, 1, 5, 'course num 5 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3567, '15.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(6, 1, 5, 'course num 6 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1706, '16.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(7, 1, 5, 'course num 7 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4779, '17.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(8, 1, 2, 'course num 8 cat num 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1740, '18.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(9, 2, 2, 'course num 1 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4604, '21.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(10, 2, 2, 'course num 2 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1734, '22.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(11, 2, 3, 'course num 3 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3418, '23.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(12, 2, 4, 'course num 4 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2288, '24.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(13, 2, 1, 'course num 5 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5664, '25.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(14, 2, 2, 'course num 6 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4358, '26.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(15, 2, 4, 'course num 7 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1707, '27.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(16, 2, 5, 'course num 8 cat num 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5095, '28.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(17, 3, 1, 'course num 1 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4089, '31.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(18, 3, 3, 'course num 2 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4623, '32.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(19, 3, 5, 'course num 3 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1389, '33.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(20, 3, 1, 'course num 4 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5388, '34.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(21, 3, 3, 'course num 5 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4916, '35.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(22, 3, 4, 'course num 6 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1207, '36.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(23, 3, 3, 'course num 7 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2002, '37.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17'),
(24, 3, 2, 'course num 8 cat num 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1431, '38.png', '2020-04-11 17:10:17', '2020-04-11 17:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `stats` enum('pending','approve','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `stats`, `created_at`, `updated_at`) VALUES
(1, 10, 23, 'pending', '2020-04-10 19:57:22', '2020-04-10 19:57:22'),
(2, 20, 9, 'pending', '2020-04-10 19:57:22', '2020-04-10 19:57:22'),
(3, 9, 2, 'pending', '2020-04-10 19:57:22', '2020-04-10 19:57:22'),
(4, 12, 5, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(5, 3, 39, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(6, 24, 60, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(7, 7, 38, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(8, 10, 51, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(9, 9, 40, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(10, 16, 35, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(11, 16, 17, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(12, 10, 22, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(13, 13, 34, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(14, 15, 56, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(15, 13, 20, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(16, 22, 7, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(17, 15, 12, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(18, 3, 39, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(19, 7, 53, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(20, 7, 6, 'pending', '2020-04-10 19:57:23', '2020-04-10 19:57:23'),
(21, 8, 61, 'reject', '2020-04-12 18:53:25', '2020-04-12 18:53:25'),
(22, 22, 63, 'reject', '2020-04-13 23:46:03', '2020-04-13 23:46:03'),
(23, 22, 61, 'approve', '2020-04-13 23:55:31', '2020-04-13 23:55:31'),
(24, 24, 61, 'pending', '2020-04-16 02:14:15', '2020-04-16 02:14:15'),
(25, 24, 61, 'pending', '2020-04-16 02:14:48', '2020-04-16 02:14:48'),
(26, 8, 61, 'pending', NULL, NULL),
(27, 12, 61, 'reject', NULL, NULL),
(28, 16, 63, 'pending', NULL, NULL),
(29, 15, 63, 'approve', NULL, NULL),
(30, 8, 59, 'pending', NULL, NULL),
(31, 1, 59, 'reject', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Ragheb', 'eng.mohamedragheb142@gmail.com', NULL, 'requestrequestrequestrequestrequestrequestrequestrequestrequestrequestrequestrequestrequestrequest', '2020-04-12 17:46:54', '2020-04-12 17:46:54'),
(2, 'requestrequest', 'requestrequest', NULL, 'requestrequestrequestrequestrequest', '2020-04-12 17:48:06', '2020-04-12 17:48:06'),
(3, 'mmmmmmmmmmmmmm', 'mmmmmmmmm@gmail.com', NULL, 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', '2020-04-12 17:55:43', '2020-04-12 17:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2020_04_10_193022_create_categories_table', 1),
(3, '2020_04_10_193154_create_trainers_table', 1),
(4, '2020_04_10_193217_create_courses_table', 1),
(5, '2020_04_10_193254_create_students_table', 1),
(6, '2020_04_10_193326_create_admins_table', 1),
(7, '2020_04_10_201532_create_course_student_table', 1),
(8, '2020_04_11_194611_create_testmonials_table', 2),
(10, '2020_04_12_004039_create_settings_table', 3),
(11, '2020_04_12_022833_create_sitecontents_table', 4),
(12, '2020_04_12_184138_create_newsletters_table', 5),
(13, '2020_04_12_184346_create_messages_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ragheb@gmail.com', '2020-04-12 17:11:54', '2020-04-12 17:11:54'),
(2, 'rfd@gmail.com', '2020-04-12 17:12:44', '2020-04-12 17:12:44'),
(3, 'mahmoud@gmail.com', '2020-04-12 17:15:59', '2020-04-12 17:15:59'),
(4, 'eng.muhamedragheb@gmail.com', '2020-04-12 17:23:34', '2020-04-12 17:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `titleicon`, `city`, `address`, `phone`, `work_hours`, `email`, `facebook`, `twitter`, `instagram`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Elearn', 'logo.png', 'favicon.png', 'Egypt', 'Nasr city, Cairo', '01016951995', 'sunday to Fri 8am to 4pm', 'ragheb@gmail.com', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d13800.71922003523!2d31.319848499999996!3d30.14627495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1586652843650!5m2!1sen!2seg\" width=\"1000\" height=\"400\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitecontents`
--

CREATE TABLE `sitecontents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitecontents`
--

INSERT INTO `sitecontents` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'banner', '{\"title\":\"EVERY STUDENT YEARNS TO LEARN\",\"subtitle\":\"Making Your Students World Better\",\"desc\":\"Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you\'ll male grass yielding yielding man\"}', '2020-04-12 01:01:30', '2020-04-12 01:01:30'),
(2, 'courses', '{\"title\":\"POPULAR COURSES\",\"subtitle\":\"Special Courses\"}', '2020-04-12 01:01:30', '2020-04-12 01:01:30'),
(3, 'testmonials', '{\"title\":\"TESIMONIALS\",\"subtitle\":\"Happy Students\"}', '2020-04-12 01:01:30', '2020-04-12 01:01:30'),
(4, 'footer', '{\"title\":\"Newsletter\",\"subtitle\":\"Stay updated with our latest trends Seed heaven so said place winged over given forth fruit.\",\"desc\":\"But when shot real her. Chamber her one visite removal six sending himself boys scot exquisite existend an But when shot real her hamber her\"}', '2020-04-12 01:01:30', '2020-04-12 01:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `spec`, `created_at`, `updated_at`) VALUES
(1, 'Bennett Mayer DDS', 'tyrese42@yahoo.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(2, 'Dr. Pete Wunsch', 'bernhard.dustin@muller.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(3, 'Aisha Cruickshank', 'turcotte.karelle@carroll.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(4, 'Mrs. Macie Jacobi', 'randal59@gmail.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(5, 'Dr. Mina Reilly', 'wiza.gideon@kirlin.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(6, 'Dr. Ola Vandervort', 'yoconnell@walsh.net', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(7, 'Dr. Elda Lind', 'wunsch.gloria@gmail.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(8, 'Rodolfo Hammes', 'gwen74@hotmail.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(9, 'Dr. Electa Hartmann MD', 'wunsch.flavie@okon.info', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(10, 'Jettie Mante', 'ocasper@botsford.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(11, 'Mrs. Jayne Schinner DVM', 'pollich.sonya@paucek.biz', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(12, 'Wilhelmine Botsford', 'kareem.kassulke@yahoo.com', NULL, '2020-04-10 19:44:11', '2020-04-10 19:44:11'),
(13, 'Ms. Christina Boyer Jr.', 'annamae96@gmail.com', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(14, 'Fae Witting', 'tmccullough@muller.com', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(15, 'Dr. Austin Hoppe I', 'rsipes@hotmail.com', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(16, 'Prof. Brady Daugherty', 'robin29@stamm.com', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(17, 'Kristofer Tromp', 'antonio.leffler@gmail.com', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(18, 'Miss Cynthia Glover', 'williamson.idell@yahoo.com', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(19, 'Johnathon Dickens', 'gage.vandervort@langosh.info', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(20, 'Andy Kris', 'dena24@bailey.biz', NULL, '2020-04-10 19:44:12', '2020-04-10 19:44:12'),
(21, 'Malcolm Romaguera', 'dhahn@hotmail.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(22, 'Malcolm Lemke', 'watsica.brad@borer.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(23, 'Ethan Collins', 'colin.cartwright@hotmail.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(24, 'Myrtice Marquardt', 'hubert23@hill.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(25, 'Prof. Ron Schoen', 'terry.oda@yahoo.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(26, 'Mona Skiles DVM', 'annabelle.leuschke@gmail.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(27, 'Bernadine Paucek', 'jmueller@wunsch.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(28, 'Ivy Wolff', 'august.boyer@lueilwitz.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(29, 'Sim Hintz', 'kunde.newell@keebler.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(30, 'Dr. Garth Pacocha', 'wuckert.bonnie@hyatt.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(31, 'Rebecca Borer', 'nora56@yahoo.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(32, 'Mr. Ferne Berge', 'kurt88@hotmail.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(33, 'Stanton Stoltenberg', 'bshields@wiegand.com', NULL, '2020-04-10 19:46:46', '2020-04-10 19:46:46'),
(34, 'Dr. Brenda Dickinson IV', 'jadon.luettgen@gmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(35, 'Kathlyn Kutch', 'qhaley@hotmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(36, 'Mr. Garnett Leffler', 'ffunk@hotmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(37, 'Kayley Murazik Jr.', 'kieran69@gmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(38, 'Jayne Davis', 'rkub@strosin.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(39, 'Shanelle Casper', 'towne.loma@hotmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(40, 'Rachael Lindgren', 'danny.breitenberg@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(41, 'Mrs. Valentina Bergnaum', 'chanel.pacocha@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(42, 'Maxie Crist Jr.', 'maxwell21@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(43, 'Keanu Turcotte', 'moore.vincenza@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(44, 'Kole Lueilwitz', 'jaleel85@mitchell.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(45, 'Magnolia Brown', 'elroy24@hotmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(46, 'Dr. Geovanny Rodriguez Sr.', 'julie.miller@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(47, 'Dr. Isabelle Schuster', 'qgoyette@pollich.org', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(48, 'Miss Krystina Streich', 'madison.schoen@mraz.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(49, 'Miguel Funk', 'ayana27@rosenbaum.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(50, 'Mr. Sigrid Dickinson', 'brakus.elsie@raynor.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(51, 'Domenica Hermann', 'abbey93@gmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(52, 'Immanuel Vandervort', 'ybeatty@schmidt.info', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(53, 'Percy Feeney', 'manuel41@hotmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(54, 'Nicole Kris', 'cgislason@hotmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(55, 'Jermaine Kassulke', 'littel.amaya@legros.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(56, 'Stephan Kuphal', 'brody.klein@langworth.info', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(57, 'Dr. Eduardo Haag DVM', 'akovacek@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(58, 'Dr. Isaias Flatley III', 'murray.dereck@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(59, 'Buster Kunze', 'cade43@yahoo.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(60, 'Ellis Pacocha', 'bauch.ayden@gmail.com', NULL, '2020-04-10 19:46:47', '2020-04-10 19:46:47'),
(61, 'mohamed', 'eng.mohamedragheb142@gmail.com', 'web development', '2020-04-12 18:53:25', '2020-04-16 02:14:48'),
(63, 'ahmed', 'eng.mohamedragheb142@gmail.com', NULL, '2020-04-13 23:46:03', '2020-04-13 23:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `testmonials`
--

CREATE TABLE `testmonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testmonials`
--

INSERT INTO `testmonials` (`id`, `name`, `spec`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '1.png', '2020-04-11 17:54:10', '2020-04-11 17:54:10'),
(2, 'ahmed', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2.png', '2020-04-11 17:54:10', '2020-04-11 17:54:10'),
(3, 'hema', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '3.png', '2020-04-11 17:54:10', '2020-04-11 17:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `spec`, `img`, `created_at`, `updated_at`) VALUES
(1, 'tariq', NULL, 'backend development', '1.png', '2020-04-10 19:08:55', '2020-04-10 19:08:55'),
(2, 'bahnsy', NULL, 'frontend development', '2.png', '2020-04-10 19:08:55', '2020-04-10 19:08:55'),
(3, 'karim', NULL, 'fullstack web development', '3.png', '2020-04-10 19:08:55', '2020-04-10 19:08:55'),
(4, 'ragheb', NULL, 'marketer', '4.png', '2020-04-10 19:08:55', '2020-04-10 19:08:55'),
(5, 'mahmoud', 'mahmoud', 'mahmoud', 'trainer_1586826001.png', '2020-04-10 19:08:55', '2020-04-13 23:00:01'),
(19, 'ahmed', '01016951995', 'android', 'trainer_1586826020.jpg', '2020-04-13 23:00:20', '2020-04-13 23:00:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitecontents`
--
ALTER TABLE `sitecontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmonials`
--
ALTER TABLE `testmonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitecontents`
--
ALTER TABLE `sitecontents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `testmonials`
--
ALTER TABLE `testmonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

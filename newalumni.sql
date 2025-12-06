-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2025 at 10:44 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newalumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus`
--

CREATE TABLE `alumnus` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `batch_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `passing_year_id` bigint UNSIGNED DEFAULT NULL,
  `id_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` text COLLATE utf8mb4_unicode_ci,
  `linkedin_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alumnus`
--

INSERT INTO `alumnus` (`id`, `tenant_id`, `user_id`, `batch_id`, `department_id`, `passing_year_id`, `id_number`, `company`, `company_designation`, `company_address`, `file`, `blood_group`, `date_of_birth`, `gender`, `about_me`, `linkedin_url`, `facebook_url`, `twitter_url`, `instagram_url`, `city`, `state`, `zip`, `country`, `address`, `custom_fields`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 1, 1, NULL, '', '', '', '10', NULL, '1992-11-21', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2025-12-04 05:34:19', '2025-12-04 05:34:19'),
(2, 1, 5, 1, 1, 1, NULL, '', '', '', '11', NULL, '1995-06-04', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2025-12-04 05:46:58', '2025-12-04 05:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `gateway_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `tenant_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ganesha XIX', '2025-12-04 05:25:47', '2025-12-04 05:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` bigint UNSIGNED DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_category_id` bigint UNSIGNED NOT NULL,
  `goal` bigint UNSIGNED DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_amount` decimal(12,2) DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `tenant_id`, `title`, `slug`, `image`, `video_url`, `campaign_category_id`, `goal`, `location`, `start_date`, `deadline`, `details`, `minimum_amount`, `created_by`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'dukungan tugas akhir d3 angkatan XIX', 'dukungan-tugas-akhir-d3-angkatan-XIX', 5, NULL, 1, 20000000, 'STTAL', '0000-00-00 00:00:00', '2025-12-31 00:00:00', 'mohon bantuan untuk para alumni sttal', '50000.00', 1, 1, NULL, '2025-12-04 04:05:19', '2025-12-04 04:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_categories`
--

CREATE TABLE `campaign_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_categories`
--

INSERT INTO `campaign_categories` (`id`, `tenant_id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bantuan Tugas Akhir', 'Bantuan-Tugas-Akhir', 1, NULL, '2025-12-04 04:00:55', '2025-12-04 04:00:55'),
(2, 1, 'Bantuan Kemanusiaan', 'Bantuan-Kemanusiaan', 1, NULL, '2025-12-04 04:02:46', '2025-12-04 04:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_comments`
--

CREATE TABLE `campaign_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `campaign_id` bigint UNSIGNED NOT NULL,
  `campaign_comment_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_donations`
--

CREATE TABLE `campaign_donations` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `campaign_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `donation_type_anonymous` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_donations`
--

INSERT INTO `campaign_donations` (`id`, `tenant_id`, `user_id`, `campaign_id`, `name`, `email`, `phone`, `country`, `postal_code`, `comment`, `payment_id`, `amount`, `donation_type_anonymous`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'indra wiryanto', 'popy@gmail.com', '081332466770', NULL, NULL, 'ok', 1, '100000.00', 1, 0, NULL, '2025-12-04 05:51:33', '2025-12-04 05:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `sender_id` int NOT NULL DEFAULT '0',
  `receiver_id` int NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `is_seen` int NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `tenant_id`, `sender_id`, `receiver_id`, `message`, `is_seen`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 'assalamualaikum mas', 1, NULL, '2025-12-04 05:54:07', '2025-12-04 06:11:35'),
(2, 1, 1, 5, 'waalaiakum salam', 1, NULL, '2025-12-04 05:55:23', '2025-12-04 05:57:35'),
(3, 1, 1, 5, '', 1, NULL, '2025-12-04 05:55:42', '2025-12-04 05:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `chat_media`
--

CREATE TABLE `chat_media` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_id` bigint UNSIGNED NOT NULL,
  `file` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_media`
--

INSERT INTO `chat_media` (`id`, `chat_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 3, 12, '2025-12-04 05:55:42', '2025-12-04 05:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` bigint UNSIGNED NOT NULL,
  `committee_election_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `committee_designation_id` bigint UNSIGNED NOT NULL,
  `committee_category_id` bigint UNSIGNED NOT NULL,
  `photo` bigint UNSIGNED DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_board_members`
--

CREATE TABLE `committee_board_members` (
  `id` bigint UNSIGNED NOT NULL,
  `committee_election_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `committee_designation_id` bigint UNSIGNED NOT NULL,
  `photo` bigint UNSIGNED DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_candidates`
--

CREATE TABLE `committee_candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `committee_election_id` bigint UNSIGNED NOT NULL,
  `committee_designation_id` bigint UNSIGNED NOT NULL,
  `committee_category_id` bigint UNSIGNED NOT NULL,
  `committee_nomination_form_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `photo` bigint UNSIGNED DEFAULT NULL,
  `election_manifesto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_id` bigint UNSIGNED NOT NULL,
  `form_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reject_reason` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `is_win` tinyint NOT NULL DEFAULT '0',
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `rejected_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_candidate_comments`
--

CREATE TABLE `committee_candidate_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `committee_candidate_id` bigint UNSIGNED NOT NULL,
  `committee_candidate_comment_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_candidate_flags`
--

CREATE TABLE `committee_candidate_flags` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `committee_category_id` bigint UNSIGNED DEFAULT NULL,
  `committee_election_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_categories`
--

CREATE TABLE `committee_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `showing_home_page` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_designations`
--

CREATE TABLE `committee_designations` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_elections`
--

CREATE TABLE `committee_elections` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `vote_start_date` datetime NOT NULL,
  `vote_end_date` datetime NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `is_result_done` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_nomination_forms`
--

CREATE TABLE `committee_nomination_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `committee_election_id` bigint UNSIGNED NOT NULL,
  `committee_category_id` bigint UNSIGNED NOT NULL,
  `committee_designation_id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `form` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_votes`
--

CREATE TABLE `committee_votes` (
  `id` bigint UNSIGNED NOT NULL,
  `committee_election_id` bigint UNSIGNED NOT NULL,
  `committee_designation_id` bigint UNSIGNED NOT NULL,
  `committee_category_id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `committee_candidate_id` bigint UNSIGNED DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages_settings`
--

CREATE TABLE `core_pages_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_placement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `current_currency` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `tenant_id`, `currency_code`, `symbol`, `currency_placement`, `current_currency`, `created_at`, `updated_at`) VALUES
(1, 1, 'USD', '$', 'before', 1, '2023-09-23 19:01:03', '2023-11-16 00:37:54'),
(2, 1, 'BDT', '৳', 'before', 0, '2023-09-23 19:01:03', '2023-11-16 00:37:54'),
(3, 1, 'INR', '₹', 'before', 0, '2023-09-23 19:01:03', '2023-11-16 00:37:54'),
(4, 1, 'GBP', '£', 'after', 0, '2023-09-23 19:01:03', '2023-11-16 00:37:54'),
(5, 1, 'MXN', '$', 'before', 0, '2023-09-23 19:01:03', '2023-11-16 00:37:54'),
(6, 1, 'SAR', 'SR', 'before', 0, '2023-09-23 19:01:03', '2023-11-16 00:37:54'),
(7, 0, 'USD', '$', 'before', 1, '2023-11-16 00:37:56', '2023-11-16 00:37:56'),
(8, 0, 'BDT', '৳', 'before', 0, '2023-11-16 00:37:56', '2023-11-16 00:37:56'),
(9, 0, 'INR', '₹', 'before', 0, '2023-11-16 00:37:56', '2023-11-16 00:37:56'),
(10, 0, 'GBP', '£', 'after', 0, '2023-11-16 00:37:56', '2023-11-16 00:37:56'),
(11, 0, 'MXN', '$', 'before', 0, '2023-11-16 00:37:56', '2023-11-16 00:37:56'),
(12, 0, 'SAR', 'SR', 'before', 0, '2023-11-16 00:37:56', '2023-11-16 00:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `custom_domain_requests`
--

CREATE TABLE `custom_domain_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `old_domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backup_cron_settings`
--

CREATE TABLE `database_backup_cron_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_of_day` time NOT NULL DEFAULT '00:00:00',
  `backup_after_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_backup_after_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `tenant_id`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'D3 TEKNIK INFORMATIKA', 'D3-TI', '2025-12-04 05:26:48', '2025-12-04 05:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int UNSIGNED NOT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `domain`, `tenant_id`, `created_at`, `updated_at`) VALUES
(1, 'default', '1', '2023-11-16 00:37:54', '2023-11-16 00:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `method` enum('bank_transfer','midtrans') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','paid','failed','expired','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `bank_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `midtrans_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `midtrans_redirect_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `default` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `tenant_id`, `category`, `slug`, `subject`, `body`, `default`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Email Verification', 'email-verification', 'Verify Your Account', '\n                    Hello, {{username}}\n                    Thank you for creating an account with us. We\'re excited to have you as a part of our community! Before you can start using your account, we need to verify your email address. Please click on the link below to complete the verification process:\n                    Your Otp is: {{otp}}\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(2, 1, 'Password Reset', 'password-reset', 'Reset your password', '\n                        We\'re sending you this email because you requested a password reset. Please use the OTP code below to create a new password:\n                    OTP Code: {{otp}}\n                    If you didn\'t request a password reset, you can safely ignore this email. Your password will not be changed.\n                    Thank you!\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(3, 1, 'Account Approval', 'account-approval', 'Your Account Approved', 'We are pleased to inform you that your account application has been approved and your account is now active.\n                    Thank you!\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(4, 1, 'Account Reject', 'account-rejection', 'Your Account Rejected', '\n                    We are pleased to inform you that your account application has been rejected and your account is now inactive. Please contact with admin\n                    Thank you!\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(5, 1, 'Ticket Reservation', 'ticket-confirmation', 'Ticket Reservation', '\n                        Hi {{username}},\n                        Thank you for reserving your tickets with us. Your booking has been confirmed with the following details:\n                        Ticket No: {{ticket_number}}\n                        Please keep this confirmation email for your records.\n                        If you have any questions or need assistance, please feel free to contact us at:\n                        Phone: {{app_contact_number}}\n                        Email: {{app_email}}\n                        We look forward to welcoming you to the event!\n                        Regards,\n                        {{app_name}}\n                        Click here to more view your Ticket Reservation details.\n                        {{link}}\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(6, 1, 'Membership Apply Application', 'membership-apply-application', 'Membership Apply Application', '\n                    Hi {{username}},\n                    Thank you for applying for membership with us.\n                    We have received your membership application and will review it shortly. We will notify you once your application has been processed.\n                    If you have any questions or need further assistance, please feel free to contact us at:\n                    Phone: {{app_contact_number}}\n                    Email: {{app_email}}\n                    Regards,\n                    {{app_name}}\n                    Click here to more view your Membership Apply Application details.\n                        {{link}}\n                        ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(7, 1, 'Event Purchase', 'event-purchase', 'Event Purchase', '\n                    Hi {{username}},\n                    Thank you for your purchase. Your order with the following details has been confirmed:\n                    Order No: {{transaction_no}}\n                    If you have any questions or need assistance, please feel free to contact us at:\n                    Phone: {{app_contact_number}}\n                    Email: {{app_email}}\n                    We look forward to seeing you at the event!\n                    Regards,\n                    {{app_name}}\n                        Click here to more view your Event Purchase details.\n                        {{link}}\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(8, 1, 'Payment Success', 'payment-success', 'Payment Successful', '\n                        Hi {{username}},\n                        We are writing to inform you that your payment has been successfully processed for the following order:\n                        Order No: {{transaction_no}}\n                        If you have any questions or need assistance, please feel free to contact us at:\n                        Phone: {{app_contact_number}}\n                        Email: {{app_email}}\n                        Thank you for your payment. We appreciate your business and look forward to serving you again in the future.\n                        Regards,\n                        {{app_name}}\n                        ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(9, 1, 'Payment Cancel', 'payment-cancel', 'Payment Cancel', '\n                        Hi {{username}},\n                        We are writing to inform you that your payment has been canceled for the following order:\n                        Order No: {{transaction_no}}\n                        If you have any questions or need assistance, please feel free to contact us at:\n                        Phone: {{app_contact_number}}\n                        Email: {{app_email}}\n                        Thank you for your payment. We appreciate your business and look forward to serving you again in the future.\n                        Regards,\n                        {{app_name}}\n                        ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(10, 1, 'Membership Approval', 'membership-approval', 'Membership Application Approved', '\n                        Hi {{username}},\n                        We are pleased to inform you that your membership application with us has been approved!\n                        You are now an official member of our community. We look forward to your active participation.\n                        If you have any questions or need assistance, please feel free to contact us at:\n                        Phone: {{app_contact_number}}\n                        Email: {{app_email}}\n                        Welcome aboard!\n                        Regards,\n                        {{app_name}}\n                        Click here to more view your Membership Approval details.\n                        {{link}}\n\n                    ', 1, 1, NULL, '2023-09-23 19:01:03', '2023-11-16 00:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `event_category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` int NOT NULL,
  `ticket_image` int DEFAULT NULL,
  `date` datetime NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `number_of_ticket` int NOT NULL DEFAULT '0',
  `number_of_ticket_left` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_tickets`
--

CREATE TABLE `event_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ticket_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features_settings`
--

CREATE TABLE `features_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `icon` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_managers`
--

CREATE TABLE `file_managers` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_managers`
--

INSERT INTO `file_managers` (`id`, `tenant_id`, `file_type`, `storage_type`, `original_name`, `file_name`, `user_id`, `path`, `extension`, `size`, `external_link`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'image/png', 'public', 'logo-black.png', '6751695564188.png', 1, 'uploads/Setting/6751695564188.png', 'png', '1422', NULL, NULL, '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(2, 1, 'image/png', 'public', 'logo.png', '3371695564188.png', 1, 'uploads/Setting/3371695564188.png', 'png', '3895', NULL, NULL, '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(3, 1, 'image/png', 'public', 'favicon.png', '5561695564188.png', 1, 'uploads/Setting/5561695564188.png', 'png', '924', NULL, NULL, '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(4, 1, 'image/jpeg', 'public', 'regiser-left-image.jpg', '6251695564188.jpg', 1, 'uploads/Setting/6251695564188.jpg', 'jpg', '86463', NULL, NULL, '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(5, 1, 'image/jpeg', 'public', 'sttal.jpeg', '241764824719.jpeg', 1, 'uploads/campaign/241764824719.jpeg', 'jpeg', '626239', NULL, NULL, '2025-12-04 04:05:19', '2025-12-04 04:05:19'),
(6, 1, 'image/png', 'public', 'logo-sttal-kecil.png', '6211764825050.png', 1, 'uploads/Setting/6211764825050.png', 'png', '49975', NULL, NULL, '2025-12-04 05:10:50', '2025-12-04 05:10:50'),
(7, 1, 'image/png', 'public', 'logo-sttal-kecil.png', '1191764825050.png', 1, 'uploads/Setting/1191764825050.png', 'png', '49975', NULL, NULL, '2025-12-04 05:10:50', '2025-12-04 05:10:50'),
(8, 1, 'image/jpeg', 'public', 'sttal.jpeg', '4051764825050.jpeg', 1, 'uploads/Setting/4051764825050.jpeg', 'jpeg', '626239', NULL, NULL, '2025-12-04 05:10:50', '2025-12-04 05:10:50'),
(9, 1, 'image/png', 'public', 'Merah Putih Modern Dirgahayu Indonesia Banner .png', '9841764825215.png', 1, 'uploads/language/9841764825215.png', 'png', '358239', NULL, NULL, '2025-12-04 05:13:35', '2025-12-04 05:13:35'),
(10, 1, 'application/pdf', 'public', 'KEPDAN JUKLAK EHB 2020.pdf', '7361764826458.pdf', NULL, 'uploads/users/7361764826458.pdf', 'pdf', '1231994', NULL, NULL, '2025-12-04 05:34:18', '2025-12-04 05:34:18'),
(11, 1, 'application/pdf', 'public', 'ar its.pdf', '3541764827218.pdf', NULL, 'uploads/users/3541764827218.pdf', 'pdf', '3188560', NULL, NULL, '2025-12-04 05:46:58', '2025-12-04 05:46:58'),
(12, 1, 'image/jpeg', 'public', 'img2.jpeg', '4261764827742.jpeg', 1, 'uploads/chat/4261764827742.jpeg', 'jpeg', '42956', NULL, NULL, '2025-12-04 05:55:42', '2025-12-04 05:55:42'),
(13, 1, 'image/png', 'public', 'logo-sttal-kecil.png', '1961764828794.png', 1, 'uploads/Setting/1961764828794.png', 'png', '49975', NULL, NULL, '2025-12-04 06:13:14', '2025-12-04 06:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_sections`
--

CREATE TABLE `frontend_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci,
  `title` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_page_title` tinyint DEFAULT NULL,
  `has_banner_image` tinyint NOT NULL DEFAULT '0',
  `has_image` tinyint NOT NULL DEFAULT '0',
  `has_description` tinyint NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `banner_image` int DEFAULT NULL,
  `image` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_sections`
--

INSERT INTO `frontend_sections` (`id`, `name`, `page_title`, `title`, `slug`, `has_page_title`, `has_banner_image`, `has_image`, `has_description`, `description`, `banner_image`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hero Banner', 'Banner page title', 'Manage Alumni Related Tasks In One Place.', 'hero_banner', 3, 1, 1, 1, 'Create and see all your free and paid events, job post, news, notification, buy ticket with bunch of payment gateway system, find an alumni & chat with them, get membership more & more through zaialumni.', NULL, NULL, 1, '2023-11-16 00:39:04', '2023-11-16 00:39:04', NULL),
(2, 'Core Features', 'Core Features', 'Bunch Of Features', 'core_features', 3, 0, 3, 3, '2023-11-16 13:39:04', 1, NULL, 1, NULL, '2023-11-16 00:39:04', NULL),
(3, 'Explore Core Pages', 'Explore Core Pages', 'Zaialumni Made The App Effortless With Some Core Pages', 'core_pages', 1, 3, 3, 1, 'Explore some of our core pages that made the app effortless by itself.', NULL, NULL, 1, '2023-11-16 00:39:04', '2023-11-16 00:39:04', NULL),
(4, 'Pricing Plan', 'Pricing Plan', 'Pick the plan that\'s right for your business.', 'pricing_plan', 1, 3, 3, 3, 'Connect alumni with mentors or coaches who can offer them guidance, advice, or feedback on their personal or professional goals, They can also help them', NULL, NULL, 1, '2023-11-16 00:39:04', '2023-11-16 00:39:04', NULL),
(5, 'Testimonials', 'Testimonials', 'What Our Student Have to Say About Zaialumni.', 'testimonials_area', 1, 3, 3, 1, 'Connect alumni with mentors or coaches who can offer them guidance, advice, or feedback on their personal or professional goals, They can also help them', NULL, NULL, 1, '2023-11-16 00:39:04', '2023-11-16 00:39:04', NULL),
(6, 'Faq\'s Area', 'FAQ\'S', 'Most Common Question About Saas Services.', 'faqs_area', 1, 3, 3, 1, 'Connect alumni with mentors or coaches who can offer them guidance, advice, or feedback on their personal or professional goals, They can also help them', NULL, NULL, 1, '2023-11-16 00:39:04', '2023-11-16 00:39:04', NULL),
(7, 'How Its Work', 'How Its Work', 'Nothing less than excellent', 'how_its_work_area', 1, 3, 3, 1, 'Connect alumni with mentors or coaches who can offer them guidance, advice, or feedback on their personal or professional goals, They can also help them', NULL, NULL, 1, '2023-11-16 00:39:04', '2023-11-16 00:39:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1=Active,0=Disable',
  `mode` tinyint NOT NULL DEFAULT '2' COMMENT '1=live,2=sandbox',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'client id, public key, key, store id, api key',
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'client secret, secret, store password, auth token',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `tenant_id`, `title`, `slug`, `image`, `status`, `mode`, `url`, `key`, `secret`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Paypal', 'paypal', 'assets/images/gateway-icon/paypal.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(2, 1, 'Stripe', 'stripe', 'assets/images/gateway-icon/stripe.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(3, 1, 'Razorpay', 'razorpay', 'assets/images/gateway-icon/razorpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(4, 1, 'Instamojo', 'instamojo', 'assets/images/gateway-icon/instamojo.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(5, 1, 'Mollie', 'mollie', 'assets/images/gateway-icon/mollie.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(6, 1, 'Paystack', 'paystack', 'assets/images/gateway-icon/paystack.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(7, 1, 'Sslcommerz', 'sslcommerz', 'assets/images/gateway-icon/sslcommerz.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(8, 1, 'Flutterwave', 'flutterwave', 'assets/images/gateway-icon/flutterwave.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(9, 1, 'Mercadopago', 'mercadopago', 'assets/images/gateway-icon/mercadopago.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(10, 1, 'Binance', 'binance', 'assets/images/gateway-icon/binance.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(11, 1, 'Coinbase', 'coinbase', 'assets/images/gateway-icon/coinbase.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(12, 1, 'Paytm', 'paytm', 'assets/images/gateway-icon/paytm.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(13, 1, 'Maxicash', 'maxicash', 'assets/images/gateway-icon/maxicash.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(14, 1, 'Iyzico', 'iyzico', 'assets/images/gateway-icon/iyzico.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(15, 1, 'Bitpay', 'bitpay', 'assets/images/gateway-icon/bitpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(16, 1, 'Zitopay', 'zitopay', 'assets/images/gateway-icon/zitopay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(17, 1, 'Payhere', 'payhere', 'assets/images/gateway-icon/payhere.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(18, 1, 'Cinetpay', 'cinetpay', 'assets/images/gateway-icon/cinetpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(19, 1, 'Voguepay', 'voguepay', 'assets/images/gateway-icon/voguepay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(20, 1, 'Toyyibpay', 'toyyibpay', 'assets/images/gateway-icon/toyyibpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(21, 1, 'Paymob', 'paymob', 'assets/images/gateway-icon/paymob.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(22, 1, 'Authorize', 'authorize', 'assets/images/gateway-icon/authorize.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(23, 1, 'Alipay', 'alipay', 'assets/images/gateway-icon/alipay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(24, 1, 'Bank', 'bank', 'assets/images/gateway-icon/bank.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(25, NULL, 'Paypal', 'paypal', 'assets/images/gateway-icon/paypal.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(26, NULL, 'Stripe', 'stripe', 'assets/images/gateway-icon/stripe.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(27, NULL, 'Razorpay', 'razorpay', 'assets/images/gateway-icon/razorpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(28, NULL, 'Instamojo', 'instamojo', 'assets/images/gateway-icon/instamojo.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(29, NULL, 'Mollie', 'mollie', 'assets/images/gateway-icon/mollie.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(30, NULL, 'Paystack', 'paystack', 'assets/images/gateway-icon/paystack.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(31, NULL, 'Sslcommerz', 'sslcommerz', 'assets/images/gateway-icon/sslcommerz.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(32, NULL, 'Flutterwave', 'flutterwave', 'assets/images/gateway-icon/flutterwave.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(33, NULL, 'Mercadopago', 'mercadopago', 'assets/images/gateway-icon/mercadopago.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(34, NULL, 'Binance', 'binance', 'assets/images/gateway-icon/binance.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(35, NULL, 'Coinbase', 'coinbase', 'assets/images/gateway-icon/coinbase.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(36, NULL, 'Paytm', 'paytm', 'assets/images/gateway-icon/paytm.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(37, NULL, 'Maxicash', 'maxicash', 'assets/images/gateway-icon/maxicash.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(38, NULL, 'Iyzico', 'iyzico', 'assets/images/gateway-icon/iyzico.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(39, NULL, 'Bitpay', 'bitpay', 'assets/images/gateway-icon/bitpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(40, NULL, 'Zitopay', 'zitopay', 'assets/images/gateway-icon/zitopay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(41, NULL, 'Payhere', 'payhere', 'assets/images/gateway-icon/payhere.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(42, NULL, 'Cinetpay', 'cinetpay', 'assets/images/gateway-icon/cinetpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(43, NULL, 'Voguepay', 'voguepay', 'assets/images/gateway-icon/voguepay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(44, NULL, 'Toyyibpay', 'toyyibpay', 'assets/images/gateway-icon/toyyibpay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(45, NULL, 'Paymob', 'paymob', 'assets/images/gateway-icon/paymob.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(46, NULL, 'Authorize', 'authorize', 'assets/images/gateway-icon/authorize.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(47, NULL, 'Alipay', 'alipay', 'assets/images/gateway-icon/alipay.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL),
(48, NULL, 'Bank', 'bank', 'assets/images/gateway-icon/bank.png', 1, 2, NULL, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `gateway_id` bigint UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `conversion_rate` decimal(8,2) NOT NULL DEFAULT '1.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `how_its_works`
--

CREATE TABLE `how_its_works` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compensation_n_benefits` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `company_logo` int NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_deadline` datetime NOT NULL,
  `job_responsibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_context` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `educational_requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_requirements` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `employee_status` tinyint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_id` bigint UNSIGNED DEFAULT NULL,
  `font` bigint UNSIGNED DEFAULT NULL,
  `rtl` tinyint DEFAULT '3',
  `status` tinyint NOT NULL DEFAULT '1',
  `default` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `iso_code`, `flag_id`, `font`, `rtl`, `status`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', NULL, NULL, 0, 1, 0, '2023-09-23 19:01:03', '2025-12-04 05:24:21', NULL),
(2, 'indonesia', 'id', 9, NULL, 0, 1, 1, '2025-12-04 05:13:35', '2025-12-04 05:24:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mail_histories`
--

CREATE TABLE `mail_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `owner_user_id` bigint UNSIGNED NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_plans`
--

CREATE TABLE `membership_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge` int NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `duration_type` tinyint NOT NULL DEFAULT '2',
  `duration` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_09_15_000010_create_tenants_table', 1),
(6, '2019_09_15_000020_create_domains_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2022_06_23_121213_create_settings_table', 1),
(9, '2022_06_25_104329_create_countries_table', 1),
(10, '2022_06_25_110824_create_currencies_table', 1),
(11, '2022_06_25_111037_create_languages_table', 1),
(12, '2022_06_26_130302_create_alumnis_table', 1),
(13, '2022_06_27_104144_create_user_institutions_table', 1),
(14, '2022_11_30_040739_create_gateways_table', 1),
(15, '2023_01_03_075827_create_gateway_currencies_table', 1),
(16, '2023_01_05_092212_create_file_managers_table', 1),
(17, '2023_01_07_120244_create_banks_table', 1),
(18, '2023_01_30_071830_create_payments_table', 1),
(19, '2023_05_29_125747_create_contact_messages_table', 1),
(20, '2023_05_30_123930_create_news_tags_table', 1),
(21, '2023_05_30_124208_create_news_categories_table', 1),
(22, '2023_05_31_053037_create_news_table', 1),
(23, '2023_06_01_124435_create_news_tag', 1),
(24, '2023_06_11_075340_create_memebrship_plans', 1),
(25, '2023_06_12_095437_create_sms_histories_table', 1),
(26, '2023_06_14_062807_create_mail_histories_table', 1),
(27, '2023_07_09_100721_create_notifications_table', 1),
(28, '2023_07_20_052653_create_email_templates_table', 1),
(29, '2023_07_22_111528_database_backups_table', 1),
(30, '2023_07_22_111738_database_backup_cron_settings_table', 1),
(31, '2023_08_06_094452_create_event_categories_table', 1),
(32, '2023_08_06_094458_create_passing_years_table', 1),
(33, '2023_08_06_094504_create_batches_table', 1),
(34, '2023_08_06_094512_create_departments_table', 1),
(35, '2023_08_08_095649_create_notice_categories_table', 1),
(36, '2023_08_08_095707_create_notices_table', 1),
(37, '2023_08_08_121638_create_user_membership_plans_table', 1),
(38, '2023_08_08_122610_create_posts_table', 1),
(39, '2023_08_08_130843_create_events_table', 1),
(40, '2023_08_08_131212_create_event_tickets_table', 1),
(41, '2023_08_08_133927_create_post_likes_table', 1),
(42, '2023_08_08_133946_create_post_comments_table', 1),
(43, '2023_08_08_135504_create_post_media_table', 1),
(44, '2023_08_16_074843_create_chats_table', 1),
(45, '2023_08_26_075204_create_metas_table', 1),
(46, '2023_09_03_115217_create_job_posts_table', 1),
(47, '2023_09_05_090819_create_notification_seens_table', 1),
(48, '2023_09_07_133233_update_password_resets_table', 1),
(49, '2023_09_10_112408_create_transactions_table', 1),
(50, '2023_09_14_114317_add_column_in_transactions_table', 1),
(51, '2023_09_15_114317_add_reference_column_in_transactions_table', 1),
(52, '2023_09_17_092916_add_timestamps_to_posts_table', 1),
(53, '2023_09_20_061618_add_column_in_events_table', 1),
(54, '2023_09_21_192710_create_chat_media_table', 1),
(55, '2023_09_23_115114_add_column_in_users_table', 1),
(56, '2023_10_18_162437_create_stories_table', 1),
(57, '2023_10_19_193144_create_photo_galleries_table', 1),
(58, '2023_10_22_142555_create_contact_us_table', 1),
(59, '2023_10_23_093637_create_packages_table', 1),
(60, '2023_10_23_094232_create_user_packages_table', 1),
(61, '2023_10_25_075216_create_frontend_sections_table', 1),
(62, '2023_10_25_125314_create_features_settings_table', 1),
(63, '2023_10_26_110108_create_core_pages_settings_table', 1),
(64, '2023_10_26_122659_create_testimonials_table', 1),
(65, '2023_10_26_124142_create_faqs_table', 1),
(66, '2023_10_29_190449_add_tenant_id_in_all_tables', 1),
(67, '2023_11_01_131517_create_custom_domain_requests_table', 1),
(68, '2023_11_07_131034_add_column_in_payments_table', 1),
(69, '2023_11_08_151228_create_how_its_works_table', 1),
(70, '2023_11_09_213219_add_new_field_to_contact_us_table', 1),
(71, '2023_11_15_121034_remove_gateway_slug_unique_in_gateways_table', 1),
(72, '2023_11_30_094646_add_column_in_user_packages_table', 1),
(73, '2024_04_01_115509_create_news_subscription_letters_table', 1),
(74, '2024_04_02_092743_create_subscription_email_templates_table', 1),
(75, '2024_04_04_145248_create_register_forms_table', 1),
(76, '2024_04_04_145958_add_column_in_alumnus_table', 1),
(77, '2024_04_06_104437_nullable_fileds_in_alumnus_table', 1),
(78, '2024_04_16_182953_create_campaign_categories_table', 1),
(79, '2024_04_16_190424_create_campaigns_table', 1),
(80, '2024_04_16_193105_create_campaign_comments_table', 1),
(81, '2024_04_16_193124_create_campaign_donations_table', 1),
(82, '2024_04_16_194836_change_payments_table', 1),
(83, '2024_04_25_130507_create_committee_elections_table', 1),
(84, '2024_04_25_130623_create_committee_categories_table', 1),
(85, '2024_04_25_130637_create_committee_designations_table', 1),
(86, '2024_04_25_155506_create_committee_board_members_table', 1),
(87, '2024_04_25_155540_create_committee_nomination_forms_table', 1),
(88, '2024_04_25_155619_create_committee_candidates_table', 1),
(89, '2024_04_25_155744_create_committee_votes_table', 1),
(90, '2024_04_25_155939_create_committee_candidate_comments_table', 1),
(91, '2024_04_25_160013_create_committees_table', 1),
(92, '2024_05_06_060110_create_committee_candidate_flags_table', 1),
(93, '2024_05_08_160154_add_column_in_committee_elections_table', 1),
(94, '2024_07_14_114302_create_permission_tables', 1),
(95, '2024_07_14_172531_add_column_in_users_table', 1),
(96, '2025_09_22_000001_create_donations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `news_category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_subscription_letters`
--

CREATE TABLE `news_subscription_letters` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_tag`
--

CREATE TABLE `news_tag` (
  `news_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

CREATE TABLE `news_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `notice_category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

CREATE TABLE `notice_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `view_status` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `tenant_id`, `user_id`, `title`, `body`, `link`, `view_status`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Account Approval', 'Your Alumni Account Rejected', NULL, 0, 1, NULL, '2025-12-04 05:43:36', '2025-12-04 05:43:36'),
(2, 1, 5, 'Account Approval', 'Your Alumni Account Approved', NULL, 0, 1, NULL, '2025-12-04 05:47:45', '2025-12-04 05:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `notification_seens`
--

CREATE TABLE `notification_seens` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `notification_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_seens`
--

INSERT INTO `notification_seens` (`id`, `tenant_id`, `user_id`, `notification_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, 2, '2025-12-04 05:57:11', '2025-12-04 05:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alumni_limit` int NOT NULL DEFAULT '-1',
  `custom_domain` tinyint NOT NULL DEFAULT '0',
  `event_limit` int NOT NULL DEFAULT '-1',
  `icon_id` int DEFAULT NULL,
  `others` text COLLATE utf8mb4_unicode_ci,
  `monthly_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `yearly_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'active for 1 , deactivate for 0',
  `is_default` tinyint NOT NULL DEFAULT '0' COMMENT 'active for 1 , deactivate for 0',
  `is_trail` tinyint NOT NULL DEFAULT '0' COMMENT 'active for 1 , deactivate for 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passing_years`
--

CREATE TABLE `passing_years` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passing_years`
--

INSERT INTO `passing_years` (`id`, `tenant_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '2025', '2025-12-04 05:27:20', '2025-12-04 05:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` int DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentable_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_id` bigint UNSIGNED NOT NULL,
  `paymentId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tnxId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `bank_id` bigint UNSIGNED DEFAULT NULL,
  `deposit_slip` int DEFAULT NULL,
  `sub_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `system_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversion_rate` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `grand_total_with_conversation_rate` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `grand_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `subscription_type` tinyint DEFAULT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci,
  `gateway_callback_details` longtext COLLATE utf8mb4_unicode_ci,
  `payment_time` datetime DEFAULT NULL,
  `payment_status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `tenant_id`, `uuid`, `paymentable_id`, `paymentable_type`, `gateway_id`, `paymentId`, `tnxId`, `user_id`, `bank_id`, `deposit_slip`, `sub_total`, `tax`, `system_currency`, `payment_currency`, `conversion_rate`, `grand_total_with_conversation_rate`, `grand_total`, `subscription_type`, `payment_details`, `gateway_callback_details`, `payment_time`, `payment_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'fce514e2-8b69-4e49-974a-733b9096e86c', '1', 'App\\Models\\Campaign', 24, NULL, 'DN69312165a35d9', 1, NULL, NULL, '100000.00', '0.00', 'BDT', 'BDT', '1.00000000', '100000.00000000', '100000.00', NULL, '{\"campaign\":{\"id\":1,\"title\":\"dukungan tugas akhir d3 angkatan XIX\",\"slug\":\"dukungan-tugas-akhir-d3-angkatan-XIX\"}}', NULL, NULL, 0, NULL, '2025-12-04 05:51:33', '2025-12-04 05:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_media`
--

CREATE TABLE `post_media` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `file` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_forms`
--

CREATE TABLE `register_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `enable_batch` tinyint NOT NULL DEFAULT '1',
  `enable_department` tinyint NOT NULL DEFAULT '1',
  `enable_passing_year` tinyint NOT NULL DEFAULT '1',
  `enable_role_number` tinyint NOT NULL DEFAULT '1',
  `enable_attachment` tinyint NOT NULL DEFAULT '1',
  `enable_date_of_birth` tinyint NOT NULL DEFAULT '1',
  `enable_gender` tinyint NOT NULL DEFAULT '1',
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_forms`
--

INSERT INTO `register_forms` (`id`, `tenant_id`, `enable_batch`, `enable_department`, `enable_passing_year`, `enable_role_number`, `enable_attachment`, `enable_date_of_birth`, `enable_gender`, `custom_fields`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 0, 1, 1, 1, '\"[]\"', '2023-11-16 00:37:54', '2025-12-04 05:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `tenant_id`, `option_key`, `option_value`, `created_at`, `updated_at`) VALUES
(1, NULL, 'build_version', '11', '2023-09-23 19:01:03', '2023-09-23 19:01:03'),
(2, NULL, 'current_version', '3.6', '2023-09-23 19:01:03', '2023-09-23 19:01:03'),
(3, 1, 'app_name', 'STTAL', '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(4, 1, 'app_email', 'sttal@example.com', '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(5, 1, 'app_contact_number', '+00000000000', '2023-09-23 19:01:03', '2023-11-16 00:37:55'),
(6, 1, 'app_location', 'Surabaya, Jawa Timur', '2023-09-23 19:01:03', '2025-12-04 04:08:41'),
(7, NULL, 'app_copyright', '© 2023 Zainik Lab. All Rights Reserved.', '2023-09-23 19:01:03', '2023-09-23 19:01:03'),
(8, NULL, 'app_developed', 'Zainikthemes', '2023-09-23 19:01:03', '2023-09-23 19:01:03'),
(9, 1, 'app_timezone', 'Asia/Jakarta', '2023-09-23 19:01:03', '2025-12-04 04:08:41'),
(10, 1, 'app_color_design_type', '1', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(11, 1, 'app_primary_color', '#ff671b', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(12, 1, 'app_secondary_color', '#111111', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(13, 1, 'app_text_color', '#585858', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(14, 1, 'app_section_bg_color', '#fffaf7', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(15, 1, 'app_hero_bg_color1', '#000000', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(16, 1, 'app_hero_bg_color2', '#000000', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(17, 1, 'app_hero_bg_color', NULL, '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(18, 1, 'app_preloader', '6', '2023-09-24 01:03:08', '2025-12-04 05:10:50'),
(19, 1, 'app_logo', '7', '2023-09-24 01:03:08', '2025-12-04 05:10:50'),
(20, 1, 'app_fav_icon', '3', '2023-09-24 01:03:08', '2023-11-16 00:37:55'),
(21, 1, 'login_left_image', '8', '2023-09-24 01:03:08', '2025-12-04 05:10:50'),
(22, 1, 'google_login_status', '1', '2023-09-24 01:03:24', '2023-11-16 00:37:55'),
(23, 1, 'facebook_login_status', '1', '2023-09-24 01:03:25', '2023-11-16 00:37:55'),
(24, 1, 'cookie_status', '1', '2023-09-24 01:03:32', '2023-11-16 00:37:55'),
(25, 1, 'register_file_required', '1', '2023-09-24 01:04:37', '2023-11-16 00:37:55'),
(26, 1, 'app_preloader_status', '1', '2023-09-24 01:04:39', '2023-11-16 00:37:55'),
(27, 1, 'registration_approval', '1', '2023-09-24 01:04:42', '2023-11-16 00:37:55'),
(28, NULL, 'show_language_switcher', '1', '2023-09-24 01:04:43', '2023-09-24 01:04:43'),
(29, 1, 'gateway_settings', '{\"paypal\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Client ID\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Secret\",\"name\":\"secret\",\"is_show\":1}],\"stripe\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Public Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Secret Key\",\"name\":\"secret\",\"is_show\":0}],\"razorpay\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Secret\",\"name\":\"secret\",\"is_show\":1}],\"instamojo\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Api Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Auth Token\",\"name\":\"secret\",\"is_show\":1}],\"mollie\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Mollie Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Secret\",\"name\":\"secret\",\"is_show\":0}],\"paystack\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Public Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Secret Key\",\"name\":\"secret\",\"is_show\":0}],\"mercadopago\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Client ID\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Client Secret\",\"name\":\"secret\",\"is_show\":1}],\"sslcommerz\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"Store ID\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Store Password\",\"name\":\"secret\",\"is_show\":1}],\"flutterwave\":[{\"label\":\"Hash\",\"name\":\"url\",\"is_show\":1},{\"label\":\"Public Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Client Secret\",\"name\":\"secret\",\"is_show\":1}],\"coinbase\":[{\"label\":\"Hash\",\"name\":\"url\",\"is_show\":0},{\"label\":\"API Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Client Secret\",\"name\":\"secret\",\"is_show\":0}],\"binance\":[{\"label\":\"Url\",\"name\":\"url\",\"is_show\":0},{\"label\":\"API Key\",\"name\":\"key\",\"is_show\":1},{\"label\":\"Secret Key\",\"name\":\"secret\",\"is_show\":1}]}', '2023-06-18 18:35:33', '2023-11-16 00:37:55'),
(30, NULL, 'STORAGE_DRIVER', 'public', '2023-09-23 19:01:03', '2023-09-23 19:01:03'),
(31, 1, 'facebook_url', 'https://www.facebook.com/', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(32, 1, 'linkedin_url', 'https://www.linkedin.com/', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(33, 1, 'twitter_url', 'https://www.google.com/', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(34, 1, 'instagram_url', 'https://www.google.com/', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(35, 1, 'sign_up_left_text_title', 'Welcome Back', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(36, 1, 'join_our_community_title', 'Join Our Community Now', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(37, 1, 'sign_up_left_text_subtitle', 'Register now to see people who have attended or graduated from a particular school, college or university.', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(38, 1, 'footer_left_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus elementum metus vitae vulputate. Proin mattis ligula a nunc suscipit, sed aliquam mi condimentum. In dictum erat lacus, id iaculis mauris tincidunt quis.', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(39, 1, 'page_breadcrumb', '245', '2023-10-22 06:19:16', '2023-11-16 00:37:55'),
(40, 1, 'banner_title', 'We are the proud student of STTAL university forever', '2023-10-22 06:22:43', '2023-11-16 00:37:55'),
(41, 1, 'banner_description', 'STTAL is a user friendly that helps alumni easily connect and manage their activities. Alumni can sign up and get approved by submitting necessary documents, which allows them to join the alumni community', '2023-10-22 06:22:43', '2023-11-16 00:37:55'),
(42, 1, 'banner_background_breadcrumb', '229', '2023-10-22 06:22:43', '2023-11-16 00:37:55'),
(43, 1, 'upcoming_events_background', '230', '2023-10-22 06:22:43', '2023-11-16 00:37:55'),
(44, 1, 'app_black_logo', '13', '2023-10-22 06:28:40', '2025-12-04 06:13:14'),
(45, 1, 'about_us_title', 'About STTAL', '2023-10-22 06:30:22', '2023-11-16 00:37:55'),
(46, 1, 'about_us_description', '<ul class=\"list-pb-22\"><li class=\"d-flex align-items-start cg-12\"><div class=\"flex-shrink-0 d-flex pt-5\"><img src=\"/frontend/images/icon/check-circle.svg\" alt=\"\"></div><p class=\"fs-18 fw-400 lh-28 text-color1\">Alumni Association provides and supports alumni programs and services, facilitates communication with alumni, and seeks to strengthen alumni bonds of fellowship, professional association and university affiliation.</p></li><li class=\"d-flex align-items-start cg-12\"><div class=\"flex-shrink-0 d-flex pt-5\"><img src=\"/frontend/images/icon/check-circle.svg\" alt=\"\"></div><p class=\"fs-18 fw-400 lh-28 text-color1\">Connect alumni with mentors or coaches who can offer them guidance, advice, or feedback on their personal or professional goals. They can also help them expand their network, explore new opportunities, or overcome challenges</p></li><li class=\"d-flex align-items-start cg-12\"><div class=\"flex-shrink-0 d-flex pt-5\"><img src=\"/frontend/images/icon/check-circle.svg\" alt=\"\"></div><p class=\"fs-18 fw-400 lh-28 text-color1\">The Alumni Association leverages the resources, talents, and initiatives of alumni and friends to advise, guide, advocate for and support the Association and the university in achieving their respective missions and goals. The Alumni Association provides an alumni network and encourages alumni engagement in the life of the university.</p></li><li class=\"d-flex align-items-start cg-12\"><div class=\"flex-shrink-0 d-flex pt-5\"><img src=\"/frontend/images/icon/check-circle.svg\" alt=\"\"></div><p class=\"fs-18 fw-400 lh-28 text-color1\">Alumni Association provides and supports alumni programs and services, facilitates communication with alumni, and seeks to strengthen alumni bonds of fellowship, professional association and university affiliation.</p></li></ul>', '2023-10-22 06:30:22', '2023-11-16 00:37:55'),
(47, 1, 'about_us_background_breadcrumb', '233', '2023-10-22 06:30:22', '2023-11-16 00:37:55'),
(48, 1, 'join_us_left_title', 'Attend Events', '2023-10-22 06:38:18', '2023-11-16 00:37:55'),
(49, 1, 'join_us_left_description', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus elementum metus vitae vulputate. Proin mattis ligula a nunc suscipit,</span><br></p>', '2023-10-22 06:38:18', '2023-11-16 00:37:55'),
(50, 1, 'join_us_middle_title', 'Advance Your Career', '2023-10-22 06:38:18', '2023-11-16 00:37:55'),
(51, 1, 'join_us_middle_description', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus elementum metus vitae vulputate. Proin mattis ligula a nunc suscipit,</span><br></p>', '2023-10-22 06:38:18', '2023-11-16 00:37:55'),
(52, 1, 'join_us_right_title', 'Reconnect your Friend', '2023-10-22 06:38:18', '2023-11-16 00:37:55'),
(53, 1, 'join_us_right_description', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus elementum metus vitae vulputate. Proin mattis ligula a nunc suscipit,</span><br></p>', '2023-10-22 06:38:18', '2023-11-16 00:37:55'),
(54, 1, 'join_us_left_icon', '255', '2023-10-22 06:40:40', '2023-11-16 00:37:55'),
(55, 1, 'join_us_middle_icon', '256', '2023-10-22 06:40:40', '2023-11-16 00:37:55'),
(56, 1, 'join_us_right_icon', '257', '2023-10-22 06:40:40', '2023-11-16 00:37:55'),
(57, 1, 'refund_policy_title', 'Refund Policy Of Our Site', '2023-10-22 07:11:13', '2023-11-16 00:37:55'),
(58, 1, 'refund_policy_description', 'Refund Policy', '2023-10-22 07:11:13', '2023-11-16 00:37:55'),
(59, 1, 'terms_condition_title', 'Terms & Condition', '2023-10-22 07:12:13', '2023-11-16 00:37:55'),
(60, 1, 'terms_condition_description', 'Terms & Condition', '2023-10-22 07:12:13', '2023-11-16 00:37:55'),
(61, 1, 'cookie_policy_title', 'Cookie Policy', '2023-10-22 07:12:37', '2023-11-16 00:37:55'),
(62, 1, 'cookie_policy_description', 'Cookie Policy', '2023-10-22 07:12:37', '2023-11-16 00:37:55'),
(63, 1, 'privacy_policy_title', 'Privacy Policy', '2023-10-22 07:12:54', '2023-11-16 00:37:55'),
(64, 1, 'privacy_policy_description', 'Privacy Policy', '2023-10-22 07:12:54', '2023-11-16 00:37:55'),
(65, 1, 'APP_URL', 'http://127.0.0.1:8000/', '2025-12-04 04:08:41', '2025-12-04 04:08:41'),
(66, 1, 'app_copyright', '@siikasttal', '2025-12-04 04:08:41', '2025-12-04 04:08:41'),
(67, 1, 'app_developed', 'popy-xix', '2025-12-04 04:08:41', '2025-12-04 04:08:41'),
(68, 1, 'STORAGE_DRIVER', 'public', '2025-12-04 05:09:24', '2025-12-04 05:09:24'),
(69, 1, 'disable_registration', '0', '2025-12-04 05:31:26', '2025-12-04 05:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `sms_histories`
--

CREATE TABLE `sms_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `owner_user_id` bigint UNSIGNED NOT NULL,
  `api` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` int NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_email_templates`
--

CREATE TABLE `subscription_email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `default` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `created_at`, `updated_at`, `data`) VALUES
('1', '2023-11-16 00:37:54', '2023-11-16 00:37:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `payment_id` bigint UNSIGNED NOT NULL,
  `reference_id` bigint UNSIGNED DEFAULT NULL,
  `type` tinyint NOT NULL,
  `tnxId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_time` datetime NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` bigint UNSIGNED DEFAULT NULL,
  `role` tinyint NOT NULL DEFAULT '2',
  `is_alumni` tinyint NOT NULL DEFAULT '1',
  `email_verification_status` tinyint NOT NULL DEFAULT '0',
  `phone_verification_status` tinyint NOT NULL DEFAULT '0',
  `google_auth_status` tinyint NOT NULL DEFAULT '0',
  `google2fa_secret` text COLLATE utf8mb4_unicode_ci,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `show_email_in_public` tinyint NOT NULL DEFAULT '1',
  `show_phone_in_public` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tenant_id`, `uuid`, `name`, `rank`, `nrp`, `nick_name`, `email`, `mobile`, `email_verified_at`, `password`, `image`, `role`, `is_alumni`, `email_verification_status`, `phone_verification_status`, `google_auth_status`, `google2fa_secret`, `google_id`, `facebook_id`, `verify_token`, `otp`, `otp_expiry`, `last_seen`, `show_email_in_public`, `show_phone_in_public`, `created_by`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '12345', 'Administrator Doe', 'kopda', '118929', NULL, 'admin@gmail.com', '0', NULL, '$2y$10$XNHh/gALlKo.dBSKfQoGzuJ0C0pB4EbGXmkumqLgA3a6owg7HK3Pi', NULL, 1, 1, 1, 1, 0, 'QQKI6NEOYRGL6DYS', NULL, NULL, NULL, NULL, NULL, '2025-12-04 13:13:19', 1, 1, NULL, 1, NULL, NULL, NULL, '2025-12-04 06:13:19'),
(3, NULL, '62cabcb7-f067-494e-b8a7-2865785ba12e', 'Super Admin', NULL, NULL, NULL, 'superadmin@gmail.com', '+0000123456', '2023-11-16 00:37:55', '$2y$10$NVPiINE15r8KsQdpmJpeGevI4v6MxEi32l8bPVnmWGYbbkdOCalCa', NULL, 3, 1, 1, 1, 0, '5P5XZZ4V2U6NWOI5', NULL, NULL, NULL, NULL, NULL, '2023-09-24 14:01:03', 1, 1, NULL, 1, NULL, NULL, '2023-11-16 00:37:56', '2023-11-16 00:37:56'),
(4, 1, 'cfec28d2-bf57-4451-b27c-46b7b45a7538', 'popy indra', 'kopda Eta', '123123', NULL, 'indra@gmail.com', '+62352114114', NULL, '$2y$10$YH8Pt4WeU1fCZNksS1LAIegG77Qtkb5LG5rs64GVeh06TSFwQ1e8K', NULL, 2, 1, 1, 0, 0, 'JH6U7NSGRKXBC5UC', NULL, NULL, '3aaefbbe5afb4116baa8eb258006fb8c', NULL, NULL, '2025-12-04 12:40:31', 1, 1, NULL, 3, NULL, NULL, '2025-12-04 05:34:19', '2025-12-04 05:43:36'),
(5, 1, 'b4f45c24-65a9-425f-9f97-b3ebf3bbc706', 'popy indra', 'kopda eta', '123456', NULL, 'popy@gmail.com', '085853916021', NULL, '$2y$10$PnabJ9JIG3anZImUlrt8pO81LjRduw3NCKM/SLQYko1XQq8bYLgAi', NULL, 2, 1, 1, 0, 0, 'Z4GPG2V6DR47SMNQ', NULL, NULL, 'd128af8967aa4edcb9bbfdb9685d718b', NULL, NULL, '2025-12-04 13:13:30', 1, 1, NULL, 1, NULL, NULL, '2025-12-04 05:46:58', '2025-12-04 06:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_institutions`
--

CREATE TABLE `user_institutions` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_membership_plans`
--

CREATE TABLE `user_membership_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `membership_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `expired_date` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_packages`
--

CREATE TABLE `user_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `package_id` bigint UNSIGNED NOT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `subscription_type` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_trail` tinyint NOT NULL DEFAULT '0' COMMENT 'active for 1 , deactivate for 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus`
--
ALTER TABLE `alumnus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_categories`
--
ALTER TABLE `campaign_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_comments`
--
ALTER TABLE `campaign_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_donations`
--
ALTER TABLE `campaign_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_media`
--
ALTER TABLE `chat_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_board_members`
--
ALTER TABLE `committee_board_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_candidates`
--
ALTER TABLE `committee_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_candidate_comments`
--
ALTER TABLE `committee_candidate_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_candidate_flags`
--
ALTER TABLE `committee_candidate_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_categories`
--
ALTER TABLE `committee_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_designations`
--
ALTER TABLE `committee_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_elections`
--
ALTER TABLE `committee_elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_nomination_forms`
--
ALTER TABLE `committee_nomination_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_votes`
--
ALTER TABLE `committee_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_pages_settings`
--
ALTER TABLE `core_pages_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_domain_requests`
--
ALTER TABLE `custom_domain_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `database_backup_cron_settings`
--
ALTER TABLE `database_backup_cron_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donations_order_id_unique` (`order_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_slug_unique` (`slug`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_tickets`
--
ALTER TABLE `event_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features_settings`
--
ALTER TABLE `features_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_managers`
--
ALTER TABLE `file_managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_managers_file_name_unique` (`file_name`);

--
-- Indexes for table `frontend_sections`
--
ALTER TABLE `frontend_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_its_works`
--
ALTER TABLE `how_its_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_posts_slug_unique` (`slug`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_unique` (`language`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indexes for table `mail_histories`
--
ALTER TABLE `mail_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_plans`
--
ALTER TABLE `membership_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_subscription_letters`
--
ALTER TABLE `news_subscription_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_categories`
--
ALTER TABLE `notice_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_seens`
--
ALTER TABLE `notification_seens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passing_years`
--
ALTER TABLE `passing_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_uuid_unique` (`uuid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_media`
--
ALTER TABLE `post_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_forms`
--
ALTER TABLE `register_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_histories`
--
ALTER TABLE `sms_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stories_slug_unique` (`slug`);

--
-- Indexes for table `subscription_email_templates`
--
ALTER TABLE `subscription_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_nrp_unique` (`nrp`);

--
-- Indexes for table `user_institutions`
--
ALTER TABLE `user_institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_membership_plans`
--
ALTER TABLE `user_membership_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_packages`
--
ALTER TABLE `user_packages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus`
--
ALTER TABLE `alumnus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaign_categories`
--
ALTER TABLE `campaign_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_comments`
--
ALTER TABLE `campaign_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_donations`
--
ALTER TABLE `campaign_donations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_media`
--
ALTER TABLE `chat_media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_board_members`
--
ALTER TABLE `committee_board_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_candidates`
--
ALTER TABLE `committee_candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_candidate_comments`
--
ALTER TABLE `committee_candidate_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_candidate_flags`
--
ALTER TABLE `committee_candidate_flags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_categories`
--
ALTER TABLE `committee_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_designations`
--
ALTER TABLE `committee_designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_elections`
--
ALTER TABLE `committee_elections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_nomination_forms`
--
ALTER TABLE `committee_nomination_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_votes`
--
ALTER TABLE `committee_votes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_pages_settings`
--
ALTER TABLE `core_pages_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `custom_domain_requests`
--
ALTER TABLE `custom_domain_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backup_cron_settings`
--
ALTER TABLE `database_backup_cron_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_tickets`
--
ALTER TABLE `event_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features_settings`
--
ALTER TABLE `features_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `frontend_sections`
--
ALTER TABLE `frontend_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `how_its_works`
--
ALTER TABLE `how_its_works`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mail_histories`
--
ALTER TABLE `mail_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_plans`
--
ALTER TABLE `membership_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_subscription_letters`
--
ALTER TABLE `news_subscription_letters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_categories`
--
ALTER TABLE `notice_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification_seens`
--
ALTER TABLE `notification_seens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passing_years`
--
ALTER TABLE `passing_years`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_media`
--
ALTER TABLE `post_media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_forms`
--
ALTER TABLE `register_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `sms_histories`
--
ALTER TABLE `sms_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_email_templates`
--
ALTER TABLE `subscription_email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_institutions`
--
ALTER TABLE `user_institutions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_membership_plans`
--
ALTER TABLE `user_membership_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_packages`
--
ALTER TABLE `user_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

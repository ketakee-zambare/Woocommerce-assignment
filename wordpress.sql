-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 09:19 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-03-25 16:30:00', '2020-03-25 16:30:00', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1585153800;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1585153800;}', 1, 1, '2020-03-25 16:30:04', '2020-03-25 16:30:04', 0, NULL),
(7, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-03-28 08:35:50', '2020-03-28 08:35:50', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1585384550;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1585384550;}', 0, 1, '2020-03-28 08:35:58', '2020-03-28 08:35:58', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-03-25 16:30:00', '2020-03-25 16:30:00'),
(2, 6, 'action started via WP Cron', '2020-03-25 16:30:04', '2020-03-25 16:30:04'),
(3, 6, 'action complete via WP Cron', '2020-03-25 16:30:04', '2020-03-25 16:30:04'),
(4, 7, 'action created', '2020-03-28 08:35:50', '2020-03-28 08:35:50'),
(5, 7, 'action started via Async Request', '2020-03-28 08:35:57', '2020-03-28 08:35:57'),
(6, 7, 'action complete via Async Request', '2020-03-28 08:35:58', '2020-03-28 08:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/woocommerce', 'yes'),
(2, 'home', 'http://localhost/woocommerce', 'yes'),
(3, 'blogname', 'Woocommerce Website', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ketakeezambare@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:73:\"C:\\xampp1\\htdocs\\woocommerce/wp-content/themes/storefront-child/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '95', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:13:{i:1587367166;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1587368293;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587369148;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1587378596;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587382690;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587382693;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587382714;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587382722;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587400206;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587410996;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587427200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587745856;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585141627;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1587349482;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"ketakeezambare@gmail.com\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1585136317;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(151, 'current_theme', 'Storefront Child', 'yes'),
(152, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:18;s:9:\"secondary\";i:17;s:8:\"handheld\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585746748;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(154, 'storefront_nux_fresh_site', '1', 'yes'),
(156, 'storefront_nux_guided_tour', '1', 'yes'),
(158, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585154065;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'storefront_nux_dismissed', '1', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(175, 'schema-ActionScheduler_StoreSchema', '3.0.1585153765', 'yes'),
(176, 'schema-ActionScheduler_LoggerSchema', '2.0.1585153765', 'yes'),
(179, 'woocommerce_store_address', '', 'yes'),
(180, 'woocommerce_store_address_2', '', 'yes'),
(181, 'woocommerce_store_city', '', 'yes'),
(182, 'woocommerce_default_country', 'GB', 'yes'),
(183, 'woocommerce_store_postcode', '', 'yes'),
(184, 'woocommerce_allowed_countries', 'all', 'yes'),
(185, 'woocommerce_all_except_countries', '', 'yes'),
(186, 'woocommerce_specific_allowed_countries', '', 'yes'),
(187, 'woocommerce_ship_to_countries', '', 'yes'),
(188, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(189, 'woocommerce_default_customer_address', 'base', 'yes'),
(190, 'woocommerce_calc_taxes', 'no', 'yes'),
(191, 'woocommerce_enable_coupons', 'yes', 'yes'),
(192, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(193, 'woocommerce_currency', 'GBP', 'yes'),
(194, 'woocommerce_currency_pos', 'left', 'yes'),
(195, 'woocommerce_price_thousand_sep', ',', 'yes'),
(196, 'woocommerce_price_decimal_sep', '.', 'yes'),
(197, 'woocommerce_price_num_decimals', '2', 'yes'),
(198, 'woocommerce_shop_page_id', '', 'yes'),
(199, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(200, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(201, 'woocommerce_placeholder_image', '5', 'yes'),
(202, 'woocommerce_weight_unit', 'kg', 'yes'),
(203, 'woocommerce_dimension_unit', 'cm', 'yes'),
(204, 'woocommerce_enable_reviews', 'yes', 'yes'),
(205, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(206, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(207, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(208, 'woocommerce_review_rating_required', 'yes', 'no'),
(209, 'woocommerce_manage_stock', 'yes', 'yes'),
(210, 'woocommerce_hold_stock_minutes', '60', 'no'),
(211, 'woocommerce_notify_low_stock', 'yes', 'no'),
(212, 'woocommerce_notify_no_stock', 'yes', 'no'),
(213, 'woocommerce_stock_email_recipient', 'ketakeezambare@gmail.com', 'no'),
(214, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(215, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(216, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(217, 'woocommerce_stock_format', '', 'yes'),
(218, 'woocommerce_file_download_method', 'force', 'no'),
(219, 'woocommerce_downloads_require_login', 'no', 'no'),
(220, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(221, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(222, 'woocommerce_prices_include_tax', 'no', 'yes'),
(223, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(224, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(225, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(226, 'woocommerce_tax_classes', '', 'yes'),
(227, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(228, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(229, 'woocommerce_price_display_suffix', '', 'yes'),
(230, 'woocommerce_tax_total_display', 'itemized', 'no'),
(231, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(232, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(233, 'woocommerce_ship_to_destination', 'billing', 'no'),
(234, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(235, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(236, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(237, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(238, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(239, 'woocommerce_registration_generate_username', 'yes', 'no'),
(240, 'woocommerce_registration_generate_password', 'yes', 'no'),
(241, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(242, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(243, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(244, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(245, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(246, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(247, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(248, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(249, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(250, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(251, 'woocommerce_email_from_name', 'Woocommerce Website', 'no'),
(252, 'woocommerce_email_from_address', 'ketakeezambare@gmail.com', 'no'),
(253, 'woocommerce_email_header_image', '', 'no'),
(254, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(255, 'woocommerce_email_base_color', '#96588a', 'no'),
(256, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(257, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(258, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(259, 'woocommerce_cart_page_id', '', 'no'),
(260, 'woocommerce_checkout_page_id', '', 'no'),
(261, 'woocommerce_myaccount_page_id', '', 'no'),
(262, 'woocommerce_terms_page_id', '', 'no'),
(263, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(264, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(265, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(266, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(267, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(268, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(269, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(270, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(271, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(272, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(273, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(274, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(275, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(276, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(277, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(278, 'woocommerce_api_enabled', 'no', 'yes'),
(279, 'woocommerce_allow_tracking', 'no', 'no'),
(280, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(281, 'woocommerce_single_image_width', '600', 'yes'),
(282, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(283, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(284, 'woocommerce_demo_store', 'no', 'no'),
(285, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(286, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(287, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(288, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(289, 'product_cat_children', 'a:0:{}', 'yes'),
(290, 'default_product_cat', '15', 'yes'),
(291, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(294, 'woocommerce_version', '4.0.1', 'yes'),
(295, 'woocommerce_db_version', '4.0.1', 'yes'),
(296, 'action_scheduler_lock_async-request-runner', '1587367179', 'yes'),
(297, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"GNr5BbInBAsOnu75Z4QSR8eZmZ8VUA0J\";}', 'yes'),
(298, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(299, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(311, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(319, 'action_scheduler_migration_status', 'complete', 'yes'),
(334, 'storefront_cleared_widgets', '1', 'yes'),
(336, 'woocommerce_catalog_rows', '4', 'yes'),
(337, 'woocommerce_catalog_columns', '3', 'yes'),
(338, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(401, 'theme_mods_storefront-child', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:9:\"secondary\";i:17;s:8:\"handheld\";i:0;s:7:\"primary\";i:18;s:8:\"dropdown\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:20;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585746692;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(464, '_transient_product_query-transient-version', '1587362337', 'yes'),
(465, '_transient_timeout_wc_product_loop_6147550c3f3af9236789687d89ed040c', '1589954872', 'no'),
(466, '_transient_wc_product_loop_6147550c3f3af9236789687d89ed040c', 'a:2:{s:7:\"version\";s:10:\"1587362337\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(469, '_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', '1589954872', 'no'),
(470, '_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', 'a:2:{s:7:\"version\";s:10:\"1587362337\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(840, 'recovery_mode_email_last_sent', '1587116143', 'yes'),
(843, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(932, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:8:{s:4:\"slug\";s:27:\"orders-empty-stripe-payment\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}i:27;a:8:{s:4:\"slug\";s:29:\"products-empty-stripe-payment\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}}s:7:\"updated\";i:1585384557;}', 'no'),
(933, '_transient_product-transient-version', '1585384571', 'yes'),
(937, '_transient_timeout_wc_featured_products', '1587976574', 'no'),
(938, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(939, '_transient_timeout_wc_products_onsale', '1587976574', 'no'),
(940, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(941, '_transient_timeout_wc_term_counts', '1587976575', 'no'),
(942, '_transient_wc_term_counts', 'a:1:{i:15;s:1:\"0\";}', 'no'),
(952, '_transient_timeout_wc_low_stock_count', '1587977902', 'no'),
(953, '_transient_wc_low_stock_count', '0', 'no'),
(954, '_transient_timeout_wc_outofstock_count', '1587977902', 'no'),
(955, '_transient_wc_outofstock_count', '0', 'no'),
(1567, '_transient_shipping-transient-version', '1585729832', 'yes'),
(1568, '_transient_timeout_wc_shipping_method_count_legacy', '1588321832', 'no'),
(1569, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1585729832\";s:5:\"value\";i:0;}', 'no'),
(1650, '_transient_timeout_wc_shipping_method_count', '1588335196', 'no'),
(1651, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1585729832\";s:5:\"value\";i:0;}', 'no'),
(3085, 'category_children', 'a:0:{}', 'yes'),
(3256, '_transient_timeout_wc_report_sales_by_date', '1587453519', 'no'),
(3257, '_transient_wc_report_sales_by_date', 'a:64:{s:32:\"ef33a62f9a5bd5f05fd6d2b50d15c03e\";a:0:{}s:32:\"587492bb073f7c9c1815041d985a50bc\";a:0:{}s:32:\"ccb168d0bb8c63e9227ba6c283b34e0e\";a:0:{}s:32:\"9e70eae67d58fa9a8d41c01631b478aa\";N;s:32:\"2b13e465e247679bade86e25afb560b8\";a:0:{}s:32:\"8ac66d83a8c35488e73cd3168e563f02\";a:0:{}s:32:\"ecf9be8b645521d5edd33091856cb926\";a:0:{}s:32:\"d2cdf8dbd9b34a7bc68c9c7004b04cc1\";a:0:{}s:32:\"a3d6de3308e802fb349d5b19d0e627bc\";a:0:{}s:32:\"998ab4ca3b5d660eed7e84bc61bd6e30\";a:0:{}s:32:\"ee4c86528e4b66dccced252886ed26a2\";a:0:{}s:32:\"d9b24e4e78914dc139dd6f3e1b77b2c8\";N;s:32:\"405869487985745fa74f862e14071124\";a:0:{}s:32:\"27f823e6005d730c222aa759c750aa94\";a:0:{}s:32:\"86c86aecfdd05e2a1658ccaef7f3c145\";a:0:{}s:32:\"7bc74df4a682a88eb2019682a225dd45\";a:0:{}s:32:\"e8de6a651f8e8fce5d9bc418cdaa3b44\";a:0:{}s:32:\"0b7e6faaaae208c9edfd63eb92b99a3e\";a:0:{}s:32:\"991b4664dfedc588782fb1080f3536c9\";a:0:{}s:32:\"5dca15bf2f17035fc430b3bbb6c0fd75\";N;s:32:\"b7aa6bf7f1df7cff1234f29f99aa9801\";a:0:{}s:32:\"f7bd795b6de0e6428529c859e9e4aae0\";a:0:{}s:32:\"67650449a85537969c2f1e9dd2a87309\";a:0:{}s:32:\"51550829578ffe3743942112222fb0a0\";a:0:{}s:32:\"aba93b84b1542f22843085818edd2365\";a:0:{}s:32:\"0e04ba9cded94a8adeb08da526b80089\";a:0:{}s:32:\"b4ebd32a36a338ea7c60176e34cd54ef\";a:0:{}s:32:\"e42c93e2d1490b3d447f3d06881b6727\";N;s:32:\"34fdbf12cfa145ba4c20ea49ad91137f\";a:0:{}s:32:\"7b8f7d57c10f32ddedf9f5173845d478\";a:0:{}s:32:\"58297586c7690827296cc776261df068\";a:0:{}s:32:\"b36d684e8943d6f70428cd022e09ddc8\";a:0:{}s:32:\"8b9b2c71ad03f44e0e7ff60c52edfb5e\";a:0:{}s:32:\"ff1cb2849c65a456990662f8e8fe3aad\";a:0:{}s:32:\"47de463706c4cfd45ce8f6e86a42f718\";a:0:{}s:32:\"370f1a76bde0d9966a4efc003c87251f\";N;s:32:\"16d1192c694f6f8ba1acf18e0507dcaa\";a:0:{}s:32:\"ea7cb5b56fd62980106a0897dbda98e7\";a:0:{}s:32:\"d77899139891bceee17b1fe02334fa38\";a:0:{}s:32:\"9e1115443c8ffd9df517705d11a93a17\";a:0:{}s:32:\"d5c54b37dbc5068745be803cfaddf7e3\";a:0:{}s:32:\"570865fab0d64f02c145fca7310e624a\";a:0:{}s:32:\"4f446fb99f36b496e2e4a77b0a7d79c1\";a:0:{}s:32:\"753c6a41fabbf0a581f488eaaa0b4238\";N;s:32:\"c3ff327c524f132ebab32a89aa610fd1\";a:0:{}s:32:\"7237eb6c4f9b4640a7ecf367668ed41d\";a:0:{}s:32:\"b38143961146df449dc222646b2b39b5\";a:0:{}s:32:\"1e3c3ec6b986e400b636ea35449cc80b\";a:0:{}s:32:\"2bdf8c461897daf5f9af00e2d9479285\";a:0:{}s:32:\"ae564ae74380b7db7ba13aaa2412b799\";a:0:{}s:32:\"e6daa32b62f4d0e4a13b55365a968d72\";a:0:{}s:32:\"02c762624ce19844088f5df86ca933e8\";N;s:32:\"2c42e0bb6a39102fbb31f0703c026194\";a:0:{}s:32:\"c9824d21cc41dfc72541e95779fc8b9f\";a:0:{}s:32:\"19e24c79632bec958db8f6049beefb33\";a:0:{}s:32:\"e84b128fbb92f2bd7d4ad9142aa9caf9\";a:0:{}s:32:\"3072a3714da6d94119aeed0b385e25bb\";a:0:{}s:32:\"912cc799a60528d367c6120f29c0cd97\";a:0:{}s:32:\"9c57621ceccad3898f42ed1b307eada7\";a:0:{}s:32:\"bcb019e2ba88f19442f1686f9d80e352\";N;s:32:\"e81ab5efb925f2455da8dcc7bc646205\";a:0:{}s:32:\"0b8f784ffe1bde8540301cfe2375b41a\";a:0:{}s:32:\"40b4cfe26b0c81e52fb9677969716f37\";a:0:{}s:32:\"8eaca0b4388c6d87025f2946d12af6a3\";a:0:{}}', 'no'),
(3258, '_transient_timeout_wc_admin_report', '1587453520', 'no'),
(3259, '_transient_wc_admin_report', 'a:1:{s:32:\"43f85e3a05dc6970c9e4ce056e87e26e\";a:0:{}}', 'no'),
(3260, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1587410322', 'no'),
(3261, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(3834, '_site_transient_timeout_browser_1570add4b3e660f27835bdca50814a71', '1587627426', 'no'),
(3835, '_site_transient_browser_1570add4b3e660f27835bdca50814a71', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.113\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(3935, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1587652058', 'no'),
(3936, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4445, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587349483;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.0.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/woocommerce.4.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(4446, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587349485;s:7:\"checked\";a:5:{s:16:\"storefront-child\";s:5:\"1.0.0\";s:10:\"storefront\";s:5:\"2.5.5\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(4825, '_site_transient_timeout_theme_roots', '1587351284', 'no'),
(4826, '_site_transient_theme_roots', 'a:5:{s:16:\"storefront-child\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(4827, '_transient_timeout__woocommerce_helper_updates', '1587392684', 'no'),
(4828, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1587349484;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(4829, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1587392704', 'no'),
(4830, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(4878, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(4889, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1200x1200.png\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 8, '_edit_lock', '1586969499:1'),
(14, 8, '_wp_page_template', 'front-page.php'),
(37, 15, '_edit_last', '1'),
(38, 15, 'total_sales', '0'),
(39, 15, '_tax_status', 'taxable'),
(40, 15, '_tax_class', ''),
(41, 15, '_manage_stock', 'no'),
(42, 15, '_backorders', 'no'),
(43, 15, '_sold_individually', 'no'),
(44, 15, '_virtual', 'no'),
(45, 15, '_downloadable', 'no'),
(46, 15, '_download_limit', '-1'),
(47, 15, '_download_expiry', '-1'),
(48, 15, '_stock', NULL),
(49, 15, '_stock_status', 'instock'),
(50, 15, '_wc_average_rating', '0'),
(51, 15, '_wc_review_count', '0'),
(52, 15, '_product_version', '4.0.1'),
(53, 15, '_edit_lock', '1585384571:1'),
(56, 17, '_wp_attached_file', '2020/03/cropped-logo.png'),
(57, 17, '_wp_attachment_context', 'custom-logo'),
(58, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:271;s:6:\"height\";i:63;s:4:\"file\";s:24:\"2020/03/cropped-logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-150x63.png\";s:5:\"width\";i:150;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-100x63.png\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-100x63.png\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 19, '_wp_attached_file', '2020/03/logo-1.png'),
(61, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:25;s:4:\"file\";s:18:\"2020/03/logo-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-100x25.png\";s:5:\"width\";i:100;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-100x25.png\";s:5:\"width\";i:100;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 20, '_wp_attached_file', '2020/03/cropped-logo-1.png'),
(63, 20, '_wp_attachment_context', 'custom-logo'),
(64, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:106;s:6:\"height\";i:25;s:4:\"file\";s:26:\"2020/03/cropped-logo-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1-100x25.png\";s:5:\"width\";i:100;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1-100x25.png\";s:5:\"width\";i:100;s:6:\"height\";i:25;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 21, '_wp_trash_meta_status', 'publish'),
(67, 21, '_wp_trash_meta_time', '1585574096'),
(68, 23, '_edit_last', '1'),
(69, 23, '_wp_page_template', 'login.php'),
(70, 23, '_edit_lock', '1587277634:1'),
(80, 26, '_edit_last', '1'),
(81, 26, '_edit_lock', '1585585977:1'),
(82, 26, '_wp_page_template', 'default'),
(83, 28, '_edit_last', '1'),
(84, 28, '_wp_page_template', 'default'),
(85, 28, '_edit_lock', '1585743455:1'),
(86, 30, '_edit_last', '1'),
(87, 30, '_wp_page_template', 'default'),
(88, 30, '_edit_lock', '1585586345:1'),
(89, 32, '_menu_item_type', 'post_type'),
(90, 32, '_menu_item_menu_item_parent', '0'),
(91, 32, '_menu_item_object_id', '30'),
(92, 32, '_menu_item_object', 'page'),
(93, 32, '_menu_item_target', ''),
(94, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 32, '_menu_item_xfn', ''),
(96, 32, '_menu_item_url', ''),
(98, 33, '_menu_item_type', 'post_type'),
(99, 33, '_menu_item_menu_item_parent', '0'),
(100, 33, '_menu_item_object_id', '28'),
(101, 33, '_menu_item_object', 'page'),
(102, 33, '_menu_item_target', ''),
(103, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 33, '_menu_item_xfn', ''),
(105, 33, '_menu_item_url', ''),
(107, 34, '_menu_item_type', 'post_type'),
(108, 34, '_menu_item_menu_item_parent', '0'),
(109, 34, '_menu_item_object_id', '26'),
(110, 34, '_menu_item_object', 'page'),
(111, 34, '_menu_item_target', ''),
(112, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 34, '_menu_item_xfn', ''),
(114, 34, '_menu_item_url', ''),
(143, 38, '_menu_item_type', 'post_type'),
(144, 38, '_menu_item_menu_item_parent', '0'),
(145, 38, '_menu_item_object_id', '23'),
(146, 38, '_menu_item_object', 'page'),
(147, 38, '_menu_item_target', ''),
(148, 38, '_menu_item_classes', 'a:1:{i:0;s:21:\"MainHeader-Login-Link\";}'),
(149, 38, '_menu_item_xfn', ''),
(150, 38, '_menu_item_url', ''),
(152, 39, '_edit_last', '1'),
(153, 39, '_wp_page_template', 'signup.php'),
(154, 39, '_edit_lock', '1586879211:1'),
(155, 41, '_menu_item_type', 'post_type'),
(156, 41, '_menu_item_menu_item_parent', '0'),
(157, 41, '_menu_item_object_id', '39'),
(158, 41, '_menu_item_object', 'page'),
(159, 41, '_menu_item_target', ''),
(160, 41, '_menu_item_classes', 'a:1:{i:0;s:21:\"MainHeader-Login-Link\";}'),
(161, 41, '_menu_item_xfn', ''),
(162, 41, '_menu_item_url', ''),
(165, 54, '_wp_attached_file', '2020/04/google.png'),
(166, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:18:\"2020/04/google.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"google-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"google-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 77, '_edit_last', '1'),
(204, 77, '_edit_lock', '1585979650:1'),
(205, 77, '_wp_page_template', 'addquestion.php'),
(206, 79, '_menu_item_type', 'post_type'),
(207, 79, '_menu_item_menu_item_parent', '0'),
(208, 79, '_menu_item_object_id', '77'),
(209, 79, '_menu_item_object', 'page'),
(210, 79, '_menu_item_target', ''),
(211, 79, '_menu_item_classes', 'a:3:{i:0;s:17:\"MainHeader-Button\";i:1;s:13:\"PrimaryButton\";i:2;s:35:\"MainHeader-ButtonPrimaryButtonhover\";}'),
(212, 79, '_menu_item_xfn', ''),
(213, 79, '_menu_item_url', ''),
(215, 8, '_edit_last', '1'),
(252, 95, '_edit_last', '1'),
(253, 95, '_edit_lock', '1586624391:1'),
(254, 95, '_wp_page_template', 'front-page.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2020-03-25 16:29:57', '2020-03-25 16:29:57', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-03-25 16:29:57', '2020-03-25 16:29:57', '', 0, 'http://localhost/woocommerce/wp-content/uploads/2020/03/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2020-03-26 08:20:13', '2020-03-26 08:20:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-15 16:48:04', '2020-04-15 16:48:04', '', 0, 'http://localhost/woocommerce/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-03-26 08:20:13', '2020-03-26 08:20:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-26 08:20:13', '2020-03-26 08:20:13', '', 8, 'http://localhost/woocommerce/2020/03/26/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-03-28 08:36:07', '0000-00-00 00:00:00', '', 'product', '', 'draft', 'open', 'closed', '', '', '', '', '2020-03-28 08:36:10', '2020-03-28 08:36:10', '', 0, 'http://localhost/woocommerce/?post_type=product&#038;p=15', 0, 'product', '', 0),
(17, 1, '2020-03-30 13:09:33', '2020-03-30 13:09:33', 'http://localhost/woocommerce/wp-content/uploads/2020/03/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-03-30 13:09:33', '2020-03-30 13:09:33', '', 0, 'http://localhost/woocommerce/wp-content/uploads/2020/03/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-03-30 13:14:38', '2020-03-30 13:14:38', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2020-03-31 12:09:17', '2020-03-31 12:09:17', '', 23, 'http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2020-03-30 13:14:43', '2020-03-30 13:14:43', 'http://localhost/woocommerce/wp-content/uploads/2020/03/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-03-30 13:14:43', '2020-03-30 13:14:43', '', 0, 'http://localhost/woocommerce/wp-content/uploads/2020/03/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2020-03-30 13:14:55', '2020-03-30 13:14:55', '{\n    \"storefront-child::custom_logo\": {\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-30 13:14:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7599a61e-1e19-4bd0-8f51-819d8b1fbd5f', '', '', '2020-03-30 13:14:55', '2020-03-30 13:14:55', '', 0, 'http://localhost/woocommerce/7599a61e-1e19-4bd0-8f51-819d8b1fbd5f/', 0, 'customize_changeset', '', 0),
(23, 1, '2020-03-30 14:52:03', '2020-03-30 14:52:03', '', 'Log in', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-04-03 14:35:03', '2020-04-03 14:35:03', '', 0, 'http://localhost/woocommerce/?page_id=23', 0, 'page', '', 0),
(24, 1, '2020-03-30 14:52:03', '2020-03-30 14:52:03', '', 'Login', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-03-30 14:52:03', '2020-03-30 14:52:03', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-03-30 16:35:13', '2020-03-30 16:35:13', '', 'DEVELOPMENT', '', 'publish', 'closed', 'closed', '', 'development', '', '', '2020-03-30 16:35:13', '2020-03-30 16:35:13', '', 0, 'http://localhost/woocommerce/?page_id=26', 0, 'page', '', 0),
(27, 1, '2020-03-30 16:35:13', '2020-03-30 16:35:13', '', 'DEVELOPMENT', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-03-30 16:35:13', '2020-03-30 16:35:13', '', 26, 'http://localhost/woocommerce/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-03-30 16:35:35', '2020-03-30 16:35:35', '', 'BACKEND DEVELOPMENT', '', 'publish', 'closed', 'closed', '', 'backend-development', '', '', '2020-04-01 12:11:32', '2020-04-01 12:11:32', '', 0, 'http://localhost/woocommerce/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-03-30 16:35:35', '2020-03-30 16:35:35', '', 'BACKEND DEVELOPMENT', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-03-30 16:35:35', '2020-03-30 16:35:35', '', 28, 'http://localhost/woocommerce/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-03-30 16:35:53', '2020-03-30 16:35:53', '', 'FRONTEND DEVELOPMENT', '', 'publish', 'closed', 'closed', '', 'frontend-development', '', '', '2020-03-30 16:35:53', '2020-03-30 16:35:53', '', 0, 'http://localhost/woocommerce/?page_id=30', 0, 'page', '', 0),
(31, 1, '2020-03-30 16:35:53', '2020-03-30 16:35:53', '', 'FRONTEND DEVELOPMENT', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-03-30 16:35:53', '2020-03-30 16:35:53', '', 30, 'http://localhost/woocommerce/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-03-30 16:36:21', '2020-03-30 16:36:21', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-04-02 11:11:08', '2020-04-02 11:11:08', '', 0, 'http://localhost/woocommerce/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2020-03-30 16:36:22', '2020-03-30 16:36:22', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-04-02 11:11:08', '2020-04-02 11:11:08', '', 0, 'http://localhost/woocommerce/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2020-03-30 16:36:22', '2020-03-30 16:36:22', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-04-02 11:11:08', '2020-04-02 11:11:08', '', 0, 'http://localhost/woocommerce/?p=34', 1, 'nav_menu_item', '', 0),
(38, 1, '2020-03-31 05:58:35', '2020-03-31 05:58:35', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-04-08 10:22:21', '2020-04-08 10:22:21', '', 0, 'http://localhost/woocommerce/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2020-03-31 06:48:42', '2020-03-31 06:48:42', '', 'Sign up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2020-04-14 15:27:30', '2020-04-14 15:27:30', '', 0, 'http://localhost/woocommerce/?page_id=39', 0, 'page', '', 0),
(40, 1, '2020-03-31 06:48:42', '2020-03-31 06:48:42', '', 'Sign up', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-03-31 06:48:42', '2020-03-31 06:48:42', '', 39, 'http://localhost/woocommerce/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-03-31 06:49:19', '2020-03-31 06:49:19', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-04-08 10:22:21', '2020-04-08 10:22:21', '', 0, 'http://localhost/woocommerce/?p=41', 2, 'nav_menu_item', '', 0),
(44, 1, '2020-03-31 12:10:33', '2020-03-31 12:10:33', '<h4 style=\"text-align: center;\"><img class=\"alignnone size-full wp-image-19 aligncenter\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\" alt=\"\" width=\"108\" height=\"25\" />\r\n<strong>Welcome back!\r\n\r\n</strong></h4>', 'Login', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-03-31 12:10:33', '2020-03-31 12:10:33', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-04-01 05:39:29', '2020-04-01 05:39:29', '<div class=\"Modal-Window LoginModal-Window\"><img class=\"LoginModal-Logo\" src=\"/images/logo.svg\"><h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/facebook-fill.svg\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>', 'Login', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 05:39:29', '2020-04-01 05:39:29', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-04-01 05:46:36', '2020-04-01 05:46:36', '<div class=\"Modal-Window LoginModal-Window\"><img class=\"LoginModal-Logo\" src=\"/images/logo.svg\"><h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/facebook-fill.svg\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>', '', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 05:46:36', '2020-04-01 05:46:36', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-04-01 05:47:08', '2020-04-01 05:47:08', '<div class=\"Modal-Window LoginModal-Window\"><img class=\"LoginModal-Logo\" src=\"/images/logo.svg\"><h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/facebook-fill.svg\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 05:47:08', '2020-04-01 05:47:08', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-04-01 12:57:22', '2020-04-01 12:57:22', '', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2020-04-01 12:57:22', '2020-04-01 12:57:22', '', 23, 'http://localhost/woocommerce/23-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2020-04-01 06:34:18', '2020-04-01 06:34:18', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\"><img class=\"LoginModal-Logo\" src=\"/images/logo.svg\"><h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/facebook-fill.svg\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 06:34:18', '2020-04-01 06:34:18', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-04-01 06:36:53', '2020-04-01 06:36:53', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\">\r\n<img class=\"LoginModal-Logo\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\">\r\n<h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/facebook-fill.svg\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 06:36:53', '2020-04-01 06:36:53', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-04-01 06:37:41', '2020-04-01 06:37:41', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\">\r\n<img class=\"LoginModal-Logo\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\" width=\"100%\" height=\"auto\">\r\n<h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/facebook-fill.svg\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 06:37:41', '2020-04-01 06:37:41', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-04-01 06:46:00', '2020-04-01 06:46:00', '', 'google', '', 'inherit', 'open', 'closed', '', 'google', '', '', '2020-04-01 06:46:00', '2020-04-01 06:46:00', '', 23, 'http://localhost/woocommerce/wp-content/uploads/2020/04/google.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2020-04-01 06:46:32', '2020-04-01 06:46:32', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\">\r\n<img class=\"LoginModal-Logo\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\" width=\"100%\" height=\"auto\">\r\n<h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\">\r\n<img class=\"AuthButton-Icon\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 06:46:32', '2020-04-01 06:46:32', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-04-01 06:49:21', '2020-04-01 06:49:21', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\">\r\n<img class=\"LoginModal-Logo\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\" width=\"100%\" height=\"auto\">\r\n<h4 class=\"LoginModal-Title\">Welcome back!</h4><div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\">\r\n<img src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" alt=\"\" width=\"128\" height=\"128\" class=\"alignnone size-full wp-image-54\" />\r\n<img class=\"AuthButton-Icon\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" style=\"display: none !important;\">Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"AuthButton-Icon\" src=\"/images/icons/logos/google.svg\">Log in with Google</button><div class=\"LoginModal-Seperator\"><div class=\"LoginModal-Seperator-Label\">or</div></div></div><form class=\"_login-form\"><div class=\"LoginModal-Form\"><label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\"><div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\" style=\"\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div></label><label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\"><div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\" style=\"\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div></label><div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div></div><div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div></form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 06:49:21', '2020-04-01 06:49:21', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-04-01 06:51:14', '2020-04-01 06:51:14', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\">\r\n\r\n<img class=\"LoginModal-Logo\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\" width=\"100%\" height=\"auto\" />\r\n<h4 class=\"LoginModal-Title\">Welcome back!</h4>\r\n<div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\">\r\n<img class=\"alignnone size-full wp-image-54\" style=\"display: none !important;\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<img class=\"AuthButton-Icon\" style=\"display: none !important;\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" />Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"alignnone size-full wp-image-54\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" alt=\"\" width=\"128\" height=\"128\" />Log in with Google</button>\r\n<div class=\"LoginModal-Seperator\">\r\n<div class=\"LoginModal-Seperator-Label\">or</div>\r\n</div>\r\n</div>\r\n<form class=\"_login-form\">\r\n<div class=\"LoginModal-Form\">\r\n\r\n<label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\" /></label>\r\n<div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div>\r\n<label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\" /></label>\r\n<div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div>\r\n&nbsp;\r\n<div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div>\r\n</div>\r\n<div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div>\r\n</form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 06:51:14', '2020-04-01 06:51:14', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-04-01 07:10:10', '2020-04-01 07:10:10', '<div class=\"Modal-Cover.LoginModal-Cover\">\r\n<div class=\"Modal-Window LoginModal-Window\">\r\n\r\n<img class=\"LoginModal-Logo\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/03/logo-1.png\" width=\"100%\" height=\"auto\" />\r\n<h4 class=\"LoginModal-Title\">Welcome back!</h4>\r\n<div class=\"LoginModal-Form\"><button class=\"_facebook-login-link LoginModal-AuthButton AuthButton facebook icon\">\r\n<img class=\"alignnone size-full wp-image-54\" style=\"display: none !important;\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<img class=\"AuthButton-Icon\" style=\"display: none !important;\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" />Log in with Facebook</button><button class=\"_google-login-link LoginModal-AuthButton AuthButton google icon\"><img class=\"alignnone size-full wp-image-54\" style=\"display: none !important;\" src=\"http://localhost/woocommerce/wp-content/uploads/2020/04/google.png\" alt=\"\" width=\"128\" height=\"128\" />Log in with Google</button>\r\n<div class=\"LoginModal-Seperator\">\r\n<div class=\"LoginModal-Seperator-Label\">or</div>\r\n</div>\r\n</div>\r\n<form class=\"_login-form\">\r\n<div class=\"LoginModal-Form\">\r\n<label class=\"FancyInput _login-field LoginModal-Form-Field\"><input class=\"_login-input FancyInput-Field\" type=\"text\" /></label>\r\n<div class=\"FancyInput-Placeholder\"><span class=\"_login-default-text\">Email or Username</span><span class=\"_login-invalid-text\" style=\"display: none;\">Email or Username not registered</span><span class=\"_login-required-text\" style=\"display: none;\">Email or Username required</span></div>\r\n<label class=\"FancyInput _current-password-field LoginModal-Form-Field\"><input class=\"_current-password-input FancyInput-Field\" type=\"password\" /></label>\r\n<div class=\"FancyInput-Placeholder\"><span class=\"_current-password-default-text\">Password</span><span class=\"_current-password-invalid-text\" style=\"display: none;\">Password incorrect</span><span class=\"_current-password-required-text\" style=\"display: none;\">Password required</span></div>\r\n&nbsp;\r\n<div class=\"LoginModal-FormText\"><a class=\"_reset-password-link LoginModal-FormLink\">Reset your password</a></div>\r\n</div>\r\n<div class=\"LoginModal-Footer\"><a class=\"_register-swap-link LoginModal-SwapLink left\">Create an account</a><button class=\"LoginModal-SubmitLink right\" type=\"submit\">Login</button></div>\r\n</form></div>\r\n</div>', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 07:10:10', '2020-04-01 07:10:10', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-04-01 08:31:21', '2020-04-01 08:31:21', '[woocommerce_my_account]', 'Sign up', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-04-01 08:31:21', '2020-04-01 08:31:21', '', 39, 'http://localhost/woocommerce/39-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-04-01 09:17:12', '2020-04-01 09:17:12', '', 'Sign up', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-04-01 09:17:12', '2020-04-01 09:17:12', '', 39, 'http://localhost/woocommerce/39-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-04-01 12:10:44', '2020-04-01 12:10:44', '[woocommerce_my_account]', 'BACKEND DEVELOPMENT', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-04-01 12:10:44', '2020-04-01 12:10:44', '', 28, 'http://localhost/woocommerce/28-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-04-01 12:11:32', '2020-04-01 12:11:32', '', 'BACKEND DEVELOPMENT', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-04-01 12:11:32', '2020-04-01 12:11:32', '', 28, 'http://localhost/woocommerce/28-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-04-01 12:20:04', '2020-04-01 12:20:04', '[woocommerce_checkout]', 'Sign up', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2020-04-01 12:20:04', '2020-04-01 12:20:04', '', 39, 'http://localhost/woocommerce/39-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2020-04-01 12:58:01', '2020-04-01 12:58:01', '', 'Log in', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-04-01 12:58:01', '2020-04-01 12:58:01', '', 23, 'http://localhost/woocommerce/23-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-04-03 16:57:54', '2020-04-03 16:57:54', '', 'Add Question', '', 'publish', 'closed', 'closed', '', 'add-question', '', '', '2020-04-04 05:54:09', '2020-04-04 05:54:09', '', 0, 'http://localhost/woocommerce/?page_id=77', 0, 'page', '', 0),
(78, 1, '2020-04-03 16:57:54', '2020-04-03 16:57:54', '', 'Add Question', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2020-04-03 16:57:54', '2020-04-03 16:57:54', '', 77, 'http://localhost/woocommerce/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-04-03 17:01:00', '2020-04-03 17:01:00', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2020-04-08 10:22:21', '2020-04-08 10:22:21', '', 0, 'http://localhost/woocommerce/?p=79', 3, 'nav_menu_item', '', 0),
(85, 1, '2020-04-08 08:56:15', '2020-04-08 08:56:15', 'welcome', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-04-08 08:56:15', '2020-04-08 08:56:15', '', 8, 'http://localhost/woocommerce/8-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-04-09 07:08:16', '2020-04-09 07:08:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-04-09 07:08:16', '2020-04-09 07:08:16', '', 8, 'http://localhost/woocommerce/8-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-04-11 14:13:38', '2020-04-11 14:13:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2020-04-11 14:13:38', '2020-04-11 14:13:38', '', 8, 'http://localhost/woocommerce/8-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2020-04-11 16:48:23', '2020-04-11 16:48:23', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-04-11 17:02:10', '2020-04-11 17:02:10', '', 0, 'http://localhost/woocommerce/?page_id=95', 0, 'page', '', 0),
(96, 1, '2020-04-11 16:48:23', '2020-04-11 16:48:23', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2020-04-11 16:48:23', '2020-04-11 16:48:23', '', 95, 'http://localhost/woocommerce/95-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-04-16 14:27:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-16 14:27:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/woocommerce/?p=102', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(17, 'Main Menu', 'main-menu', 0),
(18, 'Primary', 'primary', 0),
(19, 'Dropdown menu', 'dropdown-menu', 0),
(20, 'Drag and drop', 'drag-and-drop', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 2, 0),
(15, 15, 0),
(32, 17, 0),
(33, 17, 0),
(34, 17, 0),
(38, 18, 0),
(41, 18, 0),
(79, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(17, 17, 'nav_menu', '', 0, 3),
(18, 18, 'nav_menu', '', 0, 3),
(19, 19, 'nav_menu', '', 0, 0),
(20, 20, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:30:{s:64:\"9f49ee2842436753f9ac80311a83e853dda04b25d36d04a49d907f803d87e8a8\";a:4:{s:10:\"expiration\";i:1587484767;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1586275167;}s:64:\"b19dea8d2146c5a2d6d18c9c25221ad0cf5768110d601c03c9d73e5b529d50ca\";a:4:{s:10:\"expiration\";i:1587550361;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586340761;}s:64:\"4f3ee95fd183742ea834930049db23653500c46dd7ba661e02cf24562ce6917f\";a:4:{s:10:\"expiration\";i:1587725337;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.92 Safari/537.36\";s:5:\"login\";i:1586515737;}s:64:\"eaf38c67fced03535a69e9019fff709aa1bc317b99a9476a62f68ce8b42aec17\";a:4:{s:10:\"expiration\";i:1587366953;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587194153;}s:64:\"0e2ff0844fe7f109e4a5e563ba22f56758f8d0def342ff5ad883f3b0bd609aa3\";a:4:{s:10:\"expiration\";i:1587390837;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587218037;}s:64:\"899f13bff5c9dd331671c15cd8d1f9f987867e21b0e723eecce142fb9dfe1374\";a:4:{s:10:\"expiration\";i:1587392124;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587219324;}s:64:\"4e31156bce43d7b9caecaec6b9f6f6e5d2c200d4368b100e4a8cf52a1aff54a6\";a:4:{s:10:\"expiration\";i:1587392139;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587219339;}s:64:\"b668d40aaafc235c2b39a03943e662f2b6ddf9583a28c4df6e548e0f1ab67daf\";a:4:{s:10:\"expiration\";i:1587396049;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587223249;}s:64:\"e5061ce950c9090e2bc916ebbf7ce1000e594315556558b1029c0bac754e169b\";a:4:{s:10:\"expiration\";i:1587444347;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587271547;}s:64:\"06ed9e9493da7b3800d6bc30df362a312d591e983fcfab677e0f6f8859c42d82\";a:4:{s:10:\"expiration\";i:1587446153;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587273353;}s:64:\"48438e5e68d98206c68dca52e0702a3e9c6910e86909722862adf141a35748fb\";a:4:{s:10:\"expiration\";i:1587451315;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587278515;}s:64:\"84503ddf28c3beeda208a334c5aa8d93c4c1abf7cb3f848b4738d39b78e55807\";a:4:{s:10:\"expiration\";i:1587456205;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587283405;}s:64:\"cd94cb9f5540a96f1cb84544d473820ecdeb0d416b642c019220ed75940bb50a\";a:4:{s:10:\"expiration\";i:1587456826;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587284026;}s:64:\"728e3458cedecfadbb5efcf1b80a434fc6e2dac160304225cd95054c63245f43\";a:4:{s:10:\"expiration\";i:1587462103;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587289303;}s:64:\"a663a85d97f223637fe1a6ab6a00d86713c38060f83500e2294cf878975a07d7\";a:4:{s:10:\"expiration\";i:1587463629;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587290829;}s:64:\"6b41da73410879094f2a311e4f3ea16fa150b6baa41c31093befc87340f14633\";a:4:{s:10:\"expiration\";i:1587467657;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587294857;}s:64:\"9cf852774592d7d90ec323fc869fa968bf2ccf63b11984e66c3e70d66304412e\";a:4:{s:10:\"expiration\";i:1587472347;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587299547;}s:64:\"ce5461a2d9c6d9a6bdb0698e69b3f327d07fc5a3c1d9bfea5f543ee5c01da57a\";a:4:{s:10:\"expiration\";i:1587472348;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587299548;}s:64:\"42c24331fff27c7139c5aa53378c6a897ed9d55da6ad36b9ec83e0e8071b28bd\";a:4:{s:10:\"expiration\";i:1587475755;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587302955;}s:64:\"39ab658dac7cf30f5b4c9ed264b3738b15fe244ec1c1c81850d38b3126343cd3\";a:4:{s:10:\"expiration\";i:1587482765;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587309965;}s:64:\"6c82c7f58437b40e2ef13569ba80023cc5174de61079be995e79237ca8664ebb\";a:4:{s:10:\"expiration\";i:1587489695;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587316895;}s:64:\"9a35c06e7a5c61fab9af06d741c6dcb2391dcd1859aaeef18a60966ca2f868fb\";a:4:{s:10:\"expiration\";i:1587522295;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587349495;}s:64:\"6151c4d20e6a60912652e6fabe2a7bb712539a17ff2ed6924f0ceaed2999350d\";a:4:{s:10:\"expiration\";i:1587524428;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587351628;}s:64:\"332947a493e6ea42b90c04604509a3b8ab9fcc14c3afeba9c256a3edb3db6cdf\";a:4:{s:10:\"expiration\";i:1587524446;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587351646;}s:64:\"35d17ecaaeb980dda026b27d697c5ff711f6ee8c73ef03004886a014d2e51f5f\";a:4:{s:10:\"expiration\";i:1587525107;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587352307;}s:64:\"3b73cf85e2e15e761137e44786a93d3adb19bbff18f0b7ea15ac3f4fffaf3890\";a:4:{s:10:\"expiration\";i:1587525455;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587352655;}s:64:\"9c10bde9bec7a4552917d248dab2415a936c18697c2be0ca10aa8ff164ffabe3\";a:4:{s:10:\"expiration\";i:1587525463;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587352663;}s:64:\"f995fd0f69bc88ca5c30370099c83f9992bdaccf0fce0226dfc98ad2efd50077\";a:4:{s:10:\"expiration\";i:1587534777;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587361977;}s:64:\"f51e5dd4ccc5cb385439f5abd7d70eed173dcfc11cc3ef124ca3163dfc218497\";a:4:{s:10:\"expiration\";i:1587538160;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587365360;}s:64:\"c1ce77a9e6d01253c7a21d571c33d8f1e369181e7ee28a5222949626bc7d3b1a\";a:4:{s:10:\"expiration\";i:1587538742;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587365942;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '102'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:CYjaRXI85ySBhmNZ2Bx6y2IB'),
(19, 1, 'wc_last_active', '1587340800'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1586777318'),
(25, 1, 'dismissed_install_notice', '1'),
(33, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(44, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(45, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(47, 1, 'nav_menu_recently_edited', '18');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B9nzSjjl.h54PPHlEJVJ425wc3at930', 'admin', 'ketakeezambare@gmail.com', '', '2020-03-25 11:38:06', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(15, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(19, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:712:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"ketakeezambare@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1587522302);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3740;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4902;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

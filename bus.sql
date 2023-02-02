-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 02-Fev-2023 às 17:46
-- Versão do servidor: 5.7.33
-- versão do PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-08-22 12:38:15', '2022-08-22 15:38:15', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bus.test', 'yes'),
(2, 'home', 'http://bus.test', 'yes'),
(3, 'blogname', 'Bus - Horários de Ônibus', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fabiomelodev@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"bus-hour/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"bus-hour/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"bus-hour/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"bus-hour/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"bus-hour/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"bus-hour/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"bus-hour/([^/]+)/embed/?$\";s:41:\"index.php?bus-hour=$matches[1]&embed=true\";s:29:\"bus-hour/([^/]+)/trackback/?$\";s:35:\"index.php?bus-hour=$matches[1]&tb=1\";s:37:\"bus-hour/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?bus-hour=$matches[1]&paged=$matches[2]\";s:44:\"bus-hour/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?bus-hour=$matches[1]&cpage=$matches[2]\";s:33:\"bus-hour/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?bus-hour=$matches[1]&page=$matches[2]\";s:25:\"bus-hour/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"bus-hour/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"bus-hour/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"bus-hour/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"bus-hour/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"bus-hour/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-bootstrap-starter', 'yes'),
(41, 'stylesheet', 'wp-bootstrap-starter-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1676734695', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1675363095;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1675395495;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675395526;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1675438695;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675438706;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675438710;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1675784295;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(146, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(148, 'user_count', '1', 'no'),
(149, 'db_upgraded', '', 'yes'),
(151, 'can_compress_scripts', '1', 'no'),
(156, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.1\";s:7:\"version\";s:3:\"6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.3-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-rollback-1.zip\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:5:\"6.0.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1675359526;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(159, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"fabiomelodev@gmail.com\";s:7:\"version\";s:5:\"6.0.1\";s:9:\"timestamp\";i:1661182736;}', 'no'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'finished_updating_comment_type', '1', 'yes'),
(167, 'new_admin_email', 'fabiomelodev@gmail.com', 'yes'),
(174, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661182787;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(175, 'current_theme', 'WP Bootstrap Starter Child', 'yes'),
(176, 'theme_mods_twentytwentytwo', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661182791;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(177, 'theme_switched', '', 'yes'),
(179, 'theme_mods_wp-bootstrap-starter-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(181, 'triggered_welcomet', '1', 'yes'),
(191, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675359529;s:7:\"checked\";a:2:{s:26:\"wp-bootstrap-starter-child\";s:5:\"1.0.0\";s:20:\"wp-bootstrap-starter\";s:5:\"3.3.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(208, 'recovery_mode_email_last_sent', '1661184882', 'yes'),
(384, 'acf_version', '5.7.9', 'yes'),
(389, 'options_onibus_0_numero', 'C202', 'no'),
(390, '_options_onibus_0_numero', 'field_63042b3f9d870', 'no'),
(391, 'options_onibus_0_link', 'a:3:{s:5:\"title\";s:4:\"C202\";s:3:\"url\";s:30:\"http://bus.test/bus-hour/c202/\";s:6:\"target\";s:0:\"\";}', 'no'),
(392, '_options_onibus_0_link', 'field_63042b499d871', 'no'),
(393, 'options_onibus_0_terminal', 'Central', 'no'),
(394, '_options_onibus_0_terminal', 'field_63042b6ea969e', 'no'),
(419, 'options_onibus', '6', 'no'),
(420, '_options_onibus', 'field_63042b349d86f', 'no'),
(466, 'options_onibus_1_numero', 'C205', 'no'),
(467, '_options_onibus_1_numero', 'field_63042b3f9d870', 'no'),
(468, 'options_onibus_1_link', 'a:3:{s:5:\"title\";s:4:\"C205\";s:3:\"url\";s:30:\"http://bus.test/bus-hour/c205/\";s:6:\"target\";s:0:\"\";}', 'no'),
(469, '_options_onibus_1_link', 'field_63042b499d871', 'no'),
(470, 'options_onibus_1_terminal', 'Central', 'no'),
(471, '_options_onibus_1_terminal', 'field_63042b6ea969e', 'no'),
(508, 'options_onibus_2_numero', 'E109', 'no'),
(509, '_options_onibus_2_numero', 'field_63042b3f9d870', 'no'),
(510, 'options_onibus_2_link', 'a:3:{s:5:\"title\";s:4:\"E109\";s:3:\"url\";s:30:\"http://bus.test/bus-hour/e109/\";s:6:\"target\";s:0:\"\";}', 'no'),
(511, '_options_onibus_2_link', 'field_63042b499d871', 'no'),
(512, 'options_onibus_2_terminal', 'Estudantes', 'no'),
(513, '_options_onibus_2_terminal', 'field_63042b6ea969e', 'no'),
(514, 'options_onibus_3_numero', 'E112', 'no'),
(515, '_options_onibus_3_numero', 'field_63042b3f9d870', 'no'),
(516, 'options_onibus_3_link', 'a:3:{s:5:\"title\";s:4:\"E112\";s:3:\"url\";s:30:\"http://bus.test/bus-hour/e112/\";s:6:\"target\";s:0:\"\";}', 'no'),
(517, '_options_onibus_3_link', 'field_63042b499d871', 'no'),
(518, 'options_onibus_3_terminal', 'Estudantes', 'no'),
(519, '_options_onibus_3_terminal', 'field_63042b6ea969e', 'no'),
(525, 'options_onibus_4_numero', 'E209', 'no'),
(526, '_options_onibus_4_numero', 'field_63042b3f9d870', 'no'),
(527, 'options_onibus_4_link', 'a:3:{s:5:\"title\";s:4:\"E209\";s:3:\"url\";s:30:\"http://bus.test/bus-hour/e209/\";s:6:\"target\";s:0:\"\";}', 'no'),
(528, '_options_onibus_4_link', 'field_63042b499d871', 'no'),
(529, 'options_onibus_4_terminal', 'Estudantes', 'no'),
(530, '_options_onibus_4_terminal', 'field_63042b6ea969e', 'no'),
(531, 'options_onibus_5_numero', 'E305', 'no'),
(532, '_options_onibus_5_numero', 'field_63042b3f9d870', 'no'),
(533, 'options_onibus_5_link', 'a:3:{s:5:\"title\";s:4:\"E305\";s:3:\"url\";s:30:\"http://bus.test/bus-hour/e305/\";s:6:\"target\";s:0:\"\";}', 'no'),
(534, '_options_onibus_5_link', 'field_63042b499d871', 'no'),
(535, 'options_onibus_5_terminal', 'Estudantes', 'no'),
(536, '_options_onibus_5_terminal', 'field_63042b6ea969e', 'no'),
(555, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(588, 'category_children', 'a:0:{}', 'yes'),
(1164, '_transient_is_multi_author', '0', 'yes'),
(1194, '_transient_timeout_global_styles_wp-bootstrap-starter-child', '1675359586', 'no'),
(1195, '_transient_global_styles_wp-bootstrap-starter-child', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(1196, '_transient_timeout_global_styles_svg_filters_wp-bootstrap-starter-child', '1675359586', 'no'),
(1197, '_transient_global_styles_svg_filters_wp-bootstrap-starter-child', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(1199, '_transient_timeout_acf_plugin_updates', '1675532328', 'no'),
(1200, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.9\";}}', 'no'),
(1201, '_site_transient_timeout_theme_roots', '1675361329', 'no'),
(1202, '_site_transient_theme_roots', 'a:2:{s:26:\"wp-bootstrap-starter-child\";s:7:\"/themes\";s:20:\"wp-bootstrap-starter\";s:7:\"/themes\";}', 'no'),
(1203, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1675359530;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.9\";}}', 'no'),
(1204, '_site_transient_timeout_php_check_4de7e9af3f748ee5158089c9fe028235', '1675964331', 'no'),
(1205, '_site_transient_php_check_4de7e9af3f748ee5158089c9fe028235', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_lock', '1661182592:1'),
(10, 9, '_edit_lock', '1661220730:1'),
(11, 12, '_edit_lock', '1661220788:1'),
(12, 14, '_edit_lock', '1661217357:1'),
(13, 16, '_edit_last', '1'),
(14, 16, '_edit_lock', '1661220570:1'),
(15, 21, '_edit_last', '1'),
(16, 21, '_edit_lock', '1661740651:1'),
(17, 22, '_edit_lock', '1661225472:1'),
(18, 22, '_edit_last', '1'),
(19, 22, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 04:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(20, 22, '_dia_util', 'field_63042c3dadd30'),
(21, 22, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(22, 22, '_sabado', 'field_63042c4eadd31'),
(23, 22, 'domingo', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 00:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(24, 22, '_domingo', 'field_63042c52add32'),
(25, 26, '_menu_item_type', 'post_type'),
(26, 26, '_menu_item_menu_item_parent', '0'),
(27, 26, '_menu_item_object_id', '5'),
(28, 26, '_menu_item_object', 'page'),
(29, 26, '_menu_item_target', ''),
(30, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 26, '_menu_item_xfn', ''),
(32, 26, '_menu_item_url', ''),
(33, 26, '_menu_item_orphaned', '1661219963'),
(34, 27, '_menu_item_type', 'post_type'),
(35, 27, '_menu_item_menu_item_parent', '0'),
(36, 27, '_menu_item_object_id', '14'),
(37, 27, '_menu_item_object', 'page'),
(38, 27, '_menu_item_target', ''),
(39, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 27, '_menu_item_xfn', ''),
(41, 27, '_menu_item_url', ''),
(42, 27, '_menu_item_orphaned', '1661219963'),
(43, 28, '_menu_item_type', 'post_type'),
(44, 28, '_menu_item_menu_item_parent', '0'),
(45, 28, '_menu_item_object_id', '9'),
(46, 28, '_menu_item_object', 'page'),
(47, 28, '_menu_item_target', ''),
(48, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 28, '_menu_item_xfn', ''),
(50, 28, '_menu_item_url', ''),
(51, 28, '_menu_item_orphaned', '1661219963'),
(52, 29, '_menu_item_type', 'post_type'),
(53, 29, '_menu_item_menu_item_parent', '0'),
(54, 29, '_menu_item_object_id', '12'),
(55, 29, '_menu_item_object', 'page'),
(56, 29, '_menu_item_target', ''),
(57, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 29, '_menu_item_xfn', ''),
(59, 29, '_menu_item_url', ''),
(60, 29, '_menu_item_orphaned', '1661219963'),
(61, 30, '_edit_last', '1'),
(62, 30, '_edit_lock', '1661222164:1'),
(63, 30, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 08:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 08:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 11:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 14:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 19:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 20:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 22:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 23:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n03:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 04:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 08:05 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 09:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 09:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 11:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 14:10 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 19:10 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 20:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 20:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 22:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 23:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 00:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>|'),
(64, 30, '_dia_util', 'field_63042c3dadd30'),
(65, 30, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 08:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 08:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 11:40 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 14:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 15:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 19:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 20:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 22:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho Via Santos Dummond Via Varinhas\">D</abbr></small>| 23:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n03:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 04:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 08:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 09:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 11:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 14:10 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 19:10 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 20:10 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 20:50 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 22:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 23:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 00:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>|'),
(66, 30, '_sabado', 'field_63042c4eadd31'),
(67, 30, 'domingo', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 08:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 10:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 11:45 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 13:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 15:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 16:45 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 18:25 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 20:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 22:05 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n03:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 05:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 09:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 10:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 12:35 <small class=\"text-muted\"><abbr title=\"Parque São Martivinho Via Santos Dummond\">B</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 15:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 17:35 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 19:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 21:15 <small class=\"text-muted\"><abbr title=\"Parque São Martinho via Varinhas\">C</abbr></small>| 22:55 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>| 00:30 <small class=\"text-muted\"><abbr title=\"Parque São Martinho\">A</abbr></small>|'),
(68, 30, '_domingo', 'field_63042c52add32'),
(69, 31, '_edit_last', '1'),
(70, 31, '_edit_lock', '1661220767:1'),
(71, 9, '_wp_page_template', 'template-terminal.php'),
(72, 9, '_edit_last', '1'),
(73, 9, 'modelo_terminal', 'Central'),
(74, 9, '_modelo_terminal', 'field_630436294cd97'),
(75, 11, 'modelo_terminal', 'Central'),
(76, 11, '_modelo_terminal', 'field_630436294cd97'),
(77, 12, '_wp_page_template', 'template-terminal.php'),
(78, 12, '_edit_last', '1'),
(79, 12, 'modelo_terminal', 'Estudantes'),
(80, 12, '_modelo_terminal', 'field_630436294cd97'),
(81, 33, 'modelo_terminal', 'Estudantes'),
(82, 33, '_modelo_terminal', 'field_630436294cd97'),
(83, 34, '_edit_last', '1'),
(84, 34, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 05:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 06:25 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 07:00 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 07:35 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 09:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 09:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 10:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 11:55 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 12:25 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 13:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 13:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:35 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 15:15 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 15:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:15 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 17:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 17:55 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 18:45 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 20:20 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 21:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 22:25 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 22:55 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:30 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:15 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 05:40 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 06:15 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 06:45 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 07:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 08:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 09:00 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 09:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 10:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 11:35 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 12:20 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 12:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 13:15 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 13:50 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 14:25 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:55 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 15:25 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 17:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 17:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 18:25 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 18:50 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:35 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 20:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 21:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 21:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 22:35 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:05 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:35 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 00:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>|'),
(85, 34, '_dia_util', 'field_63042c3dadd30'),
(86, 34, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 07:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 09:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 10:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 11:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 12:20 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 13:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 14:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 15:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 18:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:00 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 21:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 22:15 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 07:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 09:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 09:55 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 12:25 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 13:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 15:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 18:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 20:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 22:15 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 00:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>|'),
(87, 34, '_sabado', 'field_63042c4eadd31'),
(88, 34, 'domingo', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 07:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 09:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 10:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 11:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 12:20 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 13:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 14:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 15:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 18:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:00 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 21:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 22:15 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 07:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 09:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 09:55 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 12:25 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 13:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 14:50 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 15:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 18:10 <small class=\"text-muted\"><abbr title=\"Cidade Jardim\">B</abbr></small>| 19:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 20:30 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 22:15 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:00 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>| 00:10 <small class=\"text-muted\"><abbr title=\"Cj Santo Ângelo Via Bom Pastor\">A</abbr></small>|'),
(89, 34, '_domingo', 'field_63042c52add32'),
(90, 34, '_edit_lock', '1661740665:1'),
(91, 35, '_edit_last', '1'),
(92, 35, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(93, 35, '_dia_util', 'field_63042c3dadd30'),
(94, 35, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(95, 35, '_sabado', 'field_63042c4eadd31');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(96, 35, 'domingo', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n05:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(97, 35, '_domingo', 'field_63042c52add32'),
(98, 35, '_edit_lock', '1661740182:1'),
(99, 36, '_edit_last', '1'),
(100, 36, '_edit_lock', '1661222105:1'),
(101, 36, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(102, 36, '_dia_util', 'field_63042c3dadd30'),
(103, 36, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(104, 36, '_sabado', 'field_63042c4eadd31'),
(105, 36, 'domingo', ''),
(106, 36, '_domingo', 'field_63042c52add32'),
(107, 37, '_edit_last', '1'),
(108, 37, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n04:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n04:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(109, 37, '_dia_util', 'field_63042c3dadd30'),
(110, 37, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n04:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(111, 37, '_sabado', 'field_63042c4eadd31'),
(112, 37, 'domingo', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:15 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n04:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:05 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(113, 37, '_domingo', 'field_63042c52add32'),
(114, 37, '_edit_lock', '1661222059:1'),
(115, 38, '_edit_last', '1'),
(116, 38, 'dia_util', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n05:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:37 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:35 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n04:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 05:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 11:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:55 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 21:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:25 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(117, 38, '_dia_util', 'field_63042c3dadd30'),
(118, 38, 'sabado', '<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n06:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n04:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(119, 38, '_sabado', 'field_63042c4eadd31'),
(120, 38, 'domingo', '<strong>Domingo</strong>\r\n<strong>Ponto</strong>: A | <strong>Sentido:</strong> Ida\r\n06:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 07:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 09:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 12:10 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 15:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 17:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 19:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 23:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|\r\n\r\n&nbsp;\r\n\r\n<strong>Ponto</strong>: B | <strong>Sentido:</strong> Volta\r\n04:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 06:45 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 08:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 10:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 13:00 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 14:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 16:40 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 18:30 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 20:20 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>| 22:50 <small class=\"text-muted\"><abbr title=\"Regular\">.</abbr></small>|'),
(121, 38, '_domingo', 'field_63042c52add32'),
(122, 38, '_edit_lock', '1661222036:1'),
(123, 35, 'dia_util_ida_0_horario', '04:40:00'),
(124, 35, '_dia_util_ida_0_horario', 'field_6306ba59a2325'),
(125, 35, 'dia_util_ida', '13'),
(126, 35, '_dia_util_ida', 'field_63042c3dadd30'),
(127, 35, 'dia_util_volta', '9'),
(128, 35, '_dia_util_volta', 'field_6306bac6b79e5'),
(129, 35, 'sabado_ida', '10'),
(130, 35, '_sabado_ida', 'field_63042c4eadd31'),
(131, 35, 'sabado_volta', '10'),
(132, 35, '_sabado_volta', 'field_6306bb34a07a1'),
(133, 35, 'domingo_ida', ''),
(134, 35, '_domingo_ida', 'field_6306bb3da07a3'),
(135, 35, 'domingo_volta', ''),
(136, 35, '_domingo_volta', 'field_6306bb4ea07a5'),
(137, 35, 'dia_util_ida_1_horario', '06:10:00'),
(138, 35, '_dia_util_ida_1_horario', 'field_6306ba59a2325'),
(139, 34, 'dia_util_ida_0_horario', '22:28:00'),
(140, 34, '_dia_util_ida_0_horario', 'field_6306ba59a2325'),
(141, 34, 'dia_util_ida', '3'),
(142, 34, '_dia_util_ida', 'field_63042c3dadd30'),
(143, 34, 'dia_util_volta', '2'),
(144, 34, '_dia_util_volta', 'field_6306bac6b79e5'),
(145, 34, 'sabado_ida', ''),
(146, 34, '_sabado_ida', 'field_63042c4eadd31'),
(147, 34, 'sabado_volta', ''),
(148, 34, '_sabado_volta', 'field_6306bb34a07a1'),
(149, 34, 'domingo_ida', ''),
(150, 34, '_domingo_ida', 'field_6306bb3da07a3'),
(151, 34, 'domingo_volta', ''),
(152, 34, '_domingo_volta', 'field_6306bb4ea07a5'),
(153, 35, 'dia_util_ida_2_horario', '08:00:00'),
(154, 35, '_dia_util_ida_2_horario', 'field_6306ba59a2325'),
(155, 35, 'dia_util_ida_3_horario', '10:40:00'),
(156, 35, '_dia_util_ida_3_horario', 'field_6306ba59a2325'),
(157, 35, 'dia_util_ida_4_horario', '14:20:00'),
(158, 35, '_dia_util_ida_4_horario', 'field_6306ba59a2325'),
(159, 35, 'dia_util_ida_5_horario', '16:20:00'),
(160, 35, '_dia_util_ida_5_horario', 'field_6306ba59a2325'),
(161, 35, 'dia_util_ida_6_horario', '18:20:00'),
(162, 35, '_dia_util_ida_6_horario', 'field_6306ba59a2325'),
(163, 35, 'dia_util_ida_7_horario', '21:10:00'),
(164, 35, '_dia_util_ida_7_horario', 'field_6306ba59a2325'),
(165, 35, 'dia_util_ida_8_horario', '22:30:00'),
(166, 35, '_dia_util_ida_8_horario', 'field_6306ba59a2325'),
(169, 35, 'dia_util_volta_0_horario', '05:15:00'),
(170, 35, '_dia_util_volta_0_horario', 'field_6306bac6b79e6'),
(171, 35, 'dia_util_volta_1_horario', '06:55:00'),
(172, 35, '_dia_util_volta_1_horario', 'field_6306bac6b79e6'),
(173, 35, 'dia_util_volta_2_horario', '08:50:00'),
(174, 35, '_dia_util_volta_2_horario', 'field_6306bac6b79e6'),
(175, 35, 'dia_util_volta_3_horario', '11:30:00'),
(176, 35, '_dia_util_volta_3_horario', 'field_6306bac6b79e6'),
(177, 35, 'dia_util_volta_4_horario', '13:20:00'),
(178, 35, '_dia_util_volta_4_horario', 'field_6306bac6b79e6'),
(179, 35, 'dia_util_volta_5_horario', '15:20:00'),
(180, 35, '_dia_util_volta_5_horario', 'field_6306bac6b79e6'),
(181, 35, 'dia_util_volta_6_horario', '17:20:00'),
(182, 35, '_dia_util_volta_6_horario', 'field_6306bac6b79e6'),
(183, 35, 'dia_util_volta_7_horario', '19:15:00'),
(184, 35, '_dia_util_volta_7_horario', 'field_6306bac6b79e6'),
(185, 35, 'dia_util_volta_8_horario', '21:55:00'),
(186, 35, '_dia_util_volta_8_horario', 'field_6306bac6b79e6'),
(189, 35, 'sabado_ida_0_horario', ''),
(190, 35, '_sabado_ida_0_horario', 'field_6306bafba07a0'),
(191, 35, 'sabado_ida_1_horario', '20221006'),
(192, 35, '_sabado_ida_1_horario', 'field_6306bafba07a0'),
(193, 35, 'sabado_ida_2_horario', ''),
(194, 35, '_sabado_ida_2_horario', 'field_6306bafba07a0'),
(195, 35, 'sabado_ida_3_horario', ''),
(196, 35, '_sabado_ida_3_horario', 'field_6306bafba07a0'),
(197, 35, 'sabado_ida_4_horario', '20220312'),
(198, 35, '_sabado_ida_4_horario', 'field_6306bafba07a0'),
(199, 35, 'sabado_ida_5_horario', '20220214'),
(200, 35, '_sabado_ida_5_horario', 'field_6306bafba07a0'),
(201, 35, 'sabado_ida_6_horario', '20220216'),
(202, 35, '_sabado_ida_6_horario', 'field_6306bafba07a0'),
(203, 35, 'sabado_ida_7_horario', '20220218'),
(204, 35, '_sabado_ida_7_horario', 'field_6306bafba07a0'),
(205, 35, 'sabado_ida_8_horario', '20221021'),
(206, 35, '_sabado_ida_8_horario', 'field_6306bafba07a0'),
(207, 35, 'sabado_ida_9_horario', '20220223'),
(208, 35, '_sabado_ida_9_horario', 'field_6306bafba07a0'),
(209, 35, 'sabado_volta_0_horario', '20220105'),
(210, 35, '_sabado_volta_0_horario', 'field_6306bb34a07a2'),
(211, 35, 'sabado_volta_1_horario', '20220506'),
(212, 35, '_sabado_volta_1_horario', 'field_6306bb34a07a2'),
(213, 35, 'sabado_volta_2_horario', '20220508'),
(214, 35, '_sabado_volta_2_horario', 'field_6306bb34a07a2'),
(215, 35, 'sabado_volta_3_horario', '20220311'),
(216, 35, '_sabado_volta_3_horario', 'field_6306bb34a07a2'),
(217, 35, 'sabado_volta_4_horario', '20220213'),
(218, 35, '_sabado_volta_4_horario', 'field_6306bb34a07a2'),
(219, 35, 'sabado_volta_5_horario', '20220215'),
(220, 35, '_sabado_volta_5_horario', 'field_6306bb34a07a2'),
(221, 35, 'sabado_volta_6_horario', ''),
(222, 35, '_sabado_volta_6_horario', 'field_6306bb34a07a2'),
(223, 35, 'sabado_volta_7_horario', '20220119'),
(224, 35, '_sabado_volta_7_horario', 'field_6306bb34a07a2'),
(225, 35, 'sabado_volta_8_horario', '20220521'),
(226, 35, '_sabado_volta_8_horario', 'field_6306bb34a07a2'),
(227, 35, 'sabado_volta_9_horario', '20220223'),
(228, 35, '_sabado_volta_9_horario', 'field_6306bb34a07a2'),
(229, 35, 'dia_util_ida_9_horario', '23:38:00'),
(230, 35, '_dia_util_ida_9_horario', 'field_6306ba59a2325'),
(231, 35, 'dia_util_ida_10_horario', '22:39:00'),
(232, 35, '_dia_util_ida_10_horario', 'field_6306ba59a2325'),
(233, 35, 'dia_util_ida_11_horario', '22:40:00'),
(234, 35, '_dia_util_ida_11_horario', 'field_6306ba59a2325'),
(235, 35, 'dia_util_ida_12_horario', '22:41:00'),
(236, 35, '_dia_util_ida_12_horario', 'field_6306ba59a2325'),
(237, 34, 'dia_util_ida_1_horario', '22:49:00'),
(238, 34, '_dia_util_ida_1_horario', 'field_6306ba59a2325'),
(239, 34, 'dia_util_ida_2_horario', '23:28:00'),
(240, 34, '_dia_util_ida_2_horario', 'field_6306ba59a2325'),
(241, 34, 'dia_util_volta_0_horario', '23:28:00'),
(242, 34, '_dia_util_volta_0_horario', 'field_6306bac6b79e6'),
(243, 34, 'dia_util_volta_1_horario', '23:28:00'),
(244, 34, '_dia_util_volta_1_horario', 'field_6306bac6b79e6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-08-22 12:38:15', '2022-08-22 15:38:15', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2022-08-22 12:38:15', '2022-08-22 15:38:15', '', 0, 'http://bus.test/?p=1', 0, 'post', '', 1),
(5, 1, '2022-08-22 12:38:56', '2022-08-22 15:38:56', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2022-08-22 12:38:56', '2022-08-22 15:38:56', '', 0, 'http://bus.test/?page_id=5', 0, 'page', '', 0),
(6, 1, '2022-08-22 12:38:56', '2022-08-22 15:38:56', '', 'Início', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-08-22 12:38:56', '2022-08-22 15:38:56', '', 5, 'http://bus.test/?p=6', 0, 'revision', '', 0),
(9, 1, '2022-08-22 20:51:05', '2022-08-22 23:51:05', '', 'Terminal Central', '', 'publish', 'closed', 'closed', '', 'terminal-central', '', '', '2022-08-22 23:12:09', '2022-08-23 02:12:09', '', 0, 'http://bus.test/?page_id=9', 0, 'page', '', 0),
(10, 1, '2022-08-22 20:50:59', '2022-08-22 23:50:59', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-wp-bootstrap-starter-child', '', '', '2022-08-22 20:50:59', '2022-08-22 23:50:59', '', 0, 'http://bus.test/wp-global-styles-wp-bootstrap-starter-child/', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-08-22 20:51:05', '2022-08-22 23:51:05', '', 'Terminal Central', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-08-22 20:51:05', '2022-08-22 23:51:05', '', 9, 'http://bus.test/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-08-22 20:51:13', '2022-08-22 23:51:13', '', 'Terminal Estudantes', '', 'publish', 'closed', 'closed', '', 'terminal-estudantes', '', '', '2022-08-22 23:13:07', '2022-08-23 02:13:07', '', 0, 'http://bus.test/?page_id=12', 0, 'page', '', 0),
(13, 1, '2022-08-22 20:51:13', '2022-08-22 23:51:13', '', 'Terminal Estudantes', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-08-22 20:51:13', '2022-08-22 23:51:13', '', 12, 'http://bus.test/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-08-22 21:55:05', '2022-08-23 00:55:05', '', 'Single', '', 'publish', 'closed', 'closed', '', 'single', '', '', '2022-08-22 21:55:05', '2022-08-23 00:55:05', '', 0, 'http://bus.test/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-08-22 21:55:05', '2022-08-23 00:55:05', '', 'Single', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-08-22 21:55:05', '2022-08-23 00:55:05', '', 14, 'http://bus.test/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-08-22 22:19:47', '2022-08-23 01:19:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"onibus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Ônibus', 'onibus', 'publish', 'closed', 'closed', '', 'group_63042b294584b', '', '', '2022-08-22 22:20:59', '2022-08-23 01:20:59', '', 0, 'http://bus.test/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2022-08-22 22:20:20', '2022-08-23 01:20:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Ônibus', 'onibus', 'publish', 'closed', 'closed', '', 'field_63042b349d86f', '', '', '2022-08-22 22:20:20', '2022-08-23 01:20:20', '', 16, 'http://bus.test/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2022-08-22 22:20:20', '2022-08-23 01:20:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Número', 'numero', 'publish', 'closed', 'closed', '', 'field_63042b3f9d870', '', '', '2022-08-22 22:20:20', '2022-08-23 01:20:20', '', 17, 'http://bus.test/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2022-08-22 22:20:20', '2022-08-23 01:20:20', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_63042b499d871', '', '', '2022-08-22 22:20:20', '2022-08-23 01:20:20', '', 17, 'http://bus.test/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 1, '2022-08-22 22:20:59', '2022-08-23 01:20:59', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:7:\"Central\";s:7:\"Central\";s:10:\"Estudantes\";s:10:\"Estudantes\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Terminal', 'terminal', 'publish', 'closed', 'closed', '', 'field_63042b6ea969e', '', '', '2022-08-22 22:20:59', '2022-08-23 01:20:59', '', 17, 'http://bus.test/?post_type=acf-field&p=20', 2, 'acf-field', '', 0),
(21, 1, '2022-08-22 22:23:34', '2022-08-23 01:23:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"bus-hour\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Horários dos Ônibus', 'horarios-dos-onibus', 'publish', 'closed', 'closed', '', 'group_63042c0a3e314', '', '', '2022-08-24 23:24:03', '2022-08-25 02:24:03', '', 0, 'http://bus.test/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2022-08-22 22:23:45', '2022-08-23 01:23:45', '', 'C202', '', 'publish', 'closed', 'closed', '', 'c202', '', '', '2022-08-22 22:26:01', '2022-08-23 01:26:01', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=22', 0, 'bus-hour', '', 0),
(23, 1, '2022-08-22 22:24:44', '2022-08-23 01:24:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Dia Útil Ida', 'dia_util_ida', 'publish', 'closed', 'closed', '', 'field_63042c3dadd30', '', '', '2022-08-24 20:56:02', '2022-08-24 23:56:02', '', 21, 'http://bus.test/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2022-08-22 22:24:44', '2022-08-23 01:24:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Sábado Ida', 'sabado_ida', 'publish', 'closed', 'closed', '', 'field_63042c4eadd31', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 21, 'http://bus.test/?post_type=acf-field&#038;p=24', 4, 'acf-field', '', 0),
(26, 1, '2022-08-22 22:59:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-22 22:59:23', '0000-00-00 00:00:00', '', 0, 'http://bus.test/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2022-08-22 22:59:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-22 22:59:23', '0000-00-00 00:00:00', '', 0, 'http://bus.test/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2022-08-22 22:59:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-22 22:59:23', '0000-00-00 00:00:00', '', 0, 'http://bus.test/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2022-08-22 22:59:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-22 22:59:23', '0000-00-00 00:00:00', '', 0, 'http://bus.test/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2022-08-22 23:02:00', '2022-08-23 02:02:00', '', 'C205', '', 'publish', 'closed', 'closed', '', 'c205', '', '', '2022-08-22 23:02:00', '2022-08-23 02:02:00', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=30', 0, 'bus-hour', '', 0),
(31, 1, '2022-08-22 23:05:42', '2022-08-23 02:05:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"template-terminal.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Modelo Terminal', 'modelo-terminal', 'publish', 'closed', 'closed', '', 'group_630435ed3f7ac', '', '', '2022-08-22 23:12:01', '2022-08-23 02:12:01', '', 0, 'http://bus.test/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2022-08-22 23:07:04', '2022-08-23 02:07:04', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:7:\"Central\";s:7:\"Central\";s:10:\"Estudantes\";s:10:\"Estudantes\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Terminal', 'modelo_terminal', 'publish', 'closed', 'closed', '', 'field_630436294cd97', '', '', '2022-08-22 23:07:04', '2022-08-23 02:07:04', '', 31, 'http://bus.test/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2022-08-22 23:13:07', '2022-08-23 02:13:07', '', 'Terminal Estudantes', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-08-22 23:13:07', '2022-08-23 02:13:07', '', 12, 'http://bus.test/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-08-22 23:13:33', '2022-08-23 02:13:33', '', 'E305', '', 'publish', 'closed', 'closed', '', 'e305', '', '', '2022-08-28 23:28:12', '2022-08-29 02:28:12', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=34', 0, 'bus-hour', '', 0),
(35, 1, '2022-08-22 23:14:21', '2022-08-23 02:14:21', '', 'E209', '', 'publish', 'closed', 'closed', '', 'e209', '', '', '2022-08-28 23:20:29', '2022-08-29 02:20:29', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=35', 0, 'bus-hour', '', 0),
(36, 1, '2022-08-22 23:16:29', '2022-08-23 02:16:29', '', 'C210', '', 'publish', 'closed', 'closed', '', 'c210', '', '', '2022-08-22 23:16:29', '2022-08-23 02:16:29', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=36', 0, 'bus-hour', '', 0),
(37, 1, '2022-08-22 23:16:36', '2022-08-23 02:16:36', '', 'E112', '', 'publish', 'closed', 'closed', '', 'e112', '', '', '2022-08-22 23:17:25', '2022-08-23 02:17:25', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=37', 0, 'bus-hour', '', 0),
(38, 1, '2022-08-22 23:18:23', '2022-08-23 02:18:23', '', 'E109', '', 'publish', 'closed', 'closed', '', 'e109', '', '', '2022-08-22 23:19:04', '2022-08-23 02:19:04', '', 0, 'http://bus.test/?post_type=bus-hour&#038;p=38', 0, 'bus-hour', '', 0),
(39, 1, '2022-08-24 20:56:02', '2022-08-24 23:56:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Dia Útil', 'dia_util', 'publish', 'closed', 'closed', '', 'field_6306ba44a2324', '', '', '2022-08-24 20:56:02', '2022-08-24 23:56:02', '', 21, 'http://bus.test/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2022-08-24 20:56:02', '2022-08-24 23:56:02', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Horário', 'horario', 'publish', 'closed', 'closed', '', 'field_6306ba59a2325', '', '', '2022-08-24 21:03:06', '2022-08-25 00:03:06', '', 23, 'http://bus.test/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(42, 1, '2022-08-24 20:56:44', '2022-08-24 23:56:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Sábado', 'sabado', 'publish', 'closed', 'closed', '', 'field_6306baa66467f', '', '', '2022-08-24 20:57:07', '2022-08-24 23:57:07', '', 21, 'http://bus.test/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2022-08-24 20:56:44', '2022-08-24 23:56:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Domingo', 'domingo', 'publish', 'closed', 'closed', '', 'field_6306bab464680', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 21, 'http://bus.test/?post_type=acf-field&#038;p=43', 6, 'acf-field', '', 0),
(44, 1, '2022-08-24 20:57:07', '2022-08-24 23:57:07', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Dia Útil Volta', 'dia_util_volta', 'publish', 'closed', 'closed', '', 'field_6306bac6b79e5', '', '', '2022-08-24 20:57:07', '2022-08-24 23:57:07', '', 21, 'http://bus.test/?post_type=acf-field&p=44', 2, 'acf-field', '', 0),
(45, 1, '2022-08-24 20:57:07', '2022-08-24 23:57:07', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Horário', 'horario', 'publish', 'closed', 'closed', '', 'field_6306bac6b79e6', '', '', '2022-08-24 23:24:02', '2022-08-25 02:24:02', '', 44, 'http://bus.test/?post_type=acf-field&#038;p=45', 0, 'acf-field', '', 0),
(48, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"d:m\";s:13:\"return_format\";s:3:\"d:m\";s:9:\"first_day\";i:1;}', 'Horário', 'horario', 'publish', 'closed', 'closed', '', 'field_6306bafba07a0', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 24, 'http://bus.test/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Sábado Volta', 'sabado_volta', 'publish', 'closed', 'closed', '', 'field_6306bb34a07a1', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 21, 'http://bus.test/?post_type=acf-field&p=49', 5, 'acf-field', '', 0),
(50, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"d:m\";s:13:\"return_format\";s:3:\"d:m\";s:9:\"first_day\";i:1;}', 'Horário', 'horario', 'publish', 'closed', 'closed', '', 'field_6306bb34a07a2', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 49, 'http://bus.test/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Domingo Ida', 'domingo_ida', 'publish', 'closed', 'closed', '', 'field_6306bb3da07a3', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 21, 'http://bus.test/?post_type=acf-field&p=51', 7, 'acf-field', '', 0),
(52, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"d:m\";s:13:\"return_format\";s:3:\"d:m\";s:9:\"first_day\";i:1;}', 'Horário', 'horario', 'publish', 'closed', 'closed', '', 'field_6306bb3da07a4', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 51, 'http://bus.test/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Domingo Volta', 'domingo_volta', 'publish', 'closed', 'closed', '', 'field_6306bb4ea07a5', '', '', '2022-08-24 20:59:33', '2022-08-24 23:59:33', '', 21, 'http://bus.test/?post_type=acf-field&#038;p=53', 8, 'acf-field', '', 0),
(54, 1, '2022-08-24 20:59:20', '2022-08-24 23:59:20', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"d:m\";s:13:\"return_format\";s:3:\"d:m\";s:9:\"first_day\";i:1;}', 'Horário', 'horario', 'publish', 'closed', 'closed', '', 'field_6306bb4ea07a6', '', '', '2022-08-24 20:59:20', '2022-08-24 23:59:20', '', 53, 'http://bus.test/?post_type=acf-field&p=54', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'wp-bootstrap-starter-child', 'wp-bootstrap-starter-child', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
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
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"83d3362e146ddb07970dd094f844cc1ec0fda878153c02a5e75eca682d5e1a35\";a:4:{s:10:\"expiration\";i:1661909213;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1661736413;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_toplevel_page_onibus', 'a:1:{i:0;s:23:\"acf-group_63042b294584b\";}'),
(20, 1, 'metaboxhidden_toplevel_page_onibus', 'a:0:{}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:22:\"add-post-type-bus-hour\";i:1;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSt47Yg0Zcw.xgt8XiNIaYfXJhmMOJ/', 'admin', 'fabiomelodev@gmail.com', 'http://bus.test', '2022-08-22 15:38:15', '', 0, 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1206;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

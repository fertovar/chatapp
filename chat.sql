-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2024 a las 00:20:40
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applications_domains`
--

CREATE TABLE `applications_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_addons_addons`
--

CREATE TABLE `default_addons_addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `versions` text NOT NULL,
  `marketplace` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `requires` text DEFAULT NULL,
  `suggests` text DEFAULT NULL,
  `licenses` text DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `support` text DEFAULT NULL,
  `assets` text DEFAULT NULL,
  `readme` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_addons_extensions`
--

CREATE TABLE `default_addons_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_addons_extensions`
--

INSERT INTO `default_addons_extensions` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.extension.xml_feed_widget', 1, 1),
(2, 'anomaly.extension.html_block', 1, 1),
(3, 'anomaly.extension.throttle_security_check', 1, 1),
(4, 'anomaly.extension.default_authenticator', 1, 1),
(5, 'anomaly.extension.private_storage_adapter', 1, 1),
(6, 'anomaly.extension.user_security_check', 1, 1),
(7, 'anomaly.extension.default_page_handler', 1, 1),
(8, 'anomaly.extension.page_link_type', 1, 1),
(9, 'anomaly.extension.robots', 1, 1),
(10, 'anomaly.extension.url_link_type', 1, 1),
(11, 'anomaly.extension.wysiwyg_block', 1, 1),
(12, 'anomaly.extension.sitemap', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_addons_modules`
--

CREATE TABLE `default_addons_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_addons_modules`
--

INSERT INTO `default_addons_modules` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.module.navigation', 1, 1),
(2, 'anomaly.module.users', 1, 1),
(3, 'anomaly.module.configuration', 1, 1),
(4, 'anomaly.module.preferences', 1, 1),
(5, 'anomaly.module.settings', 1, 1),
(6, 'anomaly.module.blocks', 1, 1),
(7, 'anomaly.module.files', 1, 1),
(8, 'anomaly.module.search', 1, 1),
(9, 'anomaly.module.pages', 1, 1),
(10, 'anomaly.module.repeaters', 1, 1),
(11, 'anomaly.module.addons', 1, 1),
(12, 'anomaly.module.dashboard', 1, 1),
(13, 'anomaly.module.posts', 1, 1),
(14, 'anomaly.module.streams', 1, 1),
(15, 'anomaly.module.variables', 1, 1),
(16, 'anomaly.module.redirects', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_addons_repositories`
--

CREATE TABLE `default_addons_repositories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_addons_repositories`
--

INSERT INTO `default_addons_repositories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `url`) VALUES
(1, 1, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'pyro', 'https://packages.pyrocms.com'),
(2, 2, '2024-02-02 23:18:10', NULL, '2024-02-02 23:18:10', NULL, 'community', 'https://community.pyrocms.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_addons_repositories_translations`
--

CREATE TABLE `default_addons_repositories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_addons_repositories_translations`
--

INSERT INTO `default_addons_repositories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:10', NULL, '2024-02-02 23:18:10', NULL, 'en', 'PRO Addons', 'First-party addons from the makers of Pyro. Unlimited licensing for <span class=\"tag tag-danger\">PRO</span> addons requires a <a href=\"https://pyrocms.com/pro\" target=\"_blank\">PRO subscription</a>.'),
(2, 2, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, 'en', 'Community Addons', 'Third-party addons contributed by the community. <a href=\"https://github.com/pyrocms/community.pyrocms.com/blob/master/satis.json\" target=\"_blank\">Add yours to the list.</a>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_blocks_areas`
--

CREATE TABLE `default_blocks_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_blocks_areas`
--

INSERT INTO `default_blocks_areas` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'footer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_blocks_areas_translations`
--

CREATE TABLE `default_blocks_areas_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_blocks_areas_translations`
--

INSERT INTO `default_blocks_areas_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'en', 'Footer', 'Add blocks here to display in your footer.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_blocks_blocks`
--

CREATE TABLE `default_blocks_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `area_type` varchar(255) NOT NULL,
  `field_id` int(11) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) DEFAULT NULL,
  `display_title` tinyint(1) DEFAULT 1,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_blocks_blocks_translations`
--

CREATE TABLE `default_blocks_blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_blocks_types`
--

CREATE TABLE `default_blocks_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content_layout` longtext NOT NULL,
  `wrapper_layout` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_blocks_types_translations`
--

CREATE TABLE `default_blocks_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_cache`
--

CREATE TABLE `default_cache` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_configuration_configuration`
--

CREATE TABLE `default_configuration_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_configuration_configuration`
--

INSERT INTO `default_configuration_configuration` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `scope`, `key`, `value`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, '1', 'anomaly.extension.xml_feed_widget::url', 'http://www.pyrocms.com/posts/rss.xml'),
(2, 2, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, '2', 'anomaly.extension.xml_feed_widget::url', 'https://stackoverflow.com/feeds/tag?tagnames=PyroCMS&sort=newest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_dashboard_dashboards`
--

CREATE TABLE `default_dashboard_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_dashboard_dashboards`
--

INSERT INTO `default_dashboard_dashboards` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, NULL, 'welcome', '24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_dashboard_dashboards_allowed_roles`
--

CREATE TABLE `default_dashboard_dashboards_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_dashboard_dashboards_translations`
--

CREATE TABLE `default_dashboard_dashboards_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_dashboard_dashboards_translations`
--

INSERT INTO `default_dashboard_dashboards_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, 'en', 'Welcome', 'This is the default dashboard for PyroCMS.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_dashboard_widgets`
--

CREATE TABLE `default_dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `extension` varchar(255) NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1,
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_dashboard_widgets`
--

INSERT INTO `default_dashboard_widgets` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `extension`, `column`, `dashboard_id`, `pinned`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0),
(2, 2, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_dashboard_widgets_allowed_roles`
--

CREATE TABLE `default_dashboard_widgets_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_dashboard_widgets_translations`
--

CREATE TABLE `default_dashboard_widgets_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_dashboard_widgets_translations`
--

INSERT INTO `default_dashboard_widgets_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, 'en', 'Recent News', 'Recent news from https://pyrocms.com/'),
(2, 2, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, 'en', 'Stack Overflow', 'Recent questions from https://stackoverflow.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_failed_jobs`
--

CREATE TABLE `default_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_disks`
--

CREATE TABLE `default_files_disks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `adapter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_files_disks`
--

INSERT INTO `default_files_disks` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `adapter`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, NULL, 'local', 'anomaly.extension.private_storage_adapter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_disks_translations`
--

CREATE TABLE `default_files_disks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_files_disks_translations`
--

INSERT INTO `default_files_disks_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'en', 'Local', 'A local (private) storage disk.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_documents`
--

CREATE TABLE `default_files_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_documents_translations`
--

CREATE TABLE `default_files_documents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_files`
--

CREATE TABLE `default_files_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `str_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_folders`
--

CREATE TABLE `default_files_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `allowed_types` text DEFAULT NULL,
  `str_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_files_folders`
--

INSERT INTO `default_files_folders` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `disk_id`, `slug`, `allowed_types`, `str_id`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, NULL, 1, 'images', 'a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}', '4kolEHNrMuIJIIIH7LK7ccjN'),
(2, 2, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, NULL, 1, 'documents', 'a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}', 'yIJS26mXGtSCJNvxt1VVfuES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_folders_translations`
--

CREATE TABLE `default_files_folders_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_files_folders_translations`
--

INSERT INTO `default_files_folders_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'en', 'Images', 'A folder for images.'),
(2, 2, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'en', 'Documents', 'A folder for documents.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_images`
--

CREATE TABLE `default_files_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_files_images_translations`
--

CREATE TABLE `default_files_images_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_html_block_blocks`
--

CREATE TABLE `default_html_block_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_html_block_blocks_translations`
--

CREATE TABLE `default_html_block_blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `html` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_jobs`
--

CREATE TABLE `default_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_migrations`
--

CREATE TABLE `default_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_migrations`
--

INSERT INTO `default_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171404_create_applications_table', 1),
(2, '2015_03_15_171506_create_applications_domains_table', 1),
(3, '2015_03_15_171506_create_jobs_table', 2),
(4, '2015_03_15_171507_create_failed_jobs_table', 2),
(5, '2015_03_15_171508_create_sessions_table', 2),
(6, '2015_03_15_171509_create_cache_table', 2),
(7, '2015_03_15_171620_create_streams_tables', 2),
(8, '2015_03_15_171646_create_fields_tables', 2),
(9, '2015_03_15_171720_create_assignments_tables', 2),
(10, '2015_03_15_171838_create_modules_table', 2),
(11, '2015_03_15_171926_create_extensions_table', 2),
(12, '2016_08_30_185635_create_notifications_table', 2),
(13, '2016_09_02_164448_add_searchable_column_to_streams', 2),
(14, '2016_11_11_154228_append_id_to_user_meta_columns', 2),
(15, '2017_05_20_184629_add_sort_order_column_to_streams', 2),
(16, '2017_05_20_185657_add_searchable_column_to_assignments', 2),
(17, '2018_02_05_185635_create_versions_table', 2),
(18, '2018_04_13_144412_add_versionable_column_to_streams', 2),
(19, '2018_04_13_144422_add_versionable_column_to_assignments', 2),
(20, '2018_05_03_020251_create_locks_table', 2),
(21, '2018_05_03_020252_drop_session_id_from_locks_table', 2),
(22, '2015_05_21_061832_anomaly.module.navigation__create_navigation_fields', 3),
(23, '2015_05_21_062115_anomaly.module.navigation__create_menus_stream', 3),
(24, '2015_05_21_064952_anomaly.module.navigation__create_links_stream', 3),
(25, '2015_02_27_101816_anomaly.module.users__create_users_fields', 4),
(26, '2015_02_27_101851_anomaly.module.users__create_users_stream', 4),
(27, '2015_02_27_101940_anomaly.module.users__create_roles_stream', 4),
(28, '2016_09_02_175848_anomaly.module.users__make_users_searchable', 4),
(29, '2019_01_10_202632_anomaly.module.users__add_str_id_to_users', 4),
(30, '2015_03_25_091755_anomaly.module.configuration__create_configuration_fields', 5),
(31, '2015_03_25_091845_anomaly.module.configuration__create_configuration_stream', 5),
(32, '2015_02_27_101227_anomaly.module.preferences__create_preferences_fields', 6),
(33, '2015_02_27_101300_anomaly.module.preferences__create_preferences_streams', 6),
(34, '2016_11_16_151654_anomaly.module.preferences__update_user_related_config', 6),
(35, '2015_02_27_101410_anomaly.module.settings__create_settings_fields', 7),
(36, '2015_02_27_101510_anomaly.module.settings__create_settings_stream', 7),
(37, '2015_07_09_071754_anomaly.module.blocks__create_blocks_fields', 8),
(38, '2018_03_20_224637_anomaly.module.blocks__create_areas_stream', 8),
(39, '2018_03_20_224638_anomaly.module.blocks__create_blocks_stream', 8),
(40, '2018_04_29_153855_anomaly.module.blocks__add_display_title_field_to_blocks', 8),
(41, '2018_10_30_181203_anomaly.module.blocks__create_types_fields', 8),
(42, '2018_10_30_181220_anomaly.module.blocks__create_types_stream', 8),
(43, '2018_10_30_184029_anomaly.module.blocks__add_type_to_blocks', 8),
(44, '2015_03_05_021725_anomaly.module.files__create_files_fields', 9),
(45, '2015_03_05_022227_anomaly.module.files__create_disks_stream', 9),
(46, '2015_06_09_031343_anomaly.module.files__create_folders_stream', 9),
(47, '2015_06_09_031351_anomaly.module.files__create_files_stream', 9),
(48, '2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment', 9),
(49, '2016_09_02_175659_anomaly.module.files__make_files_searchable', 9),
(50, '2016_10_05_221741_anomaly.module.files__make_disks_sortable', 9),
(51, '2017_10_07_162244_anomaly.module.files__add_seo_fields_to_files', 9),
(52, '2019_08_02_010559_anomaly.module.files__add_str_id_to_files', 9),
(53, '2019_08_02_012117_anomaly.module.files__add_str_id_to_folders', 9),
(54, '2019_06_10_214015_anomaly.module.search__create_search_fields', 10),
(55, '2019_06_10_214712_anomaly.module.search__create_items_stream', 10),
(56, '2015_03_20_171947_anomaly.module.pages__create_pages_fields', 11),
(57, '2015_03_20_171955_anomaly.module.pages__create_pages_stream', 11),
(58, '2015_04_22_150211_anomaly.module.pages__create_types_stream', 11),
(59, '2016_09_02_175135_anomaly.module.pages__make_pages_searchable', 11),
(60, '2017_08_18_180652_anomaly.module.pages__remove_meta_keywords_field', 11),
(61, '2019_03_16_212844_anomaly.module.pages__add_publish_at_field_to_pages', 11),
(62, '2019_03_19_185323_anomaly.module.pages__make_page_slugs_translatable', 11),
(63, '2019_03_19_191054_anomaly.module.pages__make_page_paths_translatable', 11),
(64, '2019_01_12_171705_anomaly.module.addons__create_addons_fields', 12),
(65, '2019_01_12_171706_anomaly.module.addons__create_addons_stream', 12),
(66, '2019_01_12_175738_anomaly.module.addons__create_repositories_stream', 12),
(67, '2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields', 13),
(68, '2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream', 13),
(69, '2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream', 13),
(70, '2015_03_20_184103_anomaly.module.posts__create_posts_fields', 14),
(71, '2015_03_20_184141_anomaly.module.posts__create_categories_stream', 14),
(72, '2015_03_20_184148_anomaly.module.posts__create_posts_stream', 14),
(73, '2015_05_16_050818_anomaly.module.posts__create_types_stream', 14),
(74, '2016_09_02_175531_anomaly.module.posts__make_posts_searchable', 14),
(75, '2017_08_18_175445_anomaly.module.posts__remove_meta_keywords_field', 14),
(76, '2018_03_23_160615_anomaly.module.posts__add_metadata_fields_to_categories', 14),
(77, '2018_03_23_160625_anomaly.module.posts__add_metadata_fields_to_types', 14),
(78, '2019_03_17_002706_anomaly.module.posts__make_post_slugs_translatable', 14),
(79, '2016_05_21_045018_anomaly.module.streams__create_streams_fields', 15),
(80, '2016_11_10_005532_anomaly.module.streams__create_groups_stream', 15),
(81, '2018_10_27_031213_anomaly.module.streams__add_navigation_fields_to_groups', 15),
(82, '2018_10_27_053533_anomaly.module.streams__remove_allowed_roles_field', 15),
(83, '2015_03_21_153325_anomaly.module.redirects__create_redirects_fields', 16),
(84, '2015_03_21_153326_anomaly.module.redirects__create_redirects_stream', 16),
(85, '2018_10_20_023542_anomaly.module.redirects__create_domains_stream', 16),
(86, '2018_03_22_010006_anomaly.extension.html_block__create_html_block_fields', 17),
(87, '2018_03_22_010509_anomaly.extension.html_block__create_blocks_stream', 17),
(88, '2019_08_02_003333_anomaly.extension.private_storage_adapter__create_private_storage_adapter_fields', 18),
(89, '2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields', 19),
(90, '2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream', 19),
(91, '2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields', 20),
(92, '2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream', 20),
(93, '2018_03_22_020826_anomaly.extension.wysiwyg_block__create_wysiwyg_block_fields', 21),
(94, '2018_03_22_020834_anomaly.extension.wysiwyg_block__create_blocks_stream', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_navigation_links`
--

CREATE TABLE `default_navigation_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `class` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_navigation_links`
--

INSERT INTO `default_navigation_links` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `menu_id`, `type`, `entry_id`, `entry_type`, `target`, `class`, `parent_id`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, NULL, 1, 'anomaly.extension.url_link_type', 1, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL),
(2, 2, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, NULL, 1, 'anomaly.extension.url_link_type', 2, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_navigation_links_allowed_roles`
--

CREATE TABLE `default_navigation_links_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_navigation_menus`
--

CREATE TABLE `default_navigation_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_navigation_menus`
--

INSERT INTO `default_navigation_menus` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, NULL, 'footer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_navigation_menus_translations`
--

CREATE TABLE `default_navigation_menus_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_navigation_menus_translations`
--

INSERT INTO `default_navigation_menus_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'en', 'Footer', 'This is the main footer menu.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_notifications`
--

CREATE TABLE `default_notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_default_pages`
--

CREATE TABLE `default_pages_default_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_pages_default_pages`
--

INSERT INTO `default_pages_default_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, NULL),
(2, 2, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_default_pages_translations`
--

CREATE TABLE `default_pages_default_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_pages_default_pages_translations`
--

INSERT INTO `default_pages_default_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'en', '<p>Welcome to PyroCMS!</p>'),
(2, 2, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'en', '<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_pages`
--

CREATE TABLE `default_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 1,
  `enabled` tinyint(1) DEFAULT 1,
  `exact` tinyint(1) DEFAULT 1,
  `home` tinyint(1) DEFAULT 0,
  `theme_layout` varchar(255) DEFAULT 'theme::layouts/default.twig',
  `publish_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_pages_pages`
--

INSERT INTO `default_pages_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `type_id`, `entry_id`, `entry_type`, `parent_id`, `visible`, `enabled`, `exact`, `home`, `theme_layout`, `publish_at`) VALUES
(1, 1, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, NULL, 'gsEdDYC9rRqpmqKwfPrPAghA', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 1, 'theme::layouts/default.twig', NULL),
(2, 2, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, NULL, 'dFJAheZf4K4hhmxcughkWEk6', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts/default.twig', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_pages_allowed_roles`
--

CREATE TABLE `default_pages_pages_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_pages_translations`
--

CREATE TABLE `default_pages_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_pages_pages_translations`
--

INSERT INTO `default_pages_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `meta_title`, `meta_description`, `slug`, `path`) VALUES
(1, 1, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'en', 'Welcome', NULL, NULL, 'welcome', '/'),
(2, 2, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'en', 'Contact', NULL, NULL, 'contact', '/contact');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_types`
--

CREATE TABLE `default_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `theme_layout` varchar(255) NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` longtext NOT NULL,
  `handler` varchar(255) NOT NULL DEFAULT 'anomaly.extension.default_page_handler'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_pages_types`
--

INSERT INTO `default_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, NULL, 'default', 'theme::layouts/default.twig', '<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}', 'anomaly.extension.default_page_handler');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_pages_types_translations`
--

CREATE TABLE `default_pages_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(26) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_pages_types_translations`
--

INSERT INTO `default_pages_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'en', 'Default', 'A simple page type.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_page_link_type_pages`
--

CREATE TABLE `default_page_link_type_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_page_link_type_pages_translations`
--

CREATE TABLE `default_page_link_type_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_categories`
--

CREATE TABLE `default_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_categories`
--

INSERT INTO `default_posts_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, NULL, 'news');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_categories_translations`
--

CREATE TABLE `default_posts_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_categories_translations`
--

INSERT INTO `default_posts_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`, `meta_title`, `meta_description`) VALUES
(1, 1, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, 'en', 'News', 'Company news and updates.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_default_posts`
--

CREATE TABLE `default_posts_default_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_default_posts`
--

INSERT INTO `default_posts_default_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_default_posts_translations`
--

CREATE TABLE `default_posts_default_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_default_posts_translations`
--

INSERT INTO `default_posts_default_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, 'en', '<p>Welcome to PyroCMS!</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_posts`
--

CREATE TABLE `default_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `enabled` tinyint(1) DEFAULT 0,
  `tags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_posts`
--

INSERT INTO `default_posts_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `type_id`, `publish_at`, `author_id`, `entry_id`, `entry_type`, `category_id`, `featured`, `enabled`, `tags`) VALUES
(1, 1, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, NULL, 'EZ1eGwImCmcyoaMW', 1, '2024-02-02 23:18:12', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_posts_translations`
--

CREATE TABLE `default_posts_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_posts_translations`
--

INSERT INTO `default_posts_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `meta_title`, `meta_description`, `slug`) VALUES
(1, 1, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, 'en', 'Welcome to PyroCMS!', 'This is an example post to demonstrate the posts module.', NULL, NULL, 'welcome-to-pyrocms');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_types`
--

CREATE TABLE `default_posts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `layout` longtext NOT NULL,
  `theme_layout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_types`
--

INSERT INTO `default_posts_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`, `theme_layout`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, NULL, 'default', '{{ post.content.render|raw }}', 'theme::layouts/default.twig');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_posts_types_translations`
--

CREATE TABLE `default_posts_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_posts_types_translations`
--

INSERT INTO `default_posts_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`, `meta_title`, `meta_description`) VALUES
(1, 1, '2024-02-02 23:18:11', NULL, '2024-02-02 23:18:11', NULL, 'en', 'Default', 'A simple post type.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_preferences_preferences`
--

CREATE TABLE `default_preferences_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_redirects_domains`
--

CREATE TABLE `default_redirects_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_redirects_redirects`
--

CREATE TABLE `default_redirects_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_search_items`
--

CREATE TABLE `default_search_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `searchable` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_search_items`
--

INSERT INTO `default_search_items` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `title`, `description`, `keywords`, `entry_id`, `entry_type`, `stream_id`, `locale`, `searchable`) VALUES
(1, NULL, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'Demo User', NULL, 'null', 2, 'Anomaly\\UsersModule\\User\\UserModel', 3, 'en', '{\"id\":2,\"email\":\"demo@pyrocms.com\",\"username\":\"demo\",\"roles\":\"[{\\\"id\\\":2,\\\"sort_order\\\":2,\\\"created_at\\\":\\\"2024-02-02T23:18:06.000000Z\\\",\\\"created_by_id\\\":null,\\\"updated_at\\\":\\\"2024-02-02T23:18:06.000000Z\\\",\\\"updated_by_id\\\":null,\\\"deleted_at\\\":null,\\\"slug\\\":\\\"user\\\",\\\"permissions\\\":null,\\\"name\\\":\\\"User\\\",\\\"description\\\":\\\"The default user role.\\\",\\\"pivot\\\":{\\\"entry_id\\\":2,\\\"related_id\\\":2}}]\",\"display_name\":\"Demo User\",\"first_name\":\"\",\"last_name\":\"\",\"activated\":\"1\",\"enabled\":\"\",\"permissions\":\"[]\",\"last_login_at\":\"\",\"remember_token\":\"\",\"activation_code\":\"\",\"reset_code\":\"\",\"last_activity_at\":\"\",\"ip_address\":\"\",\"str_id\":\"vN3YhzS7ByhkCuHqcSTYcld2\"}'),
(2, NULL, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'Administrator', NULL, 'null', 1, 'Anomaly\\UsersModule\\User\\UserModel', 3, 'en', '{\"id\":1,\"email\":\"ryan@pyrocms.com\",\"username\":\"admin\",\"roles\":\"[{\\\"id\\\":1,\\\"sort_order\\\":1,\\\"created_at\\\":\\\"2024-02-02T23:18:06.000000Z\\\",\\\"created_by_id\\\":null,\\\"updated_at\\\":\\\"2024-02-02T23:18:06.000000Z\\\",\\\"updated_by_id\\\":null,\\\"deleted_at\\\":null,\\\"slug\\\":\\\"admin\\\",\\\"permissions\\\":null,\\\"name\\\":\\\"Admin\\\",\\\"description\\\":\\\"The super admin role.\\\",\\\"pivot\\\":{\\\"entry_id\\\":1,\\\"related_id\\\":1}}]\",\"display_name\":\"Administrator\",\"first_name\":\"\",\"last_name\":\"\",\"activated\":\"1\",\"enabled\":\"\",\"permissions\":\"[]\",\"last_login_at\":\"\",\"remember_token\":\"\",\"activation_code\":\"\",\"reset_code\":\"\",\"last_activity_at\":\"\",\"ip_address\":\"\",\"str_id\":\"d2dvMIYPrtoiD7ONYe2ydUTv\"}'),
(3, NULL, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'Welcome', NULL, 'null', 1, 'Anomaly\\PagesModule\\Page\\PageModel', 15, 'en', '{\"id\":1,\"content\":\"<p>Welcome to PyroCMS!<\\/p>\",\"str_id\":\"gsEdDYC9rRqpmqKwfPrPAghA\",\"title\":\"Welcome\",\"slug\":\"welcome\",\"path\":\"\\/\",\"type\":\"1\",\"enabled\":\"1\",\"home\":\"1\",\"theme_layout\":\"theme::layouts\\/default.twig\",\"allowed_roles\":\"[]\",\"description\":null}'),
(4, NULL, '2024-02-02 23:18:08', NULL, '2024-02-02 23:18:08', NULL, 'Contact', NULL, 'null', 2, 'Anomaly\\PagesModule\\Page\\PageModel', 15, 'en', '{\"id\":2,\"content\":\"<p>Drop us a line! We\'d love to hear from you!<\\/p><p><br><\\/p>\\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}<\\/p>\",\"str_id\":\"dFJAheZf4K4hhmxcughkWEk6\",\"title\":\"Contact\",\"slug\":\"contact\",\"path\":\"\\/contact\",\"type\":\"1\",\"enabled\":\"1\",\"theme_layout\":\"theme::layouts\\/default.twig\",\"allowed_roles\":\"[]\",\"description\":null}'),
(5, NULL, '2024-02-02 23:18:12', NULL, '2024-02-02 23:18:12', NULL, 'Welcome to PyroCMS!', NULL, 'null', 1, 'Anomaly\\PostsModule\\Post\\PostModel', 22, 'en', '{\"publish_at\":\"2024-02-02T23:18:12.000000Z\",\"enabled\":1,\"type_id\":1,\"entry_id\":1,\"entry_type\":\"Anomaly\\\\Streams\\\\Platform\\\\Model\\\\Posts\\\\PostsDefaultPostsEntryModel\",\"category_id\":1,\"author_id\":1,\"updated_by_id\":null,\"created_by_id\":null,\"sort_order\":1,\"str_id\":\"EZ1eGwImCmcyoaMW\",\"updated_at\":\"2024-02-02T23:18:12.000000Z\",\"created_at\":\"2024-02-02T23:18:12.000000Z\",\"id\":1,\"title\":\"Welcome to PyroCMS!\",\"summary\":\"This is an example post to demonstrate the posts module.\",\"slug\":\"welcome-to-pyrocms\",\"meta_title\":null,\"meta_description\":null,\"type\":\"default\",\"category\":\"news\",\"author\":{\"id\":1,\"sort_order\":1,\"created_at\":\"2024-02-02T23:18:07.000000Z\",\"created_by_id\":null,\"updated_at\":\"2024-02-02T23:18:07.000000Z\",\"updated_by_id\":null,\"deleted_at\":null,\"email\":\"ryan@pyrocms.com\",\"username\":\"admin\",\"password\":\"$2y$10$1OGZnatXZk88B7OUAWo.YOMBQ9tqavshnOkb4tjfYdmNotWgZm\\/re\",\"display_name\":\"Administrator\",\"first_name\":null,\"last_name\":null,\"activated\":1,\"enabled\":1,\"permissions\":null,\"last_login_at\":null,\"remember_token\":null,\"activation_code\":null,\"reset_code\":null,\"last_activity_at\":null,\"ip_address\":null,\"str_id\":\"d2dvMIYPrtoiD7ONYe2ydUTv\",\"roles\":[{\"id\":1,\"sort_order\":1,\"created_at\":\"2024-02-02T23:18:06.000000Z\",\"created_by_id\":null,\"updated_at\":\"2024-02-02T23:18:06.000000Z\",\"updated_by_id\":null,\"deleted_at\":null,\"slug\":\"admin\",\"permissions\":null,\"name\":\"Admin\",\"description\":\"The super admin role.\",\"pivot\":{\"entry_id\":1,\"related_id\":1}}]},\"entry\":{\"id\":1,\"sort_order\":1,\"created_at\":\"2024-02-02T23:18:12.000000Z\",\"created_by_id\":null,\"updated_at\":\"2024-02-02T23:18:12.000000Z\",\"updated_by_id\":null,\"deleted_at\":null,\"content\":\"<p>Welcome to PyroCMS!<\\/p>\"},\"publish_at_year\":\"2024\",\"publish_at_month\":\"02\",\"publish_at_day\":\"02\",\"description\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_sessions`
--

CREATE TABLE `default_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_settings_settings`
--

CREATE TABLE `default_settings_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_settings_settings`
--

INSERT INTO `default_settings_settings` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `key`, `value`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, 'streams::domain', 'localhost');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_assignments`
--

CREATE TABLE `default_streams_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) NOT NULL DEFAULT 0,
  `translatable` tinyint(1) NOT NULL DEFAULT 0,
  `versionable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_assignments`
--

INSERT INTO `default_streams_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `config`, `unique`, `required`, `searchable`, `translatable`, `versionable`) VALUES
(1, 1, 1, 1, 'a:0:{}', 1, 1, 0, 1, 0),
(2, 2, 1, 5, 'a:0:{}', 1, 1, 0, 0, 0),
(3, 3, 1, 3, 'a:0:{}', 0, 0, 0, 1, 0),
(4, 4, 2, 6, 'a:0:{}', 0, 1, 0, 0, 0),
(5, 5, 2, 9, 'a:0:{}', 0, 1, 0, 0, 0),
(6, 6, 2, 4, 'a:0:{}', 0, 1, 0, 0, 0),
(7, 7, 2, 10, 'a:0:{}', 0, 1, 0, 0, 0),
(8, 8, 2, 2, 'a:0:{}', 0, 0, 0, 0, 0),
(9, 9, 2, 7, 'a:0:{}', 0, 0, 0, 0, 0),
(10, 10, 2, 8, 'a:0:{}', 0, 0, 0, 0, 0),
(11, 11, 3, 11, 'a:0:{}', 1, 1, 0, 0, 0),
(12, 12, 3, 12, 'a:0:{}', 1, 1, 0, 0, 0),
(13, 13, 3, 13, 'a:0:{}', 0, 1, 0, 0, 0),
(14, 14, 3, 31, 'a:0:{}', 0, 1, 0, 0, 0),
(15, 15, 3, 19, 'a:0:{}', 0, 1, 0, 0, 0),
(16, 16, 3, 20, 'a:0:{}', 0, 0, 0, 0, 0),
(17, 17, 3, 21, 'a:0:{}', 0, 0, 0, 0, 0),
(18, 18, 3, 28, 'a:0:{}', 0, 0, 0, 0, 0),
(19, 19, 3, 29, 'a:0:{}', 0, 0, 0, 0, 0),
(20, 20, 3, 18, 'a:0:{}', 0, 0, 0, 0, 0),
(21, 21, 3, 16, 'a:0:{}', 0, 0, 0, 0, 0),
(22, 22, 3, 14, 'a:0:{}', 0, 0, 0, 0, 0),
(23, 23, 3, 26, 'a:0:{}', 0, 0, 0, 0, 0),
(24, 24, 3, 24, 'a:0:{}', 0, 0, 0, 0, 0),
(25, 25, 3, 17, 'a:0:{}', 0, 0, 0, 0, 0),
(26, 26, 3, 15, 'a:0:{}', 0, 0, 0, 0, 0),
(27, 27, 4, 22, 'a:0:{}', 0, 1, 0, 1, 0),
(28, 28, 4, 30, 'a:0:{}', 1, 1, 0, 0, 0),
(29, 29, 4, 23, 'a:0:{}', 0, 0, 0, 1, 0),
(30, 30, 4, 18, 'a:0:{}', 0, 0, 0, 0, 0),
(31, 31, 3, 32, 'a:0:{}', 1, 1, 0, 0, 0),
(32, 32, 5, 33, 'a:0:{}', 0, 1, 0, 0, 0),
(33, 33, 5, 34, 'a:0:{}', 0, 1, 0, 0, 0),
(34, 34, 5, 35, 'a:0:{}', 0, 0, 0, 0, 0),
(35, 35, 6, 36, 'a:0:{}', 0, 1, 0, 0, 0),
(36, 36, 6, 37, 'a:0:{}', 0, 1, 0, 0, 0),
(37, 37, 6, 38, 'a:0:{}', 0, 0, 0, 0, 0),
(38, 38, 7, 39, 'a:0:{}', 1, 1, 0, 0, 0),
(39, 39, 7, 40, 'a:0:{}', 0, 0, 0, 0, 0),
(40, 40, 8, 41, 'a:0:{}', 0, 1, 0, 1, 0),
(41, 41, 8, 43, 'a:0:{}', 1, 1, 0, 0, 0),
(42, 42, 8, 42, 'a:0:{}', 0, 0, 0, 1, 0),
(43, 43, 8, 48, 'a:0:{}', 0, 0, 0, 0, 0),
(44, 44, 9, 44, 'a:0:{}', 0, 0, 0, 1, 0),
(45, 45, 9, 46, 'a:0:{}', 0, 1, 0, 0, 0),
(46, 46, 9, 45, 'a:0:{}', 0, 1, 0, 0, 0),
(47, 47, 9, 49, 'a:0:{}', 0, 1, 0, 0, 0),
(48, 48, 9, 47, 'a:0:{}', 0, 0, 0, 0, 0),
(49, 49, 9, 50, 'a:0:{}', 0, 0, 0, 0, 0),
(50, 50, 10, 51, 'a:0:{}', 0, 1, 0, 0, 0),
(51, 51, 10, 41, 'a:0:{}', 1, 1, 0, 1, 0),
(52, 52, 10, 43, 'a:2:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";}', 1, 1, 0, 0, 0),
(53, 53, 10, 42, 'a:0:{}', 0, 0, 0, 1, 0),
(54, 54, 10, 52, 'a:0:{}', 0, 1, 0, 0, 0),
(55, 55, 10, 53, 'a:0:{}', 0, 1, 0, 0, 0),
(56, 56, 9, 54, 'a:0:{}', 0, 0, 0, 0, 0),
(57, 57, 11, 55, 'a:0:{}', 1, 1, 0, 1, 0),
(58, 58, 11, 56, 'a:0:{}', 1, 1, 0, 0, 0),
(59, 59, 11, 57, 'a:0:{}', 0, 1, 0, 0, 0),
(60, 60, 11, 61, 'a:0:{}', 0, 0, 0, 1, 0),
(61, 61, 12, 59, 'a:0:{}', 0, 1, 0, 0, 0),
(62, 62, 12, 55, 'a:1:{s:3:\"max\";i:50;}', 0, 1, 0, 1, 0),
(63, 63, 12, 56, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0, 0, 0),
(64, 64, 12, 61, 'a:0:{}', 0, 0, 0, 1, 0),
(65, 65, 12, 62, 'a:0:{}', 0, 0, 0, 0, 0),
(66, 66, 13, 55, 'a:0:{}', 0, 1, 0, 0, 0),
(67, 67, 13, 59, 'a:0:{}', 0, 1, 0, 0, 0),
(68, 68, 13, 58, 'a:0:{}', 0, 1, 0, 0, 0),
(69, 69, 13, 64, 'a:0:{}', 0, 1, 0, 0, 0),
(70, 70, 13, 68, 'a:0:{}', 0, 1, 0, 0, 0),
(71, 71, 13, 67, 'a:0:{}', 0, 1, 0, 0, 0),
(72, 72, 13, 60, 'a:0:{}', 0, 0, 0, 0, 0),
(73, 73, 13, 63, 'a:0:{}', 0, 0, 0, 0, 0),
(74, 74, 13, 66, 'a:0:{}', 0, 0, 0, 0, 0),
(75, 75, 13, 65, 'a:0:{}', 0, 0, 0, 0, 0),
(76, 76, 13, 69, 'a:0:{}', 0, 0, 0, 1, 0),
(77, 77, 13, 70, 'a:0:{}', 0, 0, 0, 1, 0),
(78, 78, 13, 71, 'a:0:{}', 0, 0, 0, 1, 0),
(79, 79, 13, 61, 'a:0:{}', 0, 0, 0, 1, 0),
(80, 80, 13, 72, 'a:0:{}', 1, 1, 0, 0, 0),
(81, 81, 12, 72, 'a:0:{}', 1, 1, 0, 0, 0),
(82, 82, 14, 73, 'a:0:{}', 0, 0, 0, 0, 0),
(83, 83, 14, 75, 'a:0:{}', 0, 0, 0, 0, 0),
(84, 84, 14, 78, 'a:0:{}', 0, 0, 0, 0, 0),
(85, 85, 14, 76, 'a:0:{}', 0, 1, 0, 0, 0),
(86, 86, 14, 77, 'a:0:{}', 0, 1, 0, 0, 0),
(87, 87, 14, 74, 'a:0:{}', 0, 1, 0, 0, 0),
(88, 88, 14, 79, 'a:0:{}', 0, 0, 0, 0, 0),
(89, 89, 15, 80, 'a:0:{}', 0, 1, 0, 0, 0),
(90, 90, 15, 81, 'a:0:{}', 0, 1, 0, 1, 0),
(91, 91, 15, 82, 'a:0:{}', 0, 1, 0, 1, 0),
(92, 92, 15, 84, 'a:0:{}', 0, 1, 0, 1, 0),
(93, 93, 15, 94, 'a:0:{}', 0, 1, 0, 0, 0),
(94, 94, 15, 98, 'a:0:{}', 0, 0, 0, 0, 0),
(95, 95, 15, 92, 'a:0:{}', 0, 0, 0, 0, 0),
(96, 96, 15, 96, 'a:0:{}', 0, 0, 0, 0, 0),
(97, 97, 15, 85, 'a:0:{}', 0, 0, 0, 0, 0),
(98, 98, 15, 97, 'a:0:{}', 0, 0, 0, 0, 0),
(99, 99, 15, 86, 'a:0:{}', 0, 0, 0, 0, 0),
(100, 100, 15, 87, 'a:0:{}', 0, 0, 0, 1, 0),
(101, 101, 15, 88, 'a:0:{}', 0, 0, 0, 1, 0),
(103, 103, 15, 93, 'a:0:{}', 0, 0, 0, 0, 0),
(104, 104, 15, 91, 'a:0:{}', 0, 0, 0, 0, 0),
(105, 105, 16, 99, 'a:1:{s:3:\"max\";i:26;}', 1, 1, 0, 1, 0),
(106, 106, 16, 82, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:26;}', 1, 1, 0, 0, 0),
(107, 107, 16, 100, 'a:0:{}', 0, 0, 0, 1, 0),
(108, 108, 16, 93, 'a:0:{}', 0, 1, 0, 0, 0),
(109, 109, 16, 90, 'a:0:{}', 0, 1, 0, 0, 0),
(110, 110, 16, 95, 'a:0:{}', 0, 1, 0, 0, 0),
(111, 110, 15, 101, 'a:0:{}', 0, 0, 0, 0, 0),
(112, 111, 17, 102, 'a:0:{}', 0, 1, 0, 0, 0),
(113, 112, 17, 103, 'a:0:{}', 1, 1, 0, 0, 0),
(114, 113, 17, 106, 'a:0:{}', 1, 1, 0, 0, 0),
(115, 114, 17, 107, 'a:0:{}', 0, 1, 0, 0, 0),
(116, 115, 17, 113, 'a:0:{}', 0, 1, 0, 0, 0),
(117, 116, 17, 109, 'a:0:{}', 0, 0, 0, 0, 0),
(118, 117, 17, 108, 'a:0:{}', 0, 0, 0, 0, 0),
(119, 118, 17, 110, 'a:0:{}', 0, 0, 0, 0, 0),
(120, 119, 17, 111, 'a:0:{}', 0, 0, 0, 0, 0),
(121, 120, 17, 112, 'a:0:{}', 0, 0, 0, 0, 0),
(122, 121, 17, 114, 'a:0:{}', 0, 0, 0, 0, 0),
(123, 122, 17, 115, 'a:0:{}', 0, 0, 0, 0, 0),
(124, 123, 17, 116, 'a:0:{}', 0, 0, 0, 0, 0),
(125, 124, 17, 117, 'a:0:{}', 0, 0, 0, 0, 0),
(126, 125, 17, 118, 'a:0:{}', 0, 0, 0, 0, 0),
(127, 126, 18, 103, 'a:0:{}', 0, 1, 0, 1, 0),
(128, 127, 18, 104, 'a:0:{}', 1, 1, 0, 0, 0),
(129, 128, 18, 108, 'a:0:{}', 0, 0, 0, 1, 0),
(130, 129, 18, 119, 'a:0:{}', 0, 1, 0, 0, 0),
(131, 130, 19, 120, 'a:0:{}', 0, 1, 0, 1, 0),
(132, 131, 19, 121, 'a:0:{}', 1, 1, 0, 0, 0),
(133, 132, 19, 122, 'a:0:{}', 0, 0, 0, 1, 0),
(134, 133, 19, 123, 'a:0:{}', 0, 1, 0, 0, 0),
(135, 134, 19, 129, 'a:0:{}', 0, 0, 0, 0, 0),
(136, 135, 20, 124, 'a:0:{}', 0, 1, 0, 1, 0),
(137, 136, 20, 122, 'a:0:{}', 0, 0, 0, 1, 0),
(138, 137, 20, 125, 'a:0:{}', 0, 1, 0, 0, 0),
(139, 138, 20, 126, 'a:0:{}', 0, 1, 0, 0, 0),
(140, 139, 20, 128, 'a:0:{}', 0, 1, 0, 0, 0),
(141, 140, 20, 129, 'a:0:{}', 0, 0, 0, 0, 0),
(142, 141, 20, 127, 'a:0:{}', 0, 0, 0, 0, 0),
(143, 142, 21, 131, 'a:0:{}', 1, 1, 0, 1, 0),
(144, 143, 21, 133, 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1, 1, 0, 0, 0),
(145, 144, 21, 138, 'a:0:{}', 0, 0, 0, 1, 0),
(146, 145, 22, 130, 'a:0:{}', 1, 1, 0, 0, 0),
(147, 146, 22, 132, 'a:0:{}', 0, 1, 0, 1, 0),
(148, 147, 22, 137, 'a:0:{}', 0, 0, 0, 1, 0),
(149, 148, 22, 133, 'a:0:{}', 1, 1, 0, 1, 0),
(150, 149, 22, 135, 'a:0:{}', 0, 1, 0, 0, 0),
(151, 150, 22, 139, 'a:0:{}', 0, 1, 0, 0, 0),
(152, 151, 22, 141, 'a:0:{}', 0, 1, 0, 0, 0),
(153, 152, 22, 140, 'a:0:{}', 0, 1, 0, 0, 0),
(154, 153, 22, 146, 'a:0:{}', 0, 0, 0, 1, 0),
(155, 154, 22, 147, 'a:0:{}', 0, 0, 0, 1, 0),
(156, 155, 22, 143, 'a:0:{}', 0, 0, 0, 0, 0),
(157, 156, 22, 145, 'a:0:{}', 0, 0, 0, 0, 0),
(158, 157, 22, 144, 'a:0:{}', 0, 0, 0, 0, 0),
(159, 158, 22, 136, 'a:0:{}', 0, 0, 0, 0, 0),
(160, 159, 23, 131, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0, 1, 0),
(161, 160, 23, 133, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0, 0, 0),
(162, 161, 23, 142, 'a:0:{}', 0, 1, 0, 0, 0),
(163, 162, 23, 150, 'a:0:{}', 0, 1, 0, 0, 0),
(164, 163, 23, 138, 'a:0:{}', 0, 0, 0, 1, 0),
(165, 164, 21, 146, 'a:0:{}', 0, 0, 0, 1, 0),
(166, 165, 21, 147, 'a:0:{}', 0, 0, 0, 1, 0),
(167, 166, 23, 146, 'a:0:{}', 0, 0, 0, 1, 0),
(168, 167, 23, 147, 'a:0:{}', 0, 0, 0, 1, 0),
(169, 168, 24, 151, 'a:0:{}', 0, 1, 0, 1, 0),
(170, 169, 24, 153, 'a:0:{}', 1, 1, 0, 0, 0),
(171, 170, 24, 152, 'a:0:{}', 0, 0, 0, 1, 0),
(172, 171, 24, 154, 'a:0:{}', 0, 0, 0, 0, 0),
(173, 172, 24, 155, 'a:0:{}', 0, 0, 0, 0, 0),
(174, 173, 25, 156, 'a:0:{}', 1, 1, 0, 0, 0),
(175, 174, 25, 157, 'a:0:{}', 0, 1, 0, 0, 0),
(176, 175, 25, 158, 'a:0:{}', 0, 1, 0, 0, 0),
(177, 176, 25, 159, 'a:0:{}', 0, 0, 0, 0, 0),
(178, 177, 26, 156, 'a:0:{}', 1, 1, 0, 0, 0),
(179, 178, 26, 157, 'a:0:{}', 0, 0, 0, 0, 0),
(180, 179, 26, 158, 'a:0:{}', 0, 1, 0, 0, 0),
(181, 180, 26, 159, 'a:0:{}', 0, 0, 0, 0, 0),
(182, 181, 27, 160, 'a:0:{}', 0, 0, 0, 1, 0),
(183, 182, 28, 163, 'a:0:{}', 0, 0, 0, 1, 0),
(184, 183, 28, 164, 'a:0:{}', 0, 1, 0, 0, 0),
(185, 184, 28, 165, 'a:0:{}', 0, 0, 0, 1, 0),
(186, 185, 29, 166, 'a:0:{}', 0, 1, 0, 1, 0),
(187, 186, 29, 167, 'a:0:{}', 0, 1, 0, 0, 0),
(188, 187, 29, 168, 'a:0:{}', 0, 0, 0, 1, 0),
(189, 188, 30, 169, 'a:0:{}', 0, 0, 0, 1, 0),
(190, 189, 33, 83, 'a:0:{}', 0, 0, 0, 1, 0),
(191, 190, 34, 134, 'a:0:{}', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_assignments_translations`
--

CREATE TABLE `default_streams_assignments_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `warning` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_assignments_translations`
--

INSERT INTO `default_streams_assignments_translations` (`id`, `assignment_id`, `locale`, `label`, `warning`, `placeholder`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.navigation::field.name.label.menus', 'anomaly.module.navigation::field.name.warning.menus', 'anomaly.module.navigation::field.name.placeholder.menus', 'anomaly.module.navigation::field.name.instructions.menus'),
(2, 2, 'en', 'anomaly.module.navigation::field.slug.label.menus', 'anomaly.module.navigation::field.slug.warning.menus', 'anomaly.module.navigation::field.slug.placeholder.menus', 'anomaly.module.navigation::field.slug.instructions.menus'),
(3, 3, 'en', 'anomaly.module.navigation::field.description.label.menus', 'anomaly.module.navigation::field.description.warning.menus', 'anomaly.module.navigation::field.description.placeholder.menus', 'anomaly.module.navigation::field.description.instructions.menus'),
(4, 4, 'en', 'anomaly.module.navigation::field.menu.label.links', 'anomaly.module.navigation::field.menu.warning.links', 'anomaly.module.navigation::field.menu.placeholder.links', 'anomaly.module.navigation::field.menu.instructions.links'),
(5, 5, 'en', 'anomaly.module.navigation::field.type.label.links', 'anomaly.module.navigation::field.type.warning.links', 'anomaly.module.navigation::field.type.placeholder.links', 'anomaly.module.navigation::field.type.instructions.links'),
(6, 6, 'en', 'anomaly.module.navigation::field.entry.label.links', 'anomaly.module.navigation::field.entry.warning.links', 'anomaly.module.navigation::field.entry.placeholder.links', 'anomaly.module.navigation::field.entry.instructions.links'),
(7, 7, 'en', 'anomaly.module.navigation::field.target.label.links', 'anomaly.module.navigation::field.target.warning.links', 'anomaly.module.navigation::field.target.placeholder.links', 'anomaly.module.navigation::field.target.instructions.links'),
(8, 8, 'en', 'anomaly.module.navigation::field.class.label.links', 'anomaly.module.navigation::field.class.warning.links', 'anomaly.module.navigation::field.class.placeholder.links', 'anomaly.module.navigation::field.class.instructions.links'),
(9, 9, 'en', 'anomaly.module.navigation::field.parent.label.links', 'anomaly.module.navigation::field.parent.warning.links', 'anomaly.module.navigation::field.parent.placeholder.links', 'anomaly.module.navigation::field.parent.instructions.links'),
(10, 10, 'en', 'anomaly.module.navigation::field.allowed_roles.label.links', 'anomaly.module.navigation::field.allowed_roles.warning.links', 'anomaly.module.navigation::field.allowed_roles.placeholder.links', 'anomaly.module.navigation::field.allowed_roles.instructions.links'),
(11, 11, 'en', 'anomaly.module.users::field.email.label.users', 'anomaly.module.users::field.email.warning.users', 'anomaly.module.users::field.email.placeholder.users', 'anomaly.module.users::field.email.instructions.users'),
(12, 12, 'en', 'anomaly.module.users::field.username.label.users', 'anomaly.module.users::field.username.warning.users', 'anomaly.module.users::field.username.placeholder.users', 'anomaly.module.users::field.username.instructions.users'),
(13, 13, 'en', 'anomaly.module.users::field.password.label.users', 'anomaly.module.users::field.password.warning.users', 'anomaly.module.users::field.password.placeholder.users', 'anomaly.module.users::field.password.instructions.users'),
(14, 14, 'en', 'anomaly.module.users::field.roles.label.users', 'anomaly.module.users::field.roles.warning.users', 'anomaly.module.users::field.roles.placeholder.users', 'anomaly.module.users::field.roles.instructions.users'),
(15, 15, 'en', 'anomaly.module.users::field.display_name.label.users', 'anomaly.module.users::field.display_name.warning.users', 'anomaly.module.users::field.display_name.placeholder.users', 'anomaly.module.users::field.display_name.instructions.users'),
(16, 16, 'en', 'anomaly.module.users::field.first_name.label.users', 'anomaly.module.users::field.first_name.warning.users', 'anomaly.module.users::field.first_name.placeholder.users', 'anomaly.module.users::field.first_name.instructions.users'),
(17, 17, 'en', 'anomaly.module.users::field.last_name.label.users', 'anomaly.module.users::field.last_name.warning.users', 'anomaly.module.users::field.last_name.placeholder.users', 'anomaly.module.users::field.last_name.instructions.users'),
(18, 18, 'en', 'anomaly.module.users::field.activated.label.users', 'anomaly.module.users::field.activated.warning.users', 'anomaly.module.users::field.activated.placeholder.users', 'anomaly.module.users::field.activated.instructions.users'),
(19, 19, 'en', 'anomaly.module.users::field.enabled.label.users', 'anomaly.module.users::field.enabled.warning.users', 'anomaly.module.users::field.enabled.placeholder.users', 'anomaly.module.users::field.enabled.instructions.users'),
(20, 20, 'en', 'anomaly.module.users::field.permissions.label.users', 'anomaly.module.users::field.permissions.warning.users', 'anomaly.module.users::field.permissions.placeholder.users', 'anomaly.module.users::field.permissions.instructions.users'),
(21, 21, 'en', 'anomaly.module.users::field.last_login_at.label.users', 'anomaly.module.users::field.last_login_at.warning.users', 'anomaly.module.users::field.last_login_at.placeholder.users', 'anomaly.module.users::field.last_login_at.instructions.users'),
(22, 22, 'en', 'anomaly.module.users::field.remember_token.label.users', 'anomaly.module.users::field.remember_token.warning.users', 'anomaly.module.users::field.remember_token.placeholder.users', 'anomaly.module.users::field.remember_token.instructions.users'),
(23, 23, 'en', 'anomaly.module.users::field.activation_code.label.users', 'anomaly.module.users::field.activation_code.warning.users', 'anomaly.module.users::field.activation_code.placeholder.users', 'anomaly.module.users::field.activation_code.instructions.users'),
(24, 24, 'en', 'anomaly.module.users::field.reset_code.label.users', 'anomaly.module.users::field.reset_code.warning.users', 'anomaly.module.users::field.reset_code.placeholder.users', 'anomaly.module.users::field.reset_code.instructions.users'),
(25, 25, 'en', 'anomaly.module.users::field.last_activity_at.label.users', 'anomaly.module.users::field.last_activity_at.warning.users', 'anomaly.module.users::field.last_activity_at.placeholder.users', 'anomaly.module.users::field.last_activity_at.instructions.users'),
(26, 26, 'en', 'anomaly.module.users::field.ip_address.label.users', 'anomaly.module.users::field.ip_address.warning.users', 'anomaly.module.users::field.ip_address.placeholder.users', 'anomaly.module.users::field.ip_address.instructions.users'),
(27, 27, 'en', 'anomaly.module.users::field.name.label.roles', 'anomaly.module.users::field.name.warning.roles', 'anomaly.module.users::field.name.placeholder.roles', 'anomaly.module.users::field.name.instructions.roles'),
(28, 28, 'en', 'anomaly.module.users::field.slug.label.roles', 'anomaly.module.users::field.slug.warning.roles', 'anomaly.module.users::field.slug.placeholder.roles', 'anomaly.module.users::field.slug.instructions.roles'),
(29, 29, 'en', 'anomaly.module.users::field.description.label.roles', 'anomaly.module.users::field.description.warning.roles', 'anomaly.module.users::field.description.placeholder.roles', 'anomaly.module.users::field.description.instructions.roles'),
(30, 30, 'en', 'anomaly.module.users::field.permissions.label.roles', 'anomaly.module.users::field.permissions.warning.roles', 'anomaly.module.users::field.permissions.placeholder.roles', 'anomaly.module.users::field.permissions.instructions.roles'),
(31, 31, 'en', 'anomaly.module.users::field.str_id.label.users', 'anomaly.module.users::field.str_id.warning.users', 'anomaly.module.users::field.str_id.placeholder.users', 'anomaly.module.users::field.str_id.instructions.users'),
(32, 32, 'en', 'anomaly.module.configuration::field.scope.label.configuration', 'anomaly.module.configuration::field.scope.warning.configuration', 'anomaly.module.configuration::field.scope.placeholder.configuration', 'anomaly.module.configuration::field.scope.instructions.configuration'),
(33, 33, 'en', 'anomaly.module.configuration::field.key.label.configuration', 'anomaly.module.configuration::field.key.warning.configuration', 'anomaly.module.configuration::field.key.placeholder.configuration', 'anomaly.module.configuration::field.key.instructions.configuration'),
(34, 34, 'en', 'anomaly.module.configuration::field.value.label.configuration', 'anomaly.module.configuration::field.value.warning.configuration', 'anomaly.module.configuration::field.value.placeholder.configuration', 'anomaly.module.configuration::field.value.instructions.configuration'),
(35, 35, 'en', 'anomaly.module.preferences::field.user.label.preferences', 'anomaly.module.preferences::field.user.warning.preferences', 'anomaly.module.preferences::field.user.placeholder.preferences', 'anomaly.module.preferences::field.user.instructions.preferences'),
(36, 36, 'en', 'anomaly.module.preferences::field.key.label.preferences', 'anomaly.module.preferences::field.key.warning.preferences', 'anomaly.module.preferences::field.key.placeholder.preferences', 'anomaly.module.preferences::field.key.instructions.preferences'),
(37, 37, 'en', 'anomaly.module.preferences::field.value.label.preferences', 'anomaly.module.preferences::field.value.warning.preferences', 'anomaly.module.preferences::field.value.placeholder.preferences', 'anomaly.module.preferences::field.value.instructions.preferences'),
(38, 38, 'en', 'anomaly.module.settings::field.key.label.settings', 'anomaly.module.settings::field.key.warning.settings', 'anomaly.module.settings::field.key.placeholder.settings', 'anomaly.module.settings::field.key.instructions.settings'),
(39, 39, 'en', 'anomaly.module.settings::field.value.label.settings', 'anomaly.module.settings::field.value.warning.settings', 'anomaly.module.settings::field.value.placeholder.settings', 'anomaly.module.settings::field.value.instructions.settings'),
(40, 40, 'en', 'anomaly.module.blocks::field.name.label.areas', 'anomaly.module.blocks::field.name.warning.areas', 'anomaly.module.blocks::field.name.placeholder.areas', 'anomaly.module.blocks::field.name.instructions.areas'),
(41, 41, 'en', 'anomaly.module.blocks::field.slug.label.areas', 'anomaly.module.blocks::field.slug.warning.areas', 'anomaly.module.blocks::field.slug.placeholder.areas', 'anomaly.module.blocks::field.slug.instructions.areas'),
(42, 42, 'en', 'anomaly.module.blocks::field.description.label.areas', 'anomaly.module.blocks::field.description.warning.areas', 'anomaly.module.blocks::field.description.placeholder.areas', 'anomaly.module.blocks::field.description.instructions.areas'),
(43, 43, 'en', 'anomaly.module.blocks::field.blocks.label.areas', 'anomaly.module.blocks::field.blocks.warning.areas', 'anomaly.module.blocks::field.blocks.placeholder.areas', 'anomaly.module.blocks::field.blocks.instructions.areas'),
(44, 44, 'en', 'anomaly.module.blocks::field.title.label.blocks', 'anomaly.module.blocks::field.title.warning.blocks', 'anomaly.module.blocks::field.title.placeholder.blocks', 'anomaly.module.blocks::field.title.instructions.blocks'),
(45, 45, 'en', 'anomaly.module.blocks::field.area.label.blocks', 'anomaly.module.blocks::field.area.warning.blocks', 'anomaly.module.blocks::field.area.placeholder.blocks', 'anomaly.module.blocks::field.area.instructions.blocks'),
(46, 46, 'en', 'anomaly.module.blocks::field.field.label.blocks', 'anomaly.module.blocks::field.field.warning.blocks', 'anomaly.module.blocks::field.field.placeholder.blocks', 'anomaly.module.blocks::field.field.instructions.blocks'),
(47, 47, 'en', 'anomaly.module.blocks::field.extension.label.blocks', 'anomaly.module.blocks::field.extension.warning.blocks', 'anomaly.module.blocks::field.extension.placeholder.blocks', 'anomaly.module.blocks::field.extension.instructions.blocks'),
(48, 48, 'en', 'anomaly.module.blocks::field.entry.label.blocks', 'anomaly.module.blocks::field.entry.warning.blocks', 'anomaly.module.blocks::field.entry.placeholder.blocks', 'anomaly.module.blocks::field.entry.instructions.blocks'),
(49, 49, 'en', 'anomaly.module.blocks::field.display_title.label.blocks', 'anomaly.module.blocks::field.display_title.warning.blocks', 'anomaly.module.blocks::field.display_title.placeholder.blocks', 'anomaly.module.blocks::field.display_title.instructions.blocks'),
(50, 50, 'en', 'anomaly.module.blocks::field.category.label.types', 'anomaly.module.blocks::field.category.warning.types', 'anomaly.module.blocks::field.category.placeholder.types', 'anomaly.module.blocks::field.category.instructions.types'),
(51, 51, 'en', 'anomaly.module.blocks::field.name.label.types', 'anomaly.module.blocks::field.name.warning.types', 'anomaly.module.blocks::field.name.placeholder.types', 'anomaly.module.blocks::field.name.instructions.types'),
(52, 52, 'en', 'anomaly.module.blocks::field.slug.label.types', 'anomaly.module.blocks::field.slug.warning.types', 'anomaly.module.blocks::field.slug.placeholder.types', 'anomaly.module.blocks::field.slug.instructions.types'),
(53, 53, 'en', 'anomaly.module.blocks::field.description.label.types', 'anomaly.module.blocks::field.description.warning.types', 'anomaly.module.blocks::field.description.placeholder.types', 'anomaly.module.blocks::field.description.instructions.types'),
(54, 54, 'en', 'anomaly.module.blocks::field.content_layout.label.types', 'anomaly.module.blocks::field.content_layout.warning.types', 'anomaly.module.blocks::field.content_layout.placeholder.types', 'anomaly.module.blocks::field.content_layout.instructions.types'),
(55, 55, 'en', 'anomaly.module.blocks::field.wrapper_layout.label.types', 'anomaly.module.blocks::field.wrapper_layout.warning.types', 'anomaly.module.blocks::field.wrapper_layout.placeholder.types', 'anomaly.module.blocks::field.wrapper_layout.instructions.types'),
(56, 56, 'en', 'anomaly.module.blocks::field.type.label.blocks', 'anomaly.module.blocks::field.type.warning.blocks', 'anomaly.module.blocks::field.type.placeholder.blocks', 'anomaly.module.blocks::field.type.instructions.blocks'),
(57, 57, 'en', 'anomaly.module.files::field.name.label.disks', 'anomaly.module.files::field.name.warning.disks', 'anomaly.module.files::field.name.placeholder.disks', 'anomaly.module.files::field.name.instructions.disks'),
(58, 58, 'en', 'anomaly.module.files::field.slug.label.disks', 'anomaly.module.files::field.slug.warning.disks', 'anomaly.module.files::field.slug.placeholder.disks', 'anomaly.module.files::field.slug.instructions.disks'),
(59, 59, 'en', 'anomaly.module.files::field.adapter.label.disks', 'anomaly.module.files::field.adapter.warning.disks', 'anomaly.module.files::field.adapter.placeholder.disks', 'anomaly.module.files::field.adapter.instructions.disks'),
(60, 60, 'en', 'anomaly.module.files::field.description.label.disks', 'anomaly.module.files::field.description.warning.disks', 'anomaly.module.files::field.description.placeholder.disks', 'anomaly.module.files::field.description.instructions.disks'),
(61, 61, 'en', 'anomaly.module.files::field.disk.label.folders', 'anomaly.module.files::field.disk.warning.folders', 'anomaly.module.files::field.disk.placeholder.folders', 'anomaly.module.files::field.disk.instructions.folders'),
(62, 62, 'en', 'anomaly.module.files::field.name.label.folders', 'anomaly.module.files::field.name.warning.folders', 'anomaly.module.files::field.name.placeholder.folders', 'anomaly.module.files::field.name.instructions.folders'),
(63, 63, 'en', 'anomaly.module.files::field.slug.label.folders', 'anomaly.module.files::field.slug.warning.folders', 'anomaly.module.files::field.slug.placeholder.folders', 'anomaly.module.files::field.slug.instructions.folders'),
(64, 64, 'en', 'anomaly.module.files::field.description.label.folders', 'anomaly.module.files::field.description.warning.folders', 'anomaly.module.files::field.description.placeholder.folders', 'anomaly.module.files::field.description.instructions.folders'),
(65, 65, 'en', 'anomaly.module.files::field.allowed_types.label.folders', 'anomaly.module.files::field.allowed_types.warning.folders', 'anomaly.module.files::field.allowed_types.placeholder.folders', 'anomaly.module.files::field.allowed_types.instructions.folders'),
(66, 66, 'en', 'anomaly.module.files::field.name.label.files', 'anomaly.module.files::field.name.warning.files', 'anomaly.module.files::field.name.placeholder.files', 'anomaly.module.files::field.name.instructions.files'),
(67, 67, 'en', 'anomaly.module.files::field.disk.label.files', 'anomaly.module.files::field.disk.warning.files', 'anomaly.module.files::field.disk.placeholder.files', 'anomaly.module.files::field.disk.instructions.files'),
(68, 68, 'en', 'anomaly.module.files::field.folder.label.files', 'anomaly.module.files::field.folder.warning.files', 'anomaly.module.files::field.folder.placeholder.files', 'anomaly.module.files::field.folder.instructions.files'),
(69, 69, 'en', 'anomaly.module.files::field.extension.label.files', 'anomaly.module.files::field.extension.warning.files', 'anomaly.module.files::field.extension.placeholder.files', 'anomaly.module.files::field.extension.instructions.files'),
(70, 70, 'en', 'anomaly.module.files::field.size.label.files', 'anomaly.module.files::field.size.warning.files', 'anomaly.module.files::field.size.placeholder.files', 'anomaly.module.files::field.size.instructions.files'),
(71, 71, 'en', 'anomaly.module.files::field.mime_type.label.files', 'anomaly.module.files::field.mime_type.warning.files', 'anomaly.module.files::field.mime_type.placeholder.files', 'anomaly.module.files::field.mime_type.instructions.files'),
(72, 72, 'en', 'anomaly.module.files::field.entry.label.files', 'anomaly.module.files::field.entry.warning.files', 'anomaly.module.files::field.entry.placeholder.files', 'anomaly.module.files::field.entry.instructions.files'),
(73, 73, 'en', 'anomaly.module.files::field.keywords.label.files', 'anomaly.module.files::field.keywords.warning.files', 'anomaly.module.files::field.keywords.placeholder.files', 'anomaly.module.files::field.keywords.instructions.files'),
(74, 74, 'en', 'anomaly.module.files::field.height.label.files', 'anomaly.module.files::field.height.warning.files', 'anomaly.module.files::field.height.placeholder.files', 'anomaly.module.files::field.height.instructions.files'),
(75, 75, 'en', 'anomaly.module.files::field.width.label.files', 'anomaly.module.files::field.width.warning.files', 'anomaly.module.files::field.width.placeholder.files', 'anomaly.module.files::field.width.instructions.files'),
(76, 76, 'en', 'anomaly.module.files::field.alt_text.label.files', 'anomaly.module.files::field.alt_text.warning.files', 'anomaly.module.files::field.alt_text.placeholder.files', 'anomaly.module.files::field.alt_text.instructions.files'),
(77, 77, 'en', 'anomaly.module.files::field.title.label.files', 'anomaly.module.files::field.title.warning.files', 'anomaly.module.files::field.title.placeholder.files', 'anomaly.module.files::field.title.instructions.files'),
(78, 78, 'en', 'anomaly.module.files::field.caption.label.files', 'anomaly.module.files::field.caption.warning.files', 'anomaly.module.files::field.caption.placeholder.files', 'anomaly.module.files::field.caption.instructions.files'),
(79, 79, 'en', 'anomaly.module.files::field.description.label.files', 'anomaly.module.files::field.description.warning.files', 'anomaly.module.files::field.description.placeholder.files', 'anomaly.module.files::field.description.instructions.files'),
(80, 80, 'en', 'anomaly.module.files::field.str_id.label.files', 'anomaly.module.files::field.str_id.warning.files', 'anomaly.module.files::field.str_id.placeholder.files', 'anomaly.module.files::field.str_id.instructions.files'),
(81, 81, 'en', 'anomaly.module.files::field.str_id.label.folders', 'anomaly.module.files::field.str_id.warning.folders', 'anomaly.module.files::field.str_id.placeholder.folders', 'anomaly.module.files::field.str_id.instructions.folders'),
(82, 82, 'en', 'anomaly.module.search::field.title.label.items', 'anomaly.module.search::field.title.warning.items', 'anomaly.module.search::field.title.placeholder.items', 'anomaly.module.search::field.title.instructions.items'),
(83, 83, 'en', 'anomaly.module.search::field.description.label.items', 'anomaly.module.search::field.description.warning.items', 'anomaly.module.search::field.description.placeholder.items', 'anomaly.module.search::field.description.instructions.items'),
(84, 84, 'en', 'anomaly.module.search::field.keywords.label.items', 'anomaly.module.search::field.keywords.warning.items', 'anomaly.module.search::field.keywords.placeholder.items', 'anomaly.module.search::field.keywords.instructions.items'),
(85, 85, 'en', 'anomaly.module.search::field.entry.label.items', 'anomaly.module.search::field.entry.warning.items', 'anomaly.module.search::field.entry.placeholder.items', 'anomaly.module.search::field.entry.instructions.items'),
(86, 86, 'en', 'anomaly.module.search::field.stream.label.items', 'anomaly.module.search::field.stream.warning.items', 'anomaly.module.search::field.stream.placeholder.items', 'anomaly.module.search::field.stream.instructions.items'),
(87, 87, 'en', 'anomaly.module.search::field.locale.label.items', 'anomaly.module.search::field.locale.warning.items', 'anomaly.module.search::field.locale.placeholder.items', 'anomaly.module.search::field.locale.instructions.items'),
(88, 88, 'en', 'anomaly.module.search::field.searchable.label.items', 'anomaly.module.search::field.searchable.warning.items', 'anomaly.module.search::field.searchable.placeholder.items', 'anomaly.module.search::field.searchable.instructions.items'),
(89, 89, 'en', 'anomaly.module.pages::field.str_id.label.pages', 'anomaly.module.pages::field.str_id.warning.pages', 'anomaly.module.pages::field.str_id.placeholder.pages', 'anomaly.module.pages::field.str_id.instructions.pages'),
(90, 90, 'en', 'anomaly.module.pages::field.title.label.pages', 'anomaly.module.pages::field.title.warning.pages', 'anomaly.module.pages::field.title.placeholder.pages', 'anomaly.module.pages::field.title.instructions.pages'),
(91, 91, 'en', 'anomaly.module.pages::field.slug.label.pages', 'anomaly.module.pages::field.slug.warning.pages', 'anomaly.module.pages::field.slug.placeholder.pages', 'anomaly.module.pages::field.slug.instructions.pages'),
(92, 92, 'en', 'anomaly.module.pages::field.path.label.pages', 'anomaly.module.pages::field.path.warning.pages', 'anomaly.module.pages::field.path.placeholder.pages', 'anomaly.module.pages::field.path.instructions.pages'),
(93, 93, 'en', 'anomaly.module.pages::field.type.label.pages', 'anomaly.module.pages::field.type.warning.pages', 'anomaly.module.pages::field.type.placeholder.pages', 'anomaly.module.pages::field.type.instructions.pages'),
(94, 94, 'en', 'anomaly.module.pages::field.entry.label.pages', 'anomaly.module.pages::field.entry.warning.pages', 'anomaly.module.pages::field.entry.placeholder.pages', 'anomaly.module.pages::field.entry.instructions.pages'),
(95, 95, 'en', 'anomaly.module.pages::field.parent.label.pages', 'anomaly.module.pages::field.parent.warning.pages', 'anomaly.module.pages::field.parent.placeholder.pages', 'anomaly.module.pages::field.parent.instructions.pages'),
(96, 96, 'en', 'anomaly.module.pages::field.visible.label.pages', 'anomaly.module.pages::field.visible.warning.pages', 'anomaly.module.pages::field.visible.placeholder.pages', 'anomaly.module.pages::field.visible.instructions.pages'),
(97, 97, 'en', 'anomaly.module.pages::field.enabled.label.pages', 'anomaly.module.pages::field.enabled.warning.pages', 'anomaly.module.pages::field.enabled.placeholder.pages', 'anomaly.module.pages::field.enabled.instructions.pages'),
(98, 98, 'en', 'anomaly.module.pages::field.exact.label.pages', 'anomaly.module.pages::field.exact.warning.pages', 'anomaly.module.pages::field.exact.placeholder.pages', 'anomaly.module.pages::field.exact.instructions.pages'),
(99, 99, 'en', 'anomaly.module.pages::field.home.label.pages', 'anomaly.module.pages::field.home.warning.pages', 'anomaly.module.pages::field.home.placeholder.pages', 'anomaly.module.pages::field.home.instructions.pages'),
(100, 100, 'en', 'anomaly.module.pages::field.meta_title.label.pages', 'anomaly.module.pages::field.meta_title.warning.pages', 'anomaly.module.pages::field.meta_title.placeholder.pages', 'anomaly.module.pages::field.meta_title.instructions.pages'),
(101, 101, 'en', 'anomaly.module.pages::field.meta_description.label.pages', 'anomaly.module.pages::field.meta_description.warning.pages', 'anomaly.module.pages::field.meta_description.placeholder.pages', 'anomaly.module.pages::field.meta_description.instructions.pages'),
(103, 103, 'en', 'anomaly.module.pages::field.theme_layout.label.pages', 'anomaly.module.pages::field.theme_layout.warning.pages', 'anomaly.module.pages::field.theme_layout.placeholder.pages', 'anomaly.module.pages::field.theme_layout.instructions.pages'),
(104, 104, 'en', 'anomaly.module.pages::field.allowed_roles.label.pages', 'anomaly.module.pages::field.allowed_roles.warning.pages', 'anomaly.module.pages::field.allowed_roles.placeholder.pages', 'anomaly.module.pages::field.allowed_roles.instructions.pages'),
(105, 105, 'en', 'anomaly.module.pages::field.name.label.types', 'anomaly.module.pages::field.name.warning.types', 'anomaly.module.pages::field.name.placeholder.types', 'anomaly.module.pages::field.name.instructions.types'),
(106, 106, 'en', 'anomaly.module.pages::field.slug.label.types', 'anomaly.module.pages::field.slug.warning.types', 'anomaly.module.pages::field.slug.placeholder.types', 'anomaly.module.pages::field.slug.instructions.types'),
(107, 107, 'en', 'anomaly.module.pages::field.description.label.types', 'anomaly.module.pages::field.description.warning.types', 'anomaly.module.pages::field.description.placeholder.types', 'anomaly.module.pages::field.description.instructions.types'),
(108, 108, 'en', 'anomaly.module.pages::field.theme_layout.label.types', 'anomaly.module.pages::field.theme_layout.warning.types', 'anomaly.module.pages::field.theme_layout.placeholder.types', 'anomaly.module.pages::field.theme_layout.instructions.types'),
(109, 109, 'en', 'anomaly.module.pages::field.layout.label.types', 'anomaly.module.pages::field.layout.warning.types', 'anomaly.module.pages::field.layout.placeholder.types', 'anomaly.module.pages::field.layout.instructions.types'),
(110, 110, 'en', 'anomaly.module.pages::field.handler.label.types', 'anomaly.module.pages::field.handler.warning.types', 'anomaly.module.pages::field.handler.placeholder.types', 'anomaly.module.pages::field.handler.instructions.types'),
(111, 111, 'en', 'anomaly.module.pages::field.publish_at.label.pages', 'anomaly.module.pages::field.publish_at.warning.pages', 'anomaly.module.pages::field.publish_at.placeholder.pages', 'anomaly.module.pages::field.publish_at.instructions.pages'),
(112, 112, 'en', 'anomaly.module.addons::field.type.label.addons', 'anomaly.module.addons::field.type.warning.addons', 'anomaly.module.addons::field.type.placeholder.addons', 'anomaly.module.addons::field.type.instructions.addons'),
(113, 113, 'en', 'anomaly.module.addons::field.name.label.addons', 'anomaly.module.addons::field.name.warning.addons', 'anomaly.module.addons::field.name.placeholder.addons', 'anomaly.module.addons::field.name.instructions.addons'),
(114, 114, 'en', 'anomaly.module.addons::field.namespace.label.addons', 'anomaly.module.addons::field.namespace.warning.addons', 'anomaly.module.addons::field.namespace.placeholder.addons', 'anomaly.module.addons::field.namespace.instructions.addons'),
(115, 115, 'en', 'anomaly.module.addons::field.title.label.addons', 'anomaly.module.addons::field.title.warning.addons', 'anomaly.module.addons::field.title.placeholder.addons', 'anomaly.module.addons::field.title.instructions.addons'),
(116, 116, 'en', 'anomaly.module.addons::field.versions.label.addons', 'anomaly.module.addons::field.versions.warning.addons', 'anomaly.module.addons::field.versions.placeholder.addons', 'anomaly.module.addons::field.versions.instructions.addons'),
(117, 117, 'en', 'anomaly.module.addons::field.marketplace.label.addons', 'anomaly.module.addons::field.marketplace.warning.addons', 'anomaly.module.addons::field.marketplace.placeholder.addons', 'anomaly.module.addons::field.marketplace.instructions.addons'),
(118, 118, 'en', 'anomaly.module.addons::field.description.label.addons', 'anomaly.module.addons::field.description.warning.addons', 'anomaly.module.addons::field.description.placeholder.addons', 'anomaly.module.addons::field.description.instructions.addons'),
(119, 119, 'en', 'anomaly.module.addons::field.homepage.label.addons', 'anomaly.module.addons::field.homepage.warning.addons', 'anomaly.module.addons::field.homepage.placeholder.addons', 'anomaly.module.addons::field.homepage.instructions.addons'),
(120, 120, 'en', 'anomaly.module.addons::field.requires.label.addons', 'anomaly.module.addons::field.requires.warning.addons', 'anomaly.module.addons::field.requires.placeholder.addons', 'anomaly.module.addons::field.requires.instructions.addons'),
(121, 121, 'en', 'anomaly.module.addons::field.suggests.label.addons', 'anomaly.module.addons::field.suggests.warning.addons', 'anomaly.module.addons::field.suggests.placeholder.addons', 'anomaly.module.addons::field.suggests.instructions.addons'),
(122, 122, 'en', 'anomaly.module.addons::field.licenses.label.addons', 'anomaly.module.addons::field.licenses.warning.addons', 'anomaly.module.addons::field.licenses.placeholder.addons', 'anomaly.module.addons::field.licenses.instructions.addons'),
(123, 123, 'en', 'anomaly.module.addons::field.authors.label.addons', 'anomaly.module.addons::field.authors.warning.addons', 'anomaly.module.addons::field.authors.placeholder.addons', 'anomaly.module.addons::field.authors.instructions.addons'),
(124, 124, 'en', 'anomaly.module.addons::field.support.label.addons', 'anomaly.module.addons::field.support.warning.addons', 'anomaly.module.addons::field.support.placeholder.addons', 'anomaly.module.addons::field.support.instructions.addons'),
(125, 125, 'en', 'anomaly.module.addons::field.assets.label.addons', 'anomaly.module.addons::field.assets.warning.addons', 'anomaly.module.addons::field.assets.placeholder.addons', 'anomaly.module.addons::field.assets.instructions.addons'),
(126, 126, 'en', 'anomaly.module.addons::field.readme.label.addons', 'anomaly.module.addons::field.readme.warning.addons', 'anomaly.module.addons::field.readme.placeholder.addons', 'anomaly.module.addons::field.readme.instructions.addons'),
(127, 127, 'en', 'anomaly.module.addons::field.name.label.repositories', 'anomaly.module.addons::field.name.warning.repositories', 'anomaly.module.addons::field.name.placeholder.repositories', 'anomaly.module.addons::field.name.instructions.repositories'),
(128, 128, 'en', 'anomaly.module.addons::field.slug.label.repositories', 'anomaly.module.addons::field.slug.warning.repositories', 'anomaly.module.addons::field.slug.placeholder.repositories', 'anomaly.module.addons::field.slug.instructions.repositories'),
(129, 129, 'en', 'anomaly.module.addons::field.description.label.repositories', 'anomaly.module.addons::field.description.warning.repositories', 'anomaly.module.addons::field.description.placeholder.repositories', 'anomaly.module.addons::field.description.instructions.repositories'),
(130, 130, 'en', 'anomaly.module.addons::field.url.label.repositories', 'anomaly.module.addons::field.url.warning.repositories', 'anomaly.module.addons::field.url.placeholder.repositories', 'anomaly.module.addons::field.url.instructions.repositories'),
(131, 131, 'en', 'anomaly.module.dashboard::field.name.label.dashboards', 'anomaly.module.dashboard::field.name.warning.dashboards', 'anomaly.module.dashboard::field.name.placeholder.dashboards', 'anomaly.module.dashboard::field.name.instructions.dashboards'),
(132, 132, 'en', 'anomaly.module.dashboard::field.slug.label.dashboards', 'anomaly.module.dashboard::field.slug.warning.dashboards', 'anomaly.module.dashboard::field.slug.placeholder.dashboards', 'anomaly.module.dashboard::field.slug.instructions.dashboards'),
(133, 133, 'en', 'anomaly.module.dashboard::field.description.label.dashboards', 'anomaly.module.dashboard::field.description.warning.dashboards', 'anomaly.module.dashboard::field.description.placeholder.dashboards', 'anomaly.module.dashboard::field.description.instructions.dashboards'),
(134, 134, 'en', 'anomaly.module.dashboard::field.layout.label.dashboards', 'anomaly.module.dashboard::field.layout.warning.dashboards', 'anomaly.module.dashboard::field.layout.placeholder.dashboards', 'anomaly.module.dashboard::field.layout.instructions.dashboards'),
(135, 135, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.dashboards', 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards', 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards', 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),
(136, 136, 'en', 'anomaly.module.dashboard::field.title.label.widgets', 'anomaly.module.dashboard::field.title.warning.widgets', 'anomaly.module.dashboard::field.title.placeholder.widgets', 'anomaly.module.dashboard::field.title.instructions.widgets'),
(137, 137, 'en', 'anomaly.module.dashboard::field.description.label.widgets', 'anomaly.module.dashboard::field.description.warning.widgets', 'anomaly.module.dashboard::field.description.placeholder.widgets', 'anomaly.module.dashboard::field.description.instructions.widgets'),
(138, 138, 'en', 'anomaly.module.dashboard::field.extension.label.widgets', 'anomaly.module.dashboard::field.extension.warning.widgets', 'anomaly.module.dashboard::field.extension.placeholder.widgets', 'anomaly.module.dashboard::field.extension.instructions.widgets'),
(139, 139, 'en', 'anomaly.module.dashboard::field.column.label.widgets', 'anomaly.module.dashboard::field.column.warning.widgets', 'anomaly.module.dashboard::field.column.placeholder.widgets', 'anomaly.module.dashboard::field.column.instructions.widgets'),
(140, 140, 'en', 'anomaly.module.dashboard::field.dashboard.label.widgets', 'anomaly.module.dashboard::field.dashboard.warning.widgets', 'anomaly.module.dashboard::field.dashboard.placeholder.widgets', 'anomaly.module.dashboard::field.dashboard.instructions.widgets'),
(141, 141, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.widgets', 'anomaly.module.dashboard::field.allowed_roles.warning.widgets', 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets', 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),
(142, 142, 'en', 'anomaly.module.dashboard::field.pinned.label.widgets', 'anomaly.module.dashboard::field.pinned.warning.widgets', 'anomaly.module.dashboard::field.pinned.placeholder.widgets', 'anomaly.module.dashboard::field.pinned.instructions.widgets'),
(143, 143, 'en', 'anomaly.module.posts::field.name.label.categories', 'anomaly.module.posts::field.name.warning.categories', 'anomaly.module.posts::field.name.placeholder.categories', 'anomaly.module.posts::field.name.instructions.categories'),
(144, 144, 'en', 'anomaly.module.posts::field.slug.label.categories', 'anomaly.module.posts::field.slug.warning.categories', 'anomaly.module.posts::field.slug.placeholder.categories', 'anomaly.module.posts::field.slug.instructions.categories'),
(145, 145, 'en', 'anomaly.module.posts::field.description.label.categories', 'anomaly.module.posts::field.description.warning.categories', 'anomaly.module.posts::field.description.placeholder.categories', 'anomaly.module.posts::field.description.instructions.categories'),
(146, 146, 'en', 'anomaly.module.posts::field.str_id.label.posts', 'anomaly.module.posts::field.str_id.warning.posts', 'anomaly.module.posts::field.str_id.placeholder.posts', 'anomaly.module.posts::field.str_id.instructions.posts'),
(147, 147, 'en', 'anomaly.module.posts::field.title.label.posts', 'anomaly.module.posts::field.title.warning.posts', 'anomaly.module.posts::field.title.placeholder.posts', 'anomaly.module.posts::field.title.instructions.posts'),
(148, 148, 'en', 'anomaly.module.posts::field.summary.label.posts', 'anomaly.module.posts::field.summary.warning.posts', 'anomaly.module.posts::field.summary.placeholder.posts', 'anomaly.module.posts::field.summary.instructions.posts'),
(149, 149, 'en', 'anomaly.module.posts::field.slug.label.posts', 'anomaly.module.posts::field.slug.warning.posts', 'anomaly.module.posts::field.slug.placeholder.posts', 'anomaly.module.posts::field.slug.instructions.posts'),
(150, 150, 'en', 'anomaly.module.posts::field.type.label.posts', 'anomaly.module.posts::field.type.warning.posts', 'anomaly.module.posts::field.type.placeholder.posts', 'anomaly.module.posts::field.type.instructions.posts'),
(151, 151, 'en', 'anomaly.module.posts::field.publish_at.label.posts', 'anomaly.module.posts::field.publish_at.warning.posts', 'anomaly.module.posts::field.publish_at.placeholder.posts', 'anomaly.module.posts::field.publish_at.instructions.posts'),
(152, 152, 'en', 'anomaly.module.posts::field.author.label.posts', 'anomaly.module.posts::field.author.warning.posts', 'anomaly.module.posts::field.author.placeholder.posts', 'anomaly.module.posts::field.author.instructions.posts'),
(153, 153, 'en', 'anomaly.module.posts::field.entry.label.posts', 'anomaly.module.posts::field.entry.warning.posts', 'anomaly.module.posts::field.entry.placeholder.posts', 'anomaly.module.posts::field.entry.instructions.posts'),
(154, 154, 'en', 'anomaly.module.posts::field.meta_title.label.posts', 'anomaly.module.posts::field.meta_title.warning.posts', 'anomaly.module.posts::field.meta_title.placeholder.posts', 'anomaly.module.posts::field.meta_title.instructions.posts'),
(155, 155, 'en', 'anomaly.module.posts::field.meta_description.label.posts', 'anomaly.module.posts::field.meta_description.warning.posts', 'anomaly.module.posts::field.meta_description.placeholder.posts', 'anomaly.module.posts::field.meta_description.instructions.posts'),
(156, 156, 'en', 'anomaly.module.posts::field.category.label.posts', 'anomaly.module.posts::field.category.warning.posts', 'anomaly.module.posts::field.category.placeholder.posts', 'anomaly.module.posts::field.category.instructions.posts'),
(157, 157, 'en', 'anomaly.module.posts::field.featured.label.posts', 'anomaly.module.posts::field.featured.warning.posts', 'anomaly.module.posts::field.featured.placeholder.posts', 'anomaly.module.posts::field.featured.instructions.posts'),
(158, 158, 'en', 'anomaly.module.posts::field.enabled.label.posts', 'anomaly.module.posts::field.enabled.warning.posts', 'anomaly.module.posts::field.enabled.placeholder.posts', 'anomaly.module.posts::field.enabled.instructions.posts'),
(159, 159, 'en', 'anomaly.module.posts::field.tags.label.posts', 'anomaly.module.posts::field.tags.warning.posts', 'anomaly.module.posts::field.tags.placeholder.posts', 'anomaly.module.posts::field.tags.instructions.posts'),
(160, 160, 'en', 'anomaly.module.posts::field.name.label.types', 'anomaly.module.posts::field.name.warning.types', 'anomaly.module.posts::field.name.placeholder.types', 'anomaly.module.posts::field.name.instructions.types'),
(161, 161, 'en', 'anomaly.module.posts::field.slug.label.types', 'anomaly.module.posts::field.slug.warning.types', 'anomaly.module.posts::field.slug.placeholder.types', 'anomaly.module.posts::field.slug.instructions.types'),
(162, 162, 'en', 'anomaly.module.posts::field.layout.label.types', 'anomaly.module.posts::field.layout.warning.types', 'anomaly.module.posts::field.layout.placeholder.types', 'anomaly.module.posts::field.layout.instructions.types'),
(163, 163, 'en', 'anomaly.module.posts::field.theme_layout.label.types', 'anomaly.module.posts::field.theme_layout.warning.types', 'anomaly.module.posts::field.theme_layout.placeholder.types', 'anomaly.module.posts::field.theme_layout.instructions.types'),
(164, 164, 'en', 'anomaly.module.posts::field.description.label.types', 'anomaly.module.posts::field.description.warning.types', 'anomaly.module.posts::field.description.placeholder.types', 'anomaly.module.posts::field.description.instructions.types'),
(165, 165, 'en', 'anomaly.module.posts::field.meta_title.label.categories', 'anomaly.module.posts::field.meta_title.warning.categories', 'anomaly.module.posts::field.meta_title.placeholder.categories', 'anomaly.module.posts::field.meta_title.instructions.categories'),
(166, 166, 'en', 'anomaly.module.posts::field.meta_description.label.categories', 'anomaly.module.posts::field.meta_description.warning.categories', 'anomaly.module.posts::field.meta_description.placeholder.categories', 'anomaly.module.posts::field.meta_description.instructions.categories'),
(167, 167, 'en', 'anomaly.module.posts::field.meta_title.label.types', 'anomaly.module.posts::field.meta_title.warning.types', 'anomaly.module.posts::field.meta_title.placeholder.types', 'anomaly.module.posts::field.meta_title.instructions.types'),
(168, 168, 'en', 'anomaly.module.posts::field.meta_description.label.types', 'anomaly.module.posts::field.meta_description.warning.types', 'anomaly.module.posts::field.meta_description.placeholder.types', 'anomaly.module.posts::field.meta_description.instructions.types'),
(169, 169, 'en', 'anomaly.module.streams::field.name.label.groups', 'anomaly.module.streams::field.name.warning.groups', 'anomaly.module.streams::field.name.placeholder.groups', 'anomaly.module.streams::field.name.instructions.groups'),
(170, 170, 'en', 'anomaly.module.streams::field.slug.label.groups', 'anomaly.module.streams::field.slug.warning.groups', 'anomaly.module.streams::field.slug.placeholder.groups', 'anomaly.module.streams::field.slug.instructions.groups'),
(171, 171, 'en', 'anomaly.module.streams::field.description.label.groups', 'anomaly.module.streams::field.description.warning.groups', 'anomaly.module.streams::field.description.placeholder.groups', 'anomaly.module.streams::field.description.instructions.groups'),
(172, 172, 'en', 'anomaly.module.streams::field.virtualize.label.groups', 'anomaly.module.streams::field.virtualize.warning.groups', 'anomaly.module.streams::field.virtualize.placeholder.groups', 'anomaly.module.streams::field.virtualize.instructions.groups'),
(173, 173, 'en', 'anomaly.module.streams::field.icon.label.groups', 'anomaly.module.streams::field.icon.warning.groups', 'anomaly.module.streams::field.icon.placeholder.groups', 'anomaly.module.streams::field.icon.instructions.groups'),
(174, 174, 'en', 'anomaly.module.redirects::field.from.label.redirects', 'anomaly.module.redirects::field.from.warning.redirects', 'anomaly.module.redirects::field.from.placeholder.redirects', 'anomaly.module.redirects::field.from.instructions.redirects'),
(175, 175, 'en', 'anomaly.module.redirects::field.to.label.redirects', 'anomaly.module.redirects::field.to.warning.redirects', 'anomaly.module.redirects::field.to.placeholder.redirects', 'anomaly.module.redirects::field.to.instructions.redirects'),
(176, 176, 'en', 'anomaly.module.redirects::field.status.label.redirects', 'anomaly.module.redirects::field.status.warning.redirects', 'anomaly.module.redirects::field.status.placeholder.redirects', 'anomaly.module.redirects::field.status.instructions.redirects'),
(177, 177, 'en', 'anomaly.module.redirects::field.secure.label.redirects', 'anomaly.module.redirects::field.secure.warning.redirects', 'anomaly.module.redirects::field.secure.placeholder.redirects', 'anomaly.module.redirects::field.secure.instructions.redirects'),
(178, 178, 'en', 'anomaly.module.redirects::field.from.label.domains', 'anomaly.module.redirects::field.from.warning.domains', 'anomaly.module.redirects::field.from.placeholder.domains', 'anomaly.module.redirects::field.from.instructions.domains'),
(179, 179, 'en', 'anomaly.module.redirects::field.to.label.domains', 'anomaly.module.redirects::field.to.warning.domains', 'anomaly.module.redirects::field.to.placeholder.domains', 'anomaly.module.redirects::field.to.instructions.domains'),
(180, 180, 'en', 'anomaly.module.redirects::field.status.label.domains', 'anomaly.module.redirects::field.status.warning.domains', 'anomaly.module.redirects::field.status.placeholder.domains', 'anomaly.module.redirects::field.status.instructions.domains'),
(181, 181, 'en', 'anomaly.module.redirects::field.secure.label.domains', 'anomaly.module.redirects::field.secure.warning.domains', 'anomaly.module.redirects::field.secure.placeholder.domains', 'anomaly.module.redirects::field.secure.instructions.domains'),
(182, 182, 'en', 'anomaly.extension.html_block::field.html.label.blocks', 'anomaly.extension.html_block::field.html.warning.blocks', 'anomaly.extension.html_block::field.html.placeholder.blocks', 'anomaly.extension.html_block::field.html.instructions.blocks'),
(183, 183, 'en', 'anomaly.extension.page_link_type::field.title.label.pages', 'anomaly.extension.page_link_type::field.title.warning.pages', 'anomaly.extension.page_link_type::field.title.placeholder.pages', 'anomaly.extension.page_link_type::field.title.instructions.pages'),
(184, 184, 'en', 'anomaly.extension.page_link_type::field.page.label.pages', 'anomaly.extension.page_link_type::field.page.warning.pages', 'anomaly.extension.page_link_type::field.page.placeholder.pages', 'anomaly.extension.page_link_type::field.page.instructions.pages'),
(185, 185, 'en', 'anomaly.extension.page_link_type::field.description.label.pages', 'anomaly.extension.page_link_type::field.description.warning.pages', 'anomaly.extension.page_link_type::field.description.placeholder.pages', 'anomaly.extension.page_link_type::field.description.instructions.pages'),
(186, 186, 'en', 'anomaly.extension.url_link_type::field.title.label.urls', 'anomaly.extension.url_link_type::field.title.warning.urls', 'anomaly.extension.url_link_type::field.title.placeholder.urls', 'anomaly.extension.url_link_type::field.title.instructions.urls'),
(187, 187, 'en', 'anomaly.extension.url_link_type::field.url.label.urls', 'anomaly.extension.url_link_type::field.url.warning.urls', 'anomaly.extension.url_link_type::field.url.placeholder.urls', 'anomaly.extension.url_link_type::field.url.instructions.urls'),
(188, 188, 'en', 'anomaly.extension.url_link_type::field.description.label.urls', 'anomaly.extension.url_link_type::field.description.warning.urls', 'anomaly.extension.url_link_type::field.description.placeholder.urls', 'anomaly.extension.url_link_type::field.description.instructions.urls'),
(189, 189, 'en', 'anomaly.extension.wysiwyg_block::field.content.label.blocks', 'anomaly.extension.wysiwyg_block::field.content.warning.blocks', 'anomaly.extension.wysiwyg_block::field.content.placeholder.blocks', 'anomaly.extension.wysiwyg_block::field.content.instructions.blocks'),
(190, 190, 'es', NULL, NULL, NULL, NULL),
(191, 191, 'es', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_fields`
--

CREATE TABLE `default_streams_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `type` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_fields`
--

INSERT INTO `default_streams_fields` (`id`, `namespace`, `slug`, `type`, `config`, `locked`) VALUES
(1, 'navigation', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(2, 'navigation', 'class', 'anomaly.field_type.text', 'a:0:{}', 1),
(3, 'navigation', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(4, 'navigation', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(5, 'navigation', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(6, 'navigation', 'menu', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}', 1),
(7, 'navigation', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}', 1),
(8, 'navigation', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(9, 'navigation', 'type', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}', 1),
(10, 'navigation', 'target', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}', 1),
(11, 'users', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(12, 'users', 'username', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}', 1),
(13, 'users', 'password', 'anomaly.field_type.text', 'a:1:{s:4:\"type\";s:8:\"password\";}', 1),
(14, 'users', 'remember_token', 'anomaly.field_type.text', 'a:0:{}', 1),
(15, 'users', 'ip_address', 'anomaly.field_type.text', 'a:0:{}', 1),
(16, 'users', 'last_login_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(17, 'users', 'last_activity_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(18, 'users', 'permissions', 'anomaly.field_type.checkboxes', 'a:0:{}', 1),
(19, 'users', 'display_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(20, 'users', 'first_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(21, 'users', 'last_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(22, 'users', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(23, 'users', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(24, 'users', 'reset_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(25, 'users', 'reset_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(26, 'users', 'activation_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(27, 'users', 'activation_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(28, 'users', 'activated', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(29, 'users', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(30, 'users', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(31, 'users', 'roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(32, 'users', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(33, 'configuration', 'scope', 'anomaly.field_type.text', 'a:0:{}', 1),
(34, 'configuration', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(35, 'configuration', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(36, 'preferences', 'user', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(37, 'preferences', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(38, 'preferences', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(39, 'settings', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(40, 'settings', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(41, 'blocks', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(42, 'blocks', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(43, 'blocks', 'slug', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"-\";s:7:\"slugify\";s:4:\"name\";}', 1),
(44, 'blocks', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(45, 'blocks', 'field', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:41:\"Anomaly\\Streams\\Platform\\Field\\FieldModel\";}', 1),
(46, 'blocks', 'area', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(47, 'blocks', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(48, 'blocks', 'blocks', 'anomaly.field_type.blocks', 'a:0:{}', 1),
(49, 'blocks', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:30:\"anomaly.module.blocks::block.*\";}', 1),
(50, 'blocks', 'display_title', 'anomaly.field_type.boolean', 'a:3:{s:13:\"default_value\";b:1;s:4:\"mode\";s:8:\"checkbox\";s:5:\"label\";s:48:\"anomaly.module.blocks::field.display_title.label\";}', 1),
(51, 'blocks', 'category', 'anomaly.field_type.select', 'a:1:{s:7:\"handler\";s:66:\"Anomaly\\BlocksModule\\Block\\Support\\SelectFieldType\\CategoryOptions\";}', 1),
(52, 'blocks', 'content_layout', 'anomaly.field_type.editor', 'a:2:{s:4:\"mode\";s:4:\"twig\";s:13:\"default_value\";s:29:\"<p>{{ block.field_slug }}</p>\";}', 1),
(53, 'blocks', 'wrapper_layout', 'anomaly.field_type.editor', 'a:2:{s:4:\"mode\";s:4:\"twig\";s:13:\"default_value\";s:52:\"{% extends \"anomaly.module.blocks::types.wrapper\" %}\";}', 1),
(54, 'blocks', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:35:\"Anomaly\\BlocksModule\\Type\\TypeModel\";}', 1),
(55, 'files', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(56, 'files', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(57, 'files', 'adapter', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}', 1),
(58, 'files', 'folder', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}', 1),
(59, 'files', 'disk', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}', 1),
(60, 'files', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(61, 'files', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(62, 'files', 'allowed_types', 'anomaly.field_type.tags', 'a:0:{}', 1),
(63, 'files', 'keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(64, 'files', 'extension', 'anomaly.field_type.text', 'a:0:{}', 1),
(65, 'files', 'width', 'anomaly.field_type.text', 'a:0:{}', 1),
(66, 'files', 'height', 'anomaly.field_type.text', 'a:0:{}', 1),
(67, 'files', 'mime_type', 'anomaly.field_type.text', 'a:0:{}', 1),
(68, 'files', 'size', 'anomaly.field_type.integer', 'a:0:{}', 1),
(69, 'files', 'alt_text', 'anomaly.field_type.text', 'a:0:{}', 1),
(70, 'files', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(71, 'files', 'caption', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(72, 'files', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(73, 'search', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(74, 'search', 'locale', 'anomaly.field_type.text', 'a:0:{}', 1),
(75, 'search', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(76, 'search', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(77, 'search', 'stream', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"search\";s:7:\"related\";s:43:\"Anomaly\\Streams\\Platform\\Stream\\StreamModel\";}', 1),
(78, 'search', 'keywords', 'anomaly.field_type.textarea', 'a:1:{s:7:\"storage\";s:4:\"json\";}', 1),
(79, 'search', 'searchable', 'anomaly.field_type.textarea', 'a:1:{s:7:\"storage\";s:4:\"json\";}', 1),
(80, 'pages', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(81, 'pages', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(82, 'pages', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(83, 'pages', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(84, 'pages', 'path', 'anomaly.field_type.text', 'a:0:{}', 1),
(85, 'pages', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(86, 'pages', 'home', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(87, 'pages', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(88, 'pages', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(90, 'pages', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}', 1),
(91, 'pages', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(92, 'pages', 'parent', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(93, 'pages', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}', 1),
(94, 'pages', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}', 1),
(95, 'pages', 'handler', 'anomaly.field_type.addon', 'a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}', 1),
(96, 'pages', 'visible', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(97, 'pages', 'exact', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(98, 'pages', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(99, 'pages', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(100, 'pages', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(101, 'pages', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(102, 'addons', 'type', 'anomaly.field_type.text', 'a:0:{}', 1),
(103, 'addons', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(104, 'addons', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(105, 'addons', 'repository', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:47:\"Anomaly\\AddonsModule\\Repository\\RepositoryModel\";}', 1),
(106, 'addons', 'namespace', 'anomaly.field_type.text', 'a:0:{}', 1),
(107, 'addons', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(108, 'addons', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(109, 'addons', 'marketplace', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(110, 'addons', 'homepage', 'anomaly.field_type.url', 'a:0:{}', 1),
(111, 'addons', 'requires', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(112, 'addons', 'suggests', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(113, 'addons', 'versions', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(114, 'addons', 'licenses', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(115, 'addons', 'authors', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(116, 'addons', 'support', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(117, 'addons', 'assets', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(118, 'addons', 'readme', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(119, 'addons', 'url', 'anomaly.field_type.url', 'a:0:{}', 1),
(120, 'dashboard', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(121, 'dashboard', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(122, 'dashboard', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(123, 'dashboard', 'layout', 'anomaly.field_type.select', 'a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}', 1),
(124, 'dashboard', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(125, 'dashboard', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}', 1),
(126, 'dashboard', 'column', 'anomaly.field_type.integer', 'a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}', 1),
(127, 'dashboard', 'pinned', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(128, 'dashboard', 'dashboard', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}', 1),
(129, 'dashboard', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(130, 'posts', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(131, 'posts', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(132, 'posts', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(133, 'posts', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(134, 'posts', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(135, 'posts', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}', 1),
(136, 'posts', 'tags', 'anomaly.field_type.tags', 'a:0:{}', 1),
(137, 'posts', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(138, 'posts', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(139, 'posts', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(140, 'posts', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(141, 'posts', 'author', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(142, 'posts', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}', 1),
(143, 'posts', 'category', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}', 1),
(144, 'posts', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(145, 'posts', 'featured', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(146, 'posts', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(147, 'posts', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(149, 'posts', 'ttl', 'anomaly.field_type.integer', 'a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}', 1),
(150, 'posts', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:4:\"mode\";s:6:\"search\";s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}', 1),
(151, 'streams_utilities', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(152, 'streams_utilities', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(153, 'streams_utilities', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(154, 'streams_utilities', 'virtualize', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(155, 'streams_utilities', 'icon', 'anomaly.field_type.icon', 'a:0:{}', 1),
(156, 'redirects', 'from', 'anomaly.field_type.text', 'a:0:{}', 1),
(157, 'redirects', 'to', 'anomaly.field_type.text', 'a:0:{}', 1),
(158, 'redirects', 'status', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}', 1),
(159, 'redirects', 'secure', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(160, 'html_block', 'html', 'anomaly.field_type.editor', 'a:0:{}', 1),
(161, 'private_storage_adapter', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(162, 'private_storage_adapter', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";}', 1),
(163, 'page_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(164, 'page_link_type', 'page', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(165, 'page_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(166, 'url_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(167, 'url_link_type', 'url', 'anomaly.field_type.text', 'a:0:{}', 1),
(168, 'url_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(169, 'wysiwyg_block', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_fields_translations`
--

CREATE TABLE `default_streams_fields_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `warning` varchar(255) DEFAULT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_fields_translations`
--

INSERT INTO `default_streams_fields_translations` (`id`, `field_id`, `locale`, `name`, `placeholder`, `warning`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.navigation::field.name.name', 'anomaly.module.navigation::field.name.placeholder', 'anomaly.module.navigation::field.name.warning', 'anomaly.module.navigation::field.name.instructions'),
(2, 2, 'en', 'anomaly.module.navigation::field.class.name', 'anomaly.module.navigation::field.class.placeholder', 'anomaly.module.navigation::field.class.warning', 'anomaly.module.navigation::field.class.instructions'),
(3, 3, 'en', 'anomaly.module.navigation::field.description.name', 'anomaly.module.navigation::field.description.placeholder', 'anomaly.module.navigation::field.description.warning', 'anomaly.module.navigation::field.description.instructions'),
(4, 4, 'en', 'anomaly.module.navigation::field.entry.name', 'anomaly.module.navigation::field.entry.placeholder', 'anomaly.module.navigation::field.entry.warning', 'anomaly.module.navigation::field.entry.instructions'),
(5, 5, 'en', 'anomaly.module.navigation::field.slug.name', 'anomaly.module.navigation::field.slug.placeholder', 'anomaly.module.navigation::field.slug.warning', 'anomaly.module.navigation::field.slug.instructions'),
(6, 6, 'en', 'anomaly.module.navigation::field.menu.name', 'anomaly.module.navigation::field.menu.placeholder', 'anomaly.module.navigation::field.menu.warning', 'anomaly.module.navigation::field.menu.instructions'),
(7, 7, 'en', 'anomaly.module.navigation::field.parent.name', 'anomaly.module.navigation::field.parent.placeholder', 'anomaly.module.navigation::field.parent.warning', 'anomaly.module.navigation::field.parent.instructions'),
(8, 8, 'en', 'anomaly.module.navigation::field.allowed_roles.name', 'anomaly.module.navigation::field.allowed_roles.placeholder', 'anomaly.module.navigation::field.allowed_roles.warning', 'anomaly.module.navigation::field.allowed_roles.instructions'),
(9, 9, 'en', 'anomaly.module.navigation::field.type.name', 'anomaly.module.navigation::field.type.placeholder', 'anomaly.module.navigation::field.type.warning', 'anomaly.module.navigation::field.type.instructions'),
(10, 10, 'en', 'anomaly.module.navigation::field.target.name', 'anomaly.module.navigation::field.target.placeholder', 'anomaly.module.navigation::field.target.warning', 'anomaly.module.navigation::field.target.instructions'),
(11, 11, 'en', 'anomaly.module.users::field.email.name', 'anomaly.module.users::field.email.placeholder', 'anomaly.module.users::field.email.warning', 'anomaly.module.users::field.email.instructions'),
(12, 12, 'en', 'anomaly.module.users::field.username.name', 'anomaly.module.users::field.username.placeholder', 'anomaly.module.users::field.username.warning', 'anomaly.module.users::field.username.instructions'),
(13, 13, 'en', 'anomaly.module.users::field.password.name', 'anomaly.module.users::field.password.placeholder', 'anomaly.module.users::field.password.warning', 'anomaly.module.users::field.password.instructions'),
(14, 14, 'en', 'anomaly.module.users::field.remember_token.name', 'anomaly.module.users::field.remember_token.placeholder', 'anomaly.module.users::field.remember_token.warning', 'anomaly.module.users::field.remember_token.instructions'),
(15, 15, 'en', 'anomaly.module.users::field.ip_address.name', 'anomaly.module.users::field.ip_address.placeholder', 'anomaly.module.users::field.ip_address.warning', 'anomaly.module.users::field.ip_address.instructions'),
(16, 16, 'en', 'anomaly.module.users::field.last_login_at.name', 'anomaly.module.users::field.last_login_at.placeholder', 'anomaly.module.users::field.last_login_at.warning', 'anomaly.module.users::field.last_login_at.instructions'),
(17, 17, 'en', 'anomaly.module.users::field.last_activity_at.name', 'anomaly.module.users::field.last_activity_at.placeholder', 'anomaly.module.users::field.last_activity_at.warning', 'anomaly.module.users::field.last_activity_at.instructions'),
(18, 18, 'en', 'anomaly.module.users::field.permissions.name', 'anomaly.module.users::field.permissions.placeholder', 'anomaly.module.users::field.permissions.warning', 'anomaly.module.users::field.permissions.instructions'),
(19, 19, 'en', 'anomaly.module.users::field.display_name.name', 'anomaly.module.users::field.display_name.placeholder', 'anomaly.module.users::field.display_name.warning', 'anomaly.module.users::field.display_name.instructions'),
(20, 20, 'en', 'anomaly.module.users::field.first_name.name', 'anomaly.module.users::field.first_name.placeholder', 'anomaly.module.users::field.first_name.warning', 'anomaly.module.users::field.first_name.instructions'),
(21, 21, 'en', 'anomaly.module.users::field.last_name.name', 'anomaly.module.users::field.last_name.placeholder', 'anomaly.module.users::field.last_name.warning', 'anomaly.module.users::field.last_name.instructions'),
(22, 22, 'en', 'anomaly.module.users::field.name.name', 'anomaly.module.users::field.name.placeholder', 'anomaly.module.users::field.name.warning', 'anomaly.module.users::field.name.instructions'),
(23, 23, 'en', 'anomaly.module.users::field.description.name', 'anomaly.module.users::field.description.placeholder', 'anomaly.module.users::field.description.warning', 'anomaly.module.users::field.description.instructions'),
(24, 24, 'en', 'anomaly.module.users::field.reset_code.name', 'anomaly.module.users::field.reset_code.placeholder', 'anomaly.module.users::field.reset_code.warning', 'anomaly.module.users::field.reset_code.instructions'),
(25, 25, 'en', 'anomaly.module.users::field.reset_code_expires_at.name', 'anomaly.module.users::field.reset_code_expires_at.placeholder', 'anomaly.module.users::field.reset_code_expires_at.warning', 'anomaly.module.users::field.reset_code_expires_at.instructions'),
(26, 26, 'en', 'anomaly.module.users::field.activation_code.name', 'anomaly.module.users::field.activation_code.placeholder', 'anomaly.module.users::field.activation_code.warning', 'anomaly.module.users::field.activation_code.instructions'),
(27, 27, 'en', 'anomaly.module.users::field.activation_code_expires_at.name', 'anomaly.module.users::field.activation_code_expires_at.placeholder', 'anomaly.module.users::field.activation_code_expires_at.warning', 'anomaly.module.users::field.activation_code_expires_at.instructions'),
(28, 28, 'en', 'anomaly.module.users::field.activated.name', 'anomaly.module.users::field.activated.placeholder', 'anomaly.module.users::field.activated.warning', 'anomaly.module.users::field.activated.instructions'),
(29, 29, 'en', 'anomaly.module.users::field.enabled.name', 'anomaly.module.users::field.enabled.placeholder', 'anomaly.module.users::field.enabled.warning', 'anomaly.module.users::field.enabled.instructions'),
(30, 30, 'en', 'anomaly.module.users::field.slug.name', 'anomaly.module.users::field.slug.placeholder', 'anomaly.module.users::field.slug.warning', 'anomaly.module.users::field.slug.instructions'),
(31, 31, 'en', 'anomaly.module.users::field.roles.name', 'anomaly.module.users::field.roles.placeholder', 'anomaly.module.users::field.roles.warning', 'anomaly.module.users::field.roles.instructions'),
(32, 32, 'en', 'anomaly.module.users::field.str_id.name', 'anomaly.module.users::field.str_id.placeholder', 'anomaly.module.users::field.str_id.warning', 'anomaly.module.users::field.str_id.instructions'),
(33, 33, 'en', 'anomaly.module.configuration::field.scope.name', 'anomaly.module.configuration::field.scope.placeholder', 'anomaly.module.configuration::field.scope.warning', 'anomaly.module.configuration::field.scope.instructions'),
(34, 34, 'en', 'anomaly.module.configuration::field.key.name', 'anomaly.module.configuration::field.key.placeholder', 'anomaly.module.configuration::field.key.warning', 'anomaly.module.configuration::field.key.instructions'),
(35, 35, 'en', 'anomaly.module.configuration::field.value.name', 'anomaly.module.configuration::field.value.placeholder', 'anomaly.module.configuration::field.value.warning', 'anomaly.module.configuration::field.value.instructions'),
(36, 36, 'en', 'anomaly.module.preferences::field.user.name', 'anomaly.module.preferences::field.user.placeholder', 'anomaly.module.preferences::field.user.warning', 'anomaly.module.preferences::field.user.instructions'),
(37, 37, 'en', 'anomaly.module.preferences::field.key.name', 'anomaly.module.preferences::field.key.placeholder', 'anomaly.module.preferences::field.key.warning', 'anomaly.module.preferences::field.key.instructions'),
(38, 38, 'en', 'anomaly.module.preferences::field.value.name', 'anomaly.module.preferences::field.value.placeholder', 'anomaly.module.preferences::field.value.warning', 'anomaly.module.preferences::field.value.instructions'),
(39, 39, 'en', 'anomaly.module.settings::field.key.name', 'anomaly.module.settings::field.key.placeholder', 'anomaly.module.settings::field.key.warning', 'anomaly.module.settings::field.key.instructions'),
(40, 40, 'en', 'anomaly.module.settings::field.value.name', 'anomaly.module.settings::field.value.placeholder', 'anomaly.module.settings::field.value.warning', 'anomaly.module.settings::field.value.instructions'),
(41, 41, 'en', 'anomaly.module.blocks::field.name.name', 'anomaly.module.blocks::field.name.placeholder', 'anomaly.module.blocks::field.name.warning', 'anomaly.module.blocks::field.name.instructions'),
(42, 42, 'en', 'anomaly.module.blocks::field.description.name', 'anomaly.module.blocks::field.description.placeholder', 'anomaly.module.blocks::field.description.warning', 'anomaly.module.blocks::field.description.instructions'),
(43, 43, 'en', 'anomaly.module.blocks::field.slug.name', 'anomaly.module.blocks::field.slug.placeholder', 'anomaly.module.blocks::field.slug.warning', 'anomaly.module.blocks::field.slug.instructions'),
(44, 44, 'en', 'anomaly.module.blocks::field.title.name', 'anomaly.module.blocks::field.title.placeholder', 'anomaly.module.blocks::field.title.warning', 'anomaly.module.blocks::field.title.instructions'),
(45, 45, 'en', 'anomaly.module.blocks::field.field.name', 'anomaly.module.blocks::field.field.placeholder', 'anomaly.module.blocks::field.field.warning', 'anomaly.module.blocks::field.field.instructions'),
(46, 46, 'en', 'anomaly.module.blocks::field.area.name', 'anomaly.module.blocks::field.area.placeholder', 'anomaly.module.blocks::field.area.warning', 'anomaly.module.blocks::field.area.instructions'),
(47, 47, 'en', 'anomaly.module.blocks::field.entry.name', 'anomaly.module.blocks::field.entry.placeholder', 'anomaly.module.blocks::field.entry.warning', 'anomaly.module.blocks::field.entry.instructions'),
(48, 48, 'en', 'anomaly.module.blocks::field.blocks.name', 'anomaly.module.blocks::field.blocks.placeholder', 'anomaly.module.blocks::field.blocks.warning', 'anomaly.module.blocks::field.blocks.instructions'),
(49, 49, 'en', 'anomaly.module.blocks::field.extension.name', 'anomaly.module.blocks::field.extension.placeholder', 'anomaly.module.blocks::field.extension.warning', 'anomaly.module.blocks::field.extension.instructions'),
(50, 50, 'en', 'anomaly.module.blocks::field.display_title.name', 'anomaly.module.blocks::field.display_title.placeholder', 'anomaly.module.blocks::field.display_title.warning', 'anomaly.module.blocks::field.display_title.instructions'),
(51, 51, 'en', 'anomaly.module.blocks::field.category.name', 'anomaly.module.blocks::field.category.placeholder', 'anomaly.module.blocks::field.category.warning', 'anomaly.module.blocks::field.category.instructions'),
(52, 52, 'en', 'anomaly.module.blocks::field.content_layout.name', 'anomaly.module.blocks::field.content_layout.placeholder', 'anomaly.module.blocks::field.content_layout.warning', 'anomaly.module.blocks::field.content_layout.instructions'),
(53, 53, 'en', 'anomaly.module.blocks::field.wrapper_layout.name', 'anomaly.module.blocks::field.wrapper_layout.placeholder', 'anomaly.module.blocks::field.wrapper_layout.warning', 'anomaly.module.blocks::field.wrapper_layout.instructions'),
(54, 54, 'en', 'anomaly.module.blocks::field.type.name', 'anomaly.module.blocks::field.type.placeholder', 'anomaly.module.blocks::field.type.warning', 'anomaly.module.blocks::field.type.instructions'),
(55, 55, 'en', 'anomaly.module.files::field.name.name', 'anomaly.module.files::field.name.placeholder', 'anomaly.module.files::field.name.warning', 'anomaly.module.files::field.name.instructions'),
(56, 56, 'en', 'anomaly.module.files::field.slug.name', 'anomaly.module.files::field.slug.placeholder', 'anomaly.module.files::field.slug.warning', 'anomaly.module.files::field.slug.instructions'),
(57, 57, 'en', 'anomaly.module.files::field.adapter.name', 'anomaly.module.files::field.adapter.placeholder', 'anomaly.module.files::field.adapter.warning', 'anomaly.module.files::field.adapter.instructions'),
(58, 58, 'en', 'anomaly.module.files::field.folder.name', 'anomaly.module.files::field.folder.placeholder', 'anomaly.module.files::field.folder.warning', 'anomaly.module.files::field.folder.instructions'),
(59, 59, 'en', 'anomaly.module.files::field.disk.name', 'anomaly.module.files::field.disk.placeholder', 'anomaly.module.files::field.disk.warning', 'anomaly.module.files::field.disk.instructions'),
(60, 60, 'en', 'anomaly.module.files::field.entry.name', 'anomaly.module.files::field.entry.placeholder', 'anomaly.module.files::field.entry.warning', 'anomaly.module.files::field.entry.instructions'),
(61, 61, 'en', 'anomaly.module.files::field.description.name', 'anomaly.module.files::field.description.placeholder', 'anomaly.module.files::field.description.warning', 'anomaly.module.files::field.description.instructions'),
(62, 62, 'en', 'anomaly.module.files::field.allowed_types.name', 'anomaly.module.files::field.allowed_types.placeholder', 'anomaly.module.files::field.allowed_types.warning', 'anomaly.module.files::field.allowed_types.instructions'),
(63, 63, 'en', 'anomaly.module.files::field.keywords.name', 'anomaly.module.files::field.keywords.placeholder', 'anomaly.module.files::field.keywords.warning', 'anomaly.module.files::field.keywords.instructions'),
(64, 64, 'en', 'anomaly.module.files::field.extension.name', 'anomaly.module.files::field.extension.placeholder', 'anomaly.module.files::field.extension.warning', 'anomaly.module.files::field.extension.instructions'),
(65, 65, 'en', 'anomaly.module.files::field.width.name', 'anomaly.module.files::field.width.placeholder', 'anomaly.module.files::field.width.warning', 'anomaly.module.files::field.width.instructions'),
(66, 66, 'en', 'anomaly.module.files::field.height.name', 'anomaly.module.files::field.height.placeholder', 'anomaly.module.files::field.height.warning', 'anomaly.module.files::field.height.instructions'),
(67, 67, 'en', 'anomaly.module.files::field.mime_type.name', 'anomaly.module.files::field.mime_type.placeholder', 'anomaly.module.files::field.mime_type.warning', 'anomaly.module.files::field.mime_type.instructions'),
(68, 68, 'en', 'anomaly.module.files::field.size.name', 'anomaly.module.files::field.size.placeholder', 'anomaly.module.files::field.size.warning', 'anomaly.module.files::field.size.instructions'),
(69, 69, 'en', 'anomaly.module.files::field.alt_text.name', 'anomaly.module.files::field.alt_text.placeholder', 'anomaly.module.files::field.alt_text.warning', 'anomaly.module.files::field.alt_text.instructions'),
(70, 70, 'en', 'anomaly.module.files::field.title.name', 'anomaly.module.files::field.title.placeholder', 'anomaly.module.files::field.title.warning', 'anomaly.module.files::field.title.instructions'),
(71, 71, 'en', 'anomaly.module.files::field.caption.name', 'anomaly.module.files::field.caption.placeholder', 'anomaly.module.files::field.caption.warning', 'anomaly.module.files::field.caption.instructions'),
(72, 72, 'en', 'anomaly.module.files::field.str_id.name', 'anomaly.module.files::field.str_id.placeholder', 'anomaly.module.files::field.str_id.warning', 'anomaly.module.files::field.str_id.instructions'),
(73, 73, 'en', 'anomaly.module.search::field.title.name', 'anomaly.module.search::field.title.placeholder', 'anomaly.module.search::field.title.warning', 'anomaly.module.search::field.title.instructions'),
(74, 74, 'en', 'anomaly.module.search::field.locale.name', 'anomaly.module.search::field.locale.placeholder', 'anomaly.module.search::field.locale.warning', 'anomaly.module.search::field.locale.instructions'),
(75, 75, 'en', 'anomaly.module.search::field.description.name', 'anomaly.module.search::field.description.placeholder', 'anomaly.module.search::field.description.warning', 'anomaly.module.search::field.description.instructions'),
(76, 76, 'en', 'anomaly.module.search::field.entry.name', 'anomaly.module.search::field.entry.placeholder', 'anomaly.module.search::field.entry.warning', 'anomaly.module.search::field.entry.instructions'),
(77, 77, 'en', 'anomaly.module.search::field.stream.name', 'anomaly.module.search::field.stream.placeholder', 'anomaly.module.search::field.stream.warning', 'anomaly.module.search::field.stream.instructions'),
(78, 78, 'en', 'anomaly.module.search::field.keywords.name', 'anomaly.module.search::field.keywords.placeholder', 'anomaly.module.search::field.keywords.warning', 'anomaly.module.search::field.keywords.instructions'),
(79, 79, 'en', 'anomaly.module.search::field.searchable.name', 'anomaly.module.search::field.searchable.placeholder', 'anomaly.module.search::field.searchable.warning', 'anomaly.module.search::field.searchable.instructions'),
(80, 80, 'en', 'anomaly.module.pages::field.str_id.name', 'anomaly.module.pages::field.str_id.placeholder', 'anomaly.module.pages::field.str_id.warning', 'anomaly.module.pages::field.str_id.instructions'),
(81, 81, 'en', 'anomaly.module.pages::field.title.name', 'anomaly.module.pages::field.title.placeholder', 'anomaly.module.pages::field.title.warning', 'anomaly.module.pages::field.title.instructions'),
(82, 82, 'en', 'anomaly.module.pages::field.slug.name', 'anomaly.module.pages::field.slug.placeholder', 'anomaly.module.pages::field.slug.warning', 'anomaly.module.pages::field.slug.instructions'),
(83, 83, 'en', 'anomaly.module.pages::field.content.name', 'anomaly.module.pages::field.content.placeholder', 'anomaly.module.pages::field.content.warning', 'anomaly.module.pages::field.content.instructions'),
(84, 84, 'en', 'anomaly.module.pages::field.path.name', 'anomaly.module.pages::field.path.placeholder', 'anomaly.module.pages::field.path.warning', 'anomaly.module.pages::field.path.instructions'),
(85, 85, 'en', 'anomaly.module.pages::field.enabled.name', 'anomaly.module.pages::field.enabled.placeholder', 'anomaly.module.pages::field.enabled.warning', 'anomaly.module.pages::field.enabled.instructions'),
(86, 86, 'en', 'anomaly.module.pages::field.home.name', 'anomaly.module.pages::field.home.placeholder', 'anomaly.module.pages::field.home.warning', 'anomaly.module.pages::field.home.instructions'),
(87, 87, 'en', 'anomaly.module.pages::field.meta_title.name', 'anomaly.module.pages::field.meta_title.placeholder', 'anomaly.module.pages::field.meta_title.warning', 'anomaly.module.pages::field.meta_title.instructions'),
(88, 88, 'en', 'anomaly.module.pages::field.meta_description.name', 'anomaly.module.pages::field.meta_description.placeholder', 'anomaly.module.pages::field.meta_description.warning', 'anomaly.module.pages::field.meta_description.instructions'),
(90, 90, 'en', 'anomaly.module.pages::field.layout.name', 'anomaly.module.pages::field.layout.placeholder', 'anomaly.module.pages::field.layout.warning', 'anomaly.module.pages::field.layout.instructions'),
(91, 91, 'en', 'anomaly.module.pages::field.allowed_roles.name', 'anomaly.module.pages::field.allowed_roles.placeholder', 'anomaly.module.pages::field.allowed_roles.warning', 'anomaly.module.pages::field.allowed_roles.instructions'),
(92, 92, 'en', 'anomaly.module.pages::field.parent.name', 'anomaly.module.pages::field.parent.placeholder', 'anomaly.module.pages::field.parent.warning', 'anomaly.module.pages::field.parent.instructions'),
(93, 93, 'en', 'anomaly.module.pages::field.theme_layout.name', 'anomaly.module.pages::field.theme_layout.placeholder', 'anomaly.module.pages::field.theme_layout.warning', 'anomaly.module.pages::field.theme_layout.instructions'),
(94, 94, 'en', 'anomaly.module.pages::field.type.name', 'anomaly.module.pages::field.type.placeholder', 'anomaly.module.pages::field.type.warning', 'anomaly.module.pages::field.type.instructions'),
(95, 95, 'en', 'anomaly.module.pages::field.handler.name', 'anomaly.module.pages::field.handler.placeholder', 'anomaly.module.pages::field.handler.warning', 'anomaly.module.pages::field.handler.instructions'),
(96, 96, 'en', 'anomaly.module.pages::field.visible.name', 'anomaly.module.pages::field.visible.placeholder', 'anomaly.module.pages::field.visible.warning', 'anomaly.module.pages::field.visible.instructions'),
(97, 97, 'en', 'anomaly.module.pages::field.exact.name', 'anomaly.module.pages::field.exact.placeholder', 'anomaly.module.pages::field.exact.warning', 'anomaly.module.pages::field.exact.instructions'),
(98, 98, 'en', 'anomaly.module.pages::field.entry.name', 'anomaly.module.pages::field.entry.placeholder', 'anomaly.module.pages::field.entry.warning', 'anomaly.module.pages::field.entry.instructions'),
(99, 99, 'en', 'anomaly.module.pages::field.name.name', 'anomaly.module.pages::field.name.placeholder', 'anomaly.module.pages::field.name.warning', 'anomaly.module.pages::field.name.instructions'),
(100, 100, 'en', 'anomaly.module.pages::field.description.name', 'anomaly.module.pages::field.description.placeholder', 'anomaly.module.pages::field.description.warning', 'anomaly.module.pages::field.description.instructions'),
(101, 101, 'en', 'anomaly.module.pages::field.publish_at.name', 'anomaly.module.pages::field.publish_at.placeholder', 'anomaly.module.pages::field.publish_at.warning', 'anomaly.module.pages::field.publish_at.instructions'),
(102, 102, 'en', 'anomaly.module.addons::field.type.name', 'anomaly.module.addons::field.type.placeholder', 'anomaly.module.addons::field.type.warning', 'anomaly.module.addons::field.type.instructions'),
(103, 103, 'en', 'anomaly.module.addons::field.name.name', 'anomaly.module.addons::field.name.placeholder', 'anomaly.module.addons::field.name.warning', 'anomaly.module.addons::field.name.instructions'),
(104, 104, 'en', 'anomaly.module.addons::field.slug.name', 'anomaly.module.addons::field.slug.placeholder', 'anomaly.module.addons::field.slug.warning', 'anomaly.module.addons::field.slug.instructions'),
(105, 105, 'en', 'anomaly.module.addons::field.repository.name', 'anomaly.module.addons::field.repository.placeholder', 'anomaly.module.addons::field.repository.warning', 'anomaly.module.addons::field.repository.instructions'),
(106, 106, 'en', 'anomaly.module.addons::field.namespace.name', 'anomaly.module.addons::field.namespace.placeholder', 'anomaly.module.addons::field.namespace.warning', 'anomaly.module.addons::field.namespace.instructions'),
(107, 107, 'en', 'anomaly.module.addons::field.title.name', 'anomaly.module.addons::field.title.placeholder', 'anomaly.module.addons::field.title.warning', 'anomaly.module.addons::field.title.instructions'),
(108, 108, 'en', 'anomaly.module.addons::field.description.name', 'anomaly.module.addons::field.description.placeholder', 'anomaly.module.addons::field.description.warning', 'anomaly.module.addons::field.description.instructions'),
(109, 109, 'en', 'anomaly.module.addons::field.marketplace.name', 'anomaly.module.addons::field.marketplace.placeholder', 'anomaly.module.addons::field.marketplace.warning', 'anomaly.module.addons::field.marketplace.instructions'),
(110, 110, 'en', 'anomaly.module.addons::field.homepage.name', 'anomaly.module.addons::field.homepage.placeholder', 'anomaly.module.addons::field.homepage.warning', 'anomaly.module.addons::field.homepage.instructions'),
(111, 111, 'en', 'anomaly.module.addons::field.requires.name', 'anomaly.module.addons::field.requires.placeholder', 'anomaly.module.addons::field.requires.warning', 'anomaly.module.addons::field.requires.instructions'),
(112, 112, 'en', 'anomaly.module.addons::field.suggests.name', 'anomaly.module.addons::field.suggests.placeholder', 'anomaly.module.addons::field.suggests.warning', 'anomaly.module.addons::field.suggests.instructions'),
(113, 113, 'en', 'anomaly.module.addons::field.versions.name', 'anomaly.module.addons::field.versions.placeholder', 'anomaly.module.addons::field.versions.warning', 'anomaly.module.addons::field.versions.instructions'),
(114, 114, 'en', 'anomaly.module.addons::field.licenses.name', 'anomaly.module.addons::field.licenses.placeholder', 'anomaly.module.addons::field.licenses.warning', 'anomaly.module.addons::field.licenses.instructions'),
(115, 115, 'en', 'anomaly.module.addons::field.authors.name', 'anomaly.module.addons::field.authors.placeholder', 'anomaly.module.addons::field.authors.warning', 'anomaly.module.addons::field.authors.instructions'),
(116, 116, 'en', 'anomaly.module.addons::field.support.name', 'anomaly.module.addons::field.support.placeholder', 'anomaly.module.addons::field.support.warning', 'anomaly.module.addons::field.support.instructions'),
(117, 117, 'en', 'anomaly.module.addons::field.assets.name', 'anomaly.module.addons::field.assets.placeholder', 'anomaly.module.addons::field.assets.warning', 'anomaly.module.addons::field.assets.instructions'),
(118, 118, 'en', 'anomaly.module.addons::field.readme.name', 'anomaly.module.addons::field.readme.placeholder', 'anomaly.module.addons::field.readme.warning', 'anomaly.module.addons::field.readme.instructions'),
(119, 119, 'en', 'anomaly.module.addons::field.url.name', 'anomaly.module.addons::field.url.placeholder', 'anomaly.module.addons::field.url.warning', 'anomaly.module.addons::field.url.instructions'),
(120, 120, 'en', 'anomaly.module.dashboard::field.name.name', 'anomaly.module.dashboard::field.name.placeholder', 'anomaly.module.dashboard::field.name.warning', 'anomaly.module.dashboard::field.name.instructions'),
(121, 121, 'en', 'anomaly.module.dashboard::field.slug.name', 'anomaly.module.dashboard::field.slug.placeholder', 'anomaly.module.dashboard::field.slug.warning', 'anomaly.module.dashboard::field.slug.instructions'),
(122, 122, 'en', 'anomaly.module.dashboard::field.description.name', 'anomaly.module.dashboard::field.description.placeholder', 'anomaly.module.dashboard::field.description.warning', 'anomaly.module.dashboard::field.description.instructions'),
(123, 123, 'en', 'anomaly.module.dashboard::field.layout.name', 'anomaly.module.dashboard::field.layout.placeholder', 'anomaly.module.dashboard::field.layout.warning', 'anomaly.module.dashboard::field.layout.instructions'),
(124, 124, 'en', 'anomaly.module.dashboard::field.title.name', 'anomaly.module.dashboard::field.title.placeholder', 'anomaly.module.dashboard::field.title.warning', 'anomaly.module.dashboard::field.title.instructions'),
(125, 125, 'en', 'anomaly.module.dashboard::field.extension.name', 'anomaly.module.dashboard::field.extension.placeholder', 'anomaly.module.dashboard::field.extension.warning', 'anomaly.module.dashboard::field.extension.instructions'),
(126, 126, 'en', 'anomaly.module.dashboard::field.column.name', 'anomaly.module.dashboard::field.column.placeholder', 'anomaly.module.dashboard::field.column.warning', 'anomaly.module.dashboard::field.column.instructions'),
(127, 127, 'en', 'anomaly.module.dashboard::field.pinned.name', 'anomaly.module.dashboard::field.pinned.placeholder', 'anomaly.module.dashboard::field.pinned.warning', 'anomaly.module.dashboard::field.pinned.instructions'),
(128, 128, 'en', 'anomaly.module.dashboard::field.dashboard.name', 'anomaly.module.dashboard::field.dashboard.placeholder', 'anomaly.module.dashboard::field.dashboard.warning', 'anomaly.module.dashboard::field.dashboard.instructions'),
(129, 129, 'en', 'anomaly.module.dashboard::field.allowed_roles.name', 'anomaly.module.dashboard::field.allowed_roles.placeholder', 'anomaly.module.dashboard::field.allowed_roles.warning', 'anomaly.module.dashboard::field.allowed_roles.instructions'),
(130, 130, 'en', 'anomaly.module.posts::field.str_id.name', 'anomaly.module.posts::field.str_id.placeholder', 'anomaly.module.posts::field.str_id.warning', 'anomaly.module.posts::field.str_id.instructions'),
(131, 131, 'en', 'anomaly.module.posts::field.name.name', 'anomaly.module.posts::field.name.placeholder', 'anomaly.module.posts::field.name.warning', 'anomaly.module.posts::field.name.instructions'),
(132, 132, 'en', 'anomaly.module.posts::field.title.name', 'anomaly.module.posts::field.title.placeholder', 'anomaly.module.posts::field.title.warning', 'anomaly.module.posts::field.title.instructions'),
(133, 133, 'en', 'anomaly.module.posts::field.slug.name', 'anomaly.module.posts::field.slug.placeholder', 'anomaly.module.posts::field.slug.warning', 'anomaly.module.posts::field.slug.instructions'),
(134, 134, 'en', 'anomaly.module.posts::field.content.name', 'anomaly.module.posts::field.content.placeholder', 'anomaly.module.posts::field.content.warning', 'anomaly.module.posts::field.content.instructions'),
(135, 135, 'en', 'anomaly.module.posts::field.type.name', 'anomaly.module.posts::field.type.placeholder', 'anomaly.module.posts::field.type.warning', 'anomaly.module.posts::field.type.instructions'),
(136, 136, 'en', 'anomaly.module.posts::field.tags.name', 'anomaly.module.posts::field.tags.placeholder', 'anomaly.module.posts::field.tags.warning', 'anomaly.module.posts::field.tags.instructions'),
(137, 137, 'en', 'anomaly.module.posts::field.summary.name', 'anomaly.module.posts::field.summary.placeholder', 'anomaly.module.posts::field.summary.warning', 'anomaly.module.posts::field.summary.instructions'),
(138, 138, 'en', 'anomaly.module.posts::field.description.name', 'anomaly.module.posts::field.description.placeholder', 'anomaly.module.posts::field.description.warning', 'anomaly.module.posts::field.description.instructions'),
(139, 139, 'en', 'anomaly.module.posts::field.publish_at.name', 'anomaly.module.posts::field.publish_at.placeholder', 'anomaly.module.posts::field.publish_at.warning', 'anomaly.module.posts::field.publish_at.instructions'),
(140, 140, 'en', 'anomaly.module.posts::field.entry.name', 'anomaly.module.posts::field.entry.placeholder', 'anomaly.module.posts::field.entry.warning', 'anomaly.module.posts::field.entry.instructions'),
(141, 141, 'en', 'anomaly.module.posts::field.author.name', 'anomaly.module.posts::field.author.placeholder', 'anomaly.module.posts::field.author.warning', 'anomaly.module.posts::field.author.instructions'),
(142, 142, 'en', 'anomaly.module.posts::field.layout.name', 'anomaly.module.posts::field.layout.placeholder', 'anomaly.module.posts::field.layout.warning', 'anomaly.module.posts::field.layout.instructions'),
(143, 143, 'en', 'anomaly.module.posts::field.category.name', 'anomaly.module.posts::field.category.placeholder', 'anomaly.module.posts::field.category.warning', 'anomaly.module.posts::field.category.instructions'),
(144, 144, 'en', 'anomaly.module.posts::field.enabled.name', 'anomaly.module.posts::field.enabled.placeholder', 'anomaly.module.posts::field.enabled.warning', 'anomaly.module.posts::field.enabled.instructions'),
(145, 145, 'en', 'anomaly.module.posts::field.featured.name', 'anomaly.module.posts::field.featured.placeholder', 'anomaly.module.posts::field.featured.warning', 'anomaly.module.posts::field.featured.instructions'),
(146, 146, 'en', 'anomaly.module.posts::field.meta_title.name', 'anomaly.module.posts::field.meta_title.placeholder', 'anomaly.module.posts::field.meta_title.warning', 'anomaly.module.posts::field.meta_title.instructions'),
(147, 147, 'en', 'anomaly.module.posts::field.meta_description.name', 'anomaly.module.posts::field.meta_description.placeholder', 'anomaly.module.posts::field.meta_description.warning', 'anomaly.module.posts::field.meta_description.instructions'),
(149, 149, 'en', 'anomaly.module.posts::field.ttl.name', 'anomaly.module.posts::field.ttl.placeholder', 'anomaly.module.posts::field.ttl.warning', 'anomaly.module.posts::field.ttl.instructions'),
(150, 150, 'en', 'anomaly.module.posts::field.theme_layout.name', 'anomaly.module.posts::field.theme_layout.placeholder', 'anomaly.module.posts::field.theme_layout.warning', 'anomaly.module.posts::field.theme_layout.instructions'),
(151, 151, 'en', 'anomaly.module.streams::field.name.name', 'anomaly.module.streams::field.name.placeholder', 'anomaly.module.streams::field.name.warning', 'anomaly.module.streams::field.name.instructions'),
(152, 152, 'en', 'anomaly.module.streams::field.description.name', 'anomaly.module.streams::field.description.placeholder', 'anomaly.module.streams::field.description.warning', 'anomaly.module.streams::field.description.instructions'),
(153, 153, 'en', 'anomaly.module.streams::field.slug.name', 'anomaly.module.streams::field.slug.placeholder', 'anomaly.module.streams::field.slug.warning', 'anomaly.module.streams::field.slug.instructions'),
(154, 154, 'en', 'anomaly.module.streams::field.virtualize.name', 'anomaly.module.streams::field.virtualize.placeholder', 'anomaly.module.streams::field.virtualize.warning', 'anomaly.module.streams::field.virtualize.instructions'),
(155, 155, 'en', 'anomaly.module.streams::field.icon.name', 'anomaly.module.streams::field.icon.placeholder', 'anomaly.module.streams::field.icon.warning', 'anomaly.module.streams::field.icon.instructions'),
(156, 156, 'en', 'anomaly.module.redirects::field.from.name', 'anomaly.module.redirects::field.from.placeholder', 'anomaly.module.redirects::field.from.warning', 'anomaly.module.redirects::field.from.instructions'),
(157, 157, 'en', 'anomaly.module.redirects::field.to.name', 'anomaly.module.redirects::field.to.placeholder', 'anomaly.module.redirects::field.to.warning', 'anomaly.module.redirects::field.to.instructions'),
(158, 158, 'en', 'anomaly.module.redirects::field.status.name', 'anomaly.module.redirects::field.status.placeholder', 'anomaly.module.redirects::field.status.warning', 'anomaly.module.redirects::field.status.instructions'),
(159, 159, 'en', 'anomaly.module.redirects::field.secure.name', 'anomaly.module.redirects::field.secure.placeholder', 'anomaly.module.redirects::field.secure.warning', 'anomaly.module.redirects::field.secure.instructions'),
(160, 160, 'en', 'anomaly.extension.html_block::field.html.name', 'anomaly.extension.html_block::field.html.placeholder', 'anomaly.extension.html_block::field.html.warning', 'anomaly.extension.html_block::field.html.instructions'),
(161, 161, 'en', 'anomaly.extension.private_storage_adapter::field.name.name', 'anomaly.extension.private_storage_adapter::field.name.placeholder', 'anomaly.extension.private_storage_adapter::field.name.warning', 'anomaly.extension.private_storage_adapter::field.name.instructions'),
(162, 162, 'en', 'anomaly.extension.private_storage_adapter::field.slug.name', 'anomaly.extension.private_storage_adapter::field.slug.placeholder', 'anomaly.extension.private_storage_adapter::field.slug.warning', 'anomaly.extension.private_storage_adapter::field.slug.instructions'),
(163, 163, 'en', 'anomaly.extension.page_link_type::field.title.name', 'anomaly.extension.page_link_type::field.title.placeholder', 'anomaly.extension.page_link_type::field.title.warning', 'anomaly.extension.page_link_type::field.title.instructions'),
(164, 164, 'en', 'anomaly.extension.page_link_type::field.page.name', 'anomaly.extension.page_link_type::field.page.placeholder', 'anomaly.extension.page_link_type::field.page.warning', 'anomaly.extension.page_link_type::field.page.instructions'),
(165, 165, 'en', 'anomaly.extension.page_link_type::field.description.name', 'anomaly.extension.page_link_type::field.description.placeholder', 'anomaly.extension.page_link_type::field.description.warning', 'anomaly.extension.page_link_type::field.description.instructions'),
(166, 166, 'en', 'anomaly.extension.url_link_type::field.title.name', 'anomaly.extension.url_link_type::field.title.placeholder', 'anomaly.extension.url_link_type::field.title.warning', 'anomaly.extension.url_link_type::field.title.instructions'),
(167, 167, 'en', 'anomaly.extension.url_link_type::field.url.name', 'anomaly.extension.url_link_type::field.url.placeholder', 'anomaly.extension.url_link_type::field.url.warning', 'anomaly.extension.url_link_type::field.url.instructions'),
(168, 168, 'en', 'anomaly.extension.url_link_type::field.description.name', 'anomaly.extension.url_link_type::field.description.placeholder', 'anomaly.extension.url_link_type::field.description.warning', 'anomaly.extension.url_link_type::field.description.instructions'),
(169, 169, 'en', 'anomaly.extension.wysiwyg_block::field.content.name', 'anomaly.extension.wysiwyg_block::field.content.placeholder', 'anomaly.extension.wysiwyg_block::field.content.warning', 'anomaly.extension.wysiwyg_block::field.content.instructions');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_locks`
--

CREATE TABLE `default_streams_locks` (
  `id` int(10) UNSIGNED NOT NULL,
  `locked_at` datetime NOT NULL,
  `locked_by_id` int(11) NOT NULL,
  `lockable_id` int(10) UNSIGNED NOT NULL,
  `lockable_type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_streams`
--

CREATE TABLE `default_streams_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `namespace` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `title_column` varchar(255) NOT NULL DEFAULT 'id',
  `order_by` varchar(255) NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sortable` tinyint(1) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) NOT NULL DEFAULT 0,
  `trashable` tinyint(1) NOT NULL DEFAULT 0,
  `translatable` tinyint(1) NOT NULL DEFAULT 0,
  `versionable` tinyint(1) NOT NULL DEFAULT 0,
  `config` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_streams`
--

INSERT INTO `default_streams_streams` (`id`, `sort_order`, `namespace`, `slug`, `prefix`, `title_column`, `order_by`, `locked`, `hidden`, `sortable`, `searchable`, `trashable`, `translatable`, `versionable`, `config`) VALUES
(1, NULL, 'navigation', 'menus', 'navigation_', 'name', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(2, NULL, 'navigation', 'links', 'navigation_', 'id', 'id', 0, 0, 1, 0, 1, 0, 0, 'a:0:{}'),
(3, NULL, 'users', 'users', 'users_', 'display_name', 'id', 0, 0, 0, 1, 1, 0, 0, 'a:0:{}'),
(4, NULL, 'users', 'roles', 'users_', 'name', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(5, NULL, 'configuration', 'configuration', 'configuration_', 'id', 'id', 1, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(6, NULL, 'preferences', 'preferences', 'preferences_', 'id', 'id', 0, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(7, NULL, 'settings', 'settings', 'settings_', 'id', 'id', 0, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(8, NULL, 'blocks', 'areas', 'blocks_', 'name', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(9, NULL, 'blocks', 'blocks', 'blocks_', 'type', 'id', 0, 0, 1, 0, 0, 1, 0, 'a:0:{}'),
(10, NULL, 'blocks', 'types', 'blocks_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(11, NULL, 'files', 'disks', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(12, NULL, 'files', 'folders', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(13, NULL, 'files', 'files', 'files_', 'name', 'id', 0, 0, 0, 1, 1, 0, 0, 'a:0:{}'),
(14, NULL, 'search', 'items', 'search_', 'title', 'id', 0, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(15, NULL, 'pages', 'pages', 'pages_', 'title', 'id', 0, 0, 1, 1, 1, 1, 0, 'a:0:{}'),
(16, NULL, 'pages', 'types', 'pages_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(17, NULL, 'addons', 'addons', 'addons_', 'name', 'id', 0, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(18, NULL, 'addons', 'repositories', 'addons_', 'name', 'id', 0, 0, 1, 0, 0, 1, 0, 'a:0:{}'),
(19, NULL, 'dashboard', 'dashboards', 'dashboard_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(20, NULL, 'dashboard', 'widgets', 'dashboard_', 'title', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(21, NULL, 'posts', 'categories', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(22, NULL, 'posts', 'posts', 'posts_', 'title', 'id', 0, 0, 0, 1, 1, 1, 0, 'a:0:{}'),
(23, NULL, 'posts', 'types', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(24, NULL, 'streams_utilities', 'groups', 'streams_utilities_', 'id', 'id', 0, 0, 1, 0, 0, 1, 0, 'a:0:{}'),
(25, NULL, 'redirects', 'redirects', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 0, 'a:0:{}'),
(26, NULL, 'redirects', 'domains', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 0, 'a:0:{}'),
(27, NULL, 'html_block', 'blocks', 'html_block_', 'id', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(28, NULL, 'page_link_type', 'pages', 'page_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(29, NULL, 'url_link_type', 'urls', 'url_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(30, NULL, 'wysiwyg_block', 'blocks', 'wysiwyg_block_', 'id', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(31, NULL, 'files', 'images', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(32, NULL, 'files', 'documents', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(33, NULL, 'pages', 'default_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 0, 'a:0:{}'),
(34, NULL, 'posts', 'default_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_streams_translations`
--

CREATE TABLE `default_streams_streams_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_streams_translations`
--

INSERT INTO `default_streams_streams_translations` (`id`, `stream_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'anomaly.module.navigation::stream.menus.name', 'anomaly.module.navigation::stream.menus.description'),
(2, 2, 'en', 'anomaly.module.navigation::stream.links.name', 'anomaly.module.navigation::stream.links.description'),
(3, 3, 'en', 'anomaly.module.users::stream.users.name', 'anomaly.module.users::stream.users.description'),
(4, 4, 'en', 'anomaly.module.users::stream.roles.name', 'anomaly.module.users::stream.roles.description'),
(5, 5, 'en', 'anomaly.module.configuration::stream.configuration.name', 'anomaly.module.configuration::stream.configuration.description'),
(6, 6, 'en', 'anomaly.module.preferences::stream.preferences.name', 'anomaly.module.preferences::stream.preferences.description'),
(7, 7, 'en', 'anomaly.module.settings::stream.settings.name', 'anomaly.module.settings::stream.settings.description'),
(8, 8, 'en', 'anomaly.module.blocks::stream.areas.name', 'anomaly.module.blocks::stream.areas.description'),
(9, 9, 'en', 'anomaly.module.blocks::stream.blocks.name', 'anomaly.module.blocks::stream.blocks.description'),
(10, 10, 'en', 'anomaly.module.blocks::stream.types.name', 'anomaly.module.blocks::stream.types.description'),
(11, 11, 'en', 'anomaly.module.files::stream.disks.name', 'anomaly.module.files::stream.disks.description'),
(12, 12, 'en', 'anomaly.module.files::stream.folders.name', 'anomaly.module.files::stream.folders.description'),
(13, 13, 'en', 'anomaly.module.files::stream.files.name', 'anomaly.module.files::stream.files.description'),
(14, 14, 'en', 'anomaly.module.search::stream.items.name', 'anomaly.module.search::stream.items.description'),
(15, 15, 'en', 'anomaly.module.pages::stream.pages.name', 'anomaly.module.pages::stream.pages.description'),
(16, 16, 'en', 'anomaly.module.pages::stream.types.name', 'anomaly.module.pages::stream.types.description'),
(17, 17, 'en', 'anomaly.module.addons::stream.addons.name', 'anomaly.module.addons::stream.addons.description'),
(18, 18, 'en', 'anomaly.module.addons::stream.repositories.name', 'anomaly.module.addons::stream.repositories.description'),
(19, 19, 'en', 'anomaly.module.dashboard::stream.dashboards.name', 'anomaly.module.dashboard::stream.dashboards.description'),
(20, 20, 'en', 'anomaly.module.dashboard::stream.widgets.name', 'anomaly.module.dashboard::stream.widgets.description'),
(21, 21, 'en', 'anomaly.module.posts::stream.categories.name', 'anomaly.module.posts::stream.categories.description'),
(22, 22, 'en', 'anomaly.module.posts::stream.posts.name', 'anomaly.module.posts::stream.posts.description'),
(23, 23, 'en', 'anomaly.module.posts::stream.types.name', 'anomaly.module.posts::stream.types.description'),
(24, 24, 'en', 'anomaly.module.streams::stream.groups.name', 'anomaly.module.streams::stream.groups.description'),
(25, 25, 'en', 'anomaly.module.redirects::stream.redirects.name', 'anomaly.module.redirects::stream.redirects.description'),
(26, 26, 'en', 'anomaly.module.redirects::stream.domains.name', 'anomaly.module.redirects::stream.domains.description'),
(27, 27, 'en', 'anomaly.extension.html_block::stream.blocks.name', 'anomaly.extension.html_block::stream.blocks.description'),
(28, 28, 'en', 'anomaly.extension.page_link_type::stream.pages.name', 'anomaly.extension.page_link_type::stream.pages.description'),
(29, 29, 'en', 'anomaly.extension.url_link_type::stream.urls.name', 'anomaly.extension.url_link_type::stream.urls.description'),
(30, 30, 'en', 'anomaly.extension.wysiwyg_block::stream.blocks.name', 'anomaly.extension.wysiwyg_block::stream.blocks.description'),
(31, 31, 'en', 'Images', 'A folder for images.'),
(32, 32, 'en', 'Documents', 'A folder for documents.'),
(33, 33, 'en', 'Default', 'A simple page type.'),
(34, 34, 'en', 'Default', 'A simple post type.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_utilities_groups`
--

CREATE TABLE `default_streams_utilities_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `virtualize` tinyint(1) DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_utilities_groups_translations`
--

CREATE TABLE `default_streams_utilities_groups_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_streams_versions`
--

CREATE TABLE `default_streams_versions` (
  `version` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `versionable_id` int(10) UNSIGNED NOT NULL,
  `versionable_type` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `model` longtext NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_streams_versions`
--

INSERT INTO `default_streams_versions` (`version`, `created_at`, `created_by_id`, `versionable_id`, `versionable_type`, `ip_address`, `model`, `data`) VALUES
(1, '2024-02-02 23:18:08', NULL, 1, 'Anomaly\\PagesModule\\Page\\PageModel', '127.0.0.1', 'O:34:\"Anomaly\\PagesModule\\Page\\PageModel\":55:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"pages_pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:12:\"translations\";i:3;s:12:\"allowedRoles\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:4:\"home\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:24:\"gsEdDYC9rRqpmqKwfPrPAghA\";s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:46:\"Anomaly\\PagesModule\\Page\\PageTranslationsModel\":38:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:24:\"pages_pages_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:7:\"Welcome\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:7:\"Welcome\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"type\";O:34:\"Anomaly\\PagesModule\\Type\\TypeModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"pages_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:24:\"pages_types_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"pages\";}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:6:{s:4:\"name\";s:32:\"required|unique:pages_types,name\";s:4:\"slug\";s:32:\"required|unique:pages_types,slug\";s:11:\"description\";s:0:\"\";s:12:\"theme_layout\";s:8:\"required\";s:6:\"layout\";s:8:\"required\";s:7:\"handler\";s:8:\"required\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:12:\"theme_layout\";i:4;s:6:\"layout\";i:5;s:7:\"handler\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:4:\"name\";s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"pages_default_pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:32:\"pages_default_pages_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:2:\"id\";s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"parent\";N;s:8:\"children\";O:39:\"Anomaly\\PagesModule\\Page\\PageCollection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:2:{i:0;s:8:\"children\";i:1;s:5:\"entry\";}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:5:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:4:\"path\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0rules\";a:16:{s:6:\"str_id\";s:8:\"required\";s:5:\"title\";s:8:\"required\";s:4:\"slug\";s:8:\"required\";s:4:\"path\";s:8:\"required\";s:4:\"type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:7:\"visible\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:5:\"exact\";s:0:\"\";s:4:\"home\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:12:\"theme_layout\";s:0:\"\";s:13:\"allowed_roles\";s:0:\"\";s:10:\"publish_at\";s:0:\"\";}s:9:\"\0*\0fields\";a:16:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:4:\"slug\";i:3;s:4:\"path\";i:4;s:4:\"type\";i:5;s:5:\"entry\";i:6;s:6:\"parent\";i:7;s:7:\"visible\";i:8;s:7:\"enabled\";i:9;s:5:\"exact\";i:10;s:4:\"home\";i:11;s:10:\"meta_title\";i:12;s:16:\"meta_description\";i:13;s:12:\"theme_layout\";i:14;s:13:\"allowed_roles\";i:15;s:10:\"publish_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:6:\"parent\";i:3;s:13:\"allowed_roles\";}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:1;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:5:\"title\";s:16:\"\0*\0forceDeleting\";b:0;s:9:\"\0*\0active\";b:0;s:10:\"\0*\0current\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;}', 'a:17:{s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:4:\"home\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"str_id\";s:24:\"gsEdDYC9rRqpmqKwfPrPAghA\";s:5:\"title\";s:7:\"Welcome\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:4:\"type\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:07.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:07.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:5:\"entry\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:08.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:08.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:6:\"parent\";N;s:8:\"children\";a:0:{}s:13:\"allowed_roles\";a:0:{}}'),
(2, '2024-02-02 23:18:08', NULL, 2, 'Anomaly\\PagesModule\\Page\\PageModel', '127.0.0.1', 'O:34:\"Anomaly\\PagesModule\\Page\\PageModel\":55:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"pages_pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:12:\"translations\";i:3;s:12:\"allowedRoles\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:8:\"entry_id\";i:2;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"sort_order\";i:2;s:6:\"str_id\";s:24:\"dFJAheZf4K4hhmxcughkWEk6\";s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:2:\"id\";i:2;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:46:\"Anomaly\\PagesModule\\Page\\PageTranslationsModel\":38:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:24:\"pages_pages_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:2;s:5:\"title\";s:7:\"Contact\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:2:\"id\";i:2;}s:11:\"\0*\0original\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:2;s:5:\"title\";s:7:\"Contact\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:2:\"id\";i:2;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"type\";O:34:\"Anomaly\\PagesModule\\Type\\TypeModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"pages_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:24:\"pages_types_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"pages\";}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:6:{s:4:\"name\";s:32:\"required|unique:pages_types,name\";s:4:\"slug\";s:32:\"required|unique:pages_types,slug\";s:11:\"description\";s:0:\"\";s:12:\"theme_layout\";s:8:\"required\";s:6:\"layout\";s:8:\"required\";s:7:\"handler\";s:8:\"required\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:12:\"theme_layout\";i:4;s:6:\"layout\";i:5;s:7:\"handler\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:4:\"name\";s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"pages_default_pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:32:\"pages_default_pages_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:08\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:2:\"id\";s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"parent\";N;s:8:\"children\";O:39:\"Anomaly\\PagesModule\\Page\\PageCollection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:2:{i:0;s:8:\"children\";i:1;s:5:\"entry\";}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:5:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:4:\"path\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0rules\";a:16:{s:6:\"str_id\";s:8:\"required\";s:5:\"title\";s:8:\"required\";s:4:\"slug\";s:8:\"required\";s:4:\"path\";s:8:\"required\";s:4:\"type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:7:\"visible\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:5:\"exact\";s:0:\"\";s:4:\"home\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:12:\"theme_layout\";s:0:\"\";s:13:\"allowed_roles\";s:0:\"\";s:10:\"publish_at\";s:0:\"\";}s:9:\"\0*\0fields\";a:16:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:4:\"slug\";i:3;s:4:\"path\";i:4;s:4:\"type\";i:5;s:5:\"entry\";i:6;s:6:\"parent\";i:7;s:7:\"visible\";i:8;s:7:\"enabled\";i:9;s:5:\"exact\";i:10;s:4:\"home\";i:11;s:10:\"meta_title\";i:12;s:16:\"meta_description\";i:13;s:12:\"theme_layout\";i:14;s:13:\"allowed_roles\";i:15;s:10:\"publish_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:6:\"parent\";i:3;s:13:\"allowed_roles\";}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:1;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:5:\"title\";s:16:\"\0*\0forceDeleting\";b:0;s:9:\"\0*\0active\";b:0;s:10:\"\0*\0current\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;}', 'a:16:{s:8:\"entry_id\";i:2;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"str_id\";s:24:\"dFJAheZf4K4hhmxcughkWEk6\";s:5:\"title\";s:7:\"Contact\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:4:\"type\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:07.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:07.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:5:\"entry\";a:8:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:27:\"2024-02-02T23:18:08.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:08.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:6:\"parent\";N;s:8:\"children\";a:0:{}s:13:\"allowed_roles\";a:0:{}}');
INSERT INTO `default_streams_versions` (`version`, `created_at`, `created_by_id`, `versionable_id`, `versionable_type`, `ip_address`, `model`, `data`) VALUES
(3, '2024-02-02 23:18:12', NULL, 1, 'Anomaly\\PostsModule\\Post\\PostModel', '127.0.0.1', 'O:34:\"Anomaly\\PostsModule\\Post\\PostModel\":53:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"posts_posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:2:{i:0;s:5:\"entry\";i:1;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:10:\"publish_at\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2024-02-02 23:18:12.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:7:\"enabled\";i:1;s:7:\"type_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\";s:11:\"category_id\";i:1;s:9:\"author_id\";i:1;s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:16:\"EZ1eGwImCmcyoaMW\";s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostsEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";N;s:8:\"\0*\0table\";s:24:\"posts_posts_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"type\";O:34:\"Anomaly\\PostsModule\\Type\\TypeModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"posts_types\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsTypesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:24:\"posts_types_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:11\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsTypesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"posts\";}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:7:{s:4:\"name\";s:32:\"required|unique:posts_types,name\";s:4:\"slug\";s:32:\"required|unique:posts_types,slug\";s:6:\"layout\";s:8:\"required\";s:12:\"theme_layout\";s:8:\"required\";s:11:\"description\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}s:9:\"\0*\0fields\";a:7:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:6:\"layout\";i:3;s:12:\"theme_layout\";i:4;s:11:\"description\";i:5;s:10:\"meta_title\";i:6;s:16:\"meta_description\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:4:\"name\";s:16:\"\0*\0forceDeleting\";b:0;}s:8:\"category\";O:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:16:\"posts_categories\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:74:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsCategoriesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:29:\"posts_categories_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:74:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsCategoriesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:5:{s:4:\"name\";s:37:\"required|unique:posts_categories,name\";s:4:\"slug\";s:37:\"required|unique:posts_categories,slug\";s:11:\"description\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}s:9:\"\0*\0fields\";a:5:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:4:\"name\";s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"author\";O:34:\"Anomaly\\UsersModule\\User\\UserModel\":52:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"users_users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"roles\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:23:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:60:\"$2y$10$1OGZnatXZk88B7OUAWo.YOMBQ9tqavshnOkb4tjfYdmNotWgZm/re\";s:12:\"display_name\";s:13:\"Administrator\";s:10:\"first_name\";N;s:9:\"last_name\";N;s:9:\"activated\";i:1;s:7:\"enabled\";i:1;s:11:\"permissions\";N;s:13:\"last_login_at\";N;s:14:\"remember_token\";N;s:15:\"activation_code\";N;s:10:\"reset_code\";N;s:16:\"last_activity_at\";N;s:10:\"ip_address\";N;s:6:\"str_id\";s:24:\"d2dvMIYPrtoiD7ONYe2ydUTv\";}s:11:\"\0*\0original\";a:23:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:07\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:60:\"$2y$10$1OGZnatXZk88B7OUAWo.YOMBQ9tqavshnOkb4tjfYdmNotWgZm/re\";s:12:\"display_name\";s:13:\"Administrator\";s:10:\"first_name\";N;s:9:\"last_name\";N;s:9:\"activated\";i:1;s:7:\"enabled\";i:1;s:11:\"permissions\";N;s:13:\"last_login_at\";N;s:14:\"remember_token\";N;s:15:\"activation_code\";N;s:10:\"reset_code\";N;s:16:\"last_activity_at\";N;s:10:\"ip_address\";N;s:6:\"str_id\";s:24:\"d2dvMIYPrtoiD7ONYe2ydUTv\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:5:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:13:\"last_login_at\";i:3;s:16:\"last_activity_at\";i:4;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:5:\"roles\";O:39:\"Anomaly\\UsersModule\\Role\\RoleCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:34:\"Anomaly\\UsersModule\\Role\\RoleModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"users_roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"admin\";s:11:\"permissions\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"admin\";s:11:\"permissions\";N;s:14:\"pivot_entry_id\";i:1;s:16:\"pivot_related_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:2:{s:5:\"pivot\";O:44:\"Illuminate\\Database\\Eloquent\\Relations\\Pivot\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:17:\"users_users_roles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:0;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:8:\"entry_id\";i:1;s:10:\"related_id\";i:1;}s:11:\"\0*\0original\";a:2:{s:8:\"entry_id\";i:1;s:10:\"related_id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"pivotParent\";O:34:\"Anomaly\\UsersModule\\User\\UserModel\":52:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"users_users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:5:\"roles\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:0;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:0:{}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:5:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:13:\"last_login_at\";i:3;s:16:\"last_activity_at\";i:4;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:8:\"password\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0rules\";a:17:{s:5:\"email\";s:33:\"required|unique:users_users,email\";s:8:\"username\";s:36:\"required|unique:users_users,username\";s:8:\"password\";s:8:\"required\";s:5:\"roles\";s:8:\"required\";s:12:\"display_name\";s:8:\"required\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:9:\"activated\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:11:\"permissions\";s:0:\"\";s:13:\"last_login_at\";s:0:\"\";s:14:\"remember_token\";s:0:\"\";s:15:\"activation_code\";s:0:\"\";s:10:\"reset_code\";s:0:\"\";s:16:\"last_activity_at\";s:0:\"\";s:10:\"ip_address\";s:0:\"\";s:6:\"str_id\";s:8:\"required\";}s:9:\"\0*\0fields\";a:17:{i:0;s:5:\"email\";i:1;s:8:\"username\";i:2;s:8:\"password\";i:3;s:5:\"roles\";i:4;s:12:\"display_name\";i:5;s:10:\"first_name\";i:6;s:9:\"last_name\";i:7;s:9:\"activated\";i:8;s:7:\"enabled\";i:9;s:11:\"permissions\";i:10;s:13:\"last_login_at\";i:11;s:14:\"remember_token\";i:12;s:15:\"activation_code\";i:13;s:10:\"reset_code\";i:14;s:16:\"last_activity_at\";i:15;s:10:\"ip_address\";i:16;s:6:\"str_id\";}s:16:\"\0*\0relationships\";a:1:{i:0;s:5:\"roles\";}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:12:\"display_name\";s:16:\"\0*\0forceDeleting\";b:0;s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";}s:13:\"\0*\0foreignKey\";s:8:\"entry_id\";s:13:\"\0*\0relatedKey\";s:10:\"related_id\";}s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Users\\UsersRolesEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:24:\"users_roles_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:5:\"Admin\";s:11:\"description\";s:21:\"The super admin role.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:06\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:5:\"Admin\";s:11:\"description\";s:21:\"The super admin role.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Users\\UsersRolesEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:4:{s:4:\"name\";s:8:\"required\";s:4:\"slug\";s:32:\"required|unique:users_roles,slug\";s:11:\"description\";s:0:\"\";s:11:\"permissions\";s:0:\"\";}s:9:\"\0*\0fields\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:11:\"permissions\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:4:\"name\";s:16:\"\0*\0forceDeleting\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:8:\"password\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0rules\";a:17:{s:5:\"email\";s:33:\"required|unique:users_users,email\";s:8:\"username\";s:36:\"required|unique:users_users,username\";s:8:\"password\";s:8:\"required\";s:5:\"roles\";s:8:\"required\";s:12:\"display_name\";s:8:\"required\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:9:\"activated\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:11:\"permissions\";s:0:\"\";s:13:\"last_login_at\";s:0:\"\";s:14:\"remember_token\";s:0:\"\";s:15:\"activation_code\";s:0:\"\";s:10:\"reset_code\";s:0:\"\";s:16:\"last_activity_at\";s:0:\"\";s:10:\"ip_address\";s:0:\"\";s:6:\"str_id\";s:8:\"required\";}s:9:\"\0*\0fields\";a:17:{i:0;s:5:\"email\";i:1;s:8:\"username\";i:2;s:8:\"password\";i:3;s:5:\"roles\";i:4;s:12:\"display_name\";i:5;s:10:\"first_name\";i:6;s:9:\"last_name\";i:7;s:9:\"activated\";i:8;s:7:\"enabled\";i:9;s:11:\"permissions\";i:10;s:13:\"last_login_at\";i:11;s:14:\"remember_token\";i:12;s:15:\"activation_code\";i:13;s:10:\"reset_code\";i:14;s:16:\"last_activity_at\";i:15;s:10:\"ip_address\";i:16;s:6:\"str_id\";}s:16:\"\0*\0relationships\";a:1:{i:0;s:5:\"roles\";}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:12:\"display_name\";s:16:\"\0*\0forceDeleting\";b:0;s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";}s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\":51:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:19:\"posts_default_posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryTranslationsModel\":38:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:32:\"posts_default_posts_translations\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2024-02-02 23:18:12\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:15:\"\0*\0cacheMinutes\";i:99999;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:0;s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:16:\"\0*\0relationships\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:2:\"id\";s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostsEntryTranslationsModel\";s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"entry\";}s:12:\"\0*\0restricts\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:5:{i:0;s:5:\"title\";i:1;s:7:\"summary\";i:2;s:4:\"slug\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0rules\";a:14:{s:6:\"str_id\";s:34:\"required|unique:posts_posts,str_id\";s:5:\"title\";s:8:\"required\";s:7:\"summary\";s:0:\"\";s:4:\"slug\";s:32:\"required|unique:posts_posts,slug\";s:4:\"type\";s:8:\"required\";s:10:\"publish_at\";s:8:\"required\";s:6:\"author\";s:8:\"required\";s:5:\"entry\";s:8:\"required\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:8:\"category\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:4:\"tags\";s:0:\"\";}s:9:\"\0*\0fields\";a:14:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:7:\"summary\";i:3;s:4:\"slug\";i:4;s:4:\"type\";i:5;s:10:\"publish_at\";i:6;s:6:\"author\";i:7;s:5:\"entry\";i:8;s:10:\"meta_title\";i:9;s:16:\"meta_description\";i:10;s:8:\"category\";i:11;s:8:\"featured\";i:12;s:7:\"enabled\";i:13;s:4:\"tags\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:6:\"author\";i:2;s:5:\"entry\";i:3;s:8:\"category\";}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0versionable\";b:1;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:12:\"\0*\0titleName\";s:5:\"title\";s:16:\"\0*\0forceDeleting\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;}', 'a:17:{s:10:\"publish_at\";s:27:\"2024-02-02T23:18:12.000000Z\";s:7:\"enabled\";i:1;s:7:\"type_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\";s:11:\"category_id\";i:1;s:9:\"author_id\";i:1;s:6:\"str_id\";s:16:\"EZ1eGwImCmcyoaMW\";s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:4:\"type\";a:14:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:11.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:11.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:8:\"category\";a:12:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:12.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:12.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:6:\"author\";a:24:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:07.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:07.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:60:\"$2y$10$1OGZnatXZk88B7OUAWo.YOMBQ9tqavshnOkb4tjfYdmNotWgZm/re\";s:12:\"display_name\";s:13:\"Administrator\";s:10:\"first_name\";N;s:9:\"last_name\";N;s:9:\"activated\";i:1;s:7:\"enabled\";i:1;s:11:\"permissions\";N;s:13:\"last_login_at\";N;s:14:\"remember_token\";N;s:15:\"activation_code\";N;s:10:\"reset_code\";N;s:16:\"last_activity_at\";N;s:10:\"ip_address\";N;s:6:\"str_id\";s:24:\"d2dvMIYPrtoiD7ONYe2ydUTv\";s:5:\"roles\";a:1:{i:0;a:12:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:06.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:06.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"admin\";s:11:\"permissions\";N;s:4:\"name\";s:5:\"Admin\";s:11:\"description\";s:21:\"The super admin role.\";s:5:\"pivot\";a:2:{s:8:\"entry_id\";i:1;s:10:\"related_id\";i:1;}}}}s:5:\"entry\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2024-02-02T23:18:12.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2024-02-02T23:18:12.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_url_link_type_urls`
--

CREATE TABLE `default_url_link_type_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_url_link_type_urls`
--

INSERT INTO `default_url_link_type_urls` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `url`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'http://pyrocms.com/'),
(2, 2, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'http://pyrocms.com/documentation');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_url_link_type_urls_translations`
--

CREATE TABLE `default_url_link_type_urls_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_url_link_type_urls_translations`
--

INSERT INTO `default_url_link_type_urls_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'en', 'PyroCMS.com', NULL),
(2, 2, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'en', 'Documentation', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_users_roles`
--

CREATE TABLE `default_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `permissions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_users_roles`
--

INSERT INTO `default_users_roles` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `permissions`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, NULL, 'admin', NULL),
(2, 2, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, NULL, 'user', NULL),
(3, 3, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, NULL, 'guest', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_users_roles_translations`
--

CREATE TABLE `default_users_roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_users_roles_translations`
--

INSERT INTO `default_users_roles_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'en', 'Admin', 'The super admin role.'),
(2, 2, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'en', 'User', 'The default user role.'),
(3, 3, '2024-02-02 23:18:06', NULL, '2024-02-02 23:18:06', NULL, 'en', 'Guest', 'The fallback role for non-users.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_users_users`
--

CREATE TABLE `default_users_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT 0,
  `enabled` tinyint(1) DEFAULT 1,
  `permissions` text DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `reset_code` varchar(255) DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `str_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_users_users`
--

INSERT INTO `default_users_users` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `email`, `username`, `password`, `display_name`, `first_name`, `last_name`, `activated`, `enabled`, `permissions`, `last_login_at`, `remember_token`, `activation_code`, `reset_code`, `last_activity_at`, `ip_address`, `str_id`) VALUES
(1, 1, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, NULL, 'ryan@pyrocms.com', 'admin', '$2y$10$1OGZnatXZk88B7OUAWo.YOMBQ9tqavshnOkb4tjfYdmNotWgZm/re', 'Administrator', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd2dvMIYPrtoiD7ONYe2ydUTv'),
(2, 2, '2024-02-02 23:18:07', NULL, '2024-02-02 23:18:07', NULL, NULL, 'demo@pyrocms.com', 'demo', '$2y$10$xSMN5xTvAoKXx0mkcDAthOFrH6TmvIjU9cbb6KB45XjVV1vKmD4TS', 'Demo User', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vN3YhzS7ByhkCuHqcSTYcld2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_users_users_roles`
--

CREATE TABLE `default_users_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `default_users_users_roles`
--

INSERT INTO `default_users_users_roles` (`id`, `entry_id`, `related_id`, `sort_order`) VALUES
(1, 2, 2, NULL),
(2, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_wysiwyg_block_blocks`
--

CREATE TABLE `default_wysiwyg_block_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `default_wysiwyg_block_blocks_translations`
--

CREATE TABLE `default_wysiwyg_block_blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_references` (`reference`),
  ADD UNIQUE KEY `unique_application_domains` (`domain`);

--
-- Indices de la tabla `applications_domains`
--
ALTER TABLE `applications_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_aliases` (`domain`);

--
-- Indices de la tabla `default_addons_addons`
--
ALTER TABLE `default_addons_addons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `73278a4a86960eeb576a8fd4c9ec6997` (`name`),
  ADD UNIQUE KEY `5fd0b37cd7dbbb00f97ba6ce92bf5add` (`namespace`);

--
-- Indices de la tabla `default_addons_extensions`
--
ALTER TABLE `default_addons_extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_extensions` (`namespace`);

--
-- Indices de la tabla `default_addons_modules`
--
ALTER TABLE `default_addons_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_modules` (`namespace`);

--
-- Indices de la tabla `default_addons_repositories`
--
ALTER TABLE `default_addons_repositories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `76dc611d6ebaafc66cc0879c71b5db5c` (`slug`);

--
-- Indices de la tabla `default_addons_repositories_translations`
--
ALTER TABLE `default_addons_repositories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addons_repositories_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_blocks_areas`
--
ALTER TABLE `default_blocks_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3416a75f4cea9109507cacd8e2f2aefc` (`slug`);

--
-- Indices de la tabla `default_blocks_areas_translations`
--
ALTER TABLE `default_blocks_areas_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_areas_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_blocks_blocks`
--
ALTER TABLE `default_blocks_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_blocks_blocks_translations`
--
ALTER TABLE `default_blocks_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_blocks_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_blocks_types`
--
ALTER TABLE `default_blocks_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9a1158154dfa42caddbd0694a4e9bdc8` (`slug`);

--
-- Indices de la tabla `default_blocks_types_translations`
--
ALTER TABLE `default_blocks_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_types_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_cache`
--
ALTER TABLE `default_cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indices de la tabla `default_configuration_configuration`
--
ALTER TABLE `default_configuration_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_dashboard_dashboards`
--
ALTER TABLE `default_dashboard_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `65ded5353c5ee48d0b7d48c591b8f430` (`slug`);

--
-- Indices de la tabla `default_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `default_dashboard_dashboards_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ef54574889c671bd549cd498d11eece0` (`entry_id`,`related_id`);

--
-- Indices de la tabla `default_dashboard_dashboards_translations`
--
ALTER TABLE `default_dashboard_dashboards_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dashboards_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_dashboard_widgets`
--
ALTER TABLE `default_dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_dashboard_widgets_allowed_roles`
--
ALTER TABLE `default_dashboard_widgets_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `30a16932996802771e66ae403bf7ed8d` (`entry_id`,`related_id`);

--
-- Indices de la tabla `default_dashboard_widgets_translations`
--
ALTER TABLE `default_dashboard_widgets_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widgets_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_failed_jobs`
--
ALTER TABLE `default_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_files_disks`
--
ALTER TABLE `default_files_disks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `66f041e16a60928b05a7e228a89c3799` (`slug`);

--
-- Indices de la tabla `default_files_disks_translations`
--
ALTER TABLE `default_files_disks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_disks_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_files_documents`
--
ALTER TABLE `default_files_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_files_documents_translations`
--
ALTER TABLE `default_files_documents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_documents_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_files_files`
--
ALTER TABLE `default_files_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f033ab37c30201f73f142449d037028d` (`str_id`);

--
-- Indices de la tabla `default_files_folders`
--
ALTER TABLE `default_files_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `03afdbd66e7929b125f8597834fa83a4` (`slug`),
  ADD UNIQUE KEY `43ec517d68b6edd3015b3edc9a11367b` (`str_id`);

--
-- Indices de la tabla `default_files_folders_translations`
--
ALTER TABLE `default_files_folders_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folders_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_files_images`
--
ALTER TABLE `default_files_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_files_images_translations`
--
ALTER TABLE `default_files_images_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_images_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_html_block_blocks`
--
ALTER TABLE `default_html_block_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_html_block_blocks_translations`
--
ALTER TABLE `default_html_block_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `html_block_blocks_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_jobs`
--
ALTER TABLE `default_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indices de la tabla `default_migrations`
--
ALTER TABLE `default_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_navigation_links`
--
ALTER TABLE `default_navigation_links`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_navigation_links_allowed_roles`
--
ALTER TABLE `default_navigation_links_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3894987cc73b77f5eb5ccba441bcbda3` (`entry_id`,`related_id`);

--
-- Indices de la tabla `default_navigation_menus`
--
ALTER TABLE `default_navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c81e728d9d4c2f636f067f89cc14862c` (`slug`);

--
-- Indices de la tabla `default_navigation_menus_translations`
--
ALTER TABLE `default_navigation_menus_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_menus_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_notifications`
--
ALTER TABLE `default_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `default_pages_default_pages`
--
ALTER TABLE `default_pages_default_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_pages_default_pages_translations`
--
ALTER TABLE `default_pages_default_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_default_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_pages_pages`
--
ALTER TABLE `default_pages_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_pages_pages_allowed_roles`
--
ALTER TABLE `default_pages_pages_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3691a57dc384b8adc851052bf7bea38f` (`entry_id`,`related_id`);

--
-- Indices de la tabla `default_pages_pages_translations`
--
ALTER TABLE `default_pages_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_pages_types`
--
ALTER TABLE `default_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f0935e4cd5920aa6c7c996a5ee53a70f` (`slug`);

--
-- Indices de la tabla `default_pages_types_translations`
--
ALTER TABLE `default_pages_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_types_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_page_link_type_pages`
--
ALTER TABLE `default_page_link_type_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_page_link_type_pages_translations`
--
ALTER TABLE `default_page_link_type_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_link_type_pages_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_posts_categories`
--
ALTER TABLE `default_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `0a09c8844ba8f0936c20bd791130d6b6` (`slug`);

--
-- Indices de la tabla `default_posts_categories_translations`
--
ALTER TABLE `default_posts_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_posts_default_posts`
--
ALTER TABLE `default_posts_default_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_posts_default_posts_translations`
--
ALTER TABLE `default_posts_default_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_default_posts_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_posts_posts`
--
ALTER TABLE `default_posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a5e00132373a7031000fd987a3c9f87b` (`str_id`);

--
-- Indices de la tabla `default_posts_posts_translations`
--
ALTER TABLE `default_posts_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_posts_types`
--
ALTER TABLE `default_posts_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bd4c9ab730f5513206b999ec0d90d1fb` (`slug`);

--
-- Indices de la tabla `default_posts_types_translations`
--
ALTER TABLE `default_posts_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_types_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_preferences_preferences`
--
ALTER TABLE `default_preferences_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_redirects_domains`
--
ALTER TABLE `default_redirects_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `8f85517967795eeef66c225f7883bdcb` (`from`);

--
-- Indices de la tabla `default_redirects_redirects`
--
ALTER TABLE `default_redirects_redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bf8229696f7a3bb4700cfddef19fa23f` (`from`);

--
-- Indices de la tabla `default_search_items`
--
ALTER TABLE `default_search_items`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `default_search_items` ADD FULLTEXT KEY `title` (`title`,`description`);
ALTER TABLE `default_search_items` ADD FULLTEXT KEY `searchable` (`searchable`);

--
-- Indices de la tabla `default_sessions`
--
ALTER TABLE `default_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indices de la tabla `default_settings_settings`
--
ALTER TABLE `default_settings_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a5771bce93e200c36f7cd9dfd0e5deaa` (`key`);

--
-- Indices de la tabla `default_streams_assignments`
--
ALTER TABLE `default_streams_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`);

--
-- Indices de la tabla `default_streams_assignments_translations`
--
ALTER TABLE `default_streams_assignments_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_assignments_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_streams_fields`
--
ALTER TABLE `default_streams_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fields` (`namespace`,`slug`);

--
-- Indices de la tabla `default_streams_fields_translations`
--
ALTER TABLE `default_streams_fields_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_fields_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_streams_locks`
--
ALTER TABLE `default_streams_locks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_locks_lockable_id_index` (`lockable_id`);

--
-- Indices de la tabla `default_streams_streams`
--
ALTER TABLE `default_streams_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_streams` (`namespace`,`slug`);

--
-- Indices de la tabla `default_streams_streams_translations`
--
ALTER TABLE `default_streams_streams_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_streams_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_streams_utilities_groups`
--
ALTER TABLE `default_streams_utilities_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `149e9677a5989fd342ae44213df68868` (`slug`);

--
-- Indices de la tabla `default_streams_utilities_groups_translations`
--
ALTER TABLE `default_streams_utilities_groups_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_utilities_groups_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_streams_versions`
--
ALTER TABLE `default_streams_versions`
  ADD PRIMARY KEY (`version`),
  ADD KEY `streams_versions_versionable_id_index` (`versionable_id`);

--
-- Indices de la tabla `default_url_link_type_urls`
--
ALTER TABLE `default_url_link_type_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_url_link_type_urls_translations`
--
ALTER TABLE `default_url_link_type_urls_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_link_type_urls_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_users_roles`
--
ALTER TABLE `default_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `33e75ff09dd601bbe69f351039152189` (`slug`);

--
-- Indices de la tabla `default_users_roles_translations`
--
ALTER TABLE `default_users_roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_translations_locale_index` (`locale`);

--
-- Indices de la tabla `default_users_users`
--
ALTER TABLE `default_users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `6512bd43d9caa6e02c990b0a82652dca` (`email`),
  ADD UNIQUE KEY `c20ad4d76fe97759aa27a0c99bff6710` (`username`),
  ADD UNIQUE KEY `c16a5320fa475530d9583c34fd356ef5` (`str_id`);

--
-- Indices de la tabla `default_users_users_roles`
--
ALTER TABLE `default_users_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `657a222530265bc0573ef5330b180325` (`entry_id`,`related_id`);

--
-- Indices de la tabla `default_wysiwyg_block_blocks`
--
ALTER TABLE `default_wysiwyg_block_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `default_wysiwyg_block_blocks_translations`
--
ALTER TABLE `default_wysiwyg_block_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wysiwyg_block_blocks_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `applications_domains`
--
ALTER TABLE `applications_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_addons_addons`
--
ALTER TABLE `default_addons_addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_addons_extensions`
--
ALTER TABLE `default_addons_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `default_addons_modules`
--
ALTER TABLE `default_addons_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `default_addons_repositories`
--
ALTER TABLE `default_addons_repositories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_addons_repositories_translations`
--
ALTER TABLE `default_addons_repositories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_blocks_areas`
--
ALTER TABLE `default_blocks_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_blocks_areas_translations`
--
ALTER TABLE `default_blocks_areas_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_blocks_blocks`
--
ALTER TABLE `default_blocks_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_blocks_blocks_translations`
--
ALTER TABLE `default_blocks_blocks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_blocks_types`
--
ALTER TABLE `default_blocks_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_blocks_types_translations`
--
ALTER TABLE `default_blocks_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_configuration_configuration`
--
ALTER TABLE `default_configuration_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_dashboard_dashboards`
--
ALTER TABLE `default_dashboard_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `default_dashboard_dashboards_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_dashboard_dashboards_translations`
--
ALTER TABLE `default_dashboard_dashboards_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_dashboard_widgets`
--
ALTER TABLE `default_dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_dashboard_widgets_allowed_roles`
--
ALTER TABLE `default_dashboard_widgets_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_dashboard_widgets_translations`
--
ALTER TABLE `default_dashboard_widgets_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_failed_jobs`
--
ALTER TABLE `default_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_files_disks`
--
ALTER TABLE `default_files_disks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_files_disks_translations`
--
ALTER TABLE `default_files_disks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_files_documents`
--
ALTER TABLE `default_files_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_files_documents_translations`
--
ALTER TABLE `default_files_documents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_files_files`
--
ALTER TABLE `default_files_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_files_folders`
--
ALTER TABLE `default_files_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_files_folders_translations`
--
ALTER TABLE `default_files_folders_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_files_images`
--
ALTER TABLE `default_files_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_files_images_translations`
--
ALTER TABLE `default_files_images_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_html_block_blocks`
--
ALTER TABLE `default_html_block_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_html_block_blocks_translations`
--
ALTER TABLE `default_html_block_blocks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_jobs`
--
ALTER TABLE `default_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_migrations`
--
ALTER TABLE `default_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `default_navigation_links`
--
ALTER TABLE `default_navigation_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_navigation_links_allowed_roles`
--
ALTER TABLE `default_navigation_links_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_navigation_menus`
--
ALTER TABLE `default_navigation_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_navigation_menus_translations`
--
ALTER TABLE `default_navigation_menus_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_pages_default_pages`
--
ALTER TABLE `default_pages_default_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_pages_default_pages_translations`
--
ALTER TABLE `default_pages_default_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_pages_pages`
--
ALTER TABLE `default_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_pages_pages_allowed_roles`
--
ALTER TABLE `default_pages_pages_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_pages_pages_translations`
--
ALTER TABLE `default_pages_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_pages_types`
--
ALTER TABLE `default_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_pages_types_translations`
--
ALTER TABLE `default_pages_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_page_link_type_pages`
--
ALTER TABLE `default_page_link_type_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_page_link_type_pages_translations`
--
ALTER TABLE `default_page_link_type_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_posts_categories`
--
ALTER TABLE `default_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_categories_translations`
--
ALTER TABLE `default_posts_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_default_posts`
--
ALTER TABLE `default_posts_default_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_default_posts_translations`
--
ALTER TABLE `default_posts_default_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_posts`
--
ALTER TABLE `default_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_posts_translations`
--
ALTER TABLE `default_posts_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_types`
--
ALTER TABLE `default_posts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_posts_types_translations`
--
ALTER TABLE `default_posts_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_preferences_preferences`
--
ALTER TABLE `default_preferences_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_redirects_domains`
--
ALTER TABLE `default_redirects_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_redirects_redirects`
--
ALTER TABLE `default_redirects_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_search_items`
--
ALTER TABLE `default_search_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `default_settings_settings`
--
ALTER TABLE `default_settings_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `default_streams_assignments`
--
ALTER TABLE `default_streams_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `default_streams_assignments_translations`
--
ALTER TABLE `default_streams_assignments_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `default_streams_fields`
--
ALTER TABLE `default_streams_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de la tabla `default_streams_fields_translations`
--
ALTER TABLE `default_streams_fields_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de la tabla `default_streams_locks`
--
ALTER TABLE `default_streams_locks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_streams_streams`
--
ALTER TABLE `default_streams_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `default_streams_streams_translations`
--
ALTER TABLE `default_streams_streams_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `default_streams_utilities_groups`
--
ALTER TABLE `default_streams_utilities_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_streams_utilities_groups_translations`
--
ALTER TABLE `default_streams_utilities_groups_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_streams_versions`
--
ALTER TABLE `default_streams_versions`
  MODIFY `version` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `default_url_link_type_urls`
--
ALTER TABLE `default_url_link_type_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_url_link_type_urls_translations`
--
ALTER TABLE `default_url_link_type_urls_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_users_roles`
--
ALTER TABLE `default_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `default_users_roles_translations`
--
ALTER TABLE `default_users_roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `default_users_users`
--
ALTER TABLE `default_users_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_users_users_roles`
--
ALTER TABLE `default_users_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `default_wysiwyg_block_blocks`
--
ALTER TABLE `default_wysiwyg_block_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `default_wysiwyg_block_blocks_translations`
--
ALTER TABLE `default_wysiwyg_block_blocks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

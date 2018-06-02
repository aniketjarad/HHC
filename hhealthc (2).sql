-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 04:50 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hhealthc`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `banner_image` text COLLATE utf8mb4_unicode_ci,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `content`, `banner_image`, `company_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Healthcare Summit India 2018', 'Home Healthcare Summit 2018 will be held on June 1 at Holiday Inn Mumbai International.\r\n\r\nThe HOME HEALTHCARE SUMMIT will bring together thought leaders and experts from India and abroad to discuss, mind share the current scenario of Indian home healthcare industry and explore the way forward to meet the needs of patients and discover the opportunities in the sector. The conference will unveil the Products & Services in the market, latest developments and technology advancement in home healthcare industry', 'http://hhc.biotrains.com/images/uploaded/2018-04-18-14-54-25-hhc.jpg', 'http://www.homehealthcaresummit.com/', 1, 1, '2018-04-18 21:54:25', '2018-04-18 21:54:25'),
(2, 'Test  Blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', NULL, 1, 1, '2018-04-28 17:26:59', '2018-04-28 17:26:59'),
(3, 'Test Blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, 1, 5, '2018-05-06 17:36:08', '2018-05-06 17:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci,
  `job_requirement` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_to_apply` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `job_description`, `job_requirement`, `location`, `working_hours`, `job_type`, `company_name`, `how_to_apply`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Psychotherapists or Psychological Counsellors', 'Psychotherapists or Psychological Counsellors\r\n\r\nQualification: M.Sc/ M.A/ M.Phil/PhD in Psychology with 1-5 years of experience.', NULL, 'Bangalore, Mumbai, Delhi, Hyderabad, Kolkata & Chennai', NULL, NULL, 'Portea', 'Email on jobs@portea.com\r\n\r\nWebsite - https://www.portea.com/careers/', 1, 1, '2018-04-18 07:01:45', '2018-04-18 07:01:45'),
(2, 'designer', 'designer ux / ui', NULL, 'mumbai', NULL, NULL, NULL, NULL, 1, 1, '2018-04-27 22:15:30', '2018-04-27 22:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `about`, `address`, `contact_person`, `contact_mobile`, `contact_email`, `website`, `service`, `logo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Healthcare at Home', 'HealthCare atHOME (HCAH), is a leading home healthcare service provider in India. HCAH is backed by the Burman family, the promoters of Dabur and the founders of HAH UK. HCAH has also received equity investment from Quadria Capital, one of Asia’s leading healthcare focused private equity firm. HCAH has 1000+ team members and caregivers’ workforce covering more than 40 cities in India. HCAH follows the best practices in medical care and maintains international protocols and standards. HCAH has served over 4,00,000 patients across India and has helped them recover safely and comfortably in the place they know best i.e. their HOME. HCAH maintains high standard on customer service, a fact supported by NPS score of over 70 per cent. Some of the key services offered by HCAH include setting up ICUs at HOME, providing Cancer treatment at home, home nursing and physiotherapy along with providing plethora of clinical procedures at home thereby delivering almost 70% of all clinical services at home. On B2B space, HCAH is the largest PSP program provider in the country and acts as a one stop shop for the pharma companies to manage their patient journey right from awareness of therapy to compliance management. It also has a JV with M3 Inc a listed Japanese multinational company with > USD 9bn market cap. It has 4.0mn + doctors worldwide using its various Internet based platforms, through which it offers a host of services to the pharmaceutical industry and healthcare professionals. HCAH also has its own distribution setup offering chronic medicines to patients right at their doorsteps.\r\nFor more information, visit the HCAH website at www.hcah.in', NULL, NULL, '1800 102 4224', 'contactus@hcah.in', 'https://hcah.in/', NULL, NULL, 1, '2017-12-09 01:06:06', '2017-12-09 01:06:06'),
(2, 'Healthcare at Home', 'HealthCare atHOME (HCAH), is a leading home healthcare service provider in India. HCAH is backed by the Burman family, the promoters of Dabur and the founders of HAH UK. HCAH has also received equity investment from Quadria Capital, one of Asia’s leading healthcare focused private equity firms. HCAH has 1000+ team members and caregivers’ workforce covering more than 40 cities in India. HCAH follows the best practices in medical care and maintains international protocols and standards. HCAH has served over 4,00,000 patients across India and has helped them recover safely and comfortably in the place they know best i.e. their HOME. HCAH maintains high standard on customer service, a fact supported by NPS score of over 70 per cent. Some of the key services offered by HCAH include setting up ICU atHOME, providing Cancer Care atHOME, nursing care and physiotherapy services along with providing plethora of clinical procedures at home thereby delivering almost 70% of all clinical services at home. On B2B space, HCAH is the largest PSP program provider in the country and acts as a one stop shop for the pharma companies to manage their patient journey right from awareness of therapy to compliance management. It also has a JV with M3 Inc a listed Japanese multinational company with > USD 9bn market cap. It has 4.0mn + doctors worldwide using its various Internet based platforms, through which it offers a host of services to the pharmaceutical industry and healthcare professionals. HCAH also has its own distribution setup offering chronic medicines to patients right at their doorsteps.', 'Health Care at Home India Pvt. Ltd.  D-8, 1st Floor, Sector-3, Noida, Uttar Pradesh, 201301', NULL, NULL, 'contactus@hcah.in', 'https://hcah.in/', 'Elderly care,Physiotherapy, Nursing Attendant, ICU, Cancer Care, Stroke Rehabilitation', 'http://hhc.biotrains.com/images/uploaded/2018-04-15-01-55-31-hh india.jpg', 1, '2018-04-15 08:55:32', '2018-04-15 08:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `company_imports`
--

CREATE TABLE `company_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `audience` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `banner_image` text COLLATE utf8mb4_unicode_ci,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_000001_create_roles_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2017_09_26_101557_create_careers_table', 1),
(18, '2017_09_26_101621_create_events_table', 1),
(19, '2017_09_26_101938_create_blogs_table', 1),
(20, '2017_09_26_102003_create_news_table', 1),
(21, '2017_09_26_102036_create_services_table', 1),
(22, '2017_09_26_102117_create_products_table', 1),
(23, '2017_11_18_044911_add_approved_at_column_users_table', 1),
(24, '2017_11_23_053509_create_user_imports_table', 1),
(25, '2017_11_27_043014_create_companies_table', 1),
(26, '2017_11_28_070129_create_company_imports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `company_name`, `city`, `country`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'India is ready for Home Healthcare Services', 'Long-term medical care, whether it be for the sick/recuperating post-surgery or the aged, is best carried out in the environs of the home, for reasons of patient-comfort, logistical convenience and economy. But to constantly monitor the condition of the patient and provide medicare at the appropriate time, the two vital requirements are professionally-competent personnel and optimal use of technology. Though nascent in India, home healthcare providers are using both these components to good use to make their mark. BusinessLine spoke to one such player, Critical Care Unified. Rajiv Mathur, a founder of the company, spoke on the industry dynamics and the way forward. Excerpts:\r\n\r\nIn India, the old and sick are taken care of by family members. Our society generally looks down upon families that seek outside help to take care of their sick and bedridden elders. So, is India ready for professional home healthcare providers? of professional home healthcare services. The informal structures of support are under stress and collapsing rapidly as challenges, commitments and pace of life, compounded by disparate locations of relatives, make it difficult and stressful to provide appropriate care. While the elders are conservative in their approach of getting external help, the near and dear ones are the catalysts to bring about the change.\r\n\r\nWhat are the growth prospects for the industry in India?\r\n\r\nThe growth factors are enormous. The current estimates for the home healthcare industry in India is approximately $2 billion and growing at a CAGR of 20 per cent. his, since hospital facilities are inadequate to meet the national demand. While metropolitan cities have world-class facilities, the situation in tier II and III cities is not adequate to meet the demand. More importantly, for chronic ailments, there is no necessity to continue with long stays and go through the stress of re-admissions.\r\n\r\nWith appropriate use of technology, high-quality home healthcare services can be implemented and expanded to cover a wide base of population in India.\r\n\r\nWhen did you commence operations? What are your growth plans?\r\n\r\nWe commenced operations on December 1, 2016, and have been profitable from the first month onwards. We have a staff strength of over 325, which is a mix of permanent and on-demand professionals. In the next 28 months, we will hire 2,000 more people.\r\n\r\nOur focus is providing home healthcare to critical care patients through extensive use of technology – that’s our differentiator. This venture is funded by the promoters (a group of four). For our expansion, we intend to raise funds from a variety of sources.\r\n\r\nOur growth plans include expanding to all major cities in India, and internationally, in Africa, South-East Asia and Middle East.\r\n\r\nHow can the government give a leg-up to the home healthcare industry?\r\n\r\nHome healthcare is becoming a significant element in the value chain of healthcare services.', 'http://hhc.biotrains.com/images/uploaded/2018-04-18-00-19-25-hh india.jpg', 'The Hindu Business Line', NULL, 'India', 1, 1, '2018-04-18 07:17:40', '2018-04-18 07:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('web@biotrains.com', '$2y$10$NnprEClZL67uHrFS3KB54.rDt.pxRZsXwdZ/2KFkvhhvXC96Cvc.K', '2018-04-03 21:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `email` text NOT NULL,
  `review` text,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `service_id`, `user_id`, `rating`, `email`, `review`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 2.5, 'sonam.p@in.adoroi.com', 'asdfd', 1, '2018-05-24 21:49:26', '2018-05-24 21:49:26'),
(5, 1, 1, 3.6, 'web@biotrains.com', 'new review', 0, '2018-05-28 18:38:19', '2018-05-28 18:38:19'),
(6, 1, 1, 3.6, 'web@biotrains.com', 'new review', 1, '2018-05-28 18:38:20', '2018-05-28 18:38:20'),
(8, 2, 0, 2, 'sandeshfromindia@gmail.com', 'excellent', 0, '2018-05-29 18:34:10', '2018-05-29 18:34:10'),
(9, 2, 0, 2, 'sandeshfromindia@gmail.com', 'adakwkkdaknad adla lnam, asl lamlda sl as', 1, '2018-05-30 03:08:11', '2018-05-30 03:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2017-11-30 11:36:54', '2017-11-30 11:36:54'),
(2, 'Author', '2017-11-30 11:36:54', '2017-11-30 11:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'In-Home Nursing', 'A nurse at home can help your patient recover more safely from a surgery or an injury, while also giving you the assurance that all your patient’s medical needs are being met at all times.', 1, 1, '2018-04-18 07:33:04', '2018-04-18 07:33:04'),
(2, 'Elderly Care at Home', 'elder-care services bring dignity to the old and peace of mind to you. We offer you all the medical care and support that your elderly loved one can need, right in the comfort of their own home', 1, 1, '2018-04-18 07:33:41', '2018-04-18 07:33:41'),
(3, 'Physiotherapy at Home', 'visiting physiotherapist,  eliminates the need to move out of the house to receive treatment. Also, with personal attention, your chances of recovery are quicker.', 1, 1, '2018-04-18 07:34:44', '2018-04-18 07:34:44'),
(4, 'Test New Service', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 5, '2018-05-06 17:37:55', '2018-05-06 17:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'm',
  `org_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gplus_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_fee` int(11) DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `gender`, `org_name`, `about`, `address`, `city`, `country`, `pincode`, `fb_link`, `twitter_link`, `linkedin_link`, `instagram_link`, `gplus_link`, `website`, `display_picture`, `basic_fee`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `approved_at`) VALUES
(1, 'Administrator', 'admin', 'web@biotrains.com', '$2y$10$9yxyQ7LA8PMqBf/ytEi2GeThTZUeeZT4GI4/mzLXBKfZDR/KUPMf2', '1234123400', 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'pG6HoBQ9z2tj2OKVXqBtKpdH8qUFD3oBD5TSk14zexwvyja0StkWTP0in3PK', NULL, NULL, NULL, '2017-11-04 18:30:00'),
(3, 'Nikhil Singh', NULL, 'xexed@eth2btc.info', '$2y$10$Msouyhmyxx.X0UBJtRXVXe5Qd9eWZJLnv5Yu110PGGZGktIivdEWa', '9029965109', 'm', 'njkn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'intelligic.org', NULL, NULL, 2, 'aGFy5FPI8pN0uIkRLERWBouIOIRrlQ5TwZS0Ruvl64jypusVvh7jz8fda8PY', '2018-04-03 22:26:04', '2018-04-15 08:48:37', NULL, '2018-04-15 08:48:37'),
(4, 'Rachna', NULL, 'rachna.tiwari@biotrains.com', '$2y$10$dZVHxdRcNMSj/Yo1vpdLjOopK/k3M.2bHzRQLcgAtX48z/uao3wi.', '843 363 2006', 'm', 'Biotrains', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.biotrains.com', NULL, NULL, 2, 'bkquCOILcBQJjXtua6NQMgAf8YKe6hqcR87N3GLk1GUcN6MF075fSnwyv12V', '2018-04-18 21:09:41', '2018-04-18 21:10:35', NULL, '2018-04-18 21:10:35'),
(5, 'sandesh parab', NULL, 'sandeshfromindia@gmail.com', '$2y$10$DZUrFgsXfQFVrRvAhy7hROupKpNjmN8pum1jIdoQEglx2CGU7h92i', '9898979979', 'm', 'Sandesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://hhc.biotrains.com', NULL, NULL, 2, 'PeuL1v6loFpXRRMa6uGbCXxnAFMJ8bWlKDMGyoKJGtJ0onZVa9iH7U8pRuxY', '2018-04-28 19:14:31', '2018-05-06 17:31:26', NULL, '2018-05-06 17:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_imports`
--

CREATE TABLE `user_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `careers_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_imports`
--
ALTER TABLE `company_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_imports`
--
ALTER TABLE `user_imports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_imports`
--
ALTER TABLE `company_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_imports`
--
ALTER TABLE `user_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql.mymotivz2.development-env.com
-- Generation Time: May 21, 2021 at 12:13 AM
-- Server version: 5.7.28-log
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mmotivz2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied__jobs`
--

CREATE TABLE `applied__jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resume_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applied__jobs`
--

INSERT INTO `applied__jobs` (`id`, `job_id`, `candidate_id`, `resume_id`, `name`, `city`, `location`, `phone`, `is_new`, `created_at`, `updated_at`) VALUES
(47, 34, 32, 28, 'Nathan Truong', 'POMONA', '', '(714) 248-3223', 1, '2021-01-12 20:52:19', '2021-01-12 20:52:19'),
(79, 32, 141, 59, 'Test One', NULL, 'santa ana', '(394) 943-4343', 0, '2021-01-28 23:03:06', '2021-04-23 23:15:22'),
(81, 32, 149, 65, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 0, '2021-02-12 11:55:19', '2021-04-23 23:15:22'),
(84, 28, 149, 65, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 1, '2021-02-12 14:32:02', '2021-02-12 14:51:15'),
(88, 28, 151, 68, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 1, '2021-02-15 07:47:11', '2021-02-15 07:47:45'),
(89, 28, 152, 69, 'Lorem Ipsum', NULL, 'New York,USA', '(234) 352-3553', 1, '2021-02-15 10:41:47', '2021-02-15 10:41:47'),
(90, 28, 152, 70, 'Lorem Ipsum', NULL, 'New York,USA', '(234) 352-3553', 1, '2021-02-15 10:42:21', '2021-02-15 10:42:21'),
(91, 28, 152, 71, 'Lorem Ipsum', NULL, 'New York,USA', '(234) 352-3553', 1, '2021-02-15 10:42:58', '2021-02-15 10:42:58'),
(93, 32, 152, 73, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 0, '2021-02-15 10:47:51', '2021-04-23 23:15:22'),
(98, 32, 154, 78, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 0, '2021-02-15 10:57:52', '2021-04-23 23:15:22'),
(101, 32, 155, 81, 'Lorem Ipsum', NULL, 'New York,USA', '(234) 352-3553', 0, '2021-02-15 11:39:30', '2021-04-23 23:15:22'),
(104, 32, 156, 84, 'Lorem Ipsum', NULL, 'New York,USA', '(234) 352-3553', 0, '2021-02-15 12:13:10', '2021-04-23 23:15:22'),
(106, 28, 158, 86, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 1, '2021-02-15 14:20:27', '2021-02-15 14:20:27'),
(111, 28, 159, 91, 'Lorem Ipsum', NULL, 'New York', '(234) 352-3553', 1, '2021-02-16 07:53:26', '2021-02-16 07:53:26'),
(112, 32, 159, 92, 'Lorem Ipsum', NULL, 'New York,USA', '(234) 352-3553', 0, '2021-02-16 07:55:45', '2021-04-23 23:15:22'),
(116, 32, 163, 96, 'Joe Bloe', NULL, 'Santa Ana, CA', '(909) 323-2313', 0, '2021-02-16 21:31:16', '2021-04-23 23:15:22'),
(118, 44, 182, 100, 'Nathan N Truong', NULL, 'Santa Ana, CA', '(714) 248-3223', 1, '2021-03-16 05:41:21', '2021-03-16 05:41:21'),
(120, 44, 183, 102, 'abc', NULL, 'New york', '(575) 475-8568', 1, '2021-03-17 14:00:17', '2021-03-17 14:00:17'),
(121, 44, 196, 106, 'Emi Taylor', NULL, 'Officia animi repre', '(196) 737-5103', 1, '2021-03-22 14:42:54', '2021-03-22 14:42:54'),
(122, 44, 197, 107, 'Madeline Green', NULL, 'Qui aut error id mol', '(175) 120-4739', 1, '2021-03-22 15:30:53', '2021-03-22 15:30:53'),
(123, 44, 198, 108, 'Nicole Horne', NULL, 'Sed enim doloremque', '(192) 223-7608', 1, '2021-03-22 15:34:13', '2021-03-22 15:34:13'),
(124, 44, 199, 109, 'Rhea Norris', NULL, 'Culpa dolor Nam volu', '(175) 415-9865', 1, '2021-03-22 15:35:29', '2021-03-22 15:35:29'),
(128, 44, 208, 113, 'Brian Bed and Breakfasts', NULL, 'BNswef', '(272) 790-7579', 1, '2021-03-24 08:44:21', '2021-03-24 08:44:21'),
(129, 44, 207, 114, 'Brian Bed and Breakfasts', NULL, 'BNswef', '(272) 790-7579', 1, '2021-03-24 08:53:23', '2021-03-24 08:53:23'),
(131, 32, 197, 116, 'Cynthia Cochran', NULL, 'Alias tempore aut c', '(149) 933-6359', 0, '2021-03-24 08:59:12', '2021-04-23 23:15:22'),
(137, 44, 211, 123, 'Nathan Truong', NULL, 'Santa Ana, CA', '(714) 248-3223', 1, '2021-03-24 21:50:49', '2021-03-24 22:36:18'),
(138, 32, 211, 123, 'easdfa', NULL, 'Santa Ana, CA', '(903) 232-8423', 0, '2021-03-24 22:32:29', '2021-04-23 23:15:22'),
(141, 52, 223, 129, 'Kasper Koch', NULL, 'Dolore repellendus', '(169) 797-8834', 1, '2021-04-13 12:47:16', '2021-04-13 12:47:16'),
(142, 52, 229, 131, 'asghfgkjhk', NULL, 'New York, NY, USA', '(344) 444-4657', 1, '2021-04-15 08:30:31', '2021-04-15 08:31:16'),
(143, 52, 30, 132, 'Lorem Ipsum', NULL, 'New York, NY, USA', '(234) 352-3553', 1, '2021-04-15 08:46:18', '2021-04-15 08:46:18'),
(145, 54, 30, 132, 'Lorem Ipsum', NULL, 'New York, NY, USA', '(234) 352-3553', 0, '2021-04-20 10:15:31', '2021-04-30 10:46:22'),
(146, 93, 228, 130, 'Wonder Boy', NULL, 'Santa Monica, CA, USA', '(903) 432-3243', 1, '2021-05-20 02:49:28', '2021-05-20 02:49:28'),
(147, 94, 30, 132, 'Lorem Ipsum', NULL, 'New York, NY, USA', '(234) 352-3553', 0, '2021-05-20 14:27:38', '2021-05-20 14:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prof_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `random_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(17, 'Michael Jordan', NULL, 'Executive Chef', '(818) 384-3823', 'Michael.Jordan@gmail.com', 'Westminster', 'CA', '$38,000', 'chef,culinary,baking', 'Executive Chef,Head Chef,Sous Chef,Kitchen Porter', 6, '#000000', 'Food Service Industry', '', '', '', '2019-12-14 04:15:33', '2020-04-22 16:43:42', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Josh Guro', NULL, 'Endocrinologist', '839-489-3829', 'josh@yahoo.com', 'Westminster', 'CA', '384,393', 'endocrinology,diabettes,biospy,surgery,primary care', 'Endocrinology Physician,Management,Director of Endocrinology', 1, '#000000', 'Medical & Healthcare', '', '', '', '2019-12-14 04:36:40', '2020-01-02 17:09:05', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Ricky Deluca', NULL, 'CEO', '938-323-9382', 'ricky.deluca1852@gmail.com', 'Santa Ana', 'CA', '338,000', 'Executive Leadership,Corporate Management,CEO experience,Finance skills,Communication skils,Human Resources,Business Development', 'CEO,President,Vice President', 10, '#000000', 'Marketing & Sales', '', '', '', '2019-12-14 04:48:34', '2020-03-24 19:36:56', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Ricky Astrella', NULL, 'Chief Financial Officer', '(716) 343-3823', 'ricky.Astrella@yahoo.com', 'Fontana', 'CA', '$939,030', 'Finance,Accounting,Leadership,Management,CPA,HR,Team Management,Coaching,Growth', 'CFO,VP of Finance,Director of Finance', 6, '#000000', 'Construction', '', '', '', '2019-12-14 04:55:36', '2020-06-26 01:13:43', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'John Myer', NULL, 'CEO', '(713) 389-3823', 'john@MyMotivz.com', 'Costa Mesa', 'CA', '$600,000', 'Business,Communication,Marketing,Sales,Management,Corporate Development', 'CEO,Partnership', 5, '#000000', 'Construction', '', '', '', '2019-12-14 05:13:20', '2020-07-06 21:31:46', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'John Shaun', NULL, 'Director of Construction', '(909) 383-3723', 'asdfasd@yahoo.com', 'Santa Ana', 'CA', '$78,000', 'Construction,Welding,Plumbing,Roofing', 'Vice President of Construction,Director of Construction,Head of Construction', 1, '#000000', 'Construction', '', '', '', '2019-12-14 05:39:17', '2020-06-26 01:13:35', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Carla Munoz', NULL, 'Director of Operations', '(909) 242-2732', 'carla.munoz84@gmail.com', 'Costa Mesa', 'California', '$73,000', 'Operations Management,Human Resources,Accounting,Hiring,Business Development', 'Chief Operating Officer,COO,Vice President of Operations,Senior Director of Operations', 1, '#aa7942', 'Business', '', '', '', '2019-12-14 08:28:48', '2020-05-22 21:34:46', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Erica Boyd', NULL, 'Deserunt est dolor', '+1 (488) 972-5789', 'lyzazewe@mailinator.net', 'Temporibus dolor sin', 'Unde deleniti quasi', 'Cum aliquip eum dolo', 'Est ad do tenetur ab', 'Dolorem adipisicing', 7, NULL, 'Voluptatem ut sint', '', '', '', '2019-12-17 21:48:27', '2020-02-25 04:21:22', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Tony Nguyen', NULL, 'Chief Operating Officer', '(627) 324-3242', 'Tony@mymotivz.com', 'Rosemead', 'CA', '$93,000', 'Management,Staffing,Team Building,Communication,Computer Savvy,Psychology,Motivational Coaching', 'COO,VP of Operations,Higher Salary', 5, NULL, 'Marketing & Sales', '', '', '', '2019-12-19 01:39:04', '2020-05-19 00:51:10', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'John Doe', NULL, 'Director of Construction', '7142483223', '1sd@mymotivz.com', 'Costa Mesa', 'CA', '$38,000', 'Welding,Roofing,Flooring,Plumbing,Window Installation,3D CAD', 'VP of Construction,Director of Construction,Construction Manager', 1, NULL, 'Construction', '', '', '', '2020-01-07 03:50:30', '2020-02-25 07:53:35', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Henry Thompson', NULL, 'Construction Manager', '902-459-3423', 'Henry@stillmoment.com', 'Pomona', 'CA', '$93,000', 'Welding,Engineer,Electrical,Roofing', 'Los Angeles County only,Contract job only', 3, NULL, 'Construction', '', '', '', '2020-01-07 04:07:37', '2020-05-22 21:35:11', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Kim Loan Huynh', NULL, 'Marketing Specialist', '(949) 272-9392', 'kimloanthinhuynh1970@gmail.com', 'Garden Grove', 'CA', '$100,000', 'SEM,SEO,Digital Marketing,Content Creation,Graphic Design,Infographic,SSL Integration,EMR Integration,Medical', 'Management level,Director of Marketing,Marketing Manager,Senior Marketing Manager', 4, NULL, 'Sales & Marketing', '', '', '', '2020-01-14 02:22:13', '2020-02-25 08:05:16', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Wendy Duong', NULL, 'Sales Associate', '(838)823-2349', 'Wendy@com', 'Westminster', 'CA', '$45,000', 'Customer Service,Communication,Negotiation,Hospitality,Writing,Sales,Marketing,SEO', 'Director of Sales,Sales Manager', 1, NULL, 'Sales & Marketing', '', '', '', '2020-01-14 02:23:46', '2020-05-18 18:52:56', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Mike Jones', NULL, 'Sales Associate', '(821) 238-3822', 'mike@myik.com', 'Houston', 'TX', '$28,000', 'Sales,Customer Service,B2B,B2C,Telemarketing,Communication,Closing,Business Development,Writing,Marketing,People Skills', 'Sales Director,Account Executive,Director of Sales,Sales Manager', 6, NULL, 'Equipment Finance', '', '', '', '2020-01-15 17:05:51', '2020-03-25 13:47:31', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Joan Stroud', NULL, 'Family Medicine Physician', '(646) 323-4232', 'info@mymotivz.com', 'New York', 'NY', '$289,000', 'Family Medicine,Primary Care,Outpatient,Hospitalist,ER experience,Pediatric Experience', 'Full-time,Outpatient only,No call,No weekends,Can\'t work Friday', 5, NULL, 'Healthcare', '', '', '', '2020-02-25 04:50:37', '2020-06-19 00:28:41', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Mimi Huynh', NULL, 'Endocrinologist', '7142483223', 'qasldkfja@yahoo.com', 'Costa Mesa', 'CA', '$93,000', 'Endocrinology,Diabetes', 'Fulltime,Contract,Outpatient only,No call', 1, NULL, 'Healthcare', '', '', '', '2020-02-25 05:55:37', '2020-09-07 02:42:37', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Brett Johnson', NULL, 'Urologist', '7142483223', 'Brettjohnson@gmail.com', 'Costa Mesa', 'CA', '$500,000', 'Urology,Pediatric Urology,Primary Care', 'Full-time only,Inpatient,No surgery', 6, NULL, 'Medical & Healthcare', '', '', '', '2020-02-25 07:44:12', '2020-06-26 19:14:12', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Zain Waheed', NULL, 'Developer', '213121', 'zain.waheed.softenica@gmail.com', 'fgf', 'truiyu', '3', 'dhg,f', 'gu,ghj', 1, NULL, 'fdxgf', '', '', '', '2020-02-25 14:23:49', '2020-04-29 12:29:44', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Rosalyn Salinas', NULL, 'Voluptas eveniet id', '+1 (218) 722-7831', 'kaxe@mailinator.com', 'Amet qui doloribus', 'Doloremque sunt labo', 'Facilis eaque quis q', 'Dolores molestiae fu', 'Sit quo qui nihil ve', 4, NULL, 'Possimus nesciunt', '', '', '', '2020-03-03 18:23:56', '2020-04-29 15:10:20', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Jaden Meyers', NULL, 'Doloribus hic qui no', '+1 (702) 253-3713', 'mimihuynh254@gmail.com', 'Nostrud sint commodo', 'Et voluptates nulla', 'Eveniet amet archi', 'Reprehenderit volupt', 'Sed dolores magna ip', 5, NULL, 'Iste sed incidunt r', '', '', '', '2020-03-03 18:26:36', '2020-04-29 15:10:20', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Shannon Blair', NULL, 'Sed consectetur ius', '+1 (604) 876-7261', 'kimloanthihuynh1966@gmail.com', 'Exercitationem provi', 'Nihil voluptas et id', 'Aliquid tenetur saep', 'Occaecat nihil nulla', 'Ad autem in ipsum de', 8, NULL, 'Deserunt expedita do', '', '', '', '2020-03-03 21:14:01', '2020-06-29 16:31:01', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Jordan Newmark', NULL, 'Director of Marketing', '7142483223', 'Jordan@gmail.com', 'Costa Mesa', 'CA', '$78,000', 'Marketin,Sales,Creativity', 'Fulltime,Work from home', 1, NULL, 'Marketing', '', '', '', '2020-03-04 05:46:06', '2020-06-26 16:35:43', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Veronica Weiver', NULL, 'Director of Marketing', '(939) 223-2322', 'Veronica.Weiv23@gmail.com', 'Santa Ana', 'CA', '$210,000', 'Marketing,Managmeent,Sales,SEO', 'Leadership position,Part-time,benefits,higher pay', 6, NULL, 'Medical & Healthcare', '', '', '', '2020-03-04 06:27:28', '2020-06-30 03:44:33', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'BOB SMITH', NULL, 'Family Medicine Physician', '7142483223', 'SMITHB123@gmail.com', 'Pasadena', 'CA', '$100,000', 'primary care,family medicine,outpatient,private practice,inpatient,ER,TEST', 'Inpatient,Small practice,no call,no weekends,higher pay,benefits', 7, NULL, 'Medical & Healthcare', '', '', '', '2020-03-04 06:42:17', '2020-05-22 21:35:11', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Billy Jean', NULL, 'Chief Product Officer', '(839)382-3823', 'billyjean@gmail.com', 'Redondo Beach', 'CA', '$98,000', 'Team Management,Product Management,Product Design,Communication,Motivational Speaker', 'New York,Full-time,No weekends,Executive Role only', 3, NULL, 'Technology', '', '', '', '2020-04-03 01:54:07', '2020-07-01 10:04:05', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'aa', NULL, 'awa', '21356', '1asd@awda.com', '1adsdsa', '1grrf', '$398,000', 'computer', 'sdfdsf', 1, NULL, 'fsdf', '', '', '', '2020-05-18 17:48:56', '2020-07-06 03:07:17', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Jo Schmo', NULL, 'Sales Director', '(909)383-3888', 'jso@yahoo.com', 'Westminster', 'CA', '$408,000', 'Sales,Customer Service,Communication,Management', 'Leadership,Management,Sales,High commission', 8, NULL, 'Healthcare', '', '', '', '2020-05-19 04:26:00', '2020-06-29 16:45:48', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'EMT TEST NAME', NULL, 'EMT Manager', '7142483223', 'Nathantruong49@yahoo.com', 'Irvine', 'California', '$93,000', 'EMT,EMT WILE,TEST', 'Fulltime,higher pay,medical', 1, NULL, 'medical & healthcare', '', '', '', '2020-07-02 10:56:15', '2020-07-06 21:47:23', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Smith', 'Test', 'N/A', '1245112555', 'smith@gmail.com', 'Queens', 'New York', '-1', 'Development,Management', 'N/A', 1, NULL, 'ArchiTeh', '', '', '', '2020-07-30 17:27:17', '2020-08-04 16:22:27', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Andru', NULL, 'Developer', '532423', 'andi@gmail.com', 'City76', 'State231', '-1', 'shdgjdb', 'N/A', -1, NULL, 'industry123', '', '', '', '2020-08-06 17:10:48', '2020-08-06 17:10:48', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Nomi', NULL, 'Wordpress Developer', '532423', 'nomi@gmail.com', 'City76', 'State231', '-1', 'Developer', 'N/A', -1, NULL, 'industry123', '', '', '', '2020-08-06 18:20:22', '2020-08-06 18:20:22', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Dr. Sage', 'Peace Health', 'Internist', 'N/A', 'JSage@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Dr. Miller', 'Peace Health', 'Internist', 'N/A', 'SMiller@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Dr. Laborie', 'Providence', 'Internist', 'N/A', 'Wendy.Laborie@providence.org', 'Sherwood', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Dr. Mack', 'Providence', 'Internist', 'N/A', 'Annie.Mack@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Dr. Wei', 'Providence', 'Internist', 'N/A', 'John.Wei@providence.org', 'Ashland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Dr. Gramley', 'Providence', 'Internist', 'N/A', 'Molly.Gramley@providence.org', 'Ashland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Dr. Walz', 'Providence', 'Internist', 'N/A', 'Sara.Walz@providence.org', 'Ashland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Dr. Kuhl', 'Providence', 'Internist', 'N/A', 'Karin.Kuhl@providence.org', 'Ashland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Dr. Bindal', 'Providence', 'Internist', 'N/A', 'Vandana.Bindal@providence.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Dr. Trochmann', 'Providence', 'Internist', 'N/A', 'Rebekah.Trochmann@providence.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Dr. Torkelson', 'Providence', 'Internist', 'N/A', 'Edmund.Torkelson@providence.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Dr. Majeed', 'Providence', 'Internist', 'N/A', 'Fareeha.Majeed@providence.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Dr. Yamase', 'Providence', 'Internist', 'N/A', 'Melvin.Yamase@providence.org', 'Canby', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Dr. Siapno', 'Providence', 'Internist', 'N/A', 'Charisse.Siapno@providence.org', 'Central Point', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Dr. Perry', 'Providence', 'Internist', 'N/A', 'Eric.Perry@providence.org', 'Central Point', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Dr. Grishkevich', 'Adventist Health', 'Internist', 'N/A', 'Max.Grishkevich@ah.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Dr. Kim', 'Adventist Health', 'Internist', 'N/A', 'Joseph.Kim@ah.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Dr. Kasprowska', 'Providence', 'Internist', 'N/A', 'Magdalena.Kasprowska@providence.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Dr. Nayak', 'Providence', 'Internist', 'N/A', 'Navin.Nayak@providence.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Dr. Cha', 'Providence', 'Internist', 'N/A', 'Stephanie.Cha@providence.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Dr. Garcia', 'Providence', 'Internist', 'N/A', 'Gregory.Garcia@providence.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Dr. Garcia', 'Providence', 'Internist', 'N/A', 'Greg.Garcia@providence.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Dr. Padilla Vazquez', 'Peace Health', 'Internist', 'N/A', 'APadillaVazquez@PeaceHealth.org', 'Cottage Grove', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Dr. Padilla Vazquez', 'Peace Health', 'Internist', 'N/A', 'APadilla-Vazquez@PeaceHealth.org', 'Cottage Grove', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Dr. Padilla', 'Peace Health', 'Internist', 'N/A', 'APadilla@PeaceHealth.org', 'Cottage Grove', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Dr. Vazquez', 'Peace Health', 'Internist', 'N/A', 'AVazquez@PeaceHealth.org', 'Cottage Grove', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Dr. Saxman', 'Peace Health', 'Internist', 'N/A', 'KSaxman@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Dr. Wyatt', 'Peace Health', 'Internist', 'N/A', 'MWyatt@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Dr.  Zheng', 'Peace Health', 'Internist', 'N/A', 'SZheng@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Dr. Laurie', 'Peace Health', 'Internist', 'N/A', 'MLaurie@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Dr. Manzoor', 'Peace Health', 'Internist', 'N/A', 'SManzoor@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Dr. Mehlhaff', 'Peace Health', 'Internist', 'N/A', 'DMehlhaff@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Dr. Sunkomat', 'Peace Health', 'Internist', 'N/A', 'JSunkomat@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Dr. Ford', 'Peace Health', 'Internist', 'N/A', 'JFord@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Dr. Kwong', 'Peace Health', 'Internist', 'N/A', 'RKwong@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Dr. LaBonte', 'Peace Health', 'Internist', 'N/A', 'LLaBonte@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Dr. Mossberg', 'Peace Health', 'Internist', 'N/A', 'JMossberg@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Dr. Christensen', 'Peace Health', 'Internist', 'N/A', 'EChristensen@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Dr. Dissanayake', 'Peace Health', 'Internist', 'N/A', 'MDissanayake@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Dr. Dukeminier', 'Peace Health', 'Internist', 'N/A', 'WDukeminier@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Dr. Dukeminier', 'Peace Health', 'Internist', 'N/A', 'BDukeminier@PeaceHealth.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Dr. Shearer', 'Peace Health', 'Internist', 'N/A', 'RShearer@PeaceHealth.org', 'Florence', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Dr. Johnson', 'Peace Health', 'Internist', 'N/A', 'DJohnson@PeaceHealth.org', 'Florence', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'Dr. Wright', 'Adventist Health', 'Internist', 'N/A', 'Maureen.Wright@ah.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Dr. Schultz', 'Adventist Health', 'Internist', 'N/A', 'Sarah.Schultz@ah.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Dr. Mensen', 'Adventist Health', 'Internist', 'N/A', 'Brittney.Mensen@ah.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Dr. McGowan', 'Providence', 'Internist', 'N/A', 'Patrick.McGowan@providence.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Dr. Maness', 'Providence', 'Internist', 'N/A', 'Steven.Maness@providence.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Dr. Craft', 'Providence', 'Internist', 'N/A', 'Richard.Craft@providence.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Dr. Mahmood', 'Providence', 'Internist', 'N/A', 'Fayyaz.Mahmood@providence.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Dr. Makwana', 'Providence', 'Internist', 'N/A', 'Sohil.Makwana@providence.org', 'Gresham', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Dr. Olsen', 'Providence', 'Internist', 'N/A', 'Molly.Olsen@providence.org', 'Hood River', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Dr. Ready', 'Providence', 'Internist', 'N/A', 'Jodi.Ready@providence.org', 'Hood River', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Dr. Kukier', 'Providence', 'Internist', 'N/A', 'Jonathan.Kukier@providence.org', 'Hood River', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Dr. Vogt', 'Providence', 'Internist', 'N/A', 'Stephen.Vogt@providence.org', 'Hood River', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Dr. Siyad', 'Providence', 'Internist', 'N/A', 'Mohamed.Siyad@providence.org', 'Klamath Falls', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Dr. Gearhart', 'Providence', 'Internist', 'N/A', 'Lauren.Gearhart@providence.org', 'Lake Oswego', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Dr. Hashiguchi', 'Providence', 'Internist', 'N/A', 'Steven.Hashiguchi@providence.org', 'Lake Oswego', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Dr. Baron', 'Providence', 'Internist', 'N/A', 'Daryl.Baron@providence.org', 'Lake Oswego', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Dr. Finnegan', 'Providence', 'Internist', 'N/A', 'Colleen.Finnegan@providence.org', 'Lake Oswego', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Dr. Winter', 'Providence', 'Internist', 'N/A', 'Todd.Winter@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Dr. Kholodnaya', 'Providence', 'Internist', 'N/A', 'Nadezhda.Kholodnaya@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Dr. Morgan', 'Providence', 'Internist', 'N/A', 'Christopher.Morgan@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Dr. Morgan', 'Providence', 'Internist', 'N/A', 'Chris.Morgan@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Dr. Brandenburg', 'Providence', 'Internist', 'N/A', 'Daniel.Brandenburg@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Dr. Peard', 'Providence', 'Internist', 'N/A', 'Garrett.Peard@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Dr. Soliman', 'Providence', 'Internist', 'N/A', 'Jayrus.Soliman@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Dr. Henry', 'Providence', 'Internist', 'N/A', 'Evelyn.Henry@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Dr. McNeal', 'Providence', 'Internist', 'N/A', 'Travis.McNeal@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Dr. Cullen', 'Providence', 'Internist', 'N/A', 'Edward.Cullen@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Dr. Cullen', 'Providence', 'Internist', 'N/A', 'Ed.Cullen@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Dr. Cullen', 'Providence', 'Internist', 'N/A', 'EdDIE.Cullen@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Dr. Cullen', 'Providence', 'Internist', 'N/A', 'Clark.Cullen@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Dr. Alftine', 'Providence', 'Internist', 'N/A', 'Christopher.Alftine@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Dr. Alftine', 'Providence', 'Internist', 'N/A', 'Chris.Alftine@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Dr. Kim', 'Providence', 'Internist', 'N/A', 'Andrew.Kim@providence.org', 'Medford', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Dr. Maslen', 'Providence', 'Internist', 'N/A', 'David.Maslen@providence.org', 'Milwaukie', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Dr. Sellars', 'Providence', 'Internist', 'N/A', 'Kevin.Sellars@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Dr. Cadar', 'Providence', 'Internist', 'N/A', 'Sorin.Cadar@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Dr. Bergquam', 'Providence', 'Internist', 'N/A', 'Nina.Bergquam@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Dr. McCoy', 'Providence', 'Internist', 'N/A', 'Nathan.McCoy@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Dr. Rahkola', 'Providence', 'Internist', 'N/A', 'Sarah.Rahkola@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Dr. Becker', 'Providence', 'Internist', 'N/A', 'Matthew.Becker@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Dr. Becker', 'Providence', 'Internist', 'N/A', 'Matt.Becker@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Dr. Stadtlander', 'Providence', 'Internist', 'N/A', 'Sean.Stadtlander@providence.org', 'Newberg', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'Dr. Li', 'Providence', 'Internist', 'N/A', 'Kai.Li@providence.org', 'Oregon City', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:00', '2020-08-12 04:05:00', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Dr. Rega', 'Providence', 'Internist', 'N/A', 'Peter.Rega@providence.org', 'Oregon City', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'Dr. Barnes-Rickett', 'Adventist Health', 'Internist', 'N/A', 'Alex.Barnes-Rickett@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'Dr. Robinson', 'Adventist Health', 'Internist', 'N/A', 'Gregory.Robinson@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'Dr. Robinson', 'Adventist Health', 'Internist', 'N/A', 'Greg.Robinson@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'Dr. Barnes-Rickett', 'Adventist Health', 'Internist', 'N/A', 'Alex.BarnesRickett@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Dr. Barnes', 'Adventist Health', 'Internist', 'N/A', 'Alex.Barnes@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Dr. Rickett', 'Adventist Health', 'Internist', 'N/A', 'Alex.Rickett@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'Dr. Moroye', 'Adventist Health', 'Internist', 'N/A', 'Marc.Moroye@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'Dr. Nguyen', 'Adventist Health', 'Internist', 'N/A', 'Ngan-Lien.Nguyen@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'Dr. Nguyen', 'Adventist Health', 'Internist', 'N/A', 'NganLien.Nguyen@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Dr. Nguyen', 'Adventist Health', 'Internist', 'N/A', 'Ngan.Nguyen@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'Dr. Nguyen', 'Adventist Health', 'Internist', 'N/A', 'Lien.Nguyen@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'Dr. Tran', 'Adventist Health', 'Internist', 'N/A', 'Thuyet.Tran@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'Dr. Thorp', 'Adventist Health', 'Internist', 'N/A', 'Jonathon.Thorp@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'Dr. Scribner', 'Adventist Health', 'Internist', 'N/A', 'Gregory.Scribner@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'Dr. Scribner', 'Adventist Health', 'Internist', 'N/A', 'Greg.Scribner@ah.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'Dr. Nguyen', 'Providence', 'Internist', 'N/A', 'Duc.Nguyen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Dr. Wichienkuer', 'Providence', 'Internist', 'N/A', 'Paula.Wichienkuer@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Dr. Hitchcock', 'Providence', 'Internist', 'N/A', 'Emily.Hitchcock@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Dr. White', 'Providence', 'Internist', 'N/A', 'Emma.White@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Dr. Valls', 'Providence', 'Internist', 'N/A', 'Luis.Valls@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Dr. Kruse', 'Providence', 'Internist', 'N/A', 'Karen.Kruse@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Dr. Michaelson', 'Providence', 'Internist', 'N/A', 'Ellen.Michaelson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'Dr. McAninch', 'Providence', 'Internist', 'N/A', 'Malcolm.McAninch@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'Dr. Simon', 'Providence', 'Internist', 'N/A', 'Laurel.Simon@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'Dr. Friend', 'Providence', 'Internist', 'N/A', 'Sean.Friend@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'Dr. Yeh', 'Providence', 'Internist', 'N/A', 'Susan.Yeh@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Dr. Valerio', 'Providence', 'Internist', 'N/A', 'Donald.Valerio@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'Dr. Valbuena', 'Providence', 'Internist', 'N/A', 'Michael.Valbuena@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'Dr. Valbuena', 'Providence', 'Internist', 'N/A', 'MIKE.Valbuena@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'Dr. Kemper', 'Providence', 'Internist', 'N/A', 'Lynn.Kemper@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'Dr. Chun', 'Providence', 'Internist', 'N/A', 'Brie.Chun@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Dr. Sanders', 'Providence', 'Internist', 'N/A', 'Lisa.Sanders@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'Dr. Reich', 'Providence', 'Internist', 'N/A', 'Heidi.Reich@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Dr. Moore', 'Providence', 'Internist', 'N/A', 'Michael.Moore@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'Dr. Woskow', 'Providence', 'Internist', 'N/A', 'Lorraine.Woskow@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'Dr. Ware', 'Providence', 'Internist', 'N/A', 'Benjamin.Ware@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Dr. Ware', 'Providence', 'Internist', 'N/A', 'Ben.Ware@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Dr. Raniele', 'Providence', 'Internist', 'N/A', 'Dean.Raniele@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'Dr. Hudon', 'Providence', 'Internist', 'N/A', 'Robert.Hudon@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'Dr. Hudon', 'Providence', 'Internist', 'N/A', 'Bob.Hudon@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Dr. Mazzotta', 'Providence', 'Internist', 'N/A', 'Michael.Mazzotta@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'Dr. Mazzotta', 'Providence', 'Internist', 'N/A', 'MIKE.Mazzotta@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'Dr. Renouard', 'Providence', 'Internist', 'N/A', 'Douglas.Renouard@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'Dr. Green', 'Providence', 'Internist', 'N/A', 'Janette.Green@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'Dr. Paulsen', 'Providence', 'Internist', 'N/A', 'Ann.Paulsen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'Dr. Gragnola', 'Providence', 'Internist', 'N/A', 'Thomas.Gragnola@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'Dr. Marshall', 'Providence', 'Internist', 'N/A', 'Katharine.Marshall@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'Dr. Demetrion', 'Providence', 'Internist', 'N/A', 'George.Demetrion@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'Dr. Uppal', 'Providence', 'Internist', 'N/A', 'Richa.Uppal@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'Dr. Kleikamp', 'Providence', 'Internist', 'N/A', 'Theodore.Kleikamp@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'Dr. Murthy', 'Providence', 'Internist', 'N/A', 'Madhavi.Murthy@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'Dr. Hassell', 'Providence', 'Internist', 'N/A', 'Miles.Hassell@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'Dr. Tyler', 'Providence', 'Internist', 'N/A', 'Jeffrey.Tyler@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'Dr. Tyler', 'Providence', 'Internist', 'N/A', 'Jeff.Tyler@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'Dr. Miller', 'Providence', 'Internist', 'N/A', 'Janice.Miller@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'Dr. Bley', 'Providence', 'Internist', 'N/A', 'Dennis.Bley@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'Dr. Miller', 'Providence', 'Internist', 'N/A', 'Dorelan.Miller@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'Dr. Biemer', 'Providence', 'Internist', 'N/A', 'James.Biemer@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'Dr. Engle', 'Providence', 'Internist', 'N/A', 'Patricia.Engle@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'Dr. Kasik', 'Providence', 'Internist', 'N/A', 'Katherine.Kasik@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(232, 'Dr. Bauer', 'Providence', 'Internist', 'N/A', 'John.Bauer@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'Dr. Howatt', 'Providence', 'Internist', 'N/A', 'Janis.Howatt@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'Dr. Hrbek', 'Providence', 'Internist', 'N/A', 'Marjorie.Hrbek@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'Dr. Kefalos', 'Providence', 'Internist', 'N/A', 'Kirana.Kefalos@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'Dr. Carter', 'Providence', 'Internist', 'N/A', 'Sarah.Carter@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'Dr. Marshall-Olson', 'Providence', 'Internist', 'N/A', 'Angela.Marshall-Olson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'Dr. Marshall-Olson', 'Providence', 'Internist', 'N/A', 'Angela.MarshallOlson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'Dr. Marshall', 'Providence', 'Internist', 'N/A', 'Angela.Marshall@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'Dr. Olson', 'Providence', 'Internist', 'N/A', 'Angela.Olson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'Dr. Coodley', 'Providence', 'Internist', 'N/A', 'Gregg.Coodley@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'Dr. Spisak', 'Providence', 'Internist', 'N/A', 'William.Spisak@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'Dr. Huang', 'Providence', 'Internist', 'N/A', 'TeD.Huang@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'Dr. Le', 'Providence', 'Internist', 'N/A', 'Priscilla.Le@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'Dr. Lee', 'Peace Health', 'Internist', 'N/A', 'JLee@PeaceHealth.org', 'Springfield', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'Dr. Mann', 'Peace Health', 'Internist', 'N/A', 'SMann@PeaceHealth.org', 'Springfield', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'Dr. Flynn', 'Peace Health', 'Internist', 'N/A', 'SFlynn@PeaceHealth.org', 'Springfield', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Dr. Ghandour', 'Peace Health', 'Internist', 'N/A', 'HGhandour@PeaceHealth.org', 'Springfield', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'Dr. Thomason', 'Providence', 'Internist', 'N/A', 'Mary.Thomason@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'Dr. Kim', 'Providence', 'Internist', 'N/A', 'Jennifer.Kim@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'Dr. Fellin', 'Providence', 'Internist', 'N/A', 'Samuel.Fellin@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:01', '2020-08-12 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'Dr. Fellin', 'Providence', 'Internist', 'N/A', 'Sam.Fellin@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'Dr. Nathan', 'Providence', 'Internist', 'N/A', 'Ranjana.Nathan@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'Dr. Shenoy', 'Providence', 'Internist', 'N/A', 'Raghuveer.Shenoy@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'Dr. Nagappan', 'Providence', 'Internist', 'N/A', 'Poombavai.Nagappan@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'Dr. Baros', 'Providence', 'Internist', 'N/A', 'Evagelia.Baros@providence.org', 'Tigard', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'Dr. Neupane', 'Adventist Health', 'Internist', 'N/A', 'Sanjay.Neupane@ah.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'Dr. Forsythe', 'Providence', 'Internist', 'N/A', 'John.Forsythe@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'Dr. Kearsley', 'Providence', 'Internist', 'N/A', 'Jennifer.Kearsley@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'Dr. Kearsley', 'Providence', 'Internist', 'N/A', 'Jenn.Kearsley@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'Dr. Glaser', 'Providence', 'Internist', 'N/A', 'Adam.Glaser@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'Dr. Meinen', 'Providence', 'Internist', 'N/A', 'Candace.Meinen@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'Dr. Kuhn', 'Providence', 'Internist', 'N/A', 'NicK.Kuhn@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'Dr. Pataroque', 'Providence', 'Internist', 'N/A', 'Benito.Pataroque@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'Dr. Zinke', 'Providence', 'Internist', 'N/A', 'Richard.Zinke@providence.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'Dr. Laird', 'Providence', 'Internist', 'N/A', 'Sheri.Laird@providence.org', 'West Linn', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'Dr. Meeker', 'Providence', 'Internist', 'N/A', 'Huey.Meeker@providence.org', 'West Linn', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'Dr. Eller', 'Providence', 'Internist', 'N/A', 'Robert.Eller@providence.org', 'West Linn', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'Dr. Eller', 'Providence', 'Internist', 'N/A', 'Rob.Eller@providence.org', 'West Linn', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'Dr. Darby', 'Providence', 'Internist', 'N/A', 'Charles.Darby@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'Dr. McHarris', 'Providence', 'Internist', 'N/A', 'Louise.McHarris@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'Dr. Miller', 'Providence', 'Internist', 'N/A', 'Jill.Miller@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'Dr. Kuhn', 'Providence', 'Internist', 'N/A', 'Nicholas.Kuhn@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'Dr. Fares', 'Providence', 'Internist', 'N/A', 'Riyad.Fares@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'Dr. Bentz', 'Providence', 'Internist', 'N/A', 'Charles.Bentz@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Dr. Choong', 'Providence', 'Internist', 'N/A', 'Meei.Choong@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'Dr. Hayes', 'Providence', 'Internist', 'N/A', 'Robert.Hayes@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'Dr. Hayes', 'Providence', 'Internist', 'N/A', 'Rob.Hayes@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'Dr. Zhou', 'Providence', 'Internist', 'N/A', 'Qian.Zhou@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'Dr. Glenn', 'Providence', 'Internist', 'N/A', 'Char.Glenn@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'Dr. Cooper', 'Providence', 'Internist', 'N/A', 'Clifford.Cooper@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'Dr. Kim', 'Providence', 'Internist', 'N/A', 'Gary.Kim@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'Dr. Wood', 'Providence', 'Internist', 'N/A', 'Charles.Wood@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'Dr. Fancher', 'Providence', 'Internist', 'N/A', 'Bradley.Fancher@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'Dr. Crouse', 'Providence', 'Internist', 'N/A', 'Robert.Crouse@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'Dr. Ferrier', 'Providence', 'Internist', 'N/A', 'Cynthia.Ferrier@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'Dr. Migchelbrink', 'Providence', 'Internist', 'N/A', 'Suzanne.Migchelbrink@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'Dr. Weingarten', 'Providence', 'Internist', 'N/A', 'David.Weingarten@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'Dr. Mullen', 'Providence', 'Internist', 'N/A', 'Robert.Mullen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'Dr. Pena', 'Providence', 'Internist', 'N/A', 'Porfirio.Pena@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'Dr. Horacek', 'Providence', 'Internist', 'N/A', 'Jeffrey.Horacek@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'Dr. Horacek', 'Providence', 'Internist', 'N/A', 'JefF.Horacek@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'Dr. Berney', 'Providence', 'Internist', 'N/A', 'Bertram.Berney@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'Dr. Puterbaugh', 'Providence', 'Internist', 'N/A', 'James.Puterbaugh@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'Dr. Casey', 'Providence', 'Internist', 'N/A', 'Jacob.Casey@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'Dr. Nayak', 'Providence', 'Internist', 'N/A', 'Alice.Nayak@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'Dr. Barayuga', 'Providence', 'Internist', 'N/A', 'Stephanie.Barayuga@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'Dr. Brown', 'Providence', 'Internist', 'N/A', 'Brieanna.Brown@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'Dr. Beeson', 'Providence', 'Internist', 'N/A', 'Steven.Beeson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'Dr. Kai', 'Providence', 'Internist', 'N/A', 'Mari.Kai@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'Dr. Genstler', 'Providence', 'Internist', 'N/A', 'Joshua.Genstler@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'Dr. Schims', 'Providence', 'Internist', 'N/A', 'Veronica.Schims@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'Dr. Ryan', 'Providence', 'Internist', 'N/A', 'Eric.Ryan@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'Dr. Whitney', 'Providence', 'Internist', 'N/A', 'Annette.Whitney@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Dr. Temte', 'Providence', 'Internist', 'N/A', 'Brandon.Temte@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'Dr. Hendrickson', 'Providence', 'Internist', 'N/A', 'Irene.Hendrickson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'Dr. Miller', 'Providence', 'Internist', 'N/A', 'Joe.Miller@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:02', '2020-08-12 04:05:02', NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'Dr. Esselink', 'Providence', 'Internist', 'N/A', 'Barbara.Esselink@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'Dr. Yutan', 'Providence', 'Internist', 'N/A', 'Paul.Yutan@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'Dr. Luu', 'Providence', 'Internist', 'N/A', 'Vien.Luu@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'Dr. Hungerford', 'Providence', 'Internist', 'N/A', 'Linda.Hungerford@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'Dr. Schneider', 'Providence', 'Internist', 'N/A', 'Mark.Schneider@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'Dr. Nguyen', 'Providence', 'Internist', 'N/A', 'Vantrang.Nguyen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'Dr. Hsu', 'Providence', 'Internist', 'N/A', 'Richard.Hsu@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'Dr. Parshley', 'Providence', 'Internist', 'N/A', 'MariannE.Parshley@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'Dr. Park', 'Providence', 'Internist', 'N/A', 'Hiromichi.Park@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'Dr. Barich', 'Providence', 'Internist', 'N/A', 'Frank.Barich@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'Dr. Yu', 'Providence', 'Internist', 'N/A', 'Wendy.Yu@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'Dr. Nguyen', 'Providence', 'Internist', 'N/A', 'Jennifer.Nguyen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'Dr. Armstrong', 'Providence', 'Internist', 'N/A', 'Andrew.Armstrong@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'Dr. Nwaokocha', 'Providence', 'Internist', 'N/A', 'Vanessa.Nwaokocha@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'Dr. Catral', 'Providence', 'Internist', 'N/A', 'Jillian.Catral@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'Dr. Silvas', 'Providence', 'Internist', 'N/A', 'Michael.Silvas@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'Dr. Silvas', 'Providence', 'Internist', 'N/A', 'MIKE.Silvas@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'Dr. Herder', 'Providence', 'Internist', 'N/A', 'Kimberly.Herder@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'Dr. Herder', 'Providence', 'Internist', 'N/A', 'Kim.Herder@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'Dr. Rinehart', 'Providence', 'Internist', 'N/A', 'Robin.Rinehart@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'Dr. Childers', 'Providence', 'Internist', 'N/A', 'Courtland.Childers@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'Dr. Jain', 'Providence', 'Internist', 'N/A', 'Meera.Jain@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'Dr. De Castro-delacruz', 'Providence', 'Internist', 'N/A', 'Cristina.Decastro-delacruz@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'Dr. Powell', 'Providence', 'Internist', 'N/A', 'Jesse.Powell@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'Dr. Grant', 'Providence', 'Internist', 'N/A', 'Leah.Grant@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'Dr. Phan', 'Providence', 'Internist', 'N/A', 'Steven.Phan@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'Dr. Spencer', 'Providence', 'Internist', 'N/A', 'Garrett.Spencer@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'Dr. Hutchinson', 'Providence', 'Internist', 'N/A', 'Elizabeth.Hutchinson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'Dr. Hutchinson', 'Providence', 'Internist', 'N/A', 'beth.Hutchinson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'Dr. Hutchinson', 'Providence', 'Internist', 'N/A', 'liz.Hutchinson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'Dr. Reay', 'Providence', 'Internist', 'N/A', 'Caroline.Reay@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'Dr. Sy', 'Providence', 'Internist', 'N/A', 'Daphne.Sy@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'Dr. Roast', 'Providence', 'Internist', 'N/A', 'Andrea.Roast@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'Dr. Ghebremichael', 'Providence', 'Internist', 'N/A', 'Rahwa.Ghebremichael@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'Dr. Afrah-Boateng', 'Providence', 'Internist', 'N/A', 'Alicia.Afrah-Boateng@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-15 08:22:52', NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'Dr. Afrah-Boateng', 'Providence', 'Internist', 'N/A', 'Alicia.AfrahBoateng@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'Dr. Afrah', 'Providence', 'Internist', 'N/A', 'Alicia.Afrah@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-15 08:22:37', NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'Dr. Boateng', 'Providence', 'Internist', 'N/A', 'Alicia.Boateng@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'Dr. Lee', 'Providence', 'Internist', 'N/A', 'Jean.Lee@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'Dr. Dao', 'Providence', 'Internist', 'N/A', 'Linh.Dao@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'Dr. Pham', 'Providence', 'Internist', 'N/A', 'Thuy-Tien.Pham@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'Dr. Pham', 'Providence', 'Internist', 'N/A', 'ThuyTien.Pham@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'Dr. Pham', 'Providence', 'Internist', 'N/A', 'Thuy.Pham@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'Dr. Pham', 'Providence', 'Internist', 'N/A', 'Tien.Pham@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'Dr. Little', 'Providence', 'Internist', 'N/A', 'Brian.Little@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'Dr. Khary', 'Providence', 'Internist', 'N/A', 'Victorya.Khary@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'Dr. Chau', 'Providence', 'Internist', 'N/A', 'Tom.Chau@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'Dr. Norfleet', 'Providence', 'Internist', 'N/A', 'Daniel.Norfleet@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'Dr. Youker', 'Providence', 'Internist', 'N/A', 'Jeffrey.Youker@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'Dr. Youker', 'Providence', 'Internist', 'N/A', 'Jeff.Youker@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'Dr. Nguyen', 'Providence', 'Internist', 'N/A', 'Kristy.Nguyen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'Dr. Starcher', 'Providence', 'Internist', 'N/A', 'Rachael.Starcher@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'Dr. James', 'Providence', 'Internist', 'N/A', 'Tricia.James@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'Dr. Hutfles', 'Providence', 'Internist', 'N/A', 'Gerald.Hutfles@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'Dr. Schafir', 'Providence', 'Internist', 'N/A', 'Alex.Schafir@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'Dr. Cam', 'Providence', 'Internist', 'N/A', 'Richard.Cam@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'Dr. Hirsch', 'Providence', 'Internist', 'N/A', 'Anne.Hirsch@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'Dr. Sharma', 'Providence', 'Internist', 'N/A', 'Larissa.Sharma@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'Dr. Tsai', 'Providence', 'Internist', 'N/A', 'Richard.Tsai@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'Dr. Loertscher', 'Providence', 'Internist', 'N/A', 'Laura.Loertscher@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'Dr. Eardley', 'Providence', 'Internist', 'N/A', 'Dianne.Eardley@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'Dr. Leonard', 'Providence', 'Internist', 'N/A', 'Claudia.Leonard@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'Dr. Sanders', 'Providence', 'Internist', 'N/A', 'Shelley.Sanders@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'Dr. Wilson', 'Providence', 'Internist', 'N/A', 'Cameron.Wilson@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'Dr. Ban', 'Providence', 'Internist', 'N/A', 'Lan.Ban@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'Dr. Paul', 'Providence', 'Internist', 'N/A', 'Lisa.Paul@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'Dr. Majorant', 'Providence', 'Internist', 'N/A', 'Oana.Majorant@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'Dr. Gurov', 'Providence', 'Internist', 'N/A', 'Andrean.Gurov@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'Dr. Carroll', 'Providence', 'Internist', 'N/A', 'Michael.Carroll@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'Dr. Carroll', 'Providence', 'Internist', 'N/A', 'MiKE.Carroll@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'Dr. Nguyen', 'Providence', 'Internist', 'N/A', 'Khoi.Nguyen@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'Dr. Rozenberg', 'Providence', 'Internist', 'N/A', 'Boris.Rozenberg@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'Dr. Belanger', 'The Portland Clinic', 'Internist', 'N/A', 'EBelanger@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'Dr. Belanger', 'The Portland Clinic', 'Internist', 'N/A', 'BBelanger@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'Dr. Belanger', 'The Portland Clinic', 'Internist', 'N/A', 'LBelanger@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'Dr. Cooper', 'The Portland Clinic', 'Internist', 'N/A', 'CCooper@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'Dr. Crouse', 'The Portland Clinic', 'Internist', 'N/A', 'RCrouse@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:03', '2020-08-12 04:05:03', NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'Dr. Dudrey', 'The Portland Clinic', 'Internist', 'N/A', 'TDudrey@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:48', NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'Dr. Foley', 'The Portland Clinic', 'Internist', 'N/A', 'MFoley@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:37', NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Dr. Kim', 'The Portland Clinic', 'Internist', 'N/A', 'GKim@tpcllp.com', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'Dr. Pettit', 'The Portland Clinic', 'Internist', 'N/A', 'JPettit@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-15 08:14:12', NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'Dr. Sage', 'The Portland Clinic', 'Internist', 'N/A', 'LSage@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'Dr. Thunder', 'The Portland Clinic', 'Internist', 'N/A', 'TThunder@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'Dr. Trochmann', 'The Portland Clinic', 'Internist', 'N/A', 'RTrochmann@tpcllp.com', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'Dr. Umene', 'The Portland Clinic', 'Internist', 'N/A', 'DUmene@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'Dr. Uppal', 'The Portland Clinic', 'Internist', 'N/A', 'RUppal@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'Dr. Vides', 'The Portland Clinic', 'Internist', 'N/A', 'EVides@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'Dr. Paulsen', 'The Portland Clinic', 'Internist', 'N/A', 'APaulsen@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'Dr. D’Souza-Kamath', 'The Portland Clinic', 'Internist', 'N/A', 'RD’Souza-Kamath@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'Dr. D\'Souza-Kamath', 'The Portland Clinic', 'Internist', 'N/A', 'RDSouza-Kamath@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'Dr. D’Souza Kamath', 'The Portland Clinic', 'Internist', 'N/A', 'RD’SouzaKamath@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'Dr. Kamath', 'The Portland Clinic', 'Internist', 'N/A', 'RKamath@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'Dr. D’Souza', 'The Portland Clinic', 'Internist', 'N/A', 'RD’Souza@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'Dr. D’Souza', 'The Portland Clinic', 'Internist', 'N/A', 'RDSouza@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'Dr. Souza-Kamath', 'The Portland Clinic', 'Internist', 'N/A', 'RSouza-Kamath@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'Dr. Souza-Kamath', 'The Portland Clinic', 'Internist', 'N/A', 'RSouzaKamath@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'Dr. Souza', 'The Portland Clinic', 'Internist', 'N/A', 'RSouza@tpcllp.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'Dr. Castro-delacruz', 'Providence', 'Internist', 'N/A', 'Cristina.Castro-delacruz@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'Dr. Castro-delacruz', 'Providence', 'Internist', 'N/A', 'Cristina.Castrodelacruz@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'Dr. Castro', 'Providence', 'Internist', 'N/A', 'Cristina.Castro@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'Dr. Delacruz', 'Providence', 'Internist', 'N/A', 'Cristina.delacruz@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'Dr. De Castro-delacruz', 'Providence', 'Internist', 'N/A', 'Cristina.Decastrodelacruz@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'Dr. De Castro', 'Providence', 'Internist', 'N/A', 'Cristina.Decastro@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-12 04:05:04', '2020-08-12 04:05:04', NULL, NULL, NULL, NULL, NULL, NULL),
(1126, 'Dr. Lerner', 'Kaiser', 'Psychiatrist', 'N/A', 'Sara.Lerner@kp.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1127, 'Dr. Samson', 'Kaiser', 'Psychiatrist', 'N/A', 'Mark.s.Samson@kp.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1128, 'Dr. Greenman', 'Kaiser', 'Psychiatrist', 'N/A', 'Eric.m.Greenman@kp.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1129, 'Dr. Barkin', 'Kaiser', 'Psychiatrist', 'N/A', 'Karin.Barkin@kp.org', 'Tacoma', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1130, 'Dr. Sidell', 'Kaiser', 'Psychiatrist', 'N/A', 'Gregory.s.Sidell@kp.org', 'Tacoma', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1131, 'Dr. Reinach', 'Kaiser', 'Psychiatrist', 'N/A', 'Robert.C.Reinach@kp.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1132, 'Dr. Sprague', 'Kaiser', 'Psychiatrist', 'N/A', 'Meghann.e.Sprague@kp.org', 'Bremerton', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1133, 'Dr. Redburn', 'Kaiser', 'Psychiatrist', 'N/A', 'Anne.E.Redburn@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(1134, 'Dr. James', 'Kaiser', 'Psychiatrist', 'N/A', 'Trenton.L.James@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1135, 'Dr. Hewett', 'Kaiser', 'Psychiatrist', 'N/A', 'Olga.O.Hewett@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1136, 'Dr. Dang', 'Kaiser', 'Psychiatrist', 'N/A', 'Tobias.Dang@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1137, 'Dr. Holbrooks-Kuratek', 'Kaiser', 'Psychiatrist', 'N/A', 'Holly.J.Holbrooks-Kuratek@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1138, 'Dr. Simon', 'Kaiser', 'Psychiatrist', 'N/A', 'Gregory.E.Simon@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1139, 'Dr. Simon', 'Kaiser', 'Psychiatrist', 'N/A', 'Mabel.O.Bongmba@kp.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1140, 'Dr. Miropolskiy', 'Kaiser', 'Psychiatrist', 'N/A', 'Ella.Miropolskiy@kp.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1141, 'Dr. Grewal', 'Kaiser', 'Psychiatrist', 'N/A', 'Reena.Grewal@kp.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1142, 'Dr. Godina', 'Kaiser', 'Psychiatrist', 'N/A', 'Olga.Godina@kp.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1143, 'Dr. Brammer', 'Kaiser', 'Psychiatrist', 'N/A', 'Jackson.W.Brammer@kp.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1144, 'Dr. Christie', 'Kaiser', 'Psychiatrist', 'N/A', 'Douglas.K.Christie@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1145, 'Dr. Shyn', 'Kaiser', 'Psychiatrist', 'N/A', 'Stanley.I.Shyn@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1146, 'Dr. Caldeiro', 'Kaiser', 'Psychiatrist', 'N/A', 'Ryan.M.Caldeiro@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1147, 'Dr. Dandois', 'Kaiser', 'Psychiatrist', 'N/A', 'Matthew.J.Dandois@kp.org', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1148, 'Dr. Gary', 'Kaiser', 'Psychiatrist', 'N/A', 'Megan.C.Gary@kp.org', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1149, 'Dr. Simangan', 'Kaiser', 'Psychiatrist', 'N/A', 'Norleen.P.Simangan@kp.org', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1150, 'Dr. Kassicieh', 'Kaiser', 'Psychiatrist', 'N/A', 'Lesley.P.Kassicieh@kp.org', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1151, 'Dr. Wolf', 'Kaiser', 'Psychiatrist', 'N/A', 'Mark.T.Wolf@kp.org', 'Spokane', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1152, 'Dr. Mulvihill', 'Kaiser', 'Psychiatrist', 'N/A', 'Susi.Mulvihill@kp.org', 'Spokane', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1153, 'Dr. Pounds', 'Riverfront Medical', 'Psychiatrist', 'N/A', 'pounds.j@ghc.org', 'Spokane', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1154, 'Dr. Sharangpani', 'Riverfront Medical', 'Psychiatrist', 'N/A', 'RSharangpani@ghc.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1155, 'Dr. Basnett', 'Riverfront Medical', 'Psychiatrist', 'N/A', 'Saneer.Basnett@ghc.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1156, 'Dr. Barkin', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'KarinBarkin@chifranciscan.org', 'Bremerton', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1157, 'Dr. Faust', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'ElizabethFaust@chifranciscan.org', 'Silverdale', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1158, 'Dr. Gonsoulin', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'JohnGonsoulin@chifranciscan.org', 'Silverdale', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1159, 'Dr. Sharangpani', 'Providence', 'Psychiatrist', 'N/A', 'Ritawari.Sharangpani@providence.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1160, 'Dr. Bouchard', 'Providence', 'Psychiatrist', 'N/A', 'Marc.Bouchard@providence.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1161, 'Dr. Basnett', 'Providence', 'Psychiatrist', 'N/A', 'Saneer.Basnett@providence.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1162, 'Dr. Sattar', 'Providence', 'Psychiatrist', 'N/A', 'Anjan.Sattar@providence.org', 'Olympia', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1163, 'Dr. Diaconu', 'NeuroStim', 'Psychiatrist', 'N/A', 'Ioana@neurostimtms.com', 'Lacey', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1164, 'Dr. Faust', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'bethFaust@chifranciscan.org', 'Silverdale', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1165, 'Dr. Faust', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'lizFaust@chifranciscan.org', 'Silverdale', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1166, 'Dr. Jackson', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'GeorgeJackson@chifranciscan.org', 'Tacoma', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1167, 'Dr. Taylor', 'CHI Franciscan', 'Psychiatrist', 'N/A', 'FletcherTaylor@chifranciscan.org', 'Tacoma', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1168, 'Dr. Phillips', 'MultiCare', 'Psychiatrist', 'N/A', 'aPhillips@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1169, 'Dr. Schack', 'MultiCare', 'Psychiatrist', 'N/A', 'jSchack@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1170, 'Dr. Alter', 'MultiCare', 'Psychiatrist', 'N/A', 'mAlter@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1171, 'Dr. Lenza', 'Kitsap', 'Psychiatrist', 'N/A', 'GaryL@kmhs.org', 'Bremerton', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1172, 'Dr. Barkin', 'Kitsap', 'Psychiatrist', 'N/A', 'KarinB@kmhs.org', 'Bremerton', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1173, 'Dr. Bauer', 'UW Medicine', 'Psychiatrist', 'N/A', 'abauer1@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1174, 'Dr. Bhat', 'UW Medicine', 'Psychiatrist', 'N/A', 'amritha@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1175, 'Dr. Black', 'UW Medicine', 'Psychiatrist', 'N/A', 'macblack79@gmail.com', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1176, 'Dr. Carlisle', 'UW Medicine', 'Psychiatrist', 'N/A', 'carlil@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1177, 'Dr. Cerimele', 'UW Medicine', 'Psychiatrist', 'N/A', 'cerimele@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1178, 'Dr. Erickson', 'UW Medicine', 'Psychiatrist', 'N/A', 'jmericks@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1179, 'Dr. Hendrickson', 'UW Medicine', 'Psychiatrist', 'N/A', 'rhend@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1180, 'Dr. Li', 'UW Medicine', 'Psychiatrist', 'N/A', 'gli@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1181, 'Dr. Petrie', 'UW Medicine', 'Psychiatrist', 'N/A', 'epetrie@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1182, 'Dr. Bates', 'UW Medicine', 'Psychiatrist', 'N/A', 'nbates@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1183, 'Dr. Poeschla', 'UW Medicine', 'Psychiatrist', 'N/A', 'bpoeschl@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1184, 'Dr. Simon', 'UW Medicine', 'Psychiatrist', 'N/A', 's2195@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1185, 'Dr. Soeprono', 'UW Medicine', 'Psychiatrist', 'N/A', 'thomasms@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1186, 'Dr. Sullivan', 'UW Medicine', 'Psychiatrist', 'N/A', 'sullimar@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1187, 'Dr. Sung', 'UW Medicine', 'Psychiatrist', 'N/A', 'jsung@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1188, 'Dr. Toor', 'UW Medicine', 'Psychiatrist', 'N/A', 'rtoor@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1189, 'Dr. Turner', 'UW Medicine', 'Psychiatrist', 'N/A', 'eeturner@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1190, 'Dr. Veith', 'UW Medicine', 'Psychiatrist', 'N/A', 'rcv@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1191, 'Dr. Villacres', 'UW Medicine', 'Psychiatrist', 'N/A', 'enrique@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1192, 'Dr. Weiss', 'UW Medicine', 'Psychiatrist', 'N/A', 'drnweiss@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1193, 'Dr. Zarkowski', 'UW Medicine', 'Psychiatrist', 'N/A', 'pzark@uw.edu', 'Seattle', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1194, 'Dr. Euler', 'MultiCare', 'Psychiatrist', 'N/A', 'dEuler@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1195, 'Dr. Ikelheimer', 'MultiCare', 'Psychiatrist', 'N/A', 'dIkelheimer@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1196, 'Dr. Bingcang', 'MultiCare', 'Psychiatrist', 'N/A', 'pBingcang@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1197, 'Dr. Karnik', 'MultiCare', 'Psychiatrist', 'N/A', 'nKarnik@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1198, 'Dr. Raghunath', 'MultiCare', 'Psychiatrist', 'N/A', 'nRaghunath@multicare.org', 'Puyallup', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1199, 'Dr. Chung', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Philip.Chung@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1200, 'Dr. Avila', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Juan.Avila@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1201, 'Dr. Avila', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Antonio.Avila@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1202, 'Dr. Geary', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Richard.Geary@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1203, 'Dr. Gomez', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Gene.Gomez@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1204, 'Dr. Feldman', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Zachary.Feldman@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1205, 'Dr. Chmelik', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Elizabeth.Chmelik@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1206, 'Dr. Chmelik', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'beth.Chmelik@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1207, 'Dr. Chmelik', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'liz.Chmelik@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1208, 'Dr. Pierson', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'William.Pierson@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1209, 'Dr. Mathiasen', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Patrick.Mathiasen@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1210, 'Dr. Gonzalez', 'Lourdes', 'Psychiatrist', 'N/A', 'Benjamin.Gonzalez@lourdesonline.org', 'Bremerton', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1211, 'Dr. Laskey', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Jacob.Laskey@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1212, 'Dr. Koenig', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Kelan.Koenig@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1213, 'Dr. Tsai', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Albert.Tsai@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1214, 'Dr. Bakshi', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Neeru.Bakshi@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1215, 'Dr. Young', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Jeffrey.Young@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1216, 'Dr. Young', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Jeff.Young@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1217, 'Dr. Houser', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'James.Houser@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1218, 'Dr. Neppe', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Vernon.Neppe@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1219, 'Dr. Bergquist', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Avanti.Bergquist@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1220, 'Dr. Moghaddam', 'Overlake Hospital', 'Psychiatrist', 'N/A', 'Arash.Moghaddam@overlakehospital.org', 'Bellevue', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1221, 'Dr. Tamoria', 'The Everett Clinic', 'Psychiatrist', 'N/A', 'nTamoria@everettclinic.com', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1222, 'Dr. Suydam', 'The Everett Clinic', 'Psychiatrist', 'N/A', 'CSuydam@everettclinic.com', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1223, 'Dr. Mitchell', 'The Everett Clinic', 'Psychiatrist', 'N/A', 'KMitchell@everettclinic.com', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1224, 'Dr. Chadha', 'The Everett Clinic', 'Psychiatrist', 'N/A', 'MChadha@everettclinic.com', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1225, 'Dr. Wilson', 'The Everett Clinic', 'Psychiatrist', 'N/A', 'CWilson@everettclinic.com', 'Everett', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1226, 'Dr. Burns', 'Skagit Regional Health', 'Psychiatrist', 'N/A', 'RBurns@skagitregionalhealth.org', 'Mount Vernon', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1227, 'Dr. Sherman', 'Skagit Regional Health', 'Psychiatrist', 'N/A', 'VSherman@skagitregionalhealth.org', 'Mount Vernon', 'WA', '-1', 'Psychiatry', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-15 14:07:48', '2020-08-15 14:07:48', NULL, NULL, NULL, NULL, NULL, NULL),
(1228, 'Dr. Mazzotta', 'Fanno Creek Clinic', 'Internist', 'n/a', 'MMazzotta@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1229, 'Dr. Mazzotta', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Michael@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1230, 'Dr. Mazzotta', 'Fanno Creek Clinic', 'Internist', 'n/a', 'MIKE@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1231, 'Dr. Ransdell', 'Samaritan Health', 'Internist', 'n/a', 'MRansdell@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine, Pediatrics', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1232, 'Dr. Dossett', 'Samaritan Health', 'Internist', 'n/a', 'CDossett@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1233, 'Dr. Geleto', 'Samaritan Health', 'Internist', 'n/a', 'GGeleto@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1234, 'Dr. Gienapp', 'Samaritan Health', 'Internist', 'n/a', 'RGienapp@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1235, 'Dr. Girod', 'Samaritan Health', 'Internist', 'n/a', 'BGirod@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1236, 'Dr. Hansen', 'Samaritan Health', 'Internist', 'n/a', 'AHansen@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1237, 'Dr. Hejl', 'Samaritan Health', 'Internist', 'n/a', 'RHejl@samhealth.org', 'Albany', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1238, 'Dr. Hejl', 'Samaritan Health', 'Internist', 'n/a', 'BHejl@samhealth.org', 'Albany', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1239, 'Dr. Henery', 'Samaritan Health', 'Internist', 'n/a', 'DHenery@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1240, 'Dr. Hume', 'Samaritan Health', 'Internist', 'n/a', 'THume@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1241, 'Dr. Iqbal', 'Samaritan Health', 'Internist', 'n/a', 'AIqbal@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1242, 'Dr. Bentson', 'Samaritan Health', 'Internist', 'n/a', 'LBentson@samhealth.org', 'Albany', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1243, 'Dr. Boaz', 'Samaritan Health', 'Internist', 'n/a', 'ABoaz@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1244, 'Dr. Carr', 'Samaritan Health', 'Internist', 'n/a', 'KCarr@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1245, 'Dr. Chen', 'Samaritan Health', 'Internist', 'n/a', 'MChen@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1246, 'Dr. Collum', 'Samaritan Health', 'Internist', 'n/a', 'ACollum@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1247, 'Dr. Crider', 'Samaritan Health', 'Internist', 'n/a', 'CCrider@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1248, 'Dr. Davidson', 'Samaritan Health', 'Internist', 'n/a', 'JDavidson@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1249, 'Dr. Kaur', 'Samaritan Health', 'Internist', 'n/a', 'AKaur@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1250, 'Dr. Bley', 'Broadway Medical', 'Internist', 'n/a', 'DBley@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1251, 'Dr. Darby', 'Broadway Medical', 'Internist', 'n/a', 'CDarby@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1252, 'Dr. Hirsch', 'Broadway Medical', 'Internist', 'n/a', 'AHirsch@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1253, 'Dr. Howatt', 'Broadway Medical', 'Internist', 'n/a', 'JHowatt@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:24', '2020-08-18 02:38:24', NULL, NULL, NULL, NULL, NULL, NULL),
(1254, 'Dr. Hrbek', 'Broadway Medical', 'Internist', 'n/a', 'MHrbek@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1255, 'Dr. Renouard', 'Broadway Medical', 'Internist', 'n/a', 'DRenouard@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1256, 'Dr. Simon', 'Broadway Medical', 'Internist', 'n/a', 'LSimon@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1257, 'Dr. Wood', 'Broadway Medical', 'Internist', 'n/a', 'CWood@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1258, 'Dr. Madhav', 'Broadway Medical', 'Internist', 'n/a', 'JMadhav@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1259, 'Dr. Hansen', 'Broadway Medical', 'Internist', 'n/a', 'THansen@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1260, 'Dr. Bauer', 'Broadway Medical', 'Internist', 'n/a', 'JBauer@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1261, 'Dr. Valls', 'Broadway Medical', 'Internist', 'n/a', 'LValls@bmcllp.net', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1262, 'Dr. Maslen', 'NWPC', 'Internist', 'n/a', 'David.Maslen@nwpc.com', 'Milwaukie', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1263, 'Dr. Zhang', 'NWPC', 'Internist', 'n/a', 'Yufei.Zhang@nwpc.com', 'Milwaukie', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1264, 'Dr. Bentz', 'Fanno Creek Clinic', 'Internist', 'n/a', 'CBentz@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1265, 'Dr. Choong', 'Fanno Creek Clinic', 'Internist', 'n/a', 'MChoong@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1266, 'Dr. Demetrion', 'Fanno Creek Clinic', 'Internist', 'n/a', 'GDemetrion@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1267, 'Dr. Kuhn', 'Fanno Creek Clinic', 'Internist', 'n/a', 'NKuhn@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1268, 'Dr. Marshall-Olson', 'Fanno Creek Clinic', 'Internist', 'n/a', 'AMarshall-Olson@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1269, 'Dr. Marshall-Olson', 'Fanno Creek Clinic', 'Internist', 'n/a', 'AMarshallOlson@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1270, 'Dr. Marshall', 'Fanno Creek Clinic', 'Internist', 'n/a', 'AMarshall@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1271, 'Dr. Olson', 'Fanno Creek Clinic', 'Internist', 'n/a', 'AOlson@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1272, 'Dr. Marshall-Olson', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Angela@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1273, 'Dr. Choong', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Meei@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1274, 'Dr. Demetrion', 'Fanno Creek Clinic', 'Internist', 'n/a', 'George@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1275, 'Dr. Kuhn', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Nicholas@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1276, 'Dr. McHarris', 'Fanno Creek Clinic', 'Internist', 'n/a', 'LMcHarris@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1277, 'Dr. McHarris', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Louise@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1278, 'Dr. Plesiu', 'Fanno Creek Clinic', 'Internist', 'n/a', 'GPlesiu@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1279, 'Dr. Plesiu', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Gheorghe@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1280, 'Dr. Valerio', 'Fanno Creek Clinic', 'Internist', 'n/a', 'DValerio@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1281, 'Dr. Valerio', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Don@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1282, 'Dr. Valerio', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Donald@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1283, 'Dr. Yeh', 'Fanno Creek Clinic', 'Internist', 'n/a', 'SYeh@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1284, 'Dr. Yeh', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Susan@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1285, 'Dr. Woskow', 'Fanno Creek Clinic', 'Internist', 'n/a', 'LWoskow@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1286, 'Dr. Woskow', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Lorraine@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1287, 'Dr. Paulsen', 'Fanno Creek Clinic', 'Internist', 'n/a', 'APaulsen@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1288, 'Dr. Paulsen', 'Fanno Creek Clinic', 'Internist', 'n/a', 'AnnMarie@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1289, 'Dr. Paulsen', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Ann@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1290, 'Dr. Green', 'Fanno Creek Clinic', 'Internist', 'n/a', 'JGreen@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1291, 'Dr. Green', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Janette@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1292, 'Dr. Uppal', 'Fanno Creek Clinic', 'Internist', 'n/a', 'rUppal@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1293, 'Dr. Uppal', 'Fanno Creek Clinic', 'Internist', 'n/a', 'Richa@fannocreek.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1294, 'Dr. Spilk-Wall', 'Adventist Health', 'Internist', 'n/a', 'Samson.Spilk-Wall@ah.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1295, 'Dr. Spilk-Wall', 'Adventist Health', 'Internist', 'n/a', 'Samson.SpilkWall@ah.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1296, 'Dr. Spilk', 'Adventist Health', 'Internist', 'n/a', 'Samson.Spilk@ah.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1297, 'Dr. Wall', 'Adventist Health', 'Internist', 'n/a', 'Samson.Wall@ah.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1298, 'Dr. Spisak', 'NWPC', 'Internist', 'n/a', 'William.Spisak@nwpc.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1299, 'Dr. Pena', 'NWPC', 'Internist', 'n/a', 'Porfirio.Pena@nwpc.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1300, 'Dr. Horacek', 'NWPC', 'Internist', 'n/a', 'Jeffrey.Horacek@nwpc.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1301, 'Dr. Horacek', 'NWPC', 'Internist', 'n/a', 'Jeff.Horacek@nwpc.com', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1302, 'Dr. Jessop-Shankowski', 'Samaritan Health', 'Internist', 'n/a', 'KJessop-Shankowski@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1303, 'Dr. Jessop-Shankowski', 'Samaritan Health', 'Internist', 'n/a', 'KJessopShankowski@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1304, 'Dr. Jessop', 'Samaritan Health', 'Internist', 'n/a', 'KJessop@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1305, 'Dr. Shankowski', 'Samaritan Health', 'Internist', 'n/a', 'KShankowski@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1306, 'Dr. Klug', 'Samaritan Health', 'Internist', 'n/a', 'MKlug@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1307, 'Dr. Knapp', 'Samaritan Health', 'Internist', 'n/a', 'PKnapp@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1308, 'Dr. Knutson', 'Samaritan Health', 'Internist', 'n/a', 'AKnutson@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1309, 'Dr. LaFaunce', 'Samaritan Health', 'Internist', 'n/a', 'ALaFaunce@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1310, 'Dr. Long', 'Samaritan Health', 'Internist', 'n/a', 'DLong@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1311, 'Dr. Majeed', 'Samaritan Health', 'Internist', 'n/a', 'AMajeed@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1312, 'Dr. Marshall', 'Samaritan Health', 'Internist', 'n/a', 'BMarshall@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1313, 'Dr. McCoy', 'Samaritan Health', 'Internist', 'n/a', 'RMcCoy@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1314, 'Dr. Nguyen', 'Samaritan Health', 'Internist', 'n/a', 'ANguyen@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1315, 'Dr. Niehaus', 'Samaritan Health', 'Internist', 'n/a', 'KNiehaus@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1316, 'Dr. Nudelman', 'Samaritan Health', 'Internist', 'n/a', 'SNudelman@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1317, 'Dr. Reich', 'Samaritan Health', 'Internist', 'n/a', 'KReich@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1318, 'Dr. Robbins', 'Samaritan Health', 'Internist', 'n/a', 'JRobbins@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1319, 'Dr. Rueckert', 'Samaritan Health', 'Internist', 'n/a', 'ERueckert@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1320, 'Dr. Salisbury', 'Samaritan Health', 'Internist', 'n/a', 'SSalisbury@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1321, 'Dr. Salisbury', 'Samaritan Health', 'Internist', 'n/a', 'RSalisbury@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(1322, 'Dr. Schulz', 'Samaritan Health', 'Internist', 'n/a', 'TSchulz@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1323, 'Dr. Shah', 'Samaritan Health', 'Internist', 'n/a', 'SShah@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1324, 'Dr. Sheikh', 'Samaritan Health', 'Internist', 'n/a', 'MSheikh@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1325, 'Dr. Spiller', 'Samaritan Health', 'Internist', 'n/a', 'FSpiller@samhealth.org', 'Albany', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1326, 'Dr. Storniolo', 'Samaritan Health', 'Internist', 'n/a', 'CStorniolo@samhealth.org', 'Albany', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1327, 'Dr. Tran', 'Samaritan Health', 'Internist', 'n/a', 'JTran@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1328, 'Dr. Vinson', 'Samaritan Health', 'Internist', 'n/a', 'MVinson@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1329, 'Dr. Weinstein', 'Samaritan Health', 'Internist', 'n/a', 'LWeinstein@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1330, 'Dr. Weisensee', 'Samaritan Health', 'Internist', 'n/a', 'FWeisensee@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1331, 'Dr. Wright', 'Samaritan Health', 'Internist', 'n/a', 'EWright@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1332, 'Dr. Yang', 'Samaritan Health', 'Internist', 'n/a', 'AYang@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1333, 'Dr. Yousey', 'Samaritan Health', 'Internist', 'n/a', 'BYousey@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1334, 'Dr. Zanfes', 'Samaritan Health', 'Internist', 'n/a', 'ZZanfes@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1335, 'Dr. Zollinger', 'Samaritan Health', 'Internist', 'n/a', 'MZollinger@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1336, 'Dr. Curtis', 'Samaritan Health', 'Internist', 'n/a', 'BCurtis@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1337, 'Dr. Glick', 'Samaritan Health', 'Internist', 'n/a', 'EGlick@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1338, 'Dr. Lawrence', 'Samaritan Health', 'Internist', 'n/a', 'JLawrence@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1339, 'Dr. Marske', 'Samaritan Health', 'Internist', 'n/a', 'CMarske@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1340, 'Dr. McKelvey', 'Samaritan Health', 'Internist', 'n/a', 'RMcKelvey@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1341, 'Dr. Vinjamuri', 'Samaritan Health', 'Internist', 'n/a', 'VVinjamuri@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1342, 'Dr. Volk', 'Samaritan Health', 'Internist', 'n/a', 'DVolk@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1343, 'Dr. Wang', 'Samaritan Health', 'Internist', 'n/a', 'RWang@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1344, 'Dr. Weisman', 'Samaritan Health', 'Internist', 'n/a', 'KWeisman@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1345, 'Dr. Wirth', 'Samaritan Health', 'Internist', 'n/a', 'RWirth@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1346, 'Dr. Wirth', 'Samaritan Health', 'Internist', 'n/a', 'BWirth@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1347, 'Dr. Wolf', 'Samaritan Health', 'Internist', 'n/a', 'EWolf@samhealth.org', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1348, 'Dr. Abufadil', 'Kaiser', 'Internist', 'n/a', 'Samer.H.Abufadil@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1349, 'Dr. Agnetta', 'Kaiser', 'Internist', 'n/a', 'Alison.R.Agnetta@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1350, 'Dr. Ahmad', 'Kaiser', 'Internist', 'n/a', 'Usman.Ahmad@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1351, 'Dr. Ahmad', 'Kaiser', 'Internist', 'n/a', 'Mahnaz.Ahmad@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1352, 'Dr. Ahn', 'Kaiser', 'Internist', 'n/a', 'Alicia.M.Ahn@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1353, 'Dr. Alferes', 'Kaiser', 'Internist', 'n/a', 'John.Alferes@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1354, 'Dr. Amrock', 'Kaiser', 'Internist', 'n/a', 'Stephen.M.Amrock@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1355, 'Dr. An', 'Kaiser', 'Internist', 'n/a', 'Amber.R.An@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1356, 'Dr. Anasz-Kopecka', 'Kaiser', 'Internist', 'n/a', 'Beata.J.Anasz-Kopecka@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1357, 'Dr. Antonova', 'Kaiser', 'Internist', 'n/a', 'Valentina.M.Antonova@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1358, 'Dr. Arun', 'Kaiser', 'Internist', 'n/a', 'Shikha.Arun@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1359, 'Dr. Ashcraft', 'Kaiser', 'Internist', 'n/a', 'Lisa.A.Ashcraft@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1360, 'Dr. Avanesyan', 'Kaiser', 'Internist', 'n/a', 'Armine.Avanesyan@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1361, 'Dr. Bachman', 'Kaiser', 'Internist', 'n/a', 'Keith.H.Bachman@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1362, 'Dr. Bahr', 'Kaiser', 'Internist', 'n/a', 'Alison.K.Bahr@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1363, 'Dr. Bains', 'Kaiser', 'Internist', 'n/a', 'Naseem.K.Bains@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1364, 'Dr. Barton', 'Kaiser', 'Internist', 'n/a', 'Sandra.J.Barton@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1365, 'Dr. Behary', 'Kaiser', 'Internist', 'n/a', 'Patra.A.Behary@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1366, 'Dr. Beland', 'Kaiser', 'Internist', 'n/a', 'Mary.K.Beland@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1367, 'Dr. Bilbao', 'Kaiser', 'Internist', 'n/a', 'Denise.M.Bilbao@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1368, 'Dr. Blair', 'Kaiser', 'Internist', 'n/a', 'Neil.Blair@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1369, 'Dr. Block', 'Kaiser', 'Internist', 'n/a', 'Kelly.D.Block@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1370, 'Dr. Bours', 'Kaiser', 'Internist', 'n/a', 'Heidi.M.Bours@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1371, 'Dr. Boyd', 'Kaiser', 'Internist', 'n/a', 'Cheryl.J.Boyd@kp.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1372, 'Dr. Brady', 'Kaiser', 'Internist', 'n/a', 'Jennifer.N.Brady@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1373, 'Dr. Brooke', 'Kaiser', 'Internist', 'n/a', 'Kaitlin.W.Brooke@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1374, 'Dr. Carty', 'Kaiser', 'Internist', 'n/a', 'Peter.C.Carty@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1375, 'Dr. Cataxinos', 'Kaiser', 'Internist', 'n/a', 'Danielle.A.Cataxinos@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1376, 'Dr. Chandler', 'Kaiser', 'Internist', 'n/a', 'Megan.M.Chandler@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1377, 'Dr. Chen', 'Kaiser', 'Internist', 'n/a', 'John.T.Chen@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1378, 'Dr. Chen', 'Kaiser', 'Internist', 'n/a', 'Frank.Y.Chen@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1379, 'Dr. Chester', 'Kaiser', 'Internist', 'n/a', 'Catherine.A.Chester@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1380, 'Dr. Chirouze', 'Kaiser', 'Internist', 'n/a', 'Julien.Chirouze@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1381, 'Dr. Chohan', 'Kaiser', 'Internist', 'n/a', 'Aisha.N.Chohan@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1382, 'Dr. Choo', 'Kaiser', 'Internist', 'n/a', 'Christine.E.Choo@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1383, 'Dr. Chowdhury', 'Kaiser', 'Internist', 'n/a', 'Masuma.Chowdhury@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1384, 'Dr. Chung', 'Kaiser', 'Internist', 'n/a', 'Jane.Y.Chung@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1385, 'Dr. Clements', 'Kaiser', 'Internist', 'n/a', 'Christopher.M.Clements@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1386, 'Dr. Comardelle', 'Kaiser', 'Internist', 'n/a', 'Alla.M.Comardelle@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1387, 'Dr. Coplon', 'Kaiser', 'Internist', 'n/a', 'Barry.K.Coplon@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1388, 'Dr. Cutland', 'Kaiser', 'Internist', 'n/a', 'Jaime.M.Cutland@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1389, 'Dr. DaSilva', 'Kaiser', 'Internist', 'n/a', 'Brianna.A.DaSilva@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1390, 'Dr. Dacones', 'Kaiser', 'Internist', 'n/a', 'Imelda.Dacones@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1391, 'Dr. Dardis', 'Kaiser', 'Internist', 'n/a', 'Page.Y.Dardis@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1392, 'Dr. Davis', 'Kaiser', 'Internist', 'n/a', 'Jeffrey.Davis@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1393, 'Dr. Deloriea', 'Kaiser', 'Internist', 'n/a', 'Ehrine.M.Deloriea@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1394, 'Dr. Dexter', 'Kaiser', 'Internist', 'n/a', 'Robert.E.Dexter@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1395, 'Dr. Doan', 'Kaiser', 'Internist', 'n/a', 'John.C.Doan@kp.org', 'Vancouver', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1396, 'Dr. Donohoe', 'Kaiser', 'Internist', 'n/a', 'Martin.T.Donohoe@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1397, 'Dr. Doss', 'Kaiser', 'Internist', 'n/a', 'Emily.J.Doss@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1398, 'Dr. Downey', 'Kaiser', 'Internist', 'n/a', 'Valerie.A.Downey@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1399, 'Dr. Drummond', 'Kaiser', 'Internist', 'n/a', 'Jane.O.Drummond@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1400, 'Dr. Duewel', 'Kaiser', 'Internist', 'n/a', 'Helen.Duewel@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1401, 'Dr. Dunlap', 'Kaiser', 'Internist', 'n/a', 'Scott.Dunlap@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1402, 'Dr. Dunlap', 'Kaiser', 'Internist', 'n/a', 'Gerald.A.Dunlap@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1403, 'Dr. Ehrlich', 'Kaiser', 'Internist', 'n/a', 'Elizabeth.S.Ehrlich@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1404, 'Dr. Elder', 'Kaiser', 'Internist', 'n/a', 'Charles.R.Elder@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1405, 'Dr. Elliott-Mullens', 'Kaiser', 'Internist', 'n/a', 'Danette.R.Elliott-Mullens@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1406, 'Dr. Ellis', 'Kaiser', 'Internist', 'n/a', 'Katreece.M.Ellis@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1407, 'Dr. Favour', 'Kaiser', 'Internist', 'n/a', 'Kenneth.D.Favour@kp.org', 'Vancouver', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1408, 'Dr. Felcher', 'Kaiser', 'Internist', 'n/a', 'Andrew.H.Felcher@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1409, 'Dr. Foss', 'Kaiser', 'Internist', 'n/a', 'Craig.E.Foss@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1410, 'Dr. Foster', 'Kaiser', 'Internist', 'n/a', 'Kellie.R.Foster@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1411, 'Dr. Gilmartin', 'Kaiser', 'Internist', 'n/a', 'Jennifer.Gilmartin@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1412, 'Dr. George', 'Kaiser', 'Internist', 'n/a', 'Kelly.D.George@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1413, 'Dr. Gilbert', 'Kaiser', 'Internist', 'n/a', 'Jared.T.Gilbert@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1414, 'Dr. Gincherman', 'Kaiser', 'Internist', 'n/a', 'Yekaterina.Gincherman@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1415, 'Dr. Gombart', 'Kaiser', 'Internist', 'n/a', 'Zoe.J.Gombart@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1416, 'Dr. Goodwin', 'Kaiser', 'Internist', 'n/a', 'Katie.M.Goodwin@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1417, 'Dr. Goodwin', 'Kaiser', 'Internist', 'n/a', 'Richard.P.Graham@kp.org', 'Vancouver', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1418, 'Dr. Graham', 'Kaiser', 'Internist', 'n/a', 'Siobhan.H.Gray@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1419, 'Dr. Guempel', 'Kaiser', 'Internist', 'n/a', 'Ulrike.M.Guempel@kp.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1420, 'Dr. Gunderson', 'Kaiser', 'Internist', 'n/a', 'Launa.D.Gunderson@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1421, 'Dr. Guo', 'Kaiser', 'Internist', 'n/a', 'Richard.F.Guo@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1422, 'Dr. Harbison', 'Kaiser', 'Internist', 'n/a', 'Thomas.W.Harbison@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1423, 'Dr. Hayden', 'Kaiser', 'Internist', 'n/a', 'Melissa.H.Hayden@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1424, 'Dr. Hayes', 'Kaiser', 'Internist', 'n/a', 'Michael.J.Hayes@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1425, 'Dr. Hays', 'Kaiser', 'Internist', 'n/a', 'Steven.Hays@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1426, 'Dr. Hayward', 'Kaiser', 'Internist', 'n/a', 'Arthur.D.Hayward@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1427, 'Dr. Hittle', 'Kaiser', 'Internist', 'n/a', 'Gretchen.L.Hittle@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1428, 'Dr. Holmes', 'Kaiser', 'Internist', 'n/a', 'Louis.Holmes@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1429, 'Dr. Howard', 'Kaiser', 'Internist', 'n/a', 'Marion.E.Howard@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1430, 'Dr. Huebner', 'Kaiser', 'Internist', 'n/a', 'Marissa.L.Huebner@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1431, 'Dr. Hughes', 'Kaiser', 'Internist', 'n/a', 'Jon.W.Hughes@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1432, 'Dr. Hunt', 'Kaiser', 'Internist', 'n/a', 'Richard.A.Hunt@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1433, 'Dr. Injety', 'Kaiser', 'Internist', 'n/a', 'Kalpana.R.Injety@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1434, 'Dr. Jain', 'Kaiser', 'Internist', 'n/a', 'Adityanant.Jain@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1435, 'Dr. Jamshidi', 'Kaiser', 'Internist', 'n/a', 'Maryam.Jamshidi@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1436, 'Dr. Jenkins', 'Kaiser', 'Internist', 'n/a', 'Richard.Jenkins@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1437, 'Dr. Jhansale', 'Kaiser', 'Internist', 'n/a', 'sheila.jhansale@gmail.com', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1438, 'Dr. Jones', 'Kaiser', 'Internist', 'n/a', 'Sean.E.Jones@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1439, 'Dr. Jones', 'Kaiser', 'Internist', 'n/a', 'Kenrick.Jones@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1440, 'Dr. Juurma', 'Kaiser', 'Internist', 'n/a', 'Anneliis.Juurma@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1441, 'Dr. Kaplan', 'Kaiser', 'Internist', 'n/a', 'Lauren.E.Kaplan@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1442, 'Dr. Kaur', 'Kaiser', 'Internist', 'n/a', 'Jaswinder.Kaur@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1443, 'Dr. Kemper', 'Kaiser', 'Internist', 'n/a', 'Christina.A.Kemper@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1444, 'Dr. Kenny', 'Kaiser', 'Internist', 'n/a', 'Sharon.L.Kenny@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1445, 'Dr. Khanijou', 'Kaiser', 'Internist', 'n/a', 'Priti.P.Khanijou@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1446, 'Dr. Kisor', 'Kaiser', 'Internist', 'n/a', 'Kimberly.L.Kisor@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1447, 'Dr. Klykov', 'Kaiser', 'Internist', 'n/a', 'Corinne.M.Klykov@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1448, 'Dr. Kono', 'Kaiser', 'Internist', 'n/a', 'Earl.Kono@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1449, 'Dr. Kordash', 'Kaiser', 'Internist', 'n/a', 'Terry.Kordash@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1450, 'Dr. Kositch', 'Kaiser', 'Internist', 'n/a', 'Michael.Kositch@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1451, 'Dr. Kotamarti', 'Kaiser', 'Internist', 'n/a', 'Ramu.R.Kotamarti@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1452, 'Dr. Krotova', 'Kaiser', 'Internist', 'n/a', 'Evgenia.Krotova@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1453, 'Dr. Kruse', 'Kaiser', 'Internist', 'n/a', 'Karen.M.Kruse@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1454, 'Dr. Landauer', 'Kaiser', 'Internist', 'n/a', 'Kathryn.C.Landauer@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1455, 'Dr. Larsen', 'Kaiser', 'Internist', 'n/a', 'Sarah.E.Larsen@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1456, 'Dr. Law', 'Kaiser', 'Internist', 'n/a', 'Stefan.A.Law@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1457, 'Dr. Layne', 'Kaiser', 'Internist', 'n/a', 'Cheryl.A.Layne@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1458, 'Dr. Leavitt', 'Kaiser', 'Internist', 'n/a', 'Lisa.Leavitt@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1459, 'Dr. Lee', 'Kaiser', 'Internist', 'n/a', 'Derrick.O.Lee@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1460, 'Dr. Liles', 'Kaiser', 'Internist', 'n/a', 'Elizabeth.G.Liles@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1461, 'Dr. Lin', 'Kaiser', 'Internist', 'n/a', 'Jennifer.Lin@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1462, 'Dr. Logendran', 'Providence', 'Internist', 'n/a', 'Verni.Logendran@providence.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1463, 'Dr. Lohff-Phillips', 'Kaiser', 'Internist', 'n/a', 'Jessica.C.Lohff-Phillips@kp.org', 'Eugene', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1464, 'Dr. Lotspeich', 'Kaiser', 'Internist', 'n/a', 'Daniel.F.Lotspeich@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1465, 'Dr. Ludwig', 'Kaiser', 'Internist', 'n/a', 'Cora.M.Ludwig@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1466, 'Dr. Mallett', 'Kaiser', 'Internist', 'n/a', 'Sasha.D.Mallett@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1467, 'Dr. Mannion', 'Kaiser', 'Internist', 'n/a', 'Jason.P.Mannion@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1468, 'Dr. Masters', 'Kaiser', 'Internist', 'n/a', 'Kyle.M.Masters@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1469, 'Dr. Mazzotta', 'Kaiser', 'Internist', 'n/a', 'Michael.G.Mazzotta@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1470, 'Dr. McCallum', 'Kaiser', 'Internist', 'n/a', 'Michele.McCallum@kp.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1471, 'Dr. McCallum', 'Kaiser', 'Internist', 'n/a', 'Carmen.McCallum@kp.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1472, 'Dr. McGehee-Kelly', 'Kaiser', 'Internist', 'n/a', 'Margo.A.McGehee-Kelly@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1473, 'Dr. McGuire', 'Kaiser', 'Internist', 'n/a', 'John.T.McGuire@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1474, 'Dr. McKay', 'Kaiser', 'Internist', 'n/a', 'Cecilia.S.McKay@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1475, 'Dr. Mejia', 'Kaiser', 'Internist', 'n/a', 'Carmelo.Mejia@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1476, 'Dr. Melrose', 'Kaiser', 'Internist', 'n/a', 'Natalie.A.Melrose@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1477, 'Dr. Mills', 'Kaiser', 'Internist', 'n/a', 'Jeremy.T.Mills@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1478, 'Dr. Mishler', 'Kaiser', 'Internist', 'n/a', 'Richard.M.Mishler@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1479, 'Dr. Motonaga', 'Kaiser', 'Internist', 'n/a', 'Heather.M.Motonaga@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1480, 'Dr. Muchnik', 'Kaiser', 'Internist', 'n/a', 'Anna.A.Muchnik@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1481, 'Dr. Mularski', 'Kaiser', 'Internist', 'n/a', 'Karen.S.Mularski@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1482, 'Dr. Myint', 'Kaiser', 'Internist', 'n/a', 'Maung.W.Myint@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1483, 'Dr. Nakai', 'Kaiser', 'Internist', 'n/a', 'Hitomi.Nakai@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1484, 'Dr. Neville', 'Kaiser', 'Internist', 'n/a', 'Malina.O.Neville@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1485, 'Dr. Oh', 'Kaiser', 'Internist', 'n/a', 'Albert.S.Oh@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1486, 'Dr. Ostermeyer', 'Kaiser', 'Internist', 'n/a', 'Claudia.D.Ostermeyer@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1487, 'Dr. Padilla', 'Kaiser', 'Internist', 'n/a', 'Mario.A.Padilla@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1488, 'Dr. Patel', 'Kaiser', 'Internist', 'n/a', 'Jessica.B.Patel@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1489, 'Dr. Patel', 'Kaiser', 'Internist', 'n/a', 'Bhavesh.K.Patel@kp.org', 'Vancouver', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1490, 'Dr. Pearson', 'Kaiser', 'Internist', 'n/a', 'Kyle.Pearson@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1491, 'Dr. Pedapati', 'Kaiser', 'Internist', 'n/a', 'Sashi.Pedapati@kp.org', 'Vancouver', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1492, 'Dr. Peter', 'Kaiser', 'Internist', 'n/a', 'Anna.P.Peter@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1493, 'Dr. Phillips', 'Kaiser', 'Internist', 'n/a', 'Jason.L.Phillips@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1494, 'Dr. Pompilio', 'Kaiser', 'Internist', 'n/a', 'Jenny.E.Pompilio@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1495, 'Dr. Potla', 'Kaiser', 'Internist', 'n/a', 'Madhu.M.Potla@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1496, 'Dr. Powell', 'Kaiser', 'Internist', 'n/a', 'Lisa.Powell@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1497, 'Dr. Prakash', 'Kaiser', 'Internist', 'n/a', 'Kesavan.Prakash@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1498, 'Dr. Probst', 'Kaiser', 'Internist', 'n/a', 'Kelly.A.Probst@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1499, 'Dr. Quintero', 'Kaiser', 'Internist', 'n/a', 'Mauricio.Quintero@kp.org', 'Vancouver', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1500, 'Dr. Rad', 'Kaiser', 'Internist', 'n/a', 'Hanieh.J.Rad@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1501, 'Dr. Kawahara', 'Kaiser', 'Internist', 'n/a', 'Cara.L.Kawahara@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1502, 'Dr. Kennedy', 'Kaiser', 'Internist', 'n/a', 'Rebecca.H.Kennedy@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1503, 'Dr. Kim', 'Kaiser', 'Internist', 'n/a', 'Monica.J.Kim@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1504, 'Dr. King-Widdall', 'Kaiser', 'Internist', 'n/a', 'Caroline.L.King-Widdall@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1505, 'Dr. Kipp', 'Kaiser', 'Internist', 'n/a', 'Alex.J.Kipp@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1506, 'Dr. Klaus', 'Kaiser', 'Internist', 'n/a', 'Lorissa.E.Klaus@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1507, 'Dr. Knudsen', 'Kaiser', 'Internist', 'n/a', 'Lara.M.Knudsen@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1508, 'Dr. Koh', 'Kaiser', 'Internist', 'n/a', 'Wui-Leong.Koh@kp.org', 'Portland', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1509, 'Dr. Lake', 'Kaiser', 'Internist', 'n/a', 'Marcy.G.Lake@kp.org', 'Beaverton', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1510, 'Dr. Laughlin', 'Kaiser', 'Internist', 'n/a', 'Kathleen.M.Laughlin@kp.org', 'Tualatin', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1511, 'Dr. Lee', 'Kaiser', 'Internist', 'n/a', 'Amelia.L.Lee@kp.org', 'Clackamas', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1512, 'Dr. Kishel', 'Kaiser', 'Internist', 'n/a', 'Brittany.N.Kishel@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1513, 'Dr. Sanchez-Goettler', 'Kaiser', 'Internist', 'n/a', 'Leslie.A.Sanchez-Goettler@kp.org', 'Hillsboro', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(1514, 'Dr. Witkin', 'Kaiser', 'Internist', 'n/a', 'David.B.Witkin@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1515, 'Dr. Wilson', 'Kaiser', 'Internist', 'n/a', 'Jennifer.M.Wilson@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1516, 'Dr. Wondyrad', 'Kaiser', 'Internist', 'n/a', 'Seblewongel.S.Wondyrad@kp.org', 'Salem', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1517, 'Dr. Lawrence', 'Corvallis Clinic', 'Internist', 'n/a', 'Janel.Lawrence@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1518, 'Dr. Glick', 'Corvallis Clinic', 'Internist', 'n/a', 'Emily.Glick@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1519, 'Dr. McKelvey', 'Corvallis Clinic', 'Internist', 'n/a', 'Robin.McKelvey@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1520, 'Dr. Wang', 'Corvallis Clinic', 'Internist', 'n/a', 'Rong.Wang@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1521, 'Dr. Wirth', 'Corvallis Clinic', 'Internist', 'n/a', 'Robert.Wirth@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1522, 'Dr. Wirth', 'Corvallis Clinic', 'Internist', 'n/a', 'Rob.Wirth@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1523, 'Dr. Wolf', 'Corvallis Clinic', 'Internist', 'n/a', 'Edward.Wolf@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1524, 'Dr. Wolf', 'Corvallis Clinic', 'Internist', 'n/a', 'Ed.Wolf@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1525, 'Dr. Wolf', 'Corvallis Clinic', 'Internist', 'n/a', 'EdDIE.Wolf@corvallisclinic.com', 'Corvallis', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1526, 'Dr. Bhoir', 'Salem Health', 'Internist', 'n/a', 'Rohan.Bhoir@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1527, 'Dr. Bilstrom', 'Salem Health', 'Internist', 'n/a', 'Evan.Bilstrom@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1528, 'Dr. Blair', 'Salem Health', 'Internist', 'n/a', 'David.Blair@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1529, 'Dr. Boyd', 'Salem Health', 'Internist', 'n/a', 'Cheryl.Boyd@salemhealth.org', 'Eugene ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1530, 'Dr. Brown', 'Salem Health', 'Internist', 'n/a', 'Jeffery.Brown@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1531, 'Dr. Brown', 'Salem Health', 'Internist', 'n/a', 'Jeff.Brown@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1532, 'Dr. Burgin', 'Salem Health', 'Internist', 'n/a', 'Heather.Burgin@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1533, 'Dr. Cataxinos', 'Salem Health', 'Internist', 'n/a', 'Danielle.Cataxinos@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1534, 'Dr. Chelladurai', 'Salem Health', 'Internist', 'n/a', 'Yohalakshmi.Chelladurai@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1535, 'Dr. Chen', 'Salem Health', 'Internist', 'n/a', 'Jeffrey.Chen@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1536, 'Dr. Chen', 'Salem Health', 'Internist', 'n/a', 'Jeff.Chen@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1537, 'Dr. Adams', 'Salem Health', 'Internist', 'n/a', 'Lisa.Adams@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1538, 'Dr. Alexander', 'Salem Health', 'Internist', 'n/a', 'Gloria.Alexander@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1539, 'Dr. Avanesyan', 'Salem Health', 'Internist', 'n/a', 'Armine.Avanesyan@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1540, 'Dr. Beiswenger', 'Salem Health', 'Internist', 'n/a', 'Scott.Beiswenger@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1541, 'Dr. Kishel', 'Salem Health', 'Internist', 'n/a', 'Brittany.Kishel@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1542, 'Dr. Khuu', 'Salem Health', 'Internist', 'n/a', 'Thong.Khuu@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1543, 'Dr. Kotadia', 'Salem Health', 'Internist', 'n/a', 'Pooja.Kotadia@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1544, 'Dr. Kurup', 'Salem Health', 'Internist', 'n/a', 'Sandra.Kurup@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1545, 'Dr. Lackides', 'Salem Health', 'Internist', 'n/a', 'Gregory.Lackides@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1546, 'Dr. Lackides', 'Salem Health', 'Internist', 'n/a', 'Greg.Lackides@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1547, 'Dr. Layas', 'Salem Health', 'Internist', 'n/a', 'Mohammed.Layas@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1548, 'Dr. Loa', 'Salem Health', 'Internist', 'n/a', 'Dinah.Loa@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1549, 'Dr. Loa', 'Salem Health', 'Internist', 'n/a', 'Jefferson.Loa@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1550, 'Dr. Mapa', 'Salem Health', 'Internist', 'n/a', 'Christopher.Mapa@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1551, 'Dr. Meeker', 'Salem Health', 'Internist', 'n/a', 'Huey.Meeker@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1552, 'Dr. Melrose', 'Salem Health', 'Internist', 'n/a', 'Natalie.Melrose@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1553, 'Dr. Mevar', 'Salem Health', 'Internist', 'n/a', 'Urvi.Mevar@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1554, 'Dr. Miller', 'Salem Health', 'Internist', 'n/a', 'Debbie.Miller@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1555, 'Dr. Mirza', 'Salem Health', 'Internist', 'n/a', 'Danish.Mirza@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1556, 'Dr. Moley', 'Salem Health', 'Internist', 'n/a', 'John.Moley@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1557, 'Dr. Moore', 'Salem Health', 'Internist', 'n/a', 'Trang.Moore@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1558, 'Dr. Naik', 'Salem Health', 'Internist', 'n/a', 'Neha.Naik@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1559, 'Dr. Praneet-Nanduri', 'Salem Health', 'Internist', 'n/a', 'Venkata.Praneet-Nanduri@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1560, 'Dr. Praneet-Nanduri', 'Salem Health', 'Internist', 'n/a', 'Venkata.PraneetNanduri@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1561, 'Dr. Praneet', 'Salem Health', 'Internist', 'n/a', 'Venkata.Praneet@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1562, 'Dr. Nanduri', 'Salem Health', 'Internist', 'n/a', 'Venkata.Nanduri@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1563, 'Dr. O\'Brien', 'Salem Health', 'Internist', 'n/a', 'Claire.O\'Brien@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1564, 'Dr. O\'Brien', 'Salem Health', 'Internist', 'n/a', 'Claire.OBrien@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1565, 'Dr. Brien', 'Salem Health', 'Internist', 'n/a', 'Claire.Brien@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1566, 'Dr. Oh', 'Salem Health', 'Internist', 'n/a', 'Eliza.Oh@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1567, 'Dr. Pearson', 'Salem Health', 'Internist', 'n/a', 'Kyle.Pearson@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1568, 'Dr. Phoofolo', 'Salem Health', 'Internist', 'n/a', 'Mojabeng.Phoofolo@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1569, 'Dr. Porter', 'Salem Health', 'Internist', 'n/a', 'Lori.Porter@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:25', '2020-08-18 02:38:25', NULL, NULL, NULL, NULL, NULL, NULL),
(1570, 'Dr. Rafiq', 'Salem Health', 'Internist', 'n/a', 'Amil.Rafiq@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1571, 'Dr. Ragade', 'Salem Health', 'Internist', 'n/a', 'Namrata.Ragade@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1572, 'Dr. Sadasivan', 'Salem Health', 'Internist', 'n/a', 'Sheethu.Sadasivan@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1573, 'Dr. Sanchez-Goettler', 'Salem Health', 'Internist', 'n/a', 'Leslie.Sanchez-Goettler@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1574, 'Dr. Segal', 'Salem Health', 'Internist', 'n/a', 'Richard.Segal@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1575, 'Dr. Shabani-Ardali', 'Salem Health', 'Internist', 'n/a', 'Alireza.Shabani-Ardali@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1576, 'Dr. Shabani-Ardali', 'Salem Health', 'Internist', 'n/a', 'Alireza.ShabaniArdali@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1577, 'Dr. Shabani', 'Salem Health', 'Internist', 'n/a', 'Alireza.Shabani@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1578, 'Dr. Ardali', 'Salem Health', 'Internist', 'n/a', 'Alireza.Ardali@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1579, 'Dr. Shi', 'Salem Health', 'Internist', 'n/a', 'Tom.Shi@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1580, 'Dr. Sunday', 'Salem Health', 'Internist', 'n/a', 'Marc.Sunday@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1581, 'Dr. Tate', 'Salem Health', 'Internist', 'n/a', 'David.Tate@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1582, 'Dr. Tauqir', 'Salem Health', 'Internist', 'n/a', 'Mohammad.Tauqir@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1583, 'Dr. Chisti', 'Salem Health', 'Internist', 'n/a', 'Mudasir.Chisti@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1584, 'Dr. Davies', 'Salem Health', 'Internist', 'n/a', 'Robert.Davies@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1585, 'Dr. Khan', 'Salem Health', 'Internist', 'n/a', 'Omer.Khan@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1586, 'Dr. Davis', 'Salem Health', 'Internist', 'n/a', 'Jeffrey.Davis@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1587, 'Dr. Deo', 'Salem Health', 'Internist', 'n/a', 'Aneet.Deo@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1588, 'Dr. Devaux', 'Salem Health', 'Internist', 'n/a', 'Christian.Devaux@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1589, 'Dr. Di Francisco', 'Salem Health', 'Internist', 'n/a', 'Miguel.DiFrancisco@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1590, 'Dr. Francisco', 'Salem Health', 'Internist', 'n/a', 'Miguel.Francisco@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1591, 'Dr. English', 'Salem Health', 'Internist', 'n/a', 'Kalyn.English@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1592, 'Dr. Fedor', 'Salem Health', 'Internist', 'n/a', 'Elana.Fedor@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1593, 'Dr. Fischl', 'Salem Health', 'Internist', 'n/a', 'Mark.Fischl@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1594, 'Dr. Foss', 'Salem Health', 'Internist', 'n/a', 'Craig.Foss@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1595, 'Dr. Fuke', 'Salem Health', 'Internist', 'n/a', 'Yasutake.Fuke@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1596, 'Dr. Ganeshalingam', 'Salem Health', 'Internist', 'n/a', 'Myint.Ganeshalingam@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1597, 'Dr. Gegen', 'Salem Health', 'Internist', 'n/a', 'Tana.Gegen@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1598, 'Dr. Gilbert', 'Salem Health', 'Internist', 'n/a', 'Jared.Gilbert@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1599, 'Dr. Gill', 'Salem Health', 'Internist', 'n/a', 'Ahmad.Gill@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1600, 'Dr. Gillespie', 'Salem Health', 'Internist', 'n/a', 'William.Gillespie@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1601, 'Dr. Guo', 'Salem Health', 'Internist', 'n/a', 'Richard.Guo@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1602, 'Dr. Harder', 'Salem Health', 'Internist', 'n/a', 'Kathleen.Harder@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1603, 'Dr. Harmon', 'Salem Health', 'Internist', 'n/a', 'Harold.Harmon@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1604, 'Dr. Harvey', 'Salem Health', 'Internist', 'n/a', 'Harmon.Harvey@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1605, 'Dr. Hidden', 'Salem Health', 'Internist', 'n/a', 'Skye.Hidden@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1606, 'Dr. Hughes', 'Salem Health', 'Internist', 'n/a', 'Jon.Hughes@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1607, 'Dr. Huun', 'Salem Health', 'Internist', 'n/a', 'Paul.Huun@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1608, 'Dr. Jamil', 'Salem Health', 'Internist', 'n/a', 'Fahad.Jamil@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1609, 'Dr. Jhansale', 'Salem Health', 'Internist', 'n/a', 'Sheila.Jhansale@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1610, 'Dr. Mendez', 'Salem Health', 'Internist', 'n/a', 'Patricia.Mendez@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1611, 'Dr. Kao', 'Salem Health', 'Internist', 'n/a', 'Grace.Kao@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1612, 'Dr. Kaur', 'Salem Health', 'Internist', 'n/a', 'Jaswinder.Kaur@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1613, 'Dr. Witkin', 'Salem Health', 'Internist', 'n/a', 'David.Witkin@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1614, 'Dr. Wilson', 'Salem Health', 'Internist', 'n/a', 'Dina.Wilson@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1615, 'Dr. Whitney', 'Salem Health', 'Internist', 'n/a', 'Annette.Whitney@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1616, 'Dr. Whitaker', 'Salem Health', 'Internist', 'n/a', 'Jonathan.Whitaker@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1617, 'Dr. Westermeyer', 'Salem Health', 'Internist', 'n/a', 'Raymond.Westermeyer@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1618, 'Dr. Webber', 'Salem Health', 'Internist', 'n/a', 'Sarah.Webber@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1619, 'Dr. Wang', 'Salem Health', 'Internist', 'n/a', 'Jeffrey.Wang@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1620, 'Dr. Villardo', 'Salem Health', 'Internist', 'n/a', 'Christine.Villardo@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1621, 'Dr. Velivela', 'Salem Health', 'Internist', 'n/a', 'Sarat.Velivela@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1622, 'Dr. Valino', 'Salem Health', 'Internist', 'n/a', 'Cherry.Valino@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1623, 'Dr. Tumanik', 'Salem Health', 'Internist', 'n/a', 'Maria.Tumanik@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1624, 'Dr. Tran', 'Salem Health', 'Internist', 'n/a', 'Drissana.Tran@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1625, 'Dr. Zheng', 'Salem Health', 'Internist', 'n/a', 'Xi.Zheng@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1626, 'Dr. Zaidi', 'Salem Health', 'Internist', 'n/a', 'Syed.Zaidi@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1627, 'Dr. Yefremova', 'Salem Health', 'Internist', 'n/a', 'Tatyana.Yefremova@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1628, 'Dr. Yamoah', 'Salem Health', 'Internist', 'n/a', 'Johnny.Yamoah@salemhealth.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1629, 'Dr. Nanduri', 'Salem Clinic', 'Internist', 'n/a', 'Praneet.Nanduri@salemclinic.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1630, 'Dr. Lackides', 'Salem Clinic', 'Internist', 'n/a', 'Gregory.Lackides@salemclinic.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1631, 'Dr. Huun', 'Salem Clinic', 'Internist', 'n/a', 'Paul.Huun@salemclinic.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1632, 'Dr. Gillespie', 'Salem Clinic', 'Internist', 'n/a', 'Gordon.Gillespie@salemclinic.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1633, 'Dr. Fischl', 'Salem Clinic', 'Internist', 'n/a', 'Mark.Fischl@salemclinic.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1634, 'Dr. Carp', 'Salem Clinic', 'Internist', 'n/a', 'Stephen.Carp@salemclinic.org', 'Salem ', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1635, 'Dr. Li', 'Pacific Medical Group', 'Internist', 'n/a', 'KLi@pacificmedicalgroup.com', 'Oregon City', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1636, 'Dr. Yamase', 'Pacific Medical Group', 'Internist', 'n/a', 'MYamase@pacificmedicalgroup.com', 'Canby', 'OR', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & Healthcare', '', '', '', '2020-08-18 02:38:26', '2020-08-18 02:38:26', NULL, NULL, NULL, NULL, NULL, NULL),
(1637, 'Dr. Lew', 'Adventist Health', 'Geriatrician', 'N/A', 'Edmund.Lew@ah.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', 1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-25 00:52:41', NULL, NULL, NULL, NULL, NULL, NULL),
(1638, 'Dr. Bui', 'Adventist Health', 'Geriatrician', 'N/A', 'Duc.Bui@ah.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1639, 'Dr. Filart', 'Adventist Health', 'Geriatrician', 'N/A', 'Marcel.Filart@ah.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1640, 'Dr. Perez', 'Adventist Health', 'Geriatrician', 'N/A', 'Emelia.Perez@ah.org', 'Simi Valley', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1641, 'Dr. Dhawan', 'Adventist Health', 'Geriatrician', 'N/A', 'Vijay.Dhawan@ah.org', 'Montebello', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1642, 'Dr. Esmail', 'Adventist Health', 'Geriatrician', 'N/A', 'Zahra.Esmail@ah.org', 'Torrance', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1643, 'Dr. Saran', 'Adventist Health', 'Geriatrician', 'N/A', 'Ferdinant.Saran@ah.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1644, 'Dr. Drummond', 'Adventist Health', 'Geriatrician', 'N/A', 'Harry.Drummond@ah.org', 'Simi Valley', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1645, 'Dr. Yu', 'Adventist Health', 'Geriatrician', 'N/A', 'Jack.Yu@ah.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1646, 'Dr. Cunningham', 'Adventist Health', 'Geriatrician', 'N/A', 'Janet.Cunningham@ah.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1647, 'Dr. Chan', 'Adventist Health', 'Geriatrician', 'N/A', 'Andrew.Chan@ah.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1648, 'Dr. Liu', 'AHMC', 'Geriatrician', 'N/A', 'Paul.Liu@ahmchealth.com', 'San Marino', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1649, 'Dr. Chien', 'AHMC', 'Geriatrician', 'N/A', 'Oscar.Chien@ahmchealth.com', 'San Gabriel', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1650, 'Dr. Tran', 'AHMC', 'Geriatrician', 'N/A', 'Dan.Tran@ahmchealth.com', 'Rosemead', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1651, 'Dr. Tran', 'Garvey Medical Center', 'Geriatrician', 'N/A', 'dmingtran@aol.com', 'Rosemead', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1652, 'Dr. Chien', 'Alhambra Hospital', 'Geriatrician', 'N/A', 'OChien@alhambrahospital.com', 'San Gabriel', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1653, 'Dr. Rosen', 'Cedars Sinai', 'Geriatrician', 'N/A', 'Sonja.Rosen@cshs.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1654, 'Dr. Mays', 'Cedars Sinai', 'Geriatrician', 'N/A', 'Allison.Mays@cshs.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1655, 'Dr. Whiteman', 'Cedars Sinai', 'Geriatrician', 'N/A', 'Elizabeth.Whiteman@cshs.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1656, 'Dr. Whiteman', 'Cedars Sinai', 'Geriatrician', 'N/A', 'beth.Whiteman@cshs.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1657, 'Dr. Whiteman', 'Cedars Sinai', 'Geriatrician', 'N/A', 'liz.Whiteman@cshs.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1658, 'Dr. Lock', 'Emanate Health', 'Geriatrician', 'N/A', 'DLock@emanatehealth.org', 'La Verne', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1659, 'Dr. Zaveri', 'Emanate Health', 'Geriatrician', 'N/A', 'Mohammed.Zaveri@emanatehealth.org', 'West Covina', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1660, 'Dr. Philipp', 'Dignity Health', 'Geriatrician', 'N/A', 'Ronald.Philipp@dignityhealth.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1661, 'Dr. Khan-Hudson', 'Dignity Health', 'Geriatrician', 'N/A', 'Alia.Khan-Hudson@dignityhealth.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1662, 'Dr. Khan-Hudson', 'Dignity Health', 'Geriatrician', 'N/A', 'Alia.KhanHudson@dignityhealth.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1663, 'Dr. Khan', 'Dignity Health', 'Geriatrician', 'N/A', 'Alia.Khan@dignityhealth.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1664, 'Dr. Hudson', 'Dignity Health', 'Geriatrician', 'N/A', 'Alia.Hudson@dignityhealth.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1665, 'Dr. Benowitz', 'Dignity Health', 'Geriatrician', 'N/A', 'Irvin.Benowitz@dignityhealth.org', 'Burbank', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1666, 'Dr. Saran', 'Dignity Health', 'Geriatrician', 'N/A', 'Ferdinant.Saran@dignityhealth.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1667, 'Dr. Rouzroch', 'Dignity Health', 'Geriatrician', 'N/A', 'Siamak.Rouzroch@dignityhealth.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1668, 'Dr. Lew', 'Dignity Health', 'Geriatrician', 'N/A', 'Edmund.Lew@dignityhealth.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1669, 'Dr. Doan', 'Dignity Health', 'Geriatrician', 'N/A', 'Steve.Doan@dignityhealth.org', 'Fontana', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1670, 'Dr. Gorbaty', 'Dignity Health', 'Geriatrician', 'N/A', 'Isaac.Gorbaty@dignityhealth.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1671, 'Dr. Allan', 'Dignity Health', 'Geriatrician', 'N/A', 'Jeffrey.Allan@dignityhealth.org', 'Camarillo', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1672, 'Dr. Allan', 'Dignity Health', 'Geriatrician', 'N/A', 'Jeff.Allan@dignityhealth.org', 'Camarillo', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1673, 'Dr. Magro', 'Dignity Health', 'Geriatrician', 'N/A', 'Joseph.Magro@dignityhealth.org', 'San Bernardino', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1674, 'Dr. Magro', 'Dignity Health', 'Geriatrician', 'N/A', 'JoE.Magro@dignityhealth.org', 'San Bernardino', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1675, 'Dr. Falcon', 'Dignity Health', 'Geriatrician', 'N/A', 'Edgardo.Falcon@dignityhealth.org', 'Oxnard', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1676, 'Dr. Liu', 'Good Samaritan Hospital', 'Geriatrician', 'N/A', 'JLiu@goodsam.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1677, 'Dr. Filart', 'Huntington Hospital', 'Geriatrician', 'N/A', 'Marcel.Filart@huntingtonhospital.com', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1678, 'Dr. Simpson', 'Huntington Hospital', 'Geriatrician', 'N/A', 'Russell.Simpson@huntingtonhospital.com', 'Pasadena', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1679, 'Dr. Liu', 'Huntington Hospital', 'Geriatrician', 'N/A', 'Paul.Liu@huntingtonhospital.com', 'San Marino', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1680, 'Dr. Chien', 'Huntington Hospital', 'Geriatrician', 'N/A', 'Norman.Chien@huntingtonhospital.com', 'Pasadena', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1681, 'Dr. Rojas', 'Huntington Hospital', 'Geriatrician', 'N/A', 'Arbis.Rojas@huntingtonhospital.com', 'Pasadena', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1682, 'Dr. Abdelhadi', 'Kaiser', 'Geriatrician', 'N/A', 'Jane.A.Abdelhadi@kp.org', 'Tustin', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1683, 'Dr. Abramson', 'Kaiser', 'Geriatrician', 'N/A', 'Mark.D.Abramson@kp.org', 'Tustin', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1684, 'Dr. Ahn', 'Kaiser', 'Geriatrician', 'N/A', 'Kent.E.Ahn@kp.org', 'Tustin', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1685, 'Dr. Alix', 'Kaiser', 'Geriatrician', 'N/A', 'Patrick.J.Alix@kp.org', 'Riverside', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1686, 'Dr. Amin', 'Kaiser', 'Geriatrician', 'N/A', 'Vishar.H.Amin@kp.org', 'La Mesa', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1687, 'Dr. Arambulo', 'Kaiser', 'Geriatrician', 'N/A', 'Celestine.J.Arambulo@kp.org', 'San Diego', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1688, 'Dr. Bertiz', 'Kaiser', 'Geriatrician', 'N/A', 'Augusto.C.Bertiz@kp.org', 'Bakersfield', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1689, 'Dr. Birnbaum', 'Kaiser', 'Geriatrician', 'N/A', 'Gary.J.Birnbaum@kp.org', 'San Diego', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1690, 'Dr. Braun', 'Kaiser', 'Geriatrician', 'N/A', 'William.W.Braun@kp.org', 'Downey', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1691, 'Dr. Bresler', 'Kaiser', 'Geriatrician', 'N/A', 'Marc.S.Bresler@kp.org', 'Woodland Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1692, 'Dr. Browne', 'Kaiser', 'Geriatrician', 'N/A', 'Tarah.B.Browne@kp.org', 'Harbor City', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1693, 'Dr. Carrol', 'Kaiser', 'Geriatrician', 'N/A', 'Jarrod.A.Carrol@kp.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1694, 'Dr. Chand', 'Kaiser', 'Geriatrician', 'N/A', 'Pushkar.Chand@kp.org', 'Baldwin Park', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1695, 'Dr. Chang', 'Kaiser', 'Geriatrician', 'N/A', 'David.C.Chang@kp.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1696, 'Dr. Chen', 'Kaiser', 'Geriatrician', 'N/A', 'John.S.Chen@kp.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1697, 'Dr. Chen', 'Kaiser', 'Geriatrician', 'N/A', 'Ted.S.Chen@kp.org', 'Fontana', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(1698, 'Dr. Chen', 'Kaiser', 'Geriatrician', 'N/A', 'Michael.P.Chen@kp.org', 'Fontana', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1699, 'Dr. Cheng', 'Kaiser', 'Geriatrician', 'N/A', 'Ling.L.Cheng@kp.org', 'Harbor City', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1700, 'Dr. Juste', 'Methodist Hospital', 'Geriatrician', 'N/A', 'Franck.Juste@methodisthospital.org', 'Duarte', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1701, 'Dr. Mutter', 'Providence', 'Geriatrician', 'N/A', 'Bruce.Mutter@providence.org', 'Brea', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1702, 'Dr. Ivanova', 'Providence', 'Geriatrician', 'N/A', 'Ana.Ivanova@providence.org', 'Yorba Linda', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1703, 'Dr. Councelbaum', 'Providence', 'Geriatrician', 'N/A', 'Nancy.Councelbaum@providence.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1704, 'Dr. Hasratyan', 'Providence', 'Geriatrician', 'N/A', 'Anush.Hasratyan@providence.org', 'Canyon Country', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1705, 'Dr. Asif', 'Providence', 'Geriatrician', 'N/A', 'Fouzia.Asif@providence.org', 'Tustin', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1706, 'Dr. Rhodes', 'Providence', 'Geriatrician', 'N/A', 'David.Rhodes@providence.org', 'Diamond Bar', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1707, 'Dr. El-Zayat', 'Providence', 'Geriatrician', 'N/A', 'Said.El-Zayat@providence.org', 'Garden Grove', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1708, 'Dr. El-Zayat', 'Providence', 'Geriatrician', 'N/A', 'Said.ElZayat@providence.org', 'Garden Grove', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1709, 'Dr. Zayat', 'Providence', 'Geriatrician', 'N/A', 'Said.Zayat@providence.org', 'Garden Grove', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1710, 'Dr. Kapoor', 'Providence', 'Geriatrician', 'N/A', 'Sandeep.Kapoor@providence.org', 'Studio City', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1711, 'Dr. Tomioka', 'Providence', 'Geriatrician', 'N/A', 'Mercedes.Tomioka@providence.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1712, 'Dr. Lawrence', 'Providence', 'Geriatrician', 'N/A', 'Nicole.Lawrence@providence.org', 'Torrance', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1713, 'Dr. Shune', 'Providence', 'Geriatrician', 'N/A', 'Hong.Shune@providence.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1714, 'Dr. Leitner', 'Providence', 'Geriatrician', 'N/A', 'Paul.Leitner@providence.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1715, 'Dr. Gorlick', 'Providence', 'Geriatrician', 'N/A', 'Laurence.Gorlick@providence.org', 'Rolling Hills Estates', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1716, 'Dr. Benowitz', 'Providence', 'Geriatrician', 'N/A', 'Irvin.Benowitz@providence.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1717, 'Dr. LaGrelius', 'Providence', 'Geriatrician', 'N/A', 'Thomas.LaGrelius@providence.org', 'Torrance', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1718, 'Dr. Harward', 'Providence', 'Geriatrician', 'N/A', 'Mary.Harward@providence.org', 'Orange', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1719, 'Dr. Michail', 'Providence', 'Geriatrician', 'N/A', 'James.Michail@providence.org', 'Panorama City', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1720, 'Dr. Hekmati', 'Providence', 'Geriatrician', 'N/A', 'Arman.Hekmati@providence.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1721, 'Dr. Kaiser', 'Providence', 'Geriatrician', 'N/A', 'Scott.Kaiser@providence.org', 'Santa Monica,', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1722, 'Dr. Chan', 'Providence', 'Geriatrician', 'N/A', 'Raymond.Chan@providence.org', 'Huntington Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1723, 'Dr. Clark', 'Providence', 'Geriatrician', 'N/A', 'Nermine.Clark@providence.org', 'Laguna Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1724, 'Dr. Chan', 'Providence', 'Geriatrician', 'N/A', 'Ray.Chan@providence.org', 'Huntington Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1725, 'Dr. Teymoorian', 'Providence', 'Geriatrician', 'N/A', 'Sarah.Teymoorian@providence.org', 'Laguna Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1726, 'Dr. Mutter', 'St. Joseph', 'Geriatrician', 'N/A', 'Bruce.Mutter@stjoe.org', 'Brea', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1727, 'Dr. Ivanova', 'St. Joseph', 'Geriatrician', 'N/A', 'Ana.Ivanova@stjoe.org', 'Yorba Linda', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1728, 'Dr. Councelbaum', 'St. Joseph', 'Geriatrician', 'N/A', 'Nancy.Councelbaum@stjoe.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1729, 'Dr. Hasratyan', 'St. Joseph', 'Geriatrician', 'N/A', 'Anush.Hasratyan@stjoe.org', 'Canyon Country', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1730, 'Dr. Asif', 'St. Joseph', 'Geriatrician', 'N/A', 'Fouzia.Asif@stjoe.org', 'Tustin', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1731, 'Dr. Rhodes', 'St. Joseph', 'Geriatrician', 'N/A', 'David.Rhodes@stjoe.org', 'Diamond Bar', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1732, 'Dr. El-Zayat', 'St. Joseph', 'Geriatrician', 'N/A', 'Said.El-Zayat@stjoe.org', 'Garden Grove', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1733, 'Dr. El-Zayat', 'St. Joseph', 'Geriatrician', 'N/A', 'Said.ElZayat@stjoe.org', 'Garden Grove', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1734, 'Dr. Zayat', 'St. Joseph', 'Geriatrician', 'N/A', 'Said.Zayat@stjoe.org', 'Garden Grove', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1735, 'Dr. Kapoor', 'St. Joseph', 'Geriatrician', 'N/A', 'Sandeep.Kapoor@stjoe.org', 'Studio City', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1736, 'Dr. Tomioka', 'St. Joseph', 'Geriatrician', 'N/A', 'Mercedes.Tomioka@stjoe.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1737, 'Dr. Lawrence', 'St. Joseph', 'Geriatrician', 'N/A', 'Nicole.Lawrence@stjoe.org', 'Torrance', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1738, 'Dr. Shune', 'St. Joseph', 'Geriatrician', 'N/A', 'Hong.Shune@stjoe.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1739, 'Dr. Leitner', 'St. Joseph', 'Geriatrician', 'N/A', 'Paul.Leitner@stjoe.org', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1740, 'Dr. Gorlick', 'St. Joseph', 'Geriatrician', 'N/A', 'Laurence.Gorlick@stjoe.org', 'Rolling Hills Estates', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1741, 'Dr. Benowitz', 'St. Joseph', 'Geriatrician', 'N/A', 'Irvin.Benowitz@stjoe.org', 'Glendale', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1742, 'Dr. LaGrelius', 'St. Joseph', 'Geriatrician', 'N/A', 'Thomas.LaGrelius@stjoe.org', 'Torrance', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1743, 'Dr. Harward', 'St. Joseph', 'Geriatrician', 'N/A', 'Mary.Harward@stjoe.org', 'Orange', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1744, 'Dr. Michail', 'St. Joseph', 'Geriatrician', 'N/A', 'James.Michail@stjoe.org', 'Panorama City', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1745, 'Dr. Hekmati', 'St. Joseph', 'Geriatrician', 'N/A', 'Arman.Hekmati@stjoe.org', 'Beverly Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1746, 'Dr. Kaiser', 'St. Joseph', 'Geriatrician', 'N/A', 'Scott.Kaiser@stjoe.org', 'Santa Monica,', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1747, 'Dr. Chan', 'St. Joseph', 'Geriatrician', 'N/A', 'Raymond.Chan@stjoe.org', 'Huntington Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1748, 'Dr. Chan', 'St. Joseph', 'Geriatrician', 'N/A', 'Ray.Chan@stjoe.org', 'Huntington Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1749, 'Dr. Charette', 'UCLA', 'Geriatrician', 'N/A', 'scharette@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1750, 'Dr. Cook', 'UCLA', 'Geriatrician', 'N/A', 'ECook@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1751, 'Dr. Yeh', 'UCLA', 'Geriatrician', 'N/A', 'AYeh@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1752, 'Dr. Wong', 'UCLA', 'Geriatrician', 'N/A', 'VWong@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1753, 'Dr. Uyan', 'UCLA', 'Geriatrician', 'N/A', 'RUyan@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1754, 'Dr. Tran', 'UCLA', 'Geriatrician', 'N/A', 'HTran@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1755, 'Dr. Sauder', 'UCLA', 'Geriatrician', 'N/A', 'GSauder@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1756, 'Dr. Sarkisian', 'UCLA', 'Geriatrician', 'N/A', 'CSarkisian@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1757, 'Dr. Sanna', 'UCLA', 'Geriatrician', 'N/A', 'MSanna@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1758, 'Dr. Sanaiha', 'UCLA', 'Geriatrician', 'N/A', 'NSanaiha@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1759, 'Dr. Mitton', 'UCLA', 'Geriatrician', 'N/A', 'AMitton@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1760, 'Dr. Leonard', 'UCLA', 'Geriatrician', 'N/A', 'SLeonard@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1761, 'Dr. Koretz', 'UCLA', 'Geriatrician', 'N/A', 'BKoretz@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1762, 'Dr. Karlamangla', 'UCLA', 'Geriatrician', 'N/A', 'AKarlamangla@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1763, 'Dr. Hu', 'UCLA', 'Geriatrician', 'N/A', 'PHu@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1764, 'Dr. Hascall', 'UCLA', 'Geriatrician', 'N/A', 'THascall@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1765, 'Dr. Harris', 'UCLA', 'Geriatrician', 'N/A', 'PHarris@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1766, 'Dr. Greendale', 'UCLA', 'Geriatrician', 'N/A', 'GGreendale@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1767, 'Dr. Garcia', 'UCLA', 'Geriatrician', 'N/A', 'MGarcia@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1768, 'Dr. Dattoma', 'UCLA', 'Geriatrician', 'N/A', 'LDattoma@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1769, 'Dr. Eskildsen', 'UCLA', 'Geriatrician', 'N/A', 'MEskildsen@mednet.ucla.edu', 'Los Angeles', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1770, 'Dr. Adams', 'Memorial Care', 'Geriatrician', 'N/A', 'JAdams@memorialcare.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1771, 'Dr. Brown', 'Memorial Care', 'Geriatrician', 'N/A', 'DBrown@memorialcare.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1772, 'Dr. Etzkorn', 'Memorial Care', 'Geriatrician', 'N/A', 'EEtzkorn@memorialcare.org', 'Costa Mesa', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1773, 'Dr. Hawit', 'Memorial Care', 'Geriatrician', 'N/A', 'SHawit@memorialcare.org', 'Laguna Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1774, 'Dr. Lee', 'Memorial Care', 'Geriatrician', 'N/A', 'KLee@memorialcare.org', 'Irvine', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1775, 'Dr. Millin', 'Memorial Care', 'Geriatrician', 'N/A', 'FMillin@memorialcare.org', 'Long Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1776, 'Dr. Teymoorian', 'Memorial Care', 'Geriatrician', 'N/A', 'STeymoorian@memorialcare.org', 'Laguna Hills', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1777, 'Dr. Nguyen', 'Memorial Care', 'Geriatrician', 'N/A', 'CNguyen@memorialcare.org', 'Seal Beach', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1778, 'Dr. Morcos-Clark', 'Empire Physicians', 'Geriatrician', 'N/A', 'NMorcos-Clark@nammcal.com', 'San Clemente', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1779, 'Dr. Morcos-Clark', 'Empire Physicians', 'Geriatrician', 'N/A', 'NMorcosClark@nammcal.com', 'San Clemente', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1780, 'Dr. Morcos', 'Empire Physicians', 'Geriatrician', 'N/A', 'NMorcos@nammcal.com', 'San Clemente', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1781, 'Dr. Clark', 'Empire Physicians', 'Geriatrician', 'N/A', 'NClark@nammcal.com', 'San Clemente', 'CA', '-1', 'Geriatric Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-19 13:26:14', '2020-08-19 13:26:14', NULL, NULL, NULL, NULL, NULL, NULL),
(1782, 'Dr. Grabenauer', 'Adventist Health ', 'Internist', 'N/A', 'Leah.Grabenauer@ah.org', 'Saint Helena', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1783, 'Dr. Burt', 'Adventist Health ', 'Internist', 'N/A', 'Gregory.Burt@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1784, 'Dr. Burt', 'Adventist Health ', 'Internist', 'N/A', 'Greg.Burt@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1785, 'Dr. Lemke', 'Adventist Health ', 'Internist', 'N/A', 'Bernard.Lemke@ah.org', 'Ukiah', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1786, 'Dr. Schultz', 'Adventist Health ', 'Internist', 'N/A', 'Reiker.Schultz@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1787, 'Dr. Seage', 'Adventist Health ', 'Internist', 'N/A', 'Charles.Seage@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1788, 'Dr. Bhaskar', 'Adventist Health ', 'Internist', 'N/A', 'Shyam.Bhaskar@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1789, 'Dr. Wickremasinghe', 'Adventist Health ', 'Internist', 'N/A', 'Asela.Wickremasinghe@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1790, 'Dr. Basra', 'Adventist Health ', 'Internist', 'N/A', 'Narinder.Basra@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1791, 'Dr. Atup-Leavitt', 'Adventist Health ', 'Internist', 'N/A', 'Catherine.Atup-Leavitt@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1792, 'Dr. Atup-Leavitt', 'Adventist Health ', 'Internist', 'N/A', 'Catherine.AtupLeavitt@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1793, 'Dr. Atup', 'Adventist Health ', 'Internist', 'N/A', 'Catherine.Atup@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1794, 'Dr. Leavitt', 'Adventist Health ', 'Internist', 'N/A', 'Catherine.Leavitt@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1795, 'Dr. Warner', 'Adventist Health ', 'Internist', 'N/A', 'Corey.Warner@ah.org', 'Hidden Valley Lake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1796, 'Dr. Williams', 'Adventist Health ', 'Internist', 'N/A', 'John.Williams@ah.org', 'Willits', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1797, 'Dr. Phillips', 'Adventist Health ', 'Internist', 'N/A', 'Daniel.Phillips@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1798, 'Dr. Singer', 'Adventist Health ', 'Internist', 'N/A', 'Mark.Singer@ah.org', 'Napa', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1799, 'Dr. Waseem', 'Adventist Health ', 'Internist', 'N/A', 'Mohiuddin.Waseem@ah.org', 'Galt', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1800, 'Dr. Barash', 'Adventist Health ', 'Internist', 'N/A', 'Ace.Barash@ah.org', 'Willits', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1801, 'Dr. Singh', 'Adventist Health ', 'Internist', 'N/A', 'Utkarsh.Singh@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1802, 'Dr. Petruncio', 'Adventist Health ', 'Internist', 'N/A', 'Claudia.Petruncio@ah.org', 'Willits', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1803, 'Dr. Sanders', 'Adventist Health ', 'Internist', 'N/A', 'Samuel.Sanders@ah.org', 'Colusa', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1804, 'Dr. Sharma', 'Adventist Health ', 'Internist', 'N/A', 'Navdeep.Sharma@ah.org', 'Marysville', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1805, 'Dr. Gutierrez-Rivera', 'Adventist Health ', 'Internist', 'N/A', 'Nancy.Gutierrez-Rivera@ah.org', 'Sanger', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1806, 'Dr. Gutierrez-Rivera', 'Adventist Health ', 'Internist', 'N/A', 'Nancy.GutierrezRivera@ah.org', 'Sanger', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1807, 'Dr. Gutierrez', 'Adventist Health ', 'Internist', 'N/A', 'Nancy.Gutierrez@ah.org', 'Sanger', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1808, 'Dr. Rivera', 'Adventist Health ', 'Internist', 'N/A', 'Nancy.Rivera@ah.org', 'Sanger', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1809, 'Dr. Bal', 'Adventist Health ', 'Internist', 'N/A', 'Jagdeep.Bal@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1810, 'Dr. Singh', 'Adventist Health ', 'Internist', 'N/A', 'Harinder.Singh@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1811, 'Dr. Santivanez', 'Adventist Health ', 'Internist', 'N/A', 'Carlos.Santivanez@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1812, 'Dr. Tran', 'Adventist Health ', 'Internist', 'N/A', 'Dung.Tran@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1813, 'Dr. DuVernay', 'Adventist Health ', 'Internist', 'N/A', 'Virgil.DuVernay@ah.org', 'Ukiah', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1814, 'Dr. Raif-Jawid', 'Adventist Health ', 'Internist', 'N/A', 'Abdul.Raif-Jawid@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1815, 'Dr. Raif-Jawid', 'Adventist Health ', 'Internist', 'N/A', 'Abdul.RaifJawid@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1816, 'Dr. Raif', 'Adventist Health ', 'Internist', 'N/A', 'Abdul.Raif@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1817, 'Dr. Jawid', 'Adventist Health ', 'Internist', 'N/A', 'Abdul.Jawid@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1818, 'Dr. Teran', 'Adventist Health ', 'Internist', 'N/A', 'Guy.Teran@ah.org', 'Ukiah', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1819, 'Dr. Pena', 'Adventist Health ', 'Internist', 'N/A', 'Heather.Pena@ah.org', 'Saint Helena', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1820, 'Dr. Jeffery', 'Adventist Health ', 'Internist', 'N/A', 'Jason.Jeffery@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1821, 'Dr. Woods', 'Adventist Health ', 'Internist', 'N/A', 'Robert.Woods@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1822, 'Dr. Woods', 'Adventist Health ', 'Internist', 'N/A', 'Rob.Woods@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1823, 'Dr. DeRose', 'Adventist Health ', 'Internist', 'N/A', 'David.DeRose@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1824, 'Dr. Gavini', 'Adventist Health ', 'Internist', 'N/A', 'John.Gavini@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1825, 'Dr. Shapiro', 'Adventist Health ', 'Internist', 'N/A', 'Marc.Shapiro@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1826, 'Dr. Nagavalli', 'Adventist Health ', 'Internist', 'N/A', 'Sudesh.Nagavalli@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1827, 'Dr. Thwin Win', 'Adventist Health ', 'Internist', 'N/A', 'KyiKyi.ThwinWin@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1828, 'Dr. Win', 'Adventist Health ', 'Internist', 'N/A', 'Kyi.Win@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1829, 'Dr. Thwin-Win', 'Adventist Health ', 'Internist', 'N/A', 'KyiKyi.Thwin-Win@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1830, 'Dr. Thwin', 'Adventist Health ', 'Internist', 'N/A', 'KyiKyi.Thwin@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1831, 'Dr. Win', 'Adventist Health ', 'Internist', 'N/A', 'KyiKyi.win@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1832, 'Dr. Gupta', 'Adventist Health ', 'Internist', 'N/A', 'Shalini.Gupta@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1833, 'Dr. Gamble', 'Adventist Health ', 'Internist', 'N/A', 'Susan.Gamble@ah.org', 'Saint Helena', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1834, 'Dr. Locke', 'Adventist Health ', 'Internist', 'N/A', 'Susan.Locke@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1835, 'Dr. Jennings', 'Adventist Health ', 'Internist', 'N/A', 'Raymond.Jennings@ah.org', 'Clearlake', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1836, 'Dr. Sevel', 'Adventist Health ', 'Internist', 'N/A', 'Garry.Sevel@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1837, 'Dr. Meador', 'Adventist Health ', 'Internist', 'N/A', 'Daniel.Meador@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1838, 'Dr. Allen', 'Adventist Health ', 'Internist', 'N/A', 'David.Allen@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1839, 'Dr. Shield', 'Adventist Health ', 'Internist', 'N/A', 'John.Shield@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1840, 'Dr. Singh', 'Adventist Health ', 'Internist', 'N/A', 'Manbir.Singh@ah.org', 'Mc Farland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1841, 'Dr. Batra', 'Adventist Health ', 'Internist', 'N/A', 'Shaifali.Batra@ah.org', 'Sonora', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1842, 'Dr. Stiles', 'Adventist Health ', 'Internist', 'N/A', 'Thomas.Stiles@ah.org', 'Saint Helena', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1843, 'Dr. Brar', 'Adventist Health ', 'Internist', 'N/A', 'Yash.Brar@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1844, 'Dr. Singh', 'Adventist Health ', 'Internist', 'N/A', 'Sharanjit.Singh@ah.org', 'Saint Helena', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1845, 'Dr. Odama', 'Adventist Health ', 'Internist', 'N/A', 'Tomio.Odama@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1846, 'Dr. Joshi', 'Adventist Health ', 'Internist', 'N/A', 'Rajesh.Joshi@ah.org', 'Saint Helena', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1847, 'Dr. Gardner', 'Adventist Health ', 'Internist', 'N/A', 'Robert.Gardner@ah.org', 'Lucerne', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1848, 'Dr. Gardner', 'Adventist Health ', 'Internist', 'N/A', 'Rob.Gardner@ah.org', 'Lucerne', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1849, 'Dr. Franklin', 'Adventist Health ', 'Internist', 'N/A', 'John.Franklin@ah.org', 'Corning', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1850, 'Dr. Hanna', 'Adventist Health ', 'Internist', 'N/A', 'Iyad.Hanna@ah.org', 'Ukiah', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1851, 'Dr. Dhaliwal', 'Adventist Health ', 'Internist', 'N/A', 'Narinder.Dhaliwal@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1852, 'Dr. Petrosyan', 'Adventist Health ', 'Internist', 'N/A', 'Nerses.Petrosyan@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1853, 'Dr. Levine', 'Adventist Health ', 'Internist', 'N/A', 'Elizabeth.Levine@ah.org', 'Fort Bragg', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1854, 'Dr. Levine', 'Adventist Health ', 'Internist', 'N/A', 'beth.Levine@ah.org', 'Fort Bragg', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1855, 'Dr. Levine', 'Adventist Health ', 'Internist', 'N/A', 'liza.Levine@ah.org', 'Fort Bragg', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1856, 'Dr. Ahmadzia', 'Adventist Health ', 'Internist', 'N/A', 'Najla.Ahmadzia@ah.org', 'Hanford', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1857, 'Dr. Denman', 'Adventist Health ', 'Internist', 'N/A', 'Charles.Denman@ah.org', 'Tulare', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1858, 'Dr. Harter', 'Adventist Health ', 'Internist', 'N/A', 'Joan.Harter@ah.org', 'Paradise', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1859, 'Dr. Kim', 'Adventist Health ', 'Internist', 'N/A', 'Eric.Kim@ah.org', 'Kelseyville', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1860, 'Dr. Mosson', 'Adventist Health ', 'Internist', 'N/A', 'James.Mosson@ah.org', 'Valley Springs', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1861, 'Dr. Rahman', 'Adventist Health ', 'Internist', 'N/A', 'Fareen.Rahman@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1862, 'Dr. Randhawa', 'Adventist Health ', 'Internist', 'N/A', 'Harpreet.Randhawa@ah.org', 'Yuba City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1863, 'Dr. Koul', 'Adventist Health ', 'Internist', 'N/A', 'Abhinav.Koul@ah.org', 'Lodi', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1864, 'Dr. Agarwal', 'Brown & Toland', 'Internist', 'N/A', 'SAgarwal@btmg.com', 'Mountain View ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1865, 'Dr. Akkad', 'Brown & Toland', 'Internist', 'N/A', 'SAkkad@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1866, 'Dr. Allison', 'Brown & Toland', 'Internist', 'N/A', 'CAllison@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1867, 'Dr. Arias-Vera', 'Brown & Toland', 'Internist', 'N/A', 'JArias-Vera@btmg.com', 'Concord ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1868, 'Dr. Arias-Vera', 'Brown & Toland', 'Internist', 'N/A', 'JAriasVera@btmg.com', 'Concord ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1869, 'Dr. Arias', 'Brown & Toland', 'Internist', 'N/A', 'JArias@btmg.com', 'Concord ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1870, 'Dr. Vera', 'Brown & Toland', 'Internist', 'N/A', 'JVera@btmg.com', 'Concord ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1871, 'Dr. Arretz', 'Brown & Toland', 'Internist', 'N/A', 'DArretz@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1872, 'Dr. Arzumanova', 'Brown & Toland', 'Internist', 'N/A', 'KArzumanova@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1873, 'Dr. Batlin', 'Brown & Toland', 'Internist', 'N/A', 'ABatlin@btmg.com', 'Burlingame ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1874, 'Dr. Beers', 'Brown & Toland', 'Internist', 'N/A', 'BBeers@btmg.com', 'Oakland ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1875, 'Dr. Bhat', 'Brown & Toland', 'Internist', 'N/A', 'SBhat@btmg.com', 'Burlingame ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1876, 'Dr. Behal', 'Brown & Toland', 'Internist', 'N/A', 'RBehal@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1877, 'Dr. Berman', 'Brown & Toland', 'Internist', 'N/A', 'RBerman@btmg.com', 'San Pablo ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1878, 'Dr. Bhandari', 'Brown & Toland', 'Internist', 'N/A', 'BBhandari@btmg.com', 'Fremont ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1879, 'Dr. Chanchorn', 'Brown & Toland', 'Internist', 'N/A', 'EChanchorn@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1880, 'Dr. Chanchorn', 'Brown & Toland', 'Internist', 'N/A', 'CChanchorn@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1881, 'Dr. Chase', 'Brown & Toland', 'Internist', 'N/A', 'RChase@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1882, 'Dr. Chin-Garcia', 'Brown & Toland', 'Internist', 'N/A', 'CChin-Garcia@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1883, 'Dr. Chin Garcia', 'Brown & Toland', 'Internist', 'N/A', 'CChinGarcia@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(1884, 'Dr. Chin', 'Brown & Toland', 'Internist', 'N/A', 'CChin@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1885, 'Dr. Garcia', 'Brown & Toland', 'Internist', 'N/A', 'CGarcia@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1886, 'Dr. Collins', 'Brown & Toland', 'Internist', 'N/A', 'CCollins@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1887, 'Dr. Dang-Vu', 'Brown & Toland', 'Internist', 'N/A', 'BDang-Vu@btmg.com', 'Oakland ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1888, 'Dr. Dang-Vu', 'Brown & Toland', 'Internist', 'N/A', 'BDangVu@btmg.com', 'Oakland ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1889, 'Dr. Dang', 'Brown & Toland', 'Internist', 'N/A', 'BDang@btmg.com', 'Oakland ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1890, 'Dr. Vu', 'Brown & Toland', 'Internist', 'N/A', 'BVu@btmg.com', 'Oakland ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1891, 'Dr. Dave', 'Brown & Toland', 'Internist', 'N/A', 'RDave@btmg.com', 'Foster City ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1892, 'Dr. Degamo', 'Brown & Toland', 'Internist', 'N/A', 'TDegamo@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1893, 'Dr. Delatore', 'Brown & Toland', 'Internist', 'N/A', 'CDelatore@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1894, 'Dr. Demas', 'Brown & Toland', 'Internist', 'N/A', 'ADemas@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1895, 'Dr. Detz', 'Brown & Toland', 'Internist', 'N/A', 'ADetz@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1896, 'Dr. Diamond', 'Brown & Toland', 'Internist', 'N/A', 'ADiamond@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1897, 'Dr. Dobro', 'Brown & Toland', 'Internist', 'N/A', 'SDobro@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1898, 'Dr. Dobrow', 'Brown & Toland', 'Internist', 'N/A', 'RDobrow@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1899, 'Dr. Dohemann', 'Brown & Toland', 'Internist', 'N/A', 'JDohemann@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1900, 'Dr. Drinkard', 'Brown & Toland', 'Internist', 'N/A', 'KDrinkard@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1901, 'Dr. Eile', 'Brown & Toland', 'Internist', 'N/A', 'SEile@btmg.com', 'San Leandro', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1902, 'Dr. Fakhouri', 'Brown & Toland', 'Internist', 'N/A', 'TFakhouri@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1903, 'Dr. Fei', 'Brown & Toland', 'Internist', 'N/A', 'HFei@btmg.com', 'Redwood City ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1904, 'Dr. Fogel', 'Brown & Toland', 'Internist', 'N/A', 'RFogel@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1905, 'Dr. Fong', 'Brown & Toland', 'Internist', 'N/A', 'JFong@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1906, 'Dr. Gerber', 'Brown & Toland', 'Internist', 'N/A', 'RGerber@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1907, 'Dr. Singh Ghei', 'Brown & Toland', 'Internist', 'N/A', 'KSinghGhei@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1908, 'Dr. Singh Ghei', 'Brown & Toland', 'Internist', 'N/A', 'KSingh-Ghei@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1909, 'Dr. Singh', 'Brown & Toland', 'Internist', 'N/A', 'KSingh@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1910, 'Dr. Ghei', 'Brown & Toland', 'Internist', 'N/A', 'KGhei@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1911, 'Dr. Glatt', 'Brown & Toland', 'Internist', 'N/A', 'DGlatt@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1912, 'Dr. Carter', 'Brown & Toland', 'Internist', 'N/A', 'BCarter@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1913, 'Dr. Candell', 'Brown & Toland', 'Internist', 'N/A', 'BCandell@btmg.com', 'Orinda ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1914, 'Dr. Bricca', 'Brown & Toland', 'Internist', 'N/A', 'CBricca@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1915, 'Dr. Boykoff', 'Brown & Toland', 'Internist', 'N/A', 'ABoykoff@btmg.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1916, 'Dr. Bodor-Billings', 'Brown & Toland', 'Internist', 'N/A', 'SBodor-Billings@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1917, 'Dr. Bodor-Billings', 'Brown & Toland', 'Internist', 'N/A', 'SBodo-Billings@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1918, 'Dr. Bodor', 'Brown & Toland', 'Internist', 'N/A', 'SBodor@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1919, 'Dr. Billings', 'Brown & Toland', 'Internist', 'N/A', 'SBillings@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1920, 'Dr. Bibal', 'Brown & Toland', 'Internist', 'N/A', 'XBibal@btmg.com', 'Berkeley ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1921, 'Dr. Curbelo', 'La Clínica ', 'Internist', 'N/A', 'GCurbelo@laclinica.org', 'Oakley', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1922, 'Dr. Rezapour', 'La Clínica ', 'Internist', 'N/A', 'ARezapour@laclinica.org', 'Concord', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1923, 'Dr. Fernandes', 'La Clínica ', 'Internist', 'N/A', 'IFernandes@laclinica.org', 'Pittsburg ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1924, 'Dr. Joshi', 'One Medical', 'Internist', 'N/A', 'VJoshi@onemedical.com', 'Palo Alto', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1925, 'Dr. Fernandez', 'One Medical', 'Internist', 'N/A', 'ZFernandez@onemedical.com', 'San Francisco', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1926, 'Dr. Akkad', 'One Medical', 'Internist', 'N/A', 'SAkkad@onemedical.com', 'Palo Alto', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1927, 'Dr. Behal', 'One Medical', 'Internist', 'N/A', 'RBehal@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1928, 'Dr. Bhat', 'One Medical', 'Internist', 'N/A', 'SBhat@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1929, 'Dr. Bindlish', 'One Medical', 'Internist', 'N/A', 'SBindlish@onemedical.com', 'Walnut Creek', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1930, 'Dr. Bowden', 'One Medical', 'Internist', 'N/A', 'DBowden@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1931, 'Dr. Cafaro', 'Sutter Health', 'Internist', 'N/A', 'CafaroV@sutterhealth.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1932, 'Dr. Carter', 'LifeLong Medical', 'Internist', 'N/A', 'BCarter@lifelongmedical.org', 'Oakland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1933, 'Dr. Fogel', 'LifeLong Medical', 'Internist', 'N/A', 'RFogel@lifelongmedical.org', 'Oakland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1934, 'Dr. Miller', 'LifeLong Medical', 'Internist', 'N/A', 'LMiller@lifelongmedical.org', 'Oakland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1935, 'Dr. Conolly', 'LifeLong Medical', 'Internist', 'N/A', 'PConolly@lifelongmedical.org', 'Oakland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1936, 'Dr. Ferguson', 'LifeLong Medical', 'Internist', 'N/A', 'SFerguson@lifelongmedical.org', 'Oakland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1937, 'Dr. Rosen', 'Privia Health', 'Internist', 'N/A', 'SRosen@priviahealth.com', 'Orinda ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1938, 'Dr. Pacquing', 'One Medical', 'Internist', 'N/A', 'MPacquing@onemedical.com', 'Burlingame', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1939, 'Dr. Torres', 'One Medical', 'Internist', 'N/A', 'MTorres@onemedical.com', 'Burlingame', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1940, 'Dr. Schiessl', 'One Medical', 'Internist', 'N/A', 'CSchiessl@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1941, 'Dr. Parekh', 'One Medical', 'Internist', 'N/A', 'PParekh@onemedical.com', 'Dublin', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1942, 'Dr. Patel', 'One Medical', 'Internist', 'N/A', 'HPatel@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1943, 'Dr. Dobro', 'One Medical', 'Internist', 'N/A', 'SDobro@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1944, 'Dr. Cogburn', 'One Medical', 'Internist', 'N/A', 'BCogburn@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1945, 'Dr. Malcolm', 'One Medical', 'Internist', 'N/A', 'SMalcolm@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1946, 'Dr. Marcus', 'One Medical', 'Internist', 'N/A', 'KMarcus@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1947, 'Dr. Coupard', 'One Medical', 'Internist', 'N/A', 'DCoupard@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1948, 'Dr. Temple', 'One Medical', 'Internist', 'N/A', 'BTemple@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1949, 'Dr. Laluz', 'One Medical', 'Internist', 'N/A', 'VLaluz@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1950, 'Dr. Adrianse', 'One Medical', 'Internist', 'N/A', 'SAdrianse@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1951, 'Dr. Gellerson', 'One Medical', 'Internist', 'N/A', 'DGellerson@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1952, 'Dr. Medhekar', 'One Medical', 'Internist', 'N/A', 'BMedhekar@onemedical.com', 'Oakland', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1953, 'Dr. Madan', 'One Medical', 'Internist', 'N/A', 'KMadan@onemedical.com', 'Redwood City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1954, 'Dr. Nadella', 'One Medical', 'Internist', 'N/A', 'GNadella@onemedical.com', 'Redwood City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1955, 'Dr. Litvak', 'One Medical', 'Internist', 'N/A', 'MLitvak@onemedical.com', 'Redwood City', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1956, 'Dr. Nguyen', 'One Medical', 'Internist', 'N/A', 'LNguyen@onemedical.com', 'Sunnyvale', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1957, 'Dr. Diamond', 'One Medical', 'Internist', 'N/A', 'ADiamond@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1958, 'Dr. Fakhouri', 'One Medical', 'Internist', 'N/A', 'TFakhouri@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1959, 'Dr. Nebhwani', 'One Medical', 'Internist', 'N/A', 'NNebhwani@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1960, 'Dr. Secemsky', 'One Medical', 'Internist', 'N/A', 'BSecemsky@onemedical.com', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1961, 'Dr. Ha', 'Chinese Hospital', 'Internist', 'N/A', 'RaymondH@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1962, 'Dr. Ha', 'Chinese Hospital', 'Internist', 'N/A', 'RayH@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1963, 'Dr. Lim', 'Chinese Hospital', 'Internist', 'N/A', 'EricL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1964, 'Dr. Jeong', 'Chinese Hospital', 'Internist', 'N/A', 'MatthewJ@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1965, 'Dr. Jeong', 'Chinese Hospital', 'Internist', 'N/A', 'MattJ@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1966, 'Dr. Joy', 'Chinese Hospital', 'Internist', 'N/A', 'VictorJ@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1967, 'Dr. Khong', 'Chinese Hospital', 'Internist', 'N/A', 'DoanK@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1968, 'Dr.  Lam', 'Chinese Hospital', 'Internist', 'N/A', 'RaymondL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1969, 'Dr.  Lam', 'Chinese Hospital', 'Internist', 'N/A', 'RayL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1970, 'Dr. Le', 'Chinese Hospital', 'Internist', 'N/A', 'NamL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1971, 'Dr. Leng', 'Chinese Hospital', 'Internist', 'N/A', 'PohL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1972, 'Dr. Dang', 'Chinese Hospital', 'Internist', 'N/A', 'DeborahD@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1973, 'Dr. Loh', 'Chinese Hospital', 'Internist', 'N/A', 'AnnieL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1974, 'Dr. Liu', 'Chinese Hospital', 'Internist', 'N/A', 'AndyL@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1975, 'Dr. Magtibay', 'Chinese Hospital', 'Internist', 'N/A', 'CarloM@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1976, 'Dr. Mallon', 'Chinese Hospital', 'Internist', 'N/A', 'JosephM@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1977, 'Dr. Matz', 'Chinese Hospital', 'Internist', 'N/A', 'RobertM@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1978, 'Dr. Matz', 'Chinese Hospital', 'Internist', 'N/A', 'RobM@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1979, 'Dr. Ong', 'Chinese Hospital', 'Internist', 'N/A', 'MichelleO@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1980, 'Dr. Pham', 'Chinese Hospital', 'Internist', 'N/A', 'HoangP@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1981, 'Dr. Puri', 'Chinese Hospital', 'Internist', 'N/A', 'TimothyP@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1982, 'Dr. Puri', 'Chinese Hospital', 'Internist', 'N/A', 'TimP@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1983, 'Dr. Quang', 'Chinese Hospital', 'Internist', 'N/A', 'AngelaQ@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1984, 'Dr. Stricker', 'Chinese Hospital', 'Internist', 'N/A', 'RaphaelS@chasf.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1985, 'Dr. Degamo', 'Verity', 'Internist', 'N/A', 'TeresitaDegamo@verity.org', 'Daly City ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1986, 'Dr. Dolkar', 'Sutter Health', 'Internist', 'N/A', 'DolkarY@sutterhealth.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1987, 'Dr. Dydell', 'Sutter Health', 'Internist', 'N/A', 'DydellKM@sutterhealth.org', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1988, 'Dr. Eile', 'Epic Care ', 'Internist', 'N/A', 'Susan.Eile@epic-care.com', 'San Leandro ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1989, 'Dr. Glatt', 'Sutter Health', 'Internist', 'N/A', 'GlattD@sutterhealth.org', 'Burlingame', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1990, 'Dr. Garcia', 'UCSF', 'Internist', 'N/A', 'Maria.Garcia@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1991, 'Dr. Yank', 'UCSF', 'Internist', 'N/A', 'Veronica.Yank@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1992, 'Dr. Bautista', 'UCSF', 'Internist', 'N/A', 'Christopher.Bautista@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1993, 'Dr. Gadgil', 'UCSF', 'Internist', 'N/A', 'Meghana.Gadgil@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1994, 'Dr. Julian', 'UCSF', 'Internist', 'N/A', 'Kathy.Julian@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1995, 'Dr. Huang', 'UCSF', 'Internist', 'N/A', 'Alison.Huang@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1996, 'Dr. Laponis', 'UCSF', 'Internist', 'N/A', 'Ryan.Laponis@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1997, 'Dr. Vincent', 'UCSF', 'Internist', 'N/A', 'Jyotsna.Vincent@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1998, 'Dr. Hauer', 'UCSF', 'Internist', 'N/A', 'karen.hauer@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(1999, 'Dr. Walsh', 'UCSF', 'Internist', 'N/A', 'Judith.Walsh@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2000, 'Dr. Summerville', 'UCSF', 'Internist', 'N/A', 'Sarah.Summerville@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2001, 'Dr. Kryzhanovskaya', 'UCSF', 'Internist', 'N/A', 'Irina.Kryzhanovskaya@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2002, 'Dr. Pham', 'UCSF', 'Internist', 'N/A', 'Christina.Pham@ucsf.edU', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2003, 'Dr. Liu', 'UCSF', 'Internist', 'N/A', 'Jessica.Liu@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2004, 'Dr. Ramanan', 'UCSF', 'Internist', 'N/A', 'Radhika.Ramanan@ucsf.edU', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2005, 'Dr. Tice', 'UCSF', 'Internist', 'N/A', 'Jeff.Tice@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2006, 'Dr. Chen', 'UCSF', 'Internist', 'N/A', 'Deborah.Chen@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2007, 'Dr. Yang', 'UCSF', 'Internist', 'N/A', 'Jerry.Yang@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2008, 'Dr. Karliner', 'UCSF', 'Internist', 'N/A', 'Leah.Karliner@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2009, 'Dr. Sim', 'UCSF', 'Internist', 'N/A', 'Ida.Sim@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2010, 'Dr. Lin', 'UCSF', 'Internist', 'N/A', 'Grace.Lin@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2011, 'Dr. Gu', 'UCSF', 'Internist', 'N/A', 'Melinda.Gu@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2012, 'Dr. Chrobak', 'UCSF', 'Internist', 'N/A', 'Daniel.Chrobak@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2013, 'Dr. Mutha', 'UCSF', 'Internist', 'N/A', 'Sunita.Mutha@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2014, 'Dr. Padula', 'UCSF', 'Internist', 'N/A', 'Ana.Padula@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2015, 'Dr. Williams', 'UCSF', 'Internist', 'N/A', 'Mia.Williams@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2016, 'Dr. Ziv', 'UCSF', 'Internist', 'N/A', 'Elad.Ziv@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2017, 'Dr. Narra', 'UCSF', 'Internist', 'N/A', 'Pratyusha.Narra@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2018, 'Dr. Ling', 'UCSF', 'Internist', 'N/A', 'Pamela.Ling@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2019, 'Dr. Wamsley', 'UCSF', 'Internist', 'N/A', 'Maria.Wamsley@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2020, 'Dr. Kornbluth', 'UCSF', 'Internist', 'N/A', 'Lily.Kornbluth@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2021, 'Dr. Montauk', 'UCSF', 'Internist', 'N/A', 'Lance.Montauk@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2022, 'Dr. Askin', 'UCSF', 'Internist', 'N/A', 'Elisabeth.Askin@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2023, 'Dr. Appelle', 'UCSF', 'Internist', 'N/A', 'Nicole.Appelle@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2024, 'Dr. Bell', 'UCSF', 'Internist', 'N/A', 'Brieze.Bell@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2025, 'Dr. Malcolmson', 'UCSF', 'Internist', 'N/A', 'Michelle.Malcolmson@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2026, 'Dr. Bauer', 'UCSF', 'Internist', 'N/A', 'Douglas.Bauer@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2027, 'Dr. Gleason', 'UCSF', 'Internist', 'N/A', 'Nathaniel.Gleason@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2028, 'Dr. Wong', 'UCSF', 'Internist', 'N/A', 'Terrelea.Wong@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2029, 'Dr. Kobashi', 'UCSF', 'Internist', 'N/A', 'Brent.Kobashi@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2030, 'Dr. Dunlop', 'UCSF', 'Internist', 'N/A', 'Miranda.Dunlop@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2031, 'Dr. Guy', 'UCSF', 'Internist', 'N/A', 'Michelle.Guy@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2032, 'Dr. Tack', 'UCSF', 'Internist', 'N/A', 'Therese.ChanTack@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2033, 'Dr. Cooke', 'UCSF', 'Internist', 'N/A', 'Molly.Cooke@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2034, 'Dr. Aoki', 'UCSF', 'Internist', 'N/A', 'Maki.Aoki@ucsf.edu', 'San Francisco ', 'CA', '-1', 'Internal Medicine', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-25 00:54:10', '2020-08-25 00:54:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2035, 'Dr. Asiri', 'Sinai Health', 'Child Psychiatrist', 'N/A', 'Amal.Asiri@sinai.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2036, 'Dr. Martinez', 'Pilsen Wellness Center', 'Child Psychiatrist', 'N/A', 'MMartinez@pilsenmh.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2037, 'Dr. Martinez', 'Chicago-Read Mental Health', 'Child Psychiatrist', 'N/A', 'Mercedes.Martinez@illinois.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2038, 'Dr. Gautam', 'The Family Institute', 'Child Psychiatrist', 'N/A', 'SGautam@family-institute.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2039, 'Dr.  Fox', 'UIC', 'Child Psychiatrist', 'N/A', 'foxg@uic.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2040, 'Dr. Stojanac', 'UIC', 'Child Psychiatrist', 'N/A', 'dstoja3@uic.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2041, 'Dr. Morrison', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Helen.Morrison@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2042, 'Dr. Morrison', 'VA', 'Child Psychiatrist', 'N/A', 'Helen.Morrison@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2043, 'Dr. Morrison', 'VA', 'Child Psychiatrist', 'N/A', 'Helen.Morrison1@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2044, 'Dr. Morrison', 'VA', 'Child Psychiatrist', 'N/A', 'Helen.Morrison2@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2045, 'Dr. Morrison', 'VA', 'Child Psychiatrist', 'N/A', 'Helen.Morrison3@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2046, 'Dr. Morrison', 'VA', 'Child Psychiatrist', 'N/A', 'Helen.Morrison4@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2047, 'Dr. Morrison', 'VA', 'Child Psychiatrist', 'N/A', 'Helen.Morrison5@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2048, 'Dr. Ballard', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Rachel.Ballard@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2049, 'Dr. Dulcan', 'Northwestern', 'Child Psychiatrist', 'N/A', 'm-dulcan@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2050, 'Dr. Edger', 'Northwestern', 'Child Psychiatrist', 'N/A', 'R-Edger@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2051, 'Dr. Eytan', 'Northwestern Medicine', 'Child Psychiatrist', 'N/A', 'Alyse.Eytan@nm.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2052, 'Dr. Friedland', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Susan.Friedland@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2053, 'Dr. Hatzis', 'Northwestern', 'Child Psychiatrist', 'N/A', 'N-Hatzis@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2054, 'Dr. Hanus', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Steven.Hanus@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2055, 'Dr. Gutmann', 'Northwestern', 'Child Psychiatrist', 'N/A', 'M-Gutmann@northwestern.edu', 'Skokie ', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2056, 'Dr. Janssen', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Aron.Janssen@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2057, 'Dr. Ivanenko', 'Northwestern', 'Child Psychiatrist', 'N/A', 'a-Ivanenko@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2058, 'Dr. Johnson', 'Northwestern', 'Child Psychiatrist', 'N/A', 'margery-johnson@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2059, 'Dr. Jha', 'Northwestern', 'Child Psychiatrist', 'N/A', 'P-Jha@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2060, 'Dr. Kaplan', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Jeremy-Kaplan@northwestern.edu', 'Vernon Hills', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2061, 'Dr. Kurth', 'Northwestern', 'Child Psychiatrist', 'N/A', 'J-Kurth@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2062, 'Dr. Korman', 'Northwestern', 'Child Psychiatrist', 'N/A', 'L-Korman@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2063, 'Dr. Lavoll', 'Northwestern', 'Child Psychiatrist', 'N/A', 'G-Lavoll@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2064, 'Dr. Lake', 'Northwestern', 'Child Psychiatrist', 'N/A', 'M-Lake@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2065, 'Dr. Martel', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Adele-Martel@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2066, 'Dr. Plioplys', 'Northwestern', 'Child Psychiatrist', 'N/A', 'S-Plioplys@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2067, 'Dr. Pergjika', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Alba.Pergjika@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2068, 'Dr. Perez-Reisler', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Marisa.Perez-Reisler@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2069, 'Dr. Romba', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Courtney.Romba@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2070, 'Dr. Rolland', 'Northwestern', 'Child Psychiatrist', 'N/A', 'John.Rolland@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `candidates` (`id`, `name`, `employer`, `job_title`, `phone`, `email`, `city`, `state`, `salary`, `skills`, `interest`, `experience`, `color`, `Industry`, `prof_image`, `prof_summary`, `password`, `created_at`, `updated_at`, `code`, `random_code`, `status_id`, `job_type`, `education_id`, `job_id`) VALUES
(2071, 'Dr. Roberson-Moore', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Toya.Roberson-Moore@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2072, 'Dr. Sadhu', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Julie.Sadhu@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2073, 'Dr. Schwarz', 'Northwestern', 'Child Psychiatrist', 'N/A', 'E-Schwarz@northwestern.edu', 'Skokie ', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2074, 'Dr. Spira', 'Northwestern', 'Child Psychiatrist', 'N/A', 'N-Spira@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2075, 'Dr.  Spector', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Jeff@northwestern.edu', 'Highland Park', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2076, 'Dr. Vadakara', 'Northwestern', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2077, 'Dr. Vadakara', 'VA', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2078, 'Dr. Vadakara', 'VA', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara1@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2079, 'Dr. Vadakara', 'VA', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara2@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2080, 'Dr. Vadakara', 'VA', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara3@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2081, 'Dr. Vadakara', 'VA', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara4@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2082, 'Dr. Vadakara', 'VA', 'Child Psychiatrist', 'N/A', 'Tom.Vadakara5@va.gov', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2083, 'Dr. Wisner', 'Northwestern', 'Child Psychiatrist', 'N/A', 'katherine.wisner@northwestern.edu', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2084, 'Dr. Hadi', 'GEFCC', 'Child Psychiatrist', 'N/A', 'FHadi@gefcc.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2085, 'Dr. Matek', 'Cook County Health', 'Child Psychiatrist', 'N/A', 'DMatek@cookcountyhealth.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2086, 'Dr. Bednarz', 'Cook County Health', 'Child Psychiatrist', 'N/A', 'MBednarz@cookcountyhealth.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2087, 'Dr. Mason', 'Cook County Health', 'Child Psychiatrist', 'N/A', 'JMason@cookcountyhealth.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2088, 'Dr. Oskin', 'Cook County Health', 'Child Psychiatrist', 'N/A', 'YOskin@cookcountyhealth.org', 'Chicago', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2089, 'Dr. Ahmed', 'DuPage Medical', 'Child Psychiatrist', 'N/A', 'Fazal.Ahmed@dupagemd.com', 'Lombard', 'IL', '-1', 'Child Pscyhiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 12:27:32', '2020-08-26 12:27:32', NULL, NULL, NULL, NULL, NULL, NULL),
(2090, 'Dr. Kwon', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'howerk@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2091, 'Dr. Montenegro', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'remonte@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2092, 'Dr. Kuniyoshi', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'jkuniyos@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2093, 'Dr. Hopkinson', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'hopkir03@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2094, 'Dr. Curtis', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'amyecurt@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2095, 'Dr. Boydston', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'boydston@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2096, 'Dr. De Lacy', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'delacyn@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2097, 'Dr. Black', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'ljl2@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2098, 'Dr. Wang', 'MultiCare', 'Child Psychiatrist', 'N/A', 'KWang@multicare.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2099, 'Dr. Shen', 'MultiCare', 'Child Psychiatrist', 'N/A', 'TShen@multicare.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2100, 'Dr. Ramsey', 'Overlake Hospital', 'Child Psychiatrist', 'N/A', 'Michael.Ramsey@overlakehospital.org', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2101, 'Dr. Ramsey', 'Overlake Hospital', 'Child Psychiatrist', 'N/A', 'MIKE.Ramsey@overlakehospital.org', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2102, 'Dr. Ramsey', 'Compass Health', 'Child Psychiatrist', 'N/A', 'Michael.Ramsey@compasshealth.org', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2103, 'Dr. Ramsey', 'Compass Health', 'Child Psychiatrist', 'N/A', 'MIKE.Ramsey@compasshealth.org', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2104, 'Dr.  Shen', 'Compass Health', 'Child Psychiatrist', 'N/A', 'MIKE.Shen@compasshealth.org', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2105, 'Dr.  Shen', 'Compass Health', 'Child Psychiatrist', 'N/A', 'Michael.Shen@compasshealth.org', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2106, 'Dr.  Stallings', 'Compass Health', 'Child Psychiatrist', 'N/A', 'Shirley.Stallings@compasshealth.org', 'Mukilteo', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2107, 'Dr. Parker', 'The Everett Clinic', 'Child Psychiatrist', 'N/A', 'JParker@everettclinic.com', 'Bellevue', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2108, 'Dr. Siddiqui', 'The Everett Clinic', 'Child Psychiatrist', 'N/A', 'FSiddiqui@everettclinic.com', 'Everett', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2109, 'Dr. Soden', 'YVFWC', 'Child Psychiatrist', 'N/A', 'MatthewS@yvfwc.org', 'Yakima', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2110, 'Dr. Petzinger', 'YVFWC', 'Child Psychiatrist', 'N/A', 'GeorgeP@yvfwc.org', 'Yakima', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2111, 'Dr. De Lacy', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'nina.de-lacy@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2112, 'Dr. Lacy', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'nina.lacy@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-09-10 05:56:42', NULL, NULL, NULL, NULL, NULL, NULL),
(2113, 'Dr. Dillon-Naftolin', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Erin.Dillon-Naftolin@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2114, 'Dr. Dillon-Naftolin', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Erin.DillonNaftolin@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2115, 'Dr. Dillon', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Erin.Dillon@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2116, 'Dr. Naftolin', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Erin.Naftolin@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2117, 'Dr. Weiss', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Nicholas.Weiss@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2118, 'Dr. Sharma', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Aditi.Sharma@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2119, 'Dr. Ramasamy', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Ravi.Ramasamy@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2120, 'Dr. Peacey', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'James.Peacey@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2121, 'Dr. Montenegro', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Roberto.Montenegro@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2122, 'Dr. Montenegro', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Robert.Montenegro@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2123, 'Dr. Montenegro', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Rob.Montenegro@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2124, 'Dr. French', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'William.French@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2125, 'Dr. French', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Will.French@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2126, 'Dr. Golombek', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Alison.Golombek@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2127, 'Dr. Boydston', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Lauren.Boydston@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2128, 'Dr. Camenisch', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'David.Camenisch@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2129, 'Dr. Hobson', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Kali.Hobson@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2130, 'Dr. Curtis', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'Amy.Curtis@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2131, 'Dr. Staeheli', 'Billings Clinic', 'Child Psychiatrist', 'N/A', 'CStaeheli@billingsclinic.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2132, 'Dr. Diorio', 'ABCD', 'Child Psychiatrist', 'N/A', 'Mary-Ellen.Diorio@abcdseattle.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2133, 'Dr. Diorio', 'ABCD', 'Child Psychiatrist', 'N/A', 'MaryEllen.Diorio@abcdseattle.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2134, 'Dr. Diorio', 'ABCD', 'Child Psychiatrist', 'N/A', 'Mary.Diorio@abcdseattle.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2135, 'Dr. Diorio', 'ABCD', 'Child Psychiatrist', 'N/A', 'Ellen.Diorio@abcdseattle.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2136, 'Dr. Remmers', 'ABCD', 'Child Psychiatrist', 'N/A', 'Allison.Remmers@abcdseattle.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2137, 'Dr. Parker', 'Kaiser', 'Child Psychiatrist', 'N/A', 'James.A.Parker@kp.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2138, 'Dr.  Catterall', 'UW Medicine', 'Child Psychiatrist', 'N/A', 'wcatt@uw.edu', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2139, 'Dr. Wicholas', 'Private practice', 'Child Psychiatrist', 'N/A', 'wicholas@gmail.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2140, 'Dr. Boley', 'Virginia Mason', 'Child Psychiatrist', 'N/A', 'CandiceBoley@VirginiaMason.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2141, 'Dr.  Wiener', 'Prisma Wellness', 'Child Psychiatrist', 'N/A', 'DRScott@prismawellness.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2142, 'Dr.  Kim', 'Seattle Children\'s', 'Child Psychiatrist', 'N/A', 'SooJeong.Kim@seattlechildrens.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2143, 'Dr.  Peacey', 'Ryther', 'Child Psychiatrist', 'N/A', 'JamesP@ryther.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2144, 'Dr. Sylvester', 'Sound Mental Health', 'Child Psychiatrist', 'N/A', 'Carrie.Sylvester@sound.health', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2145, 'Dr. Gustafson', 'Sound Mental Health', 'Child Psychiatrist', 'N/A', 'Belinda.Gustafson@sound.health', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2146, 'Dr. Hacker', 'Navos Mental Health', 'Child Psychiatrist', 'N/A', 'Lisa.Hacker@navos.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2147, 'Dr. Peacey', 'Navos Mental Health', 'Child Psychiatrist', 'N/A', 'James.Peacey@navos.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2148, 'Dr. Zanolli', 'Navos Mental Health', 'Child Psychiatrist', 'N/A', 'Gerard.Zanolli@navos.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2149, 'Dr. Mustafa', 'Swedish Health', 'Child Psychiatrist', 'N/A', 'Syed.Mustafa@swedish.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2150, 'Dr. Haloman', 'Swedish Health', 'Child Psychiatrist', 'N/A', 'Elsa.Haloman@swedish.org', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2151, 'Dr. Zanolli', 'Private practice', 'Child Psychiatrist', 'N/A', 'drzanolli@gmail.com', 'Seattle', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2152, 'Dr. Devney', 'Woodinville Psychiatric ', 'Child Psychiatrist', 'N/A', 'Devneyandassoc@gmail.com', 'Woodinville', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2153, 'Dr. Collins', 'KMHS', 'Child Psychiatrist', 'N/A', 'CollinsJ@kmhs.org', 'Bremerton', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2154, 'Dr. Henry', 'CCS', 'Child Psychiatrist', 'N/A', 'amyh@ccsww.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2155, 'Dr. Petzinger', 'MultiCare', 'Child Psychiatrist', 'N/A', 'GPetzinger@multicare.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2156, 'Dr. Peterson', 'Touchstone Life Center', 'Child Psychiatrist', 'N/A', 'kris.peterson@touchstonelifecenter.com', 'Lakewood', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2157, 'Dr. Brace', 'CHI Franciscan', 'Child Psychiatrist', 'N/A', 'MelanieBrace@chifranciscan.org', 'Gig Harbor', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2158, 'Dr. Schilt', 'CLR', 'Child Psychiatrist', 'N/A', 'SSchilt@cmhshare.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2159, 'Dr. Naficy', 'CLR', 'Child Psychiatrist', 'N/A', 'KNaficy@cmhshare.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2160, 'Dr. Bintasan', 'CLR', 'Child Psychiatrist', 'N/A', 'SBintasan@cmhshare.org', 'Tacoma', 'WA', '-1', 'Child Psychiatry', 'N/A', -1, NULL, 'Medical & healthcare', '', '', '', '2020-08-26 13:15:56', '2020-08-26 13:15:56', NULL, NULL, NULL, NULL, NULL, NULL),
(2161, 'Felicia Glover', 'Magna beatae pariatu', 'Omnis dolor dolorem', '+1 (993) 382-8138', 'bulyc@mailinator.com', 'Omnis sint modi asp', 'Est et necessitatibu', 'Hic maiores consequa', 'Recusandae Ut possi', 'Illum sit natus ist', 1, NULL, 'Numquam temporibus m', '', '', '', '2020-09-09 02:47:35', '2020-09-09 02:47:35', NULL, NULL, NULL, NULL, NULL, NULL),
(2162, NULL, NULL, NULL, NULL, 'admin@mymotivz.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-09 22:31:08', '2020-11-09 22:31:08', NULL, NULL, NULL, NULL, NULL, NULL),
(2180, NULL, NULL, NULL, NULL, 'wufipylywa@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-10 21:34:49', '2020-11-10 21:34:49', 'RiC2D', '7MsWrh27UyrY2BqyPbga', NULL, NULL, NULL, NULL),
(2181, NULL, NULL, NULL, NULL, 'ketubeci@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-10 21:35:12', '2020-11-10 21:35:12', 'CQSbq', 'gNmyJED1uI3JPtZbPtfo', NULL, NULL, NULL, NULL),
(2182, NULL, NULL, NULL, NULL, 'zasuxudaw@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-10 21:36:11', '2020-11-10 21:36:11', 'NhPHX', 'R35XOXGn2jYov1vra68T', NULL, NULL, NULL, NULL),
(2183, NULL, NULL, NULL, NULL, 'pudo@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-10 21:37:26', '2020-11-10 21:37:26', '25chl', 'cvZDZuCURIL3fQgHPFGR', NULL, NULL, NULL, NULL),
(2184, NULL, NULL, NULL, NULL, 'fybocy@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-10 21:37:50', '2020-11-10 21:38:04', '', '', NULL, NULL, NULL, NULL),
(2185, NULL, NULL, NULL, NULL, 'baxic@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-10 21:40:04', '2020-11-10 21:40:22', '', '', NULL, NULL, NULL, NULL),
(2200, NULL, NULL, NULL, NULL, 'aroojfatima2067@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-22 22:54:29', '2020-11-22 22:54:29', NULL, 'iEc1QwJ4N4zCVnn7xPWG', NULL, NULL, NULL, NULL),
(2201, NULL, NULL, NULL, NULL, 'admin_test@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-25 21:19:42', '2020-11-25 21:19:42', '95ays', 'LviREUoU3XmFFZP6347l', NULL, NULL, NULL, NULL),
(2202, NULL, NULL, NULL, NULL, 'test2@live.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-25 21:32:48', '2020-11-25 21:32:48', NULL, 'XRab7fwVdSaitXqik3wX', NULL, NULL, NULL, NULL),
(2203, NULL, NULL, NULL, NULL, 'abc@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-25 21:43:45', '2020-11-25 21:43:45', 'Y0ThO', 'OHqA4entVK98Rf09rREB', NULL, NULL, NULL, NULL),
(2204, NULL, NULL, NULL, NULL, 'xyz@abc.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-25 22:22:23', '2020-11-25 22:22:23', 'wDYU4', 'raiWsCPyPImFhR8FCGb0', NULL, NULL, NULL, NULL),
(2205, NULL, NULL, NULL, NULL, 'wewe@oi.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-25 22:28:18', '2020-11-25 22:28:18', 'cD8kV', 'poaZFZWichaKiEe4jGe9', NULL, NULL, NULL, NULL),
(2206, NULL, NULL, NULL, NULL, 'iuy@gh.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2020-11-25 23:14:10', '2020-11-25 23:14:10', 'TibKp', 'hMfwnYMABoQRPwvymJhi', NULL, NULL, NULL, NULL),
(2207, 'AhadRehman', NULL, 'engineer', '32309279878', 'asd@asd.com', 'efkjverkj', 'acihweuh', '7878', 'wekfh,fwefihwoeif,wfpjwoejf,pojpo', 'kjbkjkjbkjbk', 3, NULL, 'sdvdksvrev', 'capture-2020_12_10-02-30-00.jpg', 'eroigjroigergrerjgioeknl\r\ner;kgmlekrg\r\negrlkergnlkerg\r\neglekrglkern', '$2y$10$7FAcSVTC1WLf3FccAGrEv.pJvuu76VWNrJTmVUM7CEyQKvCTt7nBK', '2020-11-25 23:42:32', '2020-12-09 21:31:12', NULL, 'FBJRbLqoE3CIh08KOV2Z', NULL, 'Part-time', 4, NULL),
(2208, 'kjuiuhkjk', NULL, 'uibhfiuhiu', '98698698689', 'abc@abc.com', 'efkjverkj', 'acihweuh', '2323', 'skufikufg,dubvieur,uiehrfiuherg,fbdfd,grg', 'kjbkjkjbkjbk', 2, NULL, 'sdvdksvrev', 'capture-2020_12_07-03-04-40.jpg', 'qwqwfqfvgrer\r\ngergergegeg\r\neerhrrgherhtht', '$2y$10$7FAcSVTC1WLf3FccAGrEv.pJvuu76VWNrJTmVUM7CEyQKvCTt7nBK', '2020-11-26 06:22:15', '2020-12-06 22:04:40', NULL, 'h0ZQ316bNXON6JjHcavf', NULL, 'Part-time', 5, NULL),
(2215, NULL, NULL, NULL, NULL, 'hananbhatti860@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '$2y$10$mEeKgrv79oC1CRi2lpxXi.8..M62bPMmLuaiiaiggvKgBe3QOcANy', '2020-12-07 17:52:15', '2020-12-07 17:52:15', 'D2bc8', 'YlYactMxTZweVor7yLG9', NULL, NULL, NULL, NULL),
(2216, NULL, NULL, NULL, NULL, 'hananbhatti440@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '$2y$10$kao5z3dJEoQ6c.J0.WgYiuco8OsgYpb6gMf9Px3kbjKvRJyDBxVsq', '2020-12-07 18:19:09', '2020-12-07 18:19:09', 'CPJ2L', 'vQy1kf3L4Nz6hgVLLajP', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_job`
--

CREATE TABLE `candidate_job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `resume`, `candidate_id`, `created_at`, `updated_at`) VALUES
(5, 'MyMotivz Updates 27-10-2020-2020_12_14-01-14-04.docx', 7, '2020-12-14 09:14:04', '2020-12-14 09:14:04'),
(10, 'Despre_noi-2020_12_17-03-04-35.docx', 16, '2020-12-17 11:04:35', '2020-12-17 11:04:35'),
(11, 'Resume-2020_12_19-15-10-07.pdf', 25, '2020-12-19 23:10:07', '2020-12-19 23:10:07'),
(28, 'REVISION PART 3 - Asad 1_6_2020-2021_01_12-12-52-19.pdf', 32, '2021-01-12 20:52:19', '2021-01-12 20:52:19'),
(29, 'Mymotivz testing-2021_01_13-07-11-58.docx', 55, '2021-01-13 15:11:58', '2021-01-13 15:11:58'),
(31, 'Mymotivz testing-2021_01_13-07-25-57.docx', 57, '2021-01-13 15:25:57', '2021-01-13 15:25:57'),
(32, 'Mymotivz testing-2021_01_13-21-46-35.docx', 58, '2021-01-14 05:46:35', '2021-01-14 05:46:35'),
(35, 'Laravel Eloquent-2021_01_19-03-13-53.docx', 98, '2021-01-18 22:13:53', '2021-01-18 22:13:53'),
(36, 'Laravel Eloquent-2021_01_19-05-04-37.docx', 101, '2021-01-19 00:04:37', '2021-01-19 00:04:37'),
(37, 'Laravel Eloquent-2021_01_19-22-26-28.docx', 43, '2021-01-19 17:26:28', '2021-01-19 17:26:28'),
(41, 'Laravel Eloquent-2021_01_20-00-26-11.docx', 53, '2021-01-19 19:26:11', '2021-01-19 19:26:11'),
(43, 'Laravel Eloquent-2021_01_20-01-11-10.docx', 111, '2021-01-19 20:11:10', '2021-01-19 20:11:10'),
(44, 'Laravel Eloquent-2021_01_20-04-28-46.docx', 113, '2021-01-19 23:28:46', '2021-01-19 23:28:46'),
(45, 'Laravel Eloquent-2021_01_20-07-21-20.docx', 114, '2021-01-20 02:21:20', '2021-01-20 02:21:20'),
(46, 'Laravel Eloquent-2021_01_20-07-22-42.docx', 115, '2021-01-20 02:22:42', '2021-01-20 02:22:42'),
(48, 'Laravel Eloquent-2021_01_21-03-12-58.docx', 117, '2021-01-21 11:12:58', '2021-01-21 11:12:58'),
(49, 'Laravel Eloquent-2021_01_21-05-59-19.docx', 118, '2021-01-21 13:59:19', '2021-01-21 13:59:19'),
(50, 'abc-2021_01_22-00-24-56.docx', 125, '2021-01-22 08:24:56', '2021-01-22 08:24:56'),
(51, 'Laravel Eloquent-2021_01_22-03-13-47.docx', 127, '2021-01-22 11:13:47', '2021-01-22 11:13:47'),
(52, 'Laravel Eloquent-2021_01_22-03-37-08.docx', 128, '2021-01-22 11:37:08', '2021-01-22 11:37:08'),
(53, 'Laravel Eloquent-2021_01_22-05-14-33.docx', 133, '2021-01-22 13:14:33', '2021-01-22 13:14:33'),
(54, 'abc-2021_01_22-05-16-20.docx', 134, '2021-01-22 13:16:20', '2021-01-22 13:16:20'),
(55, 'Laravel Eloquent-2021_01_22-06-03-47.docx', 136, '2021-01-22 14:03:47', '2021-01-22 14:03:47'),
(56, 'LIST OF INDUSTRIES-2021_01_22-15-10-42.pdf', 138, '2021-01-22 23:10:42', '2021-01-22 23:10:42'),
(57, 'LIST OF INDUSTRIES-2021_01_25-13-54-20.pdf', 139, '2021-01-25 21:54:20', '2021-01-25 21:54:20'),
(58, 'MyMotivz data import PDF-2021_01_25-19-28-24.pdf', 140, '2021-01-26 03:28:24', '2021-01-26 03:28:24'),
(59, 'biz-how-your-transaction-will-work-2021_01_28-15-03-06.pdf', 141, '2021-01-28 23:03:06', '2021-01-28 23:03:06'),
(60, 'Laravel Eloquent-2021_02_01-23-07-16.docx', 144, '2021-02-02 07:07:16', '2021-02-02 07:07:16'),
(65, 'Laravel Eloquent-2021_02_12-06-41-37.docx', 149, '2021-02-12 14:41:37', '2021-02-12 14:41:37'),
(67, 'Laravel Eloquent-2021_02_14-22-41-48.docx', 150, '2021-02-15 06:41:48', '2021-02-15 06:41:48'),
(68, 'Laravel Eloquent-2021_02_14-23-47-11.docx', 151, '2021-02-15 07:47:11', '2021-02-15 07:47:11'),
(69, 'Laravel Eloquent-2021_02_15-02-41-47.docx', 152, '2021-02-15 10:41:47', '2021-02-15 10:41:47'),
(70, 'Laravel Eloquent-2021_02_15-02-42-21.docx', 152, '2021-02-15 10:42:21', '2021-02-15 10:42:21'),
(71, 'Laravel Eloquent-2021_02_15-02-42-58.docx', 152, '2021-02-15 10:42:58', '2021-02-15 10:42:58'),
(72, 'Laravel Eloquent-2021_02_15-02-43-55.docx', 152, '2021-02-15 10:43:55', '2021-02-15 10:43:55'),
(73, 'Laravel Eloquent-2021_02_15-02-47-51.docx', 152, '2021-02-15 10:47:51', '2021-02-15 10:47:51'),
(74, 'Laravel Eloquent-2021_02_15-02-51-55.docx', 153, '2021-02-15 10:51:55', '2021-02-15 10:51:55'),
(75, 'Laravel Eloquent-2021_02_15-02-53-58.docx', 153, '2021-02-15 10:53:58', '2021-02-15 10:53:58'),
(76, 'Laravel Eloquent-2021_02_15-02-55-11.docx', 153, '2021-02-15 10:55:11', '2021-02-15 10:55:11'),
(77, 'Laravel Eloquent-2021_02_15-02-55-34.docx', 153, '2021-02-15 10:55:34', '2021-02-15 10:55:34'),
(78, 'Laravel Eloquent-2021_02_15-02-57-52.docx', 154, '2021-02-15 10:57:52', '2021-02-15 10:57:52'),
(79, 'Laravel Eloquent-2021_02_15-03-02-22.docx', 154, '2021-02-15 11:02:22', '2021-02-15 11:02:22'),
(80, 'Laravel Eloquent-2021_02_15-03-18-03.docx', 154, '2021-02-15 11:18:03', '2021-02-15 11:18:03'),
(81, 'Laravel Eloquent-2021_02_15-03-39-30.docx', 155, '2021-02-15 11:39:30', '2021-02-15 11:39:30'),
(82, 'Laravel Eloquent-2021_02_15-03-41-56.docx', 155, '2021-02-15 11:41:56', '2021-02-15 11:41:56'),
(83, 'Laravel Eloquent-2021_02_15-04-02-31.docx', 156, '2021-02-15 12:02:31', '2021-02-15 12:02:31'),
(84, 'Laravel Eloquent-2021_02_15-04-13-10.docx', 156, '2021-02-15 12:13:10', '2021-02-15 12:13:10'),
(85, 'Laravel Eloquent-2021_02_15-05-18-53.docx', 158, '2021-02-15 13:18:53', '2021-02-15 13:18:53'),
(86, 'Laravel Eloquent-2021_02_15-06-20-27.docx', 158, '2021-02-15 14:20:27', '2021-02-15 14:20:27'),
(87, 'Laravel Eloquent-2021_02_15-23-47-07.docx', 159, '2021-02-16 07:47:07', '2021-02-16 07:47:07'),
(88, 'Laravel Eloquent-2021_02_15-23-50-44.docx', 159, '2021-02-16 07:50:44', '2021-02-16 07:50:44'),
(89, 'Laravel Eloquent-2021_02_15-23-50-45.docx', 159, '2021-02-16 07:50:45', '2021-02-16 07:50:45'),
(90, 'Laravel Eloquent-2021_02_15-23-50-46.docx', 159, '2021-02-16 07:50:46', '2021-02-16 07:50:46'),
(91, 'Laravel Eloquent-2021_02_15-23-53-26.docx', 159, '2021-02-16 07:53:26', '2021-02-16 07:53:26'),
(92, 'Laravel Eloquent-2021_02_15-23-55-45.docx', 159, '2021-02-16 07:55:45', '2021-02-16 07:55:45'),
(93, 'Laravel Eloquent-2021_02_16-00-36-40.docx', 160, '2021-02-16 08:36:40', '2021-02-16 08:36:40'),
(94, 'ZM CV 012721-2021_02_16-11-23-14.docx', 161, '2021-02-16 19:23:14', '2021-02-16 19:23:14'),
(95, 'ZM CV 012721-2021_02_16-12-39-24.docx', 163, '2021-02-16 20:39:24', '2021-02-16 20:39:24'),
(96, 'ZM CV 012721-2021_02_16-13-31-16.docx', 163, '2021-02-16 21:31:16', '2021-02-16 21:31:16'),
(97, 'abc-2021_03_08-00-03-41.docx', 173, '2021-03-08 08:03:41', '2021-03-08 08:03:41'),
(98, 'CA-MemberGuide-2021_03_10-15-57-04.pdf', 181, '2021-03-10 23:57:04', '2021-03-10 23:57:04'),
(99, 'LIST OF INDUSTRIES-2021_03_15-16-30-01.pdf', 52, '2021-03-15 23:30:01', '2021-03-15 23:30:01'),
(100, 'LIST OF INDUSTRIES-2021_03_15-22-41-21.pdf', 182, '2021-03-16 05:41:21', '2021-03-16 05:41:21'),
(101, 'LIST OF INDUSTRIES-2021_03_15-22-46-35.pdf', 182, '2021-03-16 05:46:35', '2021-03-16 05:46:35'),
(102, 'MyMotivz - Updates 16-03-2021-2021_03_17-07-00-17.docx', 183, '2021-03-17 14:00:17', '2021-03-17 14:00:17'),
(103, 'dummy-2021_03_17-22-29-17.pdf', 184, '2021-03-18 05:29:17', '2021-03-18 05:29:17'),
(104, 'dummy-2021_03_18-00-43-10.pdf', 188, '2021-03-18 07:43:10', '2021-03-18 07:43:10'),
(106, 'dummy-2021_03_22-07-42-54.pdf', 196, '2021-03-22 14:42:54', '2021-03-22 14:42:54'),
(107, 'testing-2021_03_22-08-30-53.docx', 197, '2021-03-22 15:30:53', '2021-03-22 15:30:53'),
(108, 'dummy-2021_03_22-08-34-13.pdf', 198, '2021-03-22 15:34:13', '2021-03-22 15:34:13'),
(109, 'dummy-2021_03_22-08-35-29.pdf', 199, '2021-03-22 15:35:29', '2021-03-22 15:35:29'),
(110, 'testing-2021_03_22-08-40-07.docx', 197, '2021-03-22 15:40:07', '2021-03-22 15:40:07'),
(111, 'MyMotivz - Updates 16-03-2021-2021_03_24-00-20-53.docx', 202, '2021-03-24 07:20:53', '2021-03-24 07:20:53'),
(112, 'MyMotivz - Updates 16-03-2021-2021_03_24-01-14-22.docx', 207, '2021-03-24 08:14:22', '2021-03-24 08:14:22'),
(113, 'MyMotivz - Updates 16-03-2021-2021_03_24-01-44-21.docx', 208, '2021-03-24 08:44:21', '2021-03-24 08:44:21'),
(114, 'MyMotivz - Updates 16-03-2021-2021_03_24-01-53-23.docx', 207, '2021-03-24 08:53:23', '2021-03-24 08:53:23'),
(115, 'testing-2021_03_24-01-54-28.docx', 197, '2021-03-24 08:54:28', '2021-03-24 08:54:28'),
(116, 'testing-2021_03_24-01-59-12.docx', 197, '2021-03-24 08:59:12', '2021-03-24 08:59:12'),
(117, 'MyMotivz 01-02-2021-2021_03_24-07-18-10.docx', 209, '2021-03-24 14:18:10', '2021-03-24 14:18:10'),
(121, 'MyMotivz - Updates 16-03-2021-2021_03_24-07-55-19.docx', 210, '2021-03-24 14:55:19', '2021-03-24 14:55:19'),
(123, 'W9 2021-2021_03_24-15-32-29.pdf', 211, '2021-03-24 22:32:29', '2021-03-24 22:32:29'),
(124, 'Physician-Medical Office Medical Director JD-2021_03_30-12-30-27.pdf', 213, '2021-03-30 19:30:27', '2021-03-30 19:30:27'),
(125, 'Lanna Cheuck-2021_03_31-16-48-44.doc', 214, '2021-03-31 23:48:44', '2021-03-31 23:48:44'),
(127, 'MyMotivz Testing-2021_04_09-01-47-02.docx', 217, '2021-04-09 08:47:02', '2021-04-09 08:47:02'),
(129, 'dummy-2021_04_13-05-47-16.pdf', 223, '2021-04-13 12:47:16', '2021-04-13 12:47:16'),
(130, 'Physician-Medical Office Medical Director JD-2021_04_14-14-16-09.pdf', 228, '2021-04-14 21:16:09', '2021-04-14 21:16:09'),
(131, 'MyMotivz - Updates 16-03-2021-2021_04_15-01-30-31.docx', 229, '2021-04-15 08:30:31', '2021-04-15 08:30:31'),
(132, 'MyMotivz - Updates 16-03-2021-2021_04_15-01-46-18.docx', 30, '2021-04-15 08:46:18', '2021-04-15 08:46:18'),
(133, 'dummy-2021_04_15-23-34-20.pdf', 231, '2021-04-16 06:34:20', '2021-04-16 06:34:20'),
(134, 'CV of Dr. Dana Keys-Frezzell-2021_04_16-19-17-37.doc', 232, '2021-04-17 02:17:37', '2021-04-17 02:17:37'),
(135, 'De Hoyos Resume 2019-2021_05_18-16-56-47.doc', 226, '2021-05-18 23:56:47', '2021-05-18 23:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_user_job`
--

CREATE TABLE `candidate_user_job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_job_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_user_job`
--

INSERT INTO `candidate_user_job` (`id`, `user_id`, `candidate_id`, `user_job_id`) VALUES
(115, 1, 33, 9),
(119, 44, 51, 9),
(132, 1, 35, 9);

-- --------------------------------------------------------

--
-- Table structure for table `career_job_notifies`
--

CREATE TABLE `career_job_notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_job_notifies`
--

INSERT INTO `career_job_notifies` (`id`, `name`, `email`, `phone`, `location`, `industry`, `job_title`, `salary_sign`, `salary`, `salary_to`, `salary_type`, `job_type`, `education_id`, `description`, `created_at`, `updated_at`, `industry_id`) VALUES
(12, 'John Loco', 'sales@ugressiv.com', '(909) 392-3232', '', '', 'Senior Physician Recruiter', '$40,000', NULL, '', '', 'Full-time', 5, 'a;ldjsfl;asjfk\r\nal;sdjf;ljsdl;fkja\r\na;lksdjfl;ajsdlf;kjda\r\najls;dfjl;aksdjkd\r\nasdfsd\r\n\r\nasdfasdf\r\na\r\nasdf\r\nasd\r\nf\r\nas\r\ndf\r\nasdf\r\nsaf\r\ns\r\ndfasdfsadf99999999999999999999999999999999', '2021-01-07 05:27:40', '2021-01-07 05:27:40', 8),
(13, 'Carlos Garcia', 'avaeqa.llc@gmail.com', '7146422797', '', '', 'Senior Physician Recruiter', '$59,000', NULL, '', '', 'Part-time', 5, 'lkjsldjgdjsfg\r\nsdlf;gjl;ksdfjgljkdsg\r\nsjldkfgj;sdgsjdfg', '2021-01-08 08:53:08', '2021-01-08 08:53:08', 4),
(14, 'Lorem Ipsum', 'testing.softenica@gmail.com', '(907) 832-238-382', '', '', 'Lorem Ipsum', '$79,000', NULL, '', '', 'Part-time', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2021-01-11 08:20:54', '2021-01-11 08:20:54', 13),
(15, 'Lorem Ipsum', 'testing.softenica@gmail.com', '(909) 382-3232', '', '', 'Lorem Ipsum', '$7,878', NULL, '', '', 'Contract', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2021-01-11 08:26:07', '2021-01-11 08:26:07', 13),
(16, 'Scarlett Good', 'testing.softenica@gmail.com', '+1 (588) 313-6929', '', '', 'Inventore exercitati', '$79,000', NULL, '', '', 'Full-time', 7, 'Aspernatur aliqua S', '2021-01-11 08:36:06', '2021-01-11 08:36:06', 19),
(17, 'Carlos Garcia', 'avaeqa.llc@gmail.com', '7146422797', '', '', 'Senior Physician Recruiter', '$59,000', NULL, '', '', 'Seasonal', 4, 'lakjsdflk;jaslkf;jasdf\r\nj\'laksdjfkl;jsld;fkj\r\nas\r\ndljfl\'asdjflkd', '2021-01-11 20:16:28', '2021-01-11 20:16:28', 6),
(18, 'Lorem Ipsum', 'hananbhatti440@gmail.com', '(892) 986-3767', '', '', 'Lorem Ipsum', '$7,878', NULL, '', '', 'Internship', 2, 'Lorem Ipsum', '2021-01-13 07:13:38', '2021-01-13 07:13:38', 14),
(19, 'Elaine Gardner', 'qyxewutep@mailinator.com', '(172) 493-6750', '', '', 'Molestias totam offi', '50000', NULL, '', '', 'Internship', 7, 'Qui sit vel consequa', '2021-01-13 07:34:26', '2021-01-13 07:34:26', 7),
(20, 'Eugenia Kinney', 'hilasiz@mailinator.com', '(142) 742-1823', '', '', 'Dolor fugit exercit', '120000', NULL, '', '', 'Seasonal', 7, 'Veniam inventore mi', '2021-01-13 07:34:55', '2021-01-13 07:34:55', 25),
(22, 'Lorem Ipsum', 'abc@xyz.com', NULL, 'ipsum', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '2021-01-20 01:57:54', '2021-01-20 01:57:54', 15),
(23, 'Lorem Ipsum', 'pehife1472@loopsnow.com', '(359) 730-9723', 'New York,USA', NULL, 'Lorem Ipsum', '$79,000', NULL, '', '', 'Part-time', 4, 'lorem ipsum', '2021-01-20 02:37:21', '2021-01-20 02:37:21', 3),
(24, 'Lorem Ipsum', 'qaz@qaq.com', '(234) 352-3553', 'New York', NULL, 'Lorem Ipsum', '$79,000', NULL, '', '', 'Part-time', 3, 'Lorem Ipsum', '2021-01-20 17:14:29', '2021-01-20 17:14:29', 2),
(25, 'Lorem Ipsum', 'mewiv97018@jentrix.com', '(234) 352-3553', 'wegwegweg', NULL, 'sefewfwefewg,weg,wegreg', NULL, '45,000', NULL, 'Per Hour', 'Seasonal', 4, 'efwge\r\nweg\r\nwe\r\ngwe\r\n\r\nwegw', '2021-02-02 14:33:43', '2021-02-02 14:33:43', 3),
(26, 'Candidate test', 'mewiv97018@jentrix.com', '(234) 352-3553', 'sdcsd', NULL, 'wefwef', '£', '45,000', NULL, 'Per Month', 'Seasonal', 3, 'ergerg\r\nreg\r\nerg\r\ner\r\nhre', '2021-02-02 14:39:17', '2021-02-02 14:39:17', 12),
(27, 'Ima Reeves', 'wutojita@mailinator.com', '(185) 361-2871', 'Sunt hic rerum possi', NULL, 'Possimus quia ut ma', '$', '500', NULL, 'Per Hour', 'Full-time', 6, 'Aliqua Nihil aliqua', '2021-04-13 13:10:53', '2021-04-13 13:10:53', 8),
(28, 'Brock Humphrey', 'qunygonyk@mailinator.com', '(160) 326-9986', 'Debitis adipisci max', NULL, 'Sit ut ut qui asper', 'C$', '500', NULL, 'Per Hour', 'Contract', 4, 'Asperiores fugiat d', '2021-04-20 07:27:40', '2021-04-20 07:27:40', 23);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_opening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment_pipeline` int(11) DEFAULT '0',
  `job_discription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `random_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `name`, `job_title`, `phone`, `email`, `city`, `state`, `web_url`, `package`, `job_opening`, `industry`, `service`, `note`, `recruitment_pipeline`, `job_discription`, `logo`, `created_at`, `updated_at`, `code`, `random_code`, `password`) VALUES
(26, 'EmblemHealth/ACPNY', 'Susan Scherr', 'Senior Physician Recruiter', '(838) 384-3212', 'tony@mymotivz.com', 'New York', 'NY', 'https://mail.google.com/mail/u/0/?tab=wm&ogbl#inbox/FMfcgxwGCHDlwjWJsjBKdmcSJmsptFDw', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2019-12-14 02:12:10', '2020-11-11 00:40:52', '', '0', NULL),
(27, 'Amen Clinics', 'Dr. Daniel Amen', 'CEO', '(949) 938-2832', 'Nathan@mymotivz.com', 'Costa Mesa', 'CA', 'https://www.amenclinics.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2019-12-14 08:45:26', '2020-11-11 00:40:52', '', '0', NULL),
(28, 'Berman Skin Institute, Inc.', 'Dr. Berman', 'President & CEO', '(818)323-3234', 'Berman@bms.com', 'Walnut Creek', 'CA', 'https://www.amenclinics.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2019-12-14 08:46:56', '2020-11-11 00:40:52', '', '0', NULL),
(29, 'Jacksonville Children\'s Multi-Specialty Medical Center', 'Dr. Madhur Mittal', 'President & Medical Director', '(709) 373-9382', 'Mittal@jcmc.com', 'Jacksonville', 'NC', 'https://www.amenclinics.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2019-12-14 08:47:45', '2020-11-11 00:40:52', '', '0', NULL),
(30, 'MyMotivz', 'Carla Munozs', 'Chief Operating Officer', '(909) 242-2732', 'Info@MyMotivz.com', 'Irvine', 'CA', 'https://www.mymotivz.com/', NULL, NULL, 'Staffing and Recruitings', NULL, NULL, 1, NULL, NULL, '2019-12-20 02:47:15', '2020-11-11 00:40:52', '', '0', NULL),
(31, 'US Dermatology Partners', 'Jeanne Cunningham', 'VP of Marketing', '(934) 343-8322', 'Jeanne@dermatologypartners.com', 'Houston', 'TX', 'https://www.usdermatologypartners.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-01-18 01:44:53', '2020-11-11 00:40:52', '', '0', NULL),
(33, 'Adelante Healthcare', 'Meredith White', 'Talent Acquisition Manager', '(384)343-2343', 'Meredith.White@adelante.com', 'Phoenix', 'AZ', 'https://adelantehealthcare.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2020-01-18 02:26:36', '2020-11-11 00:40:52', '', '0', NULL),
(34, 'UMass Memorial Health Care', 'Adriana Dietlin', 'Physician Recruiter', '(343) 34', 'Adriana.Dietlin@umassmemoria.com', 'Boston', 'MA', 'https://adelantehealthcare.com/careers/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-01-18 02:34:50', '2020-11-11 00:40:52', '', '0', NULL),
(36, 'Inova Medical Center', 'Richard Geer', 'Chairman of Pediatric', '(343) 343-4354', 'Richard@angle.com', 'Fairfax', 'VA', 'http://www.nevadamentalhealth.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-01-18 02:55:28', '2020-11-11 00:40:52', '', '0', NULL),
(39, 'DRAW FOR YOU', 'Dr. Draw Folish', 'CEO', '(939) 343-3838', 'Draw@folish.com', 'Santa Ana', 'CA', 'https://www.yahoo.com/', NULL, NULL, 'Construction', NULL, NULL, 1, NULL, NULL, '2020-04-02 02:23:11', '2020-11-11 00:40:52', '', '0', NULL),
(40, 'SavantCare', 'Mark Hemming', 'Office Manager', '(650) 392-3233', 'Br@savantcaress.com', 'San Francisco', 'CA', 'https://www.savantcare.com/', NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-04-03 01:59:13', '2020-11-11 00:40:52', '', '0', NULL),
(46, 'AstroBoy', 'Dr. Wayne', 'CEO', '7146422797', 'astroyboy@motivz.com', 'Whittier', 'CALIFORNIA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2020-06-18 15:47:26', '2020-11-11 00:40:52', '', '0', NULL),
(47, 'QC', 'Hadassah Stuart', 'Dolore enim facere v', '+1 (139) 322-4548', 'waqo@mailinator.com', 'Velit non neque est', 'Amet magni ea digni', 'http://www.example.com', NULL, NULL, 'Non sed et laboris p', NULL, NULL, 1, NULL, NULL, '2020-06-25 16:50:09', '2020-11-11 00:40:52', '', '0', NULL),
(48, 'TEST COMPANY 1', 'TESTER TEST', 'Recruiter', '9092422732', 'n8thantruong@gmail.com', 'Costa Mesa', 'VA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 1, NULL, NULL, '2020-07-02 10:53:27', '2020-11-11 00:40:52', '', '0', NULL),
(50, 'imported', 'imported', 'imported', '+1 (851) 372-8904', 'imported@gmail.com', 'City', 'State', NULL, NULL, NULL, 'Industry', NULL, NULL, NULL, NULL, NULL, '2020-07-22 08:32:47', '2020-11-11 00:40:52', '', '0', NULL),
(54, 'Colt industries', 'Colt', 'N/A', '-1', 'colt@gmail.com', 'City76', 'State123', NULL, NULL, NULL, 'industry123', NULL, NULL, 0, NULL, NULL, '2020-08-06 18:25:14', '2020-11-11 00:40:52', '', '0', NULL),
(55, 'Colt industries', 'Colt', 'N/A', '-1', 'lt@gmail.com', 'City76', 'State123', NULL, NULL, NULL, 'industry123', NULL, NULL, 0, NULL, NULL, '2020-08-06 18:29:23', '2020-11-11 00:40:52', '', '0', NULL),
(100, 'Pacific Coast Psychiatric', 'Dr. Chan', 'Hiring Manager', '-1', 'sChan@pcpasf.com', 'Los Angeles', 'CA', NULL, NULL, NULL, 'from another healthcare center', NULL, NULL, 0, NULL, NULL, '2020-08-15 13:49:18', '2020-11-11 00:40:52', '', '0', NULL),
(101, 'WellPsyche', 'Mike', 'Hiring Manager', '-1', 'MIKE@wellpsyche.com', 'Hermosa Beach', 'CA', NULL, NULL, NULL, 'from another healthcare center', NULL, NULL, 0, NULL, NULL, '2020-08-15 13:49:18', '2020-11-11 00:40:52', '', '0', NULL),
(102, 'Iris Telehealth ', 'Jeremy', 'Hiring Manager', '-1', 'Jeremy.Unger@iristelehealth.com', 'Los Angeles', 'CA', NULL, NULL, NULL, 'from another healthcare center', NULL, NULL, 0, NULL, NULL, '2020-08-15 13:49:18', '2020-11-11 00:40:52', '', '0', NULL),
(103, 'Happier Living', 'Dr. Genen', 'Hiring Manager', '-1', 'drGenen@happierliving.com', 'Hermosa Beach', 'CA', NULL, NULL, NULL, 'from another healthcare center', NULL, NULL, 0, NULL, NULL, '2020-08-15 13:49:18', '2020-11-11 00:40:52', '', '0', NULL),
(104, 'American Telepsychiatrists', 'Dr. Schaeffer', 'Psychiatrist', '-1', 'jschaeffer@atps.email', 'Los Angeles', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(105, 'Neuro Wellness Spa', 'Dr. Faynboym', 'Psychiatrist', '-1', 'drFaynboym@neurowellnessspa.com', 'Torrance', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(106, 'iConsult ', 'Sam', 'Psychiatrist', '-1', 'Sam@iconsulthc.com', 'Los Angeles', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(107, 'Shields for Familes', 'Sara', 'Psychiatrist', '-1', 'STienda@shieldsforfamilies.org', 'Los Angeles', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(108, 'Lifestance ', 'Dr. Elhaj', 'Psychiatrist', '-1', 'Omar.Elhaj@lifestance.com', 'Manhattan Beach', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(109, 'InSight', 'Dr. Alter', 'Psychiatrist', '-1', 'MAlter@cfgpc.com', 'Redondo Beach', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(110, 'UCLA', 'Dr. McCracken', 'Child Psychiatrist', '-1', 'jmccracken@mednet.ucla.edu', 'Los Angeles', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(111, 'Elysian Psychology', 'Dr. Isaacs', 'Psychiatrist', '-1', 'viechino@gmail.com', 'Los Angeles', 'CA', NULL, NULL, NULL, 'Medical & Healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-18 02:22:51', '2020-11-11 00:40:52', '', '0', NULL),
(115, 'Telecare Corp', 'Marianne', 'Behavioral Health Executive Director', '-1', 'MDoyle@telecarecorp.com', 'Oakland', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(116, 'Alameda Health', 'Dr. Abramowitz', 'Director, Behavioral and Addiction Medicine', '-1', 'sAbramowitz@alamedahealthsystem.org', 'San Leandro', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(117, 'Silicon Valley TMS', 'Dr. Shakir', 'Chief Medical Officer', '-1', 'Saad.Shakir@siliconvalleytms.com', 'San Francisco', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(118, 'HSCS', 'Dr. Brown', 'Medical Director', '-1', 'YBrown@hydestreetcs.org', 'San Francisco', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(119, 'Bay Psychiatric Associates', 'Dr. Estrada', 'Regional Medical Director', '-1', 'REstrada@baypsychiatric.com', 'San Francisco', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(120, 'Baywell Psychiatry Group', 'Corey', 'Administrator', '-1', 'Fish@baywellpsych.com', 'San Francisco', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(121, 'TMS Health', 'Dr. Bermudes', 'Chief Medical Officer', '-1', 'RBermudes@tmshealthsolutions.com', 'San Francisco', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(122, 'Vituity', 'Dr. Harman', 'Regional Director', '-1', 'Herbert.Harman@vituity.com', 'Emeryville', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-19 20:31:00', '2020-11-11 00:40:52', '', '0', NULL),
(123, 'WellPsyche', 'Michelle', 'Human Resources Recruitment Manager', '-1', 'Michelle@wellpsyche.com', 'Hermosa Beach', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-25 00:50:56', '2020-11-11 00:40:52', '', '0', NULL),
(124, 'Didi Hirsch', 'Dr. Goldfinger', 'CEO', '-1', 'JGoldfinger@didihirsch.org', 'Culver City', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-25 00:50:56', '2020-11-11 00:40:52', '', '0', NULL),
(125, 'Providence Medical', 'Dr. Ratcliff', 'Medical director', '-1', 'LRatcliff@provmedgroup.com', 'Los Angeles', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-25 00:50:56', '2020-11-11 00:40:52', '', '0', NULL),
(126, 'Metropolitan State Hospital', 'Dr. Barsom', 'Medical Director', '-1', 'Michael.Barsom@dsh.ca.gov', 'Norwalk', 'CA', NULL, NULL, NULL, 'Medical & healthcare', NULL, NULL, 0, NULL, NULL, '2020-08-25 00:50:56', '2020-11-11 00:40:52', '', '0', NULL),
(127, 'Reeves Hess Trading', 'Buckminster Perry', 'Ea magnam nemo volup', '+1 (162) 554-8161', 'baze@mailinator.com', 'Necessitatibus autem', 'Quas eos et dignissi', NULL, NULL, NULL, 'Dolores commodi eum', NULL, NULL, NULL, NULL, NULL, '2020-09-09 00:44:22', '2020-11-11 00:40:52', '', '0', NULL),
(131, '', NULL, NULL, NULL, 'bupodilaju@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 19:01:57', '2020-11-11 00:40:52', '', '0', '$2y$10$VAD3oEK4iGsgkavh0kqR0ec0qZ4D.ThPlYSwTWU7AG1O.Cnib373q'),
(132, '', NULL, NULL, NULL, 'rufur@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 21:25:19', '2020-11-11 00:40:52', '', '0', '$2y$10$JXqihXFttT3Tv4XJ/Cs3Gu3vKX6xPw4FKyrYQbj5xikegvjbHG9nq'),
(133, '', NULL, NULL, NULL, 'rulilu@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 21:26:39', '2020-11-11 00:40:52', '', '0', '$2y$10$RREQfTm2e93.jo4OfJVRoOWPGJuEucg2hZSzgq7h6/pBwl6hvwbz6'),
(134, '', NULL, NULL, NULL, 'xiri@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 21:38:35', '2020-11-11 00:40:52', '', '0', '$2y$10$JtympNo1XX.OlQqpkEzCIOWYeAyYL/FXvPpeqh0qr1sBwaGbVidZG'),
(135, '', NULL, NULL, NULL, 'qemapicoha@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 22:15:18', '2020-11-11 00:40:52', '', '0', '$2y$10$c71HPOy9GNfOY.To4tNX1.Ak6toPsf.yo7jjnp2ddXDOlLrVatxiy'),
(136, '', NULL, NULL, NULL, 'jygefyheba@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 22:20:23', '2020-11-11 00:40:52', '', '0', '$2y$10$9QzYtQPGiVvfY2xplhW0X.ExH7hMvPuc/xnt2cTR5ish7sTHKrr8m'),
(137, '', NULL, NULL, NULL, 'bepymi@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-10 22:22:17', '2020-11-11 00:40:52', '', '0', '$2y$10$XewpeizAqVyjPh/elPbqP.lhwZxHQUGZQEVhxGW5umz4zpA6Xn3c.'),
(138, '', NULL, NULL, NULL, 'mofoxyq@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-11-11 00:40:25', '2020-11-11 00:40:52', '', '0', '$2y$10$mwBAY6Xrz403vluGtaf0XOm11AqBR.WlbrYZH5BCYKtr0pERtpjFC'),
(139, 'Meyers and Wolf LLC', 'Tashya Carey', 'Repudiandae qui porr', '+1 (273) 967-9058', 'giby@mailinator.com', 'Dolore similique pla', 'Inventore tempore m', 'Consequatur quisquam', NULL, NULL, 'Enim vel lorem nostr', NULL, NULL, 0, 'Et modi et libero om', '5fb3b883460b3.jpg', '2020-11-11 01:27:41', '2020-11-16 23:48:19', '', 'A5a9Q8eFmkmWe0oS84ik', '$2y$10$sqoGFeJ1vuu208tK.ItSCOIIAdXa01Gj/UdTXWgmA150hJe64UkTu'),
(140, 'ausiiufef', 'comsouhfiw', 'uhiu', '23223323323', 'as@as.com', 'iuhiu', 'acihweuh', 'http://www.google.com', NULL, NULL, 'ihoihoih', NULL, NULL, 0, 'wefwefwefwefwefwef\r\nfweflihfw\r\nfpowihfowief\r\nwofihof', NULL, '2020-12-08 23:44:53', '2020-12-08 23:58:35', NULL, 'hqCm2aTd0AyGhT0d1SI5', '$2y$10$Pn78K10z3Ur8yTXUsLR76eu4LIqvZHbgj9SRW01oPlLx4UzX7948y');

-- --------------------------------------------------------

--
-- Table structure for table `client_notes`
--

CREATE TABLE `client_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_notes`
--

INSERT INTO `client_notes` (`id`, `description`, `client_id`, `created_at`, `updated_at`) VALUES
(2, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.2000,2000', 2, '2021-01-04 00:54:44', '2021-01-04 01:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `client_user`
--

CREATE TABLE `client_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_user`
--

INSERT INTO `client_user` (`id`, `user_id`, `client_id`) VALUES
(2, 1, 26),
(16, 1, 27),
(20, 44, 47),
(21, 1, 29),
(27, 50, 48),
(28, 53, 27),
(29, 1, 50),
(30, 1, 27),
(31, 1, 111),
(32, 54, 47),
(33, 54, 48),
(34, 54, 30),
(35, 54, 26),
(36, 54, 127);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quoted_fee` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `emails` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `client_id`, `business_address`, `business_number`, `positions`, `openings`, `quoted_fee`, `contract_file`, `status`, `emails`, `created_at`, `updated_at`) VALUES
(25, 26, 'Dolores at velit ab', '+(934) 343-8322', '44', '42', '7', 'Au-2020_04_07-14-22-20.doc', 0, '', '2020-03-20 18:51:56', '2020-04-07 21:22:20'),
(32, 26, 'Asperiores atque iru', '761', '82', '46', '87', '2019_12_05-13-07-54-Adil.pdf', 0, '', '2020-03-21 13:54:53', '2020-03-21 13:54:53'),
(34, 26, '2372 Morse Avenue, Suite 515', '(939) 382-3828', '4327', '1', '30000', '2019_12_05-13-07-54-Adil.pdf', 0, '', '2020-03-22 06:47:21', '2020-03-22 06:47:21'),
(35, 26, '12208 Valley View Avenue', '7146422797', '32', '1', '32999', '2019_12_05-13-07-54-Adil.pdf', 0, '', '2020-03-22 06:47:58', '2020-03-22 06:47:58'),
(36, 26, '128372 Test Blvd. Suite 621, Anaheim, CA 92688', '373-939-2831', '1', '3', '30000', '2019_12_05-13-07-54-Adil.pdf', 0, '', '2020-03-22 06:48:48', '2020-03-22 06:48:48'),
(37, 26, '1294 P Blvd. Suite 809, Pomona, CA 91763', '(909) 323-8388', '2', '4', '30000', 'MyMotivz3_21_2020-MyMotivz 3_21_2020.docx.docx', 0, '', '2020-03-22 06:53:06', '2020-03-22 06:53:06'),
(43, 26, 'Nam est minim paria', '3143', 'Developer', '332', '$200', '2019_12_05-13-07-54-Adil.pdf', 0, '', '2020-03-24 18:57:02', '2020-03-24 18:57:02'),
(51, 26, '2372 Morse Avenue', '7142483223', 'Family Medicine Physician', '4', '$30,000', 'TERMSOFENGAGEMENT-REVISED01_25_2019-2020_03_26-19-28-06.pdf', 0, '', '2020-03-27 02:28:06', '2020-03-27 02:28:06'),
(52, 27, '3150 Bristol St #400, Costa Mesa, CA 92626', '(949) 938-3822', 'Child Psychiatrist', '10', '$40,000', 'TERMSOFENGAGEMENTREVISED(INOVA-REVISED)-2020_03_26-19-30-27.pdf', 0, '', '2020-03-27 02:30:27', '2020-03-27 02:30:27'),
(67, 26, '12208 Valley View Avenue', '7146422797', 'Director of Construction', '5', '$30,000', 'TERMSOFENGAGEMENTREVISED(INOVA-REVISED)-2020_03_27-18-03-14.pdf', 0, 'Nathan@mymotivz.com,Info@mymotivz.com', '2020-03-28 01:03:14', '2020-03-28 01:03:14'),
(68, 26, '300 West 2nd St.', '(383)838-3888', '2', '3', '$90,000', 'CVofDr.SummerP.Savon(2)-2020_04_01-19-19-06.pdf', 0, 'nathan@mymotivz.com', '2020-04-02 02:19:06', '2020-04-02 02:19:06'),
(69, 26, '300 West 2nd St.', '(383)838-3888', '2', '3', '$90,000', 'CVofDr.SummerP.Savon(2)-2020_04_01-19-19-09.pdf', 0, 'nathan@mymotivz.com', '2020-04-02 02:19:09', '2020-04-02 02:19:09'),
(70, 39, '433 Enclave Cir', '(929)388-3222', 'Director of Construction', '4', '$59,000', 'Au-2020_04_03-14-51-13.doc', 1, 'nathan@mymotivz.com,Tony@mymotivz.com', '2020-04-02 02:25:04', '2020-04-03 21:51:13'),
(73, 111, '1900 Soula Blvd. Anaheim, CA 92899', '909-242-3900', 'Psychologist', '1', '$30,000', 'CVofDr.JuanDeHoyos-2020_08_17-19-28-39.pdf', 0, 'nathan@mymotivz.com,viechino@gmail.com', '2020-08-18 02:28:39', '2020-08-18 02:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Australia', '2021-02-11 14:26:29', '2021-02-11 14:26:34'),
(2, 'Canada', NULL, NULL),
(3, 'United Kingdom', NULL, NULL),
(4, 'United States', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'High School Diploma', NULL, NULL),
(2, 'GED or Equivalent', NULL, NULL),
(3, 'Some College', NULL, NULL),
(4, 'Associate’s Degree', NULL, NULL),
(5, 'Bachelor’s Degree', NULL, NULL),
(6, 'Master’s Degree', NULL, NULL),
(7, 'Doctorate’s Degree', NULL, NULL),
(14, 'PhD', '2019-12-19 04:47:40', '2019-12-19 04:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_jobs`
--

CREATE TABLE `favourite_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_jobs`
--

INSERT INTO `favourite_jobs` (`id`, `candidate_id`, `job_id`, `created_at`, `updated_at`) VALUES
(142, 223, 52, '2021-04-13 12:47:04', '2021-04-13 12:47:04'),
(155, 30, 94, '2021-05-20 14:27:55', '2021-05-20 14:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `find__talent`
--

CREATE TABLE `find__talent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sel_service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `find__talent`
--

INSERT INTO `find__talent` (`id`, `name`, `title`, `company`, `industry`, `email`, `contact`, `position`, `job_desc`, `sel_service`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Hanan', 'CRUD Laravel', 'oihoihoi', 'Software', 'root@yahoo.com', '+92343523553', 'Associate Network Engineer', 'dhedrherherherh\r\ndhedrherherherhdhedrherherherh\r\ndhedrherherherhdhedrherherherhdhedrherherherh', 'Short-term', '2020-12-21 06:40:48', '2020-12-21 06:40:48'),
(2, 'Abdul Hanan', 'CRUD Laravel', 'oihoihoi', 'Software', 'hananbhatti860@yahoo.com', '+92343523553', 'Associate Network Engineer', 'thtrhrthrt\r\nhrthrthrthrtthtrhrthrt\r\nhrthrthrthrt', 'Direct', '2020-12-21 06:44:39', '2020-12-21 06:44:39'),
(4, 'Abdul Hanan', 'CRUD Laravel', 'oihoihoi', 'Software', 'abc@yahoo.com', '+92343523553', 'Associate EXAD Engineer', 'dberjpojp\r\nthtrhrthrt\r\nhrthrthrthrt', 'Contract', '2020-12-21 06:46:37', '2020-12-21 06:46:37'),
(5, 'Denise Peck', 'Odit harum quis cons', 'Ingram Barber Associates', 'Sit in autem et perf', 'vyfovix@mailinator.com', '+923134095321', 'Quia unde quod conse', 'Velit ut vel dolor q', 'Short-term', '2021-01-05 11:47:00', '2021-01-05 11:47:00'),
(6, 'Lorem Ipsum', 'LoreIpsum', 'Lorem Ipsum', 'Lorem Ipsum', 'lorem@ipsum.com', '+9212121212', 'Associate Network Engineer', 'Lorem Ipsume', 'Short-term', '2021-01-05 12:39:18', '2021-01-05 12:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aerospace & Defense', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(2, 'Agriculture ', '2020-12-24 18:19:58', '2020-12-24 18:19:58'),
(3, 'Arts, Entertainment & Recreation', '2020-12-24 18:19:58', '2020-12-24 18:19:58'),
(4, 'Automotive ', '2020-12-24 18:19:58', '2020-12-24 18:19:58'),
(6, 'Education ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(7, 'Energy, Mining & Utilities', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(8, 'Financial Services ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(9, 'Government & Public Administration ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(10, 'Health Care ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(11, 'Hotels & Travel Accommodation', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(12, 'Human Resources & Staffing', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(13, 'Information Technology ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(14, 'Insurance ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(15, 'Legal', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(16, 'Management & Consulting', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(17, 'Manufacturing ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(18, 'Media & Communication ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(19, 'Non-Profit & NGO', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(20, 'Personal Consumer Services ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(21, 'Pharmaceuticals & Biotechnology', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(22, 'Real Estate', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(23, 'Restaurants & Food Service', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(24, 'Retail & Wholesale', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(25, 'Telecommunications ', '2020-12-24 18:19:59', '2020-12-24 18:19:59'),
(26, 'Transportation & Logistics', '2021-01-01 08:00:00', '2021-01-01 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `interview_stages`
--

CREATE TABLE `interview_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interview_stages`
--

INSERT INTO `interview_stages` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(6, 'stage_2', '#00ff00', '2020-01-13 16:15:09', '2020-01-13 17:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `interview_statuses`
--

CREATE TABLE `interview_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interview_statuses`
--

INSERT INTO `interview_statuses` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'status', '#400040', '2020-01-03 11:12:55', '2020-01-13 17:30:47'),
(2, 'status_2', '#000000', '2020-01-06 22:43:02', '2020-01-07 17:55:50'),
(3, '2nd Phone Interview', '#955960', '2020-01-07 01:35:50', '2020-01-07 01:35:50'),
(4, '3rd Interview', '#008f00', '2020-01-07 01:36:17', '2020-01-07 01:36:17'),
(5, 'nterview', '#4a8f71', '2020-01-07 01:36:29', '2020-01-07 01:36:29'),
(6, 'eerview', '#800080', '2020-01-07 01:36:53', '2020-01-07 17:47:08'),
(7, 'view', '#9a0007', '2020-01-07 01:37:08', '2020-01-07 01:37:08'),
(8, 'interview_status', '#400040', '2020-01-13 16:26:41', '2020-01-13 16:26:41'),
(9, 'some_status', '#000000', '2020-01-13 16:27:44', '2020-01-13 16:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pipeline_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jobtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment_pipeline` int(11) DEFAULT NULL,
  `job_discription` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `pipeline_id`, `jobtitle`, `city`, `state`, `web_url`, `package`, `industry`, `service`, `recruitment_pipeline`, `job_discription`, `created_at`, `updated_at`, `client_id`, `address`, `candidate_id`) VALUES
(17, NULL, 'Cardiologist', 'Jacksonville', 'NC', 'https://www.emblemhealth.com/', '$230,000', 'Medical & Healthcare', 'Direct', 0, '<p>&nbsp;</p>', '2019-12-14 08:58:33', '2020-03-28 01:31:34', 29, NULL, NULL),
(18, NULL, 'Psychiatrist', 'Jacksonville', 'NC', 'https://www.emblemhealth.com/', '$300,000', 'Medical & Healthcare', 'Direct', 1, '<p>&nbsp;</p>', '2019-12-14 08:58:57', '2019-12-14 08:58:57', 29, NULL, NULL),
(19, NULL, 'Psychiatrist (Walnut Creek)', 'Walnut Creek', 'CA', 'https://www.emblemhealth.com/', '$450,000', 'Medical & Healthcare', 'Direct', 1, '<p>&nbsp;</p>', '2019-12-14 09:00:15', '2020-01-02 19:01:44', 27, NULL, NULL),
(20, NULL, 'Psychiatrist (Los Angeles)', 'Los Angeles', 'CA', 'https://www.emblemhealth.com/', '$450,000', 'Medical & Healthcare', 'Direct', 0, '<p>&nbsp;</p>', '2019-12-14 09:00:43', '2019-12-14 09:01:36', 27, NULL, NULL),
(21, NULL, 'Director of Marketing', 'Costa Mesa', 'CA', NULL, '$130,000', 'Staffing & Recruiting', 'Direct', 1, '<p>ajsdlfkjasdlkfjls;flasdkfj</p><p>asdlfjasl;dfjlsdjflds;f</p><p>asjdflkjsdlfjsldjfl;asdlfjsd</p><p>asdfjals;djfsdjflkasjdf</p>', '2019-12-20 03:04:39', '2020-01-02 23:01:42', 27, NULL, NULL),
(22, NULL, 'Endocrinologist', 'Pomona', 'CA', NULL, '$300,000', 'Medical & Healthcare', 'Direct', 1, '<p>&nbsp;</p>', '2020-01-18 03:02:18', '2020-01-18 03:02:18', 27, NULL, NULL),
(23, NULL, 'Dermatologist', 'Las Vegas', 'NV', NULL, '$450,000', 'Medical & Healthcare', 'Direct', 1, '<p>&nbsp;</p>', '2020-01-18 03:02:41', '2020-01-18 03:02:41', 27, NULL, NULL),
(25, 53, 'Medical Director', 'Costa Mesa', 'CA', NULL, '$500,000', 'Medical & Healthcare', 'Direct', 0, '<p>&nbsp;</p>', '2020-01-18 03:03:33', '2020-07-06 02:48:54', 27, NULL, NULL),
(29, 54, 'Family Medicine Physician', 'New York', 'NY', 'https://www.emblemhealth.com/', '$300,000', 'Medical & Healthcare', 'Direct', 0, '<p>asdfasf</p><p>&nbsp;</p><p>asdfasdfasf</p>', '2020-02-25 04:53:14', '2020-09-07 04:27:08', 26, NULL, NULL),
(30, 1, 'Urologist', 'New York', 'NY', 'https://www.sheppardpratt.org/why-sheppard-pratt/our-experts/details/silvio-saidemberg-md/', 'up to $450,000', 'Medical & Healthcare', 'Direct', 1, '<p>alsjdflajsflksaf</p><p>asflkjaslfjlaks;djfl;kajsdf</p><p>asl;djfl;asjdfljalskdjf</p><p>aslkd;fjla;sjdfljsadflsda;fj</p><p>asdklfjals;djflasjdflja</p><p>a;sjdfl;ajsdlfja;</p>', '2020-02-25 07:46:12', '2020-02-25 07:46:12', 26, NULL, NULL),
(34, 1, 'Endocrinologist', 'Walnut Creek', 'New York', 'https://www.emblemhealth.com/', 'up to $450,000', 'Medical & Healthcare', 'Direct', 1, '<p>&nbsp;</p>', '2020-05-19 04:28:28', '2020-06-26 01:05:31', 29, NULL, NULL),
(48, 44, 'Rerum laborum Vitae', 'Ut accusantium volup', 'Tempora nesciunt ea', NULL, 'Molestiae aute cum a', 'Tempora numquam dolo', 'Direct', 1, '<p>&nbsp;</p>', '2020-06-25 16:56:28', '2020-06-25 16:56:28', 47, NULL, NULL),
(50, 50, 'EMT Director', 'Westminster', 'CA', NULL, '$500,000', 'Medical & Healthcare', 'Direct', 1, '<p>f;aj;slfj;lajsf;lasljf;lsadjf</p><p>a;sldjfadsjfjasldjf</p>', '2020-07-02 10:54:23', '2020-07-02 10:54:23', 48, NULL, NULL),
(77, 1, 'Artist', 'City76', 'State231', NULL, '341', 'industry123', 'Direct', 1, '<p>bgjmnsxdfjhnzsdgj fghsdfg</p>', '2020-07-30 17:54:57', '2020-07-30 18:01:42', 50, NULL, NULL),
(78, NULL, 'Artist', 'City76', 'State231', NULL, '341', 'industry123', 'N/A', 0, 'bgjmnsxdfjhnzsdgj fghsdfg', '2020-07-30 18:03:41', '2020-07-30 18:03:41', 50, NULL, NULL),
(79, NULL, 'Artist', 'City76', 'State231', NULL, '341', 'industry123', 'N/A', 0, 'bgjmnsxdfjhnzsdgj fghsdfg', '2020-08-19 20:20:14', '2020-08-19 20:20:14', 50, NULL, NULL),
(80, NULL, 'Artist', 'City76', 'State231', NULL, '341', 'industry123', 'N/A', 0, 'bgjmnsxdfjhnzsdgj fghsdfg', '2020-08-19 20:20:14', '2020-08-19 20:20:14', 50, NULL, NULL),
(81, NULL, 'Artist', 'City76', 'State231', NULL, '341', 'industry123', 'N/A', 0, 'bgjmnsxdfjhnzsdgj fghsdfg', '2020-08-19 20:20:30', '2020-08-19 20:20:30', 50, NULL, NULL),
(84, NULL, 'Neque atque perspici', 'Eiusmod dolor ullamc', 'Inventore maiores du', 'http://www.example.com', '1200000', 'Ut in quam voluptate', NULL, NULL, 'Ad nemo similique do', '2020-11-17 00:30:08', '2020-11-17 00:32:08', 139, NULL, NULL),
(85, NULL, 'Neque atque perspici', 'Eiusmod dolor ullamc', 'Inventore maiores du', 'http://www.example.com', '1200000', 'Ut in quam voluptate', NULL, NULL, 'Ad nemo similique do', '2020-11-17 02:00:08', '2020-11-17 00:32:08', 139, NULL, NULL),
(86, NULL, 'Sint expedita placea', 'Molestias reiciendis', 'Unde in hic ipsum ve', 'http://www.example.com', 'Consequatur Reprehe', 'Ipsam amet unde mol', NULL, NULL, 'Nostrum eaque conseq', '2020-11-17 02:31:55', '2020-11-17 02:31:55', 139, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_notifies`
--

CREATE TABLE `job_notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_notifies`
--

INSERT INTO `job_notifies` (`id`, `name`, `email`, `location`, `job_title`, `industry_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum', 'lorem@ipsum.com', 'iwoheo,weofiweoifh', 'lorem,ipsum', 10, '2021-01-20 17:12:59', '2021-01-20 17:12:59'),
(2, 'Lorem Ipsum', 'pehife1472@loopsnow.com', 'lore', 'lorem,ipsum', 14, '2021-01-21 10:49:41', '2021-01-21 10:49:41'),
(3, 'Orson Hansen', 'testing@softenica.com', 'UK', 'it', 13, '2021-01-22 08:43:24', '2021-01-22 08:43:24'),
(4, 'Nathan N Truong', 'wonderfiverr223@gmail.com', 'Santa Monica, CA, USA', 'ICU Physician,Primary Care', 2, '2021-04-30 20:53:52', '2021-04-30 20:53:52');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_13_134036_create_jobs_table', 1),
(5, '2019_11_14_115808_create_notes_table', 2),
(11, '2019_11_14_091813_create_clients_table', 3),
(12, '2019_11_21_080722_create_candidates_table', 3),
(13, '2019_11_23_090712_create_statuses_table', 3),
(14, '2019_11_23_094718_update_candidates_table', 4),
(15, '2019_11_25_093420_add_candidate_id_in_table', 5),
(16, '2019_11_26_093729_update_description_column_type_in_job_table', 6),
(17, '2019_12_05_123644_create_resumes_table', 7),
(18, '2019_12_09_122400_add_column_reminder_in_statuses_table', 8),
(19, '2019_12_11_073147_add_job_id_in_candidates_table', 9),
(20, '2019_12_11_094940_add_column_candidate_id_in_jobs_table', 10),
(21, '2020_02_27_130419_create_schedule_interviews_table', 11),
(22, '2020_02_28_061210_create_receiver_emails_table', 12),
(23, '2020_03_04_061010_create_contracts_table', 13),
(24, '2020_03_11_104844_create_placements_table', 14),
(25, '2019_12_11_094940_add_column_recruiter_id_in_placements_table', 15),
(26, '2020_04_10_105155_create_todo_actions_table', 16),
(27, '2020_04_10_103746_create_todos_table', 17),
(29, '2020_05_06_063416_new_col_users', 18),
(30, '2020_05_06_070036_create_privileges_table', 19),
(32, '2020_05_06_070025_admin_privileges', 20),
(33, '2020_05_15_081312_add_col_admin', 21),
(34, '2020_05_22_054432_edit_tabels', 22),
(35, '2020_05_22_065813_admin_colum_all_database', 23),
(36, '2020_06_08_054156_create_client_pipelines_table', 24),
(37, '2020_06_08_061531_client_user', 25),
(38, '2020_06_08_102113_job_user', 26),
(40, '2020_06_08_130722_add_user_id_job', 27),
(41, '2020_06_09_062444_add_user_id_candidate_job', 28),
(42, '2020_06_25_061515_add_status_icon', 29),
(43, '2020_09_07_061046_create_notifications_table', 30),
(44, '2020_11_26_065242_new_col_candidates', 31),
(45, '2020_11_26_234709_add_new_col_candidates', 32),
(46, '2020_11_28_055831_create_favourite_jobs_table', 33),
(47, '2020_12_02_005338_create_user_jobs_table', 34),
(48, '2020_12_02_024433_add_new_col_user_jobs', 35),
(49, '2020_12_02_043541_add_col_user_jobs', 36),
(50, '2020_12_02_063313_new_col_user_job', 37),
(51, '2020_12_03_045241_create_applied__jobs_table', 38),
(52, '2020_12_04_064031_create_new_job_notifies_table', 39),
(53, '2020_12_08_054409_create_candidate_resumes_table', 40),
(54, '2020_12_08_062501_create_new_candidates_table', 41),
(55, '2020_12_10_031738_create_new__clients_table', 42),
(56, '2020_12_23_031514_create_col_new_candidate_table', 43),
(57, '2020_12_24_021109_create_industries_table', 44),
(58, '2020_12_24_043724_create_update_col_new_candidates', 45),
(59, '2020_12_24_045149_create_update_col_new_job_notifies', 46),
(60, '2020_12_24_050357_create_update_col_new_client', 47),
(61, '2020_12_29_065953_create_recruitment_services_table', 48),
(62, '2021_01_20_220131_create_job_notifies_table', 49);

-- --------------------------------------------------------

--
-- Table structure for table `new_candidates`
--

CREATE TABLE `new_candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci,
  `certifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prof_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_summary` longtext COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `random_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verify` int(11) NOT NULL DEFAULT '0',
  `career_dev` int(11) NOT NULL DEFAULT '0',
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `is_completed` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_candidates`
--

INSERT INTO `new_candidates` (`id`, `name`, `job_title`, `phone`, `email`, `city`, `state`, `location`, `linkedin_url`, `salary_sign`, `salary`, `salary_to`, `salary_type`, `skills`, `certifications`, `interest`, `experience`, `color`, `prof_image`, `auth_status`, `prof_summary`, `password`, `code`, `random_code`, `job_type`, `education_id`, `job_id`, `created_at`, `updated_at`, `email_verify`, `career_dev`, `status_id`, `industry_id`, `deleted`, `is_completed`) VALUES
(7, 'Zain Waheed', 'Developer', '097086890', 'zain.waheed.softenica@gmail.com', 'sdasd', 'asdasd', '', '', '', '231', '', '', 'asds,fasf,sfasf', '', 'dgsdgd', '1 Year', NULL, 'slide-images1-2020_12_14-01-47-40.jpg', '', 'fhgsdhghfdghfdgfdssdf', '$2y$10$NP6Fe9T/N6i73gDWVkfI2OlLM9p5.bvo4RfyOuSGSV/abGTEy2p56', '', 'UVIsVhZo0Eh8bBQoTzvQ', 'Full-time', 2, NULL, '2020-12-11 15:19:05', '2021-01-13 08:18:01', 0, 1, NULL, NULL, 0, 0),
(13, '', NULL, NULL, 'faiqanaveed000@gmail.cm', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$Q.oEuFV2IwRHbHLeexgQc.Z/ddnJqj3Eb9TEGPsnWSni7NYbFWsN.', 'liAB1', 'mlGHiJPqDM8u4FvLzPCL', NULL, NULL, NULL, '2020-12-17 09:44:28', '2020-12-17 09:44:28', 0, 0, NULL, NULL, 0, 0),
(14, '', NULL, NULL, 'faiqanaveed000@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$HvW0ZBi/jVrFqbnIh6RFkuVQdCAxB5ksSB17bvGXS6uIXlr2U.NNq', 'PrG1P', 'guH0DxNN70e9XjluvpNE', NULL, NULL, NULL, '2020-12-17 09:46:51', '2020-12-17 09:54:58', 0, 0, NULL, NULL, 0, 0),
(15, '', NULL, NULL, 'qvuziaqxgeitcmbath@kiabws.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$E7G.liShT.Kb3jhO.C6bq.tnQZeuWEvJuHPRi/q12NKbjCxodsM/S', '', '', NULL, NULL, NULL, '2020-12-17 09:59:12', '2020-12-17 09:59:28', 0, 0, NULL, NULL, 0, 0),
(16, 'Fleur Burton', 'Anim dolore modi vit', '12345678', 'hktestingemail@gmail.com', 'Temporibus et amet', 'Voluptas porro rem l', '', '', '', '6000', '', '', 'Neque adipisicing no', '', 'Lorem fugiat deserun', '6 Year', NULL, 'food-2020_12_17-02-51-13.jpg', '', 'Voluptatum dolores v', '$2y$10$03VCvW53K1Y.q/0sPW.Jgu32gbeYJiAJ3RoxEq6ExQ4Wn.yQ9OmRO', '', 'y0IuMyhsE28SoJqvfyyB', 'Contract', 2, NULL, '2020-12-17 10:41:36', '2020-12-17 11:04:35', 0, 0, NULL, NULL, 0, 0),
(25, 'Carlos Garcia', 'TEST', '7146422797', 'ricky.deluca1852@gmail.com', 'Whittier', 'CALIFORNIA', '', '', '', '500000', '', '', 'asdf,asdfsd', '', 'Wonder', '4 Year', NULL, 'Screen Shot 2020-03-03 at 3.04.07 PM-2020_12_19-13-38-57.png', '', 'a;lajlsdfajsdflkjsdkfj;alsdjfasf', '$2y$10$CI2iu4MebyshRwMtZ7qT5eO7wqsOiFN9thwxWf0X3nJz2ZdZ7zPUu', '', 'Ym2lAmQD4dx8D5EgR1eu', 'Part-time', 5, NULL, '2020-12-18 19:54:33', '2020-12-19 23:10:07', 1, 1, NULL, NULL, 0, 0),
(26, '', NULL, NULL, 'Nathantruong49@yahoo.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$iePBDyD7KFIGED.nYmXd6.UAiO8ZZAs0rqUDGbMiv5vuLODibwCs.', '7QIbI', 'JOhbffdWUrlrcHBSchvf', NULL, NULL, NULL, '2020-12-19 23:40:14', '2020-12-19 23:40:14', 0, 0, NULL, NULL, 0, 0),
(27, '', NULL, NULL, 'n8thantruong@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$9M9YRz25prnFklZMZtghceszqxNjxKtOeSbZ/IV44YHmIGbtHGlsm', 'LB5UN', 'QjaG19cUiRBlFo30uA5P', NULL, NULL, NULL, '2020-12-19 23:54:05', '2021-01-13 07:04:41', 1, 0, NULL, NULL, 0, 0),
(29, '', NULL, NULL, 'Nathan@MyMotivz.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$ijGqFNdvCdsdHpNOPo9DGO00.at4L0cU8VdZE/Uywj5mBW.Cc0Yk.', 'EOqGc', 'RCURrrw36SQ2dEfUAT37', NULL, NULL, NULL, '2020-12-29 07:12:44', '2020-12-29 07:12:44', 0, 0, NULL, NULL, 0, 0),
(30, 'Lorem Ipsum', 'Lorem Ipsum,Ipsum Lorem,dfdf,qwe,sdf,sdfsdf,sdfs', '(234) 352-3553', 'qaz@qaq.com', NULL, NULL, 'New York, NY, USA', 'http://www.google.com', '£', '45,500', '45,5000', 'Per Year', 'eiwfw,eiwehgwe,gpjweoghew,gwepghwehg', 'ewfiwhe,weghioweghew,gwehgihwe', 'dfuver,gerkjjgeg,gerkgbre,rgebg,egobnergv', 'Entry Level', NULL, 'download-2021_04_22-06-08-46.jpg', 'I am authorized to work in the U.S for any employer', 'xfgdgdr', '$2y$10$5kggCY3hPps02DOAkYr37ekuAQDe..TOprwOiQyItez6finrotM/S', '', '', 'Internship', 2, NULL, '2020-12-29 09:00:04', '2021-05-20 13:43:08', 0, 1, NULL, 3, 0, 1),
(32, '', NULL, NULL, 'bobsocial2020@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$utTK2MqANwDbXaS11kQ9wewR0Woy.h54yz.FSdKds5cUk85HzwABW', '', 'PKwu6IPZxQkE8JGvsYIg', NULL, NULL, NULL, '2020-12-29 21:58:02', '2020-12-30 08:19:16', 1, 1, NULL, NULL, 0, 0),
(34, 'Candidate test', 'Lorem Ipsum', '(234) 352-3553', 'uykctmiuutrgfewrlb@niwghx.com', NULL, NULL, 'New York, NY, USA', '', '', NULL, '', '', 'lorem', 'lorem ipsun', NULL, 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$vZ5yFbIzfkKobdo/4i5gQOYp5UZFN2coGFc15jr9fhFs7wnYYczoe', '', 'nIErXL7cByTb3pcKLuC6', 'Contract', 2, NULL, '2020-12-30 06:39:59', '2021-01-17 21:17:01', 1, 0, NULL, 15, 0, 0),
(35, '', NULL, NULL, 'xidolif328@nonicamy.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$HND1de2yOls81.Qv6Vl5IeuPZy0QeNncuUCulBVTVnyLfGMD9GKg6', 'uHoQ1', '5CIzYG4iLPnc22jVo7jP', NULL, NULL, NULL, '2020-12-30 15:49:31', '2020-12-30 15:49:31', 0, 0, NULL, NULL, 0, 0),
(36, 'Lorem Ipsum', 'Lorem Ipsum', '(348) 969-8698', 'reter61761@nonicamy.com', NULL, NULL, 'New York', '', 'C$', '45,000', '', 'Per Month', 'lorem', 'ipsum', 'lorem', 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$vZ5yFbIzfkKobdo/4i5gQOYp5UZFN2coGFc15jr9fhFs7wnYYczoe', '', '', 'Part-time', 4, NULL, '2020-12-30 15:52:14', '2021-01-19 17:23:25', 0, 1, NULL, 2, 0, 0),
(37, '', NULL, NULL, 'kucy@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$dvDi.7lcsM35S/4AS8ptuuyOjWjZNS0k2Hw9Zmg3EgPfV5plTQJay', '0wJBz', 'uEutsWdjYDLNBoKjCvgT', NULL, NULL, NULL, '2020-12-31 11:25:23', '2020-12-31 11:25:23', 0, 0, NULL, NULL, 0, 0),
(38, '', NULL, NULL, 'mujinuhiv@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$wVCc/V8kwXYYNOh9MmzLketqFP3CSHlJSrD0rKLH7Ypir3YuVGVLK', '5zEvd', 'yU4W7Ru9CPUcJjMFS569', NULL, NULL, NULL, '2020-12-31 11:28:13', '2020-12-31 11:28:13', 0, 0, NULL, NULL, 0, 0),
(39, '', NULL, NULL, 'takocy@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$34qHSDCLQNm1SdOyexckGOr5PJPo27Yjg6cheNQ2PM56LcgeY2zmC', 'S94Ji', 'AO7KMGNUB7YP8nr5XSKY', NULL, NULL, NULL, '2020-12-31 11:30:39', '2020-12-31 11:30:39', 0, 0, NULL, NULL, 0, 0),
(40, '', NULL, NULL, 'wohubyvu@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$IU3Ctik51Jt0aL9SiOmH/OLbvTyLOAvpThV7AglISpziaO12s/YTm', 'Pd8WE', 'OoZR00HTGWSdCxBPfWe0', NULL, NULL, NULL, '2020-12-31 11:31:02', '2020-12-31 11:31:02', 0, 0, NULL, NULL, 0, 0),
(41, '', NULL, NULL, 'text@mail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$KHPdDLdy4/mAJMZWbD.3zueuyucwwyC3dvRTcLgLHOtfx017Lm1LK', '3tiWA', 'PbkD3cUeJBixWG5Xe6OJ', NULL, NULL, NULL, '2020-12-31 12:37:35', '2020-12-31 12:37:35', 0, 0, NULL, NULL, 0, 0),
(42, '', NULL, NULL, 'abcdefg@mail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$VguPSu4XzGv.xt84gUTpvOutBipqHXdIiK.u1s/xGuC908wHycnd6', 'Ra86l', '9QHHv53QIaCpzidiJn0m', NULL, NULL, NULL, '2020-12-31 12:45:02', '2020-12-31 12:45:02', 0, 0, NULL, NULL, 0, 0),
(43, 'Lorem Ipsum', 'Lorem Ipsum', '(234) 352-3553', 'tahoce@mailinator.com', NULL, NULL, 'NewYork', '', '€', '45,000', '45,001', 'Per Month', 'lorem', 'ipsum', NULL, 'Directorship', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$vZ5yFbIzfkKobdo/4i5gQOYp5UZFN2coGFc15jr9fhFs7wnYYczoe', '', 'DXckiYy4rasib3ihRPih', 'Contract', 2, NULL, '2021-01-01 07:10:08', '2021-01-19 17:34:41', 0, 1, NULL, 2, 0, 0),
(44, '', NULL, NULL, 'hagebi2227@cocyo.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$1/OmgGbERMcXxy/zDBkrWuSUpzDRi3Eo5Hl349C5Tcc5lWLXLf422', 'LWFqx', '0vuIUsBwLcOGS0psfU1e', NULL, NULL, NULL, '2021-01-04 07:58:26', '2021-01-04 07:58:26', 0, 0, NULL, NULL, 0, 0),
(45, '', NULL, NULL, 'janolir629@liaphoto.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$iwg6j7KyoS.Vp41cOEpw2OLjD7GXDhsfIMTgDg2AztJeqjilYr3B.', 'LxHyR', '8ERM69phgk0CFzla1LPV', NULL, NULL, NULL, '2021-01-04 08:01:00', '2021-01-04 08:01:00', 0, 0, NULL, NULL, 0, 0),
(46, '', NULL, NULL, 'keweki4791@girtipo.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$0fKG9bVsjwtJAk04ruO3su3lBH.wU7iVGarK3aIdoONebkSkWzXv2', 'jlL9K', 'KYKuE5DikHqHymQPSlMP', NULL, NULL, NULL, '2021-01-04 08:02:11', '2021-01-04 08:02:11', 0, 0, NULL, NULL, 0, 0),
(47, '', NULL, NULL, 'admin@mymotivz.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$1ve8ATmWUEru/Un5OxzEHOd.75kZvZM7g5fVgfyzbu5snYmmGzvGy', 'q3To4', 'I8e8Z26Hr3qix1vBEXyz', NULL, NULL, NULL, '2021-01-04 10:11:28', '2021-01-04 10:11:28', 0, 0, NULL, NULL, 0, 0),
(48, '', NULL, NULL, 'sales@ugressiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$LTlDcKya/FoogRNWtfm7KeFKgpS4oef3rWbgVnZWqGDmQgXLGIzlS', '', '', NULL, NULL, NULL, '2021-01-07 05:22:20', '2021-01-07 05:23:29', 0, 1, NULL, NULL, 0, 0),
(49, '', NULL, NULL, 'info@ugressiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$kSPbRZNY/JLu0oUwCMllF.gvKMSQOKZYivX3ga7GLp3HiSrYJPMe2', '42Dg9', 'dzxHNIRVxM3BSLGykwsl', NULL, NULL, NULL, '2021-01-07 05:22:47', '2021-01-07 05:22:47', 0, 0, NULL, NULL, 0, 0),
(50, '', NULL, NULL, 'asdfeeee09@yahoo.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$DVezPnwc63.Pp.Merhwtq.6qBHFyFsXtEXfFMCs3d4tv5ZbTVBoOa', 'owOgp', 'Jts3X8qWjCK2Bf4i9mBf', NULL, NULL, NULL, '2021-01-07 05:31:04', '2021-01-07 05:31:04', 0, 0, NULL, NULL, 0, 0),
(51, '', NULL, NULL, 'won3jklj@yahoo.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$M.Wn5dFGsRZQzLZ4C3p2Seu7ZJTsZhc3e8a8LnF3wXkVbu4eqYXPW', 'f93Pd', 'pOML2hHL7yoY36M4zdBI', NULL, NULL, NULL, '2021-01-09 02:42:41', '2021-01-09 02:42:41', 0, 0, NULL, NULL, 0, 0),
(52, 'Carlos Garcia', 'power,yioj,hkjhkjh', '(714) 642-2797', 'kimloanthihuynh1966@gmail.com', NULL, NULL, 'Santa Ana', '', '', '130000', NULL, 'Per Hour', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Managerial', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$wszb6vBtqrAafB9YSjXgc.EaNtBvFUhpSdY7gDd6IsErdU8cPXOEe', '', '', 'Part-time', 4, NULL, '2021-01-13 07:09:28', '2021-03-16 00:31:58', 0, 1, NULL, 4, 0, 0),
(53, 'Lorem Ipsum', 'Lorem Ipsum', '(234) 352-3553', 'hananbhatti110@gmail.com', NULL, NULL, 'New York', '', '€', '21,909', '', 'Per Month', 'lorem,ipsume', 'lorem', 'ipsum,lorem', 'Managerial', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$yA1.2NeigGUoWoH69wyaoOek9UPPON.Q2A0rorRyVTrm1ZkuCZlA6', '', '', 'Seasonal', 3, NULL, '2021-01-13 15:04:26', '2021-01-19 18:28:55', 0, 1, NULL, 2, 0, 0),
(55, '', NULL, NULL, 'gawomilima@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$jcRuca/D2U3Htq3sCkL3MObwhBR0sp5rgwSm5924FGbAKzpkbFEOe', 'hgFA4', 'yonYmwgpNQM4IbqY3Ry1', NULL, NULL, NULL, '2021-01-13 15:11:57', '2021-01-13 15:11:57', 0, 0, NULL, NULL, 0, 0),
(57, '', NULL, NULL, 'pihapi4759@vss6.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$ZL7xRO9GHdnlvtqRgASzAuH049Qt1mA4Os1Vav6bpqz0bmpUEtUG6', '0gl05', 'oOg1rH13ys9D4GOgxWWc', NULL, NULL, NULL, '2021-01-13 15:25:56', '2021-01-13 15:25:56', 0, 0, NULL, NULL, 0, 0),
(58, '', NULL, NULL, 'sirikem867@vss6.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$c7fjTmNjNri.t1KEplMDieJQ3A2AVXEc14OKlsxtbu9UI2hSl5K/6', '', '', NULL, NULL, NULL, '2021-01-14 05:46:33', '2021-01-14 07:08:05', 0, 1, NULL, NULL, 1, 0),
(62, '', NULL, NULL, 'besax94059@serohiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '2021-01-18 17:06:45', '2021-01-18 17:09:35', 0, 0, NULL, NULL, 0, 0),
(65, '', NULL, NULL, 'hecina3376@pashter.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '2021-01-18 17:27:52', '2021-01-18 17:28:24', 0, 0, NULL, NULL, 0, 0),
(66, '', NULL, NULL, 'kepaji2518@serohiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '2021-01-18 17:31:13', '2021-01-18 17:31:38', 0, 0, NULL, NULL, 0, 0),
(67, '', NULL, NULL, 'darifek241@serohiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '2021-01-18 17:34:28', '2021-01-18 17:34:50', 0, 0, NULL, NULL, 0, 0),
(98, '', NULL, NULL, 'nogodet660@serohiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '2021-01-18 22:13:27', '2021-01-18 22:13:48', 0, 0, NULL, NULL, 0, 0),
(101, '', NULL, NULL, 'cibivat731@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '2021-01-19 00:04:06', '2021-01-19 00:04:28', 0, 0, NULL, NULL, 0, 0),
(110, '', NULL, NULL, 'hananbhatti860@yahoo.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$K6DJF5wBq4P9vnE.Oag.qewVfks5xbHnuKiOdHqpLtwokYxJgH.U.', '280797', '', NULL, NULL, NULL, '2021-01-19 19:54:07', '2021-01-19 19:54:07', 0, 0, NULL, NULL, 0, 0),
(111, '', NULL, NULL, 'pesege7826@serohiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$LcGC86WEFQPE1B1NH7qB4u07daNyIgF0ESXXssX8c1JC3UUn8H39q', '', '', NULL, NULL, NULL, '2021-01-19 20:10:09', '2021-01-19 20:11:01', 0, 0, NULL, NULL, 0, 0),
(113, '', NULL, NULL, 'lereya3687@pashter.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$GMbppAPCEzih4VRw/NwTy.vQ0YBsRWY2Uui3JdTiFi7Klg80UFXqu', '', '', NULL, NULL, NULL, '2021-01-19 23:27:30', '2021-01-19 23:28:08', 0, 0, NULL, NULL, 0, 0),
(114, '', NULL, NULL, 'xowoxaj311@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$8TBnsNUklWNXSOjIwTN8OebOd4iIJMq1bSmVTFlZQvwx02kJ7dTN6', '', '', NULL, NULL, NULL, '2021-01-20 02:20:23', '2021-01-20 02:20:44', 0, 0, NULL, NULL, 0, 0),
(115, '', NULL, NULL, 'pehife1472@loopsnow.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$PmSnjrRwBV2GIohoqOV56euXAlX4sgjsBYTw/d6F59kI2XjEbTCYi', '', '', NULL, NULL, NULL, '2021-01-20 02:22:26', '2021-01-20 02:22:39', 0, 0, NULL, NULL, 0, 0),
(117, '', NULL, NULL, 'amirbhatti603@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$BkgqeGg7gMCNsb82T92tBeBc.cztb/WII9XIPpNWMBzvCcUw3PDhG', '', '', NULL, NULL, NULL, '2021-01-21 11:12:25', '2021-01-21 11:12:55', 0, 0, NULL, NULL, 0, 0),
(118, '', NULL, NULL, 'diwovil579@pashter.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$BV1B3eQ4NRrOlYVeyPfXm.T2RHKNaccOnq3pq.wOz1v4SfUFAj666', '', '', NULL, NULL, NULL, '2021-01-21 12:53:06', '2021-01-21 12:54:14', 0, 0, NULL, NULL, 0, 0),
(119, '', NULL, NULL, 'ketofyby@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$Nrmgwdi7qEXA/T2BYYG5HOkseH7XFsWCDzdFWNHaspTvYTg6ZE4nO', '776093', '', NULL, NULL, NULL, '2021-01-21 14:35:36', '2021-01-21 14:35:36', 0, 0, NULL, NULL, 0, 0),
(120, '', NULL, NULL, 'newun@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$ELqtqhZA2WrI4aVtUIv1NeFoewO.W0LvRl/SpIdan41geV3LLss9a', '720123', '', NULL, NULL, NULL, '2021-01-21 14:37:45', '2021-01-21 14:37:45', 0, 0, NULL, NULL, 0, 0),
(121, '', NULL, NULL, 'menipi5741@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$2V3d7KdFPbiE7U33rRuLtOLWHN12d6askRMIBwf./LirhFJcTPpRa', '', '', NULL, NULL, NULL, '2021-01-21 14:48:57', '2021-01-21 14:49:17', 0, 0, NULL, NULL, 0, 0),
(122, '', NULL, NULL, 'faway11991@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$WmoOA31u951K486rqI5juOVyF1TzpLHSRwENvKYdOG5Y/mrC3Zcs2', '988418', '', NULL, NULL, NULL, '2021-01-21 14:51:42', '2021-01-21 14:51:42', 0, 0, NULL, NULL, 0, 0),
(123, '', NULL, NULL, 'vecabugeci@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$tQxvZo7p7vJ7YKrC1ljMa.byhfP0YUkTxQP9BtdY5w088nCSUeGvS', '629485', '', NULL, NULL, NULL, '2021-01-21 14:55:26', '2021-01-21 14:55:26', 0, 0, NULL, NULL, 0, 0),
(124, '', NULL, NULL, 'xofahef644@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$bcjiCdXPvwIp1Tgkfts8gO8YtFS3AxK20VfG8lUeOaq2tRx07Eniy', '475223', '', NULL, NULL, NULL, '2021-01-21 15:00:57', '2021-01-21 15:00:57', 0, 0, NULL, NULL, 0, 0),
(125, 'Lacey Farrell', 'Delectus non pariat', '(182) 593-2194', 'testing@softenica.com', NULL, NULL, 'Est voluptatem Ut', '', '$', '40000', '', 'Per Hour', 'it', 'it', NULL, 'Executive', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$3N0/QHIVodSBDsqV7.ihf.w4B.S3SA.iRiK4O0BB/IYzT9Geks2pC', '', '', 'Seasonal', 2, NULL, '2021-01-22 08:16:57', '2021-01-22 10:26:39', 0, 1, NULL, 4, 0, 0),
(126, '', NULL, NULL, 'hirewad406@loopsnow.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$9SiIJnvw797RFAoz6Ahp7eb7zZ/vLkQbJZ9AawwJrD6I753b1lDFa', '320341', '', NULL, NULL, NULL, '2021-01-22 10:43:20', '2021-01-22 10:43:20', 0, 0, NULL, NULL, 0, 0),
(127, '', NULL, NULL, 'fanage3525@serohiv.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$EQpuI0xr9qFm9eBZZjNMB.UVgNT2n4U/4iPU1FVavZ5wSy34OPZIm', '', '', NULL, NULL, NULL, '2021-01-22 10:50:59', '2021-01-22 11:13:35', 0, 0, NULL, NULL, 0, 0),
(128, '', NULL, NULL, 'hahap98054@loopsnow.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$/GHnVLhq2gFc88MUnXgqquFYFdYpTINscQ95NQ.im/6FQ7U8Fe18C', NULL, '', NULL, NULL, NULL, '2021-01-22 11:36:27', '2021-01-22 11:36:56', 0, 0, NULL, NULL, 0, 0),
(129, '', NULL, NULL, 'bakog40425@loopsnow.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$KnfEeOAhYu3IwTi3W7urfuXSmynwcm3BhCeoA4EnWKDUoMqK0vTl.', '', '', NULL, NULL, NULL, '2021-01-22 12:15:51', '2021-01-22 12:16:16', 0, 0, NULL, NULL, 0, 0),
(130, '', NULL, NULL, 'riciji1292@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$LWnrnsvCxdHlUbEB02ru0OkFrFqTezMNy40DTrakWIl.Ee3DYWjcW', NULL, '351044', NULL, NULL, NULL, '2021-01-22 12:56:27', '2021-01-22 12:56:27', 0, 0, NULL, NULL, 0, 0),
(131, '', NULL, NULL, 'nawogug@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$2OFfBbF2LUbdBnFk4unc.OGv/dJe3ZCdcOG7qvBVsU7FPZ0Ddn3VK', NULL, '601128', NULL, NULL, NULL, '2021-01-22 12:56:56', '2021-01-22 12:56:56', 0, 0, NULL, NULL, 0, 0),
(132, '', NULL, NULL, 'fonek21295@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$s4JncEN1cjKCQPj4wgSn7eXkSJRh64736E4/A188NinUV5kh7mAVS', NULL, '955568', NULL, NULL, NULL, '2021-01-22 13:05:37', '2021-01-22 13:05:37', 0, 0, NULL, NULL, 0, 0),
(133, '', NULL, NULL, 'xaxapop106@febula.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$oc9OQZnoVgk5U/HME5ZiKe8H4gdxJFQKUuLSbDEDkBquJ7/n0cpMG', NULL, '', NULL, NULL, NULL, '2021-01-22 13:10:51', '2021-01-22 13:14:31', 0, 0, NULL, NULL, 0, 0),
(134, '', NULL, NULL, 'qatesting119@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$5X4mK8JEpUOL09.j5nNOaeNLG94k7//EXYMYfW15RDndZXGWQ5yNS', NULL, '', NULL, NULL, NULL, '2021-01-22 13:15:53', '2021-01-22 13:16:16', 0, 0, NULL, NULL, 0, 0),
(135, '', NULL, NULL, 'hirudaxy@mailinator.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$sdgSL6XWKSayqW1gxQ50f.bctsWrapD3BND.oMpTT62V/.U/J8dzW', NULL, '734398', NULL, NULL, NULL, '2021-01-22 13:25:07', '2021-01-22 13:25:07', 0, 0, NULL, NULL, 0, 0),
(136, 'Lorem', 'Accountant', '(234) 352-3553', 'kibodag926@serohiv.com', NULL, NULL, 'New York,Indiana', '', '£', '45,000', '', 'Per Month', 'lorem', 'lorem,ipsum', NULL, 'Experienced', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$AnlqPP8iWKPoUeTNUeWoj.ytpmY3uH9JPK9IyOtBTOmwGQRnpM3sW', NULL, '', 'Part-time', 1, NULL, '2021-01-22 14:03:25', '2021-01-22 14:11:56', 0, 1, NULL, 17, 0, 0),
(137, '', NULL, NULL, 'carla.munoz84@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$cxn1DzoIqDI/tqCH.RAccuBIpTSlZHYrUtgJuvmAUTBFXAitgAI3W', NULL, '609282', NULL, NULL, NULL, '2021-01-22 23:08:00', '2021-01-22 23:08:00', 0, 0, NULL, NULL, 0, 0),
(138, '', NULL, NULL, 'ronkoller1988@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$nK2hqgKuKo2Lz.UF1xQ1wuV/Ss5mOjJUAtlWwHkbviB7aP.IsKh/y', NULL, 'i3GUURh0YzIOQ6jR0Gnq', NULL, NULL, NULL, '2021-01-22 23:09:39', '2021-01-22 23:11:49', 1, 0, NULL, NULL, 0, 0),
(139, 'John Social', 'Sales Associate', '(909) 399-3223', 'johnsocial22@gmail.com', NULL, NULL, 'Los angeles, ca', '', '', '90000', '', 'Per Hour', 'wonder,test,boy,1,3', 'test,a,d,i', 'one,two,three', 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$S8avhtjuPsaAqAhRKQcvVu5ODpqLs.9rbfVKiGlQl0xy1KsOP4Yl2', '', '', 'Contract', 4, NULL, '2021-01-25 21:39:20', '2021-01-26 02:47:00', 0, 1, NULL, 3, 0, 0),
(140, 'bob jo', 'Sales Associate', '(909) 320-3233', 'tiendonphung2020@gmail.com', NULL, NULL, 'doglo', '', '', '130000', '', 'Per Hour', 'd', 's', NULL, 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$tVi8mfSCTZPC5l0Z1u/1ruzXV1CG9HQsygGLIZ/5msyQeUl5kdhWq', '', '', 'Contract', 6, NULL, '2021-01-26 03:15:40', '2021-01-26 05:11:37', 0, 1, NULL, 3, 0, 0),
(141, '', NULL, NULL, 'asinb0022@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$JoB/KYlVemHCLISEvo5CRu3vRnvDlQXK.YglDaVN3cNSI1WarrayO', NULL, '', NULL, NULL, NULL, '2021-01-28 22:35:18', '2021-01-28 22:49:18', 0, 0, NULL, NULL, 0, 0),
(142, '', NULL, NULL, 'fasdkfj@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$.l4GihWK3BAdA6lBcXa.n.8TMCvzMtvBNlnuXOjgs3TuFr.j0eHGG', NULL, '394589', NULL, NULL, NULL, '2021-01-29 08:30:38', '2021-01-29 08:30:38', 0, 0, NULL, NULL, 0, 0),
(143, '', NULL, NULL, 'conchimdeng2020@gmail.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$VcjcC5Qoy4eRMM.BubjcCu7ZJmRRVIseir1dieDba2s3Q2tL8Rg4y', NULL, '', NULL, NULL, NULL, '2021-01-29 09:06:10', '2021-01-29 09:13:02', 0, 0, NULL, NULL, 0, 0),
(144, '', NULL, NULL, 'movoxir110@poetred.com', NULL, NULL, '', '', '', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$5fceKDSEucBNBO8qtSLNXuWIPbDV/sEoJO1.lagrn2Wfh2o9mhIVu', NULL, '', NULL, NULL, NULL, '2021-02-02 07:06:53', '2021-02-02 07:07:14', 0, 0, NULL, NULL, 0, 0),
(149, '', NULL, NULL, 'coxik82992@hrandod.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$Wz6a123ezS9rIi.ezDLEDeQld6DbSrm9zTbXZS3KwOafCsL9/duCu', '', '', NULL, NULL, NULL, '2021-02-12 11:54:14', '2021-02-12 14:52:09', 0, 0, NULL, NULL, 0, 0),
(150, '', NULL, NULL, 'yobij94230@hrandod.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 05:54:30', '2021-02-15 06:41:45', 0, 0, NULL, NULL, 2, 0),
(151, '', NULL, NULL, 'dolibov279@tigasu.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$ziAIInpQ/sTm7N8aOK/n/OZ.yZMq8Z/fm7x7OcEoX1LA6zmSWuGwS', '', '', NULL, NULL, NULL, '2021-02-15 06:38:12', '2021-02-15 07:48:16', 0, 0, NULL, NULL, 0, 0),
(152, '', NULL, NULL, 'natav69317@wirese.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 10:39:41', '2021-02-15 10:46:32', 0, 0, NULL, NULL, 2, 0),
(153, '', NULL, NULL, 'xaxocap536@tigasu.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 10:50:41', '2021-02-15 10:51:39', 0, 0, NULL, NULL, 2, 0),
(154, '', NULL, NULL, 'pabeja9004@wedbo.net', NULL, NULL, '', 'https://www.linkedin.com/in/nathan-truong-4ba888b8', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 10:57:25', '2021-02-15 11:17:53', 0, 0, NULL, NULL, 2, 0),
(155, '', NULL, NULL, 'fasisa4068@wedbo.net', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 11:39:04', '2021-02-15 11:41:53', 0, 0, NULL, NULL, 2, 0),
(156, '', NULL, NULL, 'reram88757@hrandod.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 12:02:03', '2021-02-15 12:12:59', 0, 0, NULL, NULL, 2, 0),
(157, '', NULL, NULL, 'vuhufifa@mailinator.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '833902', NULL, NULL, NULL, '2021-02-15 13:13:54', '2021-02-15 13:13:54', 0, 0, NULL, NULL, 2, 0),
(158, '', NULL, NULL, 'fiyin25827@tigasu.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-15 13:18:06', '2021-02-15 14:30:43', 0, 0, NULL, NULL, 2, 0),
(159, '', NULL, NULL, 'wedog10641@wirese.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-02-16 07:43:06', '2021-02-16 07:55:32', 0, 0, NULL, NULL, 2, 0),
(160, '', NULL, NULL, 'yavamo8171@hrandod.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$jDvGg.U2LDrxcAwFP7Uwpu/HH.de887/4CtJE3wfv4TWFAyFhxxu.', '', '', NULL, NULL, NULL, '2021-02-16 08:00:39', '2021-02-16 10:04:04', 0, 0, NULL, NULL, 0, 0),
(161, 'John Myer', 'won', '(909) 323-2332', 'wongdaydo@gmail.com', NULL, NULL, 'donace,dfalsjf', 'https://www.linkedin.com/in/nathan-truong-4ba888b8', '', '59,000', NULL, 'Per Year', 'won,two,three', 'license,won,two', 'won,two,three,forme', 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$Id3e9qz2WXoUy2520CTjpuz54YgDKOyHITV1.wGOzuJ0fPyn3Fu0C', '', '', 'Full-time', 3, NULL, '2021-02-16 18:32:09', '2021-02-16 20:07:09', 0, 1, NULL, 6, 0, 0),
(162, '', NULL, NULL, 'jdiejdakd9888@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '236521', NULL, NULL, NULL, '2021-02-16 20:35:25', '2021-02-16 20:35:25', 0, 0, NULL, NULL, 2, 0),
(163, '', NULL, NULL, 'candidatehiring2021@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '588287', NULL, NULL, NULL, '2021-02-16 20:38:03', '2021-02-16 22:39:05', 0, 0, NULL, NULL, 2, 0),
(165, '', NULL, NULL, 'dasine2545@iconmle.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$prH6xmXq5ZHT0ImH9G939OB1hZqRTfUoRK2wlHUVZstMNwFxlQpVu', 'mhR3y', 'OxKQZ8mUeRq49PGDWM3Q', NULL, NULL, NULL, '2021-02-22 14:07:42', '2021-02-22 14:07:42', 0, 0, NULL, NULL, 0, 0),
(166, '', NULL, NULL, 'baviti2698@lidte.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$nk7.R4qtOnuJ6T3xuRQF4enVQddeSU1uQlkiMqj9t391NzfGUisQm', '', 'Tv0gyjlKDQXDXJmRmfHQ', NULL, NULL, NULL, '2021-03-01 12:06:48', '2021-03-24 08:20:16', 0, 0, NULL, NULL, 1, 0),
(167, '', NULL, NULL, 'cosoco2380@netjook.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$YdlwKWtFsmpzguTlM39EwuC3mDvjeFntn4anguhsyVSJCdnb8WAs.', '', 'r3UU20AQozKGx2pLgAys', NULL, NULL, NULL, '2021-03-01 13:46:53', '2021-03-01 13:47:20', 1, 0, NULL, NULL, 0, 0),
(170, 'Farrah Matthews', 'Optio delectus cup', '(190) 623-6854', 'buk05298@cuoly.com', NULL, NULL, 'Eos nisi odit autem', '', '', '5.5,7', NULL, 'Per Hour', 'Deserunt cumque dele', 'Excepteur dignissimo', NULL, 'Select your experienced level', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$7nqoBp6GqRNqF160R6N.8ueHqc2eEdmjGPA//WpfTpIpS3U21Y8/6', '', '', 'Internship', 14, NULL, '2021-03-08 07:29:28', '2021-03-08 07:38:42', 0, 0, NULL, 23, 0, 0),
(171, '', NULL, NULL, 'ixa56009@zwoho.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '129356', NULL, NULL, NULL, '2021-03-08 07:53:46', '2021-03-08 08:01:11', 0, 0, NULL, NULL, 2, 0),
(172, '', NULL, NULL, 'rofybodu@mailinator.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '656373', NULL, NULL, NULL, '2021-03-08 07:59:23', '2021-03-08 07:59:23', 0, 0, NULL, NULL, 2, 0),
(173, '', NULL, NULL, 'kdo40208@zwoho.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-08 08:01:53', '2021-03-08 08:03:18', 0, 0, NULL, NULL, 2, 0),
(174, '', NULL, NULL, 'xee39664@cuoly.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '509047', NULL, NULL, NULL, '2021-03-08 08:06:36', '2021-03-08 08:06:36', 0, 0, NULL, NULL, 2, 0),
(175, 'Ruth Mack', 'Ut natus dolores non', '(178) 112-9923', 'wmcufpadvgzsdqhrhp@twzhhq.com', NULL, NULL, 'Commodi alias laboru', '', 'C$', '89', NULL, 'Per Month', 'Qui quia consequuntu', 'Distinctio Anim fac', 'higher pay,better benefits,leadership position,Quos reprehenderit a', 'Intern', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$Vs0Zyqs223YYJ4D6Fs0ZaOjC8hf51Ccdbq5dV4QM3kX2gsJLL5z.m', '', '', 'Part-time', 5, NULL, '2021-03-08 08:14:42', '2021-03-08 08:21:33', 0, 1, NULL, 2, 1, 0),
(176, '', NULL, NULL, 'wys35123@cuoly.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$xHqAfvkZ6ZY0t8VoGTnju.W224yurVlhr5hwQcTGM/mBUL6p3Q9yW', 'acbeB', 'JOTP8NtKBJfyiOKkacZZ', NULL, NULL, NULL, '2021-03-10 06:14:37', '2021-03-10 06:14:37', 0, 0, NULL, NULL, 0, 0),
(177, 'Yoshio Chen', 'Non incididunt et ad', '(141) 613-6894', 'jvinygbgcmxssqrprf@mhzayt.online', NULL, NULL, 'Adipisicing exceptur', '', '£', '50', NULL, 'Per Year', 'Similique pariatur', 'Ut dolor ut ipsum t', 'higher pay,better benefits,leadership position', 'Intern', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$F99wekCoa8qNoCBqcdobE.gLZAa4uMrlAc3O/qda9RSENfAsZWmZC', '', '', 'Seasonal', 1, NULL, '2021-03-10 06:15:43', '2021-03-10 07:10:27', 0, 1, NULL, 10, 1, 0),
(178, 'Brian Howe', 'wegweg,wegfweg,wegweggwe', '(938) 269-8326', 'racayoy948@timothyjsilverman.com', NULL, NULL, 'uiegfew,fwoieghw,ghoiwegho', '', '', NULL, NULL, '', NULL, '', NULL, 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$ONIW5CKFqdt9xN3o5Gz45ONYaIztZ.YXlOP4bdAVUJfB9gjr/NVKu', '', '', 'Part-time', NULL, NULL, '2021-03-10 06:21:45', '2021-03-10 06:22:44', 0, 0, NULL, 11, 0, 0),
(179, 'Brian Howe', 'ewfj', '(923) 351-4412', 'misike3286@mailnest.net', NULL, NULL, 'wewfg,w', '', '', NULL, NULL, '', 'eewf,wefwef', 'wefwef,wefwefer', NULL, 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$OcPCp34CNkhGK.MF8yaDWO6T57ST644YQUXK7juuZ.dSv8SFf5E4q', '', '', 'Contract', 5, NULL, '2021-03-10 06:25:52', '2021-03-10 07:38:27', 0, 0, NULL, 16, 1, 0),
(180, '', NULL, NULL, 'kslntlqmisvxrwiwud@upived.online', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$Y7jM4segvc/eblItl9a6h.1oosqzrNhWpUnG7cqGiq5hbx2ugKG3y', '', '', NULL, NULL, NULL, '2021-03-10 07:11:42', '2021-03-10 07:12:01', 0, 0, NULL, NULL, 0, 0),
(181, 'Carlos Garcia', 'Software Engineer,Computer Engineer', '(714) 642-2797', 'unitedfamilysaigon@gmail.com', NULL, NULL, 'santa ana,Los Angeles', '', '', '130000', '394343', 'Per Hour', 'won,two,three', 'Test,ted', 'higher pay,Moving up', 'Entry Level', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$qeZcb87kOQ.vHGsAdCYix.ox5NFslCIHPFuAG2QN2qZGyD.bFwGQm', '', '', 'Full-time', 6, NULL, '2021-03-10 21:20:12', '2021-03-30 19:18:19', 0, 1, NULL, 2, 1, 0),
(182, '', NULL, NULL, 'tony@mymotivz.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '306523', NULL, NULL, NULL, '2021-03-16 05:39:47', '2021-03-16 05:47:50', 0, 0, NULL, NULL, 2, 0),
(183, '', NULL, NULL, 'gepix29735@ichkoch.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-17 13:58:19', '2021-03-17 14:00:03', 0, 0, NULL, NULL, 2, 0),
(184, 'Meghan Goodman', 'Repellendus Consect', '(110) 745-2528', 'towoti7780@naymeo.com', NULL, NULL, 'In veniam soluta su', 'http://example.com', '', '5555555555555555', NULL, 'Per Hour', 'Leadership,customer service,leadership position', 'CPPI,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Senior Executive', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$BPuv0GbZhFK.fIg9TSZCwukuJD/o57ljxI4YmC6X4aQYcrRZfM99y', '', '', 'Part-time', 2, NULL, '2021-03-18 05:26:58', '2021-03-18 06:38:30', 0, 1, NULL, 17, 0, 0),
(188, 'Kyla Hanson', NULL, '(160) 691-1907', 'viroh10016@naymeo.com', NULL, NULL, '', 'http://example.com', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$BBZdOrkPCecV3G0QFF/DC.MIb1lSVr1EHyPS6ALLZxftDPtIlOfJ2', '', '', NULL, NULL, NULL, '2021-03-18 07:26:22', '2021-03-18 08:30:25', 0, 0, NULL, NULL, 1, 0),
(190, '', NULL, NULL, 'fisanat511@leonvero.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$8YNM/6mhkLLpG/JEYW3uHe71OGzOidQ9LF4i08L56dBjoLkF6I.uq', '', '', NULL, NULL, NULL, '2021-03-18 08:21:27', '2021-03-18 11:00:55', 0, 0, NULL, NULL, 0, 0),
(191, 'Brian Howe', 'lorem ipsum', '(272) 790-7579', 'kokoso2382@naymeo.com', NULL, NULL, 'new york', '', '', NULL, NULL, '', NULL, '', NULL, 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$nODkJnIxcAHejUNCWJ65EOUReTpaVPtgXkcGjcVtdtEYD9U3H/FOy', '', '', 'Contract', NULL, NULL, '2021-03-18 08:47:22', '2021-03-18 08:49:05', 0, 0, NULL, 4, 0, 0),
(192, '', NULL, NULL, 'rogati8377@naymeo.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '208601', NULL, NULL, NULL, '2021-03-18 08:58:52', '2021-03-18 08:59:41', 0, 0, NULL, NULL, 2, 0),
(193, '', NULL, NULL, 'jagoho8335@ichkoch.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$Cx1TVVRne2Hz1PT3XphBW.1xWIeVKUfVQrUSdEKlegsJRrIn6XIRu', 'dDIOC', 'gPjXxVTbLPRDkJnRZESV', NULL, NULL, NULL, '2021-03-18 10:48:00', '2021-03-18 10:49:34', 0, 0, NULL, NULL, 0, 0),
(194, 'Alfonso Gallagher', 'Incidunt cillum ten', '(183) 243-2308', 'yexeh16221@naymio.com', NULL, NULL, 'Voluptatem Labore d', 'http://example.com', 'C$', '5555555555555555', '5555555555555556', 'Per Hour', 'Leadership,Customer Service', 'CPPI,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Intern', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$Pq4PJHOkxDTjPQrpcRt5/eSPbU3A/..TfMPMeUejCBjbHluKw9bJC', '', '', 'Full-time', 5, NULL, '2021-03-18 10:55:18', '2021-03-18 10:58:05', 0, 1, NULL, 25, 0, 0),
(195, '', NULL, NULL, 'mofon61090@naymio.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$uk2CxHidTU/WSQrhcIaeZ.9HF.Fr0hwkdi9NPgOEJmKKihmlWJW/e', 'HnOFZ', 'LTgjOnBKoSfQroi5WzKU', NULL, NULL, NULL, '2021-03-18 10:58:28', '2021-03-18 10:59:09', 0, 0, NULL, NULL, 0, 0),
(196, '', NULL, NULL, 'regex18395@leonvero.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-22 14:42:32', '2021-03-22 14:42:49', 0, 0, NULL, NULL, 2, 0),
(197, '', NULL, NULL, 'mg213229@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-22 15:29:37', '2021-03-24 08:59:09', 0, 0, NULL, NULL, 2, 0),
(198, '', NULL, NULL, 'ganaga6745@leonvero.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-22 15:32:15', '2021-03-22 15:32:30', 0, 0, NULL, NULL, 2, 0),
(199, '', NULL, NULL, 'jomehah356@ichkoch.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-22 15:35:15', '2021-03-22 15:35:26', 0, 0, NULL, NULL, 2, 0),
(200, 'Curran Mcdaniel', 'Ab dolore possimus', '(166) 931-7359', 'jaked60057@ichkoch.com', NULL, NULL, 'Aute rerum quis adip', '', '', NULL, NULL, '', NULL, '', NULL, 'Directorship', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$KB0RKto3b1BOCttM9OYz7OQhgM.hnYerMIPw7nn8kBAVrWtEJjQJS', '', '', 'Internship', NULL, NULL, '2021-03-22 15:52:13', '2021-03-22 15:52:52', 0, 0, NULL, 20, 0, 0),
(201, 'Brian Howe', 'sdvs,sbsw,sbd', '(272) 790-7579', 'keyina6156@naymeo.com', NULL, NULL, 'new york', '', '', NULL, NULL, '', NULL, '', NULL, 'Managerial', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$dJzSpelmy71.Nw9IS5K0xObXUP.Dhx3km9tCjgkhxB1Ro94YfT5ja', '', '', 'Contract', NULL, NULL, '2021-03-24 07:14:14', '2021-03-24 07:14:58', 0, 0, NULL, 14, 0, 0),
(202, '', NULL, NULL, 'xatok30342@leonvero.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-24 07:19:20', '2021-03-24 07:20:47', 0, 0, NULL, NULL, 2, 0),
(203, '', NULL, NULL, 'mitepew165@naymeo.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$a7R3YXa9dhdnIeLAuJ22WebCOMDIm65U6cZIpy4q.XVM6SqYnVd5C', '99mvQ', 'D20fILzcu6jXzwmSaT36', NULL, NULL, NULL, '2021-03-24 07:30:09', '2021-03-24 07:30:09', 0, 0, NULL, NULL, 0, 0),
(204, '', NULL, NULL, 'softenicauser@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$P9pZh3cxr7mqmUOd8ozPAeVcvFoR.oCoy9L.z5llDYDk3NiD66pAa', 'z8IZk', 'kzwAF3aqJ5HHhSVdRTJU', NULL, NULL, NULL, '2021-03-24 07:34:13', '2021-03-24 07:34:13', 0, 0, NULL, NULL, 0, 0),
(205, '', NULL, NULL, 'casewed256@ichkoch.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$S6ZxQWXh51UIqyXTJWDofOSTQbjjBA8efX73oDgsQgRbj4AElCILW', 'spgRm', 'tQjvTedKtbrEDyRwFzMn', NULL, NULL, NULL, '2021-03-24 07:38:43', '2021-03-24 07:38:43', 0, 0, NULL, NULL, 0, 0),
(206, '', NULL, NULL, 'totode7033@leonvero.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '735461', NULL, NULL, NULL, '2021-03-24 08:08:25', '2021-03-24 08:08:25', 0, 0, NULL, NULL, 2, 0),
(207, '', NULL, NULL, 'testing.softenica@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-24 08:13:38', '2021-03-24 08:53:17', 0, 0, NULL, NULL, 2, 0),
(208, '', NULL, NULL, 'ganogas355@leonvero.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, '2021-03-24 08:43:58', '2021-03-24 08:44:15', 0, 0, NULL, NULL, 2, 0),
(209, '', NULL, NULL, 'xapadi1266@kindbest.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$S5T2zRE3677dHRZAD1lHSO4vK5lkAUW0OW4n2G9l/iBovtgK6czt.', '', '', NULL, NULL, NULL, '2021-03-24 14:16:23', '2021-03-24 14:19:23', 0, 0, NULL, NULL, 0, 0),
(210, '', NULL, NULL, 'givavab935@irahada.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$F3nBu07I6zj7phFtxJB21u7RLyU2LQP7j7ItgPXpSd/U7q1QHRLzq', '', '', NULL, NULL, NULL, '2021-03-24 14:55:04', '2021-03-24 14:55:53', 0, 0, NULL, NULL, 0, 0),
(211, 'WONGCHO', 'Enginee', '(930) 232-3323', 'thefunfun2121@gmail.com', NULL, NULL, 'Santa Ana', '', '', '1304', '32435', 'Per Hour', 'Ed,Wongeree', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$XNFNe8TgVb.PJDuIY6f0qeTWlYyL3qhGVXh9i2qMUycxVIP88SEJ.', '', '', 'Contract', 4, NULL, '2021-03-24 21:49:06', '2021-03-24 23:19:25', 0, 1, NULL, 2, 0, 0),
(212, '', NULL, NULL, 'sekalu@mailinator.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '964623', NULL, NULL, NULL, '2021-03-29 10:48:18', '2021-03-29 10:48:18', 0, 0, NULL, NULL, 2, 0),
(213, 'Nasdfa', NULL, '(380) 923-5329', 'fiverrtesting2021@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$m7HHWO7./GoEZdZ9BU2XEeuW6yudRiIwnm0HyXjYpk1M9wy8K/HG6', '', '', NULL, NULL, NULL, '2021-03-30 19:24:57', '2021-03-30 19:30:27', 0, 0, NULL, NULL, 0, 0),
(214, 'United Family', NULL, '(323) 903-4423', 'fatjoejoe2021@gmail.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$.gOm3eRGWTeVKsK/qIcqweMINZBjg8pzuQPNHgO.4mH9EUJhUoITu', '', '', NULL, NULL, NULL, '2021-03-31 23:44:14', '2021-03-31 23:48:44', 0, 0, NULL, NULL, 0, 0),
(215, '', NULL, NULL, 'vibozu@mailinator.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$CSigxgWHVtzYX7uo2b6jJORyzHL2i9A5rTd/2VcU2v6rptvAOTBUy', 'b0OO1', 'kue0CmYWCKSsHFNmNcqy', NULL, NULL, NULL, '2021-04-08 15:29:43', '2021-04-08 15:29:43', 0, 0, NULL, NULL, 0, 0),
(216, '', NULL, NULL, 'bapat45886@whyflkj.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$96yP0d.yWsC15v//UupaMOLqWCYDQOof1R/ALp3GXC237rR9psORe', '', '', NULL, NULL, NULL, '2021-04-08 15:31:22', '2021-04-08 15:31:38', 0, 0, NULL, NULL, 0, 0),
(217, 'Quamar Alvarezz', 'sdc,wfewf,wef,wefwefwef', '(133) 358-8415', 'mitew32823@tlhao86.com', NULL, NULL, 'New York, NY, USA', '', '$', '15,000', NULL, 'Per Month', 'Leadership,Customer Service,tfdhdgdn,ghgh', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Intern', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$L9ura5MpJnWaYuZl4f94d.eLJf0q6TieY1717c7igrGtScfFxUvj.', '', '', 'Full-time', 1, NULL, '2021-04-09 08:35:04', '2021-04-09 09:10:09', 0, 1, NULL, 1, 0, 0),
(218, 'Nero Zamora', 'sdcsdc,fwef,we,efw,efwefwc', '(199) 225-5713', 'livofad593@yncyjs.com', NULL, NULL, 'New York, NY, USA', 'http://www.google.com', 'A$', '45,000.00', NULL, 'Per Year', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Intermediate', NULL, 'photo-1589456506629-b2ea1a8576fb-2020_12_03-06-59-53-2021_04_09-03-52-17.jpg', 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$DY9irIFMsNeGJ/QLBT0b.uEAnLlSSL2Xc.YdPsrULHg2MfnqzNNYm', '', '', 'Contract', 2, NULL, '2021-04-09 10:50:05', '2021-04-09 11:12:41', 0, 1, NULL, 2, 0, 0),
(219, 'Sophia Wiley', 'sdcwe,fwef,wefwe,f', '(152) 784-7314', 'femiw10703@tlhao86.com', NULL, NULL, 'New York, NY, USA', '', '$', '45,000', NULL, 'Per Year', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Intern', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$G5RacZoh1r2/yds45cy/rekzmLzofDG6vtilZZMa2lYIMhaGOti86', '', '', 'Full-time', 3, NULL, '2021-04-09 12:30:17', '2021-04-09 12:32:16', 0, 1, NULL, 1, 0, 0),
(220, 'Hedy Morenowq', 'wef,wefwwef,weg,wge,wgews,wwe', '(129) 231-9771', 'rabod57249@shzsedu.com', NULL, NULL, 'New Orleans, LA, USA', '', '$', '45,000', NULL, 'Per Hour', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', NULL, 'Intern', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$AceOp1.N2/iVmfJgV4YhmOvJl671klOB8JI1L/abxuwZZux56BfVW', '', '', 'Contract', 2, NULL, '2021-04-09 13:36:41', '2021-04-09 13:39:52', 0, 1, NULL, 1, 0, 0),
(221, '', NULL, NULL, 'pokomo3680@shzsedu.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$hgZU7Erm5NDEHSYiNhXCNu5np1GnWC.nVJCoGVIu0vQHDjunVtcQu', '', '', NULL, NULL, NULL, '2021-04-09 15:14:00', '2021-04-09 15:14:09', 0, 0, NULL, NULL, 0, 0),
(222, 'Caryn Shaffer', 'Laudantium deleniti,Do quas non laborios', '(111) 390-7500', 'coter31647@yncyjs.com', NULL, NULL, 'Labore delectus id', '', 'A$', '50', NULL, 'Per Hour', 'Leadership,Customer Service,Qui deserunt quia la', 'CPR,PE,American Board of Dermatology,Dolores omnis volupt', 'Aut cillum maiores i', 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for any employer', 'Ut quam in odit dolo', '$2y$10$KfYxzDlIoR3oy/BpejybKuM90jYw6mxvwIo/PjExedxLOpS1r1PEO', '', '', 'Internship', 5, NULL, '2021-04-09 15:40:38', '2021-04-09 15:49:31', 0, 1, NULL, 1, 0, 0),
(223, 'Kasper Koch', 'Proident et eius eo', '(169) 797-8834', 'mevisi7699@whyflkj.com', NULL, NULL, 'Dolore repellendus', '', '€', '500', NULL, 'Per Hour', 'Leadership,Customer Service,Occaecat voluptate q', 'CPR,PE,American Board of Dermatology,Harum voluptas odit', NULL, 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$Otyt27368ekMh/ITJitiauABMhwUYvDR8vykkkCxBsZTHSDTtaRnW', '', '', 'Full-time', 7, NULL, '2021-04-13 12:44:40', '2021-04-13 12:46:18', 0, 1, NULL, 2, 0, 0),
(224, '', NULL, NULL, 'nunij@mailinator.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '133827', NULL, NULL, NULL, '2021-04-13 14:21:08', '2021-04-13 14:21:08', 0, 0, NULL, NULL, 2, 0),
(225, '', NULL, NULL, 'JAXSON.WINN@GMAIL.COM', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$I1pXdmdJ3J1Gnar4aqZT9e/.Wd.i2Kp4V.FGSJBtJi6m1yRoJKq4S', '', '', NULL, NULL, NULL, '2021-04-14 00:36:10', '2021-04-14 00:36:32', 0, 0, NULL, NULL, 0, 0),
(226, 'tee', 'laborer', '(626) 714-5555', 'TXXXNGUYEN@GMAIL.COM', NULL, NULL, 'TAMPA, FL', '', '$', '55,9999', NULL, 'Per Hour', 'Leadership,Customer Service,sddff,gfddffghnht,ffdfbfgnuyuue,dcddssd', 'CPR,PE,American Board of Dermatology,rgfgvdfd,jhghg,xsssdscc', 'higher pay,better benefits,leadership position,goohhh,frwerre', 'Directorship', NULL, 'Screenshot (1)-2021_05_18-17-38-22.png', 'I am authorized to work in the U.S for any employer', 'bgbgrrsry h5yjyy  7jjjj  7j u7767 5y6rhjjuujuu fgfvtrrte ymy. ffrggeer, rjjvfmorklw.', '$2y$10$x9BqGuQp/mOHHa5BPwyIPOnNwufoNbG8lG6wsSNxDGNXYk76FsmI.', '', '', 'Part-time', 3, NULL, '2021-04-14 00:52:43', '2021-05-19 00:39:07', 0, 1, NULL, 6, 0, 0),
(227, 'tee', NULL, '(626) 454-9244', 'nguyentony1988@yahoo.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$fcaH7gAKPGe0kJqNJM.BM.4v3y91gy0dgfdfAgV9w6ygP7dcJXbGy', '', 'zQtImGxiv4vLjSll4IVk', NULL, NULL, NULL, '2021-04-14 00:55:07', '2021-05-19 00:46:02', 0, 0, NULL, NULL, 1, 0),
(228, 'Wonder Boy', 'BOy,sun,Won', '(903) 432-3243', 'wonderfiverr223@gmail.com', NULL, NULL, 'Pomona, CA', '', '$', '130,000', '567,788', 'Per Hour', 'Wonder,Test,Fiver', 'TEST,32', 'WFUNDfda,dfasdfsd,jdskfjd', 'Entry Level', NULL, 'Dr. Colburn-2021_04_27-13-17-21.png', 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$DUcSJ/3ket46qWfeaE.WPeDM.PwFJonSIxC3tWE4rxfltlKDfkOtK', '', '', 'Contract', 4, NULL, '2021-04-14 21:14:55', '2021-05-20 02:50:21', 0, 1, NULL, 16, 0, 0),
(229, '', NULL, NULL, 'xehexah650@zevars.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$iltd.e7oVat.pFXjq.rzBOZ3xyYDU62zrG.RhgwaTGDJqnQ2bgeoC', '', '', NULL, NULL, NULL, '2021-04-15 08:27:06', '2021-04-15 08:31:39', 0, 0, NULL, NULL, 0, 0),
(230, 'Holmes Herrera', NULL, '(155) 230-9301', 'worob45201@zcai66.com', NULL, NULL, '', 'http://www.google.com', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$hw4gi8Anqhl3t7IFkV489uHXwBrQrUWBK0KTYR7Pwtb/2jCeVhGl6', '', '', NULL, NULL, NULL, '2021-04-16 05:43:48', '2021-04-19 10:29:22', 0, 0, NULL, NULL, 0, 0),
(231, 'ewrwerew', 'qweqw,qwe', '(564) 654-5321', 'nogib63098@zcai66.com', NULL, NULL, 'New York, NY, USA', '', '$', '500', NULL, 'Per Hour', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', NULL, 'Intern', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$sQctGvgLFYlJa41.SjbVuurBHWjcSu4tEpdgj324DEGjBCty9LRau', '', '', 'Contract', 4, NULL, '2021-04-16 06:32:56', '2021-04-16 06:38:28', 0, 1, NULL, 3, 0, 0);
INSERT INTO `new_candidates` (`id`, `name`, `job_title`, `phone`, `email`, `city`, `state`, `location`, `linkedin_url`, `salary_sign`, `salary`, `salary_to`, `salary_type`, `skills`, `certifications`, `interest`, `experience`, `color`, `prof_image`, `auth_status`, `prof_summary`, `password`, `code`, `random_code`, `job_type`, `education_id`, `job_id`, `created_at`, `updated_at`, `email_verify`, `career_dev`, `status_id`, `industry_id`, `deleted`, `is_completed`) VALUES
(232, 'Tee', 'Farmer,woker', '(626) 454-9274', 'toniwinner88@gmail.com', NULL, NULL, 'New York, NY, USA', '', '$', '233,00', NULL, 'Per Hour', 'leadership,skill', 'CPR,PE,American Board of Dermatology,forklift', 'higher pay,better benefits,leadership position,good pay', 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$DSe1sTFeYRqtH31Z1su0UenZ4waYr1HIkZGRxKpSaacDQVq46hc4m', '', '', 'Full-time', 5, NULL, '2021-04-17 02:12:05', '2021-04-17 02:26:18', 0, 1, NULL, 18, 0, 0),
(233, 'Pascale Ware', 'Doloribus doloremque', '(123) 791-6580', 'tar28348@zwoho.com', NULL, NULL, 'Non tempore pariatu', '', '£', '999', NULL, 'Per Hour', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Executive', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$TD482b0rjz0rb0QrB6.fueLEWKjACki4Lm8HZBNr0DuwDJMmBsDdy', '', '', 'Contract', 4, NULL, '2021-04-19 06:09:57', '2021-04-19 06:13:07', 0, 1, NULL, 22, 0, 0),
(234, 'Andrew Lynn', 'Voluptatem reiciendi', '(178) 316-9733', 'yri29886@cuoly.com', NULL, NULL, 'Aut aut omnis saepe', '', '€', '777', NULL, 'Per Month', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Experienced', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$SdmHT7ZGmt1V04aQycc80uUjv2hVqtv1QC/Z/4Evkk1g..oFjlJyq', '', '', 'Full-time', 5, NULL, '2021-04-19 06:14:43', '2021-04-19 06:29:38', 0, 1, NULL, 15, 0, 0),
(235, 'abc', NULL, '(033) 344-5677', 'zrl89592@zwoho.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$DGcAY7p9btRnU5o7Wq7UB.hUj9vOAdLmkC.ERPIr4rLkWunmmKBVu', '', '', NULL, NULL, NULL, '2021-04-19 06:32:19', '2021-04-19 06:33:30', 0, 0, NULL, NULL, 0, 0),
(236, 'Susan Mclaughlin', 'Sed qui similique vo', '(171) 188-6715', 'gxv30623@cuoly.com', NULL, NULL, 'Aliqua Praesentium', '', '€', '89', NULL, 'Per Year', 'Leadership,Customer Service,Qui non veritatis si', 'CPR,PE,American Board of Dermatology,Laboris soluta recus', 'higher pay,better benefits,leadership position', 'Directorship', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$Mv3lYM1JKw3.OlNXI.cfW.DMh1WUWG1HLV0S4JndFqP/ifaKUr282', '', '', 'Contract', 14, NULL, '2021-04-19 13:04:03', '2021-04-19 13:06:25', 0, 1, NULL, 17, 0, 0),
(237, 'Rinah Emerson', 'as,asd,asdd', '(197) 747-5559', 'cocojeh416@zcai66.com', NULL, NULL, 'Las Vegas, NV, USA', '', 'C$', '500', NULL, 'Per Hour', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', NULL, 'Intermediate', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$BS6I/CHPpqIQcyVagGqn.OA5p9iSIwrvK.QBbgGCV8Yce3VIMehhy', '', 'IrmcX7Mv64jECUF610y4', 'Part-time', 2, NULL, '2021-04-20 07:24:20', '2021-04-20 08:31:59', 0, 1, NULL, 15, 0, 0),
(238, '', NULL, NULL, 'fakepo8731@sumwan.com', NULL, NULL, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$GSEGWyaLIHA.33BqACMe6O8MqhYLGTGUJaadlo4tfjZYAVjD6EAn2', 'GcPod', 's5qINzoK51whm0V41zfQ', NULL, NULL, NULL, '2021-04-21 12:23:37', '2021-04-21 12:23:37', 0, 0, NULL, NULL, 0, 0),
(239, 'Quail Webb', 'web developer', '(164) 879-5246', 'tub37020@cuoly.com', NULL, NULL, 'Animi aut irure et', '', 'C$', '123', NULL, 'Per Day', 'It,problem', 'IT', 'social', 'Executive', NULL, 'Joe Deer-2021_04_21-21-59-21.jpg', 'I require sponsorship to work in the U.S', NULL, '$2y$10$DEj2B.aHE4wVn0skdGLoCOVNmXRJ0vynXdPOLdq9ffZiIbhXuxzOi', '', '', 'Internship', 4, NULL, '2021-04-22 04:55:41', '2021-04-22 04:59:21', 0, 0, NULL, 10, 0, 0),
(240, 'Irene Lee', 'Aspernatur voluptate', '(131) 877-6251', 'ikw77578@cuoly.com', NULL, NULL, 'Delectus repudianda', '', '', NULL, NULL, '', NULL, '', NULL, 'Senior Executive', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$p4GaNRxmnay4FejW1YJd2eZ72PDJUYJuTfnWaPTCbEJrts.DWJwnK', '', '', 'Full-time', NULL, NULL, '2021-04-22 05:24:19', '2021-04-22 05:33:01', 0, 0, NULL, 9, 0, 0),
(241, 'John Acosta', 'Magni veniam magnam', '(182) 227-5994', 'qqg83307@eoopy.com', NULL, NULL, 'Cillum quas dolor il', '', '', NULL, NULL, '', 'Omnis in maiores ali', 'Amet nisi suscipit', NULL, 'Executive', NULL, NULL, 'I require sponsorship to work in the U.S', NULL, '$2y$10$ckZUosCCjh/Gpj8BzVqq8e1DvNXArz1pX0NY3BuSUlF8c4ehzqRGi', '', '', 'Internship', 2, NULL, '2021-04-29 05:18:04', '2021-04-29 05:22:54', 0, 0, NULL, 26, 0, 0),
(242, 'Anthony Glass', 'Eveniet voluptatem', '(150) 217-2654', 'nob44442@zwoho.com', NULL, NULL, 'Ullam est ut explic', '', 'C$', '45', NULL, 'Per Week', 'Accusamus facilis no', 'Architecto non et mi', NULL, 'Executive', NULL, NULL, 'I am authorized to work in the U.S for my present employer only', NULL, '$2y$10$i69.aWDEstdQd.Mc8iS5.uvBWYS8Ho1ipLJ3QJNJvKYhGi4Zlf4CW', '', '', 'Part-time', 4, NULL, '2021-04-30 11:07:08', '2021-04-30 11:11:44', 0, 0, NULL, 17, 0, 0),
(243, 'Morgan Meyers', 'PHP', '(113) 319-8457', 'nomawe6636@isecv.com', NULL, NULL, 'Dima, Ethiopia', 'https://www.linkedin.com/signup', '$', '19', NULL, 'Per Hour', 'Leadership,Customer Service', 'CPR,PE,American Board of Dermatology', 'higher pay,better benefits,leadership position', 'Executive', NULL, NULL, 'I am authorized to work in the U.S for any employer', NULL, '$2y$10$98UNgR.qK/b2w2nzMhgWLOFXwkniU3/zUpFrOP5Bc5udSTMs/VeD.', '', '', 'Contract', 5, NULL, '2021-05-20 13:44:04', '2021-05-20 13:45:16', 0, 1, NULL, 24, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `new_clients`
--

CREATE TABLE `new_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complete_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_opening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment_pipeline` int(11) DEFAULT '0',
  `job_discription` longtext COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `random_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verify` int(11) NOT NULL DEFAULT '0',
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_clients`
--

INSERT INTO `new_clients` (`id`, `company_name`, `name`, `job_title`, `phone`, `email`, `complete_address`, `city`, `state_id`, `country_id`, `address`, `zip_code`, `web_url`, `package`, `job_opening`, `service`, `note`, `recruitment_pipeline`, `job_discription`, `logo`, `code`, `random_code`, `password`, `created_at`, `updated_at`, `email_verify`, `industry_id`) VALUES
(3, 'Avaeqa, LLC', '', '', '', 'avaeqa.llc@gmail.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'inbYO', 'JPPVIbIKnczpgp55Fqus', '$2y$10$LnE62.gR2e92huC6HwJXMOovpuZYIEpLgw1RBs3JF.9GCQgMZkove', '2020-12-19 23:32:45', '2020-12-19 23:32:45', 0, NULL),
(5, 'NEKO', '', '', '', 'nekoyunie@yahoo.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '808sP', 'hdOt3zHxd6e8xMCtlTvu', '$2y$10$Pug3OPT/cYkepTdImOK.bOWlFnFoPxcIzUonnkF5G8XgqFFc/Umji', '2020-12-20 00:04:22', '2020-12-20 00:04:22', 0, NULL),
(6, 'TEST 0', '', '', '', 'ugressiv@gmail.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fDjy8', '3rcelbud9X8j8SR1jDRS', '$2y$10$yf94fY9DnlAafpdMYgIWoOMezB52eIhUtMr26KXIhOTJoFueSvu6u', '2020-12-20 00:09:35', '2020-12-21 19:02:11', 0, NULL),
(7, 'Ron Koller', 'Carlos Garcia', 'CEO', '(809) 845-3453', 'ronkoller1988@gmail.com', 'Pomona, CA, USA', NULL, NULL, NULL, '1985 Wildrose Ave', '91767', 'https://www.mymotivz.com/', NULL, NULL, NULL, NULL, 0, 'asdlfjaslkdjfks;df\r\najlsd;kfj;lsdjfl;ajsl;dfjls;akdf\r\nasdfl;jkasdl;fjdsalfj;lj f sdjlfjsd;lf. asdfjlksj f. sjdklfajs;dl.  jslfjsadl fjsdf;', 'Dr. Colburn-2021_04_27-12-46-17.png', '', '', '$2y$10$5LbYJYBXiZVZ/XtSZvW1S.EmDv2JHsB9Rv30YO.nomXMtLlVAWkeq', '2020-12-21 18:57:38', '2021-05-20 02:20:53', 0, 4),
(8, 'LORVIN', '', '', '', 'ybwldnaunjprpsrvrh@niwghx.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$0tXFkAb31ER7JkgTfNbPOOaGMlVrsA65QTQqPaAkAv7dQLZXhG0um', '2020-12-29 05:55:18', '2020-12-29 05:56:26', 0, NULL),
(9, 'Motivz Inc.', '', '', '', 'info@mymotivz.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$3CYgctjg7a8NVW1MyzjsLO373da5zVE/OOaEOseuUupSbKhyJt5ca', '2020-12-29 22:45:13', '2020-12-29 22:48:40', 0, NULL),
(10, 'Testing', 'Testing', 'Lorem Ipsum', '(869) 869-9869', 'company@test.com', 'New York, NY, USA', NULL, NULL, NULL, 'Lorem Ipsum', '54000', 'http://www.googlee.com', NULL, NULL, NULL, NULL, 0, 'werewr', 'download-2021_04_22-06-05-42.jpg', NULL, NULL, '$2y$10$5kggCY3hPps02DOAkYr37ekuAQDe..TOprwOiQyItez6finrotM/S', NULL, '2021-04-22 13:05:42', 0, 2),
(12, 'Virtuz', '', '', '', 'virtualmotivz@gmail.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1hjsw', 'Lf3fqK75U11mBfcLq6IN', '$2y$10$fhT4Ew3OVBFjRvqsb/xdJO6amOIa2cdqoz28GN07BqT2ZU4WCInz6', '2021-01-13 07:06:15', '2021-01-13 07:06:15', 0, NULL),
(15, 'Viechino', '', '', '', 'viechino@gmail.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$vRaJA3TD7PYleKDmiQZ0ZOP5GU2m/by0te7vOZahHFDSNHpnBuFtS', '2021-03-15 22:11:15', '2021-03-15 22:11:51', 0, NULL),
(18, 'Melton Reid Co', 'Jessica Warren', 'Reiciendis ut asperi', '(149) 976-2306', 'foramip914@leonvero.com', '', 'Dolorem rerum ut qui', 63, 2, 'Deserunt inventore l', '44740', 'https://www.google.com/', NULL, NULL, NULL, NULL, 0, 'Quis consequatur com', NULL, '', '', '$2y$10$WG.EZ50tFlJ13FkdEg12yuEiyQScgYBQvvdVyPunRY.Rc5PZmEpZ2', '2021-03-22 15:39:50', '2021-03-22 15:40:53', 0, 25),
(20, 'Wynne Hall', '', '', '', 'winaxeb901@shzsedu.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$cJ.DdsLPhagFytHtnQiEYeDa/R6Mak8qLnWKR5ul5XRbClPMB2BSa', '2021-04-08 15:21:08', '2021-04-08 15:21:19', 0, NULL),
(21, 'abc', '', '', '', 'rodisaw606@tlhao86.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$tgScOwVCj8sbMLksAvzVou90cK41khDHnUhlogjPScP7SxGAPGeNy', '2021-04-09 06:17:42', '2021-04-09 06:17:52', 0, NULL),
(22, 'abc', '', '', '', 'gomek92667@yncyjs.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$1LsKU/ng3uhtj7.lqdgA1uGPhSUP4JlcteDWX/6tLSKZpR0gWICWu', '2021-04-09 11:27:09', '2021-04-09 11:27:24', 0, NULL),
(23, 'Akeem Tanner', '', '', '', 'xexad48840@whyflkj.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$gBWs0tlQKmC.0QtpLCZaFO3FeMb5n6OR/hVhxLAOopScudL.3xkWa', '2021-04-09 14:25:03', '2021-04-09 14:25:21', 0, NULL),
(24, 'ipsumb', 'abc', 'jowdn', '(928) 374-9037', 'gihij67397@shzsedu.com', '', 'ewfwegw', 68, 1, 'dwkegufiu', '54000', 'http://www.google.com', NULL, NULL, NULL, NULL, 0, 'wqedc', NULL, '', '', '$2y$10$/H6.LuH6sp/T39pzaMFBHOzZUzV5Ilb4Vc1YoVPfk0FBzyb71Ewne', '2021-04-09 15:10:01', '2021-04-09 15:15:32', 0, 1),
(25, 'Downs', 'Stacey Carter', 'Excepteur excepteur', '(158) 139-2170', 'sajak56660@tlhao86.com', '', 'Mollit consequuntur', 68, 1, 'Qui illo quod ea est', '60656', 'http://www.example.com', NULL, NULL, NULL, NULL, 0, 'Rerum sunt officiis', NULL, '', '', '$2y$10$M2Np/FeV9Vp4EMGe46gE..22Y5X9AHlM9ALEl754YbuiKMeMBnxGG', '2021-04-09 15:14:55', '2021-04-09 15:22:15', 0, 18),
(26, 'Joyner and Russell Traders', 'Wilma Oneil', 'Aspernatur qui earum', '(183) 571-2529', 'wihetop113@whyflkj.com', '', 'Et ut commodo lorem', 68, 1, 'Adipisicing rerum nu', '94710', 'http://www.example.com', NULL, NULL, NULL, NULL, 0, 'In aute et non quos', NULL, '', '', '$2y$10$raomX62FZ2GTePI6oNZGEenG7IPS8s4Sdav0GT8gbHtgr5r9GtkLO', '2021-04-09 15:25:09', '2021-04-09 15:31:11', 0, 13),
(27, 'Maddox Cardenas Inc', 'Shelby William', 'Debitis molestias ea', '(184) 790-3412', 'pojecac577@whyflkj.com', '', 'Eos delectus hic in', 17, 4, 'Blanditiis quo odio', '83310', 'http://www.example.com', NULL, NULL, NULL, NULL, 0, 'Nisi ratione maiores', NULL, '', '', '$2y$10$g3hkv8T1aQ/vV4JF037HRuRR4MheRZZCJ8zg5muTnKNOKd7q9jUKm', '2021-04-09 15:50:33', '2021-04-09 15:51:44', 0, 1),
(28, 'Lila Goodwin', '', '', '', 'foroyip403@tlhao86.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$6j1MxM6aWYtGmCye8ubGDO16vbak424FQC9CSyIHQLvA/BQlZ9dR2', '2021-04-13 12:33:05', '2021-04-13 12:33:22', 0, NULL),
(29, 'teeznutz', '', '', '', 'tn.tonynguyen.88@gmail.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$XEazBBFyOwZ4WLGY9ILK2.wB1CL1X5Ai5PCl6QxCvGsJH1P4/n4Fu', '2021-04-14 01:01:46', '2021-04-14 01:01:58', 0, NULL),
(30, 'Fiverr Boy, Inc', '', '', '', 'fiverrboy223@gmail.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'dPsPH', 'FZns3buoU4ljhtIiNY0b', '$2y$10$l7iB8qA3VZAmiUy961hjjeZ5QkzhXSdLpmtst6YEgpHQdfNyRAmYy', '2021-04-14 23:32:06', '2021-04-14 23:32:06', 0, NULL),
(31, 'sdfsdf', '', '', '', 'xakexi9737@zefara.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '6otKd', 'SnbnJnF0TUxzZGUTr4aw', '$2y$10$I0nzc89vm/VYdunkAFKsyuNTuyupOf7ieQWGC7eo3d56EbA.laJNO', '2021-04-20 08:52:43', '2021-04-20 08:52:43', 0, NULL),
(32, 'Abc', '', '', '', 'gajiy15783@zcai77.com', '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$06JwC.D8UPTclMbLB6POG.HA6zJCAcZzHawsuTQWrEBZU87Ql1rMK', '2021-04-21 07:50:21', '2021-04-21 07:50:37', 0, NULL),
(33, 'Nita Ingram', '', '', '', 'xagotin768@sumwan.com', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$6r2TrF8bwh7VjVgbdxxKSOir4O6DL8UdpJQ1seDGLyO/HFIz38dxm', '2021-04-21 12:24:19', '2021-04-21 12:24:33', 0, NULL),
(34, 'Hayley Jarvis', '', '', '', 'kevel93211@gridmire.com', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$7by2Bka1s0DgkJQyLpIPw.06T30gimYmb3ZggGVkHxUMcWFy.MCEq', '2021-04-28 15:59:04', '2021-04-28 15:59:21', 0, NULL),
(35, 'Joan Campos', '', '', '', 'figefis735@goqoez.com', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$/unyHuRcwaNnINbdyYApDuarfxmLfexTUaLF9z3M6nyCThF3T8fj6', '2021-05-03 15:31:06', '2021-05-03 15:31:26', 0, NULL),
(36, 'teeznutz', '', '', '', 'teezxnutz@gmail.com', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '$2y$10$odd4bTjGEH80ab0pctTwfObZDXMD.7oRFB9KeLqvLEmnXu6Sk0OEq', '2021-05-19 00:59:31', '2021-05-19 01:04:11', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `new_notes`
--

CREATE TABLE `new_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `employer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `description`, `client_id`, `employer_id`, `created_at`, `updated_at`, `candidate_id`) VALUES
(20, 'Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst vTest Test Test Test TEst Test TEst TEst vvvvTest Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst Test Test Test Test TEst Test TEst TEst', NULL, NULL, '2019-12-14 04:36:40', '2019-12-14 04:36:40', 18),
(22, 'TEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TESTTEST TEST TEST TEST TEST TES TEST TEST TEST TEST TEST', NULL, NULL, '2019-12-14 04:55:36', '2019-12-14 04:55:36', 20),
(23, 'asdfdsakjfhsdfaksdhfkljashdfkjashdfklhsadklfhasdkhfksadlfasdhfkljhasdflkhsad\r\nfahskdjfhaksljdfhkjsldhfklsahdfkljhasdlkjfhkalsdhfkshadklfhskdfhaklshdf\'asf\r\nasdfhjaskjdfhlksadhfasdhfdkhfaklsdhf', NULL, NULL, '2019-12-14 05:13:20', '2019-12-14 05:13:20', 21),
(24, NULL, NULL, NULL, '2019-12-14 05:39:17', '2019-12-14 05:39:17', 22),
(27, 'Testonly 1', 27, 1, '2019-12-14 08:45:26', '2020-02-26 21:48:47', NULL),
(28, 'again', 28, 1, '2019-12-14 08:46:56', '2020-02-26 21:59:35', NULL),
(29, 'asdfsdfasfasdfasdfasdfsdaf\r\nasdfasdfasdfasdfsadf\r\nasdfasdfasdfadfds', 29, 1, '2019-12-14 08:47:45', '2019-12-14 08:47:45', NULL),
(30, 'Occaecat magnam aute', NULL, NULL, '2019-12-17 21:48:27', '2019-12-17 21:48:27', 24),
(32, 'TESTING', NULL, 1, '2019-12-19 01:40:03', '2019-12-19 01:40:03', 25),
(36, 'asdfkajshdfklahskfdjl\r\nasdf\r\nasdfjaklsdfjl;asdjflk;asdjf\r\nasdfkljasl;dfjlaks;djflk;sadf\r\na;lsdfjl;asdjflasd;fasdfj\r\nasdlfjals;kdfjs;dfld', NULL, NULL, '2020-01-07 03:50:30', '2020-01-07 03:50:30', 27),
(37, 'asdfasdlkjflaks;djflkasdf\r\nasdl;kfja;lskdjflksadjf\r\nasldkfjal;skfjasdjf\r\nalskdjfl;aksdjfljdfas', NULL, NULL, '2020-01-07 04:07:37', '2020-01-07 04:07:37', 28),
(39, 'asdf;ljalsfjlasjf\r\naskl;djfal;sdjfl;asdf\r\nasjl;kdfj;laksdjf;lkjasdf\r\n;laksdjfld', NULL, NULL, '2020-01-14 02:23:46', '2020-01-14 02:23:46', 30),
(41, 'ajslkjf;lajsdfljasdfjfasf\r\naslkdfj;lasdjf;lasj', NULL, NULL, '2020-01-15 17:05:51', '2020-01-15 17:05:51', 31),
(42, 'New Client. Test 123. \r\nNew Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. \r\nNew Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. \r\nNew Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. New Client. Test 123. \r\nNew Client. Test 123. New Client. Test 123. New Client. Test 123.', 31, 1, '2020-01-18 01:44:53', '2020-01-18 01:44:53', NULL),
(44, 'asdfasdfasdf\r\nasdfasfsdfasdf', 33, 1, '2020-01-18 02:26:36', '2020-01-18 02:26:36', NULL),
(45, 'Malksdjf;ajsdfljasd;lfjsl;dfjlasjdf\r\nasdflkajsdfl;ajsdlfkjasl;fsdfj\r\nal;sdjf;lsdjf', 34, 1, '2020-01-18 02:34:50', '2020-01-18 02:34:50', NULL),
(47, 'asdfasdfasdfsad\r\nasdfsdfa\r\nsdf\r\nasdfasdfas\r\na\r\nsdfsdfasasdfsd', 36, 1, '2020-01-18 02:55:28', '2020-01-18 02:55:28', NULL),
(48, 'TEST TEST TEST\r\nTEST TEST TEST\r\nTEST TEST TESTTEST TEST TEST\r\n\r\nTEST TEST TESTTEST TEST TESTTEST TEST TEST\r\nTEST TEST TESTTEST TEST TESTTEST TEST TESTTEST TEST TEST\r\nTEST TEST TESTTEST TEST TESTTEST TEST TESTTEST TEST TEST', NULL, NULL, '2020-02-25 04:50:37', '2020-02-25 04:50:37', 32),
(49, 'alksdjflsjf\r\nasdklfjl;skjflkas;jf\r\naslkdjfl;sjflkasdf\r\naslkd;fjla;sd', NULL, NULL, '2020-02-25 05:55:37', '2020-02-25 05:55:37', 33),
(51, NULL, NULL, NULL, '2020-02-25 14:23:49', '2020-02-25 14:23:49', 35),
(53, 'new', NULL, 1, '2020-02-26 14:12:33', '2020-02-26 14:12:33', 35),
(71, 'hjkg', 34, 1, '2020-03-02 15:47:31', '2020-03-02 15:47:31', NULL),
(72, 'fsgtsdrg', 26, 1, '2020-03-02 15:52:57', '2020-03-02 15:52:57', NULL),
(73, 'gikfgktdu', 26, 1, '2020-03-02 16:50:58', '2020-03-02 16:50:58', NULL),
(74, 'dtyiuyi', 27, 1, '2020-03-02 16:57:03', '2020-03-02 16:57:03', NULL),
(75, 'stgrtsdrtdfy', 28, 1, '2020-03-02 16:57:52', '2020-03-02 16:57:52', NULL),
(77, 'Cumque suscipit labo', NULL, NULL, '2020-03-03 18:23:56', '2020-03-03 18:23:56', 36),
(78, 'Repudiandae maiores', NULL, NULL, '2020-03-03 18:26:36', '2020-03-03 18:26:36', 37),
(80, 'Id laborum Et ipsum', NULL, NULL, '2020-03-03 21:14:01', '2020-03-03 21:14:01', 39),
(83, 'aj;lsdfjlasdjfas\r\na;sldjf;lasjfl;ajs;df\r\na;lsjdf;lasjd;lfjas;df\r\nal;jsdf;lasdj', NULL, NULL, '2020-03-04 05:46:06', '2020-03-04 05:46:06', 42),
(85, 'ih;lkjhlj;ljl;kj\r\nkjhklhkjkjhkljh\r\nkhlkjhkljhkljhlk', NULL, NULL, '2020-03-04 06:27:28', '2020-03-04 06:27:28', 44),
(86, 'ja;lsdjf;lasj;flasjdlkfj\r\nas;ldfj;asdjfl;kasdjkfljasd\r\naslkdfj;alsdjf', NULL, NULL, '2020-03-04 06:42:17', '2020-03-04 06:42:17', 45),
(90, 'alkajsdlfjasl;fj\r\nas;ldfja;lksdjflkjasdf\r\nasldjfl;asjdflk;jsadf\r\nasldjf;laksdjflk;ajsdf\r\nas;ldfj;laksdjfl;kasdjfl;kadjs\r\nas;ldfj;alsdjflk;sdajfl\r\nasdl;fjalsdds', 39, 1, '2020-04-02 02:23:11', '2020-04-02 02:23:11', NULL),
(91, 'TEST TES TES', NULL, NULL, '2020-04-03 01:54:07', '2020-04-03 01:54:07', 47),
(92, 'alksjdflkajsdlkfjasd\r\nals;djflajsdl;fjasdl;f\r\na;lsdjf;lkasdjflk;jasdl;kfjsad\r\nalsjdfl;jasdlkfjasdf\r\na;lsdjf;lajsd', 40, 1, '2020-04-03 01:59:13', '2020-04-03 01:59:13', NULL),
(96, 'cat likes fishies and milkies', NULL, NULL, '2020-05-18 17:48:56', '2020-07-06 03:14:00', 50),
(97, 'asdlfjals;djflajsdlfkjasl;kdjfals;dfjsdlk;fjas;d', NULL, NULL, '2020-05-19 04:26:00', '2020-05-19 04:26:00', 51),
(104, 'asdhfkas;dfjalsdf;sajdf', NULL, NULL, '2020-07-02 10:56:15', '2020-07-02 10:56:15', 52),
(109, NULL, 50, 1, '2020-07-22 08:32:47', '2020-07-22 08:32:47', NULL),
(110, 'Delectus duis exped', 127, 54, '2020-09-09 00:44:22', '2020-09-09 00:44:22', NULL),
(111, 'Impedit cupidatat c', NULL, NULL, '2020-09-09 02:47:35', '2020-09-09 02:47:35', 2161);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0b13ed7e-83ab-4c13-977d-a8e010bbf0c9', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 04:30:09', '2020-09-09 04:28:48', '2020-09-09 04:30:09'),
('0c10e566-b56d-43d0-8d1a-17c7999855e9', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-10 06:02:01', '2020-09-10 05:56:43', '2020-09-10 06:02:01'),
('233ec101-7117-40c1-8dca-2c1b9a189759', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Zain created a job of Quae minima est ven for company Reeves Hess Trading <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/Job\\/Database\\\">View Details<a>\",\"info\":\"New Job is Posted\"}', '2020-09-10 06:02:01', '2020-09-10 05:59:05', '2020-09-10 06:02:01'),
('256c969a-7b19-4c22-a2d2-30a011820fe1', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 04:44:59', '2020-09-09 04:32:01', '2020-09-09 04:44:59'),
('477ad12a-f1ff-47ef-8fbb-2a6c60e31a5a', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"A new employee Leslie Sherman has signed up <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/sub-admin\\/all\\\">View Details<a>\",\"info\":\"New Employee Signed up\"}', '2020-09-09 00:41:16', '2020-09-09 00:41:13', '2020-09-09 00:41:16'),
('4fbab188-c771-4068-b180-9938c94f4afb', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 02:49:07', '2020-09-09 02:49:02', '2020-09-09 02:49:07'),
('54be0904-30f9-401f-aa43-582b9a4d5790', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 04:44:59', '2020-09-09 04:30:18', '2020-09-09 04:44:59'),
('56e6976a-fab9-4f0e-8b6f-13c264d80b28', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 02:51:30', '2020-09-09 02:51:12', '2020-09-09 02:51:30'),
('70836bed-a9fd-41a4-a3bd-438996972e1e', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"A new client Buckminster Perry is added by Zain <br><a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/Client\\/Database\\\">View Details<a>\",\"info\":\"New Client is Added\"}', '2020-09-09 02:49:08', '2020-09-09 00:44:22', '2020-09-09 02:49:08'),
('743f3c50-f12b-4fd8-ad99-b803b845be13', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-10 05:52:17', '2020-09-09 04:45:03', '2020-09-10 05:52:17'),
('82da7cf6-51e9-48ac-b328-d48a15a151e6', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"A new candidateFelicia Glover is added by Zain <br><a href=\\\"http:\\/\\/127.0.0.1:8000\\/candidate\\/detail\\/2161\\\">View Details<a>\",\"info\":\"New Candidate is Added\"}', '2020-09-09 02:49:08', '2020-09-09 02:47:35', '2020-09-09 02:49:08'),
('96d9602b-9bd8-43fb-a7c9-523801835d8a', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Zain Scheduled an interview with Dr. Lacy at <br> <b class=\\\"text-danger\\\">Sep 10th, 2020<\\/b> from  <b class=\\\"text-danger\\\">12:37 PM<\\/b> to <b class=\\\"text-danger\\\">07:31 PM<\\/b>  <br>  <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/scheduled\\/interview\\\">View Details<a>\",\"info\":\"New Interview has been Scheduled\"}', '2020-09-09 00:26:17', '2020-09-09 00:25:34', '2020-09-09 00:26:17'),
('a4b782d2-c7cb-4df3-8bb6-6eb2083fddc3', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 04:44:59', '2020-09-09 04:31:12', '2020-09-09 04:44:59'),
('b75c2fe4-b7b3-4f8e-8ee8-5287e6c819e5', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 04:44:59', '2020-09-09 04:30:26', '2020-09-09 04:44:59'),
('b91e7e59-a8c4-4c84-8db7-753bcbfb480c', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy Status Updated  <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status Changed in Pipeline\"}', '2020-09-07 04:51:45', '2020-09-07 04:33:21', '2020-09-07 04:51:45'),
('c79710a5-1538-47ae-9bcd-27bf212b296e', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Admin Scheduled an interview with Dr. Lacy at  <b class=\\\"text-danger\\\">Sep 6th, 2020<\\/b> from  <b class=\\\"text-danger\\\">10:05 AM<\\/b> to <b class=\\\"text-danger\\\">02:09 PM<\\/b>   <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/scheduled\\/interview\\\">View Details<a>\",\"info\":\"New Interview has been Scheduled\"}', '2020-09-09 00:14:53', '2020-09-09 00:06:36', '2020-09-09 00:14:53'),
('c7b36e54-bc0d-4497-bb04-8fb59269df53', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-10 05:52:42', '2020-09-10 05:52:36', '2020-09-10 05:52:42'),
('c84f1dc4-661a-4d36-945f-6b908af3d793', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"You have a Contract Meeting at <b class=\\\"text-danger\\\">Sep 18th, 2020<\\/b> on <b class=\\\"text-danger\\\">09:44 AM<\\/b> <br><a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/calendar\\\">View Calendar<a>\",\"info\":\"TO DO LIST reminder\"}', '2020-09-18 03:48:39', '2020-09-18 03:48:35', '2020-09-18 03:48:39'),
('f723a469-d838-4b28-ab85-45912c1d6cff', 'App\\Notifications\\Info', 'App\\User', 1, '{\"data\":\"Dr. Lacy\'s status just got updated by Zain <br> <a href=\\\"http:\\/\\/127.0.0.1:8000\\/admin\\/pipeline\\\">View Details<a>\",\"info\":\"Status is Updated in Pipeline\"}', '2020-09-09 04:44:59', '2020-09-09 04:30:48', '2020-09-09 04:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aroojfatima2067@gmail.com', '$2y$10$jCTqg5oEG1zSIUzrio/KJOkXEUMFSCQbh.mtYikzY4Sozz0n3gt96', '2019-12-13 13:47:54'),
('virtualmotivz@gmail.com', '$2y$10$uMQV34virgy4fxJe2QCSa.QjVKfTC/vkyJjo.nTsOUAh8zQwdmgse', '2020-07-02 11:21:49'),
('admin@mymotivz.com', '$2y$10$S3t6AHnPyYoTtMN.NSp7/.gCdCYlHoyloHvNnFvV1g5M9lE6zz7P6', '2020-07-02 11:22:26'),
('aroojfatima2067@gmail.com', '$2y$10$jCTqg5oEG1zSIUzrio/KJOkXEUMFSCQbh.mtYikzY4Sozz0n3gt96', '2019-12-13 13:47:54'),
('virtualmotivz@gmail.com', '$2y$10$uMQV34virgy4fxJe2QCSa.QjVKfTC/vkyJjo.nTsOUAh8zQwdmgse', '2020-07-02 11:21:49'),
('admin@mymotivz.com', '$2y$10$S3t6AHnPyYoTtMN.NSp7/.gCdCYlHoyloHvNnFvV1g5M9lE6zz7P6', '2020-07-02 11:22:26'),
('aroojfatima2067@gmail.com', '$2y$10$jCTqg5oEG1zSIUzrio/KJOkXEUMFSCQbh.mtYikzY4Sozz0n3gt96', '2019-12-13 13:47:54'),
('virtualmotivz@gmail.com', '$2y$10$uMQV34virgy4fxJe2QCSa.QjVKfTC/vkyJjo.nTsOUAh8zQwdmgse', '2020-07-02 11:21:49'),
('admin@mymotivz.com', '$2y$10$S3t6AHnPyYoTtMN.NSp7/.gCdCYlHoyloHvNnFvV1g5M9lE6zz7P6', '2020-07-02 11:22:26'),
('aroojfatima2067@gmail.com', '$2y$10$jCTqg5oEG1zSIUzrio/KJOkXEUMFSCQbh.mtYikzY4Sozz0n3gt96', '2019-12-13 13:47:54'),
('virtualmotivz@gmail.com', '$2y$10$uMQV34virgy4fxJe2QCSa.QjVKfTC/vkyJjo.nTsOUAh8zQwdmgse', '2020-07-02 11:21:49'),
('admin@mymotivz.com', '$2y$10$S3t6AHnPyYoTtMN.NSp7/.gCdCYlHoyloHvNnFvV1g5M9lE6zz7P6', '2020-07-02 11:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `placements`
--

CREATE TABLE `placements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recruiter_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placements`
--

INSERT INTO `placements` (`id`, `candidate_id`, `job_id`, `client_id`, `salary`, `fee`, `start_date`, `created_at`, `updated_at`, `recruiter_id`) VALUES
(13, 17, 30, 26, '$12.5', '$11.2', '2020-03-17', '2020-03-24 17:46:38', '2020-03-24 17:46:38', 1),
(14, 25, NULL, NULL, '$ 20', '$11', '2020-03-25', '2020-03-24 17:59:11', '2020-06-25 14:39:01', 1),
(15, 19, 19, 27, '$222', '$11.2', '2020-04-16', '2020-03-24 19:36:56', '2020-03-24 19:36:56', 1),
(16, 31, NULL, NULL, '$21', '$11.2', '1970-01-01', '2020-03-25 13:47:31', '2020-06-25 14:38:39', 1),
(18, 37, 29, 26, '$ 30,000', '$ 2.03', '2020-03-31', '2020-03-25 19:43:38', '2020-03-25 19:43:38', 1),
(19, 45, 29, 26, '$93,000', '$35,000', '2020-03-31', '2020-03-27 02:22:38', '2020-03-27 02:22:38', 1),
(20, 47, 21, 27, '$200', '$11.2', '2020-05-06', '2020-05-15 18:45:58', '2020-05-15 18:45:58', 21);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Full Access', '2020-05-06 02:24:31', '2020-05-15 14:45:04'),
(2, 'Add New Candidate', '2020-05-06 02:24:43', '2020-05-06 02:24:43'),
(3, 'Add New Job', '2020-05-06 02:26:50', '2020-05-06 02:26:50'),
(4, 'Add New Client', '2020-05-06 02:26:59', '2020-05-06 02:26:59'),
(5, 'Add New Employee', '2020-05-15 14:39:06', '2020-05-18 16:16:15'),
(6, 'Delete Candidates', '2020-05-15 14:39:25', '2020-05-15 14:39:25'),
(7, 'Delete Resumes', '2020-05-15 14:41:02', '2020-05-15 14:41:02'),
(8, 'Download Resumes', '2020-05-15 14:42:29', '2020-05-15 14:42:29'),
(9, 'View Contracts', '2020-05-15 14:42:47', '2020-05-15 14:42:47'),
(10, 'Delete Contracts', '2020-05-15 14:43:27', '2020-05-15 14:43:27'),
(11, 'Delete Clients', '2020-05-15 14:43:45', '2020-05-15 14:45:50'),
(12, 'View All Placement', '2020-05-15 14:44:02', '2020-05-15 14:44:02'),
(13, 'Delete All Jobs', '2020-06-24 14:32:55', '2020-06-24 14:32:55'),
(14, 'Import Data', '2020-08-04 16:57:19', '2020-08-04 16:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `privileges_user`
--

CREATE TABLE `privileges_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `privileges_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privileges_user`
--

INSERT INTO `privileges_user` (`id`, `user_id`, `privileges_id`, `created_at`, `updated_at`) VALUES
(27, NULL, 2, NULL, NULL),
(28, NULL, 2, NULL, NULL),
(83, 19, 2, NULL, NULL),
(84, 17, 1, NULL, NULL),
(85, 22, 1, NULL, NULL),
(86, 23, 1, NULL, NULL),
(108, 26, 3, NULL, NULL),
(109, 26, 4, NULL, NULL),
(110, 26, 5, NULL, NULL),
(111, 26, 11, NULL, NULL),
(112, 26, 12, NULL, NULL),
(115, 10, 3, NULL, NULL),
(116, 10, 4, NULL, NULL),
(117, 18, 2, NULL, NULL),
(118, 18, 3, NULL, NULL),
(119, 18, 4, NULL, NULL),
(120, 18, 5, NULL, NULL),
(165, 21, 3, NULL, NULL),
(169, 30, 2, NULL, NULL),
(170, 30, 3, NULL, NULL),
(171, 30, 4, NULL, NULL),
(172, 30, 8, NULL, NULL),
(173, 30, 9, NULL, NULL),
(186, 28, 1, NULL, NULL),
(189, 34, 2, NULL, NULL),
(190, 34, 4, NULL, NULL),
(191, 34, 6, NULL, NULL),
(192, 34, 7, NULL, NULL),
(193, 34, 10, NULL, NULL),
(194, 34, 11, NULL, NULL),
(196, 35, 1, NULL, NULL),
(213, 37, 5, NULL, NULL),
(259, 44, 3, NULL, NULL),
(260, 44, 4, NULL, NULL),
(261, 44, 5, NULL, NULL),
(262, 44, 6, NULL, NULL),
(263, 44, 7, NULL, NULL),
(264, 44, 12, NULL, NULL),
(265, 44, 13, NULL, NULL),
(275, 49, 6, NULL, NULL),
(276, 50, 1, NULL, NULL),
(281, 52, 2, NULL, NULL),
(282, 52, 3, NULL, NULL),
(283, 52, 4, NULL, NULL),
(284, 52, 8, NULL, NULL),
(285, 52, 9, NULL, NULL),
(286, 53, 2, NULL, NULL),
(287, 53, 3, NULL, NULL),
(288, 53, 4, NULL, NULL),
(289, 53, 6, NULL, NULL),
(290, 53, 7, NULL, NULL),
(291, 53, 8, NULL, NULL),
(292, 53, 9, NULL, NULL),
(293, 53, 10, NULL, NULL),
(294, 53, 11, NULL, NULL),
(295, 53, 12, NULL, NULL),
(296, 53, 13, NULL, NULL),
(301, 55, 2, NULL, NULL),
(302, 55, 3, NULL, NULL),
(303, 55, 4, NULL, NULL),
(304, 55, 5, NULL, NULL),
(305, 55, 6, NULL, NULL),
(306, 55, 7, NULL, NULL),
(307, 55, 8, NULL, NULL),
(308, 55, 9, NULL, NULL),
(309, 55, 10, NULL, NULL),
(310, 55, 11, NULL, NULL),
(311, 55, 12, NULL, NULL),
(312, 55, 13, NULL, NULL),
(317, 54, 2, NULL, NULL),
(318, 54, 3, NULL, NULL),
(319, 54, 4, NULL, NULL),
(320, 54, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receiver_emails`
--

CREATE TABLE `receiver_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interview_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receiver_emails`
--

INSERT INTO `receiver_emails` (`id`, `interview_id`, `email`, `created_at`, `updated_at`) VALUES
(2, 2, 'Z@mail.com', NULL, NULL),
(3, 2, 'A@mail.com', NULL, NULL),
(4, 3, 'w@mail.com', NULL, NULL),
(7, 8, 'nathan@mymotivz.com', '2020-03-04 06:55:07', '2020-03-04 06:55:07'),
(14, 16, 'Nathan@MyMotivz.com', '2020-04-29 05:56:14', '2020-04-29 05:56:14'),
(19, 19, 'Nathan@Mymotivz.com', '2020-06-18 15:36:23', '2020-06-18 15:36:23'),
(20, 19, 'virtualmotivz@gmail.com', '2020-06-18 15:36:23', '2020-06-18 15:36:23'),
(28, 30, 'Nathan@MyMotivz.com', '2020-07-02 11:04:46', '2020-07-02 11:04:46'),
(29, 30, 'tony@mymotivz.com', '2020-07-02 11:04:46', '2020-07-02 11:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_services`
--

CREATE TABLE `recruitment_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recruitment_services`
--

INSERT INTO `recruitment_services` (`id`, `client_id`, `job_title`, `education_id`, `location`, `web_url`, `salary_sign`, `salary`, `salary_to`, `salary_type`, `industry_id`, `service`, `job_desc`, `document`, `updated_at`, `created_at`) VALUES
(4, 22, 'Lorem at nostrum et', 1, 'New York', 'http://www.google.com', '$', '15000', NULL, 'Per Year', 1, 'Direct', 'sd', '', '2021-04-09 11:46:01', '2021-04-09 11:46:01'),
(5, 22, 'Lorem at nostrum et', 1, 'New York', 'http://www.google.com', '$', '45000.00', NULL, 'Per Month', 1, 'Direct', 'a', 'MyMotivz Testing-2021_04_09-04-47-32.docx', '2021-04-09 11:47:32', '2021-04-09 11:47:32'),
(9, 10, 'Est possimus labor', 7, 'Et fuga Esse quisq', 'http://www.example.com', '€', '66', NULL, 'Per Day', 13, 'Direct', 'Ipsum ea impedit et', '', '2021-04-20 10:00:04', '2021-04-20 10:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `resume`, `candidate_id`, `created_at`, `updated_at`) VALUES
(14, 'CVofDr.JoanStroud-2020_02_24-20-50-37.pdf', 32, '2020-02-25 04:50:37', '2020-02-25 04:50:37'),
(15, '2017-Benefit-Highlights_Provider-1-2020_02_24-21-55-37.pdf', 33, '2020-02-25 05:55:37', '2020-02-25 05:55:37'),
(16, 'LiebCV2018-2020_02_24-23-44-12.pdf', 34, '2020-02-25 07:44:12', '2020-02-25 07:44:12'),
(18, 'forupload-2020_03_03-10-33-42.doc', 36, '2020-03-03 18:33:42', '2020-03-03 18:33:42'),
(20, 'forupload-2020_03_03-10-44-12.doc', 37, '2020-03-03 18:44:12', '2020-03-03 18:44:12'),
(28, 'NewMicrosoftWordDocument-2020_03_03-13-14-01.doc', 39, '2020-03-03 21:14:01', '2020-03-03 21:14:01'),
(35, 'ACPSummaryofBenefits0318(1)(2)-2020_03_03-22-30-40.pdf', 44, '2020-03-04 06:30:40', '2020-03-04 06:30:40'),
(36, 'Landlord-FSBO-Email-Template-2-2020_03_03-22-42-17.docx', 45, '2020-03-04 06:42:17', '2020-03-04 06:42:17'),
(38, 'TermsofEngagementSAVANTCARE-2020_04_02-18-54-07.pdf', 47, '2020-04-03 01:54:07', '2020-04-03 01:54:07'),
(39, 'lorem-ipsum-2020_04_03-14-58-56.pdf', 23, '2020-04-03 21:58:56', '2020-04-03 21:58:56'),
(40, 'lorem-ipsum-2020_04_03-15-02-11.pdf', 21, '2020-04-03 22:02:11', '2020-04-03 22:02:11'),
(41, 'lorem-ipsum-2020_04_03-15-02-32.pdf', 21, '2020-04-03 22:02:32', '2020-04-03 22:02:32'),
(42, 'lorem-ipsum-2020_04_03-15-05-59.pdf', 17, '2020-04-03 22:05:59', '2020-04-03 22:05:59'),
(43, 'lorem-ipsum-2020_04_03-15-06-19.pdf', 17, '2020-04-03 22:06:19', '2020-04-03 22:06:19'),
(44, 'lorem-ipsum-2020_04_03-15-06-23.pdf', 17, '2020-04-03 22:06:23', '2020-04-03 22:06:23'),
(45, 'Au-2020_04_03-15-09-45.doc', 44, '2020-04-03 22:09:45', '2020-04-03 22:09:45'),
(47, 'Au-2020_04_03-15-12-09.doc', 35, '2020-04-03 22:12:09', '2020-04-03 22:12:09'),
(50, 'lorem-ipsum-2020_05_18-10-48-56.pdf', 50, '2020-05-18 17:48:56', '2020-05-18 17:48:56'),
(51, 'CVofDr.ValerieAu-2020_05_18-21-26-00.pdf', 51, '2020-05-19 04:26:00', '2020-05-19 04:26:00'),
(75, 'Laravel Eloquent-2020_12_01-23-49-55.docx', 2208, '2020-12-01 18:49:55', '2020-12-01 18:49:55'),
(76, 'testCopy-2020_12_01-23-50-31.docx', 2208, '2020-12-01 18:50:31', '2020-12-01 18:50:31'),
(78, 'Laravel Eloquent-2020_12_07-03-28-00.docx', 2208, '2020-12-06 22:28:00', '2020-12-06 22:28:00'),
(79, 'Laravel Eloquent-2020_12_07-04-55-50.docx', 2208, '2020-12-06 23:55:50', '2020-12-06 23:55:50'),
(80, 'testCopy-2020_12_10-02-31-12.docx', 2207, '2020-12-09 21:31:12', '2020-12-09 21:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_interviews`
--

CREATE TABLE `schedule_interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule_interviews`
--

INSERT INTO `schedule_interviews` (`id`, `user_id`, `candidate_id`, `status_id`, `job_id`, `client_id`, `start_date`, `start_time`, `end_time`, `time_zone`, `location`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 1, 25, 31, 18, 29, '2020-02-01', '13:02:00', '15:02:00', 'PST', 'London', 'Subject', 'df', '2020-02-28 17:17:47', '2020-02-28 17:17:47'),
(3, 1, 31, 37, 18, 29, '2020-02-20', '13:10:00', '14:01:00', 'CST', 'London', 'Mail', 'dggggggggggggggggggggggggggggggggggg', '2020-02-28 17:55:45', '2020-04-22 02:06:07'),
(4, 1, 17, 38, 21, 27, '2020-02-19', '13:00:00', '16:00:00', 'EST', 'London', 'Demo', 'gjdhsedtr', '2020-02-28 19:15:45', '2020-03-03 18:46:33'),
(5, 1, 33, 38, 18, 29, '2020-03-03', '13:01:00', '01:03:00', 'CST', 'London', 'p', 'gfjgjg', '2020-03-03 17:08:03', '2020-03-04 07:14:02'),
(6, 1, 23, 31, 29, 26, '2020-02-19', '13:02:00', '14:03:00', 'PST', 'F9fqMDmAk6', 'Yc2BI7Ii4P', 'aHSJD04Xym', '2020-03-03 22:11:39', '2020-03-03 22:11:39'),
(8, 1, 32, 39, 29, 26, '2020-03-03', '16:00:00', '16:30:00', 'PST', 'Las Vegas, NV', '2nd interview', 'alksdjf;lasjdflkjasl;fjlaksdfjas;dfd;ljfalskfj', '2020-03-04 06:55:07', '2020-03-28 18:23:11'),
(15, 1, 17, 38, 22, 27, '2020-04-22', '16:12:00', '02:59:00', 'EST', 'Molestias quia velit', 'Iure illum dolorum', 'Sint ullam aut repud', '2020-04-22 16:45:23', '2020-04-29 13:32:52'),
(16, 1, 20, 31, 19, 27, '2020-04-29', '16:00:00', '17:00:00', 'CST', 'Los Angeles, CA', 'TEST', 'TEST TESTTEST', '2020-04-29 05:56:14', '2020-04-29 05:56:14'),
(19, 1, 33, 32, 30, 26, '2020-06-22', '13:37:00', '15:35:00', 'CST', 'Las Vegas, NV', 'Dr. Lopez - Phone Interview with Dr. Johnson Confirmed for Thursday 2/20 @ 6:15 am', 'TEljal;sdjfajsld;fjal;sdjf<br />\r\nasd;lkfjas;ldjfl;aj<br />\r\nas;ldjf;ljsdf<br />\r\na;sdlfkjalsdf', '2020-06-18 15:36:23', '2020-06-18 15:36:23'),
(26, 1, 33, 30, 30, 26, '2020-07-15', '11:21:00', '11:22:00', 'PST', 'davav', 'Interview', 'fhkdbljkdgndlhkjsdgh[do', '2020-07-01 13:22:19', '2020-07-01 13:22:19'),
(27, 1, 21, 31, 34, 29, '2020-07-23', '11:25:00', '11:25:00', 'CST', 'gjmdhfdh', '\';lkjhgfdsa.,mnbv', 'gvblkjfsgoj;ksdhj;fohkgp[hkl<br />\r\nfrogjdofjk;h;d<br />\r\nfdkghilfdjg;dlgjk;fdogjk;fdl<br />\r\nfidljg;fdogk;fdlgjk;fdlkg', '2020-07-01 13:25:54', '2020-07-01 13:25:54'),
(28, 1, 21, 32, 34, 29, '2020-07-27', '12:08:00', '14:06:00', 'CST', 'fhjdj', 'ulklkfukirtue', 'dfg79d0-yi[topy=uoiutytyittjt<br />\r\ntyitpokhtp hykt<br />\r\ntjupyiokiyorjgk', '2020-07-01 14:06:39', '2020-07-01 14:06:39'),
(29, 1, 33, 46, 30, 26, '1970-01-01', '00:05:00', '02:31:00', 'PST', 'Sit deserunt a sint', 'Fugiat officia volup', 'Et autem iure quasi', '2020-07-01 14:31:11', '2020-07-01 14:31:11'),
(30, 50, 52, 31, 50, 48, '2020-07-16', '23:03:00', '12:03:00', 'PST', 'Las Vegas, NV', 'Dr. Lopez - Phone Interview with Dr. Johnson Confirmed for Thursday 2/20 @ 6:15 am', 'a;sjdf;lajsdlf;jasdf<br />\r\naj;sldfkj;lsadjf;ljasldfsadfj<br />\r\n;lsadjlfjsal;dkjf;ljsadflksal;dkjf<br />\r\nasdjflkjas;ldfj;laksdjl;fjas;dfjasd<br />\r\nfajsl;fj;lsajdfljasld;fj;lsadfl;jsd<br />\r\nfalskfjl;asdjflsajdlfj;las', '2020-07-02 11:04:46', '2020-07-02 11:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Alabama', 4, NULL, NULL),
(2, 'Alaska', 4, NULL, NULL),
(3, 'Arizona', 4, NULL, NULL),
(4, 'Arkansas', 4, NULL, NULL),
(5, 'California', 4, NULL, NULL),
(6, 'Colorado', 4, NULL, NULL),
(7, 'Connecticut', 4, NULL, NULL),
(8, 'Delaware', 4, NULL, NULL),
(9, 'Florida', 4, NULL, NULL),
(10, 'Georgia', 4, NULL, NULL),
(11, 'Hawaii', 4, NULL, NULL),
(12, 'Idaho', 4, NULL, NULL),
(13, 'Illinois', 4, NULL, NULL),
(14, 'Indiana', 4, NULL, NULL),
(15, 'Iowa', 4, NULL, NULL),
(16, 'Kansas', 4, NULL, NULL),
(17, 'Kentucky', 4, NULL, NULL),
(18, 'Louisiana', 4, NULL, NULL),
(19, 'Maine', 4, NULL, NULL),
(20, 'Maryland', 4, NULL, NULL),
(21, 'Massachusetts', 4, NULL, NULL),
(22, 'Michigan', 4, NULL, NULL),
(23, 'Minnesota', 4, NULL, NULL),
(24, 'Mississippi', 4, NULL, NULL),
(25, 'Missouri', 4, NULL, NULL),
(26, 'Montana', 4, NULL, NULL),
(27, 'Nebraska', 4, NULL, NULL),
(28, 'Nevada', 4, NULL, NULL),
(29, 'New Hampshire', 4, NULL, NULL),
(30, 'New Jersey', 4, NULL, NULL),
(33, 'New Mexico', 4, NULL, NULL),
(34, 'New York', 4, NULL, NULL),
(35, 'North Carolina', 4, NULL, NULL),
(36, 'North Dakota', 4, NULL, NULL),
(37, 'Ohio', 4, NULL, NULL),
(38, 'Oklahoma', 4, NULL, NULL),
(39, 'Oregon', 4, NULL, NULL),
(40, 'Pennsylvania', 4, NULL, NULL),
(41, 'Rhode Island', 4, NULL, NULL),
(42, 'South Carolina', 4, NULL, NULL),
(43, 'South Dakota', 4, NULL, NULL),
(44, 'Tennessee', 4, NULL, NULL),
(45, 'Texas', 4, NULL, NULL),
(46, 'Utah', 4, NULL, NULL),
(47, 'Vermont', 4, NULL, NULL),
(48, 'Virginia', 4, NULL, NULL),
(49, 'Washington', 4, NULL, NULL),
(50, 'West Virginia', 4, NULL, NULL),
(51, 'Wisconsin', 4, NULL, NULL),
(52, 'Wyoming', 4, NULL, NULL),
(53, 'Alberta', 2, NULL, NULL),
(54, 'British Columbia', 2, NULL, NULL),
(55, 'Manitoba', 2, NULL, NULL),
(56, 'New Brunswick', 2, NULL, NULL),
(57, 'Newfoundland', 2, NULL, NULL),
(58, 'Northwest Territories', 2, NULL, NULL),
(59, 'Nova Scotia', 2, NULL, NULL),
(60, 'Nunavut', 2, NULL, NULL),
(61, 'Ontario', 2, NULL, NULL),
(62, 'Prince Edward Island', 2, NULL, NULL),
(63, 'Quebec', 2, NULL, NULL),
(64, 'Saskatchewan', 2, NULL, NULL),
(65, 'Yukon', 2, NULL, NULL),
(66, 'Australian Capital Territory', 1, NULL, NULL),
(67, 'New South Wales', 1, NULL, NULL),
(68, 'Northern Territory', 1, NULL, NULL),
(69, 'Queensland', 1, NULL, NULL),
(70, 'South Australia', 1, NULL, NULL),
(71, 'Tasmania', 1, NULL, NULL),
(72, 'Victoria', 1, NULL, NULL),
(73, 'Western Australia', 1, NULL, NULL),
(74, 'Aberconwy and Colwyn', 3, NULL, NULL),
(75, 'Aberdeen City', 3, NULL, NULL),
(76, 'Aberdeenshire', 3, NULL, NULL),
(77, 'Anglesey', 3, NULL, NULL),
(78, 'Angus', 3, NULL, NULL),
(79, 'Antrim', 3, NULL, NULL),
(80, 'Argyll and Bute', 3, NULL, NULL),
(81, 'Armagh', 3, NULL, NULL),
(82, 'Avon', 3, NULL, NULL),
(83, 'Ayrshire', 3, NULL, NULL),
(84, 'Bath and NE Somerset', 3, NULL, NULL),
(85, 'Bedfordshire', 3, NULL, NULL),
(86, 'Belfast', 3, NULL, NULL),
(87, 'Berkshire', 3, NULL, NULL),
(88, 'Berwickshire', 3, NULL, NULL),
(89, 'BFPO', 3, NULL, NULL),
(90, 'Blaenau Gwent', 3, NULL, NULL),
(91, 'Buckinghamshire', 3, NULL, NULL),
(92, 'Caernarfonshire', 3, NULL, NULL),
(93, 'Caerphilly', 3, NULL, NULL),
(94, 'Caithness', 3, NULL, NULL),
(95, 'Cambridgeshire', 3, NULL, NULL),
(96, 'Cardiff', 3, NULL, NULL),
(97, 'Cardiganshire', 3, NULL, NULL),
(98, 'Carmarthenshire', 3, NULL, NULL),
(99, 'Ceredigion', 3, NULL, NULL),
(100, 'Channel Islands', 3, NULL, NULL),
(101, 'Cheshire', 3, NULL, NULL),
(102, 'City of Bristol', 3, NULL, NULL),
(103, 'Clackmannanshire', 3, NULL, NULL),
(104, 'Clwyd', 3, NULL, NULL),
(105, 'Conwy', 3, NULL, NULL),
(106, 'Cornwall/Scilly', 3, NULL, NULL),
(107, 'Cumbria', 3, NULL, NULL),
(108, 'Denbighshire', 3, NULL, NULL),
(109, 'Derbyshire', 3, NULL, NULL),
(110, 'Derry/Londonderry', 3, NULL, NULL),
(111, 'Devon', 3, NULL, NULL),
(112, 'Dorset', 3, NULL, NULL),
(113, 'Down', 3, NULL, NULL),
(114, 'Dumfries and Galloway', 3, NULL, NULL),
(115, 'Dunbartonshire', 3, NULL, NULL),
(116, 'Dundee', 3, NULL, NULL),
(117, 'Durham', 3, NULL, NULL),
(118, 'Dyfed', 3, NULL, NULL),
(119, 'East Ayrshire', 3, NULL, NULL),
(120, 'East Dunbartonshire', 3, NULL, NULL),
(121, 'East Lothian', 3, NULL, NULL),
(122, 'East Renfrewshire', 3, NULL, NULL),
(123, 'East Riding Yorkshire', 3, NULL, NULL),
(124, 'East Sussex', 3, NULL, NULL),
(125, 'Edinburgh', 3, NULL, NULL),
(126, 'England', 3, NULL, NULL),
(127, 'Essex', 3, NULL, NULL),
(128, 'Falkirk', 3, NULL, NULL),
(129, 'Fermanagh', 3, NULL, NULL),
(130, 'Fife', 3, NULL, NULL),
(131, 'Flintshire', 3, NULL, NULL),
(132, 'Glasgow', 3, NULL, NULL),
(133, 'Gloucestershire', 3, NULL, NULL),
(134, 'Greater London', 3, NULL, NULL),
(135, 'Greater Manchester', 3, NULL, NULL),
(136, 'Gwent', 3, NULL, NULL),
(137, 'Gwynedd', 3, NULL, NULL),
(138, 'Hampshire', 3, NULL, NULL),
(139, 'Hartlepool', 3, NULL, NULL),
(140, 'Hereford and Worcester', 3, NULL, NULL),
(141, 'Hertfordshire', 3, NULL, NULL),
(142, 'Highlands', 3, NULL, NULL),
(143, 'Inverclyde', 3, NULL, NULL),
(144, 'Inverness-Shire', 3, NULL, NULL),
(145, 'Isle of Man', 3, NULL, NULL),
(146, 'Isle of Wight', 3, NULL, NULL),
(147, 'Kent', 3, NULL, NULL),
(148, 'Kincardinshire', 3, NULL, NULL),
(149, 'Kingston Upon Hull', 3, NULL, NULL),
(150, 'Kinross-Shire', 3, NULL, NULL),
(151, 'Kirklees', 3, NULL, NULL),
(152, 'Lanarkshire', 3, NULL, NULL),
(153, 'Lancashire', 3, NULL, NULL),
(154, 'Leicestershire', 3, NULL, NULL),
(155, 'Lincolnshire', 3, NULL, NULL),
(156, 'Londonderry', 3, NULL, NULL),
(157, 'Merseyside', 3, NULL, NULL),
(158, 'Merthyr Tydfil', 3, NULL, NULL),
(159, 'Mid Glamorgan', 3, NULL, NULL),
(160, 'Mid Lothian', 3, NULL, NULL),
(161, 'Middlesex', 3, NULL, NULL),
(162, 'Monmouthshire', 3, NULL, NULL),
(163, 'Moray', 3, NULL, NULL),
(164, 'Neath & Port Talbot', 3, NULL, NULL),
(165, 'Newport', 3, NULL, NULL),
(166, 'Norfolk', 3, NULL, NULL),
(167, 'North Ayrshire', 3, NULL, NULL),
(168, 'North East Lincolnshire', 3, NULL, NULL),
(169, 'North Lanarkshire', 3, NULL, NULL),
(170, 'North Lincolnshire', 3, NULL, NULL),
(171, 'North Somerset', 3, NULL, NULL),
(172, 'North Yorkshire', 3, NULL, NULL),
(173, 'Northamptonshire', 3, NULL, NULL),
(174, 'Northern Ireland', 3, NULL, NULL),
(175, 'Northumberland', 3, NULL, NULL),
(176, 'Nottinghamshire', 3, NULL, NULL),
(177, 'Orkney and Shetland Isles', 3, NULL, NULL),
(178, 'Oxfordshire', 3, NULL, NULL),
(179, 'Pembrokeshire', 3, NULL, NULL),
(180, 'Perth and Kinross', 3, NULL, NULL),
(181, 'Powys', 3, NULL, NULL),
(182, 'Redcar and Cleveland', 3, NULL, NULL),
(183, 'Renfrewshire', 3, NULL, NULL),
(184, 'Rhonda Cynon Taff', 3, NULL, NULL),
(185, 'Rutland', 3, NULL, NULL),
(186, 'Scottish Borders', 3, NULL, NULL),
(187, 'Shetland', 3, NULL, NULL),
(188, 'Shropshire', 3, NULL, NULL),
(189, 'Somerset', 3, NULL, NULL),
(190, 'South Ayrshire', 3, NULL, NULL),
(191, 'South Glamorgan', 3, NULL, NULL),
(192, 'South Gloucesteshire', 3, NULL, NULL),
(193, 'South Lanarkshire', 3, NULL, NULL),
(194, 'South Yorkshire', 3, NULL, NULL),
(195, 'Staffordshire', 3, NULL, NULL),
(196, 'Stirling', 3, NULL, NULL),
(197, 'Stockton On Tees', 3, NULL, NULL),
(198, 'Suffolk', 3, NULL, NULL),
(199, 'Surrey', 3, NULL, NULL),
(200, 'Swansea', 3, NULL, NULL),
(201, 'Torfaen', 3, NULL, NULL),
(202, 'Tyne and Wear', 3, NULL, NULL),
(203, 'Tyrone', 3, NULL, NULL),
(204, 'Vale Of Glamorgan', 3, NULL, NULL),
(205, 'Wales', 3, NULL, NULL),
(206, 'Warwickshire', 3, NULL, NULL),
(207, 'West Berkshire', 3, NULL, NULL),
(208, 'West Dunbartonshire', 3, NULL, NULL),
(209, 'West Glamorgan', 3, NULL, NULL),
(210, 'West Lothian', 3, NULL, NULL),
(211, 'West Midlands', 3, NULL, NULL),
(212, 'West Sussex', 3, NULL, NULL),
(213, 'West Yorkshire', 3, NULL, NULL),
(214, 'Western Isles', 3, NULL, NULL),
(215, 'Wiltshire', 3, NULL, NULL),
(216, 'Wirral', 3, NULL, NULL),
(217, 'Worcestershire', 3, NULL, NULL),
(218, 'Wrexham', 3, NULL, NULL),
(219, 'York', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reminder` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `status_icon`, `color`, `created_at`, `updated_at`, `reminder`) VALUES
(1, 'OTM', 'OnTheMarket(OTM)-2020_06_25-11-25-26.png', '#800040', NULL, '2020-07-02 11:33:10', 'Monthly'),
(30, 'PRESENTED', 'Presented(1)-2020_06_30-04-53-00.png', '#e6d942', '2019-12-14 06:57:32', '2020-06-30 11:53:00', 'Weekly'),
(31, '1ST INTERVIEW', '1stInterview-2020_06_26-11-53-41.png', '#ea8000', '2019-12-14 07:02:33', '2020-06-26 18:53:41', NULL),
(32, '2ND INTERVIEW', '2ndInterview-2020_06_25-11-31-14.png', '#3762dd', '2019-12-14 07:02:50', '2020-06-26 01:18:16', NULL),
(34, '3RD INTERVIEW', '3rdInterview-2020_06_25-11-31-01.png', '#44b6a7', '2019-12-14 07:03:04', '2020-06-26 01:18:22', NULL),
(36, 'RECRUIT', 'NewRecruit-2020_06_25-11-31-37.png', '#000000', '2019-12-14 07:03:22', '2020-06-25 18:31:37', NULL),
(37, 'REJECTED', 'Rejected-2020_06_25-11-31-50.png', '#9e1a05', '2019-12-14 07:03:57', '2020-06-25 18:31:50', 'Daily'),
(38, 'WITHDRAW', 'Withdraw-2020_06_26-17-36-56.png', '#e73200', '2019-12-14 07:04:06', '2020-06-27 00:37:07', NULL),
(39, 'HIRED', 'Hired-2020_06_26-17-39-50.png', '#008800', '2019-12-14 07:04:33', '2020-06-27 00:39:50', NULL),
(41, 'NEGOTIATING', 'SalaryNegotation-2020_06_25-11-32-59.png', '#942192', '2019-12-19 03:56:57', '2020-06-25 18:32:59', NULL),
(45, 'DNC', 'DoNotContact-2020_06_25-11-33-55.png', '#ff0000', '2020-01-15 00:37:32', '2020-06-25 18:33:55', NULL),
(46, 'JOB OFFER', 'JobOffer-2020_06_25-11-32-40.png', '#cd7cb2', '2020-01-15 16:57:16', '2020-06-25 18:32:40', NULL),
(47, 'NEW APPLICANT', 'NewApplicant-2020_06_25-11-34-16.png', '#034b4a', '2020-01-15 16:58:48', '2020-06-25 18:34:16', NULL),
(58, '4TH INTERVIEW', '4thInterview-2020_06_26-17-32-04.png', '', '2020-06-27 00:32:04', '2020-06-27 00:32:04', NULL),
(59, '5TH INTERVIEW', '5thInterview-2020_06_26-17-32-40.png', '', '2020-06-27 00:32:40', '2020-06-27 00:32:40', NULL),
(60, 'IMPORTED', 'pngguru.com-2020_07_22-10-23-54.png', '', '2020-07-22 05:23:54', '2020-08-04 01:34:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `action_id`, `user_id`, `date`, `time`, `details`, `created_at`, `updated_at`) VALUES
(33, 1, 21, '2020-05-23', '01:00:00', 'Test', '2020-05-22 13:45:49', '2020-05-22 13:45:49'),
(39, 9, 1, '2020-09-17', '10:00:00', 'gjkszd', '2020-09-16 00:09:26', '2020-09-16 00:09:26'),
(43, 8, 1, '2020-09-17', '05:11:00', 'Meeting', '2020-09-16 23:11:30', '2020-09-16 23:11:30'),
(49, 9, 1, '2020-09-18', '09:44:00', 'Meeting', '2020-09-18 03:47:57', '2020-09-18 03:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `todo_actions`
--

CREATE TABLE `todo_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todo_actions`
--

INSERT INTO `todo_actions` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Task', '#008000', '2020-04-10 06:21:21', '2020-04-10 06:21:21'),
(2, 'Phone Call', '#ff8000', '2020-04-10 06:22:52', '2020-04-10 06:22:52'),
(3, 'Call back', '#800080', '2020-04-10 06:58:05', '2020-04-17 13:20:10'),
(4, 'Follow Up', '#0000ff', '2020-04-10 07:02:36', '2020-04-10 07:02:53'),
(5, 'Present', '#808000', '2020-04-10 07:03:11', '2020-04-16 16:40:22'),
(7, 'deadline', '#000000', '2020-04-16 15:35:25', '2020-04-16 15:35:41'),
(8, 'Meeting', '#800040', '2020-04-17 13:20:40', '2020-04-17 13:55:09'),
(9, 'Contract Meeting', '#ec0d24', '2020-04-19 02:39:56', '2020-04-19 02:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `hiring_date` date DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_super_admin` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile_pic`, `phone_no`, `description`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `hiring_date`, `job_title`, `home_address`, `resume`, `is_super_admin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Foodog1c-2020_07_05-19-03-26.png', NULL, NULL, 'admin@mymotivz.com', NULL, '$2y$10$98UNgR.qK/b2w2nzMhgWLOFXwkniU3/zUpFrOP5Bc5udSTMs/VeD.', NULL, 1, NULL, 'Administration', NULL, 'lorem-ipsum-2020_04_03-14-58-56.pdf', 1, '2019-11-14 08:42:08', '2020-07-06 02:03:26'),
(10, 'Portia Houston', NULL, '+1 (838) 868-4388', 'Tenetur et ullam duc', 'a@mail.com', NULL, '$2y$10$efugWXVfhLWwRPiR.Z0CdOlniQWX8fvYJ2fdXYRE5UENIjiZeCQHa', NULL, 1, '1970-01-13', 'En95fCnJ6q', 'In quia sapiente vel', 'lorem-ipsum-2020_04_03-14-58-56.pdf', 0, '2020-05-06 07:40:54', '2020-05-18 14:57:58'),
(17, 'etsgsd', NULL, '23200', 'WGREGR', 'sdf@sdf.com', NULL, '$2y$10$uIaj8Q0MDR88M8A.XREITOCWvyKIsXyGTFDF65CQbcvxv4NYm6gAa', NULL, 1, '1979-07-12', 'En95fCnJ6q', 'In quia sapiente vel', 'lorem-ipsum-2020_04_03-14-58-56.pdf', 1, '2020-05-08 16:33:53', '2020-05-15 17:28:18'),
(18, 'Tony Fisher', NULL, '(636) 382-3222', 'Hi Tony,\r\n\r\nWelcome to the team!', 'tony@mymotivz.com', NULL, '$2y$10$sr5RlOcr7MC9nkBNjo9AvOLdfmh2OBwgEoFFXuq5ah9vFyWaSjD1G', NULL, 1, '2014-01-01', 'retrtyr', 'tryuthfg', 'lorem-ipsum-2020_04_03-14-58-56.pdf', 0, '2020-05-15 00:57:29', '2020-05-18 16:42:22'),
(19, 'Ricky Deluca', NULL, '7146422797', 'jl;aksjdfl;jasldkfjsadjfl;asjfksjd;fs;dklfaklsjdflk', 'ricky.deluca1852@gmail.com', NULL, '$2y$10$7BvQ.CDaecCkv8wA4rc36eS7Toxoin0LXGSH9gQu/elwSAeNWC1ym', NULL, 1, '2021-03-25', 'Velit in officia as', 'tryyyyyyyyyyyyyjujujuy', 'MyMotivz-2020_05_15-09-13-05-2020_05_15-10-07-14.docx', 0, '2020-05-15 02:57:53', '2020-05-15 17:07:14'),
(21, 'Chastity Bradley', NULL, '+1 (399) 818-9111', 'Saepe incidunt poss', 'softenicaemail@gmail.com', NULL, '$2y$10$gaJxEhjroE7VjVazPRGXH.wOEd8G5Cwce8VJebRbV/rNjyyrtDC6W', NULL, 1, '1970-01-01', 'Eum libero ut aliqua', 'In quia sapiente vel', 'MyMotivz-2020_05_15-09-13-05.docx', 0, '2020-05-15 16:13:05', '2020-05-18 19:05:11'),
(22, 'August Lowery', NULL, '+1 (833) 236-7791', 'Unde odio suscipit c', 'vowusu@mailinator.com', NULL, '$2y$10$gaJxEhjroE7VjVazPRGXH.wOEd8G5Cwce8VJebRbV/rNjyyrtDC6W', NULL, 1, '1970-01-01', 'Aut consequatur Sap', 'Quo ea ut fugit sus', 'MyMotivz-2020_05_15-09-13-05-2020_05_15-10-41-09.docx', 1, '2020-05-15 17:41:09', '2020-05-15 17:41:09'),
(23, 'Lael House', NULL, '+1 (987) 196-8977', 'Enim esse nostrud e', 'janic@mailinator.com', NULL, '$2y$10$gaJxEhjroE7VjVazPRGXH.wOEd8G5Cwce8VJebRbV/rNjyyrtDC6W', NULL, 1, '1970-01-01', 'Aliquip modi quisqua', 'Facere in laborum P', 'MyMotivz-2020_05_15-09-13-05-2020_05_15-10-41-41.docx', 1, '2020-05-15 17:41:41', '2020-05-15 17:41:41'),
(26, 'Hanna Gregory', NULL, '+1 (382) 846-5583', 'Est mollit dicta del', 'jarimamucu@mailinator.com', NULL, '$2y$10$gu2TAgcoWxJ8OcNBXhJtFOZLKmSDCTgms0OhMetob/jBAYHOZ9XU2', NULL, 1, '1970-01-01', 'Minim quas exercitat', 'Numquam voluptas aut', 'lorem-ipsum-2020_05_18-07-47-53.pdf', 0, '2020-05-18 14:47:53', '2020-05-18 14:47:53'),
(28, 'as', NULL, '13256', 'ecjkdc', 'testing@softenica.com', NULL, '$2y$10$F/y3VpxhdO09ePxeRGRYZ.9tNtvN3H0GWX0LdEb/Mvv91o5.xgAae', NULL, 1, '2020-05-20', 'Nam earum aut et ut', 'asa54', NULL, 1, '2020-05-18 16:57:53', '2020-05-21 18:06:26'),
(30, 'Nathan Truong', NULL, '7142483223', 'al;kjsdf;\'asfkasd;fjs', 'Nathan@MyMotivz.com', NULL, '$2y$10$Ti07qMI4en4odR4LV7GFO.8FPscGNbn2FZq48aOlf0gomqMHV79kG', NULL, 1, '2020-05-19', 'Senior Physician Recruiter', '433 Enclave Circle', 'CVofDr.AdamC.Mues-2020_05_18-20-58-34.pdf', 0, '2020-05-19 03:58:34', '2020-05-19 03:58:34'),
(34, 'Kessie Gregory', NULL, '+1 (571) 434-9928', 'Voluptas nihil accus', 'lumimili@mailinator.com', NULL, '$2y$10$EKCMbEJV0hWw0/bmp12vjuMJRFNyb53d9Fvrxg/0gR1yGmGqzNXcq', NULL, 1, '1970-01-01', 'Aut voluptate exerci', 'Fugiat omnis amet e', NULL, 0, '2020-05-21 22:03:06', '2020-05-21 22:03:06'),
(35, 'Alika Fuentes', NULL, '+1 (384) 753-8252', 'Exercitation non nob', 'fabek@mailinator.com', NULL, '$2y$10$1RY34fNgx.5XXS95JsEGS.kQM0.haoFlm1w.JIzlNNf7rwR1ltg9K', NULL, 1, '1970-01-01', 'Amet at iste sint m', 'Laboriosam est sed', NULL, 1, '2020-05-22 20:00:04', '2020-05-22 20:00:52'),
(37, 'ssdg', NULL, '1212', 'assfertrg', 'qa@testing.com', NULL, '$2y$10$rvrLi4JR1e1HfDFfLJCIXu.WwgZd6FGOMWzfTzXmZ2U7zv9P43zsi', NULL, 1, '2020-06-01', 'Est quasi magnam mol', 'Et laborum At volup', NULL, 0, '2020-06-11 13:25:38', '2020-06-11 13:25:38'),
(44, 'Daniel Dalton', NULL, '+1 (209) 777-8604', 'Ratione excepturi ad', 'qatesting119@gmail.com', NULL, '$2y$10$w74izu6OKRGjC915gYLFWeTCOnB7XTdZC4uT3vC4DLcmItZZirJ5e', NULL, 1, '1970-01-01', 'Sunt distinctio Bea', 'Earum exercitationem', NULL, 0, '2020-06-25 13:59:47', '2020-06-25 13:59:47'),
(49, 'Jamal Daugherty', NULL, '+1 (172) 279-2372', 'Et eu consequatur o', 'vyzu@mailinator.com', NULL, '$2y$10$p7bG/FK3HWbXtoCVCCK5K.RMyjKHvOy890zZSbXPb3TyNovKn4lfO', NULL, 1, '1970-01-01', 'Velit error fugiat', 'Aut incidunt ut ad', NULL, 0, '2020-07-01 14:29:03', '2020-07-01 14:29:03'),
(50, 'Virtual Motivz', NULL, '938-399-3999', 'ajs;lfj;lasdjfl;ja;sljdf\r\najal\'sjdl;fj;alsdjf;asjdfl;jas\r\naj;lksdjf;ljsad;lfjls;kdfj;sjaf;ljasl;dfjs;df', 'virtualmotivz@gmail.com', NULL, '$2y$10$S47NbH/fmRCsL5SLwmKGmeP5hKppmisJVgeQlshpM.MkpZ9g5z/iO', NULL, 1, '2020-07-03', 'Director of Operations', '433 Enclave Circle', NULL, 1, '2020-07-02 10:48:18', '2020-07-02 10:48:18'),
(52, 'RICKY HOOLO', NULL, '7142483223', 'asdfj;alsjf;lsadjlf;ajslkfjlsda', 'Nathantruong49@yahoo.com', NULL, '$2y$10$VRI2g2ZlK61EeX9jlF2jZeK5/cv32ZgJGSeAZovr7QqpwDcNthQJm', NULL, 1, '2020-07-14', 'CEO', '401 Las Palmas Dr.', NULL, 0, '2020-07-02 11:13:08', '2020-07-02 11:13:08'),
(53, 'Carla Munoz', '778F48BF-2142-4C7E-AE66-F126FC8B49EA-2020_07_05-19-44-23.jpeg', '9092422732', 'adskfhalsdkfhksadhfhasd;kfa\'lsdjflsda;lf', 'carla.munoz84@gmail.com', NULL, '$2y$10$9ulWyH2xqqK63pZxTB.IBuem1UFxdNhHWwV91dLsCaD0L1urHT8ne', NULL, 1, '2020-07-17', 'RECRUITER', '433 Enclave Cir', NULL, 0, '2020-07-06 02:26:48', '2020-07-06 02:44:23'),
(54, 'Zain', NULL, '+1 (334) 559-9151', 'Consequat Aperiam t', 'zain.waheed.softenica@gmail.com', NULL, '$2y$10$mq6bVkgBh1tv1eHbD6pV8unUcyGgDqWn2/c6lot/UIbAXefIvuWmC', NULL, 1, '2020-07-16', 'Modi labore modi qua', 'Facere mollit impedi', NULL, 0, '2020-07-06 17:06:41', '2020-07-06 17:06:41'),
(55, 'Viechino', NULL, '909-399-3222', 'asdl;fjalsdjfl;aslfkjs;dlkfjl;asjdflkjadslfk;jas;lfjlskadjfl;ksadjf;ljasld;fj;lasdfk', 'viechino@gmail.com', NULL, '$2y$10$4IYrWryqX9wlxZq4tf7fe.diiFsbYcV5zIzTaQF1EQ8R6SnSwJKg2', NULL, 1, '2020-07-09', 'COO', '433 Enclave Circle', NULL, 0, '2020-07-08 22:57:39', '2020-07-08 22:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_jobs`
--

CREATE TABLE `user_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci,
  `job_opening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_benefits` text COLLATE utf8mb4_unicode_ci,
  `required_skills` text COLLATE utf8mb4_unicode_ci,
  `certifications` text COLLATE utf8mb4_unicode_ci,
  `required_experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applied_before` date DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `job_approved` int(11) NOT NULL DEFAULT '0',
  `posted_at` timestamp NULL DEFAULT NULL,
  `industry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_completed` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_jobs`
--

INSERT INTO `user_jobs` (`id`, `job_title`, `package_sign`, `package`, `package_to`, `package_type`, `education_id`, `location`, `web_url`, `job_description`, `job_opening`, `job_benefits`, `required_skills`, `certifications`, `required_experience`, `service`, `applied_before`, `client_id`, `created_at`, `updated_at`, `featured`, `job_approved`, `posted_at`, `industry_id`, `is_completed`) VALUES
(23, 'Dermatologist', '', '$300,000', '', NULL, 7, 'Walnut Creek', 'https://www.emblemhealth.com/', 'We are looking for an experienced dermatologist to join our medical practice.\r\n\r\nEvaluating the patients’ skin health condition and analyzing their medical history will comprise your primary day-to-day dermatologist responsibilities. You’ll examine patients and determine dermatological treatments (e.g. medication, non-invasive surgeries). You’ll also monitor and report on treatment progress and refer patients to other specialists if needed.', '3', 'Very competitive base salary with great earning potential\r\nMedical benefits, malpractice insurance, and a retirement plan\r\nGenerous bonuses with terrific relocation package\r\nEmployed position at a very busy medical center\r\nThis is a regular schedule of 8am to 5pm outpatient practice\r\nBe part of an excellent facility with comprehensive services\r\nMonday through Friday, no weekend or call\r\nJoin a collegial group and excellent colleagues', 'Dermatology,Surgery,Hair Transplant,Prescribe medication,Patient Care,MOHS Surgery', 'Board Certified,Active CA Medical License,DEA,Degree in Medical Science', '5 Years', 'Full-Time', '2021-01-31', 7, '2021-01-06 09:02:31', '2021-01-06 09:02:31', 0, 1, '2021-01-06 09:02:31', 10, 0),
(24, 'Assistant Manager', '', '35,000', '', NULL, 2, 'Atlanta', 'https://www.careerjet.com/search/jobs?s=forklift&l=USA&radius=15&sort=relevance', 'Silverspot Cinema is looking for a passionate Assistant Manager with exceptional guest service and fine dining /upper casual dining restaurant management experience. You will be responsible for setting the tone for guest service during each shift and you know that your team\'s energy directly impacts everyone who walks through the front door. This position will report to the General Manager.', '2', 'Paid time off such as PTO, sick days, and vacation days.\r\nHealth insurance.\r\nLife insurance.\r\nDental insurance.', 'College degree is a plus and preferred.,A minimum of 2 years Restaurant Management experience (upper casual dining). Knowledge of films and cinema is a plus and preferred.,ServSafe Manager Certification, or the ability to obtain one within 30 days of employment.', 'Food and Natural Resources,Arts, Audio/Video Technology,Manufacturing', '7 Years', 'Part-Time', '2021-01-31', 7, '2021-01-08 07:32:41', '2021-01-08 07:32:41', 0, 1, '2021-01-08 07:32:41', 17, 0),
(25, 'Forklift Operator', '$', '25,000', NULL, 'Per Hour', 2, 'Saline', 'https://www.careerjet.com/search/jobs?s=manufacturing&l=USA', '<p>Testing Description</p>', '2', 'Retirement benefits or accounts.Healthcare spending or reimbursement accounts,such as HSAs,FSAs,and HRAs.Long term disability insurance.', 'Ability to pass pre-employment background checks and drug screening,Comfort wearing a respirator if needed.,Valid driver’s license', 'Forklift certification/license preferred,High School Diploma or GED,Must be able to work nights,weekends & holidays', 'Experienced', 'Full-time', '2021-01-27', 7, '2021-01-08 07:43:31', '2021-01-14 00:25:37', 0, 1, '2021-01-08 07:43:31', 22, 0),
(26, 'Dining Attendants', '', '55,000', '', NULL, 3, 'Centerville', 'https://www.careerjet.com/jobad/usc63382f07ff13b0945b499bee8b50359', 'Essential Job Specific Duties/Responsibilities * Takes customer orders, enters them in the computer, and sends them to the kitchen.', '1', 'Checks in with customers to ensure they have everything they need and the order is to their liking.\r\nFitness perks\r\nPet insurance/pet friendly offices', 'Be able to work in a standing position for long periods of time (up to10 hours).,Be able to reach, bend, stoop and frequently lift up to 50 pounds.,Must be able to communicate clearly with managers, kitchen and front of the house personnel and guests.', 'College degree', '6 Years', 'Full-Time', '2021-01-27', 7, '2021-01-08 07:46:46', '2021-01-08 07:46:46', 0, 1, '2021-01-08 07:46:46', 13, 0),
(27, 'Customer Service Representative', '', '66,000', '', NULL, 2, 'Tempe', 'https://www.careerjet.com/jobad/usceaec43012ea1a2002ddca68f025fc96', 'Are you a self-starter, who likes working in a fast-paced environment for a growing company? Are you looking for an employer that stresses cooperation and a harmonious work environment? Then, J-Curve Technologies wants to talk to you!', '3', 'Remote work\r\nHealthcare\r\nPaid time off', 'Effectively manage all assigned office visit cases,Balance velocity and quality performance targets while providing excellent customer service,Effectively collaborate with peers within the Care Coordination team', 'Accurately collect and enter data,Highly detailed', '8 Years', 'Contract', '2021-01-14', 7, '2021-01-08 07:52:13', '2021-01-08 07:52:13', 0, 1, '2021-01-08 07:52:13', 2, 0),
(28, 'Care Coordination Specialist', '', '66,890', '', NULL, 5, 'Tempe', 'https://www.careerjet.com/jobad/usf6389de9b0badee2c5475722fead1723', 'We are Public Storage, the self-storage industry leader established in 1972. And with over 2,500 locations across 38 states, we’re still growing! We continue to shape the way the industry operates by offering innovative new ways for customers to secure storage space.', '8', 'Flexible hours\r\nHealthcare\r\nPaid family leave', 'High School Diploma or GED,Preferred Certifications: 40 Hour HAZWOPER, 8 Hour HAZWOPER, DOT, RCRA,Relevant experience in the environmental industry preferred', 'Valid driver’s license,Forklift certification/license preferred', 'Intern', 'Full-Time', '2021-02-16', 7, '2021-01-08 07:56:58', '2021-01-08 07:56:58', 0, 1, '2021-01-08 07:56:58', 7, 0),
(29, 'Integrated Media Specialist', '', '76,000', '', NULL, 3, 'Queens', 'https://www.peoplekeep.com/blog/small-business-101-the-definition-of-employee-benefits', 'J-Curve Technologies, is a privately held Arizona-based organization, is an award-winning premier outsourcer of shared technical, customer support and enterprise level help desk services.', '6', 'We have full-time positions available with a starting pay rate of $13.00 per hour plus incentives. Full-time employees enjoy a comprehensive benefit package that includes medical, dental, and vision insurance along with life and disability benefits. We also offer a 401(k) plan, paid holidays, and Vacation/Sick time.', 'General business acumen,Interest in pursuing a career in performance oriented digital marketing,Desire to work in a deadline-oriented environment', 'Full professional proficiency (written and spoken) of the English Language,Working knowledge of Excel (conditional statements, pivot tables and vlookups),Strong math/data analysis skills', '4 Years', 'Part-Time', '2021-02-06', 7, '2021-01-08 08:01:15', '2021-01-08 08:01:15', 0, 1, '2021-01-08 08:01:15', 8, 0),
(30, 'Integrated Media Specialist', '', '88,000', '', NULL, 14, 'Long Island City', 'https://healthzaa.com/portal-healthcore-randall-wooley/', 'Are you interested in starting or expanding a career in digital marketing ? The WITHIN team is growing and we’re looking for killer Integrated Media Specialists who are willing to take the lead across multiple digital marketing and performance branding channels such as SEO, SEM, paid social, display, content, programmatic and affiliate.', '10', '$60 - $70k base salary DOE\r\nFULLY paid Visa sponsorship\r\nUnlimited vacation policy', 'General business acumen,Bachelor’s Degree or equivalent experience,Desire to work in a deadline-oriented environment', 'Strong math/data analysis skills,Full professional proficiency (written and spoken) of the English Language', '6 Years', 'Contract', '2021-01-30', 7, '2021-01-08 08:04:55', '2021-01-08 08:04:55', 0, 1, '2021-01-08 08:04:55', 23, 0),
(32, 'Data Analyst', '', '77,000', NULL, 'Per Day', 14, 'Santa Clara', 'https://www.careerbuilder.com/job/J3R0KS65GT3X33C409C?ipath=CRKR2', '<p>We have the vision of a world where each day is safer and more secure than the one before. These aren’t easy goals to accomplish – but we’re not here for easy. We’re here for better. We are a company built on the foundation of challenging and disrupting the way things are done, and we’re looking for innovators who are as committed to shaping the future of cybersecurity as we are.</p>', '4', 'Paid time offPaid family leaveFour-day work week', 'Requirements management and traceability,Avionics System software development and software testing,Modelling,simulation and hardware in loop testing', 'Skilled user in Excel,Demonstrated leadership skills.,FORLIFT', 'Intermediate', 'Part-Time', '2021-05-05', 7, '2021-01-08 08:13:26', '2021-04-23 23:59:16', 0, 1, '2021-01-08 08:13:26', 3, 0),
(33, 'Software Engineering Manager', '', '88,000', '', NULL, 2, 'Rockford', 'https://www.careerbuilder.com/job/J3R0KS65GT3X33C409C?ipath=CRKR2', 'In this challenging role, candidate will be responsible for delivery ownership in avionics systems and software projects with Client. In this job role candidate must be able to provide technical leadership in translating customer business needs into technical solutions through strategic design processes and overall solution delivery through best in class program management practices.', '7', 'Healthcare\r\nFlexible hours\r\nStudent loan assistance', 'Expertise in determining scope, approach, schedules to accomplish overall objectives and programs.,Validation/Verification, Functional Integration and certification.,Strong program management and project management skills', 'Bachelor\'s Degree in Computer Science / Electrical Engineering required,Master\'s Degree,PMP Certification', 'More than 10 Years', 'Contract', '2021-01-28', 7, '2021-01-08 08:18:13', '2021-01-08 08:18:13', 0, 1, '2021-01-08 08:18:13', 15, 0),
(34, 'Data Scientist', '', '77,908', '', NULL, 6, 'Rosemead', 'https://www.careerjet.com/jobad/us9778af43a71017104b7e51e61d5b1d53', 'Chromalloy has expanded from a gas turbine parts repair business into an OEM supplier of production parts and advanced repairs and services for gas turbines used in aviation and power applications. Chromalloy serves the airline, military, marine and energy segments with a broad range of services at locations around the globe.', '6', 'Free food in the office\r\nHealthcare\r\nStudent loan assistance', 'Be an excellent programmer; experience with distributed cloud systems like GCS or AWS and containers like Docker a big plus,Have a strong working knowledge of machine learning algorithms that may include XGBoost, CNNs, LSTMs, Byte Pair Encoding schemes, etc.,Be comfortable working independently, be able to produce something impressive in one summer, have the ability to come up with novel solutions to difficult problems', 'Chemical, Materials, Mechanical, Aerospace, Industrial, Electrical, Industrial, Business, Procurement, Finance, Etc.,Mechanical or Materials Engineering with CAD-Platform,20-29 hours per week. Flexible hours due to school schedules. 1st Shift only.', '9 Years', 'Part-Time', '2021-01-14', 7, '2021-01-08 08:23:00', '2021-01-08 08:23:00', 0, 1, '2021-01-08 08:23:00', 4, 0),
(35, 'Data Scientist', '', '77,908', '', NULL, 6, 'Rosemead', 'https://www.careerjet.com/jobad/us9778af43a71017104b7e51e61d5b1d53', 'Chromalloy has expanded from a gas turbine parts repair business into an OEM supplier of production parts and advanced repairs and services for gas turbines used in aviation and power applications. Chromalloy serves the airline, military, marine and energy segments with a broad range of services at locations around the globe.', '2', 'Free food in the office\r\nHealthcare\r\nStudent loan assistance', 'Be an excellent programmer; experience with distributed cloud systems like GCS or AWS and containers like Docker a big plus,Have a strong working knowledge of machine learning algorithms that may include XGBoost, CNNs, LSTMs, Byte Pair Encoding schemes, etc.,Be comfortable working independently, be able to produce something impressive in one summer, have the ability to come up with novel solutions to difficult problems', 'Chemical, Materials, Mechanical, Aerospace, Industrial, Electrical, Industrial, Business, Procurement, Finance, Etc.,Mechanical or Materials Engineering with CAD-Platform,20-29 hours per week. Flexible hours due to school schedules. 1st Shift only.', '9 Years', 'Part-Time', '2021-01-14', 7, '2021-01-08 08:23:00', '2021-01-08 08:23:00', 0, 1, '2021-01-08 08:23:00', 4, 0),
(44, 'Cardiologist', '$', '130000', NULL, 'Per Month', 3, 'Santa Ana, CA', 'https://www.mymotivz.com/', '<p>We have the vision of a world where each day is safer and more secure than the one before. These aren’t easy goals to accomplish – but we’re not here for easy. We’re here for better. We are a company built on the foundation of challenging and disrupting the way things are done, and we’re looking for innovators who are as committed to shaping the future of cybersecurity as we are.</p>', '2', 'd,3,we', 'Test,1 to', 'Fin,ASdl', 'Intermediate', 'Part-Time', '2021-03-25', 15, '2021-03-15 22:38:40', '2021-03-15 22:38:40', 0, 1, '2021-03-15 22:38:40', 11, 0),
(48, 'Eum fuga Deserunt i', '$', '98', NULL, 'Per Month', 4, 'Labore aut autem ver', 'http://www.google.com', '<p> </p>', '9', 'Ullamco velit accus', 'Incidunt qui sunt s', 'Beatae dolore ullam', 'Managerial', 'Part-Time', '2021-06-08', 22, '2021-04-09 11:31:20', '2021-04-09 11:31:20', 0, 1, '2021-04-09 11:31:20', 11, 0),
(49, 'Lorem at nostrum et', '€', '45000', NULL, 'Per Hour', 1, 'New York, NY, USA', 'http://www.google.com', '<p> </p>', '1', 'wsefw,wefweg,wegweg', 'ewfwe,vsddv', 'wefwef,wfewefwfe', 'Intern', 'Full-Time', '2021-12-31', 22, '2021-04-09 11:33:02', '2021-04-09 11:33:02', 0, 1, '2021-04-09 11:33:02', 1, 0),
(52, 'Animi laboris conse', 'A$', '49', NULL, 'Per Day', 7, 'Necessitatibus est v', 'http://www.example.com', '<p>erwrwer werwrwerwerwerw werwrwr werqwr</p>', '1', 'Enim id ea dolores n', 'Nam aut omnis dicta', 'Perferendis minus do', 'Executive', 'Internship', '2021-04-22', 28, '2021-04-13 12:46:39', '2021-04-13 12:46:39', 0, 1, '2021-04-13 12:46:39', 11, 0),
(53, 'Quidem voluptatibus', '£', '30', NULL, 'Per Year', 4, 'Distinctio Laborios', 'http://www.example.com', '<p>ewetertert ertertetewtrwert</p>', '5', 'Eos quasi eum est ad', 'Porro veniam nulla', 'Maxime iste obcaecat', 'Directorship', 'Contract', '2021-04-06', 10, '2021-04-20 09:58:51', '2021-04-20 09:58:51', 0, 1, '2021-04-20 09:58:51', 10, 0),
(54, 'Enim quidem autem qu', 'C$', '16', NULL, 'Per Day', 1, 'Quod cupidatat et ea', 'http://www.example.com', '<p>werwqretretr sfertewtewtr</p>', '9', 'Ea proident laboris', 'Harum do totam ut se', 'Officia possimus of', 'Directorship', 'Contract to Hire', '2021-04-29', 10, '2021-04-20 09:59:27', '2021-04-20 09:59:27', 0, 1, '2021-04-20 09:59:27', 18, 0),
(55, 'WORKER', '€', '1500', '2200', 'Per Hour', 4, 'Ocean City, MD, USA', 'https://www.vitals.com', '<p>HAVE A NICE DAY!</p>', '3', '401K,HEALTH', 'DRIVING', 'CAR,BMW', 'Entry Level', 'Full-Time', '2021-07-23', 7, '2021-04-23 22:50:29', '2021-04-23 22:50:29', 0, 1, '2021-04-23 22:50:29', 3, 0),
(56, 'WAREHOUSE', '€', '22.00', '44.00', 'Per Hour', 6, 'Redlands, CA, USA', 'https://www.hoag.org', '<p>Psychiatry Specialist in Newport Beach, CA and has over 21 years of experience in the medical field.</p><p>Monster is your source for <i>jobs</i> and career opportunities.</p><p>Displayed here are <i>Job</i> Ads that match your query, hired through a referral. Use LinkedIn.</p><p>Learn about unique hiring paths for veterans, students and graduates, individuals with a disability, and more.</p><p> </p>', '8', 'HEALTH,CARE,FREE FOOD', 'BIG,STAND ALL DAY,EDD', 'FORKLIFT,LISCENCE,FACEBOOK', 'Experienced', 'Part-Time', '2021-05-08', 7, '2021-04-23 22:57:54', '2021-04-23 22:57:54', 0, 1, '2021-04-23 22:57:54', 6, 0),
(58, 'NURSE', '€', '77000', '79000.00', 'Per Hour', 6, 'Huntington Beach, CA, USA', 'https://millenniumphysician.com', '<p>employment resources and career advice.</p><p>Salary range applies to Airport Police Officer I &amp; II</p><p>More employers are actively recruiting <i>job</i> candidates, even for low- and middle-level white collar <i>jobs</i> as fewer answer ads during COVID</p><p>76494 Part Time <i>jobs</i></p>', '5', 'FOOD,FREE RIDE,COMPANY CAR', 'TYPING,SITTING LONG HOURS', 'RUNNING ALL DAY,ALL NIGHT,WALKING ALOT,CAR LISCENCE', 'Intermediate', 'Seasonal', '2021-09-08', 7, '2021-04-23 23:10:04', '2021-04-23 23:10:04', 0, 1, '2021-04-23 23:10:04', 11, 0),
(59, 'RUNNER', '$', '7777', '8888', 'Per Month', 1, 'Upland, CA, USA', 'https://www.healthgrades.com', '<p>We have the vision of a world where each day is safer and more secure than the one before. These aren’t easy goals to accomplish – but we’re not here for easy. We’re here for better. We are a company built on the foundation of challenging and disrupting the way things are done, and we’re looking for innovators who are as committed to shaping the future of cybersecurity as we are.</p>', '10+', 'FREE CAR,DRIVING,401K,SCHOOL FEE', 'SKILLS,WORKING,HARD WORKING', 'CAR FEE,FORKLIFT,LIFT,HIGHT THERE', 'Directorship', 'Contract to Hire', '2021-12-01', 7, '2021-04-23 23:14:44', '2021-04-24 00:14:24', 0, 1, '2021-04-23 23:14:44', 10, 0),
(60, 'SHOOTER', '€', '10000', NULL, 'Per Month', 14, 'Jacksonville, FL, USA', 'http://www.longbeach.gov', '<p>We have the vision of a world where each day is safer and more secure than the one before. These aren’t easy goals to accomplish – but we’re not here for easy. We’re here for better. We are a company built on the foundation of challenging and disrupting the way things are done, and we’re looking for innovators who are as committed to shaping the future of cybersecurity as we are.</p>', '5', '7-1K,HEALTH CARE,MEDICAL CARE', 'DRIVING,FORTLIFT', 'JDJDSSD,JDNSDOJ,HUVE', 'Intern', 'Contract to Hire', '2021-05-06', 7, '2021-04-23 23:22:43', '2021-04-24 00:05:47', 0, 1, '2021-04-23 23:22:43', 11, 0),
(62, 'GIVER', '$', '4444', '5555', 'Per Month', 5, 'Brea, CA, USA', 'https://www.vitals.com', '<p>We have the vision of a world where each day is safer and more secure than the one before. These aren’t easy goals to accomplish – but we’re not here for easy. We’re here for better. We are a company built on the foundation of challenging and disrupting the way things are done, and we’re looking for innovators who are as committed to shaping the future of cybersecurity as we are.</p>', '3', 'HEALTH,CARE,401K,INSUREMCE', 'DRIVING,READING ALOT,STANDING ALL NIGHT', 'GET OFF,HAVE A GOOD ONE,GOOD 1', 'Senior Executive', 'Seasonal', '2021-05-27', 7, '2021-04-23 23:46:32', '2021-04-23 23:57:53', 0, 1, '2021-04-23 23:46:32', 10, 0),
(63, 'Endocrinologist', '€', '130.000', NULL, 'Per Hour', 3, 'Santa Ana, CA, USA', 'https://www.emblemhealth.com/', '<p>Amazon remains open as an essential business to serve our communities delivering critical supplies directly to the doorsteps of people who need them. Find out what Amazon is doing to provide a safe environment for employees at this time on our COVID-19 FAQ page. Join Amazon and become part of the dedicated team that gets orders ready for people relying on Amazon’s service. Earn a competitive wage while learning new skills. Stay active in this fast-paced warehouse environment. jlfjsd;lfjdslfdfdfdf. jkdflja;sdjf dfdlkj. sjdfkjd fj kjf;dk dfku </p><p>a;sldkjf;ljdsfaskjdf;lajsdf</p><p>;lakjsdf;ljasdlfjasl;djf</p><p>jasl;kfsdj;asjfslafjsldfjlas;kfj</p><p>alsdjf;lasdj;flj\'</p><p>jlk;fasjfkl;j;l kjd;flkjsd ;lfjkds jf. </p><p> </p>', '4', 'TEst,one,two,three', 'E,abce,ejk;jasdf,kjdfd', 'jlajs;ldfj,dflkjdslkjfd', 'Intermediate', 'Part-Time', '2021-05-01', 7, '2021-04-27 02:12:23', '2021-04-27 02:12:23', 0, 1, '2021-04-27 02:12:23', 6, 0),
(65, 'Rerum iure tempore', 'C$', '45,500', '45,5000', 'Per Hour', 6, 'Reprehenderit iusto', 'http://www.example.com', '<p>mnzddmndxmbfmxbvcmbxm jzsbdfjkbskjdbfjksdf kjsadfkjhsdkfhksjhdfkj</p>', '4', 'Aut est voluptas iru', 'Labore illum ut eve', 'Perferendis iure dol', 'Intermediate', 'Full-Time', '2021-04-30', 34, '2021-04-28 16:52:58', '2021-04-28 16:52:58', 0, 1, '2021-04-28 16:52:57', 1, 0),
(66, 'Amet totam in velit', '€', '500,000', NULL, 'Per Hour', 4, 'New York, NY, USA', 'http://www.example.com', '<p>sndbfjhsjdhfjhasg</p>', '3', NULL, NULL, NULL, 'Executive', 'Part-Time', '2021-04-30', 34, '2021-04-28 17:15:23', '2021-04-28 17:15:23', 0, 1, '2021-04-28 17:15:23', 12, 0),
(67, 'Culpa aliquip moles', 'A$', '56', NULL, 'Per Year', 5, 'Quia provident nesc', 'http://www.mymotivz2.development-env.com/', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie, eros at tempus fermentum, sapien quam tincidunt nunc, in porttitor erat libero ac leo. Nunc et congue sapien. Aenean non vulputate purus. Mauris ac laoreet lectus. Sed tortor ante, condimentum vitae dui vel, fringilla lacinia odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec dignissim libero eget nibh eleifend volutpat. Vivamus finibus magna auctor sapien iaculis, non volutpat elit pretium. Fusce at lobortis justo, quis pretium ipsum.</p>', '10+', 'Bonus', 'php', 'php', 'Entry Level', 'Part-Time', '2022-10-11', 10, '2021-04-29 05:12:37', '2021-04-30 11:47:26', 0, 1, '2021-04-29 05:12:37', 15, 0),
(68, 'Ea excepturi facilis', 'A$', '432', NULL, 'Per Month', 1, 'Et et assumenda culp', 'http://www.mymotivz2.development-env.com/company/post/job', '<p>gtfjj</p>', '1', 'Ut rerum sit irure e', 'Autem quaerat est e', 'Consectetur incidunt', 'Entry Level', 'Full-Time', '2023-02-19', 10, '2021-04-29 07:18:07', '2021-04-29 07:18:07', 0, 1, '2021-04-29 07:18:07', 12, 0),
(69, 'Now', '£', '3', NULL, 'Per Year', 1, 'Sint deserunt cupid', 'http://www.mymotivz2.development-env.com/company/post/job', '<p>xdfvbhcxnn</p>', '1', 'Minim doloremque sap', 'Quibusdam quam occae', 'Adipisci cumque hic', 'Senior Executive', 'Contract to Hire', '2022-10-19', 10, '2021-04-29 07:19:03', '2021-04-29 07:19:03', 0, 1, '2021-04-29 07:19:03', 2, 0),
(71, 'Cardiologist', '€', '130,000', '394,343', 'Per Day', 3, 'Diamond Bar, CA, USA', 'https://www.mymotivz.com/', '<p>The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:</p>', '3', NULL, NULL, NULL, 'Intermediate', 'Full-Time', '2021-05-08', 7, '2021-04-30 20:39:53', '2021-04-30 20:39:53', 0, 1, '2021-04-30 20:39:53', 4, 0),
(72, 'ICU Surgeon', '€', '300,000', NULL, 'Per Year', 7, 'Ontario, CA, USA', 'https://www.emblemhealth.com/', '<p>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.</p><p>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.<br>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.</p><ul><li>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.</li><li>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.</li><li>The medical director of VITAS fulfills two primary functions, each of which is expected to consume approximately one half of the time and work effort of the position:The medical director shall be a physician licensed to practice medicine in the state where the hospice is located. In his/her absence, the medical director shall designate another physician to serve as acting medical director.</li></ul>', '5', NULL, NULL, NULL, 'Experienced', 'Contract to Hire', '2021-05-02', 7, '2021-04-30 21:00:52', '2021-04-30 21:00:52', 0, 1, '2021-04-30 21:00:52', 11, 0),
(73, 'Optio nihil nulla e', '$', '1000', '45,5000', 'Per Day', 14, 'Et perferendis et et', 'http://www.example.com', '<p>nsdckjsdkfjsdkjfb sjdbfksdkjbfkjsdbf</p>', '3', 'Quidem ratione eos p', 'Quia cum quae corpor', 'Mollitia qui quasi e', 'Executive', 'Contract to Hire', '2021-05-28', 10, '2021-05-03 15:45:13', '2021-05-03 15:45:13', 0, 1, '2021-05-03 15:45:13', 16, 0),
(74, 'Front end Developer', 'C$', '1200', NULL, 'Per Hour', 2, 'Magni voluptate ex r', 'http://example.com', '<p>sdadasdasdadasd sadas das d as dasd</p>', '10+', 'Ad maiores repudiand', 'Voluptatem corrupti', 'Ut enim assumenda au', 'Intermediate', 'Contract', '2022-06-23', 10, '2021-05-03 16:50:41', '2021-05-03 16:50:41', 0, 1, '2021-05-03 16:50:41', 20, 0),
(75, 'Emergency Physician', '€', '150,000', NULL, 'Per Hour', 7, 'santa ana, ca', 'https://www.emblemhealth.com/', '<p>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.</p><ul><li>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.</li><li>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.</li><li>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.</li></ul><p>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>Become part of the dedicated team that gets orders ready for people relying on Amazon’s service. From flexible part-time roles to full-time set schedules with health care benefits, Amazon has a variety of jobs. Find the right Amazon opportunity for you today.<br>&nbsp;</p>', '3', 'ajls;dkfj,asdlk;fjasf,asdlfjals;f,asdl;fkjasdf,asdjlf;jkasdf', 'asdfasd,asdf,asd', 'asdf,asdfs', 'Experienced', 'Full-Time', '2021-05-14', 7, '2021-05-04 23:03:20', '2021-05-04 23:03:20', 0, 1, '2021-05-04 23:03:20', 10, 0),
(76, 'IOS Developer', '€', '1213', NULL, 'Per Year', 4, 'Ipsa tempora quidem', 'https://www.odoo.com/app/website?utm_source=google&utm_medium=cpc&utm_campaign=MEA+-+App%3A+Website+builder_Website---Research&utm_term=web+designing+site&utm_matchtype=b&utm_device=c&utm_gclid=Cj0KCQjw4cOEBhDMARIsAA3XDRjIolxSHHNueSzsOhuF2Jp7V8me0YKJqqzWm', '<p>&nbsp;</p>', '7', 'Beatae amet aute in', 'Asperiores adipisci', 'Quia nesciunt vel d', 'Experienced', 'Contract to Hire', '2022-10-10', 10, '2021-05-05 05:24:11', '2021-05-05 05:24:11', 0, 1, '2021-05-05 05:24:11', 12, 0),
(77, 'Bio Chemist', '$', '343', NULL, 'Per Day', 1, 'Minus ipsum similiqu', 'https://www.odoo.com/app/website?utm_source=google&utm_medium=cpc&utm_campaign=MEA+-+App%3A+Website+builder_Website---Research&utm_term=web+designing+site&utm_matchtype=b&utm_device=c&utm_gclid=Cj0KCQjw4cOEBhDMARIsAA3XDRjIolxSHHNueSzsOhuF2Jp7V8me0YKJqqzWm', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '3', 'Voluptate aut iste q', 'Cupiditate laudantiu', 'Provident sapiente', 'Intermediate', 'Seasonal', '2022-09-15', 10, '2021-05-05 05:26:26', '2021-05-05 05:28:25', 0, 1, '2021-05-05 05:26:26', 24, 0),
(78, 'Est autem unde dolo', 'A$', '500', NULL, 'Per Day', 2, 'Eveniet in in incid', 'http://www.example.com', '<p>ansd m,nasbdnmba,smnbd,man</p><ul><li>asdsadsadasd</li><li>asdasdasd</li></ul>', '9', 'Non eos aut aut ven', 'Dolorum magna exerci', 'Qui velit labore vel', 'Intermediate', 'Internship', '2021-05-07', 10, '2021-05-05 15:41:26', '2021-05-05 16:55:13', 0, 1, '2021-05-05 15:41:26', 16, 0),
(79, 'Autem ad ut proident', '£', '45', NULL, 'Per Year', 3, 'Ad esse quia tempor', 'https://www.website.com/', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.&nbsp;</p><ul><li>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,&nbsp;</li><li>when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</li><li>It has survived not only five centuries</li></ul>', '2', 'Consequatur Impedit', 'Dolore qui dolore cu', 'Pariatur Obcaecati', 'Intern', 'Full-Time', '2021-05-31', 10, '2021-05-06 07:01:52', '2021-05-06 07:01:52', 0, 1, '2021-05-06 07:01:52', 15, 0),
(81, 'Illo reiciendis dolo', '£', '500', NULL, 'Per Day', 7, 'A', 'http://www.example.com', '<p>asdjhjhdfsjdhfgjhds</p><ul><li>jsdnbfdbsjfbjdsh</li><li>s,djhfbjhsdfjhb</li></ul>', '2', 'Delectus officia ei', 'Amet consectetur e', 'Rerum ea pariatur A', 'Experienced', 'Seasonal', '2021-05-21', 10, '2021-05-06 16:21:48', '2021-05-06 16:26:04', 0, 1, '2021-05-06 16:21:47', 6, 0),
(82, 'GI Physician', '€', '400,000', NULL, 'Per Year', 3, 'Santa Monica, CA, USA', 'https://www.emblemhealth.com/', '<p>Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.</p><ul><li>Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.</li></ul><p>&nbsp;</p><ul><li>Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.</li></ul>', '2', 'alkjsf,falkjsf,asdfl;jk,dsflkjsdf', 'asdfsdafjkl,sdjflk;jasdlkf,djf,sdflkjf,asdf', 'asdflkj,jkf', 'Experienced', 'Part-Time', '2021-05-21', 7, '2021-05-06 21:41:27', '2021-05-06 21:41:27', 0, 1, '2021-05-06 21:41:27', 3, 0),
(83, 'FIVER TODAY', '€', '69,000', NULL, 'Per Year', 4, 'San Bernardino, CA, USA', 'https://www.mymotivz.com/', '<p>Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.</p><p>Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.</p><p>al;sdkfjl;asdjf</p><p>asdfl;j fj jdflka sdfj jf&nbsp;</p>', '2', 'jkasdf,ajsdklfj', 'asdfl,asdljfksd,asdklfj', 'asdfkl,asdfljk,asdlfkj', 'Experienced', 'Contract to Hire', '2021-05-11', 7, '2021-05-06 21:56:19', '2021-05-06 21:56:19', 0, 1, '2021-05-06 21:56:19', 6, 0),
(84, 'FIVER ONE', '€', '130,000', NULL, 'Per Year', 3, 'San Diego, CA, USA', 'https://www.emblemhealth.com/', '<p>Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.Eureka! is an expression of delight on finding, discovering or solving something and this exclamation of joy starts with you. Our values driven culture is full of passionate people serving those hungry to discover a local blend of America’s best. Many of our guests are joining us for the items they crave or offerings they wish to explore. Our aim is to attract and hire talent that provides an enthusiastic experience for all our guests while being a great co-worker for their team mates.</p>', '4', 'lkjsfk,a\'sdjfl,asdf\'jslkf,alksjdf', 'asdflj,asldk;fj,;aslkdjf,afljks;df', 'alsdjkfljasd,asdlf;kjsdfa', 'Experienced', 'Contract', '2021-05-10', 7, '2021-05-06 22:20:03', '2021-05-06 22:20:03', 0, 1, '2021-05-06 22:20:03', 10, 0),
(85, 'Sunt dolor modi null', 'A$', '500', NULL, 'Per Hour', 6, 'Sunt distinctio Nis', 'http://www.example.com', '<p>kajsndkjaksjd</p><p>askjndkjnaskdjns</p>', '10+', 'Molestiae sunt tene', 'Ea nemo deserunt occ', 'Assumenda cumque atq', 'Senior Executive', 'Contract to Hire', '2021-05-21', 10, '2021-05-07 16:08:52', '2021-05-07 16:08:52', 0, 1, '2021-05-07 16:08:52', 10, 0),
(86, 'Demo job', '$', '500', NULL, 'Per Hour', 3, 'New York, NY, USA', 'http://www.example.com', '<p>mbzjxcbjzhxbc</p>', '7', 'jzhjhdas,asbjd,asbjdw', 'kajsd,qw,df', 'asd,asdqw', 'Directorship', 'Part-Time', '2021-05-10', 10, '2021-05-07 16:23:42', '2021-05-07 16:23:42', 0, 1, '2021-05-07 16:23:42', 2, 0),
(87, 'Test Job', '$', '450', NULL, 'Per Month', 14, 'Lahore, Pakistan', 'http://mymotivz2.development-env.com/', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p><ul><li>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,&nbsp;</li><li>when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li></ul>', '4', 'abc', 'def,ghi,jkl', 'abcdef', 'Experienced', 'Full-Time', '2021-05-13', 10, '2021-05-08 11:42:22', '2021-05-08 11:42:22', 0, 1, '2021-05-08 11:42:22', 13, 0),
(88, 'Test one', 'A$', '280', NULL, 'Per Year', 3, 'Karad, Maharashtra, India', 'http://mymotivz2.development-env.com/', '<p>&nbsp;</p>', '8', NULL, NULL, NULL, 'Intermediate', 'Contract to Hire', '2021-05-15', 10, '2021-05-08 16:23:35', '2021-05-08 16:23:35', 0, 1, '2021-05-08 16:23:35', 6, 0),
(89, 'test two', '€', '350', NULL, 'Per Month', 3, 'Islamabad, Pakistan', 'http://mymotivz2.development-env.com/', '<p>&nbsp;</p>', '7', NULL, NULL, NULL, 'Experienced', 'Part-Time', '2021-05-29', 10, '2021-05-08 17:58:53', '2021-05-08 17:58:53', 0, 1, '2021-05-08 17:58:53', 4, 0),
(90, 'Web Designer', '$', '23', NULL, 'Per Week', 3, 'Enim earum quibusdam', 'https://www.odoo.com/app/website?utm_source=google&utm_medium=cpc&utm_campaign=MEA+-+App%3A+Website+builder_Website---Research&utm_term=website+creator&utm_matchtype=b&utm_device=c&utm_gclid=CjwKCAjwkN6EBhBNEiwADVfya-3m93zQQVz4TfDuhnrt_wiy7ewwo9xPpQm-OrVV', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.&nbsp;</p><ul><li>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</li><li>And more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</li></ul>', '8', 'Veritatis excepteur', 'Ipsum sunt eos sed', 'Consequat Quis et n', 'Executive', 'Contract', '2022-05-09', 10, '2021-05-10 05:38:19', '2021-05-10 05:38:19', 0, 1, '2021-05-10 05:38:19', 23, 0),
(91, 'One Two', '$', '90,000', '95,000', 'Per Week', 7, 'San Francisco, CA, USA', 'https://www.yahoo.com/', '<p>jj;lksjda;fjsdlkfljfaskdjf;lsdjfk;lsdl;fjsl;kjslkjfsadljfdlsfasfsdjlkfasjfajs;kf</p><p>asdf;kjsd;lfjl;sdjfas</p><p>dfjlka\'sdjf</p><p>asdl;fkjsd f &nbsp; jdskfjdls &nbsp;jds fjdkfa sdjf;lajds f</p><p>jl\'k asjdlf &nbsp; &nbsp; jsdklfj;adjflkjsf;dfsd</p>', '4', 'jkd\',jsgkdlj,slkjdg', 'sljkdf,kdsjfkd,kdjfd', 'djkjd,jkdkdk,ksjkjdd', 'Entry Level', 'Contract', '2021-05-26', 7, '2021-05-18 00:54:42', '2021-05-18 00:54:42', 0, 1, '2021-05-18 00:54:42', 3, 0),
(92, 'NURSE', '$', '55,7777', '77,0000', 'Per Hour', 4, 'Rosemead, CA, USA', 'https://millenniumphysician.com', '<p>Connect with your doctor through a convenient, safe, and secure environment 24/7. Steps for online enrollment (without token). Find information and available specialists at Boone Hospital Center in Columbia, MO. ... <strong>Select a specialty below to see hospital physicians by specialty. Our new search tool will help you choose a doctor or health care provider that is ... to independent providers who actively participate at a BJC affiliated hospital.&nbsp;</strong></p><blockquote><p>Center is a medical facility located in Columbia, MO. ... Research hospital performance and talk to your <i>doctor</i> about what\'s right for you. Cardiac.</p><p><a href=\"www.google.com\">www.google.com</a></p></blockquote><ul><li>gbbgfgfghghgh</li><li>yhytyntnn</li><li>n,jkjjk</li></ul><ol><li>awcceerercv</li><li>ytytynnju77u</li><li>jtynhytrerv</li><li>tbtrbyytyuuikkillo</li><li>sgrvevefe</li></ol>', '8', 'fwrrerrer,yyrhyhythyty,jyyyjjyryjjy', 'gtgttrrtt,rtrregegtg,gegttrt', 'tryhhyyhyh,ththhtth,herejjkuk,dtttrt', 'Entry Level', 'Contract to Hire', '2021-05-29', 36, '2021-05-19 01:28:06', '2021-05-19 01:28:06', 0, 1, '2021-05-19 01:28:06', 4, 0);
INSERT INTO `user_jobs` (`id`, `job_title`, `package_sign`, `package`, `package_to`, `package_type`, `education_id`, `location`, `web_url`, `job_description`, `job_opening`, `job_benefits`, `required_skills`, `certifications`, `required_experience`, `service`, `applied_before`, `client_id`, `created_at`, `updated_at`, `featured`, `job_approved`, `posted_at`, `industry_id`, `is_completed`) VALUES
(93, 'TESTER', '€', '300,000', NULL, 'Per Day', 3, 'Santa Monica, CA, USA', 'https://www.indeed.com/jobs?q&l=Pomona%2C%20CA&vjk=41a3c5a7eac9c278', '<p>This is a recruitment for Entry-Level Public Safety Dispatchers. Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. Must work alternating shifts including some weekends and holidays.This is a recruitment for Entry-Level Public Safety Dispatchers. Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. Must work alternating shifts including some weekends and holidays.</p><p>This is a recruitment for Entry-Level Public Safety Dispatchers. Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. Must work alternating shifts including some weekends and holidays.This is a recruitment for Entry-Level Public Safety Dispatchers. Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. Must work alternating shifts including some weekends and holidays.This is a recruitment for Entry-Level Public Safety Dispatchers. Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. Must work alternating shifts including some weekends and holidays.</p><p><strong>This is a recruitment for Entry-Level Public Safety Dispatchers. </strong>Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. <strong>Must work alternating shifts including some weekends and holidays</strong>.</p><p><strong>This is a recruitment for Entry-Level Public Safety Dispatchers. </strong>Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. <strong>Must work alternating shifts including some weekends and holidays</strong>.</p><ul><li><strong>This is a recruitment for Entry-Level Public Safety Dispatchers. </strong>Under supervision, receives and transmits emergency public safety messages by telephone, voice radio, and alarm signals, and performs related duties as required. <strong>Must work alternating shifts including some weekends and holidays</strong>.</li></ul>', '4', 'adsjfkl,asdlk;fj,adsflkj', 'asdf,asdkfj', 'asdf,jdkf', 'Intermediate', 'Part-Time', '2021-05-25', 7, '2021-05-20 01:48:52', '2021-05-20 01:50:44', 0, 1, '2021-05-20 01:48:52', 2, 0),
(94, 'Php Developer', '$', '100', NULL, 'Per Hour', 1, 'Lahore', 'http://www.mymotivz2.development-env.com/', '<p>asdasdasdasd dsaas d asd</p>', '1', 'test,testt', 'aaa', 'sdad', 'Intermediate', 'Full-Time', '2021-06-30', 10, '2021-05-20 13:59:51', '2021-05-20 13:59:51', 0, 1, '2021-05-20 13:59:51', 13, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied__jobs`
--
ALTER TABLE `applied__jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied__jobs_job_id_foreign` (`job_id`),
  ADD KEY `applied__jobs_candidate_id_foreign` (`candidate_id`),
  ADD KEY `applied__jobs_resume_id_foreign` (`resume_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `candidates_status_id_foreign` (`status_id`),
  ADD KEY `candidates_education_id_foreign` (`education_id`),
  ADD KEY `candidates_job_id_foreign` (`job_id`);
ALTER TABLE `candidates` ADD FULLTEXT KEY `prof_summary` (`prof_summary`);
ALTER TABLE `candidates` ADD FULLTEXT KEY `prof_summary_2` (`prof_summary`);

--
-- Indexes for table `candidate_job`
--
ALTER TABLE `candidate_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_job_candidate_id_foreign` (`candidate_id`),
  ADD KEY `candidate_job_job_id_foreign` (`job_id`),
  ADD KEY `candidate_job_user_id_foreign` (`user_id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_resumes_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `career_job_notifies`
--
ALTER TABLE `career_job_notifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career_job_notifies_education_id_foreign` (`education_id`) USING BTREE,
  ADD KEY `career_job_notifies_industry_id_foreign` (`industry_id`) USING BTREE;

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `client_notes`
--
ALTER TABLE `client_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_notes_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_user`
--
ALTER TABLE `client_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_user_user_id_foreign` (`user_id`),
  ADD KEY `client_user_client_id_foreign` (`client_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_client_id_foreign` (`client_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_jobs`
--
ALTER TABLE `favourite_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_jobs_job_id_foreign` (`job_id`),
  ADD KEY `favourite_jobs_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `find__talent`
--
ALTER TABLE `find__talent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `find_talents_email_unique` (`email`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_stages`
--
ALTER TABLE `interview_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_statuses`
--
ALTER TABLE `interview_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `jobs_candidate_id_foreign` (`candidate_id`),
  ADD KEY `jobs_pipeline_id_foreign` (`pipeline_id`);

--
-- Indexes for table `job_notifies`
--
ALTER TABLE `job_notifies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_notifies_email_unique` (`email`),
  ADD KEY `job_notifies_industry_id_foreign` (`industry_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_candidates`
--
ALTER TABLE `new_candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `new_candidates_email_unique` (`email`),
  ADD KEY `new_candidates_education_id_foreign` (`education_id`),
  ADD KEY `new_candidates_job_id_foreign` (`job_id`),
  ADD KEY `new_candidates_status_id_foreign` (`status_id`),
  ADD KEY `new_candidates_industry_id_foreign` (`industry_id`);

--
-- Indexes for table `new_clients`
--
ALTER TABLE `new_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `new__clients_email_unique` (`email`),
  ADD KEY `new_clients_industry_id_foreign` (`industry_id`),
  ADD KEY `new_clients_country_id_foreign` (`country_id`),
  ADD KEY `new_clients_state_id_foreign` (`state_id`);

--
-- Indexes for table `new_notes`
--
ALTER TABLE `new_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new_notes_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `notes_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `placements`
--
ALTER TABLE `placements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `placements_candidate_id_foreign` (`candidate_id`),
  ADD KEY `placements_job_id_foreign` (`job_id`),
  ADD KEY `placements_client_id_foreign` (`client_id`),
  ADD KEY `placements_recruiter_id_foreign` (`recruiter_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges_user`
--
ALTER TABLE `privileges_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privileges_user_user_id_foreign` (`user_id`),
  ADD KEY `privileges_user_privileges_id_foreign` (`privileges_id`);

--
-- Indexes for table `receiver_emails`
--
ALTER TABLE `receiver_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver_emails_interview_id_foreign` (`interview_id`);

--
-- Indexes for table `recruitment_services`
--
ALTER TABLE `recruitment_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recruitment_services_candidate_id_foreign` (`client_id`),
  ADD KEY `recruitment_services_industry_id_foreign` (`industry_id`),
  ADD KEY `recruitment_services_education_id_foreign` (`education_id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumes_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `schedule_interviews`
--
ALTER TABLE `schedule_interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_interviews_candidate_id_foreign` (`candidate_id`),
  ADD KEY `schedule_interviews_status_id_foreign` (`status_id`),
  ADD KEY `schedule_interviews_job_id_foreign` (`job_id`),
  ADD KEY `schedule_interviews_client_id_foreign` (`client_id`),
  ADD KEY `schedule_interviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_action_id_foreign` (`action_id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indexes for table `todo_actions`
--
ALTER TABLE `todo_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_jobs`
--
ALTER TABLE `user_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_jobs_ibfk_1` (`client_id`),
  ADD KEY `user_jobs_industry_id` (`industry_id`),
  ADD KEY `user_jobs_education_id` (`education_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied__jobs`
--
ALTER TABLE `applied__jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2217;

--
-- AUTO_INCREMENT for table `candidate_job`
--
ALTER TABLE `candidate_job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `career_job_notifies`
--
ALTER TABLE `career_job_notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `client_notes`
--
ALTER TABLE `client_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_user`
--
ALTER TABLE `client_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `favourite_jobs`
--
ALTER TABLE `favourite_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `find__talent`
--
ALTER TABLE `find__talent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `interview_stages`
--
ALTER TABLE `interview_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interview_statuses`
--
ALTER TABLE `interview_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `job_notifies`
--
ALTER TABLE `job_notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `new_candidates`
--
ALTER TABLE `new_candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `new_clients`
--
ALTER TABLE `new_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `new_notes`
--
ALTER TABLE `new_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `placements`
--
ALTER TABLE `placements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `privileges_user`
--
ALTER TABLE `privileges_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `receiver_emails`
--
ALTER TABLE `receiver_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `recruitment_services`
--
ALTER TABLE `recruitment_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `schedule_interviews`
--
ALTER TABLE `schedule_interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `todo_actions`
--
ALTER TABLE `todo_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_jobs`
--
ALTER TABLE `user_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied__jobs`
--
ALTER TABLE `applied__jobs`
  ADD CONSTRAINT `applied__jobs_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `new_candidates` (`id`),
  ADD CONSTRAINT `applied__jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `user_jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied__jobs_resume_id_foreign` FOREIGN KEY (`resume_id`) REFERENCES `candidate_resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidates_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidate_job`
--
ALTER TABLE `candidate_job`
  ADD CONSTRAINT `candidate_job_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidate_job_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `user_jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidate_job_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD CONSTRAINT `candidate_resumes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `new_candidates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `career_job_notifies`
--
ALTER TABLE `career_job_notifies`
  ADD CONSTRAINT `career_job_notifies_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `career_job_notifies_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_user`
--
ALTER TABLE `client_user`
  ADD CONSTRAINT `client_user_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourite_jobs`
--
ALTER TABLE `favourite_jobs`
  ADD CONSTRAINT `favourite_jobs_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `new_candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourite_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `user_jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_pipeline_id_foreign` FOREIGN KEY (`pipeline_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_notifies`
--
ALTER TABLE `job_notifies`
  ADD CONSTRAINT `job_notifies_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `new_candidates`
--
ALTER TABLE `new_candidates`
  ADD CONSTRAINT `new_candidates_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `new_candidates_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `new_candidates_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `new_candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `new_candidates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `new_clients`
--
ALTER TABLE `new_clients`
  ADD CONSTRAINT `new_clients_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `new_clients_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `new_clients_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `placements`
--
ALTER TABLE `placements`
  ADD CONSTRAINT `placements_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `placements_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `placements_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `placements_recruiter_id_foreign` FOREIGN KEY (`recruiter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `privileges_user`
--
ALTER TABLE `privileges_user`
  ADD CONSTRAINT `privileges_user_privileges_id_foreign` FOREIGN KEY (`privileges_id`) REFERENCES `privileges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `privileges_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receiver_emails`
--
ALTER TABLE `receiver_emails`
  ADD CONSTRAINT `receiver_emails_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `schedule_interviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recruitment_services`
--
ALTER TABLE `recruitment_services`
  ADD CONSTRAINT `recruitment_services_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `new_clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recruitment_services_education_id_foreign` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recruitment_services_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_interviews`
--
ALTER TABLE `schedule_interviews`
  ADD CONSTRAINT `schedule_interviews_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_interviews_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_interviews_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_interviews_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_interviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `todo_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_jobs`
--
ALTER TABLE `user_jobs`
  ADD CONSTRAINT `user_jobs_education_id` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_jobs_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `new_clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_jobs_industry_id` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

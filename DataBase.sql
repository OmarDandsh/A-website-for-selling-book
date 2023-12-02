-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 يونيو 2023 الساعة 18:27
-- إصدار الخادم: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DataBasee`
--

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add category', 1, 'add_category'),
(2, 'Can change category', 1, 'change_category'),
(3, 'Can delete category', 1, 'delete_category'),
(4, 'Can view category', 1, 'view_category'),
(5, 'Can add product', 2, 'add_product'),
(6, 'Can change product', 2, 'change_product'),
(7, 'Can delete product', 2, 'delete_product'),
(8, 'Can view product', 2, 'view_product'),
(9, 'Can add review', 3, 'add_review'),
(10, 'Can change review', 3, 'change_review'),
(11, 'Can delete review', 3, 'delete_review'),
(12, 'Can view review', 3, 'view_review'),
(13, 'Can add order1', 4, 'add_order1'),
(14, 'Can change order1', 4, 'change_order1'),
(15, 'Can delete order1', 4, 'delete_order1'),
(16, 'Can view order1', 4, 'view_order1'),
(17, 'Can add publisher', 5, 'add_publisher'),
(18, 'Can change publisher', 5, 'change_publisher'),
(19, 'Can delete publisher', 5, 'delete_publisher'),
(20, 'Can view publisher', 5, 'view_publisher'),
(21, 'Can add order item1', 6, 'add_orderitem1'),
(22, 'Can change order item1', 6, 'change_orderitem1'),
(23, 'Can delete order item1', 6, 'delete_orderitem1'),
(24, 'Can view order item1', 6, 'view_orderitem1'),
(25, 'Can add book f', 7, 'add_bookf'),
(26, 'Can change book f', 7, 'change_bookf'),
(27, 'Can delete book f', 7, 'delete_bookf'),
(28, 'Can view book f', 7, 'view_bookf'),
(29, 'Can add auther', 8, 'add_auther'),
(30, 'Can change auther', 8, 'change_auther'),
(31, 'Can delete auther', 8, 'delete_auther'),
(32, 'Can view auther', 8, 'view_auther'),
(33, 'Can add book preference', 9, 'add_bookpreference'),
(34, 'Can change book preference', 9, 'change_bookpreference'),
(35, 'Can delete book preference', 9, 'delete_bookpreference'),
(36, 'Can view book preference', 9, 'view_bookpreference'),
(37, 'Can add custumer', 10, 'add_custumer'),
(38, 'Can change custumer', 10, 'change_custumer'),
(39, 'Can delete custumer', 10, 'delete_custumer'),
(40, 'Can view custumer', 10, 'view_custumer'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add coupon', 13, 'add_coupon'),
(50, 'Can change coupon', 13, 'change_coupon'),
(51, 'Can delete coupon', 13, 'delete_coupon'),
(52, 'Can view coupon', 13, 'view_coupon'),
(53, 'Can add log entry', 14, 'add_logentry'),
(54, 'Can change log entry', 14, 'change_logentry'),
(55, 'Can delete log entry', 14, 'delete_logentry'),
(56, 'Can view log entry', 14, 'view_logentry'),
(57, 'Can add permission', 15, 'add_permission'),
(58, 'Can change permission', 15, 'change_permission'),
(59, 'Can delete permission', 15, 'delete_permission'),
(60, 'Can view permission', 15, 'view_permission'),
(61, 'Can add group', 16, 'add_group'),
(62, 'Can change group', 16, 'change_group'),
(63, 'Can delete group', 16, 'delete_group'),
(64, 'Can view group', 16, 'view_group'),
(65, 'Can add user', 17, 'add_user'),
(66, 'Can change user', 17, 'change_user'),
(67, 'Can delete user', 17, 'delete_user'),
(68, 'Can view user', 17, 'view_user'),
(69, 'Can add content type', 18, 'add_contenttype'),
(70, 'Can change content type', 18, 'change_contenttype'),
(71, 'Can delete content type', 18, 'delete_contenttype'),
(72, 'Can view content type', 18, 'view_contenttype'),
(73, 'Can add session', 19, 'add_session'),
(74, 'Can change session', 19, 'change_session'),
(75, 'Can delete session', 19, 'delete_session'),
(76, 'Can view session', 19, 'view_session');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
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
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$BAgJXf6TotvTV37bid5JAK$2+tz0cBRkIH0La/ZrwVZJVwQjewmX3rExVIgUoRG904=', '2023-06-14 13:29:37.952631', 0, 'qw', '', '', 'somer@gmail.com', 0, 1, '2023-06-14 13:29:28.946970'),
(2, 'pbkdf2_sha256$600000$6eH0y8G1AaIFdSZCftqshk$3RRLl3YTFjCEhwGDOACxnaGB/EXbRcXHlpCGy5sNEVo=', '2023-06-14 13:39:25.455913', 1, 'omar', '', '', 'omar@gmail.com', 1, 1, '2023-06-14 13:39:08.302360'),
(3, 'pbkdf2_sha256$600000$RvyQ3Q119xR6obAwlyG7eH$Uo411xWbVU/LBaK5wDhuTb/ilWJsjBk5LH48CJhdtSM=', NULL, 0, 'tt', '', '', '', 0, 1, '2023-06-15 21:18:41.440533'),
(4, 'pbkdf2_sha256$600000$iPVedoliM04xczK3TgqGQX$KrAPelmu9G0223BAzrC9k1PLWK6UDQu0h0jjmCNtEvk=', NULL, 0, 'rr', '', '', '', 0, 1, '2023-06-15 21:22:20.587064');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_auther`
--

CREATE TABLE `bookshop_auther` (
  `name` varchar(100) NOT NULL,
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_bookf`
--

CREATE TABLE `bookshop_bookf` (
  `id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `fatoris` tinyint(1) NOT NULL,
  `blocked` tinyint(1) NOT NULL,
  `custumer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `bookshop_bookf`
--

INSERT INTO `bookshop_bookf` (`id`, `created`, `fatoris`, `blocked`, `custumer_id`) VALUES
(1, '2023-06-14 13:44:28.000000', 1, 1, 2),
(2, '2023-06-15 21:19:37.000000', 1, 1, 3),
(3, '2023-06-15 21:19:41.000000', 1, 1, 1),
(4, '2023-06-15 21:19:44.000000', 1, 1, 2),
(5, '2023-06-15 21:19:47.000000', 1, 1, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_bookpreference`
--

CREATE TABLE `bookshop_bookpreference` (
  `id` bigint(20) NOT NULL,
  `preference` varchar(10) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_category`
--

CREATE TABLE `bookshop_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `bookshop_category`
--

INSERT INTO `bookshop_category` (`id`, `name`, `slug`) VALUES
(1, 'ادارة', 'fdv'),
(2, 'تاريخ', 'fvfd'),
(3, 'تربية', 'rfe'),
(4, 'تربية وعلم نفس', 'bdf'),
(5, 'تكنولوجيا', 'acx'),
(6, 'روايات', 'fdvd'),
(7, 'سياسة', 'scxc'),
(8, 'صحة', 'gbgfb'),
(9, 'علوم حاسوب وانترنت', 'hggh'),
(10, 'فن', 'zcs'),
(11, 'هندسة', 'gbp'),
(205, 'cds', 'qw32');

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_order1`
--

CREATE TABLE `bookshop_order1` (
  `created` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `custumer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `bookshop_order1`
--

INSERT INTO `bookshop_order1` (`created`, `id`, `custumer_id`) VALUES
('2023-06-14 13:39:44.000000', 1, 1),
('2023-06-15 21:16:53.000000', 2, 1),
('2023-06-15 21:17:01.000000', 3, 2),
('2023-06-15 21:18:52.000000', 4, 3),
('2023-06-15 21:22:57.000000', 5, 4);

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_orderitem1`
--

CREATE TABLE `bookshop_orderitem1` (
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `bookshop_orderitem1`
--

INSERT INTO `bookshop_orderitem1` (`price`, `quantity`, `id`, `order_id`, `product_id`) VALUES
(43.00, 1, 2, 1, 1093),
(43.00, 1, 3, 2, 1036),
(43.00, 1, 4, 3, 1035),
(43.00, 1, 5, 3, 1033),
(43.00, 1, 6, 3, 1096),
(342.00, 1, 7, 2, 1094),
(32.00, 1, 8, 4, 1037),
(43.00, 1, 9, 4, 1022),
(43.00, 1, 10, 4, 1091),
(43.00, 1, 11, 4, 1091),
(43.00, 1, 12, 5, 1016),
(43.00, 1, 13, 5, 1093),
(43.00, 1, 14, 5, 1035),
(43.00, 1, 15, 5, 1040),
(43.00, 1, 16, 5, 1036),
(43.00, 1, 17, 5, 1033),
(43.00, 1, 18, 1, 1093),
(43.00, 1, 19, 4, 1036),
(43.00, 1, 20, 4, 1016),
(43.00, 1, 21, 4, 1040),
(43.00, 1, 22, 4, 1033),
(43.00, 1, 23, 3, 1093),
(43.00, 1, 24, 3, 1036),
(43.00, 1, 25, 3, 1040),
(43.00, 1, 26, 4, 1034),
(43.00, 1, 27, 3, 1038),
(43.00, 1, 28, 1, 1093),
(43.00, 1, 29, 2, 1036),
(43.00, 1, 30, 3, 1034),
(43.00, 1, 31, 2, 1040),
(43.00, 1, 32, 1, 1093),
(43.00, 1, 33, 2, 1038);

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_product`
--

CREATE TABLE `bookshop_product` (
  `id` bigint(20) NOT NULL,
  `ISBN` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Format` varchar(50) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Page_Count` int(11) NOT NULL,
  `Series` int(11) NOT NULL,
  `Target_audience` varchar(50) DEFAULT NULL,
  `Title` varchar(200) NOT NULL,
  `published_date` date NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `bookshop_product`
--

INSERT INTO `bookshop_product` (`id`, `ISBN`, `image`, `description`, `price`, `available`, `category_id`, `Edition`, `Format`, `Language`, `Page_Count`, `Series`, `Target_audience`, `Title`, `published_date`, `slug`) VALUES
(1013, '12167', 'products/bookCovers/ First Class Teaching - 2023.png', 'لقد تم تأليف هذا الكتاب ليساعدك على تعلم جافا بسرعة و بشكل جيد.\n\nلا يفترض الكتاب وجود أي خلفية مسبقة في البرمجة. فإذا كنت مبتدئاً تماماً، ستجد أن هذا الكتاب يشرح المفاهيم المعقدة بطريقة سهلة الفهم. و إذا كنت خبيرا في البرمجة ولكن جديداً في جافا، حينها سيوفر لك هذا الكتاب المعلومات الكافية لتبدأ البرمجة في جافا مباشرة.\n\nلقد جرى اختيار المواضيع بعناية لتعطيك عرضاً شاملاً عن جافا، بدون إغراقك بقدر كبير من المعلومات. بالإضافة إلى ذلك، تم شرح ميزات جديدة في جافا. و تم اختيار جميع الأمثلة في هذا الكتاب بعناية لتوضيح كل موضوع بحيث تستطيع الحصول على فهم شامل وعميق للغة.\n\nو كما يقال فإن \"أفضل طريقة لتعلم أي شيء هي ممارسته\". يأتي هذا الكتاب مع مشروع جيد حيث ستبدأ من بداية الكتاب كتابة كود جافات. حيث سيجري من البداية توجيهك لكتابة كود جافا لبرمجة إدارة عضوية. حيث يستخدم هذا المشروع المفاهيم التي تم شرحها في هذا الكتاب ويعطيك فرصة لترى كيف ترتبط هذه المفاهيم وتتكامل بعضها مع بعض.', 4.00, 1, 9, 1, 'الكتروني', 'عربي', 200, 1, 'مبرمجين', 'جافا للمبتدئين ', '0000-00-00', 'abd1'),
(1014, '12161', 'products/bookCovers/ Phishing and Communication Channels - 2022.png', 'ينقلك هذا الكتاب إلى عالم احتراف لغة Python\n\nسوف تجد فيه جميع المفاهيم المتقدمة التي تحتاج إليها للعمل مع لغة Python ناهيك عن المفاهيم التي تميز Python عن غيرها من لغات البرمجة الأخرى، ومنها نذكر:\n\nالعمل مع قواعد بيانات MySQL ( ماي اس كيو ال) خلال Python\'s DB-API\nالارتباط مع عبارة with\nبروتوكول إدارة السياق Context Management Protocol\nالأصناف classes\nجلسات عمل الويب sessions وتقييد الوصول إلى صفحات الويب\nمعالجة الاستثناءات\nحلقات for ومفهوم الاستيعاب Comprehension\nمفهوم مولد التوابع function generator\nوغيرها من التفاصيل الدقيقة التي تجعلك محترفاً في لغة   Python وتقودك لأن تكون عضواً مرموقاً في مجتمع مبرمجي Python', 7.50, 1, 9, 1, 'الكتروني', 'عربي', 344, 1, 'مبرمجين', 'احترف Python', '0000-00-00', 'abd2'),
(1015, '20080', 'products/bookCovers/ Robert C. Martin - 2008.png', 'يشكل هذا الكتاب دليلاً لتعلُّم العمل على نظام Arduino دون الحاجة لأية معرفة مسبقة بالإلكترونيات أو البرمجة.\n\nومع الأشكال والشروحات التفصيلية خطوةً خطوة يمضي الكتاب قدماً مع القارئ ابتداءً من بناء دارات بسيطة على بطاقة التوصيل وصولاً إلى ضبط بيئة تطوير Arduino المتكاملة وكتابة البرامج لتعمل على Arduino أردوينو.\n\nسيتم تعريف القارئ بأساسيات الإلكترونيات ومفاهيم البرمجة بالإضافة إلى المداخل والمخارج الرقمية والتماثلية. يتم التركيز بين دفتي هذا الكتاب أيضاً على ممارسات كشف المشاكل وإصلاحها بحيث يتعلم المبتدؤون ماذا يفعلون إن لم تعمل داراتهم أو برامجهم.\n\nبعد إنجاز مشاريع هذا الكتاب يكون قد تشكَّل لدى القارئ أساس متين يمكِّنه من بناء مشاريعه الخاصة باستخدام Arduino.', 5.00, 0, 9, 1, 'الكتروني', 'عربي', 312, 1, 'مبرمجين', 'احترف Arduino', '0000-00-00', 'abd3'),
(1016, '80055', 'products/bookCovers/ Teach Like a Champion  - 2023.png', 'يحتوي هذا الكتاب على معلومات يمكن أن تصنف وفق محورين أساسيين:\n\nالمحور الأول: معلومات وحقائق حول الطفل, منذ أن يكون جنيناً في بطن أمه, إلى أن يبلغ من العمر ستة شهور.\n\nالمحور الثاني: تمارين وتدريبات تساعد على تنمية ذكاء الطفل وتنشط حواسه بحيث يفوق أقرانه في المستقبل.\n\nوأخيراً فإننا نرجو أن نكون قد أضفنا مساهمة مفيدة إلى المكتبة العربية وشكراً.', 3.00, 0, 4, 1, 'الكتروني', 'عربي', 264, 1, 'عامة الناس', 'لطفل أكثر ذكاء', '0000-00-00', 'abd4'),
(1017, '80021', 'products/bookCovers/ تحليل بيانات الأعمال المالية - ج 1 - 2012.png', 'Dar Shoaa\nعرض عربة التسوق \nتربية وعلم نفس\nالإرشاد التربوي للطفلالإرشاد التربوي للطفل\n \nالإرشاد التربوي للطفل\nالمؤلف:\nأنس شكشك\n2.50 $\nالناشر:\nدار شعاع\nالصفحات:\n176\nرقم المخزون:\n80021\nاختر نوع الكتاب المطلوب required\n كتاب الكتروني عالي الدقة (ننصح به لسعره المخفض ولا يوجد أجور شحن وسيصلك الكتاب خلال يوم واحد إلى بريدك الالكتروني)\n كتاب ورقي مطبوع (سيتم إضافة أجور الشحن لاحقا ومدة التوصيل بين 5 إلى 15 يوم عمل)\nالعدد \n1\n أضف إلى عربة التسوق\nFacebook البريد الإلكتروني Twitter LinkedIn Pinterest\nجدول المحتويات\nالفصل المجاني\nيدخل الإرشاد التربوي ضمن موضوع الخدمات النفسية الفردية لأن التربية تُعنى بالطفل الذي ينمو ويتطور تحت تأثيرات خارجية وداخلية. وهدف التربية تنمية الشخصية حتى تعبر عن نفسها تعبيراً كاملاً سوياً.\n\nفي الفصل الأول يعرض الكتاب اضطرابات النوم عند الأطفال ويبين الأخطاء التي يقع فيها الآباء فيما يتعلق باضطرابات النوم عند أطفالهم ثم ينتقل البحث إلى معالجة الأفكار الخيالية التي تسمى أحلام يقظة ليدرس أسبابها ويحدد مضمونها.\n\nكما يتناول الكتاب نقص الدافعية للتعلم عند الأطفال والعوامل المؤثرة في انخفاض الدافعية وعلاجها ويتحدث عن صعوبات التعلم كونها اضطراب في القدرة الإدراكية وقصور في التناسق يرجع لاضطراب العمليات العقلية الأساسية التي تشمل الانتباه والتذكر وتكوين المفهوم ويظهر صداه في عدم القدرة على تعلم القراءة والكتابة والحساب... وبالتالي صعوبة التحصيل الدراسي.\n\nثم يستعرض الكتاب صعوبات تعلم القراءة عند الطفل ومفهوم العسر القرائي والمراحل النمائية لتعلم القراءة. إضافة إلى دراسة صعوبة تعلم الحساب وما يترتب عليها من مشكلات دراسة الجبر والهندسة وإيجاد الإرشادات والعلاجات الملائمة لحل مشكلة هذه الصعوبات.\n\nكما يشرح الكتاب الصعوبات اللغوية عند الأطفال والتطور الطبيعي للكلام ويتساءل كيف تصدر الأصوات؟ ما هي مظاهر وأسباب تأخر الكلام عند الأطفال؟. ثم يتحدث عن عيوب النطق ومشكلاته والإعاقة في الكلام. ونتبين في الكتاب تكوين اللفظ السليم والتدابير الوقائية المناسبة وآلية النطق وتطور العمليات العصبية والنفسية في النشاط اللغوي.\n\nأخيراً يستعرض الكتاب أنواع عيوب النطق وأهمها اللجلجة في الكلام وأعراضها وأسبابها وعلاجها ثم يدرس التلعثم باعتباره أكثر عيوب النطق شيوعاً عند الأطفال وأهم مشكلاته وتقويمه ويتناول الكتاب بالبحث الصعوبات الخاصة باللغة الشفوية وارتباطها بالعمليات النفسية النمائية والصلة الوثيقة ما بين التطور اللغوي والتطور العقلي.', 2.50, 0, 4, 1, 'الكتروني', 'عربي', 176, 1, 'عامة الناس', 'الإرشاد التربوي للطفل', '0000-00-00', 'abd5'),
(1018, '14050', 'products/bookCovers/ كتاب الدولة العثمانية عوامل النهوض وأسباب السقوط - 2001.png', 'كيف تحمي أعمالك التجارية وأسرارك الخاصة وتبقى في أمان!\n\nهل لديك تصور عن التهديدات السيبرانية المنتشرة من حولك؟ هل تعلم كيف تدافع عن نفسك وعن أعمالك التجارية ضدها؟ ما الذي يمكنك أن تفعله إذا ما تم اختراق معلوماتك الشخصية وبيانات عملك؟\n\nيقدم لك هذا الكتاب \"الأمن السيبراني\" كل المعلومات التي تحتاج إليها بلغة يمكنك أن تفهمها مهما كان مستواك المعرفي فيما يخص الأمن السيبراني.\n\nيبدأ الكتاب بشرح لأنواع التهديدات المرتبط بالأمن السيبراني وكيفية عملها، ومن ثم يبين لك كيفية تحديد نقاط الضعف لديك من حيث الأمن السيبراني، ويشرح لك كيفية التخلص منها.\n\nسوف تجد جميع الخطوات اللازمة من أجل التعافي من اختراق في حال وقوعه، كما يخصص الكتاب جزءاً كبيراً لشرح الطرق الواجب اتباعها من أجل تأمين عملك التجاري.\n\nفكن مستعداً، وكن آمناً!', 7.00, 1, 9, 1, 'ورقي', 'عربي', 432, 1, 'مبرمجين', 'الأمن السيبراني', '0000-00-00', 'abd6'),
(1019, '15100', 'products/bookCovers/4G wireless video communications - 2019.png', 'The world of graphic design has witnessed rapid changes that do not stop or slow down, in order to keep pace with the technical development in software on the one hand, and to meet the requirements of the market on the other hand. These factors impose on the designer the continuous support by developing his professional capabilities in artistic formation and acquiring the necessary aesthetic and creative techniques in order to produce an artwork that is commensurate with the required idea and the goal to be achieved by the customer.', 4.50, 1, 5, 1, 'الكتروني', 'عربي', 256, 1, 'مبرمجين', 'Graphic Design - Aesthetic Foundations', '0000-00-00', 'abd7'),
(1020, '15067', 'products/bookCovers/A success guide for the aspiring trader - 2021.png', 'This book focuses on providing a solid foundation in the use of SolidWorks software through a hands-on approach based on examples contained in the projects built in a step-by-step manner. The projects of this book were built according to a step-by-step educational method, as the objectives required of each project were included at its beginning, in addition to an introductory overview, and each project ends with a review of what was created in it and questions about the topics covered in it.', 5.75, 1, 5, 1, 'الكتروني', 'عربي', 640, 1, 'مبرمجين', 'Engineering design using SolidWorks', '0000-00-00', 'abd8'),
(1021, '40015', 'products/bookCovers/Acoustic array systems theory, implementation and application - 2013.png', 'يتوسع كتاب تحليل الاقتصاد الجزئي في مواضيع الدالة العكسية للطلب واشتقاق خط الطلب وحدود الميزانية وتفضيلات المستهلك ونظرية سلوك المستهلك والمنفعة ومنحنيات السواء والمعدل الحدي للإحلال وجدول الاستبدال والإشباع والتفضيل الطبيعي وسوق القيم المنقولة والسلوك الاحتكاري والثروات القابلة للنفاذ وأسواق عوامل الإنتاج وتحليل إضافي للمرونة....\n\nأما بالنسبة لنظرية الإنتاج فقد عرض الكتاب سلوك المشروع والتكنولوجيا والخيار التقني والعرض في المشروع والربح وفائض المنتج والعرض في القطاع وعوائد عوامل الإنتاج وطرق توزيعها. \n\nيتناول الكتاب أيضا مواضيع لم يتطرق إليها إلا القليل من كتب التحليل الجزئي مثل تكنولوجيا المعلومات وقد عرض في هذا القسم بعض النماذج الاقتصادية المتعلقة بقنوات المعلومات وكيفية تقاسم منتجاتها.\n\nومن المواضيع الجديدة أيضاً التي يعرضها الكتاب موضوع عدم اليقين بالنسبة للمستهلك والذي يتضمن أيضاً دالة المنفعة والاحتمالات والطلب على التأمين وكيفية توزيع الأخطار وقياسها وتقديرها ودور الأسواق المالية (البورصة) في ذلك، كما تم إدخال نظرية الألعاب إلى الكتاب وذلك من أجل تعويد الدارس منذ البدء على إعمال الفكر والتحليل لاستيعاب الأمور وفهمها من أجل معالجة القضايا والمواضيع التي يواجهها الطالب في دراساته الاقتصادية. يتضمن الكتاب جانباً عملياً وأمثلة تطبيقية وأسئلة توضح العديد من الظواهر الاقتصادية.\"', 4.75, 1, 1, 1, 'ورقي', 'عربي', 440, 1, 'اقتصاديين', 'التحليل الاقتصادي الجزئي', '0000-00-00', 'abd9'),
(1022, '30064', 'products/bookCovers/Advanced Analytics with Transact-SQL - 2021.png', 'سوف يتضمن المرجع طرائق التحليل الإنشائي مثل: تحليل الترتيب الأول، وتحليل الترتيب الثاني، والتحليل المرن، والتحليل اللا مرن، وتحليل المفصل اللدن، وتحليل المنطقة اللدنة، وتحليل الاستقرار، والتحليل الستاتيكي، والتحليل الديناميكي، واستعراض لطرق نمذجة المنشآت الهندسية.\n\nكما سيتضمن كتاب التحليل الانشائي شرحا كاملا للديناميكا الإنشائية بمواضيعها المتنوعة و تحليل مختلف الاستجابات لمختلف الأنظمة.\n\n ', 6.25, 1, 1, 1, 'ورقي', 'عربي', 352, 1, 'اقتصاديين', 'الهندسة الإنشائية - أساسيات التحليل الإنشائي - الكتاب الأول المؤلف: المهندس نادر محمود', '0000-00-00', 'abd10'),
(1023, '956', 'products/bookCovers/Advanced Forecasting with Python - 2021.png', 'A comprehensive history of the news of the kings of the East and the West, and what is between them. It began from the beginning of time to the end of the year six hundred and twenty eight.', 81.00, 1, 2, 1, 'ورقي', 'عربي', 5923, 1, 'عامة الناس', 'complete in history', '0000-00-00', 'abd11'),
(1024, '14050', 'products/bookCovers/Advertising by Design Generating and Designing Creative Ideas Across Media, 4th ', 'How to protect your business and private secrets and stay safe', 7.00, 1, 5, 1, 'ورقي', 'عربي', 432, 1, 'مبرمجين', 'Cyber ​​security', '0000-00-00', 'abd12'),
(1025, '15100', 'products/bookCovers/Agile Data Science 2.0 Building Full-Stack Data Analytics Applications with Spar', 'The book provides a comprehensive explanation, supported by photographs and drawings, of basic and modern graphic design techniques', 4.50, 1, 5, 1, 'الكتروني', 'عربي', 256, 1, 'مبرمجين', 'graphic design', '0000-00-00', 'abd13'),
(1026, '1122', 'products/bookCovers/anacarnina - 2004.png', 'This book introduces you to the world of application programming from its widest gates, and it will also give you the strength to qualify to work in the most powerful companies or even profit from applications independently.', 4.00, 1, 11, 1, 'الكتروني', 'انكليزي', 446, 1, 'مبرمجين', 'Web Programming with Dart', '2006-07-05', 'abd14'),
(1027, '9948381939', 'products/bookCovers/And the last similarities - 13 - the faces of miraculousness in the similar - 20', 'A book that contains a set of geographical maps of the earth or a specific area of ​​the earth related to a specific subject.', 4.00, 1, 6, 1, 'الكتروني', 'عربي', 48, 1, 'أطفال', 'World atlas for children and young adults', '0000-00-00', 'abd15'),
(1028, '178926', 'products/bookCovers/Android Apps Security - 2021.png', 'This book collects the history of Jerusalem since its establishment in 3000 BC at the hands of the Persians, passing through different stages ranging from prosperity to atrophy, until the end of the British Mandate era in 1947.', 2.00, 1, 2, 1, 'الكتروني', 'عربي', 321, 1, 'عامة الناس', 'History of Jerusalem', '0000-00-00', 'abd16'),
(1029, '9789', 'products/bookCovers/Apple macOS and iOS System Administration - 2019.png', 'This book examines health and medical issues by defining one hundred and forty herbs with their popular, Arabic and French names, identifies their types through their descriptions and natural properties, and explains the function of each part of the herb, and its health and nutritional benefits.', 8.00, 1, 8, 1, 'الكتروني', 'عربي', 304, 1, 'عامة الناس', 'Medical Herbs', '0000-00-00', 'abd17'),
(1030, '80036', 'products/bookCovers/Artificial investment of sensors using a personal computer - 1998.png', 'In this book, we study the developmental changes between childhood and adolescence, the manifestations of physical, emotional, mental, social, and sexual growth. We show the behavioral patterns of adolescents, imaginary life, and dreams.', 2.50, 1, 3, 1, 'الكتروني', 'عربي', 224, 1, 'عامة الناس', 'Teen personality', '0000-00-00', 'abd18'),
(1031, '40006', 'products/bookCovers/Azure Data Factory by Example - 2021.png', 'This famous book provides essential assistance to anyone who wants to develop their negotiation and persuasion abilities and increase their efficiency in selling products, services and ideas.', 3.00, 1, 1, 1, 'الكتروني', 'عربي', 272, 1, 'اقتصاديين', 'Negotiation techniques in sales and marketing', '0000-00-00', 'abd19'),
(1032, '979-265-314-1', 'products/bookCovers/Basic options portfolio management strategies and techniques for investing in st', 'لكتاب يتحدث عن الدولة العثمانية (عوامل النهوض وأسباب السقوط)؛ فيعطي صورة واضحة عن أصول الأتراك، ومتى دخلوا في الاسلام وعن اعمالهم المجيدة عبر التاريخ، ويستل من بطون المصادر والمراجع بعض التراجم لشخصيات تركية صهرها القرآن الكريم وساهمت في بناء الحضارة الاسلامية، ونصرت مذهب أهل السنة أمثال، السلطان سلجوق، وألب أرسلان، ونظام الملك، وملكشاه، ويتحدث الكتاب عن جهادهم ودعوتهم وحبهم للعلم والعدل، ويبين أن الأتراك الذين قاموا ببناء الدولة العثمانية امتداداً للسلاجقة ويتحدث حديثاً منصفاً عن زعماء الدولة العثمانية كعثمان الأول ، وأورخان ، ومراد الأول، وبايزيد الأول، ومحمد جلبي ، ومراد الثاني ومحمد الفاتح، ويبين صفاتهم والمنهج الذي ساروا عليه، وكيف تعاملوا مع سنن الله في بناء الدولة كسنة التدرج، وسنة الأخذ بالأسباب ، وسنة تغيير النفوس ، وسنة التدافع، وسنة الابتلاء، وكيف حقق القادة الأوائل شروط التمكين ، وكيف أخذوا بأسبابه المادية والمعنوية؟ وماهي المراحل التي مرت بها؟ وكيف كان فتح القسطنطينية نتيجة لجهود تراكمية شارك فيها العلماء والفقهاء والجنود والقادة على مر العصور وكر الدهور وتوالي الأزمان؟ ويبين للقارئ الكريم أن النهوض العثماني كان شاملاً في كافة المجالات العلمية والسياسية والاقتصادية والإعلامية والحربية، وأن للتمكين صفات، لابد من توفرها في القادة، والأمة، وبفقدها يفقد التمكين.\nويوضح للقارئ حقيقة الدولة العثمانية والأسس التي قامت عليها والأعمال الجليلة التي قدمتها للأمة؛ كحماية الأماكن المقدسة الإسلامية من مخططات الصليبية البرتغالية، ومناصرة أهالي الشمال الأفريقي ضد الحملات الصليبية الإسبانية وغيرها، وإيجاد وحدة طبيعية بين الولايات العربية ، وإبعاد الزحف الاستعماري عن ديار الشام ومصر، وغيرها من الاراضي الاسلامية، ومنع انتشار المذهب الاثنى عشري الشيعي الرافضي الى الولايات الاسلامية التابعة للدولة العثمانية ومنع اليهود من استيطان فلسطين، ودورها في نشر الاسلام في أوروبا ويتحدث هذا البحث عن سلبيات الخلافة العثمانية ، والتي كان لها الأثر في إضعاف الحكم، كأهمال اللغة العربية التي هي لغة القرآن الكريم والحديث الشريف في أخر عهدها، وعدم الوعي الاسلامي الصحيح، وانحرافها عن شرع الله تعالى وتأثرها بالدعوات التغريبية، ويتكلم عن حقيقة الصراع بين الحركة ال*****ة والدولة العثمانية، وعن الدور المشبوه الذي قام به محمد علي لصالح بريطانيا وفرنسا في ضربه للتيار الاسلامي في مصر، والحجاز ، والشام، وعن حركته التغريبية التي كانت خطوة نحو الإنسلاخ عن المبادئ الاسلامية الأصيلة ويتحدث عن الدعم الماسوني الذي كان خلف سياسات محمد علي المدمرة للأمة الاسلامية ويوضح الكتاب أن محمد علي كان مخلباً وخنجراً مسموماً استعمله الأعداء في تنفيذ مخططاتهم ولذلك وقفوا معه في نهضته العلمية ، والاقتصادية والعسكرية بعد أن أيقنوا بضعف الجانب العقدي والإسلامي لديه ولدى أعوانه وجنوده، وكيف ترتب على دور محمد علي في المنطقة بأسرها أن تنبهت الدول الأوروبية الى مدى الضعف الذي أصبحت عليه الدولة العثمانية، وبالتالي استعدادها لتقسيم أراضيها حينما تتهيأ الظروف السياسية.\nويتكلم عن السلطان محمود الثاني الذي ترسم خطى الحضارة الغربية في حركته الاصلاحية، ويتحدث عن أبنه عبدالمجيد الذي تولى السلطنة من بعده والذي كان خاضعاً لتأثير وزيره رشيد باشا الذي وجد مثله وفلسفته في الماسونية، وكيف ساهم هذا الوزير مع أنصاره في دفع عجلة التغريب التي كانت تدور حول نقاط ثلاثة هامة: الاقتباس من الغرب فيما يتعلق بتنظيم الجيش، والاتجاه بالمجتمع نحو التشكيل العلماني، والاتجاه نحو مركزية السلطة في استانبول والولايات، وكيف كانت الخطوات الجرية التي اتخذها الماسون الأتراك نحو علمنة الدولة وإظهار خطى كلخانة وهمايون والوصول الى دستور مدحت باشا عام 1876م وكان ذلك الحدث أول مرة في تاريخ الاسلام ودوله يجري العمل بدستور مأخوذ عن الدستور الفرنسي والبلجيكي والسويسري وهي دساتير وضعية علمانية', 20.00, 1, 2, 1, 'الكتروني', 'عربي', 582, 1, 'عامة الناس', ' كتاب الدولة العثمانية عوامل النهوض وأسباب السقوط', '0000-00-00', 'abd20'),
(1033, '9953-446-86-5', 'products/bookCovers/Beginning Azure Synapse Analytics - 2021.png', 'قع هذا الكتاب في ثمانية فصول خصص المؤلف كل فصل للحديث عن نوع من أنواع الأغذية (الخضروات، الفواكة، الحبوب، المكسرات، والمشروبات، الأعشاب والزهورات والتوابل، المنتوجات الحيوانية، المتفرقات)، وهو يذكر كل نوع من الأنواع وأماكن وجوده أو زراعته إضافة إلى تاريخه والأجزاء المستعملة منه، وتركيبته واستعمالاته الطبية.ويؤكد المؤلف في هذا الكتاب أن ما يأكله الإنسان يؤثر سلباً أو إيجاباً على صحته، ومن هنا يجب توجيه المريض إلى الأغذية التي تساعد على شفاء أمراضه ومنعه من تناول المأكولات التي تعاكس مفعول الدواء الشفائي الذي يتناوله لعلاج أمراضه. .', 30.00, 1, 8, 1, 'الكتروني', 'عربي', 382, 1, 'عامة الناس', 'كتاب الطب والحياة', '0000-00-00', 'abd21'),
(1034, '977-271-082-X', 'products/bookCovers/Beginning Ethical Hacking with Kali Linux Computational Techniques for Investiga', 'ضغط الدم هو قوة دفع الدم على جدران الأوعية الدموية التي ينتقل خلالها لمداد كافة أنسجة الجسم وأعضائه بالغذاء والأكسجين والماء والإنزيمات فيما يعرف بالدورة الدموية. تبدأ الدورة الدموية مع انقباض عضلة القلب ليدفع بقوة كل محتوياته من الدم ، فتنتقل بدورها من القلب إلى الشريان الأبهر أضخم شرايين جسم الإنسان ومنه إلى بقية الشرايين، ثم ينبسط القلب ليسمح بامتلائه بكمية جديدة من الدم المعبأ بالأكسجين لينقبض من جديد دافعا بشحنة جديدة إلى الشريان الأبهر مرة أخرى ، وهكذا دواليك. تبين الإحصاءات الطبية الأهمية الكبرى للحفاظ على ضغط الدم بحيث يكون في المتوسط 115/75 مليمتر زئبق ، وأن زيادته عن هذا الحد تؤدي إلى إجهاد القلب والكلى ، وقد يؤدي ارتفاعه إلى سكتة دماغية أو العقم المبكر عند الرجال.', 10.00, 1, 8, 1, 'الكتروني', 'عربي', 93, 1, 'عامة الناس', 'كتاب هل تعاني من ارتفاع ضغط الدم؟ دواؤك الطبيعي من الأعشاب والغذاء', '0000-00-00', 'abd22'),
(1035, '7876', 'products/bookCovers/Beginning iOS Game Center and GameKit - 2022.png', 'ميزان الاعتدال في نقد الرجال هو كتاب في الجرح والتعديل ألفه الحافظ أبي عبد الله محمد بن أحمد بن عثمان بن قايماز شمس الدين الذهبي، وهو كتاب جامع لنقد رواة الآثار حاو لتراجم ائمة الأخبار، ألفه الذهبي بعد تأليفه \" المغني في الضعفاء \" الذي اعتمد فيه على كثير من المراجع، وقد زاد في \" الميزان \" رجالا لم يكن ذكرهم في \" المغني \"، وقد ذكر المؤلف في الكتاب الرواة: الكذابين، والمتروكين، والضعفاء، وعلى الحفاظ الذين في دينهم رقة، وعلى من يقبل في الشواهد، وعلى الصادقين أو المستورين الذين فيهم لين، والمجهولين، والثقات الذين تكلم فيهم من لا يلتفت إليه. قال الذهبي : \"قد احتوى كتابي هذا على ذكر الكذابين والوضاعين، ثم على المحدثين الصادقين أو الشيوخ المستورين الذين فيهم لين ولم يبلغوا رتبة الأثبات المتقنين، ثم على خلق كثير من المجهولين \".\n', 5.00, 1, 6, 3, 'الكتروني', 'عربي', 686, 3, 'عامة الناس', 'كتاب ميزان الاعتدال فى نقد الرجال المجلد الثالث', '0000-00-00', 'abd23'),
(1036, '20079', 'products/bookCovers/Beginning jOOQ - 2022.png', 'يقدم هذا الكتاب مبادئ الكهرباء والإلكترونيات وتقاناتها من خلال طرح الأمثلة من المسائل العملية دون الخوص في التفاصيل النظرية وذلك لترسيخ الفهم العملي لهذه المبادئ لدى الطلاب والتقنيين في مجالات الهندسة الكهربائية والإلكترونية والاتصالات', 8.00, 1, 11, 1, 'الكتروني', 'عربي', 544, 1, 'مبرمجين', 'مبادئ الكهرباء والالكترونيات', '2022-06-05', 'abd24'),
(1037, '16036', 'products/bookCovers/Beginning T-SQL - 2021.png', 'يقدم كتاب التنقيب عن البيانات Data Mining شرحاً للمفاهيم الأساسية والخوارزميات لأولئك الذين يتعلمون التنقيب عن البيانات للمرة الأولى. قمنا من خلال هذا الكتاب بسبر معمّق لأهم تقنيات التنقيب عن البيانات بدءاً بالمعالجة المسبقة للبيانات والتصنيف وتحليل الاقتران والعنقدة والكشف عن التشوهات مع تدعيم الشرح بعدة أمثلة لتوضيح المفاهيم الأساسية.\n\nتم تنظيم كل موضوع ضمن فصلين يبدأ الأول بشرح المفاهيم الأساسية التي تعطي القارئ الخلفية المعرفية الضرورية لفهم كل تقنية من تقنيات التنقيب عن البيانات يتبعه فصل يشرح المفاهيم والخوارزميات المتقدمة.', 8.50, 1, 11, 1, 'الكتروني', 'عربي', 768, 1, 'مبرمجين', 'المرجع التعليمي في التنقيب عن البيانات', '2030-06-05', 'abd25'),
(1038, '238-876-45-7', 'products/bookCovers/Big Breaches - 2021.png', 'الكَائِنَات الحَيَّة الدَقِيْقَة واختصارًا «الأَحْيَاء الدَقِيْقَة» أو الميكروبات أو نُفْطُور (بالإنجليزية: Microorganism) هي مجموعة واسعة من الأحياء التي لا تُرى بالعين المجردة إلّا أن هناك شواذ لهذه القاعدة فالبعض منها يمكن رؤيته بالعين المجردة. العلم الذي يختص بدراسة الكائنات الحية الدقيقة يسمى علم الأحياء الدقيقة. الكائنات الدقيقة تشمل البكتيريا والفطريات والطحالب والأولية ولكنها لا تشمل الفيروسات. يحتار العلماء في تصنيف الفيروسات هل هي كائن حي أم كائن غير حي؟ وهي تعدّ مسألة علمية تحتاج إلى البحث بحيث يتوصل العلماء إلى تعريف دقيق لمعنى \"كائن الحياة\". الفيروسات تتكون من نواة بها كروموسومات ولا يغطيها سيتوبلازم الذي يكوّن نحو 70% من حجم الخلية. لكن إذا دخل الفيروس خلية حيوية يستغل سيتوبلازم الخلية ويتكاثر الفيروس عن طريق سيادة كروموسوماته على كروموسومات الخلية. وبتكاثره ينتشر في الخلايا المجاورة ويجبرها على اتباع نمطه الحيوي بلا توقف. وفي هذا الكتاب سوف نتعرف علي الميكروبات والأنسان جون بوستيجيت - ❰ له مجموعة من المؤلفات أبرزها ❞ الميكروبات والإنسان ❝', 4.00, 1, 8, 3, 'الكتروني', 'عربي', 278, 3, 'عامة الناس', 'كتاب الميكروبات والإنسان', '0000-00-00', 'abd26'),
(1039, '245-457-456-2', 'products/bookCovers/Birth of the Messenger of God -1 - 2014.png', 'كتاب الروح والجسد هو كتاب من تأليف الدكتور مصطفى محمود تحدث فيه عن طرفان نقيضان يتصارعان وبينهما يعيش الإنسان في كبد تحلق به الروح في علياء المعاني السامية ويقيده الجسد الفاني بأغلال محكمة من شهوات ورغبات.. هذا الصراع الذي تكلم فيه رجال الدين والفلاسفة والمفكرون والمتصوفون..', 4.00, 1, 10, 1, 'الكتروني', 'عربي', 116, 1, 'عامة الناس', 'كتاب الروح والجسد', '0000-00-00', 'abd27'),
(1040, '406-971/04', 'products/bookCovers/Building Responsive Data Visualization for the Web - 2015.png', 'الحمد لله الذي أصعد قوالب الأصفياء بالمجاهدة، وأسعد قلوب الأولياء بالمشاهدة، وحلى ألسنة المؤمنين بالذكر، وجلى خواطر العارفين بالفكر، وحرس سواد العباد عن الفساد، وحبس مراد الزهاد على السداد، وخلص أشباح المتقين من ظلم الشهوات، وصفى أرواح الموقنين عن ظلم الشبهات، وقبل أعمال الأخيار بأداء الصلوات، وأيد خصال الأحرار بإسداء الصلات.\n\nأحمده حمد من رأى آيات قدرته وقوته، وشاهد الشواهد من فردانيته ووحدانيته، وطرق طوارق سره وبره، وقطف ثمار معرفته من شجر مجده وجوده، وأشكره شكر من اخترق واغترف من نهر فضله وإفضاله، وأومن به إيمان من آمن بكتابه وخطابه، وأنبيائه وأصفيائه، ووعده ووعيده، وثوابه وعقابه..', 3.00, 1, 8, 8, 'الكتروني', 'عربي', 164, 8, 'عامة الناس', 'كتاب كيمياء السعادة', '0000-00-00', 'abd28'),
(1041, '12131', 'products/bookCovers/By faith and food we delay the aging of the mind and body - 2015.png', 'هذا الكتاب موجه إلى كل من يعمل في مجال تحليل وتصميم نظم المعلومات وإلى كل من ينوي العمل في هذا المجال من طلاب كليات هندسة الحاسب الآلي والهندسة المعلوماتية وعلوم الحاسب على اختلاف أنواعها...\nهذا الكتاب هو الأول من نوعه في عالم الكتب العربية حيث يشرح بأسلوب ممتع وشيق مبادئ التحليل والتصميم وكل ما يتعلق بهما.\n يعرض هذا الكتاب ويشرح المواضيع التالية:\n\nتوضيح لأنواع نظم المعلومات\nاستهلال المشاريع وإدارتها والجداول الزمنية لها o جمع المعلومات بالطرق المباشرة والطرق غير المباشرة\nطرائق تطوير البرمجيات مثل SDLC والنمذجة الأولية والتطوير السريع للتطبيقات والبرمجة الحدية\nمخططات تدفق البيانات وقواميس البيانات وشرح مواصفات العمليات والقرارات الهيكلية\nتصميم طرق إدخال البيانات وطرق إخراج المعلومات\nتصميم قواعد البيانات وواجهات المستخدمين', 9.00, 1, 11, 1, 'الكتروني', 'عربي', 1016, 1, 'مبرمجين', 'تحليل النظم', '2022-06-05', 'abd29'),
(1042, 'ISBN 9780385504201', 'products/bookCovers/C++ - 1996.png', 'The novel revolves around researcher Robert Langdon\'s investigation of a mysterious historical conspiracy involving the Catholic Church and religious symbols hidden in paintings. The book includes a mixture of fiction and reality and raises some difficult questions related to religion and history. It is one of the best-selling books in the world, and it gained wide fame after the release of the movie based on it in 2006.', 9.00, 1, 2, 1, 'ورقي', 'انكليزي', 481, 1, 'عامة الناس', 'The Da Vinci Code', '0000-00-00', 'abd30'),
(1043, 'ISBN 9781577314806', 'products/bookCovers/Chief Sustainability Officers At Work - 2022.png', 'The book talks about current awareness, focusing on the present moment, getting rid of anxiety and overthinking, while clarifying some simple and useful spiritual concepts. It is a very inspiring and widely popular self-help book.', 15.00, 1, 3, 1, 'الكتروني', 'انكليزي', 224, 1, 'عامة الناس', 'The Power of Now: A Guide to Spiritual Enlightenment', '0000-00-00', 'abd31'),
(1044, '978-9953-85-379-6', 'products/bookCovers/Cisco network - 2021.png', 'Philosophy of the family system in Islam', 10.00, 1, 3, 1, 'الكتروني', 'عربي', 240, 1, 'عامة الناس', 'Philosophy of the family system in Islam', '0000-00-00', 'abd32'),
(1045, 'ISBN 9789953695142', 'products/bookCovers/Citizenship and homeland - in the modern Muslim state - 2014.png', 'The book presents multiple strategies for managing portfolios and investing in stocks and options, including techniques for technical and fundamental analysis and risk management. It is a useful book for investors and traders who want to improve their skills in investing in the financial markets.', 16.00, 1, 1, 1, 'الكتروني', 'عربي', 352, 1, 'اقتصاديين', 'Basic options portfolio management strategies and techniques for investing in stocks and options', '0000-00-00', 'abd33'),
(1046, '9953851938', 'products/bookCovers/Cloud Defense Strategies with Azure Sentinel - 2021.png', 'An interesting journey that takes you through time, from the beginning of creation to the resurrection of our beloved Prophet, passing through a blessed group of prophets, friends, martyrs and righteous people. A journey whose guide was the verses of the Holy Book. To the causes of success in this world and the Hereafter, and alert you to the pitfalls of doom in order to avoid them, and make you firm on the path of your religion, jihad and patience, and comfort you along the way when you realize that you belong to a long caravan of believers who are steadfast in the truth and working for it. But the love of God Almighty and the sacrifice for the sake of His religion made them liberate themselves from the earthly materialistic pulls to the lights of the upper heavens. So the lights of their sincerity and jihad became apparent, and their light remained - to this day - bright and radiant. So come to the verses and stories of the Great Qur’an. .. And make it a glowing light of truth.', 36.00, 1, 3, 1, 'الكتروني', 'عربي', 560, 1, 'عامة الناس', 'Stories of the Noble Qur’an in colorful graphics', '0000-00-00', 'abd34'),
(1047, '9.78E+12', 'products/bookCovers/Color Theory For Dummies - 2022.png', 'A real-world introduction to advertising design and art direction, updated and revised for today\'s industry.\nThe newly revised Fourth Edition of Advertising by Design: Generating and Designing Creative Ideas Across Media delivers an  invigorating and cutting-edge take on concept generation, art direction, design, and media channels for advertising. The book offers  principles, theories, step-by-step instructions, and advice from esteemed experts to guide you through the fundamentals of advertising  design and the creative process.', 51.99, 1, 10, 4, 'الكتروني', 'انكليزي', 288, 1, 'عامة الناس', 'Advertising by Design: Generating and Designing Creative Ideas Across Media, 4th Edition', '0000-00-00', 'abd35'),
(1048, '9.79E+12', 'products/bookCovers/complete in history - 2011.png', 'In this book, we traced the similar verses on the basis of each surah of the Holy Qur’an, starting with Al-Fatihah, the Mother of the Book, and ending with Surat Al-Nas. Each verse with what is stated in it and what differs from it in the verses similar to it, invoking the principles, rulings and interpretation, showing the secrets of similarity in the verses of the Holy Qur’an. The book is located in 3 volumes', 60.00, 1, 3, 3, 'ورقي', 'عربي', 1984, 1, 'عامة الناس', 'And the last similarities - 1/3 - the faces of miraculousness in the similar', '0000-00-00', 'abd36'),
(1049, '9953-85-321-5', 'products/bookCovers/Comprehensive database management - 2006.png', 'The learned judge, Nasir al-Din al-Baydawi, began writing his book, The Interpretation of the Great Qur’an, in the seventh century AH, and called it: “Anwar al-Tanzel wa Asrar al-Ta’wil.” This interpretation found wide acceptance among contemporary scholars and those who came after them. In other sciences, and he wrote many books in those sciences, so that I consider this interpretation the most famous of his books and compilations in the eyes of many scholars, and he won the rank of precedence and assumed the advanced position in his time. It is a useful book in its subject matter, useful to its readers, brief in its style, accurate in its expressions, it contains many meanings, useful sciences, and legal facts.', 28.00, 1, 3, 1, 'ورقي', 'عربي', 1136, 1, 'عامة الناس', 'Interpretation of Al-Baydawi in the margins of the Holy Quran - Shamwa', '0000-00-00', 'abd37'),
(1050, '9953-85-365-7', 'products/bookCovers/Conversation with my faithful friend - 2015.png', 'He knew that some would find this book shocking, and some of them would find it necessary, and some of them would say that this is not the time for confusion and distraction of thought and effort. And I will not tell you a secret, I hesitated at times when I tried to balance between the desired benefit of this book and its expected harm, and some sincere friends advised me to slow down so as not to stir up confusion in an era that was dominated by sedition and afflicted our nation in which humiliation occurred, except that I slowed down a lot, then I sought God’s help and sought help from His power and strength and He encouraged me This is also supported by some sincere friends who advised me of the importance of such a book and that it is an attempt to treat and combat the humiliation and temptation that befell us from within and without. If you do good, then it is from Him, and praise be to God alone, and if you do wrong, then it is from Me, and forgiveness is from Him alone, and He is sufficient for us, and to Him is the destiny.', 4.00, 1, 6, 1, 'الكتروني', 'عربي', 128, 1, 'عامة الناس', 'Conversation with my faithful friend', '0000-00-00', 'abd38'),
(1051, '978995385-3796', 'products/bookCovers/Creating Good Data - 2021.png', 'The book Philosophy of the Family System in Islam is considered one of the important books for students of women and society issues. The book Philosophy of the Family System in Islam falls within the scope of specializing in women\'s sciences and social issues, and is closely related to the disciplines of social thought and culture.', 10.00, 1, 3, 1, 'ورقي', 'عربي', 240, 1, 'عامة الناس', 'Philosophy of the family system in Islam', '0000-00-00', 'abd39'),
(1052, '9953-85-285-5', 'products/bookCovers/Cyber ​​security - 2012.png', 'The book “The Confused Response to Durr Al-Mukhtar”, known as “Hashiyat Ibn Abidin” - and it is located in 12 volumes - and this book is considered one of the best books of Hanafi jurisprudence. Artistic binding - Shamwa paper - new edition.', 180.00, 1, 6, 10, 'الكتروني', 'عربي', 8224, 1, 'عامة الناس', 'Footnote of Ibn Abidin 1/12 - Smell', '0000-00-00', 'abd40'),
(1053, '9953-85-364-9', 'products/bookCovers/Data mining - 2003.png', 'You know how to buy positions for your daily affairs by having close connections and having someone you know and who knows you well. Opportunities do not come from boring waiting, but rather from building a wide network with different people, whatever their levels, and in order to weave this \"fruitful\" network, we must know: how to communicate? How do we attract the other? How do we build relationships? How do we deal with others? When you realize the different paths, you become one of those who have the ability to be flexible and well-skilled in dealing and acquiring opportunities. This is what our book aims to do by identifying some of these paths to make you a person with the best relationships...', 5.00, 1, 6, 1, 'الكتروني', 'عربي', 224, 1, 'عامة الناس', 'When missed opportunities remain....... the best relationships', '0000-00-00', 'abd41'),
(1054, '9953-446-30X', 'products/bookCovers/Data Science Solutions with Python - 2021.png', 'The book, Jewels of Literature, by the author Ahmed Al-Hashemi, in which he collected the sweetest things that were used by the balls of pens, the most precious things in which contracts of eloquence and harmony were organized, and the most delicious things that describe Jewels of Literature. This is a book, as is known from its name: Jawahir al-Adab, on the literature and creation of the Arabic language - the writer entrusted it with whatever fell on his choice. Brilliant, rare verses, stray proverbs, incoming news, useful commandments, comprehensive sermons, extravagant debates, extreme shrines, lofty descriptions and social discourses, so that those who possess it can benefit from it, and dispense with others who desire it.', 12.00, 1, 6, 1, 'الكتروني', 'عربي', 928, 1, 'عامة الناس', 'Jewels of literature in the literature and creation of the Arabic language', '0000-00-00', 'abd42'),
(1055, '	01012004sq', 'products/bookCovers/Data Science with SQL Server Quick Start Guide Integrate SQL Server with Data Sc', 'Remembrance - white paper', 7.00, 1, 3, 1, 'الكتروني', 'عربي', 384, 1, 'عامة الناس', 'Remembrance - white paper', '0000-00-00', 'abd43'),
(1056, '01012004cy', 'products/bookCovers/Data Teams - 2019.png', 'Touch-up 6/1 (two colors)', 65.00, 1, 3, 6, 'ورقي', 'عربي', 3560, 1, 'عامة الناس', 'Touch-up 6/1 (two colors)', '0000-00-00', 'abd44'),
(1057, '9.78E+12', 'products/bookCovers/Decoupled Django - 2021.png', 'Read over 20 exclusive, in-depth interviews with chief sustainability officers (CSOs) of Fortune 500 companies such as Amazon, Coca-Cola, and Procter & Gamble and globally recognized brands such as IKEA and Netflix. These CSOs reveal how they deliver positive environmental and social impact through their companies’ core products and services and generate revenue growth while tackling unique leadership, change management, regulatory and stakeholder challenges.', 28.00, 1, 3, 1, 'ورقي', 'انكليزي', 336, 1, 'عامة الناس', 'Chief Sustainability Officers At Work', '0000-00-00', 'abd45'),
(1058, '9.78E+12', 'products/bookCovers/Docs for Developers - 2021.png', 'Learn to integrate programming with good documentation. This book teaches you the craft of documentation for each step in the software development lifecycle, from understanding your users’ needs to publishing, measuring, and maintaining useful developer documentation.', 13.00, 1, 5, 1, 'الكتروني', 'انكليزي', 225, 1, 'مبرمجين', 'Docs for Developers', '0000-00-00', 'abd46'),
(1059, '9.78E+12', 'products/bookCovers/Econometrics and Data Science - 2021.png', 'Building Responsive Data Visualization for the Web is a handbook for any front-end development team needing a framework for integrating responsive web design into the current workflow. Written by a leading industry expert and design lead at Starbase Go, this book provides a wealth of information and practical guidance from the perspective of a real-world designer. You\'ll walk through the process of building data visualizations responsively as you learn best practices that build upon responsive web design principles, and get the hands-on practice you need with exercises, examples, and source code provided in every chapter. These strategies are designed to be implemented by teams large and small, with varying skill sets, so you can apply these concepts and skills to your project right away.', 32.00, 1, 5, 1, 'الكتروني', 'انكليزي', 448, 1, 'مبرمجين', 'Building Responsive Data Visualization for the Web', '0000-00-00', 'abd47'),
(1060, '13063', 'products/bookCovers/Electronic scorn - 2016.png', 'ناك المئات بل الآلاف من المسائل المالية والإدارية التي تواجه أصحاب ورجال الأعمال. ورغم تنوع هذه المسائل فإنه يمكن حصرها معاً في نماذج تحليلية متشابهة. وهنا يأتي دور Excel في حل وإنجاز هذه المهمة.\nإذ ستجد في هذا الكتاب:\nأقوى الدوال المالية في Excel\nالنماذج\nالتعظيم باستخدام Solver\nجداول PivotTables\nاستخدام الدوال الإحصائية\nدوال وصيغ القوائم', 6.00, 1, 11, 1, 'الكتروني', 'عربي', 544, 1, 'اقتصاديين', ' تحليل بيانات الأعمال المالية - ج 1', '2004-07-05', 'abd48'),
(1061, '9953-853663-0', 'products/bookCovers/Engineering design using SolidWorks - 2023.png', 'aljazayir in World War I to the November Revolution of 1962', 12.00, 1, 2, 1, 'الكتروني', 'عربي', 760, 1, 'عامة الناس', 'The struggle of the jazayiriun people against the French occupation', '0000-00-00', 'abd49'),
(1062, '9953-446-41-5', 'products/bookCovers/Expert Oracle Database Architecture - 2022.png', 'In his book, the writer deals with an aspect of the issue of the war on Iraq, and singles out the issue of immorality that dominates our country, and how the West wants to distract the minds of future youth with these issues, and make it the most important issue in their lives, and eliminate from their minds the issue of defending their country, and what is happening inside the detention centers, And in the colonized country. And the symptoms that assail you. In the book are documents and facts that took place and are still taking place as a result of the war on Iraq and other colonial countries', 5.00, 1, 7, 1, 'الكتروني', 'عربي', 216, 1, 'عامة الناس', 'The globalization of immorality', '0000-00-00', 'abd50'),
(1063, '9953-85-361-4', 'products/bookCovers/Food Regulation Law, Science, Policy, and Practice, 2nd Edition - 2016.png', 'This book is rational steps to bring together all members of the family, starting with the spouses and how to communicate and understanding between them, passing through the children and their upbringing, and even caring for the elderly when the parents grow up, so we show them righteousness and return to them some of what they have given us of education and briefing.', 14.00, 1, 3, 1, 'الكتروني', 'عربي', 416, 2, 'عامة الناس', 'Inspired by the Book and the Sunnah, skills in psychological education', '0000-00-00', 'abd51'),
(1064, ' ISBN 9780099590088', 'products/bookCovers/Footnote of Ibn Abidin 112 - Smell - 2023.png', 'The book talks about the development of humanity from the Stone Age to the present time, and provides a unique vision of human history and how our past, present, and future can be understood. The book is considered one of the best-selling books in the world in the fields of history, social sciences and philosophy.', 18.00, 1, 2, 1, 'ورقي', 'انكليزي', 512, 1, 'عامة الناس', 'Sapiens: A Brief History of Humankind', '0000-00-00', 'abd52'),
(1065, '9953-85-360-6', 'products/bookCovers/Fundamentals of scientific research writing and manuscript verification - 2019.p', 'The author says: In the book, I referred to the features of justice and its most prominent features, such as moderation, benevolence, removal of embarrassment, provisions of ease, wisdom, integrity, and clarity, and I explained this in an application guide to the features of justice', 7.00, 1, 7, 1, 'الكتروني', 'عربي', 416, 1, 'عامة الناس', 'Justice from an Islamic perspective', '0000-00-00', 'abd53'),
(1066, '9953-85-358-4', 'products/bookCovers/GIS بالتطبيقات العملية - 2015.png', 'When misguided sects and deviant sects spread in the countries of Islam, they expose its people to danger, distort the faith and spread disunity, threaten security and stability, make people question their faith, and wreak havoc and destruction on the earth, and that is the case of the rogue Kharijites who revolted against the Commander of the Faithful, Ali Ibn Abi Talib, and declared him unbelievers, and a group of them killed him. All of a sudden, claiming that they are selling themselves with this act in order to please God, and they have no document or proof for that, it is nothing but following whims, obedience to devils, and corruption of faith.', 3.50, 1, 7, 1, 'الكتروني', 'عربي', 128, 1, 'عامة الناس', 'The Kharijites - Their Upbringing and Characteristics - Their Beliefs and Ideas', '0000-00-00', 'abd54'),
(1067, 'ISBN 9789953458861', 'products/bookCovers/Global Climate Change and Human Health From Science to Practice - 2015.png', 'The book talks about how to develop a strong will and self-motivation to reach the desired goals in life. The book includes practical tools for fostering commitment and achieving success. This book is an invaluable reference for people who want to improve their ability to commit and have a strong will.', 8.00, 1, 3, 1, 'ورقي', 'عربي', 172, 1, 'عامة الناس', 'Strong Will: How to Stay Committed to Your Goals and Succeed in Life', '0000-00-00', 'abd55'),
(1068, '9953-85-359-2', 'products/bookCovers/graphic design - 2000.png', 'This book is an important episode of the \"political intellectual project\". It was divided into five topics:\n\nThe first topic: citizenship in language, terminology, and the historical development of its concept.\n\nThe second topic: citizenship and concepts related to it.\n\nThe third topic: Quranic and prophetic evidence related to the homeland.\n\nThe fourth topic: the rights and duties of citizens.\n\nThe fifth topic: dealing with sectarian conflicts and the idea of ​​Arab citizenship.', 7.00, 1, 7, 1, 'الكتروني', 'عربي', 256, 1, 'عامة الناس', 'Citizenship and homeland - in the modern Muslim state', '0000-00-00', 'abd56'),
(1069, '9953-85-343-6', 'products/bookCovers/graphic design - 2016.png', 'Educational stories series\nDobby\'s living conscience did not allow him to lie to his mother in order to cover up his mistake and shortcomings, so his mother forgave him and became proud of him.', 3.00, 1, 6, 1, 'الكتروني', 'عربي', 12, 1, 'أطفال', 'Honesty is safe', '0000-00-00', 'abd57'),
(1070, '9953-85-347-9', 'products/bookCovers/Graphic Design - Aesthetic Foundations - 2014.png', 'The rabbits of the weak were able, with their intelligence and good management, to overcome the evil fox, so they made him fall into the evil of his deeds, and after that they lived in safety and happiness.', 3.00, 1, 6, 1, 'الكتروني', 'عربي', 12, 1, 'أطفال', 'Victory in cooperation', '0000-00-00', 'abd58'),
(1071, '9953-85-351-7', 'products/bookCovers/History of Jerusalem - 1994.png', 'Lily is a beautiful little cat. In this short story, you will learn that paying attention to cleanliness and arranging personal needs is essential to being successful in school and in life.', 3.00, 1, 6, 1, 'الكتروني', 'عربي', 12, 1, 'أطفال', 'the secret of success', '0000-00-00', 'abd59'),
(1072, '9953-85-346-0', 'products/bookCovers/Honesty is safe - 2014.png', 'Zuzu and Fufu are two friendly squirrels who are out for a nice walk in a green meadow. We will learn from them that cleaning hands before eating is an important condition of health and safety.', 3.00, 1, 6, 1, 'الكتروني', 'عربي', 12, 1, 'أطفال', 'Walk in the meadow', '0000-00-00', 'abd60'),
(1073, '12167', 'products/bookCovers/How Baking Works Exploring the Fundamentals of Baking Science - 2010.png', 'This book was written to help you learn Java quickly and well.\nThe book does not assume any prior programming background. FTA If you are an experienced programmer but new to Java, then this book will provide you with the first-hand information to get you started with programming in Java.', 4.00, 1, 11, 1, 'الكتروني', 'عربي', 200, 2, 'عامة الناس', 'Java for beginners', '2015-07-05', 'abd61'),
(1074, '978-1-4842-6309-9', 'products/bookCovers/I own my body - 2014.png', 'Master the art of game creation with MonoGame—the cross-platform framework of choice for independent developers. Learn the various aspects needed to create your next game by covering MonoGame framework specifics, engine creation, graphics, patterns, and more.', 44.00, 1, 5, 2, 'الكتروني', 'انكليزي', 323, 3, 'مبرمجين', 'MonoGame Mastery', '0000-00-00', 'abd62'),
(1075, '25/03/14', 'products/bookCovers/Inspired by the Book and the Sunnah, skills in psychological education - 2015.pn', 'It is one of the most important and well-known Shafi’i books, and it is the most dealt with by students of jurisprudence of all their different schools of thought. An unofficial book of worship and transactions, good phrase, smooth style, and good arrangement. [1]', 50.00, 1, 2, 4, 'الكتروني', 'عربي', 2676, 4, 'عامة الناس', 'Mughni al-Muhtaj 4/1 - Shmoua', '0000-00-00', 'abd63'),
(1076, 'ISBN 9789953105087', 'products/bookCovers/Integer Programming - 2021.png', 'The book talks about the importance of developing the body and how to think about the body better, take care of it and nurture it. It provides practical advice to maintain mental and physical health and lead an enjoyable and healthy life. This book is inspiring and useful for people who seek to live healthy and happy lives.', 8.00, 1, 8, 1, 'الكتروني', 'عربي', 176, 1, 'عامة الناس', 'I own my body', '0000-00-00', 'abd64'),
(1077, 'ISBN 9780062457714', 'products/bookCovers/Integrating D3.js with React - 2021.png', 'The writer uses clear and sarcastic language to present the concepts of self-help in a different and unconventional way. The book focuses on the importance of choosing the right priorities, identifying the things that deserve attention and exaggerating them, and avoiding feelings of stress and excessive expectations. This book is considered one of the best self-help books of the last decade, and it is widely popular all over the world.', 15.00, 1, 1, 1, 'الكتروني', 'انكليزي', 224, 1, 'عامة الناس', 'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life', '0000-00-00', 'abd65'),
(1078, '978-9953-85-379-6', 'products/bookCovers/Interpretation of Al-Baydawi in the margins of the Holy Quran - Shamwa - 2021.pn', 'No description', 10.00, 1, 3, 1, 'الكتروني', 'عربي', 240, 1, 'عامة الناس', 'Philosophy of the family system in Islam', '0000-00-00', 'abd66'),
(1079, '9953-85-321-5', 'products/bookCovers/Interprocess Communication with macOS - 2021.png', 'The learned judge, Nasir al-Din al-Baydawi, began writing his book, The Interpretation of the Great Qur’an, in the seventh century AH, and called it: “Anwar al-Tanzel wa Asrar al-Ta’wil.” This interpretation found wide acceptance among contemporary scholars and those who came after them. In other sciences, and he wrote many books in those sciences, so that I consider this interpretation the most famous of his books and compilations in the eyes of many scholars, and he won the rank of precedence and assumed the advanced position in his time. It is a useful book in its subject matter, useful to its readers, brief in its style, accurate in its expressions, it contains many meanings, useful sciences, and legal facts.', 28.00, 1, 2, 1, 'الكتروني', 'عربي', 1136, 1, 'عامة الناس', 'Interpretation of Al-Baydawi in the margins of the Holy Quran - Shamwa', '0000-00-00', 'abd67'),
(1080, '9953-446-30X', 'products/bookCovers/Introduction to Community and Public Health, 2nd Edition - 2021.png', 'The book, Jewels of Literature, by the author Ahmed Al-Hashemi, in which he collected the sweetest things that were used by the balls of pens, the most precious things in which contracts of eloquence and harmony were organized, and the most delicious things that describe Jewels of Literature. This is a book, as is known from its name: Jawahir al-Adab, on the literature and creation of the Arabic language - the writer entrusted it with whatever fell on his choice. Brilliant, rare verses, stray proverbs, incoming news, useful commandments, comprehensive sermons, extravagant debates, extreme shrines, lofty descriptions and social discourses, so that those who possess it can benefit from it, and dispense with others who desire it.', 12.00, 1, 3, 1, 'الكتروني', 'عربي', 928, 1, 'عامة الناس', 'Jewels of literature in the literature and creation of the Arabic language', '0000-00-00', 'abd68'),
(1081, '9953-85-322-3', 'products/bookCovers/Introduction to Management in the Hospitality Industry, - 2022.png', 'The power of faith can release a huge amount of energy from our minds to influence our bodies and even other human beings.\nThere are many realistic examples of this, and it is not hidden from us that this power of faith may change the physiology of the body....\nWith the strength of faith in God Almighty and harmony with the universe, with a variety of healthy food, a person can change his view of his body, and provide him with spiritual and nutritional energy, thus delaying the advance of aging of the mind and body.', 12.00, 1, 8, 1, 'الكتروني', 'عربي', 320, 1, 'عامة الناس', 'By faith and food we delay the aging of the mind and body', '0000-00-00', 'abd69');
INSERT INTO `bookshop_product` (`id`, `ISBN`, `image`, `description`, `price`, `available`, `category_id`, `Edition`, `Format`, `Language`, `Page_Count`, `Series`, `Target_audience`, `Title`, `published_date`, `slug`) VALUES
(1082, '9953851938', 'products/bookCovers/Introduction to Video Game Engine Development - 2021.png', 'An interesting journey that takes you through time, from the beginning of creation to the resurrection of our beloved Prophet, passing through a blessed group of prophets, the truthful ones, the martyrs and the righteous. A journey whose guide was the verses of the Holy Book. To the causes of success in this world and the Hereafter, and alert you to the pitfalls of doom in order to avoid them, and make you firm on the path of your religion, jihad and patience, and comfort you along the way when you realize that you belong to a long caravan of believers who are steadfast in the truth and working for it. But the love of God Almighty and the sacrifice for the sake of His religion made them liberate themselves from the earthly materialistic pulls to the lights of the upper heavens. So the lights of their sincerity and jihad became apparent, and their light remained - to this day - bright and radiant. So come to the verses and stories of the Great Qur’an. .. And make it a glowing light of truth.', 36.00, 1, 6, 1, 'الكتروني', 'عربي', 560, 1, 'عامة الناس', 'Stories of the Noble Qur’an in colorful graphics', '0000-00-00', 'abd70'),
(1083, '9.78E+12', 'products/bookCovers/Introductory Programming with Simple Games Using Java and the Freely Available N', 'Use this fast and complete guide to optimize the performance of MongoDB databases and the applications that depend on them. You will be able to turbo-charge the performance of your MongoDB applications to provide a better experience for your users, reduce your running costs, and avoid application growing pains. MongoDB is the world’s most popular document database and the foundation for thousands of mission-critical applications. This book helps you get the best possible performance from MongoDB.', 45.00, 1, 5, 1, 'ورقي', 'انكليزي', 349, 1, 'مبرمجين', 'MongoDB Performance Tuning', '0000-00-00', 'abd71'),
(1084, '9.78E+12', 'products/bookCovers/Israa and meraaj - 2014.png', 'In Software Architect, veteran enterprise and solution architect Michael Bell delivers a hands-on playbook of best practices for aspiring and practicing software architects, seeking to improve their software design, integration, communication, presentation, and knowledge acquisition skills. He explores the career enablement, career planning, self-training, and self-improvement topics you’ll need to increase your ability to offer powerful and effective business and technological solutions.', 24.00, 1, 5, 1, 'الكتروني', 'انكليزي', 432, 1, 'مبرمجين', 'Software Architect', '0000-00-00', 'abd72'),
(1085, '9.79E+12', 'products/bookCovers/Java for beginners - 2023.png', 'A book on scientific research methods and writing theses and research. It is a summary of principles and rules that are easy to understand. I made it clear in terms and in good tabulation and sections.', 10.00, 1, 3, 3, 'ورقي', 'عربي', 312, 1, 'عامة الناس', 'Fundamentals of scientific research writing and manuscript verification', '0000-00-00', 'abd73'),
(1086, '9.78E+12', 'products/bookCovers/javaScript - 1997.png', 'Color theory is the art and science of using color. Color Theory For Dummies explains, in simple terms, how colors relate to one another and how they can be combined to work together in an aesthetically pleasing way. An understanding of color theory can help you create art, decorate your home, design a beautiful wedding, and impress your friends at parties. With this book, you’ll learn how humans perceive color, how colors harmonize or clash with each other, and how you can apply these principles in your life and work to add a little, well, color to things.', 22.00, 1, 10, 1, 'ورقي', 'انكليزي', 288, 1, 'عامة الناس', 'Color Theory For Dummies', '0000-00-00', 'abd74'),
(1087, '9.78E+12', 'products/bookCovers/Jewels of literature in the literature and creation of the Arabic language - 201', 'Understand how Zero Trust security can and should integrate into your organization. This book covers the complexity of enterprise environments and provides the realistic guidance and requirements your security team needs to successfully plan and execute a journey to Zero Trust while getting more value from your existing enterprise security architecture. After reading this book, you will be ready to design a credible and defensible Zero Trust security architecture for your organization and implement a step-wise journey that delivers significantly improved security and streamlined operations.', 13.00, 1, 5, 1, 'الكتروني', 'انكليزي', 300, 1, 'مبرمجين', 'Zero Trust Security', '0000-00-00', 'abd75'),
(1088, '12119', 'products/bookCovers/jQuery Recipes - 2022.png', 'شرح هذا الكتاب أكثر أنواع الهجوم شهرة على تطبيقات الويب المكتوبة بلغة PHP كما يشرح كيفية كتابة شيفرة يمكنها التصدي لهذه الهجومات.\nإذ ستجد فيه المواضيع الأساسية التالية:\n\nالحماية من نقاط ضعف البرمجة العامة (XSS)\nالحماية من هجوم حقن\nالحماية من محاولات سرقة جلسة العمل SQL \nالحماية من هجوم حقن الأوامر\nالحماية من سرقة ملفات تعريف الارتباط\nالمصادقة والتخويل ...\nوغيرها الكثير ...', 2.00, 1, 11, 1, 'الكتروني', 'عربي', 136, 1, 'مبرمجين', 'أسس الأمان في PHP', '2002-07-05', 'abd76'),
(1089, '12146', 'products/bookCovers/Justice from an Islamic perspective - 2015.png', 'في الحقيقة إن مدير قواعد البيانات المسؤول هو العقل الذي يقود ويوجه كافة النشاطات المتعلقة بقواعد المعطيات في المنظمة بدءاً من تشكيل فريق مدراء قواعد المعطيات مروراً بتهيئة البيئة المناسبة للعمل ومعالجة الإنتاج مع مراعاة كافة الإجراءات التي تهدف لتحسين الأداء وضمان الإتاحية والمصداقية. هذا ويعتبر المدير مسؤولاً عن إدارة تراخيص الأمن وإدارة تغييرات قواعد المعطيات وضمان استرجاعها بالشكل الأمثل عند وقوع الفشل أو الكارثة.\n\nيعالج هذا الكتاب كافة الفعاليات والإجراءات السابقة بتعمق كما يتطرق لمجموعة من التقنيات والقضايا والأدوات المتعلقة بإدارة قواعد البيانات  أو المعطيات وذلك بشكل يجعل من هذا الكتاب مرجعاً يتيح لأي راغب أن يتعمق في أي نظام إدارة قواعد معطيات مستقل على أرضية صلبة وراسخة.\n\nفي الحقيقة سيكون هذا الكتاب ملازماً لك في كل مراحل تقدمك في مجال إدارة قواعد المعطيات وستعود إليه باستمرار لأنه سيقدم لك المزيد والمزيد كلما تعمقت أكثر في هذا المجال.', 8.50, 1, 11, 1, 'الكتروني', 'عربي', 808, 1, 'مبرمجين', 'الإدارة الكاملة لقواعد المعطيات', '2003-07-05', 'abd77'),
(1090, '16023', 'products/bookCovers/Lead Fearlessly, Love Hard Finding Your Purpose and Putting It to Work - 2017.pn', 'يشكل هذا الكتاب بجزأيه مرجعاً أكاديمياً وعملياً في علم التعمية (التشفير) وتطبيقاته المختلفة لضمان أمن الشبكات الحاسوبية. حيث يقدم الجزء الأول نظرة شاملة على علم التعمية وأسس ومبادئ هذا العلم وذلك من وجهتي النظر العلمية والبحتة والتطبيقية. بينما يطرح الجزء الثاني ويناقش التطبيقات العملية المستخدمة لتأمين وضمان أمن الشبكات الحاسوبية.\nيصلح هذا الكتاب كمرجع أكاديمي كما يلبي حاجة المبرمجين المهتمين في هذا المجال. يقدم هذا الكتاب المواضيع التالية: \nمفاهيم أساسية في علم التعمية (التشفير)\nالخوارزميات التقليدية المستخدمة في عمليات التعمية \nأهم خوارزميات التعمية التماثلية\nأهم خورازميات التعمية باستخدام المفتاح العمومي\nالخلفية الرياضية اللازمة للخوض في علم التعمية\nتطبيقات التحقق من الهوية\nتطبيقات حماية البريد الإلكترونية\nمدخل إلى أمن الشبكات بما في ذلك الإنترنت\nحماية النظام من الدخلاء والبرامج الضارة مناقشة واسعة لجدران النار وطريقة عملها', 3.50, 1, 11, 1, 'الكتروني', 'عربي', 336, 1, 'مبرمجين', 'التعمية وأمن الشبكات', '2030-06-05', 'abd78'),
(1091, '14040', 'products/bookCovers/Leading in a Culture of Change - 2019.png', 'يعرض هذا الكتاب نظرة على الأبحاث الحديثة في مجال الشبكات العصبونية الصنعية. وهو يتضمن التطورات النظرية لعلم الشبكات العصبونية الصنعية وتطبيقاتها باستخدام الخصائص الذكية من أجل: التكيّفية والتعلم الذاتي والتصنيف والتنبؤ وحتى من أجل الخلق والابداع الفني.\n\nإن هذا الكتاب هو خلاصة التطورات الأخيرة في مجال الشبكات العصبونية الصنعية من منظور عملي. فهو يعرض دراسات للتطبيقات في تنبؤ السلاسل الزمنية واستخلاص المعرفة والهندسة المدنية والاقتصاد والإبداع الفني (الموسيقى) وتحقيق الحد الأدنى للكلفة وكشف التدخل وتطبيقات أخرى عديدة مما يجعله مصدراً مهماً جداً للأفكار والمعارف للباحث والمطور.\n\n', 5.50, 1, 11, 1, 'الكتروني', 'عربي', 432, 1, 'مبرمجين', 'الشبكات العصبونية بالتطبيقات العملية', '2006-07-05', 'abd79'),
(1092, '30061', 'products/bookCovers/logical circuits - 2001.png', 'جي اي اس بالتطبيقات العملية\n\n  هذا الكتاب يشرح نظام (جي آي إس) وكيفية استخدامه مع مجموعة متنوعة من الأمثلة والخرائط الملونة. كما يشرح الكتاب:\n\n المعطيات المكانية. إذ يصف المميزات الأساسية للمعطيات المكانية ومصادرها مع الأمثلة عن اسقاطات الخرائط المختلفة مع الطرق المختلفة للمرجعيات المكانية\n نمذجة المعطيات المكانية\n إدارة قواعد البيانات وإدخال المعطيات وتحريرها بالإضافة إلى تحليلها\n الخرج: من الخرائط الجديدة إلى القرارات المعززة\n تصميم وإدارة مشروع (جي أي إس). ويبين كيف يتم تصميم وإدارة مشروع (جي أي إٍس) مع توصيف النمذجة الخرائطية في التصميم وكذلك استعراض الأساليب المتوفرة لإدارة مشاريع (جي آي إس) مع ذكر المشاكل المتوقعة عند تنفيذه', 7.00, 1, 11, 1, 'الكتروني', 'عربي', 456, 1, 'مبرمجين', 'GIS بالتطبيقات العملية', '2007-07-05', 'abd80'),
(1093, '20031', 'products/bookCovers/Machine Learning for Oracle Database Professionals - 2021.png', 'إن الدارات التي يحتويها هذا الكتاب قابلة للتحقيق والإنجاز وإذا تأمل القارئ هذه الدارات سوف يجد في معظمها حلولاً لمشاكل قد يصادفها المهتم بالإلكترونيات في حياته العملية وقد تشكل أجزاء من دارات أساسية يصممها.', 4.75, 1, 11, 1, 'الكتروني', 'عربي', 480, 1, 'مبرمجين', 'مجموعة 300 دارة في الإلكترونيات العملية', '2001-07-05', 'abd81'),
(1094, '16019', 'products/bookCovers/Mastering Blockchain Distributed ledger technology, decentralization, and smart ', '\" توصيلات وتمديدات الشبكات لان \"\n\nأثبت الواقع أن حوالي 70% من المشاكل التي قد تعاني منها أي شبكة محلية ناتجة عن الكابلات المستخدمة في وصل مكونات الشبكة الأخرى.\n\nوفي هذا الكتاب ستتعرف على القضايا التالية في موضوع الكابلات وتمديداتها: أشهر المعايير العالمية التي يمكنك اتباعها وتنفيذها في اختيار ومد وتوصيل الكابلات. مثل المعيار ANSI/TIA/EIA-568-A والمعيار ISO/IEC 11801 هذا بالإضافة إلى أهم المعايير والنشرات التقنية التي تتعلق بمد وتوصيل الكابلات مثل النشرات TSB-67 و TSB-95 و TSB-75 وكذلك المعايير ANSI/TIA/EIA-569 و ANSI/TIA/EIA-607\n\nمكونات أنظمة الكابلات المعيارية ومواصفات كل منها وكيفية ربط كل منها مع بقية مكونات النظام\nأهم الأدوات المستخدمة في تمديد وتوصيل واختبار الكابلات وكيفية استخدام كل منها وكيفية الحصول عليها\nأهم أنواع الكابلات النحاسية ومواصفاتها واستخداماتها والأدوات المكونات المطلوبة أثناء تمديدها وكيفية تمديدها وتوصيلها بمختلف مكونات نظام الكابلات\nأهم أنواع كابلات الألياف البصرية ومواصفاتها واستخداماتها والأدوات والمكونات المطلوبة أثناء تمديدها وكيفية تمديدها وتوصيلها بمختلف مكونات نظام الكابلات\nأهم تقنيات الربط اللاسلكي ومواصفات وكيفية تركيب كل منها\nكيفية تركيب الموصلات على كل نوع من أنواع الكابلات النحاسية وذات الألياف البصرية\nكيفية فحص وإصلاح نظام الكابلات والأدوات المستخدمة في ذلك\n', 5.75, 1, 11, 1, 'الكتروني', 'عربي', 640, 1, 'مبرمجين', 'توصيلات وتمديدات الشبكات LAN', '2026-06-05', 'abd82'),
(1095, '16022', 'products/bookCovers/Material Synthesis Fusing the Physical and the Computational - 2015.png', 'طرح هذا الكتاب مسألة بناء الشبكات اللاسلكية على مستوى محلي فهي قليلة الكلفة ومن الممكن تحقيقها وإدارتها. إضافة إلى ذلك يقدم هذا الكتاب كل المعلومات اللازمة لتخطيط الشبكة والحصول على المكونات الضرورية وفهم البروتوكولات التي تحتاجها لتصميم وتحقيق شبكتك.\nيبدأ الكتاب بمفاهيم التشبيك اللاسلكية الأساسية وخدمات الشبكة العامة ويركز على سمات معينة لبناء شبكتك اللاسلكية الخاصة ويشرح إحدى تجارب بناء شبكة تجمُّع لاسلكية تسمح بالاتصال اللاسلكي وتصفح الويب لكل من هم في الجوار.\n \nيتناول هذا الكتاب ما يلي:\nشبكات التجمع اللاسلكية\nتعريف مجال المشروع\nتخطيط الشبكة\nاستخدام نقاط الوصول\nالشبكات المعتمدة على المُضيف\nالشبكات بعيدة المدى\nتطبيقات أخرى\nشبكة الكوكب اللاسلكية المجانية ? شبكة مدينة Sebastopol اللاسلكية المجانية\nالأنظمة التي تؤثر في نشر شبكات 802.11\nحسابات الخسارة في المسار\nالإدارة البسيطة للمخطط', 3.50, 1, 11, 1, 'الكتروني', 'عربي', 208, 1, 'مبرمجين', 'بناء الشبكات اللاسلكية المحلية', '2009-07-05', 'abd83'),
(1096, '20086', 'products/bookCovers/Medical Herbs - 2013.png', 'الدليل العملي لبرمجة واستخدام راسبيري باي\n\n.يؤمن هذا الكتاب المعلومات الفنية والتكنولوجية والوسائل التي تحتاجها لاستثمار راسبيري على أكمل وجه. \n\nأهم المواضيع التي يتضمنها هذا الكتاب\n- التعرف على بنية راسبيري وطريقة تشغيله واستثماره\n- التحكم بإعدادات راسبيري للحصول على أفضل أداء\n- تنصيب البرامج المجانية التي تستطيع استخدامها من خلال راسبيري\n- استخدام بيئة سطح المكتب لتشغيل البرامج وإدارة الملفات وتصفح ويب وعرض الصور\n- استخدام نظام تشغيل لينكس والتعرف على التعليمات التفاعلية لإدارة بطاقات راسبيري\n- تحرير الصور وتشغيل الموسيقا والفيديو\n- إنشاء ألعاب باستخدام لغة البرمجة بايثون\n- تعلم بعض مبادئ الإلكترونيات وإنشاء بعض المشاريع الإلكترونية عن طريق التحكم باستخدام أقطاب الدخل والخرج في راسبيري\n\n', 7.75, 1, 11, 1, 'الكتروني', 'عربي', 392, 1, 'مبرمجين', 'الدليل العملي لبرمجة واستخدام Raspberry Pi', '2010-07-05', 'abd84'),
(1097, '978-1-118-96449-1', 'products/bookCovers/Medical Image Processing Advanced Fuzzy Set Theoretic Techniques - 2017.png', 'Featuring case studies and discussion questions, this textbook – with revisions addressing significant changes to US food law – offers accessible coverage appropriate to a wide audience of students and professionals.', 134.00, 1, 8, 2, 'الكتروني', 'انكليزي', 552, 2, 'عامة الناس', 'Food Regulation: Law, Science, Policy, and Practice, 2nd Edition', '0000-00-00', 'abd85'),
(1098, '978-1-4842-7374-6', 'products/bookCovers/Microsoft Blazor - 2021.png', 'Learn to leverage the power of Svelte to produce web applications that are efficient and fast. This project-oriented book simplifies creating sites using Svelte from start to finish, with little more than a text editor and familiar languages such as HTML, CSS, and JavaScript. It equips you with a starting toolset that you can use to develop future projects, incorporate into your existing workflow, and allow you to take your websites to the next level.\nPractical Svelte is an excellent resource for getting acquainted with creating and manipulating websites or online applications using a component framework approach. It takes the view that we don’t have to create something complex and unwieldy. We can build something quickly, using less code than some of its competitors, and extend it using the power of the API and plugins over time, without sacrificing speed or features.\n\nYou will learn how to use the Svelte framework to rapidly create and deploy websites or online applications that are performant, with the minimum of fuss and using existing tools already available in the browser, get up to speed with individual features of the Svelte framework, and work through a series of small projects that will combine to produce a finished site at the end of the book – this to help consolidate skills from day one and create something that you can use as a basis for future projects.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 317, 1, 'مبرمجين', 'Practical Svelte', '2013-07-05', 'abd86'),
(1099, '978-1-4842-7392-0', 'products/bookCovers/MongoDB Performance Tuning - 2021.png', 'Create and deploy full-stack Spring Boot applications with React and AWS. This practical and authoritative guide teaches you the fundamentals of Amazon Web Services with no prior experience.\n\nYou will start by learning the fundamentals of AWS, including EC2, S3, IAM, and load balancer. Next, you will learn to deploy a Spring Boot REST API to AWS with Elastic Beanstalk, which will give you the ability to build and deploy a Spring Boot application. You will explore the RDS relational database and create an instance of a MySQL database in AWS with RDS. \n\nYou will then deploy a Spring Boot application to MySQL in AWS and deploy a full-stack Spring Boot React application to AWS using Elastic Beanstalk and S3. Lastly, you will be introduced to ELB, CloudWatch, and Route 53. By the end of this book you will understand full-stack Spring Boot React applications and their deployment.  If you prefer \"learning by coding\" then Spring Boot with React and AWS is the book for you.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 225, 1, 'مبرمجين', 'Spring Boot with React and AWS', '2013-07-05', 'abd87'),
(1100, '978-1-118-87886-6', 'products/bookCovers/MonoGame Mastery - 2021.png', 'Material Synthesis: Fusing the Physical and the Computational Guest-edited by Achim Menges\nA new understanding of the material in architecture is fast emerging. Designers are no longer conceiving of the digital realm as separate from the physical world. Instead computation is being regarded as the key interface for material exploration and vice versa. This represents a significant perceptual shift in which the materiality of architecture is no longer seen to be a fixed property and passive receptor of form, but is transformed into an active generator of design and an adaptive agent of architectural performance. In stark contrast to previous linear and mechanistic modes of fabrication and construction, materialisation is now beginning to coexist with design as explorative robotic processes. This represents a radical departure from both the trite modernist emphasis on \'truth to materials\' and the dismissal of materials by the previous generation of dig...', 31.12, 1, 11, 1, 'الكتروني', 'انكليزي', 136, 1, 'اقتصاديين', 'Material Synthesis: Fusing the Physical and the Computational', '2007-07-05', 'abd88'),
(1101, ' 978-1-4842-6975-6', 'products/bookCovers/Mughni al-Muhtaj 41 - Shmoua - 2014.png', 'Learn to write a real-world enterprise app using the fundamentals of React and the most popular React libraries. Knowing the basics of React is important, but what is more important is knowing the common third-party libraries and how to use them. The book is perfect for intermediate to experienced React developers or busy React developers who would like to get things done and have maintainable React code.\nPractical Enterprise React features popular libraries such as React Router v6 for route navigation, Redux with Saga and Thunk for state management, and Formik with Yup for form and input validations. You\'ll also work with Material UI 5 (the next major version of the most popular UI component library in React), Axios as the HTTP client library, JWT auth for client app authentication, and TypeScript. Finally, you\'ll learn to deploy the app to Netlify, and containerize the React app to ship it as a standalone container instance or in a Kubernetes cluster.\n\nBecome a more effective React developer by using what is available out there instead of trying to reinvent the wheel. This book reveals how to save time and money, and build better apps for your clients. Get practical with React enterprise app development and enhance your career.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 463, 1, 'مبرمجين', 'Practical Enterprise React', '2013-07-05', 'abd89'),
(1102, '978-1-4842-7304-3', 'products/bookCovers/myaql - 1997.png', 'Quickly discover solutions to common problems, best practices you can follow, and everything jQuery has to offer. Using a problem-solution approach, this book begins with small initial problems that developers typically face while working with jQuery, and gradually goes deeper to explore more complex problems. The solutions include illustrations and clear, concise explanations of the code.\n\nYou will learn to traverse and manipulate the DOM effectively, understand how to use arrays, iteration, the event model, and implement animation and visual effects. You\'ll explore how to use plugins and CSS. Using this book and jQuery, your web sites will be more dynamic and lively. This fully updated second edition teaches you modern jQuery techniques including how to traverse and manipulate the DOM, understand the event model, implement animation, and use sliding effects. \n\njQuery Recipes, Second Edition shows you how to avoid wasting development time and solve problems you may face. It is an invaluable reference to keep by your side as you progress in your jQuery development. Start becoming a jQuery pro with jQuery Recipes today.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 676, 2, 'مبرمجين', 'jQuery Recipes', '2014-07-05', 'abd90'),
(1103, '978-1-4842-7217-6', 'products/bookCovers/Negotiation techniques in sales and marketing - 2019.png', 'Learn to integrate programming with good documentation. This book teaches you the craft of documentation for each step in the software development lifecycle, from understanding your users’ needs to publishing, measuring, and maintaining useful developer documentation.\n\nWell-documented projects save time for both developers on the project and users of the software. Projects without adequate documentation suffer from poor developer productivity, project scalability, user adoption, and accessibility. In short: bad documentation kills projects. \n\nDocs for Developers demystifies the process of creating great developer documentation, following a team of software developers as they work to launch a new product. At each step along the way, you learn through examples, templates, and principles how to create, measure, and maintain documentation—tools you can adapt to the needs of your own organization.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 225, 1, 'مبرمجين', 'Docs for Developers', '2013-07-05', 'abd91'),
(1104, '978-1-4842-7141-4', 'products/bookCovers/Open Source Intelligence Methods and Tools - 2018.png', 'Make your websites more dynamic by adding a feedback form, creating a private area where members can upload images that are automatically resized, or storing all your content in a database. David Powers has updated his definitive book to incorporate the latest techniques and changes to PHP with the arrival of PHP 8. New features include named attributes, constructor property promotion, the stricter and more concise match expression, union types, and more.​\n\nThe problem is, you\'re not a programmer and the thought of writing code sends a chill up your spine. Or maybe you\'ve dabbled a bit in PHP and MySQL, but you can\'t get past baby steps. If this describes you, then you\'ve just found the right book. PHP powers four out of every five websites that use a server-side language. In combination with the MySQL database it’s ideal for creating dynamic websites. PHP and MySQL are free, easy to use, and provided by many web hosting companies in their standard packages. This book also covers MariaDB, a seamless replacement for MySQL that has been adopted on many web servers.\n\nUnfortunately, most PHP books either expect you to be an expert already or force you to go through endless exercises of little practical value. In contrast, this book gives you real value right away through a series of practical examples that you can incorporate directly into your sites, optimizing performance and adding functionality such as file uploading, email feedback forms, image galleries, content management systems, and much more. Each solution is created with not only functionality in mind, but also visual design.\n\nBut this book doesn\'t just provide a collection of ready-made scripts: each PHP solution builds on what\'s gone before, teaching you the basics of PHP and database design quickly and painlessly. You’ll learn how to optimize your code using object-oriented programming (OOP) techniques. By the end of the book, you\'ll have the confidence to start writing your own scripts or—if you prefer to leave that task to others—to adapt existing scripts to your own requirements. Right from the start, you\'re shown how easy it is to protect your sites by adopting secure coding practices.', 12.00, 1, 11, 1, 'الكتروني', 'انكليزي', 558, 5, 'مبرمجين', 'PHP 8 Solutions', '2014-07-05', 'abd92'),
(1105, '978-1-118-60358-1', 'products/bookCovers/Philosophy of the family system in Islam - 2021.png', 'Learn the foundations of climate science and human health\nGlobal Climate Change and Human Health examines the environmental crisis from a public health and clinical health perspective, giving students and clinicians the information they need to prepare for the future of health care. Edited by George Luber, associate director for climate change at the Centers for Disease Control and Prevention, and Jay Lemery, associate professor at the University of Colorado School of Medicine and section chief of Wilderness and Environmental Medicine in the Department of Emergency Medicine, and including chapters written by luminaries in the field, this landmark book provides a comprehensive introduction to climate change and health. Students will learn about climate changes direct effect on health, including extreme weather events, altered and degraded ecosystems, and threats to human security and welfare. Discussions on mitigation and adaptation strategies, including disease surveillance, communications, and greening health care, as well as a primer on the core concepts of climate change science are presented. Each chapter has a specific section on the clinical correlations of the impact of climate change on health. Informative illustrations depict increasing aeroallergens, shifting vector habitats, emergent risks, and more. Visual teaching materials broken down by chapter (including PowerPoint lecture slides) are available for instructors.', 79.65, 1, 8, 1, 'الكتروني', 'انكليزي', 672, 1, 'عامة الناس', 'Global Climate Change and Human Health: From Science to Practice', '0000-00-00', 'abd93'),
(1106, '978-1-4842-7052-3', 'products/bookCovers/PHP 8 Solutions - 2022.png', 'Integrate D3.js into a React TypeScript project and create a chart component working in harmony with React.  This book will show you how utilize D3 with React to bring life to your charts.\nSeasoned author Elad Elrom will show you how to create simple charts such as line, bar, donut, scatter, histogram and others, and advanced charts such as a world map and force charts.  You\'ll also learn to share the data across your components and charts using React Recoil state management. Then integrate third-party chart libraries that are built on D3 such as Rechart, Visx, Nivo, React-vi, and Victory and in the end deploy your chart as a server or serverless app on popular platforms.\n\nReact and D3 are two of the most popular frameworks in their respective areas – learn to bring them together and take your storytelling to the next level.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 365, 1, 'مبرمجين', 'Integrating D3.js with React', '2013-07-05', 'abd94'),
(1107, '978-1-4842-7845-1', 'products/bookCovers/pmp - 1999.png', 'Build web applications in C# and Microsoft .NET 6 that run in any modern browser and become a full-stack web developer!. Do all these things using the Microsoft Blazor framework and the techniques shown in this book. New in this edition is coverage of the new and improved Razor syntax, communication with the server using SignalR and/or gRPC, the use of virtualization to load large quantities of data efficiently, deployment and ahead-of-time compilation into WASM, new unit testing features, security using OpenID Connect, and more. \n\nReading this book helps you learn to build user interfaces and present data to a user for display and modification, capturing the user’s changes via data binding. The book shows how to access a rich library of .NET functionality such as a component model for building a composable user interface, including how to develop reusable components that can be used across many pages and websites. Also covered is data exchange with a server using REST, SignalR, and gRPC, giving you access to microservices and database services. \n\nBlazor provides a fresh take on web development by eliminating the need for you to learn different languages and frameworks for client- and server-side development. Blazor allows C# and .NET to be used on all sides—both server-side and client-side—providing a robust feature set that is well suited toward scalable, enterprise-level applications. With Blazor you can use all your experience in .NET 6 along with thousands existing libraries, right in the browser. This book gets you proficient using this important toolkit for web application development.', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 647, 3, 'مبرمجين', 'Microsoft Blazor', '2013-07-05', 'abd95'),
(1108, '978-1-119-63374-7', 'products/bookCovers/PostgreSQL Query Optimization - 2021.png', 'Learn the basics of the five core areas of community and public health Introduction to Community and Public Health, 2nd Edition covers the basics in each area of community and public health as identified by the Association of Schools of Public Health. With a student-friendly approach, the authors discuss epidemiology, biostatistics, social and behavioral sciences, environmental health, and healthy policy and management. The book is written to serve both graduate and undergraduate public health students, as well as to help prepare for the Certified in Public Health (CPH) exam, Certified Health Education Specialist (CHES) exam and Master certified in Health Education Specialist (MCHES) exam, the book covers each of these five core disciplines, plus other important topics.', 90.87, 1, 8, 2, 'الكتروني', 'انكليزي', 464, 1, 'عامة الناس', 'Introduction to Community and Public Health, 2nd Edition', '0000-00-00', 'abd96'),
(1109, '978-1-4842-6418-8', 'products/bookCovers/Practical Cryptography in Python - 2019.png', 'Build machine learning web applications without having to learn a new language. This book will help you develop basic knowledge of machine learning concepts and applications. \n\nYou’ll learn not only theory, but also dive into code samples and example projects with TensorFlow.js. Using these skills and your knowledge as a web developer, you’ll add a whole new field of development to your tool set. This will give you a more concrete understanding of the possibilities offered by machine learning. Discover how ML will impact the future of not just programming in general, but web development specifically. \n\nMachine learning is currently one of the most exciting technology fields with the potential to impact industries from health to home automation to retail, and even art. Google has now introduced TensorFlow.js—an iteration of TensorFlow aimed directly at web developers. Practical Machine Learning in JavaScript will help you stay relevant in the tech industry with new tools, trends, and best practices.', 12.99, 1, 5, 1, 'الكتروني', 'انكليزي', 323, 1, 'مبرمجين', 'Practical Machine Learning in JavaScript', '0000-00-00', 'abd97'),
(1110, '978-1-4842-7150-6', 'products/bookCovers/Practical Enterprise React - 2021.png', 'Cover all the machine learning techniques relevant for forecasting problems, ranging from univariate and multivariate time series to supervised learning, to state-of-the-art deep forecasting models such as LSTMs, recurrent neural networks, Facebook’s open-source Prophet model, and Amazon’s DeepAR model.\n\nRather than focus on a specific set of models, this book presents an exhaustive overview of all the techniques relevant to practitioners of forecasting. It begins by explaining the different categories of models that are relevant for forecasting in a high-level language. Next, it covers univariate and multivariate time series models followed by advanced machine learning and deep learning models. It concludes with reflections on model selection such as benchmark scores vs. understandability of models vs. compute time, and automated retraining and updating of models.\n\nEach of the models presented in this book is covered in depth, with an intuitive simple explanation of the model, a mathematical transcription of the idea, and Python code that applies the model to an example data set.\n\nReading this book will add a competitive edge to your current forecasting skillset. The book is also adapted to those who have recently started working on forecasting tasks and are looking for an exhaustive book that allows them to start with traditional models and gradually move into more and more advanced models. ', 12.99, 1, 5, 1, 'الكتروني', 'انكليزي', 296, 1, 'مبرمجين', 'Advanced Forecasting with Python', '0000-00-00', 'abd98'),
(1111, '978-0-470-57413-3', 'products/bookCovers/Practical Machine Learning in JavaScript - 2021.png', 'This is an excellent resource for programmers who need to learn Java but aren’t interested in just reading about concepts. Introduction to Java Programming with Games follows a spiral approach to introduce concepts and enable them to write game programs as soon as they start. It includes code examples and problems that are easy to understand and motivates them to work through to find the solutions. This game-motivated presentation will help programmers quickly apply what they’ve learned in order to build their skills.  ', 43.46, 1, 5, 1, 'الكتروني', 'انكليزي', 528, 1, 'مبرمجين', 'Introductory Programming with Simple Games: Using Java and the Freely Available Networked Game Engine', '0000-00-00', 'abd99'),
(1112, '978-1-119-60655-0', 'products/bookCovers/Practical Svelte - 2021.png', 'A PRACTICAL GUIDE TO OPTIMIZATION PROBLEMS WITH DISCRETE OR INTEGER VARIABLES, REVISED AND UPDATED\n\nThe revised second edition of Integer Programming explains in clear and simple terms how to construct custom-made algorithms or use existing commercial software to obtain optimal or near-optimal solutions for a variety of real-world problems. The second edition also includes information on the remarkable progress in the development of mixed integer programming solvers in the 22 years since the first edition of the book appeared. The updated text includes information on the most recent developments in the field such as the much improved preprocessing/presolving and the many new ideas for primal heuristics included in the solvers. The result has been a speed-up of several orders of magnitude. The other major change reflected in the text is the widespread use of decomposition algorithms, in particular column generation (branch-(cut)-and-price) and Benders’ decomposition.', 107.00, 1, 5, 2, 'الكتروني', 'انكليزي', 336, 1, 'مبرمجين', 'Integer Programming', '0000-00-00', 'abd100'),
(1113, '978-1-118-13582-2', 'products/bookCovers/Practical Svelte - 2022.png', 'Readers seeking management careers in hospitality will enter a dynamic industry filled with opportunities. The rewards are many, but so are the challenges. Today’s hospitality managers must deal with such complex factors as globalization, terrorism threats, ecotourism, internet commerce, new business and financial models, and rapidly changing consumer demands. Introduction to Management in the Hospitality Industry, Tenth Edition gives readers the industry know-how and the management skills needed to thrive in all aspects of the field, from food service to lodging to tourism. The Tenth Edition of Introduction to Management in the Hospitality Industry features both historical perspectives and discussions of new trends in a variety of sectors. This book has the most thorough coverage of the hospitality industry, covering foodservice, lodging, and travel and tourism, hospitality careers, and hospitality management. Readers will have a strong grasp of the many facets of the hospitality industry once they have utilized this textbook.', 44.80, 1, 10, 10, 'الكتروني', 'انكليزي', 752, 1, 'عامة الناس', 'Introduction to Management in the Hospitality Industry,', '0000-00-00', 'abd101'),
(1114, '978-0-470-39813-5', 'products/bookCovers/Privileged Attack Vectors - 2021.png', 'An up-to-date, comprehensive guide to understanding and applying food science to the bakeshop.\n\nThe essence of baking is chemistry, and anyone who wants to be a master pastry chef must understand the principles and science that make baking work. This book explains the whys and hows of every chemical reaction, essential ingredient, and technique, revealing the complex mysteries of bread loaves, pastries, and everything in between. Among other additions, How Baking Works, Third Edition includes an all-new chapter on baking for health and wellness, with detailed information on using whole grains, allergy-free baking, and reducing salt, sugar, and fat in a variety of baked goods', 37.33, 1, 10, 3, 'الكتروني', 'انكليزي', 528, 1, 'عامة الناس', 'How Baking Works: Exploring the Fundamentals of Baking Science', '0000-00-00', 'abd102'),
(1115, '978-1-119-59582-3', 'products/bookCovers/Pro ASP.NET Core 6 - 2022.png', 'The new edition of the best-selling guide for powerful, morally-grounded change leadership in any organization. \n\nChange is an inevitable, essential part of the modern world. Change prevents stagnation, fosters creative solutions, and propels innovation. With change comes challenges: to survive and prosper, organizations need to adapt to shifting market dynamics, volatility in the public arena, disruptions brought on by new technologies, and many more. Leaders need to understand the dynamics of change to cope with the complexities of the change process. Leading in a Culture of Change describes the key dimensions of leadership that are crucial in times of change. This innovative guide helps readers master the five components of change leadership—moral purpose, understanding change, building relationships, creating and sharing knowledge, and creating coherence—and mobilize others to accomplish shared goals in often difficult conditions.', 22.39, 1, 3, 2, 'الكتروني', 'انكليزي', 192, 1, 'عامة الناس', 'Leading in a Culture of Change', '0000-00-00', 'abd103'),
(1116, '978-1-119-28881-7', 'products/bookCovers/Pro Data Visualization Using R and JavaScript - 2021.png', 'How leadership with love can make lasting changes, even in the toughest situations\nLead Fearlessly, Love Hard offers real, actionable advice for those seeking to change the education system from within. While countless books, articles, and speeches decry the challenges disadvantaged students in low-performing schools face, no one has offered a clear path forward through these challenges—until now.', 21.15, 1, 3, 1, 'الكتروني', 'انكليزي', 208, 1, 'عامة الناس', 'Lead Fearlessly, Love Hard: Finding Your Purpose and Putting It to Work', '0000-00-00', 'abd104'),
(1117, '978-1-4842-7957-1', 'products/bookCovers/Pro Docker - 2016.png', 'Develop Cloud-Ready Web Applications Using MVC, Blazor, and Razor Pages', 12.00, 1, 11, 1, 'الكتروني', 'انكليزي', 455, 6, 'مبرمجين', 'Pro ASP.NET Core 6', '2014-07-05', 'abd105'),
(1118, '9953851719', 'products/bookCovers/Pro Go - 2022.png', 'NO', 5.00, 1, 3, 1, 'الكتروني', 'عربي', 240, 1, 'عامة الناس', 'anacarnina', '0000-00-00', 'abd106'),
(1119, '978-1-4842-7866-6', 'products/bookCovers/Pro iPhone development with SwiftUI - 2022.png', 'How CSOs Build Successful Sustainability and ESG Strategies', 23.00, 1, 1, 1, 'الكتروني', 'انكليزي', 336, 1, 'اقتصاديين', 'Chief Sustainability Officers At Work', '0000-00-00', 'abd107'),
(1120, '978-1-4842-7820-8', 'products/bookCovers/Pro React - 2019.png', 'Practical Solutions for Creating a Sustainable Cyber Program', 37.00, 1, 11, 1, 'الكتروني', 'انكليزي', 211, 1, 'مبرمجين', 'Understand, Manage, and Measure Cyber Risk', '2013-07-05', 'abd108'),
(1121, '978-1-4842-7354-8', 'products/bookCovers/Python Data Analytics - 2018.png', 'The Complete Guide to Programming Reliable and Efficient Software Using Golang', 50.00, 1, 11, 1, 'الكتروني', 'انكليزي', 1076, 1, 'مبرمجين', 'Pro Go', '2014-07-05', 'abd109'),
(1122, '978-1-4842-6702-8', 'products/bookCovers/Python for Finance Mastering Data-Driven FinancePython for Finance Mastering Dat', 'Understand how Zero Trust security can and should integrate into your organization. This book covers the complexity of enterprise environments and provides the realistic guidance and requirements your security team needs to successfully plan and execute a journey to Zero Trust while getting more value from your existing enterprise security architecture. After reading this book, you will be ready to design a credible and defensible Zero Trust security architecture for your organization and implement a step-wise journey that delivers significantly improved security and streamlined operations.\n\nZero Trust security has become a major industry trend, and yet there still is uncertainty about what it means. Zero Trust is about fundamentally changing the underlying philosophy and approach to enterprise security—moving from outdated and demonstrably ineffective perimeter-centric approaches to a dynamic, identity-centric, and policy-based approach.\nMaking this type of shift can be challenging. Your organization has already deployed and operationalized enterprise security assets such as Directories, IAM systems, IDS/IPS, and SIEM, and changing things can be difficult. Zero Trust Security uniquely covers the breadth of enterprise security and IT architectures, providing substantive architectural guidance and technical analysis with the goal of accelerating your organization‘s journey to Zero Trust.', 13.00, 1, 5, 1, 'ورقي', 'انكليزي', 300, 1, 'مبرمجين', 'Zero Trust Security', '0000-00-00', 'abd110'),
(1123, '978-1-4842-6654-0', 'products/bookCovers/Python Machine Learning By Example - 2017.png', 'The cybersecurity industry has seen an investment of over $45 billion in the past 15 years. Hundreds of thousands of jobs in the field remain unfilled amid breach after breach, and the problem has come to a head. It is time for everyone—not just techies—to become informed and empowered on the subject of cybersecurity.\n\nIn engaging and exciting fashion, Big Breaches covers some of the largest security breaches and the technical topics behind them such as phishing, malware, third-party compromise, software vulnerabilities, unencrypted data, and more. Cybersecurity affects daily life for all of us, and the area has never been more accessible than with this book.\n\nYou will obtain a confident grasp on industry insider knowledge such as effective prevention and detection countermeasures, the meta-level causes of breaches, the seven crucial habits for optimal security in your organization, and much more. These valuable lessons are applied to real-world cases, helping you deduce just how high-profile mega-breaches at Target, JPMorgan Chase, Equifax, Marriott, and more were able to occur.\nWhether you are seeking to implement a stronger foundation of cybersecurity within your organization or you are an individual who wants to learn the basics, Big Breaches ensures that everybody comes away with essential knowledge to move forward successfully. Arm yourself with this book’s expert insights and be prepared for the future of cybersecurity.', 28.00, 1, 5, 1, 'ورقي', 'انكليزي', 407, 1, 'مبرمجين', 'Big Breaches', '0000-00-00', 'abd111'),
(1124, '978-1-4842-3212-5', 'products/bookCovers/R2DBC Revealed - 2021.png', 'Apply Open Source Intelligence (OSINT) techniques, methods, and tools to acquire information from publicly available online sources to support your intelligence analysis. Use the harvested data in different scenarios such as financial, crime, and terrorism investigations as well as performing business competition analysis and acquiring intelligence about individuals and other entities. This book will also improve your skills to acquire information online from both the regular Internet as well as the hidden web through its two sub-layers: the deep web and the dark web.\n\nThe author includes many OSINT resources that can be used by intelligence agencies as well as by enterprises to monitor trends on a global level, identify risks, and gather competitor intelligence so more effective decisions can be made. You will discover techniques, methods, and tools that are equally used by hackers and penetration testers to gather intelligence about a specific target online. And you will be aware of how OSINT resources can be used in conducting social engineering attacks. \n\nOpen Source Intelligence Methods and Tools takes a practical approach and lists hundreds of OSINT resources that can be used to gather intelligence from online public sources. The book also covers how to anonymize your digital identity online so you can conduct your searching activities without revealing your identity.', 45.00, 1, 5, 1, 'ورقي', 'انكليزي', 354, 1, 'مبرمجين', 'Open Source Intelligence Methods and Tools', '0000-00-00', 'abd112'),
(1125, '978-1-4842-5095-2', 'products/bookCovers/Read about earthquakes and volcanoes - 2012.png', 'Know how to design and use identity management to protect your application and the data it manages.\n\nAt a time when security breaches result in increasingly onerous penalties, it is paramount that application developers and owners understand identity management and the value it provides when building applications. This book takes you from account provisioning to authentication to authorization, and covers troubleshooting and common problems to avoid. The authors include predictions about why this will be even more important in the future. Application best practices with coding samples are provided.\n\nSolving Identity and Access Management in Modern Applications gives you what you need to design identity and access management for your applications and to describe it to stakeholders with confidence. You will be able to explain account creation, session and access management, account termination, and more.', 13.00, 1, 5, 1, 'الكتروني', 'انكليزي', 311, 1, 'مبرمجين', 'Solving Identity Management in Modern Applications', '0000-00-00', 'abd113'),
(1126, '978-1-4842-7373-9', 'products/bookCovers/Remembrance - white paper - 2004.png', 'Learn to leverage the power of Svelte to produce web applications that are efficient and fast. This project-oriented book simplifies creating sites using Svelte from start to finish, with little more than a text editor and familiar languages such as HTML, CSS, and JavaScript. It equips you with a starting toolset that you can use to develop future projects, incorporate into your existing workflow, and allow you to take your websites to the next level.\nPractical Svelte is an excellent resource for getting acquainted with creating and manipulating websites or online applications using a component framework approach. It takes the view that we don’t have to create something complex and unwieldy. We can build something quickly, using less code than some of its competitors, and extend it using the power of the API and plugins over time, without sacrificing speed or features.', 55.00, 1, 5, 1, 'ورقي', 'انكليزي', 317, 1, 'مبرمجين', 'Practical Svelte', '0000-00-00', 'abd114'),
(1127, '978-1-4842-7216-9', 'products/bookCovers/river - 1997.png', 'Learn to integrate programming with good documentation. This book teaches you the craft of documentation for each step in the software development lifecycle, from understanding your users’ needs to publishing, measuring, and maintaining useful developer documentation.\n\nWell-documented projects save time for both developers on the project and users of the software. Projects without adequate documentation suffer from poor developer productivity, project scalability, user adoption, and accessibility. In short: bad documentation kills projects. \n\nDocs for Developers demystifies the process of creating great developer documentation, following a team of software developers as they work to launch a new product. At each step along the way, you learn through examples, templates, and principles how to create, measure, and maintain documentation—tools you can adapt to the needs of your own organization.', 45.00, 1, 5, 1, 'ورقي', 'انكليزي', 225, 1, 'مبرمجين', 'Docs for Developers', '0000-00-00', 'abd115'),
(1128, '978-1-4842-7140-7', 'products/bookCovers/Sapiens A Brief History of Humankind - 2014.png', 'Make your websites more dynamic by adding a feedback form, creating a private area where members can upload images that are automatically resized, or storing all your content in a database. David Powers has updated his definitive book to incorporate the latest techniques and changes to PHP with the arrival of PHP 8. New features include named attributes, constructor property promotion, the stricter and more concise match expression, union types, and more.​\n\nThe problem is, you\'re not a programmer and the thought of writing code sends a chill up your spine. Or maybe you\'ve dabbled a bit in PHP and MySQL, but you can\'t get past baby steps. If this describes you, then you\'ve just found the right book. PHP powers four out of every five websites that use a server-side language. In combination with the MySQL database it’s ideal for creating dynamic websites. PHP and MySQL are free, easy to use, and provided by many web hosting companies in their standard packages. This book also covers MariaDB, a seamless replacement for MySQL that has been adopted on many web servers.', 60.00, 1, 5, 5, 'ورقي', 'انكليزي', 558, 1, 'مبرمجين', 'PHP 8 Solutions', '0000-00-00', 'abd116');
INSERT INTO `bookshop_product` (`id`, `ISBN`, `image`, `description`, `price`, `available`, `category_id`, `Edition`, `Format`, `Language`, `Page_Count`, `Series`, `Target_audience`, `Title`, `published_date`, `slug`) VALUES
(1129, '978-1-4842-7304-3', 'products/bookCovers/Software Architect - 2023.png', 'Quickly discover solutions to common problems, best practices you can follow, and everything jQuery has to offer. Using a problem-solution approach, this book begins with small initial problems that developers typically face while working with jQuery, and gradually goes deeper to explore more complex problems. The solutions include illustrations and clear, concise explanations of the code.\n\nYou will learn to traverse and manipulate the DOM effectively, understand how to use arrays, iteration, the event model, and implement animation and visual effects. You\'ll explore how to use plugins and CSS. Using this book and jQuery, your web sites will be more dynamic and lively. This fully updated second edition teaches you modern jQuery techniques including how to traverse and manipulate the DOM, understand the event model, implement animation, and use sliding effects. \n\njQuery Recipes, Second Edition shows you how to avoid wasting development time and solve problems you may face. It is an invaluable reference to keep by your side as you progress in your jQuery development. Start becoming a jQuery pro with jQuery Recipes today.', 13.00, 1, 5, 2, 'الكتروني', 'انكليزي', 676, 1, 'مبرمجين', 'jQuery Recipes', '0000-00-00', 'abd117'),
(1130, '978-1-4842-1681-1', 'products/bookCovers/Solving Identity Management in Modern Applications - 2019.png', 'Gain the information you need to design secure, useful, high-performing apps that expose end-users to as little risk as possible. This book shows you how to best design and develop Android apps with security in mind: explore concepts that you can use to secure apps and how you can use and incorporate these security features into your apps.\n\nWhat You Will Learn\n\nIdentify data that should be secured\nUse the Android APIs to ensure confidentiality and integrity of data\nBuild secure apps for the enterprise\nImplement Public Key Infrastructure and encryption APIs in apps\nMaster owners, access control lists, and permissions to allow user control over app properties\nManage authentication, transport layer encryption, and server-side security\n\nWho This Book Is For\n\nExperienced Android app developers.', 44.00, 1, 5, 2, 'ورقي', 'انكليزي', 294, 1, 'مبرمجين', 'Android Apps Security', '0000-00-00', 'abd118'),
(1131, '978-1-4842-7019-6', 'products/bookCovers/Sprayan security - 2023.png', 'Extending traditional digital platforms to the new frontier of extended reality (XR) requires taking into account what best practices, new concepts, and conventions have been established and what learnings can be brought forward from case studies involving industry leaders. By looking at practical examples from the field of handheld AR breakthroughs, virtual reality (VR) success stories and experimental interaction concept of pioneering XR platforms, you\'ll see how it\'s possible to map out a framework of user experience (UX) guidelines to close in on opportunities and challenges that lay ahead.\n\nThis book defines, identifies, and analyzes UX practices for XR environments and reviews the techniques and tools for prototyping and designing XR user interactions. You\'ll approach the design for experiential state and spatial cognition, using established UX key performance indicators, while taking into account the social dynamics, emotional framework and wider industry context.', 34.00, 1, 5, 1, 'ورقي', 'انكليزي', 255, 1, 'مبرمجين', 'UX for XR', '0000-00-00', 'abd119'),
(1132, '48672750', 'products/bookCovers/Spring Boot with React and AWS - 2021.png', 'amazing', 60.00, 1, 11, 5, 'ورقي', 'انكليزي', 500, 7, 'عامة الناس', 'river', '2019-06-05', 'abd120'),
(1133, '14050', 'products/bookCovers/Stories of the Noble Qur’an in colorful graphics - 2017.png', 'Special', 7.00, 1, 5, 5, 'ورقي', 'عربي', 432, 4, 'مبرمجين', 'Sprayan security', '0000-00-00', 'abd121'),
(1134, ' ISBN-13: 978-1783553112', 'products/bookCovers/Strong Will How to Stay Committed to Your Goals and Succeed in Life - 2017.png', 'This book will explore machine learning using the Python programming language, and provides many practical examples and use cases to enhance reader understanding. The book also introduces topics such as decision trees, factor analysis, and deep learning, and uses the pandas library and charting library to analyze data and visualize results.', 22.00, 1, 5, 1, 'الكتروني', 'انكليزي', 332, 1, 'مبرمجين', 'Python Machine Learning By Example', '0000-00-00', 'abd122'),
(1135, 'ISBN-13: 978-1484218829', 'products/bookCovers/Teen personality - 2012.png', 'This book talks about how to use Docker technology in software development, how to build images, run containers, work with Docker Hub, Docker Swarm services, and more. The book also explains the concepts of Docker in detail and shows how to get the most out of this technology. The book also covers how to create and run multiple applications between multiple containers and use Docker Compose to manage these applications.', 26.00, 1, 5, 1, 'الكتروني', 'انكليزي', 424, 1, 'مبرمجين', 'Pro Docker', '0000-00-00', 'abd123'),
(1136, '0', 'products/bookCovers/Test-Driven Development in Swift - 2021.png', 'Reactive Relational Database Connectivity for Java and JVM Programmers\n\n', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 212, 1, 'مبرمجين', 'R2DBC Revealed', '2013-07-05', 'abd124'),
(1137, 'ISBN-13: 978-0124080829', 'products/bookCovers/The Da Vinci Code - 2003.png', 'This book explains the concepts and fundamentals of the ARM Cortex-M3 and Cortex-M4 processors, and comprehensively covers all the new features and features introduced in these processors. The book also presents practical applications for designing and programming microsystems using these processors, while analyzing many examples and common problems that users may encounter. Featuring an easy-to-follow explanation, this book is a comprehensive guide for those interested in designing and programming microsystems using ARM Cortex-M3 and Cortex-M4 processors.', 50.00, 1, 5, 1, 'الكتروني', 'انكليزي', 864, 1, 'مبرمجين', 'The Definitive Guide to ARM® Cortex®-M3 and Cortex®-M4 Processors', '0000-00-00', 'abd125'),
(1138, '0', 'products/bookCovers/The Definitive Guide to ARM® Cortex®-M3 and Cortex®-M4 Processors - 2013.png', 'The Ultimate Guide to Building Efficient Queries\n\n', 12.99, 1, 11, 2, 'الكتروني', 'انكليزي', 319, 2, 'مبرمجين', 'PostgreSQL Query Optimization', '2013-07-05', 'abd126'),
(1139, 'ISBN-13: 978-1484203357', 'products/bookCovers/The Definitive Guide to Azure Data Engineering - 2021.png', 'This book provides a comprehensive guide to using Python for finance and data analysis. The author explains how to use Python libraries and tools to perform various tasks in finance, such as portfolio optimization, risk management, and trading strategy backtesting. The book covers a wide range of topics, including data handling, visualization, and machine learning. It also includes practical examples and exercises to help readers apply what they learn. The book is suitable for anyone with a basic understanding of Python and an interest in finance and data analysis.', 40.00, 1, 5, 1, 'الكتروني', 'انكليزي', 368, 1, 'مبرمجين', 'Python for Finance: Mastering Data-Driven FinancePython for Finance: Mastering Data-Driven Finance', '0000-00-00', 'abd127'),
(1140, '0', 'products/bookCovers/The globalization of immorality - 2004.png', 'Optimizing MongoDB Databases and their Applications\n\n', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 343, 3, 'مبرمجين', 'MongoDB Performance Tuning', '2013-07-05', 'abd128'),
(1141, 'ISBN-13: 978-1484255699', 'products/bookCovers/The Kharijites - Their Upbringing and Characteristics - Their Beliefs and Ideas ', 'This book provides a comprehensive introduction to blockchain technology, covering its history, evolution and real-world use cases. The author explains the technical concepts behind blockchain, such as distributed ledgers, cryptography, consensus algorithms and smart contracts, and demonstrates how they can be applied to create secure and decentralized systems. The book covers various blockchain platforms, including Bitcoin, Ethereum, and Hyperledger Fabric. It also includes practical examples and exercises to help readers apply what they learn. The book is suitable for anyone interested in learning about blockchain technology, regardless of their technical background.', 50.00, 1, 5, 2, 'الكتروني', 'انكليزي', 541, 1, 'مبرمجين', 'Mastering Blockchain: Distributed ledger technology, decentralization, and smart contracts explained, 2nd Edition', '0000-00-00', 'abd129'),
(1142, '0', 'products/bookCovers/The most important ratios and indicators in the world of business and finance - ', 'A Step-by-Step Approach\n\n', 12.99, 1, 11, 4, 'الكتروني', 'انكليزي', 706, 4, 'مبرمجين', 'Beginning T-SQL', '2013-07-05', 'abd130'),
(1143, '0', 'products/bookCovers/The Power of Now A Guide to Spiritual Enlightenment - 1999.png', 'Deploying Model-Driven Applications and Automation Pipelines\n\n', 12.99, 1, 11, 5, 'الكتروني', 'انكليزي', 289, 5, 'مبرمجين', 'Machine Learning for Oracle Database Professionals', '2013-07-05', 'abd131'),
(1144, '0', 'products/bookCovers/the secret of success - 2014.png', 'Practical Implementation for Data Engineers\n\n', 12.99, 1, 11, 6, 'الكتروني', 'انكليزي', 335, 6, 'مبرمجين', 'Azure Data Factory by Example', '2013-07-05', 'abd132'),
(1145, '0', 'products/bookCovers/The struggle of the jazayiriun people against the French occupation - 2015.png', 'Techniques and Solutions for High Performance and Productivity\n\n', 12.99, 1, 11, 7, 'الكتروني', 'انكليزي', 1123, 7, 'مبرمجين', 'Expert Oracle Database Architecture', '2014-07-05', 'abd133'),
(1146, '0', 'products/bookCovers/The Subtle Art of Not Giving a Fck A Counterintuitive Approach to Living a Good ', 'Learn to Write Efficient and Effective Java-Based SQL Database Operations\n\n', 12.99, 1, 11, 8, 'الكتروني', 'انكليزي', 214, 8, 'مبرمجين', 'Beginning jOOQ', '2014-07-05', 'abd134'),
(1147, '1111', 'products/bookCovers/The use of multimedia in education - 1998.png', 'Understand and Build Decoupled Django Architectures for JavaScript Front-ends\n\n', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 236, 1, 'مبرمجين', 'Decoupled Django', '2013-07-05', 'abd135'),
(1148, '1111', 'products/bookCovers/Thinking, Fast and Slow - 2011.png', 'With Pandas, NumPy, and Matplotlib\n\n', 12.99, 1, 11, 6, 'الكتروني', 'انكليزي', 569, 6, 'مبرمجين', 'Python Data Analytics', '2010-07-05', 'abd136'),
(1149, '20007', 'products/bookCovers/Thyroid tumors between diagnosis and treatment - 2019.png', 'This book explains the so-called sensors or sensors or sensors and includes: - An introduction to measurement systems. Signal processing. filters. Noise reduction technologies. - Interconnection with IBM PC computer lanes. - Counters and timers. - DAC and ADC signal converters. Serial linkage. – RS-232C, RS-423A, RS-485 and RS-422A. Multi-purpose connecting lanes. - Designing systems for connecting the most important types of sensors with the computer. Data collection systems (data). - Data analysis using LabVIEW and LabWINDOWS. Important industrial applications. And several important practical appendices.', 5.50, 1, 5, 7, 'الكتروني', 'عربي', 488, 1, 'مبرمجين', 'Artificial investment of sensors using a personal computer', '0000-00-00', 'abd137'),
(1150, '978-1-119-90367-3', 'products/bookCovers/Touch-up 61 (two colors) - 2004.png', 'Field-tested activities incorporating the lessons from Teach Like a Champion 3.0\nOver 25 keystone videos, complete with analysis, from example classrooms and educators\nStrategies for creating the most vibrant classroom culture\nInsights on using video as a t...', 18.00, 1, 3, 1, 'الكتروني', 'انكليزي', 416, 1, 'عامة الناس', ' Teach Like a Champion ', '0000-00-00', 'abd138'),
(1151, '978-1-119-98490-0', 'products/bookCovers/Understand, Manage, and Measure Cyber Risk - 2021.png', 'The go-to book for new teachers who need practical strategies, not textbook theory', 18.00, 1, 3, 1, 'الكتروني', 'انكليزي', 208, 1, 'عامة الناس', ' First Class Teaching', '0000-00-00', 'abd139'),
(1152, 'ISBN-13: 978-1484244501', 'products/bookCovers/UX for XR - 2021.png', 'This book is a comprehensive guide to learning React, a JavaScript library for building web applications. The author covers the fundamentals of React, including components, props, state, and lifecycle methods, as well as more advanced topics such as Redux, React Router, and server-side rendering. The book also includes practical examples and exercises to help readers apply what they learn. The book is suitable for web developers with a basic understanding of HTML, CSS, and JavaScript who want to learn how to build web applications using React', 45.00, 1, 5, 4, 'الكتروني', 'انكليزي', 546, 1, 'اقتصاديين', 'Pro React', '0000-00-00', 'abd140'),
(1153, '40028', 'products/bookCovers/Victory in cooperation - 2014.png', 'Explains with a high professionalism the following methods, concepts, principles and activities of trade:\nThe company and its types and elements\nBasic corporate accounts\nDistribution, networks and sales methods\nWholesale and retail trade\nBusiness correspondence and communications\nPublicity and advertising: its importance, types and methods of influence\nShipping types and insurance methods\nCurrency and capital markets', 4.75, 1, 1, 1, 'الكتروني', 'عربي', 368, 1, 'عامة الناس', 'A success guide for the aspiring trader', '0000-00-00', 'abd141'),
(1154, '40067', 'products/bookCovers/Walk in the meadow - 2014.png', 'This book provides a shortcut to the reader to the most important financial metrics. Escort Escort illustrates measures that show how to use the trade in the trade at the moment.', 6.00, 1, 1, 1, 'الكتروني', 'عربي', 432, 1, 'اقتصاديين', 'The most important ratios and indicators in the world of business and finance', '0000-00-00', 'abd142'),
(1155, '978-1484208184', 'products/bookCovers/Web Programming with Dart - 2014.png', 'This book is a comprehensive guide to learning ASP.NET Core 3, a modern, cross-platform framework for building web applications. The author covers the fundamentals of ASP.NET Core, including web APIs, routing, middleware, and Razor pages, as well as more advanced topics such as authentication, authorization, and deployment. The book also includes practical examples and exercises to help readers apply what they learn. The book is suitable for web developers with a basic understanding of C# and .NET who want to learn how to build web applications using ASP.NET Core.', 90.00, 1, 5, 1, 'الكتروني', 'انكليزي', 208, 1, 'مبرمجين', 'Medical Image Processing: Advanced Fuzzy Set Theoretic Techniques', '0000-00-00', 'abd143'),
(1156, '9953-85-331-2', 'products/bookCovers/When missed opportunities remain....... the best relationships - 2015.png', 'This is the biography of the Prophet Muhammad bin Abdullah, may God bless him and grant him peace.\nIn it, we learn steadfastness in faith and spreading the religion of Islam, and patience with the difficulties and challenges that face us through the events that confronted the Prophet during his fragrant biography.', 3.00, 1, 2, 1, 'الكتروني', 'عربي', 24, 1, 'عامة الناس', 'Birth of the Messenger of God -1', '0000-00-00', 'abd144'),
(1157, '978-1484264608', 'products/bookCovers/World atlas for children and young adults - 2016.png', 'This book is a practical guide to learning ethical hacking with Kali Linux, a popular operating system for cybersecurity professionals. The author covers the fundamentals of ethical hacking, including reconnaissance, scanning, exploitation, and post-exploitation techniques, as well as more advanced topics such as wireless network hacking, web application hacking, and password cracking. The book also includes practical examples and exercises to help readers apply what they learn. The book is suitable for beginners in the field of cybersecurity who want to learn ethical hacking using Kali Linux as a tool.', 40.00, 1, 5, 1, 'الكتروني', 'انكليزي', 461, 1, 'مبرمجين', 'Beginning Ethical Hacking with Kali Linux: Computational Techniques for Investigating Cybersecurity Incidents', '0000-00-00', 'abd145'),
(1158, '978-1484267326', 'products/bookCovers/xml - 1997.png', 'This book provides a quick start guide to using SQL Server for data science and machine learning. The author explains how to use SQL Server\'s built-in features for data science, such as R and Python integration, in-database machine learning, and graph processing. The book covers a range of topics, including data preprocessing, feature engineering, model training and evaluation, and model deployment. The author also provides practical examples and code samples to demonstrate how to implement these techniques using SQL Server. Overall, this book is suitable for readers who have a basic understanding of SQL Server and want to learn how to use it for data science and machine learning.', 30.00, 1, 5, 1, 'الكتروني', 'انكليزي', 375, 1, 'مبرمجين', 'Data Science with SQL Server Quick Start Guide: Integrate SQL Server with Data Science', '0000-00-00', 'abd146'),
(1159, '9.79E+12', 'products/bookCovers/Zero Trust Security - 2021.png', '\nAnd I decided to study a course in universities, and I put in the book a summary of my experience in the field of research', 10.00, 1, 3, 1, 'الكتروني', 'عربي', 312, 1, 'عامة الناس', 'Fundamentals of scientific research writing and manuscript verification', '0000-00-00', 'abd147'),
(1160, '978-1491960110', 'products/bookCovers/أسس الأمان في PHP - 2010.png', ' This book provides a comprehensive guide to building full-stack data analytics applications using the agile development methodology and Apache Spark. The author explains how to use Spark to process large datasets, build machine learning models, and visualize results. The book covers a range of topics, including data preparation, data exploration, data visualization, machine learning, and agile development. The author also provides practical examples and code samples to demonstrate how to implement these techniques using Spark. Overall, this book is suitable for readers who want to learn how to build data analytics applications using Spark and apply agile development principles to their projects.', 30.00, 1, 5, 1, 'ورقي', 'انكليزي', 352, 1, 'مبرمجين', 'Agile Data Science 2.0: Building Full-Stack Data Analytics Applications with Spark\"', '0000-00-00', 'abd148'),
(1161, '978-0132350884', 'products/bookCovers/احترف Arduino - 2014.png', 'This book provides a comprehensive guide to writing clean, readable, and maintainable code. The author explains the principles and practices of agile software development and provides practical examples and code snippets to demonstrate how to apply these principles in practice. The book covers a range of topics, including code formatting, naming conventions, functions and methods, classes and objects, and testing. The author also provides guidance on how to refactor existing code to improve its quality and maintainability. Overall, this book is suitable for readers who want to improve the quality of their code and learn how to apply agile development principles to their projects.', 30.00, 1, 5, 1, 'الكتروني', 'انكليزي', 464, 1, 'مبرمجين', ' Robert C. Martin', '0000-00-00', 'abd149'),
(1162, '978-1-4842-7132-2', 'products/bookCovers/احترف Python - 2012.png', 'Use various defense strategies with Azure Sentinel to enhance your cloud security. This book will help you get hands-on experience, including threat hunting inside Azure cloud logs and metrics from services such as Azure Platform, Azure Active Directory, Azure', 12.99, 1, 11, 1, 'الكتروني', 'انكليزي', 285, 1, 'مبرمجين', 'Cloud Defense Strategies with Azure Sentinel', '2013-07-05', 'abd150'),
(1163, '978-0374533557', 'products/bookCovers/الأمن السيبراني - 2023.png', ' This book explores the two systems of thinking that people use to make decisions. The first system, which is fast and intuitive, is used for quick judgments and automatic responses. The second system, which is slower and more deliberate, is used for more complex tasks and decision-making. The author describes how these systems work, how they interact, and how they can lead to biases and errors in judgment. The book covers a wide range of topics, including heuristics, biases, probability, decision-making, and happiness. Overall, this book is suitable for readers who want to understand how the mind works and how to improve decision-making skills.', 20.00, 1, 5, 1, 'الكتروني', 'انكليزي', 499, 1, 'مبرمجين', 'Thinking, Fast and Slow', '0000-00-00', 'abd151'),
(1164, '978-1-4842-6655-7', 'products/bookCovers/الإدارة الكاملة لقواعد المعطيات - 2011.png', 'Synthesizes and explains in plain English some of the biggest data breaches experienced to date\n\nProvides a roadmap to recovery, starting with culture and habits from the board level, as well as countermeasures you can deploy and use on a daily basis to avoid breaches in the future', 13.00, 1, 5, 1, 'الكتروني', 'انكليزي', 361, 1, 'مبرمجين', 'Big Breaches', '0000-00-00', 'abd152'),
(1165, '12143', 'products/bookCovers/الإرشاد التربوي للطفل - 2022.png', 'This book covers client-side programming topics supported by syntax and examples. It adheres to the ECMA standards in its explanation of the JavaScript language, however, its content is directed strongly to the two most popular and popular Internet browsers, namely Microsoft Internet Explorer and Netscape, with careful consideration of the points of difference in the inclusion of these two browsers for JavaScript and DOM standards, which is very important, especially for web developers who want to JavaScript runs on the client end on both browsers.', 8.00, 1, 11, 8, 'الكتروني', 'عربي', 656, 3, 'مبرمجين', 'javaScript', '2019-06-05', 'abd153'),
(1166, ' 978-1-4842-6309-9', 'products/bookCovers/التحليل الاقتصادي الجزئي - 2021.png', 'Master the art of game creation with MonoGame—the cross-platform framework of choice for independent developers. Learn the various aspects needed to create your next game by covering MonoGame framework specifics, engine creation, graphics, patterns, and more.\n\nThe MonoGame framework provides an incredible canvas for the programmer to create their next 2D game, and this book teaches you to make the most of it. You will start from the ground up, beginning with the basics of what MonoGame is, the pipeline, and then how to build a reusable game engine on top of the framework. You will deep dive into various components of each aspect of a game, including graphics, input, audio, and artificial intelligence. The importance of game tooling is also covered. By the end, you will have a mastery level of understanding of how to create a 2D game using MonoGame.\nWith a fully functional 2D game, aspiring developers will have the ideal blueprint to tackle their next fully featured game. The material covered is applicable for almost any 2D game project ranging from side scrolling adventures to fighting games.\n\n \n\n', 13.02, 1, 5, 1, 'الكتروني', 'انكليزي', 323, 1, 'مبرمجين', 'MonoGame Mastery', '0000-00-00', 'abd154'),
(1167, '978-1-4842-7039-4', 'products/bookCovers/التعمية وأمن الشبكات - 2008.png', 'Start your video game development journey by learning how to build a 2D game engine from scratch. Using Java (with NetBeans as your IDE and using Java’s graphics framework) or by following along in C# (with Visual Studio as your IDE and using the MonoGame framework), you’ll cover the design and implementation of a 2D game engine in detail. Each class will be reviewed with demonstration code. You’ll gain experience using the engine by building a game from the ground up.\n\nIntroduction to Video Game Engine Development reviews the design and implementation of a 2D game engine in three parts. Part 1 covers the low-level API class by class. You’ll see how to abstract lower-level functionality and design a set of classes that interact seamlessly with each other. You’ll learn how to draw objects, play sounds, render text, and more. In Part 2, you’ll review the mid-level API that is responsible for drawing the game, loading resources, and managing user input. Lastly, in Part 3, you’ll build a game from the ground up following a step-by-step process using the 2D game engine you just reviewed.\n\nOn completing this book, you’ll have a solid foundation in video game engine design and implementation. You’ll also get exposure to building games from scratch, creating the solid foundation you’ll need to work with more advanced game engines, and industry tools, that require learning complex software, APIs, and IDEs.  \n\nWhat You Will Learn\n\nGain experience with lower-level game engine APIs and abstracting framework functionality\nWrite application-level APIs: launching the game, loading resources, settings, processing input, and more\nDiscover cross-platform APIs in the game engine projects written in both Java and C#/MonoGame\nDevelop games with an SDK-based game engine and simplified tool chain focused on direct control of the game through code\nMaster creating games by using the game engine to build a game from the ground up with only code and an IDE\nWho This Book Is For \n\nThose of you out there with some programming experience, moderate to advanced, who want to learn how to write video games using modern game engine designs.\n\n', 14.11, 1, 5, 1, 'الكتروني', 'انكليزي', 382, 1, 'مبرمجين', 'Introduction to Video Game Engine Development', '0000-00-00', 'abd155'),
(1168, '15100', 'products/bookCovers/الدليل العملي لبرمجة واستخدام Raspberry Pi - 2018.png', 'The book provides a comprehensive explanation, supported by pictures and graphics, of the basic and modern graphic design techniques from an aesthetic and creative point of view, with simple and rich visual solutions that help you in making a successful design that is fully consistent with the proposed idea and the desired goal of your final design. In the book, you will find modern techniques used by expert designers in their work, presented to you with an easy explanation supported by illustrations.', 4.50, 1, 5, 10, 'الكتروني', 'عربي', 256, 2, 'مبرمجين', 'graphic design', '0000-00-00', 'abd156'),
(1169, '978-1-4842-6989-3', 'products/bookCovers/الشبكات العصبونية بالتطبيقات العملية - 2014.png', 'Understand the newest trend in database programming for developers working in Java, Kotlin, Clojure, and other JVM-based languages. This book introduces Reactive Relational Database Connectivity (R2DBC), a modern way of connecting to and querying relational databases from Java and other JVM languages. The book begins by helping you understand not only what reactive programming is, but why it is necessary. Then building on those fundamentals, the book takes you into the world of databases and the newly released Reactive Relational Database Connectivity (R2DBC) specification. \n\nExamples in the book are worked using the freely available MariaDB database along with MariaDB’s vendor-implementation of the R2DBC service-provider interface (SPI). Following along with the examples and the provided example code helps prepare you to work with any of the growing number of R2DBC implementations for popular enterprise databases such as Oracle Database and SQL Server. You’ll be well prepared for what is becoming the future of database access from Java and other languages built on the JVM.\n\n\nWhat You Will Learn\nUnderstand why R2DBC was created and how it utilizes the Reactive Streams API \nUnderstand the components of the R2DBC service-provider interface\nCreate and manage reactive database connections and connection pools using an R2DBC client\nProgrammatically execute queries on a relational database using an R2DBC client\nEffectively utilize transactions using an R2DBC client\nBuild relational database-driven applications that are event-driven and non-blocking\n\nWho This Book Is For\n\nSoftware developers building solutions using JVM languages and the JVM ecosystem, and developers who need an introduction to the R2DBC specification and reactive programming with relational databases and want to understand what Reactive Relational Database Connectivity is and why it came about. This book includes practical examples of using the R2DBC specification with Java and MariaDB that will provide developers with the knowledge they need to create their own solutions.', 14.11, 1, 5, 1, 'الكتروني', 'انكليزي', 212, 1, 'مبرمجين', 'R2DBC Revealed', '0000-00-00', 'abd157'),
(1170, '978-1-4842-6885-8', 'products/bookCovers/المرجع التعليمي في التنقيب عن البيانات - 2008.png', 'Write optimized queries. This book helps you write queries that perform fast and deliver results on time. You will learn that query optimization is not a dark art practiced by a small, secretive cabal of sorcerers. Any motivated professional can learn to write efficient queries from the get-go and capably optimize existing queries. You will learn to look at the process of writing a query from the database engine’s point of view, and know how to think like the database optimizer.\n\nThe book begins with a discussion of what a performant system is and progresses to measuring performance and setting performance goals. It introduces different classes of queries and optimization techniques suitable to each, such as the use of indexes and specific join algorithms. You will learn to read and understand query execution plans along with techniques for influencing those plans for better performance. The book also covers advanced topics such as the use of functions and procedures, dynamic SQL, and generated queries. All of these techniques are then used together to produce performant applications, avoiding the pitfalls of object-relational mappers.\n\n\n\nWhat You Will Learn\nIdentify optimization goals in OLTP and OLAP systems\nRead and understand PostgreSQL execution plans\nDistinguish between short queries and long queries\nChoose the right optimization technique for each query type\nIdentify indexes that will improve query performance\nOptimize full table scans\nAvoid the pitfalls of object-relational mapping systems\nOptimize the entire application rather than just database queries\n\n\nWho This Book Is For\n\nIT professionals working in PostgreSQL who want to develop performant and scalable applications, anyone whose job title contains the words “database developer” or “database administrator\" or who is a backend developer charged with programming database calls, and system architects involved in the overall design of application systems running against a PostgreSQL database', 14.11, 1, 5, 1, 'الكتروني', 'انكليزي', 319, 1, 'مبرمجين', 'PostgreSQL Query Optimization', '0000-00-00', 'abd158'),
(1171, '15079', 'products/bookCovers/الهندسة الإنشائية - أساسيات التحليل الإنشائي - الكتاب الأول المؤلف المهندس نادر ', 'This book takes advantage of the many benefits associated with developing multimedia and video projects and provides teachers and educators with strategies and ideas for incorporating multimedia projects into the curriculum. The authors used the DDD-E (Decide Design Develop - Evaluate) model to demonstrate how to select and plan multimedia projects, use presentations and development tools, manage graphics, digital audio and video, create web pages, and evaluate student work.', 5.00, 1, 11, 4, 'الكتروني', 'عربي', 328, 1, 'مبرمجين', 'The use of multimedia in education', '2020-06-05', 'abd159'),
(1172, '978-1-4842-6878-0', 'products/bookCovers/بناء الشبكات اللاسلكية المحلية - 2017.png', 'Use this fast and complete guide to optimize the performance of MongoDB databases and the applications that depend on them. You will be able to turbo-charge the performance of your MongoDB applications to provide a better experience for your users, reduce your running costs, and avoid application growing pains. MongoDB is the world’s most popular document database and the foundation for thousands of mission-critical applications. This book helps you get the best possible performance from MongoDB.\n\nMongoDB Performance Tuning takes a methodical and comprehensive approach to performance tuning that begins with application and schema design and goes on to cover optimization of code at all levels of an application. The book also explains how to configure MongoDB hardware and cluster configuration for optimal performance. The systematic approach in the book helps you treat the true causes of performance issues and get the best return on your tuning investment. Even when you’re under pressure and don’t know where to begin, simply follow the method in this book to set things right and get your MongoDB performance back on track.\n\n\nWhat You Will Learn\nApply a methodical approach to MongoDB performance tuning\nUnderstand how to design an efficient MongoDB application\nOptimize MongoDB document design and indexing strategies\nTune MongoDB queries, aggregation pipelines, and transactions\nOptimize MongoDB server resources: CPU, memory, disk\nConfigure MongoDB Replica sets and Sharded clusters for optimal performance\n\nWho This Book Is For\n\nDevelopers and administrators of high-performance MongoDB applications who want to be sure they are getting the best possible performance from their MongoDB system. For developers who wish to create applications that are fast, scalable, and cost-effective. For administrators who want to optimize their MongoDB server and hardware configuration.', 47.75, 1, 5, 1, 'ورقي', 'انكليزي', 349, 1, 'مبرمجين', 'MongoDB Performance Tuning', '0000-00-00', 'abd160'),
(1173, '12100', 'products/bookCovers/تحليل النظم - 2000.png', 'In this book, you will learn about the following topics: Basic C++ patterns (both simple and complex) C++ program controls Object-oriented programming and how to use them in C++ In addition to some other topics in C++', 2.00, 1, 11, 1, 'الكتروني', 'عربي', 208, 1, 'مبرمجين', 'C++', '2018-06-05', 'abd161'),
(1174, '978-1-4842-6605-2', 'products/bookCovers/توصيلات وتمديدات الشبكات LAN - 2004.png', 'Kathi Kellenberger is an editor and DevOps advocate at Redgate Software and a Microsoft Data Platform MVP. She has been working with SQL Server for over 20 years, starting with version 6.5. She has worked as a developer, database administrator, and consultant. Kathi has been involved with almost 20 book projects as an author, co-author, or technical editor, and enjoys presenting at events, webinars, and user groups. When not working, she teaches T-SQL to beginners at a non-profit in St. Louis, Missouri that helps people transition to tech careers.  \n\nLee Everest is a SQL Server developer who has worked with the product since version 6.5. He has taught part-time at Dallas College North Lake Campus for 18 years, and has had several students move on to companies such as Microsoft, filling roles from support engineer to data scientist to vice president. When Lee isn’t working, he enjoys computers, golf, and fishing', 48.83, 1, 5, 4, 'ورقي', 'انكليزي', 706, 1, 'مبرمجين', 'Beginning T-SQL', '0000-00-00', 'abd162'),
(1175, '12098', 'products/bookCovers/جافا للمبتدئين  - 2010.png', 'It contains the following topics: Installing MySQL Quick Tour Designing Databases Creating Databases, Tables, and Indexes Inserting, Deleting, and Updating Data MySQL Query Advanced Queries Using MySQL Built-in Methods with the SELECT Statement Using Transients with InnoDB Tables Example Databases Example Queries Managing User Privileges Copying Backup and disaster recovery', 2.00, 1, 11, 3, 'الكتروني', 'عربي', 208, 2, 'مبرمجين', 'myaql', '2019-06-05', 'abd163'),
(1176, '978-1-4842-7002-8', 'products/bookCovers/كتاب الروح والجسد - 1998.png', 'Leverage Swift to practice effective and efficient test-driven development (TDD) methodology. Software testing and TDD are evergreen programming concepts—yet Swift developers haven\'t widely adopted them. What\'s needed is a clear roadmap to learn and adopt TDD in the Swift world. Over the past years, Apple has invested in XCTest and Xcode\'s testing infrastructure, making testing a new top priority in their ecosystem. Open-source libraries such as Quick and Nimble have also reached maturity. The tools are there. This book will show you how to wield them. \n\nTDD has much more to offer than catching bugs. With this book, you’ll learn a philosophy for building software. TDD enables engineers to solve problems incrementally, writing only as much code as necessary. By decomposing big problems into small steps, you can move along at a fast pace, always making visible progress. \n\nParticipate in the test-driven development journey by building a real iOS application and incorporating new concepts through each chapter. The book\'s concepts will emerge as you figure out ways to use tests to drive the solutions to the problems of each chapter. Through the TDD of a single application, you’ll be introduced to all the staples and advanced concepts of the craft, understand the trade offs each technique offers, and review an iterative process of software development. \n\nTest-Driven Development in Swift provides the path for a highly efficient way to make amazing apps.\n\nWhat You\'ll Learn\n\nWrite tests that are easy to maintain\nLook after an ever-growing test suite\nBuild a testing vocabulary that can be applied outside the Swift world\nSee how Swift programming enhances the TDD flow seen in dynamic languages \nDiscover how compiler errors can provide the same helpful guidance as failing tests do\nWho This Book Is For\n\nMid-level developers keen to write higher quality code and improve their workflows. Also, developers that have already been writing tests but feel they are not getting the most out of them.', 14.11, 1, 5, 1, 'الكتروني', 'انكليزي', 288, 1, 'مبرمجين', 'Test-Driven Development in Swift', '0000-00-00', 'abd164'),
(1177, '12097', 'products/bookCovers/كتاب الطب والحياة - 2010.png', 'This book takes your hand, dear reader, step by step, to start learning about the XML language and writing its applications. It deals with many important ideas and topics related to the language, while supporting each of these ideas with adequate practical examples, and then adds to it a discussion and definition of some other techniques and languages ​​that help in enriching XML applications.', 2.00, 1, 11, 5, 'الكتروني', 'عربي', 192, 4, 'مبرمجين', 'xml', '2019-06-05', 'abd165'),
(1178, '978-1-4842-5819-4', 'products/bookCovers/كتاب الميكروبات والإنسان - 1990.png', 'Effectively manage Apple devices anywhere from a handful of Macs at one location to thousands of iPhones across many locations. This book is a comprehensive guide for supporting Mac and iOS devices in organizations of all sizes.\n\nYou\'ll learn how to control a fleet of macOS clients using tools like Profile Manager, Apple Device Enrollment Program (DEP), and Apple Remote Desktop. Then integrate your Mac clients into your existing Microsoft solutions for file sharing, print sharing, Exchange, and Active Directory authentication without having to deploy additional Mac-specific middle-ware or syncing between multiple directory services.  \n\nApple macOS and iOS System Administration shows how to automate the software installation and upgrade process using the open source Munki platform and provides a scripted out-of-the box experience for large scale deployments of macOS endpoints in any organization. Finally, you\'ll see how to provision and manage thousands of iOS devices in a standardized and secure fashion with device restrictions and over-the-air configuration.  \n\nWhat You\'ll Learn\nIntegrate macOS and iOS clients into enterprise Microsoft environments\nUse Apple’s Volume Purchase Program to manage App installations and share pools of Apps across multiple users\nMass deploy iOS devices with standard configurations\nRemotely manage a fleet of macOS devices using Apple\'s Remote Desktop\nWho This Book Is For\n\nSystem or desktop administrators in enterprise organizations who need to integrate macOS or iOS clients into their existing IT infrastructure or set-up a new infrastructure for an Apple environment from scratch.', 60.00, 1, 5, 1, 'ورقي', 'انكليزي', 573, 1, 'مبرمجين', 'Apple macOS and iOS System Administration', '0000-00-00', 'abd166'),
(1179, '978-1-4842-7045-5', 'products/bookCovers/كتاب كيمياء السعادة - 1990.png', 'Build highly modular software in macOS that interacts deeply and intuitively with other programs. This book explores all techniques available for Inter-process communications (IPC) from high level macOS layers to deep kernel options while applying theoretical concepts into practical implementations on real world scenarios.\n\nYou\'ll see how IPC techniques are used for exchanging data and messages among multiple threads in one or more processes, which may be running on one or more computers connected by a network or running locally. IPC methods can be divided into methods for message passing, synchronization, shared memory, and remote procedure calls (RPC). A poorly conceived IPC can even expose an entire network to over-the-network attacks. Despite the risks, processes and applications absolutely need to communicate with each other across your system and the network. You\'ll see how these communications facilitate information sharing, computational speedup, modularity, convenience, and privilege separation. \n\nIn macOS, a program has a number of ways to communicate with other programs. These mechanisms for IPC often exist in different layers of the system. You\'ll examine how each has its own specific purposes, limitations, and intended scenarios. Some are more suitable than others for code written at a certain level of the system. For example, a kernel extension would not make use of Apple events. \n\nAdditionally, the book reveals that different users have different rights when it comes to accessing files, changing system wide settings, and so on, depending on whether they are admin users or ordinary users. Running code with root or administrative privileges can intensify the dangers posed by security vulnerabilities. You\'ll learn that to elevate privileges safely, it is mandatory for the application to perform the task through a secure Helper process.\n\nWhat You\'ll Learn\nExpand the capabilities of your programs by sharing data within multiple applications\nUnderstand and dig deep into the world of Helper tools to create apps that need user privilege elevation\nEnhance the modularity of a system by allowing your applications to interact and share data with a website\n\nWho This Book Is For\n\nSoftware engineers and architects designing and developing secure applications for macOS and iOS who have hands-on knowledge of Swift with XCode. ', 14.11, 1, 5, 1, 'الكتروني', 'انكليزي', 284, 1, 'مبرمجين', 'Interprocess Communication with macOS', '0000-00-00', 'abd167'),
(1180, '16036', 'products/bookCovers/كتاب ميزان الاعتدال فى نقد الرجال المجلد الثالث - 1990.png', 'Data Mining provides an explanation of basic concepts and algorithms for those who are learning data mining for the first time. Through this book, we explored in depth the most important data mining techniques, starting with data pre-processing, classification, association analysis, clustering, and anomaly detection, while supporting the explanation with several examples to clarify the basic concepts', 8.50, 1, 11, 1, 'الكتروني', 'عربي', 768, 1, 'مبرمجين', 'Data mining', '2025-06-05', 'abd168'),
(1181, '978-1-4842-7756-0', 'products/bookCovers/كتاب هل تعاني من ارتفاع ضغط الدم؟ دواؤك الطبيعي من الأعشاب والغذاء - 1993.png', 'Create fun and polished games and gamify your apps with GameKit and Game Center. This fully updated new edition of Kyle Richter’s classic can help you reach new customers through social integrations, multiplayer, and achievements. Quickly add a level of polish to your apps that used to take weeks of hard work and late nights.\n\nImplementing a leaderboard and achievement system has never been so simple! Gone are the days of writing and maintaining your own server. You\'ll also see how to easily add advanced networking concepts like VoIP support in hours, not days. Game Center is heavily pushed and promoted by Apple. By adding Game Center into your game, not only do you gain access to polished and professional features but your app will see a boost in downloads and sharing.\n\nExpeditiously implement a plethora of advanced social networking concepts into your apps. Create custom Game Center Manager classes that can be rapidly deployed into any of your new or existing projects. And jump right over pitfalls commonly encountered by new and experienced Game Center developers. Become a Game Center development champ!\n\nWhat You\'ll Learn\nBuild a reusable Game Center manager class that can be quickly used in future projects\nIntegrate Game Kit and Game Center leaderboards and Achievements into your project\nAdd real time and turned based multiplayer functionality to your game\nImplement a real time voice chat system\n\nWho This Book Is For\n\nExperienced developers who already have a basic understanding of iOS development but haven’t yet had a chance to work with GameKit technology will benefit from this book. ', 14.11, 1, 5, 2, 'الكتروني', 'انكليزي', 301, 1, 'مبرمجين', 'Beginning iOS Game Center and GameKit', '0000-00-00', 'abd169'),
(1182, '12136', 'products/bookCovers/لطفل أكثر ذكاء - 2019.png', 'This book is considered one of the books that cover the subject of database management in all its ramifications and dimensions, and thus it is a comprehensive and complete reference for every programmer and specialist in database management. Among the pages of this book, you will find the following topics: Definitions and basic concepts in databases Defining the fields of using databases and defining the features they provide. How to develop databases. Database analysis, which is concerned with data modeling, and therefore the relational data model will be defined. Logical and physical database design. Realizing the database, where the definition of the SQL structured queries used to achieve this, and then the transition to advanced SQL and the definition of a server / client environment. Data storage with an illustration of storage structures. Introducing very important topics for databases, such as how to manage them and managing data, with an explanation of the most important issues related to this, such as recovery, backup, and synchronization control.', 9.00, 1, 11, 7, 'الكتروني', 'عربي', 984, 1, 'مبرمجين', 'Comprehensive database management', '2028-06-05', 'abd170'),
(1183, '40072', 'products/bookCovers/مبادئ الكهرباء والالكترونيات - 2000.png', 'The book includes: A full and detailed explanation of the Project Management Knowledge Guide PMBOK 6th Edition Preparation for the exam as stated in Rita\'s PMP Preparation 9th Edition More than 400 exam questions and answers Dozens of solved exercises on various topics Live and solved examples of the Critical Path Method (CPM) and management Due Value (EVM) Project Management Institute (PMI) membership and exam requirements', 9.00, 1, 11, 8, 'الكتروني', 'عربي', 608, 1, 'مبرمجين', 'pmp', '2021-06-05', 'abd171'),
(1184, '20056', 'products/bookCovers/مجموعة 300 دارة في الإلكترونيات العملية - 2009.png', 'The book covers and explains the following topics Introduction to counting and conversion systems including Boolean algebra and its applications Boolean algebra applications/microscopic and magnified expansions Karnot diagrams Cowen-McClusky method Multilevel gate circuits NAND and NOR gates Modular circuit design and simulation using logic gates voters, decoders and programmable logic elements Introduction to VHDL Retainers and inverters Registers and counters Analysis of sequential clock circuits Extraction of state tables and schematics Reduction of state tables and state assignment Sequential circuit design VHDL sequential logic Arithmetic circuits State machine design by SM VHDL layout for digital systems design Laboratory experiments', 9.00, 1, 11, 5, 'الكتروني', 'عربي', 1008, 1, 'مبرمجين', 'logical circuits', '2023-06-05', 'abd172');

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_publisher`
--

CREATE TABLE `bookshop_publisher` (
  `created` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `bookshop_review`
--

CREATE TABLE `bookshop_review` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `review_comment` longtext NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `coupons_coupon`
--

CREATE TABLE `coupons_coupon` (
  `id` bigint(20) NOT NULL,
  `code` varchar(50) NOT NULL,
  `valid_from` datetime(6) NOT NULL,
  `valid_to` datetime(6) NOT NULL,
  `discount` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `django_admin_log`
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

--
-- إرجاع أو استيراد بيانات الجدول `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-14 13:40:05.166650', '1', 'Order1 object (1)', 1, '[{\"added\": {}}]', 4, 2),
(2, '2023-06-14 13:43:27.414534', '1', 'vfdv', 1, '[{\"added\": {}}]', 1, 2),
(3, '2023-06-14 13:44:03.489819', '1', 'ngfngfn', 1, '[{\"added\": {}}]', 2, 2),
(4, '2023-06-14 13:44:19.168866', '1', 'publisher object (1)', 1, '[{\"added\": {}}]', 5, 2),
(5, '2023-06-14 13:44:25.642416', '1', 'Auther object (1)', 1, '[{\"added\": {}}]', 8, 2),
(6, '2023-06-14 13:44:33.259050', '1', 'BookF object (1)', 1, '[{\"added\": {}}]', 7, 2),
(7, '2023-06-14 13:44:46.898304', '1', '1', 1, '[{\"added\": {}}]', 6, 2),
(8, '2023-06-14 14:32:52.162341', '1', 'vfdv', 3, '', 1, 2),
(9, '2023-06-15 14:11:41.520893', '204', 'dscsdc', 1, '[{\"added\": {}}]', 1, 2),
(10, '2023-06-15 14:11:48.743713', '204', 'dscsdc', 3, '', 1, 2),
(11, '2023-06-15 14:11:57.433054', '205', 'cds', 1, '[{\"added\": {}}]', 1, 2),
(12, '2023-06-15 14:12:36.796199', '203', 'csdcsd', 1, '[{\"added\": {}}]', 2, 2),
(13, '2023-06-15 14:34:24.242774', '606', 'fdvd', 1, '[{\"added\": {}}]', 2, 2),
(14, '2023-06-15 18:02:24.275774', '1007', 'hgg', 1, '[{\"added\": {}}]', 2, 2),
(15, '2023-06-15 18:42:52.565369', '1008', 'fvvvfd', 1, '[{\"added\": {}}]', 2, 2),
(16, '2023-06-15 18:49:42.280292', '1009', 'sssssssss', 1, '[{\"added\": {}}]', 2, 2),
(17, '2023-06-15 18:55:37.110565', '1010', 'hcj', 1, '[{\"added\": {}}]', 2, 2),
(18, '2023-06-15 19:22:38.490342', '1011', 'vddv', 1, '[{\"added\": {}}]', 2, 2),
(19, '2023-06-15 19:46:15.844356', '1012', 'fsdv', 1, '[{\"added\": {}}]', 2, 2),
(20, '2023-06-15 21:16:56.599817', '2', 'Order1 object (2)', 1, '[{\"added\": {}}]', 4, 2),
(21, '2023-06-15 21:17:03.817705', '3', 'Order1 object (3)', 1, '[{\"added\": {}}]', 4, 2),
(22, '2023-06-15 21:17:15.182483', '3', 'Order1 object (3)', 2, '[]', 4, 2),
(23, '2023-06-15 21:17:32.663519', '2', '2', 1, '[{\"added\": {}}]', 6, 2),
(24, '2023-06-15 21:17:41.204905', '3', '3', 1, '[{\"added\": {}}]', 6, 2),
(25, '2023-06-15 21:17:50.875557', '4', '4', 1, '[{\"added\": {}}]', 6, 2),
(26, '2023-06-15 21:17:57.138953', '5', '5', 1, '[{\"added\": {}}]', 6, 2),
(27, '2023-06-15 21:18:06.133780', '6', '6', 1, '[{\"added\": {}}]', 6, 2),
(28, '2023-06-15 21:18:11.409329', '7', '7', 1, '[{\"added\": {}}]', 6, 2),
(29, '2023-06-15 21:18:41.751711', '3', 'tt', 1, '[{\"added\": {}}]', 17, 2),
(30, '2023-06-15 21:18:55.132145', '4', 'Order1 object (4)', 1, '[{\"added\": {}}]', 4, 2),
(31, '2023-06-15 21:19:05.626411', '8', '8', 1, '[{\"added\": {}}]', 6, 2),
(32, '2023-06-15 21:19:11.042888', '9', '9', 1, '[{\"added\": {}}]', 6, 2),
(33, '2023-06-15 21:19:17.145676', '10', '10', 1, '[{\"added\": {}}]', 6, 2),
(34, '2023-06-15 21:19:23.260874', '11', '11', 1, '[{\"added\": {}}]', 6, 2),
(35, '2023-06-15 21:19:41.061007', '2', 'BookF object (2)', 1, '[{\"added\": {}}]', 7, 2),
(36, '2023-06-15 21:19:43.962404', '3', 'BookF object (3)', 1, '[{\"added\": {}}]', 7, 2),
(37, '2023-06-15 21:19:46.578233', '4', 'BookF object (4)', 1, '[{\"added\": {}}]', 7, 2),
(38, '2023-06-15 21:19:49.706873', '5', 'BookF object (5)', 1, '[{\"added\": {}}]', 7, 2),
(39, '2023-06-15 21:22:20.902396', '4', 'rr', 1, '[{\"added\": {}}]', 17, 2),
(40, '2023-06-15 21:23:00.888906', '5', 'Order1 object (5)', 1, '[{\"added\": {}}]', 4, 2),
(41, '2023-06-15 21:23:13.338039', '12', '12', 1, '[{\"added\": {}}]', 6, 2),
(42, '2023-06-15 21:23:19.593701', '13', '13', 1, '[{\"added\": {}}]', 6, 2),
(43, '2023-06-15 21:23:26.560423', '14', '14', 1, '[{\"added\": {}}]', 6, 2),
(44, '2023-06-15 21:23:32.828093', '15', '15', 1, '[{\"added\": {}}]', 6, 2),
(45, '2023-06-15 21:23:41.555464', '16', '16', 1, '[{\"added\": {}}]', 6, 2),
(46, '2023-06-15 21:23:49.524037', '17', '17', 1, '[{\"added\": {}}]', 6, 2),
(47, '2023-06-15 21:23:55.160965', '18', '18', 1, '[{\"added\": {}}]', 6, 2),
(48, '2023-06-15 21:24:01.821327', '19', '19', 1, '[{\"added\": {}}]', 6, 2),
(49, '2023-06-15 21:24:10.442337', '20', '20', 1, '[{\"added\": {}}]', 6, 2),
(50, '2023-06-15 21:24:15.771540', '21', '21', 1, '[{\"added\": {}}]', 6, 2),
(51, '2023-06-15 21:24:21.579750', '22', '22', 1, '[{\"added\": {}}]', 6, 2),
(52, '2023-06-15 21:24:27.396706', '23', '23', 1, '[{\"added\": {}}]', 6, 2),
(53, '2023-06-15 21:24:33.769286', '24', '24', 1, '[{\"added\": {}}]', 6, 2),
(54, '2023-06-15 21:24:39.916698', '25', '25', 1, '[{\"added\": {}}]', 6, 2),
(55, '2023-06-15 21:24:45.723171', '26', '26', 1, '[{\"added\": {}}]', 6, 2),
(56, '2023-06-15 21:24:51.176060', '27', '27', 1, '[{\"added\": {}}]', 6, 2),
(57, '2023-06-15 21:24:58.132234', '28', '28', 1, '[{\"added\": {}}]', 6, 2),
(58, '2023-06-15 21:25:03.827144', '29', '29', 1, '[{\"added\": {}}]', 6, 2),
(59, '2023-06-15 21:25:09.547994', '30', '30', 1, '[{\"added\": {}}]', 6, 2),
(60, '2023-06-15 21:25:15.029935', '31', '31', 1, '[{\"added\": {}}]', 6, 2),
(61, '2023-06-15 21:25:21.803355', '32', '32', 1, '[{\"added\": {}}]', 6, 2),
(62, '2023-06-15 21:25:27.218776', '33', '33', 1, '[{\"added\": {}}]', 6, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'admin', 'logentry'),
(16, 'auth', 'group'),
(15, 'auth', 'permission'),
(17, 'auth', 'user'),
(8, 'bookshop', 'auther'),
(7, 'bookshop', 'bookf'),
(9, 'bookshop', 'bookpreference'),
(1, 'bookshop', 'category'),
(10, 'bookshop', 'custumer'),
(4, 'bookshop', 'order1'),
(6, 'bookshop', 'orderitem1'),
(2, 'bookshop', 'product'),
(5, 'bookshop', 'publisher'),
(3, 'bookshop', 'review'),
(18, 'contenttypes', 'contenttype'),
(13, 'coupons', 'coupon'),
(11, 'orders', 'order'),
(12, 'orders', 'orderitem'),
(19, 'sessions', 'session');

-- --------------------------------------------------------

--
-- بنية الجدول `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-13 13:41:37.677638'),
(2, 'auth', '0001_initial', '2023-06-13 13:41:38.277827'),
(3, 'admin', '0001_initial', '2023-06-13 13:41:38.371795'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-13 13:41:38.380771'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-13 13:41:38.390742'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-13 13:41:38.464547'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-13 13:41:38.538351'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-13 13:41:38.561287'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-13 13:41:38.570262'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-13 13:41:38.608161'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-13 13:41:38.611153'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-13 13:41:38.624118'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-13 13:41:38.640076'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-13 13:41:38.669901'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-13 13:41:38.687894'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-13 13:41:38.697866'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-13 13:41:38.716213'),
(18, 'bookshop', '0001_initial', '2023-06-13 13:41:38.874965'),
(19, 'bookshop', '0002_auto_20200524_1840', '2023-06-13 13:41:38.882942'),
(20, 'bookshop', '0003_auto_20200604_0959', '2023-06-13 13:41:38.935800'),
(21, 'bookshop', '0004_review', '2023-06-13 13:41:39.035535'),
(22, 'bookshop', '0005_auto_20200611_1552', '2023-06-13 13:41:39.095375'),
(23, 'bookshop', '0006_alter_category_id_alter_product_id_alter_review_id', '2023-06-13 13:41:41.357392'),
(24, 'bookshop', '0007_custumer_order1_alter_product_options_and_more', '2023-06-13 13:41:42.081786'),
(25, 'bookshop', '0008_alter_product_options_product_slug_and_more', '2023-06-13 13:41:42.184905'),
(26, 'bookshop', '0009_bookrating', '2023-06-13 13:41:42.299991'),
(27, 'bookshop', '0010_delete_bookrating', '2023-06-13 13:41:42.309965'),
(28, 'bookshop', '0011_bookpreference', '2023-06-13 13:41:42.423263'),
(29, 'bookshop', '0012_rename_name_custumer_password_custumer_email_and_more', '2023-06-13 13:41:42.528623'),
(30, 'bookshop', '0013_rename_password_custumer_name_remove_custumer_email_and_more', '2023-06-13 13:41:42.623368'),
(31, 'bookshop', '0014_remove_custumer_name', '2023-06-13 13:41:42.646308'),
(32, 'bookshop', '0015_custumer_name', '2023-06-13 13:41:42.689042'),
(33, 'bookshop', '0016_custumer2_alter_bookf_custumer_and_more', '2023-06-13 13:41:43.248107'),
(34, 'bookshop', '0017_custumer_alter_bookf_custumer_and_more', '2023-06-13 13:41:43.728872'),
(35, 'coupons', '0001_initial', '2023-06-13 13:41:43.767768'),
(36, 'coupons', '0002_delete_coupon', '2023-06-13 13:41:43.777743'),
(37, 'coupons', '0003_coupon', '2023-06-13 13:41:43.804669'),
(38, 'coupons', '0004_alter_coupon_id', '2023-06-13 13:41:43.870495'),
(39, 'orders', '0001_initial', '2023-06-13 13:41:43.991364'),
(40, 'orders', '0002_auto_20200527_1623', '2023-06-13 13:41:44.022282'),
(41, 'orders', '0003_order_braintree_id', '2023-06-13 13:41:44.048212'),
(42, 'orders', '0004_auto_20200604_0937', '2023-06-13 13:41:44.133998'),
(43, 'orders', '0005_alter_order_id_alter_orderitem_id', '2023-06-13 13:41:44.448401'),
(44, 'sessions', '0001_initial', '2023-06-13 13:41:44.480315'),
(45, 'bookshop', '0018_rename_password_custumer_name_remove_custumer_email_and_more', '2023-06-13 14:19:03.181003'),
(46, 'bookshop', '0019_alter_bookf_custumer_alter_bookpreference_customer_and_more', '2023-06-14 13:38:00.873824');

-- --------------------------------------------------------

--
-- بنية الجدول `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hiv84njwyrov31f39dtfzlavc7kw0pp5', '.eJxdzEsOgjAQgOG7zNo0pe-ydO8ZSJ9SNUVLWRjC3QVDYnA1yfzfzAzOlArtDAKLbbwmk2uqb2jpCZ4luQAtMIowhuUEDaZ_Sv2U-qJVdWaqfTeNoXTJr4HAYWeNu4e8BX8z-TogN-RakkUbQXsd0WXw4XHe7eFBb8Z-vabeKRYCJ1wagUkMJlqqacOUUERixqNkynJqNXFMMuy8D5Fr7ZQQTVQRlg_e-E-B:1qAeLz:9ApMOgv5wv6oLVv4FX6wi7xcAsL4Pbkx8OxghKCQ8yM', '2023-07-01 22:25:07.546883');

-- --------------------------------------------------------

--
-- بنية الجدول `orders_order`
--

CREATE TABLE `orders_order` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `braintree_id` varchar(150) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `orders_orderitem`
--

CREATE TABLE `orders_orderitem` (
  `id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `bookshop_auther`
--
ALTER TABLE `bookshop_auther`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_auther_product_id_9b32be42_fk_bookshop_product_id` (`product_id`);

--
-- Indexes for table `bookshop_bookf`
--
ALTER TABLE `bookshop_bookf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_bookf_custumer_id_eaaa54b8_fk_auth_user_id` (`custumer_id`);

--
-- Indexes for table `bookshop_bookpreference`
--
ALTER TABLE `bookshop_bookpreference`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookshop_bookpreference_customer_id_product_id_7cff49ad_uniq` (`customer_id`,`product_id`),
  ADD KEY `bookshop_bookprefere_product_id_ccc751fe_fk_bookshop_` (`product_id`);

--
-- Indexes for table `bookshop_category`
--
ALTER TABLE `bookshop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `bookshop_category_name_d658eb42` (`name`);

--
-- Indexes for table `bookshop_order1`
--
ALTER TABLE `bookshop_order1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_order1_custumer_id_268dcba4_fk_auth_user_id` (`custumer_id`);

--
-- Indexes for table `bookshop_orderitem1`
--
ALTER TABLE `bookshop_orderitem1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_orderitem1_order_id_6fc838fe_fk_bookshop_order1_id` (`order_id`),
  ADD KEY `bookshop_orderitem1_product_id_97fc4670_fk_bookshop_product_id` (`product_id`);

--
-- Indexes for table `bookshop_product`
--
ALTER TABLE `bookshop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_product_name_d28e0571` (`ISBN`),
  ADD KEY `bookshop_product_category_id_89600fec_fk` (`category_id`),
  ADD KEY `bookshop_product_Title_e2fd76c0` (`Title`),
  ADD KEY `bookshop_product_id_slug_61a4b9d7_idx` (`id`,`slug`),
  ADD KEY `bookshop_product_slug_4ca42986` (`slug`);

--
-- Indexes for table `bookshop_publisher`
--
ALTER TABLE `bookshop_publisher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_publisher_product_id_f214b6be_fk_bookshop_product_id` (`product_id`);

--
-- Indexes for table `bookshop_review`
--
ALTER TABLE `bookshop_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookshop_review_product_id_65640265_fk` (`product_id`);

--
-- Indexes for table `coupons_coupon`
--
ALTER TABLE `coupons_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

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
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_coupon_id_5bddb887_fk_coupons_coupon_id` (`coupon_id`);

--
-- Indexes for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderitem_product_id_afe4254a_fk_bookshop_product_id` (`product_id`),
  ADD KEY `orders_orderitem_order_id_fe61a34d_fk` (`order_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `bookshop_auther`
--
ALTER TABLE `bookshop_auther`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookshop_bookf`
--
ALTER TABLE `bookshop_bookf`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookshop_bookpreference`
--
ALTER TABLE `bookshop_bookpreference`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookshop_category`
--
ALTER TABLE `bookshop_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `bookshop_order1`
--
ALTER TABLE `bookshop_order1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookshop_orderitem1`
--
ALTER TABLE `bookshop_orderitem1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `bookshop_product`
--
ALTER TABLE `bookshop_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1185;

--
-- AUTO_INCREMENT for table `bookshop_publisher`
--
ALTER TABLE `bookshop_publisher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookshop_review`
--
ALTER TABLE `bookshop_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons_coupon`
--
ALTER TABLE `coupons_coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- قيود الجداول `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `bookshop_auther`
--
ALTER TABLE `bookshop_auther`
  ADD CONSTRAINT `bookshop_auther_product_id_9b32be42_fk_bookshop_product_id` FOREIGN KEY (`product_id`) REFERENCES `bookshop_product` (`id`);

--
-- قيود الجداول `bookshop_bookf`
--
ALTER TABLE `bookshop_bookf`
  ADD CONSTRAINT `bookshop_bookf_custumer_id_eaaa54b8_fk_auth_user_id` FOREIGN KEY (`custumer_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `bookshop_bookpreference`
--
ALTER TABLE `bookshop_bookpreference`
  ADD CONSTRAINT `bookshop_bookprefere_product_id_ccc751fe_fk_bookshop_` FOREIGN KEY (`product_id`) REFERENCES `bookshop_product` (`id`),
  ADD CONSTRAINT `bookshop_bookpreference_customer_id_0358abb3_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `bookshop_order1`
--
ALTER TABLE `bookshop_order1`
  ADD CONSTRAINT `bookshop_order1_custumer_id_268dcba4_fk_auth_user_id` FOREIGN KEY (`custumer_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `bookshop_orderitem1`
--
ALTER TABLE `bookshop_orderitem1`
  ADD CONSTRAINT `bookshop_orderitem1_order_id_6fc838fe_fk_bookshop_order1_id` FOREIGN KEY (`order_id`) REFERENCES `bookshop_order1` (`id`),
  ADD CONSTRAINT `bookshop_orderitem1_product_id_97fc4670_fk_bookshop_product_id` FOREIGN KEY (`product_id`) REFERENCES `bookshop_product` (`id`);

--
-- قيود الجداول `bookshop_product`
--
ALTER TABLE `bookshop_product`
  ADD CONSTRAINT `bookshop_product_category_id_89600fec_fk` FOREIGN KEY (`category_id`) REFERENCES `bookshop_category` (`id`);

--
-- قيود الجداول `bookshop_publisher`
--
ALTER TABLE `bookshop_publisher`
  ADD CONSTRAINT `bookshop_publisher_product_id_f214b6be_fk_bookshop_product_id` FOREIGN KEY (`product_id`) REFERENCES `bookshop_product` (`id`);

--
-- قيود الجداول `bookshop_review`
--
ALTER TABLE `bookshop_review`
  ADD CONSTRAINT `bookshop_review_product_id_65640265_fk` FOREIGN KEY (`product_id`) REFERENCES `bookshop_product` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_coupon_id_5bddb887_fk_coupons_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupons_coupon` (`id`);

--
-- قيود الجداول `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  ADD CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_bookshop_product_id` FOREIGN KEY (`product_id`) REFERENCES `bookshop_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

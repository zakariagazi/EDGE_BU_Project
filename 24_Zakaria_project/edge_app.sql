-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edge_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `name`, `email`, `phone`, `gender`, `dob`, `course_id`) VALUES
(1, 'Abir Kabir', 'abir@gmail.com', '0172398239', 'Male', '2009-06-17', 2),
(2, 'Doha', 'doha@gmail.com', '0676767', 'Male', '2024-06-13', 4),
(5, 'Nafisa', 'nafisa@gmail.com', '02398', 'Female', '2024-06-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `name`, `price`, `description`) VALUES
(1, 'Rupchada', 2500.00, ' A Popular Fish: Rupchada is known for its desirable qualities like a smooth texture,\r\ndelicious flavor, and pleasant mouthfeel [1, 2, 3].\r\nAvailability: It can be purchased fresh [1] or dried/processed [5].\r\nDried Rupchada: This dried version is called \"Rupchada Shutki\" and comes in different varieties like black or white [4].');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL,
  `prerequisite` varchar(200) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `content`, `level`, `prerequisite`, `duration`) VALUES
(1, 'Smart Office Application', 'Microsoft Office Word, Excel, Powerpoint and Computer Fundamentals', 'Foundation', 'Any discipline', 60),
(2, 'Basic Web Development', 'HTML, CSS, Javascript, PHP, MySQL', 'Foundation', 'Any Discipline', 60),
(3, 'Database', 'MySQL, Oracle', 'Intermediate', 'Science Background', 80),
(4, 'Mobile Application development', 'Anddroid or Flutter', 'Intermediate', 'Science Background', 80),
(5, 'gedu', 'darty', 'last lvel', 'hd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `description`, `created_at`) VALUES
(1, 'First time buying provide you 30% discount', '2024-06-05 18:44:29'),
(2, 'Second time delivary charge free', '2024-06-05 18:44:29'),
(3, 'If You Spent over 5000 taka , then you get a minimum Cash back of 500 taka', '2024-06-05 19:29:42'),
(4, 'Delivary Within 3 days,every where in Bangladesh', '2024-06-05 19:29:42'),
(5, 'In the Barisal region Delivery within 1 days ', '2024-06-05 19:30:25'),
(6, 'Barisal University Students get $30% discount & no Delivery Charge', '2024-06-05 19:30:25'),
(7, 'If your mind Changes you can return the product in 3 days . ', '2024-06-05 19:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` varchar(225) NOT NULL,
  `total_amount` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `customer_id`, `order_date`, `order_status`, `total_amount`) VALUES
(1, 1, '2024-06-07 22:27:12', 'Proceed', 258963.36);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`) VALUES
(1, 'Hilsa', 'Hilsa is prized for its delicate,\r\nrich flavor and soft, flaky texture.  It\'s an oily fish, packed with omega-3 fatty acids, which are beneficial for heart and brain health.  Hilsa is also a good source of protein, calcium, vitamin A, and vitamin D.', 4000.00, 100),
(2, 'Rupchada', 'Rupchanda,also known as Pomfret, is a popular and delicious fish in South Asian cuisine, particularly in Bangladesh.\r\nProtein: Rich in protein, Rupchanda is a good source for building and maintaining muscle.\r\nSelenium: This mineral plays a role in thyroid function and immunity.\r\nVitamin B12: Important for red blood cell formation and nervous system function.\r\nPhosphorus: Necessary for strong bones and teeth', 2000.00, 50),
(3, 'coral Reaf', 'Red Snapper:This popular reef fish has a firm, white  flesh with a slightly sweet and nutty flavor. It\'s a good source of protein, selenium, and vitamin B12.\r\nMahi Mahi (Dolphinfish): This vibrant fish boasts a mild, sweet flavor and a moist, flaky texture. It\'s rich in lean protein and omega-3 fatty acids.', 2500.00, 20),
(4, 'Suri', 'Protein:Suri fish is a good source of complete protein, containing all nine essential amino acids your body needs.\r\nMinerals: It\'s a good source of minerals like calcium, iron, phosphorus, and selenium.\r\nVitamins: While not as rich in vitamins as fresh fish, suri can still provide some vitamin B12 and vitamin D.', 1000.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_facilities`
--

CREATE TABLE `purchase_facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_facilities`
--

INSERT INTO `purchase_facilities` (`id`, `name`, `description`, `created_time`) VALUES
(1, 'Rupchada', 'Rupchanda,\r\nAlso known as roopchanda or the Chinese pomfret, is a prized catch in Bengali cuisine, particularly popular in Bangladesh and India. This flattened fish boasts a forked tail and a mild, slightly sweet flavor that lends itself well to various culinary preparations.', '2024-06-07 00:44:21'),
(2, 'Hilsa', 'Hils\r\na dry fish undergoes a meticulous process. The fish are cleaned, gutted, and then sun-dried or salt-cured. This drying concentrates the flavors and aromas, creating a distinct taste unlike its fresh counterpart. The flesh takes on a richer, more intense flavor with a hint of smokiness, dependi', '0000-00-00 00:00:00'),
(3, 'Shrimp', 'Dried shrimp fish,\r\n also simply known as dried shrimp, are shrimp that have been preserved through a drying process, typically sun-drying. This process removes most of the moisture from the shrimp, concentrating its flavor and aroma. Dried shrimp are a common ingredient in many Asian and Latin Amer', '0000-00-00 00:00:00'),
(4, 'Coral reefs ', 'A Rainbow of Flavor (But Not Always on Your Plate)\r\n\r\nCoral reefs teem with vibrantly colored fish, but their beauty often outweighs their culinary appeal. Here\'s why most reef fish aren\'t common on our plates:', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_facilities`
--
ALTER TABLE `purchase_facilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_facilities`
--
ALTER TABLE `purchase_facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

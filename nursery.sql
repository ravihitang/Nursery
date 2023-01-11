  -- phpMyAdmin SQL Dump
  -- version 5.1.1
  -- https://www.phpmyadmin.net/
  --
  -- Host: 127.0.0.1
  -- Generation Time: Jan 10, 2022 at 02:36 PM
  -- Server version: 10.4.22-MariaDB
  -- PHP Version: 7.3.33

  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  START TRANSACTION;
  SET time_zone = "+00:00";


  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;

  --
  -- Database: `nursery`
  --

  DELIMITER $$
  --
  -- Procedures
  --
  CREATE DEFINER=`root`@`localhost` PROCEDURE `getPlant` ()  NO SQL
  SELECT * FROM tbl_plant$$

  CREATE DEFINER=`root`@`localhost` PROCEDURE `getPlant1` ()  NO SQL
  SELECT * FROM tbl_order$$

  DELIMITER ;

  -- --------------------------------------------------------

  --
  -- Table structure for table `logs`
  --

  CREATE TABLE `logs` (
    `id` int(11) NOT NULL,
    `plant_id` int(11) NOT NULL,
    `action` varchar(20) NOT NULL,
    `cdate` datetime NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Dumping data for table `logs`
  --

  INSERT INTO `logs` (`id`, `plant_id`, `action`, `cdate`) VALUES
  (1, 1, 'updated', '2021-01-07 21:42:24'),
  (2, 1, 'updated', '2021-01-07 21:44:46'),
  (3, 12, 'updated', '2021-01-07 21:45:00'),
  (4, 4, 'updated', '2021-01-07 21:46:57'),
  (5, 5, 'deleted', '2021-01-07 21:53:13'),
  (7, 1, 'updated', '2021-01-07 23:24:28'),
  (8, 1, 'updated', '2021-01-07 23:25:11'),
  (9, 1, 'updated', '2021-01-08 12:18:46'),
  (10, 22, 'deleted', '2021-01-26 17:33:25'),
  (11, 1, 'updated', '2022-01-07 20:11:01'),
  (12, 2, 'updated', '2022-01-07 20:11:15'),
  (13, 3, 'updated', '2022-01-07 20:11:26'),
  (14, 4, 'updated', '2022-01-07 20:11:37'),
  (15, 6, 'updated', '2022-01-07 20:11:50'),
  (16, 7, 'updated', '2022-01-07 20:12:03'),
  (17, 8, 'updated', '2022-01-07 20:12:14'),
  (18, 9, 'updated', '2022-01-07 20:12:25'),
  (19, 10, 'updated', '2022-01-07 20:12:36'),
  (20, 11, 'updated', '2022-01-07 20:12:49'),
  (21, 12, 'updated', '2022-01-07 21:11:38'),
  (22, 13, 'updated', '2022-01-07 21:11:52'),
  (23, 14, 'updated', '2022-01-07 21:12:06'),
  (24, 15, 'updated', '2022-01-07 21:12:18'),
  (25, 16, 'updated', '2022-01-07 21:12:36'),
  (26, 17, 'updated', '2022-01-07 21:12:53'),
  (27, 18, 'updated', '2022-01-07 21:13:23'),
  (28, 19, 'updated', '2022-01-07 21:13:46'),
  (29, 20, 'updated', '2022-01-07 21:20:16'),
  (30, 21, 'updated', '2022-01-07 21:20:46'),
  (31, 2, 'updated', '2022-01-07 22:02:57'),
  (32, 3, 'updated', '2022-01-07 22:06:50'),
  (33, 1, 'updated', '2022-01-07 22:09:28'),
  (34, 4, 'updated', '2022-01-07 22:09:47'),
  (35, 6, 'updated', '2022-01-07 22:44:48'),
  (36, 7, 'updated', '2022-01-07 22:45:01'),
  (37, 8, 'updated', '2022-01-07 22:45:14'),
  (38, 9, 'updated', '2022-01-07 22:45:30'),
  (39, 10, 'updated', '2022-01-07 22:50:26'),
  (40, 11, 'updated', '2022-01-07 22:50:39'),
  (41, 12, 'updated', '2022-01-07 22:50:56'),
  (42, 13, 'updated', '2022-01-07 22:51:16'),
  (43, 14, 'updated', '2022-01-07 22:51:37'),
  (44, 15, 'updated', '2022-01-07 22:52:03'),
  (45, 16, 'updated', '2022-01-07 22:52:18'),
  (46, 17, 'updated', '2022-01-07 22:52:35'),
  (47, 18, 'updated', '2022-01-07 22:53:07'),
  (48, 19, 'updated', '2022-01-07 22:53:24'),
  (49, 20, 'updated', '2022-01-07 22:53:49'),
  (50, 21, 'updated', '2022-01-07 22:54:15'),
  (51, 10, 'deleted', '2022-01-09 09:08:03'),
  (52, 1, 'deleted', '2022-01-09 09:09:53'),
  (53, 23, 'deleted', '2022-01-09 09:12:11'),
  (54, 21, 'deleted', '2022-01-09 09:12:40'),
  (55, 20, 'deleted', '2022-01-09 09:13:47'),
  (56, 19, 'deleted', '2022-01-09 09:15:53'),
  (57, 25, 'deleted', '2022-01-09 12:01:07'),
  (58, 26, 'deleted', '2022-01-09 12:02:21'),
  (59, 28, 'deleted', '2022-01-09 12:04:29'),
  (60, 12, 'updated', '2022-01-10 18:37:58'),
  (61, 13, 'updated', '2022-01-10 18:38:33');

  -- --------------------------------------------------------

  --
  -- Table structure for table `logs1`
  --

  CREATE TABLE `logs1` (
    `id` int(11) NOT NULL,
    `order_id` int(11) NOT NULL,
    `customer_name` varchar(30) NOT NULL,
    `action` varchar(30) NOT NULL,
    `Time` datetime NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Dumping data for table `logs1`
  --

  INSERT INTO `logs1` (`id`, `order_id`, `customer_name`, `action`, `Time`) VALUES
  (1, 2, 'sameeksha shetty', 'updated', '2021-01-07 22:03:05'),
  (2, 1, 'sameeksha shetty', 'updated', '2021-01-08 12:19:24'),
  (3, 1, 'shreya', 'updated', '2021-01-08 15:12:07'),
  (4, 3, 'ranganath', 'updated', '2021-01-15 00:06:48'),
  (5, 2, 'sameeksha shetty', 'updated', '2021-01-15 00:06:59'),
  (6, 1, 'shreya', 'updated', '2021-01-15 00:07:07'),
  (7, 3, 'ranganath', 'updated', '2021-01-25 10:20:15'),
  (8, 3, 'ranganath', 'updated', '2021-01-25 10:20:25'),
  (9, 4, 'sameeksha shetty', 'updated', '2021-01-25 15:48:05'),
  (10, 4, 'sameeksha shetty', 'updated', '2021-01-26 17:31:46'),
  (11, 1, 'shreya', 'updated', '2021-01-26 17:33:44'),
  (12, 1, 'shreya', 'updated', '2021-01-26 17:33:52'),
  (13, 2, 'sameeksha shetty', 'updated', '2021-01-27 08:29:07'),
  (14, 2, 'sameeksha shetty', 'updated', '2021-01-27 08:29:22'),
  (15, 2, 'sameeksha shetty', 'updated', '2021-01-27 11:29:25'),
  (16, 5, 'suguna', 'updated', '2021-01-28 20:32:20'),
  (17, 6, 'kl', 'updated', '2021-04-15 09:24:45'),
  (18, 7, 'manju', 'updated', '2021-04-25 19:26:17'),
  (19, 7, 'manju', 'updated', '2021-06-22 14:09:08'),
  (20, 2, 'vandana', 'updated', '2022-01-08 10:14:04'),
  (21, 4, 'geetha', 'updated', '2022-01-08 18:06:22'),
  (22, 5, 'suguna', 'updated', '2022-01-08 18:07:23'),
  (23, 7, 'manju', 'updated', '2022-01-08 18:08:39'),
  (24, 1, 'asha', 'updated', '2022-01-08 18:09:52'),
  (25, 6, 'kl', 'updated', '2022-01-08 18:14:16'),
  (26, 1, 'asha', 'updated', '2022-01-08 18:15:36'),
  (27, 9, 'suma', 'updated', '2022-01-08 19:38:16'),
  (28, 10, 'shiva', 'updated', '2022-01-08 19:51:28');

  -- --------------------------------------------------------

  --
  -- Table structure for table `tbl_admin`
  --

  CREATE TABLE `tbl_admin` (
    `id` int(10) UNSIGNED NOT NULL,
    `full_name` varchar(100) NOT NULL,
    `username` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Dumping data for table `tbl_admin`
  --

  INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
  (4, 'bindu', 'bindu', 'e637c618876f2193f7fc882ff800215e'),
  (5, 'jyothi', 'jyothi', 'f7de140da031ca1e6e43adcc3b1e920f');



  -- --------------------------------------------------------

  --
  -- Table structure for table `tbl_category`
  --

  CREATE TABLE `tbl_category` (
    `id` int(10) UNSIGNED NOT NULL,
    `title` varchar(100) NOT NULL,
    `image_name` varchar(255) NOT NULL,
    `featured` varchar(10) NOT NULL,
    `active` varchar(10) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Dumping data for table `tbl_category`
  --

  INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
  (1, 'FLOWER PLANTS', 'Icecream_Category_97.jpg', 'Yes', 'Yes'),
  (3, 'FRUIT    PLANTS', 'Icecream_Category_161.jpeg', 'Yes', 'Yes'),
  (6, 'PLANT FOOD', 'Icecream_Category_586.jpg', 'Yes', 'Yes');

  -- --------------------------------------------------------

  --
  -- Table structure for table `tbl_order`
  --

  CREATE TABLE `tbl_order` (
    `id` int(5) UNSIGNED NOT NULL,
    `plant` varchar(50) NOT NULL,
    `price` decimal(10,2) NOT NULL,
    `qty` int(11) NOT NULL,
    `total` decimal(10,2) NOT NULL,
    `order_date` datetime NOT NULL,
    `status` varchar(20) NOT NULL,
    `customer_name` varchar(20) NOT NULL,
    `customer_contact` varchar(20) NOT NULL,
    `customer_email` varchar(30) NOT NULL,
    `customer_address` varchar(50) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Dumping data for table `tbl_order`
  --

  INSERT INTO `tbl_order` (`id`, `plant`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
  (1, 'JASMINE', '45.00', 1, '45.00', '2022-01-05 10:55:02', 'Delivered', 'asha', '89327462388', 'asha@gmail.com', 'bantwal'),
  (4, 'ORANGE PLANT', '50.00', 2, '100.00', '2022-01-02 11:16:44', 'Delivered', 'geetha', '8932746245', 'geetha@gmail.com', 'karwar'),
  (7, 'DAISY', '60.00', 4, '60.00', '2022-01-03 03:50:22', 'Cancelled', 'manju', '89327462388', 'manju@gmail.com', 'ks road banglore'),
  (8, 'ROSE PLANT', '75.00', 1, '75.00', '2022-01-07 06:25:57', 'Ordered', 'anitha', '9898999965', 'abcd@gmail.com', 'puttur,mangalore'),
  (10, 'DAINTHUS', '250.00', 1, '250.00', '2022-01-08 02:38:19', 'Ordered', 'shiva', '8765567654', 'aaa@gmail.com', 'mangalore'),
  (14, 'IXORA', '55.00', 1, '55.00', '2022-01-08 05:45:21', 'Ordered', 'anuu', '888', 'sanilk2002@gmail.com', 'mm'),
  (15, 'PETUNIA', '45.00', 1, '45.00', '2022-01-09 07:41:35', 'Ordered', 'raghav', '3343234567', 'rr@gmail.com', 'mangalore');

  --
  -- Triggers `tbl_order`
  --
  DELIMITER $$
  CREATE TRIGGER `updateLog1` AFTER UPDATE ON `tbl_order` FOR EACH ROW INSERT INTO logs1 VALUES(NULL,NEW.id,NEW.customer_name,"updated",NOW())
  $$
  DELIMITER ;

  -- --------------------------------------------------------

  --
  -- Table structure for table `tbl_plant`
  --

  CREATE TABLE `tbl_plant` (
    `id` int(10) UNSIGNED NOT NULL,
    `title` varchar(100) NOT NULL,
    `description` text NOT NULL,
    `price` decimal(10,2) NOT NULL,
    `image_name` varchar(255) NOT NULL,
    `category_id` int(10) UNSIGNED NOT NULL,
    `featured` varchar(10) NOT NULL,
    `active` varchar(10) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

  --
  -- Dumping data for table `tbl_plant`
  --

  INSERT INTO `tbl_plant` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
  (2, 'DAINTHUS', '', '50.00', 'Food-Name-200.jpg', 1, 'Yes', 'Yes'),
  (3, 'DAISY', '', '60.00', 'Food-Name-9567.jpeg', 1, 'Yes', 'Yes'),
  (4, 'JASMINE', '', '45.00', 'Food-Name-9004.jpg', 1, 'No', 'Yes'),
  (6, 'IXORA', '', '55.00', 'Food-Name-2024.jpg', 1, 'Yes', 'Yes'),
  (7, 'LOTUS', '', '80.00', 'Food-Name-9547.jpg', 1, 'Yes', 'Yes'),
  (8, 'PETUNIA', '', '45.00', 'Food-Name-7664.jpg', 1, 'Yes', 'No'),
  (9, 'PERIWINKLE', '', '30.00', 'Food-Name-3678.jpg', 1, 'No', 'No'),
  (11, 'HYBISCUS', '', '60.00', 'Food-Name-2994.jpg', 1, 'Yes', 'Yes'),
  (12, 'CHERRY PLANT', '', '100.00', 'Food-Name-2350.jpg', 3, 'No', 'Yes'),
  (13, 'MANGO PLANT', '', '150.00', 'Food-Name-9891.jpg', 3, 'Yes', 'Yes'),
  (14, 'HYBRID LEMON', '', '320.00', 'Food-Name-6823.jpg', 3, 'Yes', 'Yes'),
  (15, 'STRAWBERRY PLANT', '', '330.00', 'Food-Name-4326.jpg', 3, 'Yes', 'Yes'),
  (16, 'HYBRID PAPPAYA', '', '310.00', 'Food-Name-8476.jpg', 3, 'Yes', 'Yes'),
  (17, 'APPLE PLANT', '', '300.00', 'Food-Name-6396.jpg', 3, 'Yes', 'Yes'),
  (18, 'ORANGE PLANT', '', '300.00', 'Food-Name-32.jpg', 3, 'Yes', 'Yes'),
  (24, 'ROSE PLANT', '', '80.00', 'Food-Name-5070.jpg', 1, 'Yes', 'Yes'),
  (27, 'BLUEBERRY PLANT', '', '100.00', 'Food-Name-2685.jpg', 3, 'Yes', 'Yes'),
  (29, 'ROSE APPLE', '', '50.00', 'Food-Name-7198.jpg', 3, 'Yes', 'Yes'),
  (30, 'ORGANIC COMPOST', '', '25.00', 'Food-Name-9140.jpg', 6, 'Yes', 'Yes');

  --
  -- Triggers `tbl_plant`
  --
  DELIMITER $$
  CREATE TRIGGER `deleteLog` AFTER DELETE ON `tbl_plant` FOR EACH ROW INSERT INTO logs VALUES(NULL,OLD.id,"deleted",NOW())
  $$
  DELIMITER ;
  DELIMITER $$
  CREATE TRIGGER `updateLog` AFTER UPDATE ON `tbl_plant` FOR EACH ROW INSERT INTO logs VALUES(NULL,NEW.id,"updated",NOW())
  $$
  DELIMITER ;

  --
  -- Indexes for dumped tables
  --

  --
  -- Indexes for table `logs`
  --
  ALTER TABLE `logs`
    ADD PRIMARY KEY (`id`);

  --
  -- Indexes for table `logs1`
  --
  ALTER TABLE `logs1`
    ADD PRIMARY KEY (`id`);

  --
  -- Indexes for table `tbl_admin`
  --
  ALTER TABLE `tbl_admin`
    ADD PRIMARY KEY (`id`);

  --
  -- Indexes for table `tbl_category`
  --
  ALTER TABLE `tbl_category`
    ADD PRIMARY KEY (`id`);

  --
  -- Indexes for table `tbl_order`
  --
  ALTER TABLE `tbl_order`
    ADD PRIMARY KEY (`id`);

  --
  -- Indexes for table `tbl_plant`
  --
  ALTER TABLE `tbl_plant`
    ADD PRIMARY KEY (`id`) USING BTREE;

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `logs`
  --
  ALTER TABLE `logs`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

  --
  -- AUTO_INCREMENT for table `logs1`
  --
  ALTER TABLE `logs1`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

  --
  -- AUTO_INCREMENT for table `tbl_admin`
  --
  ALTER TABLE `tbl_admin`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

  --
  -- AUTO_INCREMENT for table `tbl_category`
  --
  ALTER TABLE `tbl_category`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

  --
  -- AUTO_INCREMENT for table `tbl_order`
  --
  ALTER TABLE `tbl_order`
    MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

  --
  -- AUTO_INCREMENT for table `tbl_plant`
  --
  ALTER TABLE `tbl_plant`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

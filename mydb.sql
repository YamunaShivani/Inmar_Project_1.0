-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 12:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `Firstname` text NOT NULL,
  `Lastname` text NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Pannumber` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Firstname`, `Lastname`, `Address`, `Pannumber`, `Email`) VALUES
('Yamuna', 'Shivani', 'Hyd', '123456', 'yshivani1998@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_address`
--

CREATE TABLE `checkout_address` (
  `id` int(3) NOT NULL,
  `FirstName` varchar(100) COLLATE cp850_bin NOT NULL,
  `LastName` varchar(100) COLLATE cp850_bin NOT NULL,
  `Email` varchar(100) COLLATE cp850_bin NOT NULL,
  `ResiAddress` varchar(100) COLLATE cp850_bin NOT NULL,
  `City` varchar(50) COLLATE cp850_bin NOT NULL,
  `Pincode` int(10) NOT NULL,
  `ContactNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp850 COLLATE=cp850_bin;

--
-- Dumping data for table `checkout_address`
--

INSERT INTO `checkout_address` (`id`, `FirstName`, `LastName`, `Email`, `ResiAddress`, `City`, `Pincode`, `ContactNo`) VALUES
(1, 'Yamuna', 'Shivani', 'yshivani1998@gmail.com', 'Hyderabad', 'Hyderabad', 500065, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `confirm_address_value`
--

CREATE TABLE `confirm_address_value` (
  `id` int(3) NOT NULL,
  `FirstName` varchar(100) COLLATE cp850_bin NOT NULL,
  `LastName` varchar(100) COLLATE cp850_bin NOT NULL,
  `Email` varchar(100) COLLATE cp850_bin NOT NULL,
  `ResiAddress` varchar(100) COLLATE cp850_bin NOT NULL,
  `City` varchar(50) COLLATE cp850_bin NOT NULL,
  `Pincode` int(10) NOT NULL,
  `ContactNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp850 COLLATE=cp850_bin;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order_address`
--

CREATE TABLE `confirm_order_address` (
  `id` int(3) NOT NULL,
  `firstname` varchar(100) COLLATE cp850_bin NOT NULL,
  `lastname` varchar(100) COLLATE cp850_bin NOT NULL,
  `email` varchar(100) COLLATE cp850_bin NOT NULL,
  `address` varchar(100) COLLATE cp850_bin NOT NULL,
  `city` varchar(50) COLLATE cp850_bin NOT NULL,
  `pincode` int(10) NOT NULL,
  `contactno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp850 COLLATE=cp850_bin;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order_fruit`
--

CREATE TABLE `confirm_order_fruit` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `fruit_name` varchar(100) COLLATE cp850_bin NOT NULL,
  `fruit_price` int(10) NOT NULL,
  `fruit_qty` int(3) NOT NULL,
  `fruit_image` varchar(500) COLLATE cp850_bin NOT NULL,
  `fruit_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp850 COLLATE=cp850_bin;

-- --------------------------------------------------------

--
-- Table structure for table `fruit`
--

CREATE TABLE `fruit` (
  `id` int(3) NOT NULL,
  `fruit_name` varchar(150) NOT NULL,
  `fruit_price` int(5) NOT NULL,
  `fruit_qty` int(5) NOT NULL,
  `fruit_img` varchar(500) NOT NULL,
  `fruit_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fruit`
--

INSERT INTO `fruit` (`id`, `fruit_name`, `fruit_price`, `fruit_qty`, `fruit_img`, `fruit_category`) VALUES
(2, 'Oranges', 1, 12, 'fruitimage/670041c0ec19e495bb544cca69e28ca7Orange-Fiber-Arance.jpg', 'Fresh Fruits'),
(4, 'WaterMelons', 10, 12, 'fruitimage/b94b64f9464ea879d7b30abb421f1ef4FD002329-56a6d3133df78cf772906f1d.jpg', 'Fresh Fruits'),
(6, 'Mangoes', 15, 12, 'fruitimage/b720ad67dc7fec96d055b362190773dealphonso-mangoes-ratnagiri.jpg', 'Fresh Fruits'),
(9, 'Guavas', 2, 12, 'fruitimage/5ebf700b4ad97a7734c6e3cede84302aThe-Medicinal-Properties-Of-Guava-And-Its-Leaves.jpg', 'Fresh Fruits'),
(13, 'Bananas', 1, 12, 'fruitimage/b5acf187611b1d4cd52251df46370b425-wonderfully-surprising-health-benefits-of-bananas-136424989313302601-180212101015.jpg', 'Fresh Fruits'),
(15, 'PineApples', 20, 12, 'fruitimage/08a8fb00d2ce11e515a278c3a1c27131high-angle-view-of-pineapples-in-crate-587191515-581101da5f9b58564c6a87df.jpg', 'Fresh Fruits'),
(16, 'Pomegranates', 12, 12, 'fruitimage/5b74447ced4acedcebf1bfaaea0436f4Pomegranates Angel Red.jpg', 'Fresh Fruits'),
(17, 'Apples', 5, 12, 'fruitimage/605f10be8d006ccc0ecaf0d6c494b609apples_2811968_1920.0.jpg', 'Fresh Fruits'),
(18, 'Papayas', 8, 12, 'fruitimage/73b4430632d62ddc6f1388d83467581dPapayas-4.jpg', 'Fresh Fruits'),
(19, 'PineApples', 20, 12, 'fruitimage/03724ea0075c7f64a5f2dfb3d25e6772high-angle-view-of-pineapples-in-crate-587191515-581101da5f9b58564c6a87df.jpg', 'Fresh Fruits');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout_address`
--
ALTER TABLE `checkout_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_address_value`
--
ALTER TABLE `confirm_address_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_order_address`
--
ALTER TABLE `confirm_order_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_order_fruit`
--
ALTER TABLE `confirm_order_fruit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fruit`
--
ALTER TABLE `fruit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout_address`
--
ALTER TABLE `checkout_address`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `confirm_address_value`
--
ALTER TABLE `confirm_address_value`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confirm_order_address`
--
ALTER TABLE `confirm_order_address`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confirm_order_fruit`
--
ALTER TABLE `confirm_order_fruit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fruit`
--
ALTER TABLE `fruit`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

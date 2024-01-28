-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 09:35 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-05-25 16:21:18', '27-05-2023 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Electronics', 'Electronic Products', '2023-05-24 19:19:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(23, 6, '30', 1, '2023-06-23 05:29:58', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(19, 23, 'in Process', 'Preparing for Shipping', '2023-06-23 05:30:37'),
(20, 23, 'in Process', 'Out for delivery', '2023-06-23 05:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(8, 30, 4, 4, 5, 'Pratham Jagtap', '..', 'Value for money', '2023-06-23 05:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(27, 1, 2, 'realme 10 Pro 5G (Nebula Blue, 128 GB)  (8 GB RAM), Grade- A', 'Realme', 12000, 20000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">8 GB RAM | 128 GB ROM | Expandable Upto 1 TB</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">17.07 cm (6.72 inch) Full HD+ Display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">108MP + 2MP | 16MP Front Camera</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">5000 mAh Battery</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Qualcomm Snapdragon 695 5G Processor</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 02:49:16', NULL),
(28, 1, 2, 'Realme C55 (Rainforest, 64 GB)  (4 GB RAM), Grade-B', 'Realme', 6000, 10000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">4 GB RAM | 64 GB ROM | Expandable Upto 1 TB</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">17.07 cm (6.72 inch) Full HD+ Display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">64MP + 2MP | 8MP Front Camera</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">5000 mAh Battery</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Helio G88 Processor</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 02:58:52', NULL),
(29, 1, 2, 'SAMSUNG Galaxy F23 5G (Aqua Blue, 128 GB)  (6 GB RAM), Grade-c', 'Samsung', 8000, 16999, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">6 GB RAM | 128 GB ROM | Expandable Upto 1 TB</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">16.76 cm (6.6 inch) Full HD+ Display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">50MP + 8MP + 2MP | 8MP Front Camera</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">5000 mAh Lithium Ion Battery</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Qualcomm Snapdragon 750G Processor</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 03:03:11', NULL),
(30, 1, 2, 'APPLE iPhone 11 (White, 64 GB), Grade-B', 'Apple', 20000, 35000, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">64 GB ROM</span><br><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">15.49 cm (6.1 inch) Liquid Retina HD Display</span><br><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">12MP + 12MP | 12MP Front Camera</span><br><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">A13 Bionic Chip Processor</span><br>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 03:13:00', NULL),
(31, 1, 2, 'Xiaomi 11i 5G (Purple Mist, 128 GB)  (8 GB RAM),Grade-A', 'Xiaomi', 18000, 23000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">8 GB RAM | 128 GB ROM | Expandable Upto 1 TB</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">16.94 cm (6.67 inch) Full HD+ AMOLED Display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">108MP Rear Camera | 16MP Front Camera</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">5160 mAh Li-Polymer Battery</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Mediatek Dimensity 920 Processor</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 03:17:37', NULL),
(32, 1, 3, 'ELV Portable Aluminium Mobile Stand Holder, Grade-B', 'ELV', 60, 99, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">MULTIPLE VIEWING ANGLE</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">LIGHT WEIGHT</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">CONCISE &amp; EASY DESIGN</span></li></ul>', '1.webp', '2.webp', '3.webp', 40, 'In Stock', '2023-06-23 03:30:52', NULL),
(33, 1, 3, '67W SonicCharge Fast Charger Adapter with Type c Cable, Grade-A', 'Xiaomi', 1500, 2000, '<table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Brand</b><span style=\"white-space:pre\">	</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Xiaomi</span></font></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Connector Type</b><span style=\"white-space:pre\">	</span>&nbsp; &nbsp;USB</span></font></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Compatible Phone&nbsp;</b></span></font></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Models</b><span style=\"white-space:pre\">	</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Xiaomi Mi Redmi</span></font></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Special Feature</b><span style=\"white-space:pre\">	</span>&nbsp; &nbsp;Lightweight Design, Short Circuit Protection,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fast Charging</span></font></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Colour</b><span style=\"white-space:pre\">	</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Black</span></font></table><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Input Voltage</b><span style=\"white-space: pre;\">	</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5 Volts</span></font></table>', '1.jpg', '2.jpg', '3.jpg', 0, 'In Stock', '2023-06-23 03:39:56', NULL),
(34, 1, 3, 'boAt Airdopes 161, Grade-B', 'Boat', 1000, 1500, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">With Mic:Yes</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Bluetooth version: 5.1</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Wireless Range: 10m</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Battery Time: upto 17 Hours</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">ASAP Charge: 5 mins = 90 mins</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">10mm Drivers</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">IPX5 Water &amp; Sweat Resistance</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 03:44:01', NULL),
(35, 1, 3, 'boAt Rockerz 255 Pro+ /258 Pro+, Grade-C', 'Boat', 700, 1200, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">With Mic:Yes</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Bluetooth version: 5.2</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Wireless range: 10 m</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Battery life: 40 hrs</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Type-c Charging</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">ASAP Charge: 10 mins charge= 10 hours playback</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">IPX7: Water and Sweat Resistant</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 03:48:15', NULL),
(36, 1, 4, 'ASUS VivoBook 14 (2021) Celeron Dual Core - (4 GB/256 GB SSD/Windows 11 Home), Grade-B', 'Asus', 23000, 30000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Stylish &amp; Portable Thin and Light Laptop</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">14 inch HD 16:9 aspect ratio, 200nits, 45% NTSC color gamut, Anti-glare display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Finger Print Sensor for Faster System Access</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Light Laptop without Optical Disk Drive</span></li></ul>', '1.webp', '4.webp', '3.webp', 0, 'In Stock', '2023-06-23 04:19:01', NULL),
(37, 1, 4, 'HP 14s Intel Core i3 11th Gen - (8 GB/256 GB SSD/Windows 11 Home) , Grade-A', 'HP', 27000, 35000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Stylish &amp; Portable Thin and Light Laptop</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">14 inch FHD, IPS, micro-edge, anti-glare (Brightness: 250 nits, 157 ppi, Color Gamut: 45% NTSC)</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Light Laptop without Optical Disk Drive</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 04:24:37', NULL),
(38, 1, 4, 'DELL Inspiron Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home), Grade-B', 'Dell', 38000, 43000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Stylish &amp; Portable Thin and Light Laptop</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">15.6 inch Full HD, WVAAG Narrow Border, Refresh Rate: 120 Hz, Brightness: 250 nits</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Light Laptop without Optical Disk Drive</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 04:46:37', NULL),
(39, 1, 4, 'Acer Aspire Core i3 12th Gen - (8 GB/512 GB SSD/Windows 11 Home), Grade-B', 'Acer', 35000, 48000, '<div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"box-sizing: border-box; overflow: hidden; position: relative; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; padding-bottom: 20px;\"><div class=\"a-section a-spacing-small a-spacing-top-small\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-top: 8px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"background-color: rgb(255, 255, 255); width: 513.25px; margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Acer</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Model Name</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">A315-59</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">15.6 Inches</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Colour</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Silver</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Hard Disk Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">512 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Model</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Core i3</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">8 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Special Feature</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">MS Office</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 122.925px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Graphics Card Description</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 390.325px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Integrated</span></td></tr></tbody></table><br></div></div><div id=\"poToggleButton\" class=\"a-expander-header a-expander-partial-collapse-header\" style=\"box-sizing: border-box; position: absolute; bottom: 0px; width: 513.25px; outline: 0px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; opacity: 1;\"></div>', '11.jpg', '12.jpg', '13.jpg', 0, 'In Stock', '2023-06-23 04:53:56', NULL),
(40, 1, 4, 'Lenovo IdeaPad Ryzen 5 Hexa Core 5600H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) , Grade-C', 'Lenova', 27000, 40000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">NVIDIA GeForce GTX 1650</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">15.6 Inch Full HD, IPS, 250 nits, Anti-glare, 45% NTSC, Refresh Rate: 60 Hz</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Light Laptop without Optical Disk Drive</span></li></ul>', '1.webp', '2.webp', '.webp', 0, 'In Stock', '2023-06-23 04:58:03', NULL),
(41, 1, 5, 'ENTWINO Intel Core i5 (8 GB DDR3/500 GB/120 GB SSD/Windows 10 Home), Grade-B', 'Entwino', 13000, 15000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Windows 10 Home</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Intel Core i5</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">HDD Capacity 500 GB</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">RAM 8 GB DDR3</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">18.5 inch Display</span></li></ul>', '1.webp', '2.webp', '', 0, 'In Stock', '2023-06-23 05:05:23', NULL),
(42, 1, 5, 'ASSEMBLD 2000 Core i3 (8 GB DDR3/1 TB/128 GB SSD/Windows 11 Home/20 Inch Screen/ASSEMBLED PC), Grade-C', 'Abc', 8000, 14000, '<ul><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Windows 11 Home</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Intel Core i3</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">HDD Capacity 1 TB</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">RAM 8 GB DDR3</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">20 inch Display</span></li><li><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">MS Office 2013</span></li></ul>', '1.webp', '2.webp', '3.webp', 0, 'In Stock', '2023-06-23 05:10:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 1, 'Mobiles', '2023-05-26 16:55:48', ''),
(3, 1, 'Mobile Accessories', '2023-05-26 04:12:40', ''),
(4, 1, 'Laptops', '2023-05-26 04:13:00', ''),
(5, 1, 'Computers', '2023-05-26 04:13:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'sr@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-19 09:06:38', NULL, 1),
(25, 'sr@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 05:57:44', '22-06-2023 12:13:28 PM', 1),
(27, 'sr@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 07:30:25', '22-06-2023 01:01:07 PM', 1),
(29, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 07:43:56', '22-06-2023 01:29:15 PM', 1),
(30, 'sr@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 07:59:30', '22-06-2023 01:32:01 PM', 1),
(31, 'sr@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 08:02:20', '22-06-2023 03:34:01 PM', 1),
(32, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 10:04:11', '22-06-2023 03:37:06 PM', 1),
(33, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 10:07:22', '22-06-2023 03:40:54 PM', 1),
(34, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 10:11:07', '22-06-2023 03:50:30 PM', 1),
(35, 'rg@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 10:28:33', '22-06-2023 04:10:15 PM', 1),
(36, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 11:30:57', NULL, 1),
(37, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 16:54:04', NULL, 1),
(38, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 17:12:32', '22-06-2023 10:44:01 PM', 1),
(39, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 17:18:38', '22-06-2023 10:52:38 PM', 1),
(40, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-22 17:43:12', NULL, 1),
(41, 'pj@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-23 05:18:17', '23-06-2023 11:27:00 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Satwik Roy', 'sr@gmail.com', 2578964512, 'af51eff2fef46e3078de16310f5d6bba', 'At abc chauk Pune', 'Maharashtra', 'Pune', 451288, 'Mumbai', 'Maharashtra', 'Dadar', 201354, '2023-06-19 09:06:21', NULL),
(6, 'Pratham Jagtap', 'pj@gmail.com', 4589621789, '2777b47df9780c7b2d43f16da1a2a7fa', 'Dadar', 'MH', 'Mumbai', 145236, 'Nigdi', 'MH', 'Pune', 451278, '2023-06-22 07:43:39', NULL),
(7, 'Rohit Ghate', 'rg@gmail.com', 8562314895, '40b1d4595e4a01a2f7c06c1864726d40', 'Nashik', 'Maharashtr', 'Nashik', 754621, 'Chinchwad', 'Maharashtra', 'Pune', 845613, '2023-06-22 10:28:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2023-06-19 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 02:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsgalactic`
--

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_commission`
--

CREATE TABLE `w2120869_commission` (
  `Commission_Id` varchar(5) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Commission_Amount` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_commission`
--

INSERT INTO `w2120869_commission` (`Commission_Id`, `Employee_Id`, `Commission_Amount`) VALUES
('COM1', 111, 500.00),
('COM2', 112, 999.99),
('COM3', 113, 450.00),
('COM4', 114, 999.99),
('COM5', 115, 650.00),
('COM6', 116, 400.00),
('COM7', 117, 520.00),
('COM8', 118, 999.99),
('COM9', 119, 480.00),
('COM10', 1110, 999.99);

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_customer`
--

CREATE TABLE `w2120869_customer` (
  `Customer_Id` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Tel_No_1` int(10) NOT NULL,
  `Tel_No_2` int(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Planet` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_customer`
--

INSERT INTO `w2120869_customer` (`Customer_Id`, `Customer_Name`, `Address`, `Tel_No_1`, `Tel_No_2`, `Email`, `Planet`) VALUES
(1, 'John Doe', '123 Main St,Earth', 1234567890, 2147483647, 'johndoe@email.com', 'Earth'),
(2, 'Jane Smith', '456 Elm St,Jupiter', 2147483647, NULL, 'janesmith@email.com', 'Jupiter'),
(3, 'Michael Johnson', '789 Oak Ave,Earth', 1234567890, 2147483647, 'michaeljohnson@email.com', 'Earth'),
(4, 'Emily Davis', '101 Pine Rd, Mercury', 2147483647, NULL, 'emilydavis@email.com', 'Mercury'),
(5, 'David Wilson', '234 Cedar Ln,Venus', 1234567890, 2147483647, 'davidwilson@email.com', 'Venus'),
(6, 'Olivia Brown', '567 Maple Ave,Jupiter', 2147483647, NULL, 'oliviabrown@email.com', 'Jupiter'),
(7, 'William Taylor', '890 Birch St,Venus', 1234567890, 2147483647, 'williamtaylor@email.com', 'Venus'),
(8, 'Sophia Anderson', '111 Spruce Ct, Saturn', 2147483647, NULL, 'sophiaanderson@email.com', 'Saturn'),
(9, 'James Thomas', '222 Fir Ln,Earth', 1234567890, 2147483647, 'jamesthomas@email.com', 'Earth'),
(10, 'Ava Lee', '333 Cypress Rd,Venus', 2147483647, NULL, 'avalee@email.com', 'Venus');

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_customer_employee`
--

CREATE TABLE `w2120869_customer_employee` (
  `Customer_Employee_Id` varchar(5) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Interaction_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_customer_employee`
--

INSERT INTO `w2120869_customer_employee` (`Customer_Employee_Id`, `Customer_Id`, `Employee_Id`, `Interaction_Date`) VALUES
('INT1', 1, 111, '2023-11-20'),
('INT2', 2, 112, '2023-11-21'),
('INT3', 3, 113, '2023-11-22'),
('INT4', 4, 114, '2023-11-23'),
('INT5', 5, 115, '2023-11-24'),
('INT6', 6, 116, '2023-11-25'),
('INT7', 7, 117, '2023-11-26'),
('INT8', 8, 118, '2023-11-27'),
('INT9', 9, 119, '2023-11-28'),
('INT10', 10, 1110, '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_department`
--

CREATE TABLE `w2120869_department` (
  `Department_Id` int(11) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `Planet` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_department`
--

INSERT INTO `w2120869_department` (`Department_Id`, `Department_Name`, `Planet`) VALUES
(11, 'Sales', 'Earth'),
(12, 'Human Resources', 'Mars'),
(13, 'Planetary Logistics', 'Venus'),
(14, 'Accountant', 'Mercury'),
(15, 'Marketing', 'Jupiter'),
(16, 'Customer Service', 'Saturn'),
(17, 'IT', 'Uranus'),
(18, 'Finance', 'Neptune'),
(19, 'Research and Development', 'Pluto'),
(110, 'Legal', 'Earth');

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_employee`
--

CREATE TABLE `w2120869_employee` (
  `Employee_Id` int(11) NOT NULL,
  `Employee_Name` varchar(50) NOT NULL,
  `Salary` decimal(6,2) NOT NULL,
  `Planet` varchar(10) NOT NULL,
  `Commission_Rate` decimal(5,2) NOT NULL,
  `Department_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_employee`
--

INSERT INTO `w2120869_employee` (`Employee_Id`, `Employee_Name`, `Salary`, `Planet`, `Commission_Rate`, `Department_Id`) VALUES
(111, 'Anne', 5000.00, 'Earth', 0.10, 11),
(112, 'James', 6000.00, 'Mars', 0.20, 12),
(113, 'William', 4500.00, 'Venus', 0.10, 13),
(114, 'Emily', 5500.00, 'Mercury', 0.20, 14),
(115, 'Jane', 6500.00, 'Jupiter', 0.10, 15),
(116, 'Hector', 4000.00, 'Saturn', 0.20, 16),
(117, 'Taylor', 5200.00, 'Uranus', 0.10, 17),
(118, 'Sabrina', 6200.00, 'Neptune', 0.20, 18),
(119, 'Henry', 4800.00, 'Pluto', 0.10, 19),
(1110, 'Max', 5800.00, 'Earth', 0.20, 110);

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_item`
--

CREATE TABLE `w2120869_item` (
  `Item_Code` varchar(5) NOT NULL,
  `Condition_` varchar(10) NOT NULL,
  `Quantity_Ordered` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Product_Id` varchar(5) NOT NULL,
  `Order_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_item`
--

INSERT INTO `w2120869_item` (`Item_Code`, `Condition_`, `Quantity_Ordered`, `Price`, `Product_Id`, `Order_Id`) VALUES
('ITM1', 'New', 2, 100.00, 'PRD1', 'ORD1'),
('ITM10', 'New', 2, 130.00, 'PRD10', 'ORD10'),
('ITM2', 'Used', 1, 50.00, 'PRD2', 'ORD2'),
('ITM3', 'Refurbishe', 3, 80.00, 'PRD3', 'ORD3'),
('ITM4', 'New', 4, 200.00, 'PRD4', 'ORD4'),
('ITM5', 'Used', 2, 120.00, 'PRD5', 'ORD5'),
('ITM6', 'Refurbishe', 3, 90.00, 'PRD6', 'ORD6'),
('ITM7', 'New', 2, 180.00, 'PRD7', 'ORD7'),
('ITM8', 'Used', 1, 70.00, 'PRD8', 'ORD8'),
('ITM9', 'Refurbishe', 3, 250.00, 'PRD9', 'ORD9');

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_order_table`
--

CREATE TABLE `w2120869_order_table` (
  `Order_Id` varchar(5) NOT NULL,
  `Order_Date` date NOT NULL,
  `Shipping_Date` date NOT NULL,
  `Total_Value` decimal(10,2) NOT NULL,
  `Customer_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_order_table`
--

INSERT INTO `w2120869_order_table` (`Order_Id`, `Order_Date`, `Shipping_Date`, `Total_Value`, `Customer_Id`) VALUES
('ORD1', '2023-11-20', '2023-11-25', 1000.00, 1),
('ORD10', '2023-11-29', '2023-12-04', 1300.00, 10),
('ORD2', '2023-11-21', '2023-11-26', 1500.00, 2),
('ORD3', '2023-11-22', '2023-11-27', 800.00, 3),
('ORD4', '2023-11-23', '2023-11-28', 2000.00, 4),
('ORD5', '2023-11-24', '2023-11-29', 1200.00, 5),
('ORD6', '2023-11-25', '2023-11-30', 900.00, 6),
('ORD7', '2023-11-26', '2023-12-01', 1800.00, 7),
('ORD8', '2023-11-27', '2023-12-02', 700.00, 8),
('ORD9', '2023-11-28', '2023-12-03', 2500.00, 9);

-- --------------------------------------------------------

--
-- Table structure for table `w2120869_product`
--

CREATE TABLE `w2120869_product` (
  `Product_Id` varchar(5) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Stock_Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w2120869_product`
--

INSERT INTO `w2120869_product` (`Product_Id`, `Product_Name`, `Category`, `Stock_Quantity`) VALUES
('PRD1', 'Hoverball', 'Sports', 100),
('PRD10', 'Galactic Golf Club', 'Sports', 70),
('PRD2', 'Astro Wrestling Gear', 'Sports', 50),
('PRD3', 'Anti-Gravity Racing Suit', 'Sports', 20),
('PRD4', 'Zero-G Basketball', 'Sports', 80),
('PRD5', 'Alien Frisbee', 'Sports', 120),
('PRD6', 'Nebula Net', 'Sports', 60),
('PRD7', 'Cosmic Cleats', 'Sports', 90),
('PRD8', 'Quantum Quaffle', 'Sports', 40),
('PRD9', 'Stellar Soccer Ball', 'Sports', 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `w2120869_commission`
--
ALTER TABLE `w2120869_commission`
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `w2120869_customer`
--
ALTER TABLE `w2120869_customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `w2120869_customer_employee`
--
ALTER TABLE `w2120869_customer_employee`
  ADD KEY `Customer_Id` (`Customer_Id`),
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `w2120869_department`
--
ALTER TABLE `w2120869_department`
  ADD PRIMARY KEY (`Department_Id`);

--
-- Indexes for table `w2120869_employee`
--
ALTER TABLE `w2120869_employee`
  ADD PRIMARY KEY (`Employee_Id`),
  ADD KEY `Department_Id` (`Department_Id`);

--
-- Indexes for table `w2120869_item`
--
ALTER TABLE `w2120869_item`
  ADD PRIMARY KEY (`Item_Code`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `Order_Id` (`Order_Id`);

--
-- Indexes for table `w2120869_order_table`
--
ALTER TABLE `w2120869_order_table`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`);

--
-- Indexes for table `w2120869_product`
--
ALTER TABLE `w2120869_product`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `w2120869_commission`
--
ALTER TABLE `w2120869_commission`
  ADD CONSTRAINT `w2120869_commission_ibfk_1` FOREIGN KEY (`Employee_Id`) REFERENCES `w2120869_employee` (`Employee_Id`);

--
-- Constraints for table `w2120869_customer_employee`
--
ALTER TABLE `w2120869_customer_employee`
  ADD CONSTRAINT `w2120869_customer_employee_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `w2120869_customer` (`Customer_Id`),
  ADD CONSTRAINT `w2120869_customer_employee_ibfk_2` FOREIGN KEY (`Employee_Id`) REFERENCES `w2120869_employee` (`Employee_Id`);

--
-- Constraints for table `w2120869_employee`
--
ALTER TABLE `w2120869_employee`
  ADD CONSTRAINT `w2120869_employee_ibfk_1` FOREIGN KEY (`Department_Id`) REFERENCES `w2120869_department` (`Department_Id`);

--
-- Constraints for table `w2120869_item`
--
ALTER TABLE `w2120869_item`
  ADD CONSTRAINT `w2120869_item_ibfk_1` FOREIGN KEY (`Product_Id`) REFERENCES `w2120869_product` (`Product_Id`),
  ADD CONSTRAINT `w2120869_item_ibfk_2` FOREIGN KEY (`Order_Id`) REFERENCES `w2120869_order_table` (`Order_Id`);

--
-- Constraints for table `w2120869_order_table`
--
ALTER TABLE `w2120869_order_table`
  ADD CONSTRAINT `w2120869_order_table_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `w2120869_customer` (`Customer_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

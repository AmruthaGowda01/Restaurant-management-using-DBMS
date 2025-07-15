-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2024 at 05:13 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `Order_Id` int NOT NULL AUTO_INCREMENT,
  `Customer_Fname` varchar(20) NOT NULL,
  `Customer_Lname` varchar(20) NOT NULL,
  `Customer_id` int NOT NULL,
  `Total_Amount` double NOT NULL,
  PRIMARY KEY (`Order_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Order_Id`, `Customer_Fname`, `Customer_Lname`, `Customer_id`, `Total_Amount`) VALUES
(1, 'Arpit', 'Sharma', 1, 6),
(2, 'Arpit', 'Sharma', 1, 24),
(3, 'Arpit', 'Sharma', 1, 7.4),
(4, 'Arpit', 'Sharma', 1, 7.4);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `Booking_Id` int NOT NULL AUTO_INCREMENT,
  `Table_Num` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Cust_Id` int NOT NULL,
  PRIMARY KEY (`Booking_Id`),
  KEY `Cust_Id` (`Cust_Id`),
  KEY `Table_Num` (`Table_Num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_Id`, `Table_Num`, `Date`, `Time`, `Cust_Id`) VALUES
(1, '1', '2024-01-10', '10:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
CREATE TABLE IF NOT EXISTS `cashier` (
  `Cashier_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL,
  PRIMARY KEY (`Cashier_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`Cashier_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Abhinav', 'Mittal', '124142', 'E-19 OBH , IIIT Hyderabad', '12000', 'M', '1993-11-30', '2012-08-01'),
(2, 'Sanchit', 'Gangwar', '113332', 'E-24 OBH , IIIT Hyderabad', '12000', 'M', '1993-02-21', '2012-08-01'),
(3, 'Abhishek', 'Kumar', '122121', 'E-25 OBH , IIIT Hyderabad', '12000', 'M', '1992-07-21', '2012-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `cook`
--

DROP TABLE IF EXISTS `cook`;
CREATE TABLE IF NOT EXISTS `cook` (
  `Cook_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cook_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cook`
--

INSERT INTO `cook` (`Cook_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`, `Specialization`) VALUES
(1, 'Bhavshuk', 'Jindal', '123211', 'E-18 OBH , IIIT Hyderabad', '15000', 'M', '1992-08-02', '2012-08-01', 'Maggi'),
(2, 'Japneet', 'Singh', '231312', 'E-19 OBH , IIIT Hyderabad', '15000', 'M', '1992-10-12', '2012-08-01', 'Samosa'),
(3, 'Dinesh', 'Singla', '874594', 'E-18 OBH , IIIT Hyderabad', '15000', 'M', '1992-03-14', '2012-08-01', 'Omlette'),
(4, 'Siddharth', 'Sinha', '587654', 'E-26 OBH , IIIT Hyderabad', '15000', 'M', '1992-01-01', '2012-08-01', 'Bonda'),
(5, 'Himanshu', 'Aggarwal', '142355', 'E-24 OBH , IIIT Hyderabad', '15000', 'M', '1992-02-22', '2012-08-01', 'Jalebi'),
(6, 'Priya', 'Rai', '897933', 'HOLLYWOOD USA', '15000', 'F', '1980-01-02', '2012-08-01', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `Fname`, `Lname`, `Contact`, `Email_Id`) VALUES
(1, 'Arpit', 'Sharma', '938912', 'arpit.sharma@students.iiit.ac.in'),
(2, 'Yash', 'Shah', '289374', 'yash.shah@students.iiit.ac.in'),
(3, 'Darshit', 'Serna', '234322', 'darshit.serna@students.iiit.ac.in'),
(4, 'Aditya', 'Sharma', '778989', 'aditya.sharma@students.iiit.ac.in'),
(5, 'Pallav', 'Shah', '364932', 'pallav.shah@students.iiit.ac.in'),
(6, 'Rajat', 'Bharadwaj', '734277', 'rajat.bharadwaj@students.iiit.ac.in'),
(7, 'Achintya', 'Madhav', '347534', 'achintya.madhav@students.iiit.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

DROP TABLE IF EXISTS `delivery_boy`;
CREATE TABLE IF NOT EXISTS `delivery_boy` (
  `Delivery_Boy_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL,
  PRIMARY KEY (`Delivery_Boy_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`Delivery_Boy_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Tarang', 'Goyal', '133132', 'E-17 OBH , IIIT Hyderabad', '10000', 'M', '1993-02-21', '2012-08-01'),
(2, 'Saksham', 'Maheshwari', '657569', 'E-17 OBH , IIIT Hyderabad', '10000', 'M', '1992-10-21', '2012-08-01'),
(3, 'Rajat', 'Agarwal', '596509', 'E-16 OBH , IIIT Hyderabad', '10000', 'M', '1993-02-21', '2012-08-01'),
(4, 'Vidit', 'Bhaskar', '344244', 'E-15 OBH , IIIT Hyderabad', '10000', 'M', '1993-10-22', '2012-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_2`
--

DROP TABLE IF EXISTS `delivery_boy_2`;
CREATE TABLE IF NOT EXISTS `delivery_boy_2` (
  `Boy_Id` int NOT NULL,
  `Delivery_Id` int NOT NULL,
  KEY `Boy_Id` (`Boy_Id`),
  KEY `Delivery_Id` (`Delivery_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_delivery`
--

DROP TABLE IF EXISTS `home_delivery`;
CREATE TABLE IF NOT EXISTS `home_delivery` (
  `Delivery_Id` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Cust_Id` int NOT NULL,
  `Order_Id` int NOT NULL,
  PRIMARY KEY (`Delivery_Id`),
  KEY `Cust_Id` (`Cust_Id`),
  KEY `Order_Id` (`Order_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_delivery`
--

INSERT INTO `home_delivery` (`Delivery_Id`, `Address`, `Contact`, `Cust_Id`, `Order_Id`) VALUES
(1, 'JNNCE', '938912', 1, 1),
(2, 'JNNCE', '938912', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `Ingredient_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Quantity` varchar(15) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Supp_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Ingredient_Id`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `Manager_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL,
  PRIMARY KEY (`Manager_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Manager_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Rishi Raj', 'Singh Jhelumi', '9642540626', 'E-28 OBH , IIIT Hyderabad', '30000', 'M', '1992-09-29', '2012-08-01'),
(2, 'Prachish', 'Gora', '9581871321', 'E-27 OBH , IIIT Hyderabad', '30000', 'M', '1993-11-18', '2012-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `Menu_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Category` varchar(30) NOT NULL,
  PRIMARY KEY (`Menu_Id`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Menu_Id`, `Name`, `Price`, `Type`, `Category`) VALUES
(1, 'Vegetable Pakora', '3.00', 'Veg', 'Starters'),
(2, 'Vegetable Samosa', '3.00', 'Veg', 'Starters'),
(3, 'Onion Bhaji ', '3.00', 'Veg', 'Starters'),
(4, 'Potato and Mushroom Chaat', '3.00', 'Veg', 'Starters'),
(5, 'Mushroom Garlic Fry', '3.00', 'Veg', 'Starters'),
(6, 'Chicken Tikka', '4.00', 'Non-Veg', 'Starters'),
(7, 'Tandoori Chicken', '4.00', 'Non-Veg', 'Starters'),
(8, 'Chicken Garlic Fry', '4.00', 'Non-Veg', 'Starters'),
(9, 'Chicken Tikka on Puree', '4.00', 'Non-Veg', 'Starters'),
(10, 'Lamb Tikka', '4.00', 'Non-Veg', 'Starters'),
(11, 'Tandoori King Prawn', '6.95', 'Non-Veg', 'SeaFood'),
(12, 'King Prawn Rosun', '5.95', 'Non-Veg', 'SeaFood'),
(13, 'King Prawn on Puree', '5.95', 'Non-Veg', 'SeaFood'),
(14, 'Prawn Bhuna on Puree', '3.95', 'Non-Veg', 'SeaFood'),
(15, 'Prawn Cocktail', '3.95', 'Non-Veg', 'SeaFood'),
(16, 'Chi/Lam Sashlik Chi', '9.95', 'Non-Veg', 'Tandoori Specials'),
(17, 'Tandoori Deluxe', '12.95', 'Non-Veg', 'Tandoori Specials'),
(18, 'Tandoori Chicken Main', '9.95', 'Non-Veg', 'Tandoori Specials'),
(19, 'Chicken Tikka', '7.95', 'Non-Veg', 'Tandoori Specials'),
(20, 'Lamb Tikka', '9.95', 'Non-Veg', 'Tandoori Specials'),
(21, 'Bombay Aloo ', '6.50', 'Veg', 'Vegetable Dishes'),
(22, 'Mushroom Bhaji ', '6.50', 'Veg', 'Vegetable Dishes'),
(23, 'Saag Dall', '6.50', 'Veg', 'Vegetable Dishes'),
(24, 'Mattor Paneer', '6.50', 'Veg', 'Vegetable Dishes'),
(25, 'Vegetable Roshun', '6.50', 'Veg', 'Vegetable Dishes'),
(26, 'Boiled Rice', '2.50', 'Veg', 'Side Orders - Rice'),
(27, 'Keema Pilau Rice', '3.50', 'Non-Veg', 'Side Orders - Rice'),
(28, 'Mushroom Rice', '3.20', 'Veg', 'Side Orders - Rice'),
(29, 'Garlic Naan', '3.00', 'Veg', 'Side Orders - Bread'),
(30, 'Stuffed Naan', '3.50', 'Veg', 'Side Orders - Bread'),
(31, 'Chapati', '1.00', 'Veg', 'Side Orders - Bread'),
(32, 'Green Salad', '2.00', 'Veg', 'Side Orders - Sundries'),
(33, 'Spice Popadum', '0.80', 'Veg', 'Side Orders - Sundries'),
(34, 'Chutney', '0.75', 'Veg', 'Side Orders - Sundries'),
(35, 'Ras Malai', '2.95', 'Veg', 'Dessert'),
(36, 'Ice Cream', '2.95', 'Veg', 'Dessert'),
(37, 'Gulab Jamun', '2.95', 'Veg', 'Dessert'),
(38, 'Kulfi', '2.95', 'Veg', 'Dessert'),
(40, 'gobi', '60', 'spicy', 'veg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_bill`
--

DROP TABLE IF EXISTS `menu_bill`;
CREATE TABLE IF NOT EXISTS `menu_bill` (
  `Order_Id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL,
  KEY `Order_Id` (`Order_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_bill`
--

INSERT INTO `menu_bill` (`Order_Id`, `Name`, `Quantity`, `Price`) VALUES
(1, 'Vegetable Pakora', '1', '3'),
(1, 'Vegetable Samosa', '1', '3'),
(2, 'Vegetable Pakora', '4', '3'),
(2, 'Vegetable Samosa', '4', '3'),
(3, 'Chutney', '2', '0.75'),
(3, 'Ras Malai', '2', '2.95'),
(4, 'Chutney', '2', '0.75'),
(4, 'Ras Malai', '2', '2.95');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
CREATE TABLE IF NOT EXISTS `owner` (
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Rest_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Fname`,`Lname`,`Contact`),
  KEY `Rest_Name` (`Rest_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Fname`, `Lname`, `Contact`, `Rest_Name`) VALUES
('Yashas', 'Vadalia', '9999999999', 'Tandoori By Nature');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Opening_Closing_Time` varchar(100) NOT NULL,
  `Details` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Name`, `Location`, `Contact`, `Opening_Closing_Time`, `Details`) VALUES
('Tandoori By Nature', 'Gandhi Nagar Jammu And Kashmir', '09642540626/09581871321', '10:00 AM - 12:00 AM', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

DROP TABLE IF EXISTS `sale_detail`;
CREATE TABLE IF NOT EXISTS `sale_detail` (
  `Date` date NOT NULL,
  `Daily` int NOT NULL,
  `Weekly` int DEFAULT NULL,
  `Monthly` int DEFAULT NULL,
  `Rname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Details` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Fname`,`Lname`,`Address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Fname`, `Lname`, `Address`, `Contact`, `Details`) VALUES
('Aneeq', 'Dholakia', 'E-15 OBH , IIIT Hyderabad', '678668', 'Provides Sea Food.'),
('Sharad', 'Gupta', 'E-16 OBH , IIIT Hyderabad', '856855', 'Provides Grocery.'),
('Varun', 'Vashisht', 'E-121 OBH , IIIT Hyderabad', '123211', 'Provides Non-Veg Stuff.');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
CREATE TABLE IF NOT EXISTS `tables` (
  `Table_Number` varchar(9) NOT NULL,
  `Details` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Table_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`Table_Number`, `Details`) VALUES
('1', 'Capacity 4 People'),
('2', 'Capacity 4 People Near Window'),
('3', 'Capacity 3 People'),
('4', 'Capacity 2 People'),
('5', 'Capacity 8 People Family Table');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `Fname`, `Lname`, `Password`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'Akhil', 'Jindal', 'chota'),
(3, 'Deepak', 'Goyal', 'manga'),
(5, 'ram', 'rr', 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

DROP TABLE IF EXISTS `waiter`;
CREATE TABLE IF NOT EXISTS `waiter` (
  `Waiter_Id` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL,
  PRIMARY KEY (`Waiter_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`Waiter_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Raghav', 'Sharma', '123456', 'E-22 OBH , IIIT Hyderabad', '8000', 'U', '1993-10-12', '2012-08-01'),
(2, 'Rishav', 'Kumar', '132244', 'E-28 OBH , IIIT Hyderabad', '8000', 'M', '1992-12-22', '2012-08-01'),
(3, 'Vinil', 'Narang', '213122', 'E-27 OBH , IIIT Hyderabad', '8000', 'M', '1993-05-12', '2012-08-01'),
(4, 'Bharat', 'Jain', '121232', 'E-26 OBH , IIIT Hyderabad', '8000', 'M', '1992-03-12', '2012-08-01'),
(5, 'Megan', 'Fox', '213122', 'Hollywood USA', '9000', 'F', '1986-10-13', '2012-08-01'),
(6, 'Sunny', 'Leone', '323322', 'Bollywood INDIA', '9000', 'F', '1982-10-13', '2012-08-01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Table_Num`) REFERENCES `tables` (`Table_Number`);

--
-- Constraints for table `delivery_boy_2`
--
ALTER TABLE `delivery_boy_2`
  ADD CONSTRAINT `delivery_boy_2_ibfk_1` FOREIGN KEY (`Boy_Id`) REFERENCES `delivery_boy` (`Delivery_Boy_Id`),
  ADD CONSTRAINT `delivery_boy_2_ibfk_2` FOREIGN KEY (`Delivery_Id`) REFERENCES `home_delivery` (`Delivery_Id`);

--
-- Constraints for table `home_delivery`
--
ALTER TABLE `home_delivery`
  ADD CONSTRAINT `home_delivery_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `home_delivery_ibfk_2` FOREIGN KEY (`Order_Id`) REFERENCES `bill` (`Order_Id`);

--
-- Constraints for table `menu_bill`
--
ALTER TABLE `menu_bill`
  ADD CONSTRAINT `menu_bill_ibfk_1` FOREIGN KEY (`Order_Id`) REFERENCES `bill` (`Order_Id`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`Rest_Name`) REFERENCES `restaurant` (`Name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-05-09 12:28:53
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shop_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`, `qty`) VALUES
('udog7tqOKj0BycOoJFYz', 'y125zrLsfYI1GMbJ5F6p', 'cQtqQmrYZaDRXM05qLH5', '4999', '1');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('x2GXFosvUrrkYCpNKdge', 'y125zrLsfYI1GMbJ5F6p', 'OULINGYI', '123', '123@umac.mo', 'AD1, AD2, Macau, China - 123456', 'home', 'credit or debit card', 'krsmlYQ1MnvfTGNvY9XK', '299', '2', '2025-05-07', 'canceled'),
('f2Vgwa26PcXKeZ8mfnhW', 'y125zrLsfYI1GMbJ5F6p', 'OULINGYI', '123', '123@umac.mo', 'AD1, AD2, Macau, China - 123456', 'home', 'credit or debit card', 'cQtqQmrYZaDRXM05qLH5', '4999', '1', '2025-05-07', 'in progress'),
('YORtY4TENvweeI45D2oI', 'y125zrLsfYI1GMbJ5F6p', 'OULINGYI', '123', '123@umac.mo', 'AD1, AD2, Macau, 中国大陆 - 123456', 'home', 'cash on delivery', 'krsmlYQ1MnvfTGNvY9XK', '299', '1', '2025-05-07', 'in progress'),
('LJVh2ZKWXbwRgm8sqRQB', 'y125zrLsfYI1GMbJ5F6p', 'OULINGYI', '123', '123@umac.mo', '123, 123, 123, 123 - 123', 'home', 'cash on delivery', 'ngHdUChdH7FPXJu46A6n', '5999', '1', '2025-05-07', 'in progress');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
('krsmlYQ1MnvfTGNvY9XK', 'bag', '299', 'aRuuAsLjU3jslk2OhALY.webp'),
('cQtqQmrYZaDRXM05qLH5', 'cycle', '4999', 'HYCcRFSpwrm6lw0BB0Sr.webp'),
('sNsxpnLE1YOLotxg9vQ6', 'laptop', '9999', 'lWFcJVJkdtYh2GuhT9ay.webp'),
('vFR1OcWmESi9YCOQWO84', 'shoes', '199', 'dlmyK09CZbDf0v5ibzYc.webp'),
('ngHdUChdH7FPXJu46A6n', 'smartphone', '5999', 'd5BbcXahamzj9CPxEAKQ.webp'),
('OASm72neFF7t1j6rdz24', 't-shirt', '99', 'ZxtV19phAdAWRcuQLx7a.webp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

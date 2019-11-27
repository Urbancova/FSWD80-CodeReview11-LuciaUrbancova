-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 05:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codereview11_urbancova_travelmatic`
--
CREATE DATABASE IF NOT EXISTS `codereview11_urbancova_travelmatic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `codereview11_urbancova_travelmatic`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aheadline` varchar(30) NOT NULL,
  `abio` varchar(500) NOT NULL,
  `aimage` varchar(60) NOT NULL,
  `addedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `datetime`, `username`, `password`, `aname`, `aheadline`, `abio`, `aimage`, `addedby`) VALUES
(1, 'November-25-2019 14:35:52', 'Lucia', '1234', '', '', 'HTML, CSS, Angular, Javascript, Firebase, PHP, API, AJAX, WordPress, GitHub, etc. (Please, refer to my project portfolio for more details).', 'lucy.jpg', ''),
(2, 'November-26-2019 09:36:58', 'Johnsy', '1234', 'Johnsy Bacsi', '', '', '', ''),
(3, 'November-26-2019 09:37:57', 'Silva', '1234', 'Baratnom', '', '', '', ''),
(4, 'November-27-2019 11:12:56', 'Joe', '1234', 'Joe Doe', '', '', '', 'Lucia'),
(5, 'November-27-2019 15:58:14', 'acilio', '123123', 'Acilio', '', '', '', 'Lucia');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `author`, `datetime`) VALUES
(1, 'Events', 'Lucy', 'November-23-2019 01:35:01'),
(2, 'Food', 'Lucy', 'November-23-2019 06:45:55'),
(3, 'Sports', 'Lucy', 'November-23-2019 06:46:42'),
(4, 'Technology', 'Lucy', 'November-23-2019 06:46:54'),
(6, 'Stock Market', 'Lucy', 'November-26-2019 10:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `datetime`, `name`, `email`, `comment`, `approvedby`, `status`, `post_id`) VALUES
(6, 'November-24-2019 14:08:55', 'Ervin', 'ervin@mail.cz', 'coming too', 'Lucia Urbancova', 'ON', 7),
(7, 'November-24-2019 14:09:35', 'zuzka', 'zuzka@mail.com', 'let\'s meet there', 'Lucia Urbancova', 'ON', 7),
(8, 'November-24-2019 14:10:11', 'keresz', 'keresz@mail.com', 'coming too', 'Lucia Urbancova', 'ON', 7),
(9, 'November-24-2019 14:10:51', 'miro', 'miro@mail.com', 'also meet you there', 'Lucia Urbancova', 'ON', 7),
(10, 'November-24-2019 14:11:30', 'marianca', 'marianca@mail.com', 'I was there last year, it was fine', 'Lucia Urbancova', 'ON', 7),
(13, 'November-26-2019 14:04:30', 'Clemens', 'clemens@mail.com', 'fat aber net', 'Lucia Urbancova', 'ON', 7),
(14, 'November-26-2019 14:38:54', 'Ervin', 'ervin@mail.cz', 'horkyze slize na veceru', '', 'ON', 5),
(15, 'November-27-2019 15:54:07', 'Acilio', 'acilio@cf.com', 'Hi, how to get bigger quads!', '', 'ON', 12);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(1200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(3, 'November-23-2019 09:40:49', 'Best Places to Workout in Vienna', 'Sports', 'Lucy', 'fitness1.png', 'DAS GYM., Holmes Palace, Iron Fist Gym Vienna. Besides the diverse and modern equipment, these places have much more to offer. They provide different martial arts training, outdoor sports, personal consultation with top tier athletes, wellness, diet & health support, and additional, complementary wide-spectrum possibilities that strengthen your body and soul.'),
(4, 'November-23-2019 09:49:59', 'The best bar in Vienna', 'Food', 'Lucy', '1516.jpg', '1516 Brewery is the best! Great selection of beers, IPA, Pale Ale, homemade and imported from the best beer-producing countries, like Belgium, Czech Republic & Slovakia, Ireland, Netherland, etc. The only problem is that they have alway full house after work and during the weekends. '),
(5, 'November-23-2019 10:01:32', 'Best Restaurants for a Date in Vienna', 'Food', 'Lucy', 'loft.jpg', 'Das Loft is a wonderful place to have your date. Besides the delicious, decorative, high-quality food, you have the possibility to stare through the window to beautiful Vienna in case the date does not go as expected, on the other hand, if it goes well, maybe you can stay in the hotel to party.  '),
(6, 'November-23-2019 10:10:37', 'Interesting Events in 2020 in Vienna', 'Events', 'Lucy', 'hanf.png', '2020 HANFEXPO will take place for the second time in the heart of Europe at the MARX HALLE in Vienna. From 24th to 26th April 180 national and international exhibitors will present their products for about 8.000 visitors on 13.000 sqm of exhibition grounds. Great place to start your Friday night with your friends! '),
(7, 'November-23-2019 13:04:51', 'Thanksgiving in Hard Rock Cafe Vienna', 'Events', 'Lucy', 'RC.jpg', 'On Thursday the 28th of November, you can enjoy a traditional turkey meal with all the trimmings available all day long. Slow-roasted turkey breast, roasted fresh vegetables, home-style classic stuffing, creamy sweet potato mash, cranberry sauce finished with traditional turkey gravy. Classic pumpkin pie topped with caramel sauce, toasted walnuts and house-made whipped cream. Grey Goose Vodka, Kahlúa, fresh-brewed espresso. If it is not enough, the entertainment is guaranteed by gospel choir One Voice directed by Giorgio Ammirabile, piano player Giacomo Ferrari starting at 8 pm.'),
(10, 'November-24-2019 07:41:22', 'Vienna International Film Festival 2020', 'Events', 'Lucy', 'film.jpg', 'Now, when the whole world has a tendency toward commercialization, the free spirit, new ideas, an independent point of view and novel approaches are highly appreciated at the festival. Not the budget of the film but the talent is the criteria at this film event. Hundreds of film making artists will definitely surprise and amaze you.'),
(12, 'November-27-2019 15:51:09', 'Quads', 'Events', 'Joe', 'loft.jpg', '              Here you can find best quad routines              ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Foreign_Relation` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

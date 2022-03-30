-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 07:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(4, 'ROLE_USER'),
(5, 'ROLE_USER'),
(6, 'ROLE_USER'),
(7, 'ROLE_USER'),
(8, 'ROLE_USER'),
(9, 'ROLE_USER'),
(10, 'ROLE_USER'),
(11, 'ROLE_USER'),
(12, 'ROLE_USER'),
(13, 'ROLE_USER'),
(14, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `starmeter` int(11) NOT NULL,
  `targetdate` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `description`, `starmeter`, `targetdate`, `user`) VALUES
(2, 'Pergi ke Gym', 9, '2022-05-04', 'Jongkook'),
(4, 'Blind Date', 9, '2022-04-28', 'Somin'),
(5, 'Pergi ke sauna', 6, '2022-06-06', 'Sechan'),
(7, 'Go to Sleep Cafe', 7, '2022-07-07', 'Jihyo'),
(10, 'Jemput Naeun', 8, '2022-05-21', 'Jaesuk');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `first_name`, `last_name`, `password`) VALUES
(4, 'mina@email.com', 'mina', 'mina', '$2a$10$R4ndORydO6fIJJPr2hkVY.gprLIzm7tAhlDntalLax4.5F4R5gVMW'),
(5, 'sana@email.com', 'sana', 'sana', '$2a$10$fC50K9nR3pCsLWCXKeF0jOrlYhiTHFJZGBMURSjHzUfBX4Mo/VOUW'),
(6, 'momo@email.com', 'momo', 'momo@email.com', '$2a$10$qLm8Mo1U9ieE.8jVfb9C6.ZG2htNNU9Qnx.JivtjCR5UQiylWpuzq'),
(7, 'yujin@email.com', 'yujin', 'yujin', '$2a$10$Q160z88SPrknARx.KaFQ/uKzJ1956YoxxhBESwrYNrVg9Heu5uNaS'),
(8, 'nayeon@email.com', 'nayeon', 'nayeon', '$2a$10$lLGR9kOGCGJkva1EbGHYoeW1CiroBaXJCgoFcnxOwPGjRGepU41AG'),
(9, 'eugene@email.com', 'eugene', 'eugene', '$2a$10$O9L7/wdcPoKvZRTz4TYkBesJvTlzokrmNLerypLIAa4OXuw4vxAPC'),
(10, 'jihyo@email.com', 'jihyo', 'jihyo', '$2a$10$qZKQChxqXTvRzWvJhZpqaOvn0XGzD6Fox53c/C62VyQtIgzKn5UZ6'),
(11, 'tzuyu@email.com', 'tzuyu', 'tzuyu', '$2a$10$xPVJL0WG6eJagkpUGY/N9eGqtg8r.hWTRVKbW7OpHacSDf3Okk0Ou'),
(12, 'kwangsoo@email.com', 'Kwangsoo', 'Lee', '$2a$10$7X47rY.OL6eHFjF7oJr2LORc2SuR2ka.00ybpEu.G2AcuHzwhltTa'),
(13, 'sulyoon@email.com', 'sulyoon', 'kim', '$2a$10$cwzXirm845oQN.MXB2h2Be6EtZ.A21p3YLCfEh7E3lBvtOaJoMgkS'),
(14, 'mana@email.com', 'mana', 'mana', '$2a$10$RRj/F395orzb0Dpk/7TnWOGc/kWrmM5IY8zXej0OIE6EVcnQh/Y2a');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `cons_user_id` (`user_id`),
  ADD KEY `cons_role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `cons_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cons_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

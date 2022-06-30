-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 04:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node-foody`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idOrder` int(11) NOT NULL,
  `idCart` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idOrder`, `idCart`, `qty`, `user`) VALUES
(19, 4, 1, '506f1e04-3622-4b52-9bbe-532a074d4a33'),
(20, 2, 1, '85d24a98-47cb-400e-ad3a-a100ea28627e'),
(21, 3, 1, '85d24a98-47cb-400e-ad3a-a100ea28627e'),
(27, 4, 1, '4c5a517a-bb4c-4d28-9c73-2fad86c00a1a');

-- --------------------------------------------------------

--
-- Table structure for table `finalpayment`
--

CREATE TABLE `finalpayment` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `idPayment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalpayment`
--

INSERT INTO `finalpayment` (`id`, `price`, `payment`, `date`, `user`, `idPayment`) VALUES
(68, 25000, 'Gopay', '2022-01-05 20:45:15', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'ChYLDBcQCQwBCw=='),
(69, 85000, 'Gopay', '2022-01-05 23:29:52', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DAQFFhU='),
(70, 76000, 'Dana', '2022-01-07 11:04:30', '5c383d9c-016a-4ed1-9335-1ef1e863c704', 'wokdfeno='),
(71, 76000, 'Dana', '2022-01-07 11:09:28', '20016251-f7bb-4d2e-8fa7-f7fa34a06deb', 'wokdfeno='),
(72, 25000, 'Gopay', '2022-01-07 19:15:27', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'Ew4IAwEVBAwTAA=='),
(73, 25000, 'Dana', '2022-01-07 20:47:25', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'AwwMAg4='),
(74, 25000, 'Dana', '2022-01-07 20:52:07', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DxEQFwE='),
(75, 25000, 'Gopay', '2022-01-07 21:20:38', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'BBUJBBE='),
(76, 25000, 'Dana', '2022-01-07 21:36:52', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'CQwRCQ0='),
(77, 25000, 'Dana', '2022-01-07 21:41:00', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DBQKAQA='),
(78, 60000, 'Dana', '2022-01-08 11:32:37', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'DgwMDwc='),
(79, 85000, 'Gopay', '2022-01-08 11:36:32', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'FBIOFQw='),
(80, 30000, 'Cash', '2022-01-08 11:38:48', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'DA8NChg='),
(81, 25000, 'Cash', '2022-01-08 11:47:18', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'CQIMDxM='),
(82, 25000, 'Dana', '2022-01-08 13:49:37', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'BwEMCA4='),
(83, 25000, 'Gopay', '2022-01-08 13:50:46', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DQgDCBc='),
(84, 35000, 'Dana', '2022-01-08 14:08:45', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FwcODQQ='),
(85, 25000, 'Dana', '2022-01-09 16:45:21', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FBAQExg='),
(86, 25000, 'Gopay', '2022-01-09 16:52:30', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DBENAgM='),
(87, 25000, 'Cash', '2022-01-09 16:54:48', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FAMPDAY='),
(88, 25000, 'Dana', '2022-01-09 16:57:01', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FBcFAgI='),
(89, 250000, 'Cash', '2022-01-09 20:15:51', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'GAMTCRc='),
(90, 30000, 'Cash', '2022-01-09 20:31:57', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FgkEFA0='),
(91, 30000, 'Dana', '2022-01-10 13:05:43', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'Dg0MAwI='),
(92, 25000, 'Cash', '2022-01-11 09:05:13', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DwcSFww='),
(93, 25000, 'Cash', '2022-01-11 09:06:26', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'ARcPBA0='),
(94, 50000, 'Dana', '2022-01-11 20:43:46', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'ARMBBwg='),
(95, 85000, 'Cash', '2022-01-11 20:45:07', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'GBgKBw8='),
(96, 25000, 'Cash', '2022-01-11 20:50:51', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'BxgPGA8='),
(97, 30000, 'Dana', '2022-01-11 20:56:35', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'GA0EFQg='),
(98, 25000, 'Gopay', '2022-01-11 21:17:59', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'EBYEAhQ='),
(99, 25000, 'Cash', '2022-01-11 21:31:14', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'ChMAABI='),
(100, 25000, 'Cash', '2022-01-11 21:33:41', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'DRUADg4='),
(101, 25000, 'Cash', '2022-01-11 21:46:51', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'FRIGCQg='),
(102, 85000, 'Cash', '2022-01-11 21:49:30', 'f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'DAIXEBg='),
(103, 110000, 'Cash', '2022-01-12 14:42:00', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'CAkQCgg='),
(104, 135000, 'Cash', '2022-01-12 15:03:42', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'BRILFg0='),
(105, 135000, 'Cash', '2022-01-12 15:28:43', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'EBQSFwI='),
(106, 25000, 'Cash', '2022-01-12 15:31:09', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'CQkPDAE='),
(107, 50000, 'Cash', '2022-01-12 15:35:05', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DRISCxA='),
(108, 50000, 'Cash', '2022-01-12 15:38:59', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'EQUEEww='),
(109, 50000, 'Cash', '2022-01-12 15:40:07', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'EBIKFBY='),
(110, 50000, 'Cash', '2022-01-12 15:42:27', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'EQwFDQQ='),
(111, 25000, 'Cash', '2022-01-12 15:46:13', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'BBUIEAc='),
(112, 50000, 'Cash', '2022-01-12 15:59:53', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'CA8HBwE='),
(113, 25000, 'Cash', '2022-01-12 16:08:27', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DgUBFAE='),
(114, 135000, 'Cash', '2022-01-12 16:22:11', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'DxgOARY='),
(115, 85000, 'Dana', '2022-01-14 14:43:47', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FAYCFhQ='),
(116, 25000, 'Cash', '2022-01-14 14:45:46', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'AQwXFhQ='),
(117, 110000, 'Cash', '2022-01-18 17:06:31', '20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'FxMFFxA=');

-- --------------------------------------------------------

--
-- Table structure for table `historypayment`
--

CREATE TABLE `historypayment` (
  `idOrder` int(11) NOT NULL,
  `idCart` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `metod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `nama_va` varchar(255) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`nama_va`, `nomor`, `id`) VALUES
('Gopay', '11234567', 1),
('Dana', '857809697', 2),
('Cash', 'pay cash at the cashier', 5);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `star` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `person` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `name`, `star`, `price`, `desc`, `image`, `country`, `person`, `qty`) VALUES
(1, 'Bakso', 5, 25000, 'Ini adalah bakso. Bakso yang terbuat dari gilingan daging berkualitas juga ditambahkan topping yang tidak kalah enaknya menjadikan bakso sebagai makanan yang tidak akan ditolak kecuali cinta mu padanya. Cocok untuk di musim hujan saat ini.', 'https://th.bing.com/th/id/OIP.lguxiNuzfLphGKVCfe5mOQHaE8?w=302&h=201&c=7&r=0&o=5&dpr=1.5&pid=1.7', 'Indonesia', 1, 1),
(2, 'Ayam Bakar', 5, 85000, 'Ayam Bakar buatan bunda memang lebih enak ya. Dengan rempah pilihan dan dibakar dengan suhu sempurna menjadikan rasa dan aroma dari ayam SANGAT SEMPURNA', 'https://asset.kompas.com/crops/gkIp6_DNkYJSg3tNfJHyo9xhv8g=/7x245:859x813/750x500/data/photo/2021/02/22/60337a258134d.jpg', 'Indonesia', 4, 1),
(3, 'Sate Ayam', 4, 30000, 'Potongan daging ayam yang ditusuk dan dimarinasi dengan baik serta dibakar menggunakan arang, menjadikan rasa sate ayam nikmat. Jangan lupa tambahkan bumbu kacang dan lontong. Dijamin bisa menjadi penyemangan senja mu!', 'https://adahobi.com/wp-content/uploads/2020/04/bca917f783d1c580c73d35d553b8bca5.jpg?ezimgfmt=rs:372x248/rscb1/ng:webp/ngcb1', 'Indonesia', 2, 1),
(4, 'Teh Tarik', 4, 25000, 'Teh asal aceh ini menjadi minuman favorit bagi penyuka minuman, rasanya yang khas membuat kalian tergoda untuk meminumnya. ', 'https://asset.kompas.com/crops/SeCVvUC7y9lnF8ZW4rGx_jMlwaQ=/64x57:936x639/750x500/data/photo/2021/09/15/6141f0bed6974.jpg', 'Indonesia', 1, 1),
(6, 'Spaghetti', 4, 35000, 'Makanan Asal Italia yang Numero Uno Tiada Tara', 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1602918888/milnrgambcaeh0p5yt3d.jpg', 'Italia', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `registered` datetime NOT NULL,
  `login` datetime NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `registered`, `login`, `fullname`, `address`) VALUES
('11bfbf46-e2cb-42f4-9a08-0ee015862089', 'mutia_khair', '$2a$10$uQZUqIEq0wyMYd339mg8qe/HKbt3TRJaTPNa4Ie8Rw5ol8OwWpK2a', '2022-01-06 18:54:09', '2022-01-10 15:28:18', 'Meutia K.', 'Bojong Gede, Bogor'),
('20016251-f7bb-4d2e-8fa7-f7fa34a06deb', 'mantap', '$2a$10$oDrkIMStWJyyDjwEk.9SBOpyX7AqewjRPpiu7VWpoGiFAT/3RVyde', '2021-12-10 17:24:21', '0000-00-00 00:00:00', 'Mantap Mania', 'Pancoran, Jakarta'),
('20e51d8a-c5cf-4bbe-91b8-49b495d20ad9', 'neozi', '$2a$10$avwfRXslwfwuMA8Dq8pOGOOXfpuHqVryTOPNvg4/aibSRZ1iH5Sti', '2021-12-12 21:39:56', '2022-01-18 15:50:17', 'Neozi', 'Bojong Gede, Bogor'),
('4c5a517a-bb4c-4d28-9c73-2fad86c00a1a', 'rezafadilahr', '$2a$10$rf2DdfTey8fWRkMTDFMrquBe1aP/CRYOAKHSVcqAJls/DHVx/fEk2', '2021-12-29 14:27:09', '2021-12-29 14:27:40', 'Reza Fadilah Rohman', 'jl.nurul hidayah'),
('506f1e04-3622-4b52-9bbe-532a074d4a33', 'meu12', '$2a$10$UCzUGEmbLoBj0.SzYRri6u9gTmgLtFpWTOlJjJU6R1Y9nyPaEHftG', '2021-12-26 15:05:31', '2021-12-26 15:06:39', 'Meutia', 'Bojong gede'),
('5c383d9c-016a-4ed1-9335-1ef1e863c704', 'jefrii', '$2a$10$uJbZbkepn4N3rJMm1jl7/OY7FSTkZYNV/GugC9SoAvX9VRl88J1Fy', '2021-12-29 14:30:22', '2021-12-29 14:30:34', 'Jefri Nichol', 'bojong'),
('74fc2e0f-9e6f-4e65-8390-2b1a3ac42041', 'zggxbxbxb', '$2a$10$vKFrbUof.50H0bbSkyfY..jV0LcUhZzLzS6HIbwbZ.2lmIMVbBzwm', '2022-01-11 09:29:55', '0000-00-00 00:00:00', 'synxhfjg', 'zgyzjjfsgnsmvzjg'),
('7a343e26-316f-4d82-9c4e-e29913795ae7', 'mantap_uhuy', '$2a$10$fIdP6RgBmbHIj.Ac.Li/p.FdzsEeQrlmt/Jz2hR6flhn/FgTv4QYa', '2022-01-07 10:08:36', '0000-00-00 00:00:00', 'Meutia K.', 'Bojong Gede, Bogor'),
('85d24a98-47cb-400e-ad3a-a100ea28627e', 'jimin', '$2a$10$wtyj4AVMpL.CffLl1qqg2uWYH5YpPrxBTWXCZ9Xdtqf1RPWfo/ndW', '2021-12-27 15:46:16', '2021-12-27 15:46:35', 'Rania', 'pamulang'),
('cea5a64e-039b-4517-b82f-55785c524ecb', 'muiyukk', '$2a$10$gtg2PsuqvYJcLxMkl3k9Xeo2f.tIcLvKjdyIellCU/vS0ko/anPS6', '2022-01-09 19:25:48', '0000-00-00 00:00:00', 'miyutia', 'bojonggede,  bogor'),
('f5c323be-a43c-46dd-9b7b-25dbc3bb1f35', 'arjeeex', '$2a$10$NvZdNbijb3t9HBvV3/IJ5.UWFaZf8RJrUc82KcIvzBkMKQxJb.dB.', '2022-01-08 11:27:20', '2022-01-11 21:49:07', 'rismaa', 'Bojonggede');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`);

--
-- Indexes for table `finalpayment`
--
ALTER TABLE `finalpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historypayment`
--
ALTER TABLE `historypayment`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idCart` (`idCart`) USING BTREE;

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `finalpayment`
--
ALTER TABLE `finalpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `historypayment`
--
ALTER TABLE `historypayment`
  ADD CONSTRAINT `historypayment_ibfk_1` FOREIGN KEY (`idCart`) REFERENCES `produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

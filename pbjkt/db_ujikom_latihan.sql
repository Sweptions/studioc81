-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 11:26 AM
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
-- Database: `db_ujikom_latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `iduser` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`iduser`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'user1', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_printer`
--

CREATE TABLE `tb_printer` (
  `idprinter` int(10) NOT NULL,
  `namaprinter` varchar(50) NOT NULL,
  `spesifikasi` varchar(50) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_printer`
--

INSERT INTO `tb_printer` (`idprinter`, `namaprinter`, `spesifikasi`, `harga`) VALUES
(11, '<b>27 Sabtu <b> ', '<B> MEI <b>', '<b> 2023 <b>'),
(12, 'Mida (Photobooth)', '11.00 - 14.00 Siang', ' Gedung Data Tomang'),
(13, 'Tami (Birthday Abia) (Photobooth)', '19.00 - 21.00 Siang', 'Aloft South , Jakarta'),
(14, 'Rias ( PhotoBooth )', '11.00 - 14.00 Siang', ' Telkom Landmark, Jakarta Selatan'),
(15, 'Karina ( Photobooth )', '11.00 - 15.00 Siang ', 'Teras Tree Tendean '),
(16, 'Lita ( Spin 360)', '09.30 - 13.30 Spin Siang', 'Balai Prajurit Cilandak , Jakarta Selatan'),
(17, 'Shafira ( PhotoBooth)', '11.00 - 13.00 Siang', 'Djamur Djawata Office, Bekasi'),
(18, 'Mira ( Photobooth) ', '10.00 - 13.00 Siang', 'Hotel Acacia , Jakarta Pusat'),
(19, '( PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(20, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(21, '(PHOTOBOOTH) ', '00.00 - 00.00 MALAM', ''),
(22, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(23, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(24, '( PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(25, '( SPIN 360)', '00.00 - 00.00 MALAM', ''),
(26, '( SPIN 360 )', '00.00 - 00.00 MALAM', ''),
(27, '( SPIN 360 ) ', '00.00 - 00.00 SIANG', ''),
(28, '<B> 28 MINGGU <b>', '<b> Mei <b>', '<b> 2023 <b>'),
(29, 'Desy ( Photobooth)', '10.00 - 13.00 SIANG', 'Al Muhajirin , Bekasi'),
(30, 'Sabrina ( Spin 360)', '11.00 - 14.00 SPIN SIANG', 'Gedung Serbaguna Cibinong, Kabupaten Bogor'),
(31, 'Friska ( Photobooth)', '18.00 - 21.30 MALAM', 'Grand Mercure Kemayoran , Jakarta Pusat'),
(32, 'Aura EO ( Ranie) ( Photobooth)', '14.00 - 18.00 OFFSIDE', 'Tamarin Cafe Larangan , Tangerang'),
(33, 'Helena ( Photobooth )', '19.00 - 22.00 MALAM', 'Whiz Prime Kelapa Gading , Jakarta Utara'),
(34, 'Mira ( Photobooth )', '12.00 - 15.00 SIANG', 'SMK Al Muhtadin , Depok'),
(35, 'Rendy ( PhotoBooth )', '09.00 - 15.00 SIANG', 'Ruko Mediteranian PIK , Jakarta Utara'),
(36, 'Amel & Pandu ( Photobooth)', '11.00 - 13.00 SIANG', 'Gor Sunter , Jakarta Utara'),
(37, 'ADVERT ( SPIN 360) ', '19.00 - 22.00 SPIN MALAM', 'HOTEL BOROBUDUR , JAKARTA PUSAT'),
(38, 'Daffa ( PhotoBooth )', '18.30 - 22.30 MALAM', 'DIRADJA HOTEL MAMPANG, JAKARTA SELATAN'),
(39, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(40, '( PHOTOBOOTH )', '00.00 - 00.00 MALAM', ''),
(41, '( PHOTOBOOTH )', '00.00 - 00.00 MALAM', ''),
(42, '( SPIN 360 )', '00.00 - 00.00 SPIN SIANG', ''),
(43, '( SPIN 360)', '00.00 - 00.00 SPIN MALAM', ''),
(44, '', '', ''),
(45, '<b> 3 SABTU <B>', '<B> JUNI <B>', '<B> 2023 <B>'),
(46, 'MILA ( Photobooth)', '11.00 - 13.00 SIANG', 'BEA CUKAI RAWAMANGUN , JAKARTA TIMUR'),
(47, 'NADIA ( PHOTOBOOTH)', '19.00 - 21.00 MALAM', 'CLUB HOUSE CAKUNG, JAKARTA TIMUR'),
(48, 'CUPA ( PHOTOBOOTH) ', '11.00 - 14.00 SIANG', 'WISMA ENDIE TANAH SEREAL, BOGOR'),
(49, 'DITA ( PHOTOBOOTH)', '09.00 - 13.00 SIANG', 'HOTEL PAKON , TANGERANG KOTA'),
(50, 'YULIA ( PHOTOBOOTH & SPIN 360)', '13.00 - 16.00 SIANG', 'PUSAT PERFILMAN USMAR ISMAIL, JAKARTA SELATAN'),
(51, 'NAJWA ( PHOTOBOOTH )', '18.46 - 21.45 MALAM', 'MENYUSUL '),
(52, 'ARMANDES ( PHOTOBOOTH)', '09.00 - 13.00 SIANG', 'GRAHA INSAN CITA , DEPOK'),
(53, 'MONO ( SPIN 360 )', '19.30 - 21.30', 'MENYUSUL'),
(54, '( PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(55, '( PHOTOBOOTH )', '00.00 - 00.00 SIANG', ''),
(56, '(PHOTOBOOTH) ', '00.00 - 00.00 MALAM', ''),
(57, '( PHOTOBOOTH ) ', '00.00 - 00.00 MALAM', ''),
(58, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(59, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(60, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(61, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(62, '', '', ''),
(63, '<b> 4 MINGGU <B>', '<B> JUNI <B>', '<B> 2023 <B>'),
(64, 'YUDHA (PHOTOBOOTH)', '10.00 - 13.00 SIANG', 'GEDUNG INSAN CITA , DEPOK'),
(65, 'DWIKI (PHOTOBOOTH)', '10.00 - 13.00 SIANG', 'GEDUNG DIREKTORAT '),
(66, 'DESI (PHOTOBOOTH)', '11.00 - 13.00 SIANG', 'AULA GEMILANG CIMANGGIS'),
(67, 'ANGGUN (PHOTOBOOTH)', '11.00 - 14.00 SIANG', 'MASJID JAMI DARUL LEBAK BULUS, JAKARTA SELATAN'),
(68, 'CANDRA (SPIN 360)', '11.00 - 13.00 SPIN SIANG', 'HOTEL SANTIKA MEGA , BEKASI'),
(69, 'MUTIA (PHOTOBOOTH)', '10.00 - 13.00 SIANG', 'GEDUNG DIREKTORAT TOPOGRAFI , JAKARTA PUSAT'),
(70, 'FATIMAH (PHOTOBOOTH)', '11.00 - 13.00 SIANG', 'GEDUNG BRI HAYAM WURUK, JAKARTA BARAT'),
(71, 'DESSI (PHOTOBOOTH)', '19.00 - 22.00 MALAM', 'SALEMBA RAYA , JAKARTA PUSAT'),
(72, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(73, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(74, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(75, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(76, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(77, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(78, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(79, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(80, '', '', ''),
(81, '<B> 10 SABTU <B>', '<B> JUNI <B>', '<B> 2023 <B>'),
(82, 'DONA (PHOTOBOOTH)', 'MENYUSUL.......', 'GRAHA CIBENING, BEKASI '),
(83, 'NASYWA ( (PHOTOBOOTH)', '10.00 - 12.00 SIANG', 'GEDUNG ALMAKA KALIDERES, JAKARTA BARAT'),
(84, 'SYIFA  (PHOTOBOOTH)', '18.00 - 21.00 MALAM', 'GOR RAWAMANGUN , JAKARTA TIMUR'),
(85, 'LISA (PHOTOBOOTH)', '11.00 - 16.00 SIANG', 'BUNGUR V KEBAYORAN LAMA , JAKARTA SELATAN'),
(86, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(87, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(88, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(89, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(90, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(91, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(92, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(93, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(94, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(95, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(96, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(97, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(98, '', '', ''),
(99, '<b> 11 MINGGU <b>', '<b> JUNI <B>', '<B> 2023 <B>'),
(100, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(101, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(102, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(103, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(104, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(105, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(106, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(107, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(108, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(109, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(110, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(111, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(112, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(113, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(114, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(115, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(117, '', '', ''),
(118, '<B> 17 SABTU <B>', '<B> JUNI <B>', '<B> 2023 <B>'),
(119, 'RIFA (PHOTOBOOTH)', '07.30 - 09.30 SIANG', 'TANAH MERDEKA CIRACAS , JAKARTA TIMUR'),
(120, 'NICA (PHOTOBOOTH)', '13.00 - 16.00 SIANG', 'SENTUL CITY , KAB.BOGOR'),
(121, 'DIAN (PHOTOBOOTH)', '10.00 - 13.00 SIANG', 'JOMBANG RAYA , TANGERANG SELATAN'),
(122, 'SAFIRAH (PHOTOBOOTH)', '11.00 - 13.00 SIANG', 'MAYJEN SUTOYO , JAKARTA TIMUR'),
(123, 'EFA (PHOTOBOOTH)', '19.00 - 21.00 MALAM', 'ISLAMIC CENTER , BEKASI'),
(124, 'FARAH (PHOTOBOOTH)', 'MENYUSUL.......', 'MENYUSUL.......'),
(125, '(PHOTOBOOTH)', '00.00 - 00.00 SIANG', ''),
(126, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(127, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(128, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(129, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(130, '(PHOTOBOOTH)', '00.00 - 00.00 MALAM', ''),
(131, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(132, '(SPIN 360)', '00.00 - 00.00 SIANG', ''),
(133, '(SPIN 360)', '00.00 - 00.00 MALAM', ''),
(134, '(SPIN 360)', '00.00 - 00.00 MALAM', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `idtransaksi` int(10) NOT NULL,
  `idprinter` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `userid2` int(10) NOT NULL,
  `printer_tbl` int(10) NOT NULL,
  `transaksi_tbl` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`idtransaksi`, `idprinter`, `jumlah`, `userid`, `userid2`, `printer_tbl`, `transaksi_tbl`) VALUES
(9, 12, 1, 2, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `tb_printer`
--
ALTER TABLE `tb_printer`
  ADD PRIMARY KEY (`idprinter`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `iduser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_printer`
--
ALTER TABLE `tb_printer`
  MODIFY `idprinter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `idtransaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

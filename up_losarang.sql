-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 25, 2019 at 12:02 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE up_losarang;

USE up_losarang;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `kd_pemasukan` varchar(6) NOT NULL,
  `nm_pemasukan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `kd_pengeluaran` varchar(6) NOT NULL,
  `nm_pengeluaran` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kd_produk` varchar(6) NOT NULL,
  `nm_produk` varchar(45) NOT NULL,
  `qty` int(11) NOT NULL,
  `kd_konversi` varchar(6) NOT NULL,
  `hrg_jual` int(11) DEFAULT NULL,
  `kd_satuan` varchar(6) NOT NULL,
  `hrg_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kd_produk`, `nm_produk`, `qty`, `kd_konversi`, `hrg_jual`, `kd_satuan`, `hrg_beli`) VALUES
('PR-001', 'Tang Krimping', 5, 'pcs', 6000, 'box', 5000),
('PR-002', 'Emas Sepuh', 100, 'gr', 90000, 'kg', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `kd_satuan` varchar(6) NOT NULL,
  `nm_satuan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`kd_satuan`, `nm_satuan`) VALUES
('bks', 'Bungkus'),
('box', 'Box kardus'),
('gr', 'Gram'),
('kg', 'Kilogram'),
('lt', 'Liter'),
('m', 'Meter');

-- --------------------------------------------------------

--
-- Table structure for table `satuan_konversi`
--

CREATE TABLE `satuan_konversi` (
  `kd_konversi` varchar(6) NOT NULL,
  `kd_satuan` varchar(6) NOT NULL,
  `nilai_konversi` int(11) NOT NULL,
  `nm_konversi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `satuan_konversi`
--

INSERT INTO `satuan_konversi` (`kd_konversi`, `kd_satuan`, `nilai_konversi`, `nm_konversi`) VALUES
('gr', 'kg', 1000, 'Gram'),
('pcs', 'box', 12, 'Pieces');

-- --------------------------------------------------------

--
-- Table structure for table `trb`
--

CREATE TABLE `trb` (
  `no_trb` int(11) NOT NULL,
  `tgl_trb` date NOT NULL,
  `wkt_trb` time NOT NULL,
  `total_trb` int(11) NOT NULL,
  `uraian_trb` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trb_pengeluaran`
--

CREATE TABLE `trb_pengeluaran` (
  `no_trb` int(11) NOT NULL,
  `kd_pengeluaran` varchar(6) NOT NULL,
  `qty_trb_pengeluaran` int(11) NOT NULL,
  `hrg_trb_pengeluaran` int(11) NOT NULL,
  `subtotal_trb_pengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trb_produk`
--

CREATE TABLE `trb_produk` (
  `no_trb` int(11) NOT NULL,
  `kd_produk` varchar(6) NOT NULL,
  `qty_trb_produk` int(11) NOT NULL,
  `satuan_trb` varchar(6) NOT NULL,
  `hrg_trb` int(11) NOT NULL,
  `subtotal_trb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trj`
--

CREATE TABLE `trj` (
  `no_trj` int(11) NOT NULL,
  `tgl_trj` date NOT NULL,
  `wkt_trj` time NOT NULL,
  `total_trj` int(11) NOT NULL,
  `uraian_trj` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trj_pemasukan`
--

CREATE TABLE `trj_pemasukan` (
  `no_trj` int(11) NOT NULL,
  `kd_pemasukan` varchar(6) NOT NULL,
  `qty_trj_pemasukan` int(11) NOT NULL,
  `hrg_trj_pemasukan` varchar(6) NOT NULL,
  `subtotal_trj_pemasukan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trj_produk`
--

CREATE TABLE `trj_produk` (
  `no_trj` int(11) NOT NULL,
  `kd_produk` varchar(6) NOT NULL,
  `qty_trj_produk` int(11) NOT NULL,
  `satuan_trj` varchar(6) NOT NULL,
  `hrg_trj` int(11) DEFAULT NULL,
  `subtotal_trj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`kd_pemasukan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`kd_pengeluaran`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kd_produk`),
  ADD KEY `kd_konversi` (`kd_konversi`),
  ADD KEY `kd_satuan` (`kd_satuan`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`kd_satuan`);

--
-- Indexes for table `satuan_konversi`
--
ALTER TABLE `satuan_konversi`
  ADD PRIMARY KEY (`kd_konversi`),
  ADD KEY `kd_satuan` (`kd_satuan`);

--
-- Indexes for table `trb`
--
ALTER TABLE `trb`
  ADD PRIMARY KEY (`no_trb`);

--
-- Indexes for table `trb_pengeluaran`
--
ALTER TABLE `trb_pengeluaran`
  ADD KEY `no_trb` (`no_trb`),
  ADD KEY `kd_pengeluaran` (`kd_pengeluaran`);

--
-- Indexes for table `trb_produk`
--
ALTER TABLE `trb_produk`
  ADD KEY `no_trb` (`no_trb`),
  ADD KEY `kd_produk` (`kd_produk`),
  ADD KEY `satuan_trb` (`satuan_trb`);

--
-- Indexes for table `trj`
--
ALTER TABLE `trj`
  ADD PRIMARY KEY (`no_trj`);

--
-- Indexes for table `trj_pemasukan`
--
ALTER TABLE `trj_pemasukan`
  ADD KEY `no_trj` (`no_trj`),
  ADD KEY `kd_pemasukan` (`kd_pemasukan`);

--
-- Indexes for table `trj_produk`
--
ALTER TABLE `trj_produk`
  ADD KEY `no_trj` (`no_trj`),
  ADD KEY `kd_produk` (`kd_produk`),
  ADD KEY `satuan_trj` (`satuan_trj`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trb`
--
ALTER TABLE `trb`
  MODIFY `no_trb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trb_pengeluaran`
--
ALTER TABLE `trb_pengeluaran`
  MODIFY `no_trb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trb_produk`
--
ALTER TABLE `trb_produk`
  MODIFY `no_trb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trj`
--
ALTER TABLE `trj`
  MODIFY `no_trj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trj_pemasukan`
--
ALTER TABLE `trj_pemasukan`
  MODIFY `no_trj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trj_produk`
--
ALTER TABLE `trj_produk`
  MODIFY `no_trj` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kd_konversi`) REFERENCES `satuan_konversi` (`kd_konversi`),
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`kd_satuan`) REFERENCES `satuan_konversi` (`kd_satuan`);

--
-- Constraints for table `satuan_konversi`
--
ALTER TABLE `satuan_konversi`
  ADD CONSTRAINT `satuan_konversi_ibfk_1` FOREIGN KEY (`kd_satuan`) REFERENCES `satuan` (`kd_satuan`);

--
-- Constraints for table `trb_pengeluaran`
--
ALTER TABLE `trb_pengeluaran`
  ADD CONSTRAINT `trb_pengeluaran_ibfk_1` FOREIGN KEY (`no_trb`) REFERENCES `trb` (`no_trb`),
  ADD CONSTRAINT `trb_pengeluaran_ibfk_2` FOREIGN KEY (`kd_pengeluaran`) REFERENCES `pengeluaran` (`kd_pengeluaran`);

--
-- Constraints for table `trb_produk`
--
ALTER TABLE `trb_produk`
  ADD CONSTRAINT `trb_produk_ibfk_1` FOREIGN KEY (`no_trb`) REFERENCES `trb` (`no_trb`),
  ADD CONSTRAINT `trb_produk_ibfk_2` FOREIGN KEY (`kd_produk`) REFERENCES `produk` (`kd_produk`),
  ADD CONSTRAINT `trb_produk_ibfk_3` FOREIGN KEY (`satuan_trb`) REFERENCES `satuan_konversi` (`kd_konversi`);

--
-- Constraints for table `trj_pemasukan`
--
ALTER TABLE `trj_pemasukan`
  ADD CONSTRAINT `trj_pemasukan_ibfk_1` FOREIGN KEY (`no_trj`) REFERENCES `trj` (`no_trj`),
  ADD CONSTRAINT `trj_pemasukan_ibfk_2` FOREIGN KEY (`kd_pemasukan`) REFERENCES `pemasukan` (`kd_pemasukan`);

--
-- Constraints for table `trj_produk`
--
ALTER TABLE `trj_produk`
  ADD CONSTRAINT `trj_produk_ibfk_1` FOREIGN KEY (`no_trj`) REFERENCES `trj` (`no_trj`),
  ADD CONSTRAINT `trj_produk_ibfk_2` FOREIGN KEY (`kd_produk`) REFERENCES `produk` (`kd_produk`),
  ADD CONSTRAINT `trj_produk_ibfk_3` FOREIGN KEY (`satuan_trj`) REFERENCES `satuan_konversi` (`kd_konversi`);

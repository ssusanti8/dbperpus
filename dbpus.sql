-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 05:40 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nm_admin` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `nm_admin`, `username`, `password`) VALUES
(1, 'Admin', 'jwd', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbanggota`
--

CREATE TABLE `tbanggota` (
  `idanggota` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jeniskelamin` varchar(10) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `foto` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbanggota`
--

INSERT INTO `tbanggota` (`idanggota`, `nama`, `jeniskelamin`, `alamat`, `status`, `foto`) VALUES
('19316', 'SUSANTI web C', 'Pria', 'Jl. Senggani No.3C', 'Tidak Meminjam', '19316.jpg'),
('19317', 'Hamid', 'Wanita', 'Jl. Melati Indah No.2A', 'Tidak Meminjam', '19317.jpg'),
('19318', 'Shinta', 'Wanita', 'Jl. Senggani no.5E', '', '19318.jpg'),
('19319', 'Romadhon', 'Pria', 'Jl. Indah NO.9E', '', '19319.png'),
('19320', 'Sindy', 'Wanita', 'Jl. Mawar No. 25D', '', '19320.jpg'),
('19321', 'Shania', 'Wanita', 'Jl. Bunga No.3D', '', '19321.jpg'),
('19322', 'Hidayatullah', 'Pria', 'Jl. Kenangan No.45', '', '19322.jpg'),
('19323', 'Silvia', 'Wanita', 'Jl. Sepatu no.23E', '', '19323.jpg'),
('19324', 'Muhammad', 'Pria', 'Jl. Kamboja No.2B', '', '19324.jpg'),
('19325', 'Siti', 'Wanita', 'Jl. Melati No.11A', '', '19325.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbbuku`
--

CREATE TABLE `tbbuku` (
  `idbuku` varchar(5) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `pengarang` varchar(10) NOT NULL,
  `foto` varchar(35) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbbuku`
--

INSERT INTO `tbbuku` (`idbuku`, `judul`, `pengarang`, `foto`, `jenis`) VALUES
('A1', 'Teknologi Informasi', 'Susanti', 'A1.jpg', 'Fiksi'),
('A2', 'Kimia', 'Aziz', 'A2.jpg', 'Fiksi'),
('A3', 'Senja Membawamu', 'Boy Candra', 'A3.jpg', 'Non Fiksi');

-- --------------------------------------------------------

--
-- Table structure for table `tbpeminjaman`
--

CREATE TABLE `tbpeminjaman` (
  `idanggota` varchar(10) NOT NULL,
  `idbuku` varchar(10) NOT NULL,
  `idpeminjaman` varchar(10) NOT NULL,
  `tglpinjam` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbpeminjaman`
--

INSERT INTO `tbpeminjaman` (`idanggota`, `idbuku`, `idpeminjaman`, `tglpinjam`) VALUES
('19316', 'A1', '2', '02-09-2021'),
('3', '19317', 'A2', '02-09-2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `tbanggota`
--
ALTER TABLE `tbanggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indexes for table `tbbuku`
--
ALTER TABLE `tbbuku`
  ADD PRIMARY KEY (`idbuku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

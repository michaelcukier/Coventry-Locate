-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 06:47 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testbruh`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `building_id` varchar(2) NOT NULL,
  `building_name` varchar(50) NOT NULL,
  `coordinates_x_y` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Main buildings';

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`building_id`, `building_name`, `coordinates_x_y`) VALUES
('AB', 'Alan Berry', '41.688598,-71.564208'),
('AL', 'Alma', '52.410017,-1.500443'),
('AS', 'Armstrong Siddeley', '52.407583,-1.501042'),
('BU', 'Bugatti', '52.407175,-1.503746'),
('CW', 'Charles Ward', '52.408542,-1.505167'),
('EC', 'Engineering & Computing Building', '52.405192,-1.499573'),
('ET', 'Ellen Terry', '52.406663,-1.504656'),
('GE', 'George Eliot', '52.407990,-1.504757'),
('GS', 'Graham Sutherland', '52.407095,-1.503032'),
('HU', 'The Hub', '52.407496,-1.504731'),
('JA', 'Jaguar', '52.400712,-1.559281'),
('JL', 'Sir John Laing', '52.405861,-1.504997'),
('JS', 'James Starley', '52.407712,-1.504062'),
('LL', 'Frederick Lanchester Library', '52.405962,-1.500547'),
('MF', 'Maurice Foss', '52.407816,-1.503127'),
('PR', 'Priory Building', '52.407175,-1.503746'),
('RC', 'Richard Crossman', '52.406651,-1.505149'),
('SC', 'Student Centre', '52.404955,-1.50074'),
('SP', 'Sports Centre  ', '52.405785,-1.504218'),
('WF', 'Whitefriars', '52.405785,-1.504218'),
('WL', 'Sir William Lyons', '52.407352,-1.499745'),
('WM', 'William Morris', '52.406556,-1.501187');

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `entrance_id` varchar(20) NOT NULL COMMENT '"main, side, back"',
  `building_id` varchar(10) NOT NULL,
  `disabled_access` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` varchar(10) NOT NULL,
  `building_id` varchar(10) NOT NULL,
  `floor` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `building_id`, `floor`) VALUES
('01', 'EC', 'L'),
('02', 'EC', 'L'),
('03', 'EC', 'L'),
('04', 'EC', 'L'),
('05', 'EC', 'L'),
('06', 'EC', 'L'),
('07', 'EC', 'L'),
('08', 'EC', 'L'),
('09', 'EC', 'L'),
('10', 'EC', 'L'),
('11', 'EC', 'L'),
('12', 'EC', 'L'),
('13', 'EC', 'L'),
('14', 'EC', 'L'),
('15', 'EC', 'L'),
('16', 'EC', 'L'),
('17', 'EC', 'L'),
('19', 'EC', 'L'),
('20', 'EC', 'L'),
('21', 'EC', 'L'),
('22', 'EC', 'L'),
('23', 'EC', 'L'),
('24', 'EC', 'L'),
('25', 'EC', 'L'),
('26', 'EC', 'L'),
('27', 'EC', 'L'),
('28', 'EC', 'L'),
('29', 'EC', 'L'),
('30', 'EC', 'L'),
('31', 'EC', 'L'),
('01', 'EC', 'M'),
('02', 'EC', 'M'),
('03', 'EC', 'M'),
('04', 'EC', 'M'),
('05', 'EC', 'M'),
('06', 'EC', 'M'),
('07', 'EC', 'M'),
('08', 'EC', 'M'),
('09', 'EC', 'M'),
('10', 'EC', 'M'),
('11', 'EC', 'M'),
('12', 'EC', 'M'),
('13', 'EC', 'M'),
('14', 'EC', 'M'),
('15', 'EC', 'M'),
('16', 'EC', 'M'),
('17', 'EC', 'M'),
('18', 'EC', 'M'),
('', '', ''),
('', '', ''),
('01', 'EC', 'G'),
('02', 'EC', 'G'),
('03', 'EC', 'G'),
('04', 'EC', 'G'),
('05', 'EC', 'G'),
('06', 'EC', 'G'),
('07', 'EC', 'G'),
('08', 'EC', 'G'),
('09', 'EC', 'G'),
('10', 'EC', 'G'),
('11', 'EC', 'G'),
('12', 'EC', 'G'),
('13', 'EC', 'G'),
('14', 'EC', 'G'),
('15', 'EC', 'G'),
('16', 'EC', 'G'),
('17', 'EC', 'G'),
('18', 'EC', 'G'),
('19', 'EC', 'G'),
('20', 'EC', 'G'),
('21', 'EC', 'G'),
('22', 'EC', 'G'),
('23', 'EC', 'G'),
('24', 'EC', 'G'),
('25', 'EC', 'G'),
('26', 'EC', 'G'),
('27', 'EC', 'G'),
('28', 'EC', 'G'),
('29', 'EC', 'G'),
('30', 'EC', 'G'),
('31', 'EC', 'G'),
('32', 'EC', 'G'),
('33', 'EC', 'G'),
('34', 'EC', 'G'),
('35', 'EC', 'G'),
('36', 'EC', 'G'),
('01', 'EC', '1'),
('02', 'EC', '1'),
('03', 'EC', '1'),
('04', 'EC', '1'),
('05', 'EC', '1'),
('06', 'EC', '1'),
('07', 'EC', '1'),
('08', 'EC', '1'),
('09', 'EC', '1'),
('10', 'EC', '1'),
('11', 'EC', '1'),
('12', 'EC', '1'),
('13', 'EC', '1'),
('14', 'EC', '1'),
('15', 'EC', '1'),
('16', 'EC', '1'),
('17', 'EC', '1'),
('18', 'EC', '1'),
('19', 'EC', '1'),
('20', 'EC', '1'),
('21', 'EC', '1'),
('22', 'EC', '1'),
('23', 'EC', '1'),
('24', 'EC', '1'),
('25', 'EC', '1'),
('26', 'EC', '1'),
('27', 'EC', '1'),
('28', 'EC', '1'),
('01', 'EC', '2'),
('02', 'EC', '2'),
('03', 'EC', '2'),
('04', 'EC', '2'),
('05', 'EC', '2'),
('06', 'EC', '2'),
('07', 'EC', '2'),
('08', 'EC', '2'),
('09', 'EC', '2'),
('10', 'EC', '2'),
('11', 'EC', '2'),
('12', 'EC', '2'),
('13', 'EC', '2'),
('14', 'EC', '2'),
('15', 'EC', '2'),
('16', 'EC', '2'),
('17', 'EC', '2'),
('18', 'EC', '2'),
('19', 'EC', '2'),
('20', 'EC', '2'),
('21', 'EC', '2'),
('22', 'EC', '2'),
('23', 'EC', '2'),
('24', 'EC', '2'),
('25', 'EC', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD KEY `building_id` (`building_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

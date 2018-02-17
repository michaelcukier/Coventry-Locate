-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2018 at 08:50 PM
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
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `building_id` (`building_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

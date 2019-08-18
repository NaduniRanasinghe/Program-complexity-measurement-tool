-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 02:04 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `maincode`
--

CREATE TABLE `maincode` (
  `ID` int(11) NOT NULL,
  `CODENUMBER` varchar(255) NOT NULL,
  `CODEKEYNAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maincode`
--

INSERT INTO `maincode` (`ID`, `CODENUMBER`, `CODEKEYNAME`) VALUES
(21, '9611e585-f984-4588-8664-3d08ddd52079', 'code1'),
(22, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 'code02'),
(23, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 'code03');

-- --------------------------------------------------------

--
-- Table structure for table `sourcecodes`
--

CREATE TABLE `sourcecodes` (
  `ID` int(11) NOT NULL,
  `CODENUMBER` varchar(255) NOT NULL,
  `LINENUMBER` int(11) NOT NULL,
  `PSTATEMENT` text,
  `FACTORS` varchar(255) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `CNC` int(11) DEFAULT NULL,
  `CI` int(11) DEFAULT NULL,
  `CTC` int(11) DEFAULT NULL,
  `TW` int(11) DEFAULT NULL,
  `CPS` int(11) DEFAULT NULL,
  `CR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sourcecodes`
--

INSERT INTO `sourcecodes` (`ID`, `CODENUMBER`, `LINENUMBER`, `PSTATEMENT`, `FACTORS`, `CS`, `CNC`, `CI`, `CTC`, `TW`, `CPS`, `CR`) VALUES
(890, '9611e585-f984-4588-8664-3d08ddd52079', 1, 'package com.iterminal.iparliamentws.repository;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(891, '9611e585-f984-4588-8664-3d08ddd52079', 2, '	public String sum(a+b){', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(892, '9611e585-f984-4588-8664-3d08ddd52079', 3, '		return  sum(a+b);', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(893, '9611e585-f984-4588-8664-3d08ddd52079', 4, '	}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(894, '9611e585-f984-4588-8664-3d08ddd52079', 5, 'import com.iterminal.iparliamentws.model.CommitteeDetail;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(895, '9611e585-f984-4588-8664-3d08ddd52079', 6, 'import java.util.List;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(896, '9611e585-f984-4588-8664-3d08ddd52079', 7, 'import org.springframework.data.jpa.repository.JpaRepository;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(897, '9611e585-f984-4588-8664-3d08ddd52079', 8, 'import org.springframework.data.jpa.repository.Query;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(898, '9611e585-f984-4588-8664-3d08ddd52079', 9, '/**', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(899, '9611e585-f984-4588-8664-3d08ddd52079', 10, ' *', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(900, '9611e585-f984-4588-8664-3d08ddd52079', 11, ' * @author inusha', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(901, '9611e585-f984-4588-8664-3d08ddd52079', 12, ' */', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(902, '9611e585-f984-4588-8664-3d08ddd52079', 13, 'public interface CommitteeDetailRepository extends JpaRepository<CommitteeDetail, Integer>{', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(903, '9611e585-f984-4588-8664-3d08ddd52079', 14, '    ', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(904, '9611e585-f984-4588-8664-3d08ddd52079', 15, '    @Query(value=\"SELECT * FROM dms_view_comdetails\",nativeQuery=true)', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(905, '9611e585-f984-4588-8664-3d08ddd52079', 16, '    List<CommitteeDetail> getCommitteeDetailDetails();', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(906, '9611e585-f984-4588-8664-3d08ddd52079', 17, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(907, '9611e585-f984-4588-8664-3d08ddd52079', 18, '	class myClass implements A,B,C{', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(908, '9611e585-f984-4588-8664-3d08ddd52079', 19, '		', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(909, '9611e585-f984-4588-8664-3d08ddd52079', 20, '	}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(910, '9611e585-f984-4588-8664-3d08ddd52079', 21, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(911, '9611e585-f984-4588-8664-3d08ddd52079', 22, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(912, '9611e585-f984-4588-8664-3d08ddd52079', 23, '}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(913, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 1, 'package com.iterminal.iparliamentws.repository;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(914, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 2, '	public String sum(a+b){', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(915, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 3, '		return  sum(a+b);', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(916, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 4, '	}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(917, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 5, 'import com.iterminal.iparliamentws.model.CommitteeDetail;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(918, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 6, 'import java.util.List;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(919, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 7, 'import org.springframework.data.jpa.repository.JpaRepository;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(920, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 8, 'import org.springframework.data.jpa.repository.Query;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(921, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 9, '/**', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(922, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 10, ' *', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(923, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 11, ' * @author inusha', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(924, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 12, ' */', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(925, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 13, 'public interface CommitteeDetailRepository extends JpaRepository<CommitteeDetail, Integer>{', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(926, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 14, '    ', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(927, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 15, '    @Query(value=\"SELECT * FROM dms_view_comdetails\",nativeQuery=true)', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(928, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 16, '    List<CommitteeDetail> getCommitteeDetailDetails();', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(929, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 17, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(930, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 18, '	class myClass implements A,B,C{', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(931, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 19, '		', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(932, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 20, '	}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(933, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 21, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(934, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 22, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(935, '1b87c6fc-a042-44d4-b454-a6b6827a0673', 23, '}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(936, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 1, 'package com.iterminal.iparliamentws.repository;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(937, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 2, '	public String sum(a+b){', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(938, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 3, '		return  sum(a+b);', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(939, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 4, '	}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(940, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 5, 'import com.iterminal.iparliamentws.model.CommitteeDetail;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(941, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 6, 'import java.util.List;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(942, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 7, 'import org.springframework.data.jpa.repository.JpaRepository;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(943, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 8, 'import org.springframework.data.jpa.repository.Query;', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(944, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 9, '/**', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(945, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 10, ' *', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(946, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 11, ' * @author inusha', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(947, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 12, ' */', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(948, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 13, 'public interface CommitteeDetailRepository extends JpaRepository<CommitteeDetail, Integer>{', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(949, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 14, '    ', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(950, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 15, '    @Query(value=\"SELECT * FROM dms_view_comdetails\",nativeQuery=true)', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(951, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 16, '    List<CommitteeDetail> getCommitteeDetailDetails();', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(952, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 17, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(953, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 18, '	class myClass implements A,B,C{', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(954, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 19, '		', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(955, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 20, '	}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(956, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 21, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(957, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 22, '	', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL),
(958, '4fa51b4c-fdc2-4f5a-975c-30ab13fd00b5', 23, '}', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `systemuser`
--

CREATE TABLE `systemuser` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemuser`
--

INSERT INTO `systemuser` (`ID`, `USERNAME`, `PASSWORD`, `EMAIL`) VALUES
(1, 'inusha', '123', 'inusham45@gmail.com'),
(2, 'inusham', '123', 'inusham45@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maincode`
--
ALTER TABLE `maincode`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sourcecodes`
--
ALTER TABLE `sourcecodes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `systemuser`
--
ALTER TABLE `systemuser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maincode`
--
ALTER TABLE `maincode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sourcecodes`
--
ALTER TABLE `sourcecodes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT for table `systemuser`
--
ALTER TABLE `systemuser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

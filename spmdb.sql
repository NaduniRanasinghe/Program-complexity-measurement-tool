-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 02:12 PM
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
(1, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 'code1');

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
(1, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 1, '/*\r\n * To change this license header, choose License Headers in Project Properties.\r\n * To change this template file, choose Tools | Templates\r\n * and open the template in the editor.\r\n */\r\npackage com.iterminal.parliamentws.controller;\r\n\r\nimport com.google.common.base.Splitter;\r\nimport com.iterminal.parliamentws.model.OrderPaper;\r\nimport com.iterminal.parliamentws.model.dto.CommonResponse;\r\nimport com.iterminal.parliamentws.model.dto.OrderPaperDto;\r\nimport com.iterminal.parliamentws.model.dto.OrderPaperRepoSubList01;\r\nimport com.iterminal.parliamentws.model.dto.QuestionIParlimentDto;\r\nimport com.iterminal.parliamentws.model.dto.report.Reprot;\r\nimport com.iterminal.parliamentws.repository.OrderPaperQuestionRepository;\r\nimport com.iterminal.parliamentws.repository.OrderPaperRepository;\r\nimport com.iterminal.parliamentws.repository.SystemuserRepository;\r\nimport com.iterminal.parliamentws.service.impl.OrderPaperServiceImpl;\r\nimport java.io.File;\r\nimport java.io.IOException;\r\nimport java.text.ParseException;\r\nimport java.text.SimpleDateFormat;\r\nimport java.util.ArrayList;\r\nimport java.util.HashMap;\r\nimport java.util.List;\r\nimport javax.validation.Valid;\r\nimport net.sf.jasperreports.engine.JREmptyDataSource;\r\nimport net.sf.jasperreports.engine.JasperExportManager;\r\nimport net.sf.jasperreports.engine.JasperFillManager;\r\nimport net.sf.jasperreports.engine.JasperPrint;\r\nimport net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;\r\nimport org.json.JSONException;\r\nimport org.jsoup.Jsoup;\r\nimport org.jsoup.nodes.Document;\r\nimport org.jsoup.nodes.Element;\r\nimport org.jsoup.parser.Parser;\r\nimport org.jsoup.select.Elements;\r\nimport org.slf4j.Logger;\r\nimport org.slf4j.LoggerFactory;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.beans.factory.annotation.Value;\r\nimport org.springframework.core.io.ClassPathResource;\r\nimport org.springframework.http.HttpHeaders;\r\nimport org.springframework.http.HttpStatus;\r\nimport org.springframework.http.MediaType;\r\nimport org.springframework.http.ResponseEntity;\r\nimport org.springframework.web.bind.annotation.CrossOrigin;\r\nimport org.springframework.web.bind.annotation.PathVariable;\r\nimport org.springframework.web.bind.annotation.RequestBody;\r\nimport org.springframework.web.bind.annotation.RequestMapping;\r\nimport org.springframework.web.bind.annotation.RequestMethod;\r\nimport org.springframework.web.bind.annotation.RestController;\r\n\r\n/**\r\n *\r\n * @author User\r\n */\r\n@RestController\r\n@CrossOrigin\r\npublic class OrderPaperController {\r\n\r\n    @Autowired\r\n    SystemuserRepository userRepository;\r\n\r\n    @Autowired\r\n    OrderPaperServiceImpl orderPaperService;\r\n\r\n    @Autowired\r\n    OrderPaperRepository oderPaperRepository;\r\n\r\n    @Autowired\r\n    OrderPaperQuestionRepository oderPaperQuestionRepository;\r\n\r\n    @Value(\"${jasper.filepath.OrderPaper}\")\r\n    private String jasperFilePath;\r\ninusha\r\n\r\n    @RequestMapping(value = \"/orderpaper/save\", method = RequestMethod.PUT)\r\n    public ResponseEntity<OrderPaperDto> saveOrderPapers(@Valid @RequestBody OrderPaper orderPaper) {\r\n        try {\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 2, '  orderPaperService.saveOrderPapers(orderPaper);inusha\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 3, '  return new ResponseEntity<>(null, HttpStatus.OK);inusha\r\n        } catch (Exception ex) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 4, '  Logger logger = LoggerFactory.getLogger(PresentationOfPapersController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 5, '  logger.error(ex.getMessage());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 6, '  return new ResponseEntity<>(null, HttpStatus.OK);inusha\r\n        }\r\n    }inusha\r\n\r\n    @RequestMapping(value = \"/orderpaper/{date}\", method = RequestMethod.GET)\r\n    public ResponseEntity<OrderPaperDto> getOrderPaperByDate(@PathVariable(value = \"date\") String mmDate) {\r\n        try {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 7, '  OrderPaperDto orderPaper = orderPaperService.getOrderPaper(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 8, '  if (orderPaper != null) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 9, '      orderPaper.setIsOrderPaperPreview(true);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 10, '      orderPaper.setIsOrderPaperGenerate(false);inusha\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 11, '  } else {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 12, '      orderPaper = new OrderPaperDto();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 13, '      List<QuestionIParlimentDto> questionDtoList = orderPaperService.getOrderPaperQuestionFromIParliament(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 14, '      if (questionDtoList != null & questionDtoList.size() > 0) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 15, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 16, 'orderPaper.setIsOrderPaperPreview(false);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 17, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 18, 'orderPaper.setIsOrderPaperGenerate(true);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 19, '      } else {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 20, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 21, 'orderPaper.setIsOrderPaperPreview(false);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 22, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 23, 'orderPaper.setIsOrderPaperGenerate(false);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 24, '      }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 25, '  }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 26, '  return new ResponseEntity<>(orderPaper, HttpStatus.OK);\r\n        } catch (ParseException | JSONException | IOException e) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 27, '  Logger logger = LoggerFactory.getLogger(MeetingMinuteController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 28, '  logger.error(e.getMessage());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 29, '  return new ResponseEntity<>(null, HttpStatus.OK);\r\n        }\r\n    }\r\n\r\n    @RequestMapping(value = \"/orderpaper/report/{date}\", method = RequestMethod.GET)\r\n    public ResponseEntity<byte[]> createOrderPaperReport(@PathVariable(value = \"date\") String mmDate) {\r\n\r\n//        date = \"2019-03-06\";\r\n        byte[] outputFile = null;\r\n\r\n        String filename = \"Order Paper.pdf\";\r\n        try {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 30, '  HashMap<String, Object> parameterMap = new HashMap();\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 31, '  SimpleDateFormat dt = new SimpleDateFormat(\"yyyy-MM-dd\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 32, '  OrderPaperDto orderPaper = orderPaperService.getOrderPaper(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 33, '  parameterMap.put(\"MAINHEDDINGSINHALA\", orderPaper.getHeddingSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 34, '  parameterMap.put(\"MINUTESESSIONSINHALA\", orderPaper.getSessionNameSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 35, '  parameterMap.put(\"DATESINHALA\", orderPaper.getDateNameSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 36, '  parameterMap.put(\"PRESENTSINHALA\", orderPaper.getOralAnswerLabelSinhala());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 37, '  parameterMap.put(\"MAINHEDDINGTAMIL\", orderPaper.getHeddingTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 38, '  parameterMap.put(\"MINUTESESSIONTAMIL\", orderPaper.getSessionNameTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 39, '  parameterMap.put(\"DATETAMIL\", orderPaper.getDateNameTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 40, '  parameterMap.put(\"PRESENTTAMIL\", orderPaper.getOralAnswerLabelTamil());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 41, '  parameterMap.put(\"MAINHEDDINGENGLISH\", orderPaper.getHeddingEnglish());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 42, '  parameterMap.put(\"MINUTESESSIONENGLISH\", orderPaper.getSessionNameEnglish());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 43, '  parameterMap.put(\"DATEENGLISH\", orderPaper.getDateNameEnglish());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 44, '  parameterMap.put(\"PRESENTENGLISH\", orderPaper.getOralAnswerLabelEnglish());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 45, '  JRBeanCollectionDataSource datasourceSinhala = new JRBeanCollectionDataSource(orderPaper.getReportListSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 46, '  JRBeanCollectionDataSource datasourceTamil = new JRBeanCollectionDataSource(orderPaper.getReportListTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 47, '  JRBeanCollectionDataSource datasourceEnglish = new JRBeanCollectionDataSource(orderPaper.getReportListEnglish());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 48, '  parameterMap.put(\"datasourceSinhala\", datasourceSinhala);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 49, '  parameterMap.put(\"datasourceEnglish\", datasourceEnglish);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 50, '  parameterMap.put(\"datasourceTamil\", datasourceTamil);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 51, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 52, '  //Question list convert to string list and send it tothe report\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 53, '  List<Reprot> reportListEnglish = orderPaper.getReportListEnglish();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 54, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 55, '  List<OrderPaperRepoSubList01> subrepo = new ArrayList<>();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 56, '  int numberr = 0;\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 57, '  StringBuilder sbs = new StringBuilder();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 58, '  for(Reprot r : reportListEnglish){\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 59, '      //\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 60, '      StringBuilder sb = new StringBuilder(); \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 61, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 62, '      String str = r.getTitle();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 63, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 64, '      String questionClasses[] = {\"q10\", \"q1b\", \"q1c\", \"q1d\", \"q1e\", \"q1f\", \"q1g\", \"q1h\", \"q1i\", \"q1j\",\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 65, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 66, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 67, '      \"q1k\", \"q1l\", \"q1m\"};\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 68, '      String qNoRightClass = \"QNoRight\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 69, '      String motionClass = \"tempbody\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 70, '      String subQuestionClass = \"q20\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 71, '      String motionNumber = \"motionno\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 72, '      \r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 73, '      Document xmlDocument = Jsoup.parse(str, \"\", Parser.xmlParser());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 74, '      Elements links1 = xmlDocument.getElementsByClass(\"QNoRight\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 75, '      System.out.println(links1.get(0).text());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 76, '      //\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 77, '      sb.append(\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 78, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 79, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 80, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 81, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 82, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 83, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 84, '         \");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 85, '      sb.append(\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 86, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 87, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 88, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 89, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 90, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 91, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 92, '         \");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 93, '      sb.append(links1.get(0).text()+\"\\n\");\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 94, '      Elements links2 = xmlDocument.getElementsByClass(\"motionno\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 95, '      //\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 96, '      System.out.println(links2.get(0).text());\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 97, '      sb.append(links2.get(0).text()+\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 98, '      \r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 99, '  for (final String stringValue : Splitter.fixedLength(100).split(links2.get(0).text())) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 100, '      sb.append(\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 101, '      sb.append(stringValue + \"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 102, '      \r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 103, '      System.out.println(EnglishValueM);\r\n//\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 104, '      MinuteEnglish meobj = new MinuteEnglish();\r\n//\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 105, '      meobj.setCpbId(cpbObj.getId());\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 106, '      meobj.setMinuteEnglishData(EnglishValueM);\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 107, '      minuteenglishrepository.save(meobj);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 108, '  }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 109, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 110, '      Elements elements = xmlDocument.getElementsByTag(\"p\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 111, '      int questionClassIndex = 0;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 112, '      for(Element element : elements) {\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 113, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 114, 'if(element.attr(\"class\").equals(questionClasses[questionClassIndex])){\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 115, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 116, '  System.out.println(element.attr(\"class\"));\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 117, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 118, '  System.out.println(element.text());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 119, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 120, '  //\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 121, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 122, '    for (final String stringValue : Splitter.fixedLength(100).split(element.text())) {\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 123, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 124, '    for (final String stringValue : element.text().split(\" \",100)) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 125, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 126, '        sb.append(\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 127, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 128, '        sb.append(\"     \"+ element.text() +\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 129, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 130, '        sb.append(\"\\n\");\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 131, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 132, '    }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 133, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 134, '    questionClassIndex++;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 135, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 136, '} else if(element.attr(\"class\").equals(subQuestionClass)){\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 137, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 138, '  System.out.print(\"------\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 139, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 140, '  System.out.println(element.text());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 141, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 142, '  //\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 143, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 144, '    for (final String stringValue : Splitter.fixedLength(100).split(element.text())) {\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 145, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 146, '    for (final String stringValue :  element.text().split(\" \",100)) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 147, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 148, '        sb.append(\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 149, '\" + element.text() +\"\\n\");\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 150, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 151, '    }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 152, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 153, '    questionClassIndex = 0;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 154, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 155, '}\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 156, '      }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 157, '      numberr++;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 158, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 159, '  // convert in string \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 160, '  String string = sb.toString();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 161, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 162, '  OrderPaperRepoSubList01 obj = new OrderPaperRepoSubList01();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 163, '  obj.setValuer(string);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 164, '  obj.setNumberr(Integer.toString(numberr));\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 165, '  sbs.append(string);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 166, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 167, '   subrepo.add(obj);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 168, '  }\r\n\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 169, '  System.out.print(string);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 170, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 171, '  JRBeanCollectionDataSource datasourceRepo = new JRBeanCollectionDataSource(subrepo);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 172, '  parameterMap.put(\"datasourceReport\", datasourceRepo);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 173, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 174, '  File file = new ClassPathResource(jasperFilePath).getFile();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 175, '  JasperPrint jasperPrint = JasperFillManager.fillReport(file.toString(), parameterMap, new JREmptyDataSource());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 176, '  outputFile = JasperExportManager.exportReportToPdf(jasperPrint);\r\n        } catch (Exception ex) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 177, '  Logger logger = LoggerFactory.getLogger(PresentationOfPapersController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 178, '  logger.error(ex.getMessage());\r\n        }\r\n\r\n        HttpHeaders headers = new HttpHeaders();\r\n        headers.setContentType(MediaType.parseMediaType(\"application/pdf\"));\r\n        headers.setContentDispositionFormData(filename, filename);\r\n        headers.setCacheControl(\"must-revalidate, post-check=0, pre-check=0\");\r\n\r\n        ResponseEntity<byte[]> respons = new ResponseEntity<byte[]>(outputFile, headers, HttpStatus.OK);\r\n        return respons;\r\n    }\r\n\r\n    @RequestMapping(value = \"/orderpaper/approval/process/{date}/{languageCode}\", method = RequestMethod.PUT)\r\n    public ResponseEntity<OrderPaperDto> updateOrderPapers(@Valid @RequestBody OrderPaper orderPaper, @PathVariable(value = \"date\") String mmDate, @PathVariable(value = \"languageCode\") String languageCode) {\r\n        try {\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 179, '  orderPaperService.updateStatusOrderPaper(orderPaper, languageCode);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 180, '  OrderPaperDto orderPaperDto = orderPaperService.getOrderPaper(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 181, '  orderPaperDto.setIsOrderPaperPreview(true);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 182, '  orderPaperDto.setIsOrderPaperGenerate(false);\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 183, '  return new ResponseEntity<>(orderPaperDto, HttpStatus.OK);\r\n        } catch (Exception ex) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 184, '  Logger logger = LoggerFactory.getLogger(PresentationOfPapersController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 185, '  logger.error(ex.getMessage());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '99db8639-08e0-4e85-80c0-5f59ee2e5d8d', 186, '  return new ResponseEntity<>(null, HttpStatus.OK);\r\n        }\r\n    }\r\n\r\n}\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 1, '/*\r\n * To change this license header, choose License Headers in Project Properties.\r\n * To change this template file, choose Tools | Templates\r\n * and open the template in the editor.\r\n */\r\npackage com.iterminal.parliamentws.controller;\r\n\r\nimport com.google.common.base.Splitter;\r\nimport com.iterminal.parliamentws.model.OrderPaper;\r\nimport com.iterminal.parliamentws.model.dto.CommonResponse;\r\nimport com.iterminal.parliamentws.model.dto.OrderPaperDto;\r\nimport com.iterminal.parliamentws.model.dto.OrderPaperRepoSubList01;\r\nimport com.iterminal.parliamentws.model.dto.QuestionIParlimentDto;\r\nimport com.iterminal.parliamentws.model.dto.report.Reprot;\r\nimport com.iterminal.parliamentws.repository.OrderPaperQuestionRepository;\r\nimport com.iterminal.parliamentws.repository.OrderPaperRepository;\r\nimport com.iterminal.parliamentws.repository.SystemuserRepository;\r\nimport com.iterminal.parliamentws.service.impl.OrderPaperServiceImpl;\r\nimport java.io.File;\r\nimport java.io.IOException;\r\nimport java.text.ParseException;\r\nimport java.text.SimpleDateFormat;\r\nimport java.util.ArrayList;\r\nimport java.util.HashMap;\r\nimport java.util.List;\r\nimport javax.validation.Valid;\r\nimport net.sf.jasperreports.engine.JREmptyDataSource;\r\nimport net.sf.jasperreports.engine.JasperExportManager;\r\nimport net.sf.jasperreports.engine.JasperFillManager;\r\nimport net.sf.jasperreports.engine.JasperPrint;\r\nimport net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;\r\nimport org.json.JSONException;\r\nimport org.jsoup.Jsoup;\r\nimport org.jsoup.nodes.Document;\r\nimport org.jsoup.nodes.Element;\r\nimport org.jsoup.parser.Parser;\r\nimport org.jsoup.select.Elements;\r\nimport org.slf4j.Logger;\r\nimport org.slf4j.LoggerFactory;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.beans.factory.annotation.Value;\r\nimport org.springframework.core.io.ClassPathResource;\r\nimport org.springframework.http.HttpHeaders;\r\nimport org.springframework.http.HttpStatus;\r\nimport org.springframework.http.MediaType;\r\nimport org.springframework.http.ResponseEntity;\r\nimport org.springframework.web.bind.annotation.CrossOrigin;\r\nimport org.springframework.web.bind.annotation.PathVariable;\r\nimport org.springframework.web.bind.annotation.RequestBody;\r\nimport org.springframework.web.bind.annotation.RequestMapping;\r\nimport org.springframework.web.bind.annotation.RequestMethod;\r\nimport org.springframework.web.bind.annotation.RestController;\r\n\r\n/**\r\n *\r\n * @author User\r\n */\r\n@RestController\r\n@CrossOrigin\r\npublic class OrderPaperController {\r\n\r\n    @Autowired\r\n    SystemuserRepository userRepository;\r\n\r\n    @Autowired\r\n    OrderPaperServiceImpl orderPaperService;\r\n\r\n    @Autowired\r\n    OrderPaperRepository oderPaperRepository;\r\n\r\n    @Autowired\r\n    OrderPaperQuestionRepository oderPaperQuestionRepository;\r\n\r\n    @Value(\"${jasper.filepath.OrderPaper}\")\r\n    private String jasperFilePath;\r\ninusha\r\n\r\n    @RequestMapping(value = \"/orderpaper/save\", method = RequestMethod.PUT)\r\n    public ResponseEntity<OrderPaperDto> saveOrderPapers(@Valid @RequestBody OrderPaper orderPaper) {\r\n        try {\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 2, '  orderPaperService.saveOrderPapers(orderPaper);inusha\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 3, '  return new ResponseEntity<>(null, HttpStatus.OK);inusha\r\n        } catch (Exception ex) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 4, '  Logger logger = LoggerFactory.getLogger(PresentationOfPapersController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 5, '  logger.error(ex.getMessage());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 6, '  return new ResponseEntity<>(null, HttpStatus.OK);inusha\r\n        }\r\n    }inusha\r\n\r\n    @RequestMapping(value = \"/orderpaper/{date}\", method = RequestMethod.GET)\r\n    public ResponseEntity<OrderPaperDto> getOrderPaperByDate(@PathVariable(value = \"date\") String mmDate) {\r\n        try {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 7, '  OrderPaperDto orderPaper = orderPaperService.getOrderPaper(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 8, '  if (orderPaper != null) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 9, '      orderPaper.setIsOrderPaperPreview(true);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 10, '      orderPaper.setIsOrderPaperGenerate(false);inusha\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 11, '  } else {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 12, '      orderPaper = new OrderPaperDto();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 13, '      List<QuestionIParlimentDto> questionDtoList = orderPaperService.getOrderPaperQuestionFromIParliament(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 14, '      if (questionDtoList != null & questionDtoList.size() > 0) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 15, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 16, 'orderPaper.setIsOrderPaperPreview(false);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 17, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 18, 'orderPaper.setIsOrderPaperGenerate(true);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 19, '      } else {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 20, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 21, 'orderPaper.setIsOrderPaperPreview(false);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 22, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 23, 'orderPaper.setIsOrderPaperGenerate(false);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 24, '      }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 25, '  }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 26, '  return new ResponseEntity<>(orderPaper, HttpStatus.OK);\r\n        } catch (ParseException | JSONException | IOException e) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 27, '  Logger logger = LoggerFactory.getLogger(MeetingMinuteController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 28, '  logger.error(e.getMessage());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 29, '  return new ResponseEntity<>(null, HttpStatus.OK);\r\n        }\r\n    }\r\n\r\n    @RequestMapping(value = \"/orderpaper/report/{date}\", method = RequestMethod.GET)\r\n    public ResponseEntity<byte[]> createOrderPaperReport(@PathVariable(value = \"date\") String mmDate) {\r\n\r\n//        date = \"2019-03-06\";\r\n        byte[] outputFile = null;\r\n\r\n        String filename = \"Order Paper.pdf\";\r\n        try {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 30, '  HashMap<String, Object> parameterMap = new HashMap();\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 31, '  SimpleDateFormat dt = new SimpleDateFormat(\"yyyy-MM-dd\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 32, '  OrderPaperDto orderPaper = orderPaperService.getOrderPaper(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 33, '  parameterMap.put(\"MAINHEDDINGSINHALA\", orderPaper.getHeddingSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 34, '  parameterMap.put(\"MINUTESESSIONSINHALA\", orderPaper.getSessionNameSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 35, '  parameterMap.put(\"DATESINHALA\", orderPaper.getDateNameSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 36, '  parameterMap.put(\"PRESENTSINHALA\", orderPaper.getOralAnswerLabelSinhala());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 37, '  parameterMap.put(\"MAINHEDDINGTAMIL\", orderPaper.getHeddingTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 38, '  parameterMap.put(\"MINUTESESSIONTAMIL\", orderPaper.getSessionNameTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 39, '  parameterMap.put(\"DATETAMIL\", orderPaper.getDateNameTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 40, '  parameterMap.put(\"PRESENTTAMIL\", orderPaper.getOralAnswerLabelTamil());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 41, '  parameterMap.put(\"MAINHEDDINGENGLISH\", orderPaper.getHeddingEnglish());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 42, '  parameterMap.put(\"MINUTESESSIONENGLISH\", orderPaper.getSessionNameEnglish());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 43, '  parameterMap.put(\"DATEENGLISH\", orderPaper.getDateNameEnglish());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 44, '  parameterMap.put(\"PRESENTENGLISH\", orderPaper.getOralAnswerLabelEnglish());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 45, '  JRBeanCollectionDataSource datasourceSinhala = new JRBeanCollectionDataSource(orderPaper.getReportListSinhala());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 46, '  JRBeanCollectionDataSource datasourceTamil = new JRBeanCollectionDataSource(orderPaper.getReportListTamil());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 47, '  JRBeanCollectionDataSource datasourceEnglish = new JRBeanCollectionDataSource(orderPaper.getReportListEnglish());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 48, '  parameterMap.put(\"datasourceSinhala\", datasourceSinhala);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 49, '  parameterMap.put(\"datasourceEnglish\", datasourceEnglish);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 50, '  parameterMap.put(\"datasourceTamil\", datasourceTamil);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 51, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 52, '  //Question list convert to string list and send it tothe report\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 53, '  List<Reprot> reportListEnglish = orderPaper.getReportListEnglish();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 54, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 55, '  List<OrderPaperRepoSubList01> subrepo = new ArrayList<>();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 56, '  int numberr = 0;\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 57, '  StringBuilder sbs = new StringBuilder();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 58, '  for(Reprot r : reportListEnglish){\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 59, '      //\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 60, '      StringBuilder sb = new StringBuilder(); \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 61, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 62, '      String str = r.getTitle();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 63, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 64, '      String questionClasses[] = {\"q10\", \"q1b\", \"q1c\", \"q1d\", \"q1e\", \"q1f\", \"q1g\", \"q1h\", \"q1i\", \"q1j\",\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 65, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 66, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 67, '      \"q1k\", \"q1l\", \"q1m\"};\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 68, '      String qNoRightClass = \"QNoRight\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 69, '      String motionClass = \"tempbody\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 70, '      String subQuestionClass = \"q20\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 71, '      String motionNumber = \"motionno\";\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 72, '      \r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 73, '      Document xmlDocument = Jsoup.parse(str, \"\", Parser.xmlParser());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 74, '      Elements links1 = xmlDocument.getElementsByClass(\"QNoRight\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 75, '      System.out.println(links1.get(0).text());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 76, '      //\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 77, '      sb.append(\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 78, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 79, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 80, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 81, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 82, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 83, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 84, '         \");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 85, '      sb.append(\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 86, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 87, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 88, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 89, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 90, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 91, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 92, '         \");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 93, '      sb.append(links1.get(0).text()+\"\\n\");\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 94, '      Elements links2 = xmlDocument.getElementsByClass(\"motionno\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 95, '      //\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 96, '      System.out.println(links2.get(0).text());\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 97, '      sb.append(links2.get(0).text()+\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 98, '      \r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 99, '  for (final String stringValue : Splitter.fixedLength(100).split(links2.get(0).text())) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 100, '      sb.append(\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 101, '      sb.append(stringValue + \"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 102, '      \r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 103, '      System.out.println(EnglishValueM);\r\n//\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 104, '      MinuteEnglish meobj = new MinuteEnglish();\r\n//\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sourcecodes` (`ID`, `CODENUMBER`, `LINENUMBER`, `PSTATEMENT`, `FACTORS`, `CS`, `CNC`, `CI`, `CTC`, `TW`, `CPS`, `CR`) VALUES
(291, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 105, '      meobj.setCpbId(cpbObj.getId());\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 106, '      meobj.setMinuteEnglishData(EnglishValueM);\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 107, '      minuteenglishrepository.save(meobj);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 108, '  }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 109, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 110, '      Elements elements = xmlDocument.getElementsByTag(\"p\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 111, '      int questionClassIndex = 0;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 112, '      for(Element element : elements) {\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 113, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 114, 'if(element.attr(\"class\").equals(questionClasses[questionClassIndex])){\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 115, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 116, '  System.out.println(element.attr(\"class\"));\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 117, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 118, '  System.out.println(element.text());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 119, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 120, '  //\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 121, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 122, '    for (final String stringValue : Splitter.fixedLength(100).split(element.text())) {\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 123, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 124, '    for (final String stringValue : element.text().split(\" \",100)) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 125, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 126, '        sb.append(\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 127, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 128, '        sb.append(\"     \"+ element.text() +\"\\n\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 129, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 130, '        sb.append(\"\\n\");\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 131, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 132, '    }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 133, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 134, '    questionClassIndex++;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 135, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 136, '} else if(element.attr(\"class\").equals(subQuestionClass)){\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 137, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 138, '  System.out.print(\"------\");\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 139, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 140, '  System.out.println(element.text());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 141, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 142, '  //\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 143, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 144, '    for (final String stringValue : Splitter.fixedLength(100).split(element.text())) {\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 145, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 146, '    for (final String stringValue :  element.text().split(\" \",100)) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 147, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 148, '        sb.append(\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 149, '\" + element.text() +\"\\n\");\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 150, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 151, '    }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 152, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 153, '    questionClassIndex = 0;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 154, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 155, '}\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 156, '      }\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 157, '      numberr++;\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 158, '      \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 159, '  // convert in string \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 160, '  String string = sb.toString();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 161, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 162, '  OrderPaperRepoSubList01 obj = new OrderPaperRepoSubList01();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 163, '  obj.setValuer(string);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 164, '  obj.setNumberr(Integer.toString(numberr));\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 165, '  sbs.append(string);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 166, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 167, '   subrepo.add(obj);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 168, '  }\r\n\r\n//', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 169, '  System.out.print(string);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 170, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 171, '  JRBeanCollectionDataSource datasourceRepo = new JRBeanCollectionDataSource(subrepo);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 172, '  parameterMap.put(\"datasourceReport\", datasourceRepo);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 173, '  \r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 174, '  File file = new ClassPathResource(jasperFilePath).getFile();\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 175, '  JasperPrint jasperPrint = JasperFillManager.fillReport(file.toString(), parameterMap, new JREmptyDataSource());\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 176, '  outputFile = JasperExportManager.exportReportToPdf(jasperPrint);\r\n        } catch (Exception ex) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 177, '  Logger logger = LoggerFactory.getLogger(PresentationOfPapersController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 178, '  logger.error(ex.getMessage());\r\n        }\r\n\r\n        HttpHeaders headers = new HttpHeaders();\r\n        headers.setContentType(MediaType.parseMediaType(\"application/pdf\"));\r\n        headers.setContentDispositionFormData(filename, filename);\r\n        headers.setCacheControl(\"must-revalidate, post-check=0, pre-check=0\");\r\n\r\n        ResponseEntity<byte[]> respons = new ResponseEntity<byte[]>(outputFile, headers, HttpStatus.OK);\r\n        return respons;\r\n    }\r\n\r\n    @RequestMapping(value = \"/orderpaper/approval/process/{date}/{languageCode}\", method = RequestMethod.PUT)\r\n    public ResponseEntity<OrderPaperDto> updateOrderPapers(@Valid @RequestBody OrderPaper orderPaper, @PathVariable(value = \"date\") String mmDate, @PathVariable(value = \"languageCode\") String languageCode) {\r\n        try {\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 179, '  orderPaperService.updateStatusOrderPaper(orderPaper, languageCode);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 180, '  OrderPaperDto orderPaperDto = orderPaperService.getOrderPaper(mmDate);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 181, '  orderPaperDto.setIsOrderPaperPreview(true);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 182, '  orderPaperDto.setIsOrderPaperGenerate(false);\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 183, '  return new ResponseEntity<>(orderPaperDto, HttpStatus.OK);\r\n        } catch (Exception ex) {\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 184, '  Logger logger = LoggerFactory.getLogger(PresentationOfPapersController.class);\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 185, '  logger.error(ex.getMessage());\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '15d58770-af79-4c92-a5bd-5e9e8d9d5a07', 186, '  return new ResponseEntity<>(null, HttpStatus.OK);\r\n        }\r\n    }\r\n\r\n}\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sourcecodes`
--
ALTER TABLE `sourcecodes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `systemuser`
--
ALTER TABLE `systemuser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

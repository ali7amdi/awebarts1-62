-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 22, 2014 at 11:27 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `awebarts`
--
CREATE DATABASE IF NOT EXISTS `awebarts` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `awebarts`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerName` varchar(200) NOT NULL,
  `bannerUrl` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `bannerName`, `bannerUrl`, `status`, `createdBy`, `CreatedDate`) VALUES
(9, '7369_03-12-2013_781-programming-skills-chart.png', 'resources/uploads/7369_03-12-2013_781-programming-skills-chart.png', 1, 'ali', '2013-12-02 23:17:41'),
(10, '2778_03-12-2013_1463896_563755333698014_632618019_n.jpg', 'resources/uploads/2778_03-12-2013_1463896_563755333698014_632618019_n.jpg', 1, 'ali', '2013-12-02 23:17:43'),
(11, '4104_03-12-2013_20130922_112526.jpg', 'resources/uploads/4104_03-12-2013_20130922_112526.jpg', 1, 'ali', '2013-12-02 23:17:45'),
(12, '990_03-12-2013_781-programming-skills-chart.png', 'resources/uploads/990_03-12-2013_781-programming-skills-chart.png', 1, 'ali', '2013-12-02 23:18:02'),
(13, '8182_03-12-2013_1463896_563755333698014_632618019_n.jpg', 'resources/uploads/8182_03-12-2013_1463896_563755333698014_632618019_n.jpg', 1, 'ali', '2013-12-02 23:18:05'),
(14, '1271_03-12-2013_20130922_112526.jpg', 'resources/uploads/1271_03-12-2013_20130922_112526.jpg', 1, 'ali', '2013-12-02 23:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `main_settings`
--

CREATE TABLE IF NOT EXISTS `main_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(200) NOT NULL,
  `site_url` varchar(200) NOT NULL,
  `site_dcsc` text NOT NULL,
  `site_email` varchar(100) NOT NULL,
  `site_tags` text NOT NULL,
  `site_homepanel` text NOT NULL,
  `fb` varchar(250) NOT NULL,
  `tw` varchar(250) NOT NULL,
  `yt` varchar(250) NOT NULL,
  `rss` varchar(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `main_settings`
--

INSERT INTO `main_settings` (`id`, `site_name`, `site_url`, `site_dcsc`, `site_email`, `site_tags`, `site_homepanel`, `fb`, `tw`, `yt`, `rss`, `username`, `date`) VALUES
(1, 'Awebarts web dedign', 'http://awebarts.com', 'awebarts site Description', 'aa@awebarts.com', 'awebarts  Site Tags', 'awebarts  Home panel notes', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss link here', '', '0000-00-00 00:00:00'),
(2, 'Awebarts web dedign', 'http://awebarts.com', 'awebarts site Description', 'aa@awebarts.com', 'awebarts  Site Tags', 'awebarts  Home panel notes', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss link here', 'ali', '0000-00-00 00:00:00'),
(3, 'Awebarts web dedign', 'http://awebarts.com', 'awebarts site Description', 'aa@awebarts.com', 'awebarts  Site Tags', 'awebarts  Home panel notes', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss link here', 'ali', '0000-00-00 00:00:00'),
(4, 'test T', 'test', 'test', 'test@test.test', 'test', 'test', 'test', 'test', 'test', 'test', 'ali', '2013-10-11 21:57:48'),
(5, 'new awebarts name', 'new url', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-11 22:05:56'),
(6, 'new awebarts name', 'new url', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-11 22:07:21'),
(7, 'new awebarts name news', 'new url', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-12 23:36:47'),
(8, 'new awebarts name news 000', 'new url 00', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-13 01:55:32'),
(9, 'awebarts software co', 'new url 00', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-11-23 12:16:26'),
(10, 'awebarts software co', 'http://awebarts.com/', '\r\n\r\nawebarts is one of the leading web designing companies that offers Clients web site designing services. We ensure that we provide the best of facilities for Clientsâ€™s Satisfaction by making a unique and sleek design, so that it gives the Client just the kind of look he desires. It is also about making your website a full-fledged online business and totally integrated with your offline business setup.\r\n\r\n.\r\n\r\nawebarts Provide you a creative website with quality images forms a functional solution for a successful business.  And interactive, stylish, and affordable website design services. Web-design can be considered as the practice of creating, presenting and arranging the text matter in an innovative manner so, that it promotes business of our clients. World Wide Web has lately been considered as a great measure to promote businesses at much affordable rates than any other means.\r\n\r\n.\r\n\r\nWe offer to our clientâ€™s unique, non-conventional web design well coupled with the corporate style of the company. Our stuff is a team providing a range of services, starting from creation of a site up to its promotion and support, and analysis of its economic efficiency.\r\n', 'ali@alihamdi.com', 'web design, HTML tutorials, web development, web site design, web site development, web page design, HTML development, XML development, Web software, HTML editors, Web editors, Web designers, XML schema, XML tutorials, \r\nXML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,ASP,ADO,VBScript,DOM,W3C,authoring,programming,learning,beginner''s guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,frames,color tables,Cascading Style Sheets,Active Server Pages,Dynamic HTML,Internet database development,Webbuilder,Sitebuilder,Webmaster,HTMLGuide,SiteExpert,\r\nØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, ØªØ·ÙˆÙŠØ± Ù…ÙˆØ§Ù‚Ø¹, Ø´Ø±ÙƒØ© ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, Ø¨Ø±Ù…Ø¬Ø© Ù…ÙˆØ§Ù‚Ø¹,\r\ninterface design, interface design software, wireframe software, wireframe,\r\nweb design, webdesign, website design, web page design, web design company, web design services, web design solutions, design, designs, design service, design as a service, small business website design, web development,\r\nÙ…ØµØ±ØŒ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ…ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ù…ØµØ±ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ø¹Ø±Ø¨ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ… Ù…Ù†ØªØ¯ÙŠØ§ØªØŒ ØªØµÙ…ÙŠÙ… Ø¨ÙˆØ§Ø¨Ø©ØŒ Ø¥Ø³ØªØ¶Ø§ÙØ© Ù…ÙˆØ§Ù‚Ø¹ØŒ Ù…Ù‚Ø¯Ù…Ø§Øª ÙÙ„Ø§Ø´ØŒ Ø£Ù†Ø¸Ù…Ø© Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ØŒ\r\nopen source, web design, design, xhtml, web standards, free web templates, web templates, templates, css templates, css,\r\nAli, Ali Hamdi, Ali Hamdi Fergani, Ali Hamdi Fergani Ali,\r\nØ¹Ù„ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ ÙØ±Ø¬Ø§Ù†ÙŠ , Ù…ØµÙ…Ù… Ù…ÙˆØ§Ù‚Ø¹ , Ù…Ø·ÙˆØ± Ù…ÙˆØ§Ù‚Ø¹ ØŒ Ø¥Ù†ØªØ±Ù†Øª ØŒ Ø¨Ù†ÙŠ Ø³ÙˆÙŠÙ ØŒ ÙƒÙˆÙ… Ø£Ø¨Ùˆ Ø®Ù„Ø§Ø¯ ,\r\nØªØ³ÙˆÙŠÙ‚ ØŒ Ø­Ù…Ù„Ø§Øª Ø¯Ø¹Ø§Ø¦ÙŠØ© ØŒ Ù…ØµØ± ØŒ Ø§Ù„ÙƒÙˆÙŠØª ØŒ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠØ© ØŒ Ø§Ù„Ø¥Ù…Ø§Ø±Ø§Øª ØŒ\r\n', 'Welcome admin !', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'ali', '2014-01-22 18:11:19'),
(11, 'awebarts software co', 'http://awebarts.com/', 'awebarts is one of the leading web designing companies that offers Clients web site designing services. We ensure that we provide the best of facilities for Clientsâ€™s Satisfaction by making a unique and sleek design, so that it gives the Client just the kind of look he desires. It is also about making your website a full-fledged online business and totally integrated with your offline business setup.\r\n\r\n.\r\n\r\nawebarts Provide you a creative website with quality images forms a functional solution for a successful business.  And interactive, stylish, and affordable website design services. Web-design can be considered as the practice of creating, presenting and arranging the text matter in an innovative manner so, that it promotes business of our clients. World Wide Web has lately been considered as a great measure to promote businesses at much affordable rates than any other means.\r\n\r\n.\r\n\r\nWe offer to our clientâ€™s unique, non-conventional web design well coupled with the corporate style of the company. Our stuff is a team providing a range of services, starting from creation of a site up to its promotion and support, and analysis of its economic efficiency.\r\n', 'ali@alihamdi.com', 'web design, HTML tutorials, web development, web site design, web site development, web page design, HTML development, XML development, Web software, HTML editors, Web editors, Web designers, XML schema, XML tutorials, \r\nXML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,ASP,ADO,VBScript,DOM,W3C,authoring,programming,learning,beginner''s guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,frames,color tables,Cascading Style Sheets,Active Server Pages,Dynamic HTML,Internet database development,Webbuilder,Sitebuilder,Webmaster,HTMLGuide,SiteExpert,\r\nØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, ØªØ·ÙˆÙŠØ± Ù…ÙˆØ§Ù‚Ø¹, Ø´Ø±ÙƒØ© ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, Ø¨Ø±Ù…Ø¬Ø© Ù…ÙˆØ§Ù‚Ø¹,\r\ninterface design, interface design software, wireframe software, wireframe,\r\nweb design, webdesign, website design, web page design, web design company, web design services, web design solutions, design, designs, design service, design as a service, small business website design, web development,\r\nÙ…ØµØ±ØŒ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ…ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ù…ØµØ±ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ø¹Ø±Ø¨ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ… Ù…Ù†ØªØ¯ÙŠØ§ØªØŒ ØªØµÙ…ÙŠÙ… Ø¨ÙˆØ§Ø¨Ø©ØŒ Ø¥Ø³ØªØ¶Ø§ÙØ© Ù…ÙˆØ§Ù‚Ø¹ØŒ Ù…Ù‚Ø¯Ù…Ø§Øª ÙÙ„Ø§Ø´ØŒ Ø£Ù†Ø¸Ù…Ø© Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ØŒ\r\nopen source, web design, design, xhtml, web standards, free web templates, web templates, templates, css templates, css,\r\nAli, Ali Hamdi, Ali Hamdi Fergani, Ali Hamdi Fergani Ali,\r\nØ¹Ù„ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ ÙØ±Ø¬Ø§Ù†ÙŠ , Ù…ØµÙ…Ù… Ù…ÙˆØ§Ù‚Ø¹ , Ù…Ø·ÙˆØ± Ù…ÙˆØ§Ù‚Ø¹ ØŒ Ø¥Ù†ØªØ±Ù†Øª ØŒ Ø¨Ù†ÙŠ Ø³ÙˆÙŠÙ ØŒ ÙƒÙˆÙ… Ø£Ø¨Ùˆ Ø®Ù„Ø§Ø¯ ,\r\nØªØ³ÙˆÙŠÙ‚ ØŒ Ø­Ù…Ù„Ø§Øª Ø¯Ø¹Ø§Ø¦ÙŠØ© ØŒ Ù…ØµØ± ØŒ Ø§Ù„ÙƒÙˆÙŠØª ØŒ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠØ© ØŒ Ø§Ù„Ø¥Ù…Ø§Ø±Ø§Øª ØŒ\r\n', 'Welcome admin !', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'ali', '2014-01-22 18:11:29'),
(12, 'awebarts software company', 'http://awebarts.com/', 'awebarts is one of the leading web designing companies that offers Clients web site designing services. We ensure that we provide the best of facilities for Clientsâ€™s Satisfaction by making a unique and sleek design, so that it gives the Client just the kind of look he desires. It is also about making your website a full-fledged online business and totally integrated with your offline business setup.\r\n\r\n.\r\n\r\nawebarts Provide you a creative website with quality images forms a functional solution for a successful business.  And interactive, stylish, and affordable website design services. Web-design can be considered as the practice of creating, presenting and arranging the text matter in an innovative manner so, that it promotes business of our clients. World Wide Web has lately been considered as a great measure to promote businesses at much affordable rates than any other means.\r\n\r\n.\r\n\r\nWe offer to our clientâ€™s unique, non-conventional web design well coupled with the corporate style of the company. Our stuff is a team providing a range of services, starting from creation of a site up to its promotion and support, and analysis of its economic efficiency.\r\n', 'ali@alihamdi.com', 'web design, HTML tutorials, web development, web site design, web site development, web page design, HTML development, XML development, Web software, HTML editors, Web editors, Web designers, XML schema, XML tutorials, \r\nXML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,ASP,ADO,VBScript,DOM,W3C,authoring,programming,learning,beginner''s guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,frames,color tables,Cascading Style Sheets,Active Server Pages,Dynamic HTML,Internet database development,Webbuilder,Sitebuilder,Webmaster,HTMLGuide,SiteExpert,\r\nØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, ØªØ·ÙˆÙŠØ± Ù…ÙˆØ§Ù‚Ø¹, Ø´Ø±ÙƒØ© ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, Ø¨Ø±Ù…Ø¬Ø© Ù…ÙˆØ§Ù‚Ø¹,\r\ninterface design, interface design software, wireframe software, wireframe,\r\nweb design, webdesign, website design, web page design, web design company, web design services, web design solutions, design, designs, design service, design as a service, small business website design, web development,\r\nÙ…ØµØ±ØŒ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ…ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ù…ØµØ±ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ø¹Ø±Ø¨ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ… Ù…Ù†ØªØ¯ÙŠØ§ØªØŒ ØªØµÙ…ÙŠÙ… Ø¨ÙˆØ§Ø¨Ø©ØŒ Ø¥Ø³ØªØ¶Ø§ÙØ© Ù…ÙˆØ§Ù‚Ø¹ØŒ Ù…Ù‚Ø¯Ù…Ø§Øª ÙÙ„Ø§Ø´ØŒ Ø£Ù†Ø¸Ù…Ø© Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ØŒ\r\nopen source, web design, design, xhtml, web standards, free web templates, web templates, templates, css templates, css,\r\nAli, Ali Hamdi, Ali Hamdi Fergani, Ali Hamdi Fergani Ali,\r\nØ¹Ù„ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ ÙØ±Ø¬Ø§Ù†ÙŠ , Ù…ØµÙ…Ù… Ù…ÙˆØ§Ù‚Ø¹ , Ù…Ø·ÙˆØ± Ù…ÙˆØ§Ù‚Ø¹ ØŒ Ø¥Ù†ØªØ±Ù†Øª ØŒ Ø¨Ù†ÙŠ Ø³ÙˆÙŠÙ ØŒ ÙƒÙˆÙ… Ø£Ø¨Ùˆ Ø®Ù„Ø§Ø¯ ,\r\nØªØ³ÙˆÙŠÙ‚ ØŒ Ø­Ù…Ù„Ø§Øª Ø¯Ø¹Ø§Ø¦ÙŠØ© ØŒ Ù…ØµØ± ØŒ Ø§Ù„ÙƒÙˆÙŠØª ØŒ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠØ© ØŒ Ø§Ù„Ø¥Ù…Ø§Ø±Ø§Øª ØŒ\r\n', 'Welcome admin !', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'ali', '2014-01-22 21:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(100) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_status` varchar(50) NOT NULL,
  `page_visits` int(11) NOT NULL,
  `sectionId` int(9) NOT NULL,
  `page_image` varchar(250) NOT NULL,
  `page_date` varchar(50) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_content`, `page_status`, `page_visits`, `sectionId`, `page_image`, `page_date`, `createdBy`) VALUES
(4, 'test new page title edited', 'test new page title test new page title edit test new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title test new page title edit test new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title test new page title edit test new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edittest new page title edit', 'active', 0, 5, 'images/logo.png', '14-10-13', 'ali'),
(5, 'test new page with an image', 'test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image test new page with an image ', 'active', 0, 6, '', '05-11-13', 'ali'),
(6, 'EMIRATES STEEL ', 'EMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONSEMIRATES STEEL TARGETS NEW RANGE OF STRUCTURAL STEEL FOR OFFSHORE INSTALLATIONS', 'active', 0, 6, 'images/logo.png', '06-11-13', 'ali'),
(7, 'test new page withOut an image', 'test new page withOut an imagetest new page withOut an imagetest new page withOut an imagetest new page withOut an imagetest new page withOut an imagetest new page withOut an imagetest new page withOut an image', 'active', 0, 3, 'images/logo.png', '06-11-13', 'ali'),
(8, 'Web Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', 0, 5, 'resources/uploads/6322_22-01-2014_984_05-11-2013_a5638fa22aff0bb0c45ca03b1f1821a6.jpg', '22-01-14', 'ali'),
(9, 'new product', 'new product new product new product', 'active', 0, 6, 'images/logo.png', '22-01-14', 'ali');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionName` varchar(100) NOT NULL,
  `sectionStaus` varchar(20) NOT NULL,
  `sectionLocation` varchar(20) NOT NULL,
  `sectionDesc` varchar(250) NOT NULL,
  `sectionDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `sectionName`, `sectionStaus`, `sectionLocation`, `sectionDesc`, `sectionDate`, `username`) VALUES
(3, 'Our Services', 'active', 'Side', 'projects section projects section projects section projects section Newprojects section New', '2014-01-22 22:17:17', 'ali'),
(5, 'Our Projects', 'disActive', 'Side', 'services section services section services section', '2014-01-22 22:17:44', 'ali'),
(6, 'Products', 'active', 'Side', 'Products', '2014-01-22 22:18:04', 'ali');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Ali Hamdi', 'ali', 'abc', 'ali@alihamdi.com'),
(2, 'Admin ', 'admin', '123', 'admin@awebarts.com'),
(3, 'test user', 'test', 'test', 'ali_fergani2003@yahoo.com'),
(4, 'mustafa', 'mustafa', 'mustafa', 'mustafa@mustafa.com'),
(5, '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

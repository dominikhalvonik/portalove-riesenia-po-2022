-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3306
-- Čas generovania: Po 17.Okt 2022, 07:28
-- Verzia serveru: 10.4.10-MariaDB
-- Verzia PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `portalove-riesenia`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(45) NOT NULL,
  `display_name` varchar(45) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_name_UNIQUE` (`sys_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `content`
--

INSERT INTO `content` (`id`, `sys_name`, `display_name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'welcome', 'Welcome to Pop Design', '<div class=\"row\">\r\n                                                <div class=\"col-sm-12 col-md-6 col-lg-6 col-xl-6\">\r\n                                                    <img src=\"img/welcome-1.jpg\" class=\"img-fluid mb-3\">\r\n                                                    <p>You are allowed to download, modify and use this template for your commercial or business websites. </p>\r\n                                                    <p>Please tell your friends about <a rel=\"nofollow\" href=\"https://fb.com/tooplate\" target=\"_parent\">Tooplate</a>. That will be very helpful for us. Thank you.</p>\r\n                                                </div>\r\n                                                <div class=\"col-sm-12 col-md-6 col-lg-6 col-xl-6\">\r\n                                                    <p>You are NOT allowed to put this template ZIP file for a download purpose on any template collection website.</p>\r\n                                                    <p>If you have any kind of question or comment, please feel free to <a rel=\"nofollow\" href=\"https://www.tooplate.com/contact\" target=\"_parent\">contact us</a>. You are welcome.</p>\r\n                                                    <img src=\"img/welcome-2.jpg\" class=\"img-fluid\">\r\n                                                </div>\r\n                                            </div>', '2022-09-26 00:00:00', '2022-09-26 00:00:00'),
(2, 'our-team', 'Background of Our Team', '<div class=\"row tm-reverse-sm\">\r\n                                                    <div class=\"col-sm-12 col-md-8 col-lg-8 col-xl-8\">\r\n                                                        <p class=\"mb-4\">Vestibulum aliquet, arcu accumsan lobortis bibendum, justo velit efficitur lorem, at pulvinar mi justo nec lacus. Nullam et libero aliquet, luctus nunc sit amet, tincidunt ligula. Sed finibus ante sed tortor cursus, nec malesuada lectus interdum.</p>\r\n                                                        <p class=\"mb-4\">Sed ex turpis, vulputate in efficitur id, lobortis eget nibh. Pellentesque maximus ipsum eget velit imperdiet sodales. Suspendisse in blandit mi.</p>\r\n                                                        <p class=\"mb-5\">Pellentesque finibus felis risus, ut malesuada felis viverra at. Quisque accumsan in mi non hendrerit.</p>\r\n                                                        <a href=\"#\" class=\"btn tm-btn-gray\">Read More</a>\r\n                                                    </div>\r\n                                                    <div class=\"col-sm-12 col-md-4 col-lg-4 col-xl-4 mb-lg-0 mb-sm-4 mb-4\">\r\n                                                        <img src=\"img/team.jpg\" class=\"img-fluid\">\r\n                                                    </div>\r\n                                                </div>', '2022-10-10 00:00:00', '2022-10-10 00:00:00'),
(3, 'our-work', 'Our Work', '<div class=\"row mb-3\">\r\n                                                    <div class=\"col-12\">\r\n                                                        <p>Aliquam interdum, nisl sed faucibus tempor, massa velit laoreet ipsum, et faucibus sapien magna at enim. Suspendisse a dictum tortor, vel rhoncus libero. Integer at lacus velit. Nullam dapibus venenatis placerat.</p>\r\n                                                    </div>\r\n                                                </div>\r\n                                                <div class=\"row\">\r\n                                                    <div class=\"col-12\">\r\n                                                        <div class=\"p-sm-4 p-2 tm-img-container\">\r\n                                                            <div class=\"tm-img-slider\" id=\"tmImgSlider\">\r\n                                                                <a href=\"#\" class=\"tm-slider-img-link\"><img src=\"img/gallery-img-01-tn.jpg\" alt=\"Image 1\" class=\"img-fluid tm-slider-img\"></a>\r\n                                                                <a href=\"#\" class=\"tm-slider-img-link\"><img src=\"img/gallery-img-02-tn.jpg\" alt=\"Image 2\" class=\"img-fluid tm-slider-img\"></a>\r\n                                                                <a href=\"#\" class=\"tm-slider-img-link\"><img src=\"img/gallery-img-03-tn.jpg\" alt=\"Image 3\" class=\"img-fluid tm-slider-img\"></a>\r\n                                                                <a href=\"#\" class=\"tm-slider-img-link\"><img src=\"img/gallery-img-04-tn.jpg\" alt=\"Image 4\" class=\"img-fluid tm-slider-img\"></a>\r\n                                                                <a href=\"#\" class=\"tm-slider-img-link\"><img src=\"img/gallery-img-05-tn.jpg\" alt=\"Image 5\" class=\"img-fluid tm-slider-img\"></a>\r\n                                                                <a href=\"#\" class=\"tm-slider-img-link\"><img src=\"img/gallery-img-06-tn.jpg\" alt=\"Image 6\" class=\"img-fluid tm-slider-img\"></a>\r\n                                                            </div>\r\n                                                        </div>\r\n                                                    </div>\r\n                                                </div>', '2022-10-10 00:00:00', '2022-10-10 00:00:00'),
(4, 'contact', 'Contact', '<div class=\"row mb-4\">\r\n                                                    <div class=\"col-12\">\r\n                                                        <p>Lorem ipsum dolor site amet, consectetur adipiscing elit. Aliquam interdum, nisl sed faucibus tempor, massa velit laoreet ipsum, et faucibus sapien magna at enim. Suspendisse a dictum tortor, vel rhoncus libero.</p>\r\n                                                    </div>\r\n                                                </div>\r\n                                                <div class=\"row\">\r\n                                                    <div class=\"col-12\">\r\n                                                        <form action=\"contact.php\" method=\"post\" class=\"contact-form\">\r\n                                                            <div class=\"row\">\r\n                                                                <div class=\"form-group col-md-6 col-lg-6 col-xl-6\">\r\n                                                                    <input type=\"text\" id=\"contact_name\" name=\"contact_name\" class=\"form-control\" placeholder=\"Name\"  required/>\r\n                                                                </div>\r\n                                                                <div class=\"form-group col-md-6 col-lg-6 col-xl-6 tm-col-email\">\r\n                                                                    <input type=\"email\" id=\"contact_email\" name=\"contact_email\" class=\"form-control\" placeholder=\"Email\"  required/>\r\n                                                                </div>\r\n                                                            </div>\r\n                                                            <div class=\"form-group\">\r\n                                                                <textarea id=\"contact_message\" name=\"contact_message\" class=\"form-control\" rows=\"9\" placeholder=\"Message\" required></textarea>\r\n                                                            </div>\r\n                                                            <button type=\"submit\" class=\"btn btn-primary tm-btn-submit\">Submit</button>\r\n                                                        </form>\r\n                                                    </div>\r\n                                                </div>', '2022-10-10 00:00:00', '2022-10-10 00:00:00');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `email`
--

INSERT INTO `email` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Dominik', 'dominik@gmail.com', 'Testujem ci naozaj to ide', '2022-10-10 08:51:20', '2022-10-10 08:51:20'),
(4, 'fdsafdsfds', 'dfsafdsa@fasfds.sk', 'fdsdsadsfads', '2022-10-17 07:24:41', '2022-10-17 07:24:41');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_name` varchar(45) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `display_order` int(2) DEFAULT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_UNIQUE` (`path`),
  KEY `fk_image_content_idx` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(45) NOT NULL,
  `display_name` varchar(45) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_name_UNIQUE` (`sys_name`),
  KEY `fk_menu_content1_idx` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `menu`
--

INSERT INTO `menu` (`id`, `sys_name`, `display_name`, `icon`, `content_id`, `created_at`, `updated_at`) VALUES
(2, 'welcome', 'Welcome', 'home', 1, '2022-10-03 07:59:32', '2022-10-03 07:59:32'),
(3, 'team', 'Our Team', 'users', 2, '2022-10-03 07:59:32', '2022-10-03 07:59:32'),
(4, 'work', 'Our Work', 'handshake', 3, '2022-10-03 07:59:32', '2022-10-03 07:59:32'),
(5, 'contact', 'Contact', 'comments', 4, '2022-10-03 07:59:32', '2022-10-03 07:59:32');

--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_content` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Obmedzenie pre tabuľku `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_content1` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

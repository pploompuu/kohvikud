-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 17, 2024 kell 11:39 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `kohvikud`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `ID` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukohad_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`ID`, `nimi`, `kommentaar`, `hinnang`, `toidukohad_id`) VALUES
(1, 'Schmitt-Hamill', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 8, 67),
(2, 'McGlynn Group', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellent', 6, 18),
(3, 'Swaniawski-Hamill', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 1, 31),
(4, 'Crona, Parker and Feil', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mau', 1, 50),
(5, 'Halvorson-Stracke', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, e', 4, 60),
(6, 'Heidenreich-Dicki', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellent', 4, 31),
(7, 'Lehner Inc', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 7, 72),
(8, 'Franecki-Ferry', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 2, 22),
(9, 'Schuppe, Leuschke and Champlin', 'Maecenas tincidunt lacus at velit.', 8, 47),
(10, 'Durgan Group', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia C', 9, 11),
(11, 'Rath-Treutel', 'Vivamus vestibulum sagittis sapien.', 5, 68),
(12, 'Koepp, Satterfield and Bosco', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 1, 82),
(13, 'O\'Conner Group', 'Duis at velit eu est congue elementum.', 9, 41),
(14, 'Cole LLC', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit a', 4, 45),
(15, 'Runolfsdottir, Beer and Emard', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis nato', 4, 43),
(16, 'Aufderhar-Kovacek', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 5, 11),
(17, 'Reichel Group', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam m', 2, 24),
(18, 'Schmeler-Gleichner', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel ', 10, 24),
(19, 'Koss and Sons', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 9, 35),
(20, 'Armstrong, Treutel and Hirthe', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 1, 36),
(21, 'Kling-Borer', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 8, 31),
(22, 'Schowalter, Kessler and Heidenreich', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 2, 22),
(23, 'Olson and Sons', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vi', 3, 26),
(24, 'Nicolas-Ferry', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat conval', 6, 13),
(25, 'Rowe Group', 'Cras non velit nec nisi vulputate nonummy.', 4, 17),
(26, 'Haley-Mann', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere ', 5, 16),
(27, 'Rice, Bauch and Anderson', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 7, 70),
(28, 'Luettgen-Wintheiser', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere ', 5, 63),
(29, 'Wiza, Brakus and Effertz', 'Suspendisse accumsan tortor quis turpis. Sed ante.', 6, 74),
(30, 'McGlynn Group', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3, 14),
(31, 'Strosin, Connelly and Russel', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 8, 69),
(32, 'Hartmann and Sons', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 6, 95),
(33, 'Thiel, Ward and Kiehn', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 2, 20),
(34, 'Aufderhar-Johnston', 'Praesent blandit.', 7, 45),
(35, 'Upton, Ritchie and Herman', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id', 7, 42),
(36, 'Ziemann-Lang', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, 27),
(37, 'Legros-Dare', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 6, 79),
(38, 'Crooks LLC', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio', 5, 83),
(39, 'Stehr, Cremin and Gislason', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pha', 2, 59),
(40, 'Volkman, Fadel and Kris', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing', 5, 47),
(41, 'Johnston, Kemmer and Raynor', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pell', 6, 95),
(42, 'Kshlerin, Stokes and Effertz', 'Nulla tempus.', 3, 68),
(43, 'Walsh and Sons', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tri', 10, 84),
(44, 'Quigley LLC', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 2, 90),
(45, 'Marvin, Cole and Hyatt', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 3, 55),
(46, 'Reinger, Gusikowski and Wisoky', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 5, 70),
(47, 'Williamson-Weimann', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis nato', 5, 86),
(48, 'Oberbrunner, Goodwin and Upton', 'Sed ante.', 8, 84),
(49, 'Treutel Group', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 1, 4),
(50, 'Goodwin-Hansen', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pha', 10, 62),
(51, 'Considine and Sons', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 2, 90),
(52, 'Turner and Sons', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi', 6, 50),
(53, 'Labadie Inc', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam s', 7, 12),
(54, 'Carroll Group', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet', 9, 71),
(55, 'Rosenbaum LLC', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 10, 80),
(56, 'Murazik-Bauch', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim', 3, 27),
(57, 'Hoppe, Wilkinson and Hane', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 7, 48),
(58, 'Koch-Lakin', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 4, 92),
(59, 'Jacobson-Lang', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam', 9, 22),
(60, 'Mertz-Mante', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa', 3, 35),
(61, 'Hand Inc', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam s', 3, 9),
(62, 'Halvorson LLC', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. ', 2, 77),
(63, 'Lakin and Sons', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabi', 1, 79),
(64, 'Olson, Strosin and McClure', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 5, 87),
(65, 'Harber, Roberts and Zemlak', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 9, 72),
(66, 'Hudson-Jenkins', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 7, 12),
(67, 'Konopelski, O\'Connell and Bernier', 'Donec ut mauris eget massa tempor convallis.', 10, 93),
(68, 'Tremblay, Walsh and Walter', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien ia', 10, 16),
(69, 'O\'Reilly, Satterfield and Weissnat', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 6, 95),
(70, 'Wuckert, Boyer and Lowe', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 3, 95),
(71, 'Lubowitz, Miller and Emmerich', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 3, 14),
(72, 'Wyman-Wolff', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 6, 10),
(73, 'Morar-Jacobson', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus', 7, 93),
(74, 'Rodriguez LLC', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 6, 43),
(75, 'Hane-Ebert', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 7, 79),
(76, 'Jerde Inc', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecen', 4, 35),
(77, 'Farrell-Reilly', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapi', 8, 33),
(78, 'Ankunding-O\'Keefe', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 1, 72),
(79, 'Tremblay, Tillman and Pouros', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 7, 89),
(80, 'Kassulke-Cummerata', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie ', 5, 40),
(81, 'Sporer-O\'Hara', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 6, 78),
(82, 'McLaughlin-Johnson', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vita', 2, 52),
(83, 'Schmidt-Johnston', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3, 35),
(84, 'White Group', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 3, 90),
(85, 'Zulauf, Hoppe and Kunde', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 4, 49),
(86, 'Pacocha Group', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 8, 44),
(87, 'Cummerata, Rohan and D\'Amore', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Na', 5, 69),
(88, 'Yost Group', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 7, 89),
(89, 'Murphy, Nicolas and Leffler', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sa', 10, 83),
(90, 'Schmeler, Harber and Walker', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 8, 50),
(91, 'Wuckert Inc', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus', 10, 24),
(92, 'Runolfsdottir, Schneider and Jacobi', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 9, 82),
(93, 'Stoltenberg, Blanda and Quigley', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 10, 47),
(94, 'Armstrong, Trantow and Hilll', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliqu', 10, 67),
(95, 'Little, Renner and Veum', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 3, 87),
(96, 'Abshire, Willms and Gislason', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan', 3, 19),
(97, 'Harber Group', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoq', 2, 36),
(98, 'Blick, Kuvalis and Witting', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravid', 2, 61),
(99, 'Prohaska, Lockman and Torphy', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 4, 90),
(100, 'Hessel, Berge and Abshire', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mau', 6, 47);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `toidukohad`
--

CREATE TABLE `toidukohad` (
  `ID` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `toidukohad`
--

INSERT INTO `toidukohad` (`ID`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud`) VALUES
(1, 'Aldwin Beacham', '5th Floor', 2.7, 6),
(2, 'Luciano Dibble', 'Room 263', 6.6, 53),
(3, 'Bradan Cassella', '18th Floor', 8.1, 58),
(4, 'Aubert Marcum', 'Apt 567', 8.8, 96),
(5, 'Nicholas Boustred', 'Suite 20', 7.5, 71),
(6, 'Shanon Ashfull', '19th Floor', 1.5, 72),
(7, 'Marlee Strettle', 'Apt 451', 7.7, 96),
(8, 'Rorke Macallam', 'Suite 52', 2.9, 56),
(9, 'Alister Blazeby', 'PO Box 28328', 4.1, 39),
(10, 'Sheilah Zanini', '6th Floor', 3.2, 38),
(11, 'Fallon Clitherow', 'Room 1432', 6.2, 86),
(12, 'Sauveur Bocke', 'PO Box 64354', 4.9, 28),
(13, 'Jessy Blackbourn', 'Apt 212', 7.1, 67),
(14, 'Rodger Ogers', 'PO Box 76901', 8.6, 38),
(15, 'Dougy Halfacree', 'PO Box 90968', 4.3, 82),
(16, 'Linnell Howen', 'Apt 1448', 7.8, 98),
(17, 'Walt Eichmann', '3rd Floor', 5.9, 69),
(18, 'Pascale Giacomasso', 'Room 1903', 4.3, 54),
(19, 'Elston Worsom', 'Room 184', 6, 35),
(20, 'Karleen Shephard', '16th Floor', 4.4, 23),
(21, 'Sheila-kathryn Zieme', '17th Floor', 1.9, 75),
(22, 'Dix Gritsunov', 'PO Box 12753', 9, 48),
(23, 'Marilyn Rippingall', 'Apt 1436', 1.4, 17),
(24, 'Misti Aitkenhead', 'PO Box 25298', 4.6, 78),
(25, 'Myrna Kinder', '7th Floor', 5.1, 81),
(26, 'Tamera Peddersen', 'Room 522', 9.6, 87),
(27, 'George Peaurt', 'PO Box 77800', 6.8, 96),
(28, 'Pat Briddock', '15th Floor', 4, 85),
(29, 'Trevar Killoran', 'PO Box 14929', 7.9, 11),
(30, 'Lucas Handes', '3rd Floor', 3.7, 75),
(31, 'Editha Kenningham', 'Room 994', 6.6, 5),
(32, 'Culley Marron', 'Apt 938', 1.7, 93),
(33, 'Rickard Pavelin', 'Suite 30', 2.3, 17),
(34, 'Brigit Malshinger', 'PO Box 97023', 4.3, 49),
(35, 'Evita Staresmeare', '20th Floor', 3.2, 95),
(36, 'Nathaniel Wandrach', 'Apt 1872', 8.8, 23),
(37, 'Lionel Forbear', 'Suite 66', 3.5, 21),
(38, 'Thain Antrag', 'Apt 1533', 9.5, 92),
(39, 'Samson Kyncl', 'Suite 12', 6.6, 8),
(40, 'Brandy Pideon', 'Apt 526', 3.2, 27),
(41, 'Fanchon Scraney', 'Apt 737', 1.1, 57),
(42, 'Trina Menlow', 'PO Box 80658', 6.9, 22),
(43, 'Xena Patrick', 'PO Box 15873', 6.8, 22),
(44, 'Ursala Adolthine', 'PO Box 12224', 1.1, 50),
(45, 'Esther Hooke', 'PO Box 67761', 1.5, 4),
(46, 'Rafael Atlee', 'PO Box 74522', 8.9, 90),
(47, 'Maxim Eva', 'Suite 100', 5, 58),
(48, 'Nanette Schollar', 'Room 1712', 5.7, 96),
(49, 'Winslow Tittershill', 'Room 1501', 1.5, 43),
(50, 'Erminie Crosston', 'Apt 1887', 4.4, 32),
(51, 'Devinne Brayford', 'Room 329', 7.6, 36),
(52, 'Nichole Esby', 'Suite 61', 9.7, 61),
(53, 'Fredra Crispe', '18th Floor', 3.8, 91),
(54, 'Morissa Hartlebury', 'Suite 68', 5.6, 54),
(55, 'Alex Graber', 'Suite 55', 1.5, 61),
(56, 'Lucian Polet', '10th Floor', 5.9, 79),
(57, 'Ulrika Shovel', 'Room 986', 5.9, 29),
(58, 'Richmound De Domenicis', 'Room 1788', 9.2, 13),
(59, 'Vanya Bowgen', 'Apt 1174', 3.7, 73),
(60, 'Aggie Penkethman', 'PO Box 28718', 1.4, 43),
(61, 'Silvain Dineen', '3rd Floor', 4.1, 23),
(62, 'Tome McAlister', 'PO Box 3927', 6.9, 79),
(63, 'Marcelia Reubens', 'Suite 23', 9, 25),
(64, 'Carlyle De Clairmont', 'Apt 1201', 5.2, 2),
(65, 'Sampson Figure', '3rd Floor', 7.8, 20),
(66, 'Yehudit Shimuk', '7th Floor', 1.9, 24),
(67, 'Orrin Rediers', 'Apt 1528', 3.4, 20),
(68, 'Troy Rubinsaft', '7th Floor', 6.8, 2),
(69, 'Niles Loader', 'Suite 34', 1.4, 19),
(70, 'Gwendolyn Peasgood', '9th Floor', 4.1, 66),
(71, 'Adela Rolland', 'Apt 1895', 2.7, 55),
(72, 'Steffane Daines', 'Room 1511', 6.4, 37),
(73, 'Marylynne McGonnell', 'Apt 348', 1.4, 10),
(74, 'Eliot Sleite', '5th Floor', 4.9, 33),
(75, 'Karita Fairfoot', 'PO Box 62722', 4.3, 3),
(76, 'Lucinda Haighton', 'Apt 1489', 5.3, 44),
(77, 'Jackie Carberry', 'Apt 256', 6.1, 75),
(78, 'Darline Szimoni', 'PO Box 91991', 6.4, 90),
(79, 'Xever Abdie', 'Room 1675', 8.8, 17),
(80, 'Cliff Nelligan', 'Room 36', 3.7, 56),
(81, 'Drud Kardos', '16th Floor', 6.9, 99),
(82, 'Quincey Purchon', '17th Floor', 4.5, 81),
(83, 'Spense Trounce', 'Room 927', 2.4, 35),
(84, 'Rosemonde Pardal', 'PO Box 78379', 7.9, 28),
(85, 'Missy Kamienski', 'Room 800', 2.5, 27),
(86, 'Rasla O\'Docherty', 'Suite 64', 9.1, 100),
(87, 'Nils Kaesmans', 'PO Box 88719', 7.7, 63),
(88, 'Kenneth Gambles', 'Suite 75', 7.3, 20),
(89, 'Codi Rowney', '8th Floor', 8.2, 69),
(90, 'Sonya Deverille', 'Apt 1915', 8, 38),
(91, 'Mable Goodridge', 'Room 1047', 2.2, 91),
(92, 'Osmund Marquet', 'PO Box 70923', 9.1, 65),
(93, 'Lucienne Reuther', 'Room 1635', 8.9, 76),
(94, 'Stewart Fandrey', 'Suite 42', 3.4, 26),
(95, 'Corry Jayume', 'Room 1346', 1.6, 57),
(96, 'Patty Hellard', 'Apt 1581', 6.8, 23),
(97, 'Leonid Donahue', 'Room 1637', 5.8, 65),
(98, 'Stafani Krysztofowicz', 'Suite 89', 3, 13),
(99, 'Oberon Yukhnevich', 'Apt 64', 9.2, 7),
(100, 'Cass Carlone', 'Suite 44', 6.2, 9);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksid tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

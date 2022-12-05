
CREATE TABLE `author` (
  `authorid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `author` (`authorid`, `name`, `status`) VALUES
(2, 'Андрей Сапковски', 'Enable'),
(3, 'Брандън Сандерсънp; Michael Morrison', 'Enable');

-- --------------------------------------------------------


CREATE TABLE `book` (
  `bookid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `rackid` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `publisherid` int(11) NOT NULL,
  `isbn` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_copy` int(5) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `categoryid`, `authorid`, `rackid`, `name`, `picture`, `publisherid`, `isbn`, `no_of_copy`, `status`, `added_on`, `updated_on`) VALUES
(1, 2, 2, 2, 'The Joy of PHP Programming', 'joy-php.jpg', 8, 'B00BALXN70', 10, 'Enable', '2022-06-12 11:12:48', '2022-06-12 11:13:27'),
(2, 2, 3, 2, 'Head First PHP &amp; MySQL', 'header-first-php.jpg', 9, '0596006306', 10, 'Enable', '2022-06-12 11:16:01', '2022-06-12 11:16:01'),
(3, 2, 2, 1, 'dsgsdgsd', '', 7, 'sdfsd2334', 23, 'Enable', '2022-06-12 13:29:14', '2022-06-12 13:29:14');

-- --------------------------------------------------------



CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `category` (`categoryid`, `name`, `status`) VALUES
(1, 'Програмиране', 'Enable'),
(2, '	Математика', 'Enable'),
(3, '	Фентъзи', 'Enable'),
(4, '	Фантастика', 'Enable'),
(6, '	Сатира', 'Enable');




CREATE TABLE `issued_book` (
  `issuebookid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `issue_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `expected_return_date` datetime NOT NULL,
  `return_date_time` datetime NOT NULL,
  `status` enum('Issued','Returned','Not Return') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `issued_book` (`issuebookid`, `bookid`, `userid`, `issue_date_time`, `expected_return_date`, `return_date_time`, `status`) VALUES
(1, 2, 2, '2022-06-12 15:33:45', '2022-06-15 16:27:59', '2022-06-16 16:27:59', 'Issued'),
(3, 3, 3, '2022-06-12 18:46:07', '2022-06-30 18:46:02', '2022-06-12 18:46:14', 'Returned');

-- --------------------------------------------------------



CREATE TABLE `publisher` (
  `publisherid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `publisher` (`publisherid`, `name`, `status`) VALUES
(2, 'Artline', 'Enable'),
(3, 'Ciela', 'Enable'),
(4, '	Aбагар', 'Enable'),
(5, '	Бургаски издателства', 'Enable'),
(6, '	Бард', 'Enable'),
(7, '	Анубис', 'Enable'),
(8, '	Атика', 'Enable'),
(9, '	Хермес', 'Enable');





CREATE TABLE `rack` (
  `rackid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `rack` (`rackid`, `name`, `status`) VALUES
(1, 'R1', 'Enable'),
(2, 'R2', 'Enable');

-- --------------------------------------------------------



CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `role` enum('admin','user') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(2, 'Ico', 'Velev', 'icoveles@gmai.com', '202cb962ac59075b964b07152d234b70', 'ADMIN'),
(3, 'stoqnov', 'stanislav', 'sstanislavov@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(4, 'Adam', NULL, 'adam@abv.bg', '202cb962ac59075b964b07152d234b70', 'ADMIN');




ALTER TABLE `author`
  ADD PRIMARY KEY (`authorid`);


ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);



ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);


ALTER TABLE `issued_book`
  ADD PRIMARY KEY (`issuebookid`);


ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);


ALTER TABLE `rack`
  ADD PRIMARY KEY (`rackid`);



ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `author`
  MODIFY `authorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `book`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `issued_book`
  MODIFY `issuebookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `publisher`
  MODIFY `publisherid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `rack`
  MODIFY `rackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;


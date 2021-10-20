-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2020 at 01:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport_org_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `athletes`
--

CREATE TABLE `athletes` (
  `id` int(11) NOT NULL,
  `personal_athlete_id` int(11) DEFAULT NULL,
  `name_athlete` varchar(30) DEFAULT NULL,
  `first_club` varchar(30) DEFAULT NULL,
  `first_coach` varchar(30) DEFAULT NULL,
  `first_sport` varchar(30) DEFAULT NULL,
  `second_club` varchar(30) DEFAULT NULL,
  `second_coach` varchar(30) DEFAULT NULL,
  `second_sport` varchar(30) DEFAULT NULL,
  `third_club` varchar(30) DEFAULT NULL,
  `third_coach` varchar(30) DEFAULT NULL,
  `third_sport` varchar(30) DEFAULT NULL,
  `fourth_club` varchar(30) DEFAULT NULL,
  `fourth_coach` varchar(30) DEFAULT NULL,
  `fourth_sport` varchar(30) DEFAULT NULL,
  `fifth_club` varchar(30) DEFAULT NULL,
  `fifth_coach` varchar(30) DEFAULT NULL,
  `fifth_sport` varchar(30) DEFAULT NULL,
  `sixth_club` varchar(30) DEFAULT NULL,
  `sixth_coach` varchar(30) DEFAULT NULL,
  `sixth_sport` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `athletes`
--

INSERT INTO `athletes` (`id`, `personal_athlete_id`, `name_athlete`, `first_club`, `first_coach`, `first_sport`, `second_club`, `second_coach`, `second_sport`, `third_club`, `third_coach`, `third_sport`, `fourth_club`, `fourth_coach`, `fourth_sport`, `fifth_club`, `fifth_coach`, `fifth_sport`, `sixth_club`, `sixth_coach`, `sixth_sport`) VALUES
(1, 1, 'Том', 'Перемога', 'Сокіл', 'Хокей', 'Перемога', 'Шайба', 'Хокей', 'Перемога', 'Богдан', 'Хокей', 'Чемпіон', 'Володимир', 'Футбол', 'Атака', 'Яна', 'Плавання', 'Атака', 'Мілан', 'Теніс'),
(2, 2, 'Єва', 'Атака', 'Сампрас', 'Теніс', 'Маестро', 'Михайло', 'Теніс', 'Іскра', 'Мілан', 'Теніс', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'Віталій', 'Перемога', 'Груша', 'Бокс', 'Перемога', 'Григорій', 'Бокс', 'Чемпіон', 'Шева', 'Футбол', 'Чемпіон', 'Володимир', 'Футбол', 'Океан', 'Яна', 'Плавання', 'Океан', 'Настя', 'Плавання'),
(4, 4, 'Алекс', 'Ураган', 'Шева', 'Футбол', 'Ураган', 'Штанга', 'Футбол', 'Ураган', 'Володимир', 'Футбол', 'Чемпіон', 'Михайло', 'Теніс', 'Океан', 'Яна', 'Плавання', NULL, NULL, NULL),
(5, 5, 'Марта', 'Іскра', 'Атака', 'Теніс', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 'Катя', 'Чемпіон', 'Сампрас', 'Теніс', 'Атака', 'Мілан', 'Теніс', 'Іскра', 'Михайло', 'Теніс', NULL, NULL, NULL, 'Океан', 'Яна', 'Плавання', 'Океан', 'Настя', 'Плавання'),
(7, 7, 'Андрій', 'Ураган', 'Володимир', 'Футбол', 'Ураган', 'Штанга', 'Футбол', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 'Ольга', 'Океан', 'Яна', 'Плавання', 'Океан', 'Настя', 'Плавання', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 'Микола', 'Ураган', 'Штанга', 'Футбол', 'Ураган', 'Володимир', 'Футбол', 'Перемога', 'Груша', 'Бокс', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boxing_hall`
--

CREATE TABLE `boxing_hall` (
  `id_hall` int(11) NOT NULL,
  `type_sport` int(11) NOT NULL,
  `name_of_the_hall` varchar(20) DEFAULT NULL,
  `number_of_rings` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `boxing_hall`
--

INSERT INTO `boxing_hall` (`id_hall`, `type_sport`, `name_of_the_hall`, `number_of_rings`) VALUES
(1, 1, 'Удар', 4),
(2, 1, 'Халк', 2),
(3, 1, 'Молоток', 6),
(4, 1, 'Нокаут', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` int(11) NOT NULL,
  `name_coach` varchar(30) DEFAULT NULL,
  `coach_type_sport_id` int(11) NOT NULL,
  `coach_main_sport` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`id`, `name_coach`, `coach_type_sport_id`, `coach_main_sport`) VALUES
(1, 'Груша', 1, 'Бокс'),
(2, 'Сокіл', 2, 'Хокей'),
(3, 'Шева', 3, 'Футбол'),
(4, 'Яна', 4, 'Плавання'),
(5, 'Сампрас', 5, 'Теніс'),
(6, 'Григорій', 1, 'Бокс'),
(7, 'Шайба', 2, 'Хокей'),
(8, 'Олександр', 2, 'Хокей'),
(9, 'Богдан', 2, 'Хокей'),
(10, 'Штанга', 3, 'Футбол'),
(11, 'Володимир', 3, 'Футбол'),
(12, 'Настя', 4, 'Плавання'),
(13, 'Мілан', 5, 'Теніс'),
(14, 'Михайло', 5, 'Теніс');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id_comp` int(11) NOT NULL,
  `organizer` varchar(70) DEFAULT NULL,
  `type_sport` int(11) DEFAULT NULL,
  `type_infrastructure` varchar(20) DEFAULT NULL,
  `name_infrastructure_object` varchar(50) DEFAULT NULL,
  `date_of_the_event` date DEFAULT NULL,
  `name_ivent` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id_comp`, `organizer`, `type_sport`, `type_infrastructure`, `name_infrastructure_object`, `date_of_the_event`, `name_ivent`) VALUES
(1, 'Світова боксерська асоціація', 1, 'Зал для боксу', 'Нокаут', '2015-11-22', 'Постріл'),
(2, 'ФІФА', 3, 'Стадіон', 'Дніпро', '2006-05-08', 'Боротьба рівних'),
(3, 'Світова боксерська асоціація', 1, 'Зал для боксу', 'Молоток', '2009-10-15', 'Володар рингу'),
(4, 'ФІФА', 3, 'Стадіон', 'Олімпія', '2010-07-15', 'Фінал чемпіонату Європи'),
(5, 'Міжнародна аматорська асоціація плавання', 4, 'Басейн', 'Дельфін', '2014-03-12', 'Олімпіада'),
(6, 'Міжнародна федерація хокею з шайбою', 2, 'Каток', 'Льодова арена', '2003-07-20', 'Кубок Стенлі'),
(7, 'Міжнародна федерація тенісу', 5, 'Корт', 'Блискавка', '2018-08-02', 'Жага перемоги');

-- --------------------------------------------------------

--
-- Table structure for table `icerink`
--

CREATE TABLE `icerink` (
  `id_icerink` int(11) NOT NULL,
  `type_sport` int(11) NOT NULL,
  `name_of_the_rink` varchar(20) DEFAULT NULL,
  `type_of_the_rink` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `icerink`
--

INSERT INTO `icerink` (`id_icerink`, `type_sport`, `name_of_the_rink`, `type_of_the_rink`) VALUES
(1, 2, 'Льодова арена', 'закритий'),
(2, 2, 'Зимова казка', 'відкритий');

-- --------------------------------------------------------

--
-- Table structure for table `list_of_athletes`
--

CREATE TABLE `list_of_athletes` (
  `id` int(11) NOT NULL,
  `name_of_athlete` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_of_athletes`
--

INSERT INTO `list_of_athletes` (`id`, `name_of_athlete`) VALUES
(1, 'Том'),
(2, 'Єва'),
(3, 'Віталій'),
(4, 'Алекс'),
(5, 'Марта'),
(6, 'Катя'),
(7, 'Андрій'),
(8, 'Ольга'),
(9, 'Микола');

-- --------------------------------------------------------

--
-- Table structure for table `list_of_sportclubs`
--

CREATE TABLE `list_of_sportclubs` (
  `id` int(11) NOT NULL,
  `name_of_club` varchar(30) DEFAULT NULL,
  `representative` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_of_sportclubs`
--

INSERT INTO `list_of_sportclubs` (`id`, `name_of_club`, `representative`) VALUES
(1, 'Перемога', 1),
(2, 'Маестро', 3),
(3, 'Чемпіон', 2),
(4, 'Іскра', 9),
(5, 'Океан', 6),
(6, 'Ураган', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sportclubs_statistics`
--

CREATE TABLE `sportclubs_statistics` (
  `id` int(11) NOT NULL,
  `club_representative` int(11) DEFAULT NULL,
  `all_participants` int(11) DEFAULT NULL,
  `competition_participate` int(11) DEFAULT NULL,
  `competition_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sportclubs_statistics`
--

INSERT INTO `sportclubs_statistics` (`id`, `club_representative`, `all_participants`, `competition_participate`, `competition_name`) VALUES
(1, 1, 7, 3, 'Кубок Стенлі'),
(2, 2, 4, 3, 'Постріл'),
(3, 3, 8, 3, 'Жага перемоги'),
(4, 4, 6, 3, 'Боротьба рівних'),
(5, 5, 9, 3, 'Фінал чемпіонату Європи'),
(6, 6, 6, 3, 'Олімпіада');

-- --------------------------------------------------------

--
-- Table structure for table `sports_category`
--

CREATE TABLE `sports_category` (
  `id` int(11) NOT NULL,
  `personal_athlete_id` int(11) NOT NULL,
  `name_athlete` varchar(30) DEFAULT NULL,
  `boxing` int(11) DEFAULT NULL,
  `hockey` int(11) DEFAULT NULL,
  `football` int(11) DEFAULT NULL,
  `swimming` int(11) DEFAULT NULL,
  `tennis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sports_category`
--

INSERT INTO `sports_category` (`id`, `personal_athlete_id`, `name_athlete`, `boxing`, `hockey`, `football`, `swimming`, `tennis`) VALUES
(1, 1, 'Том', 3, 9, 5, 3, 2),
(2, 2, 'Єва', 10, 2, 5, 4, 2),
(3, 3, 'Віталій', 1, 2, 5, 4, 2),
(4, 4, 'Алекс', 10, 2, 5, 9, 2),
(5, 5, 'Марта', 6, 2, 5, 6, 2),
(6, 6, 'Катя', 9, 2, 5, 7, 2),
(7, 7, 'Андрій', 9, 0, 0, 0, 0),
(8, 8, 'Ольга', 0, 2, 0, 0, 0),
(9, 9, 'Микола', 2, 2, 10, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `id_stadium` int(11) NOT NULL,
  `type_sport` int(11) NOT NULL,
  `name_of_the_stadium` varchar(20) DEFAULT NULL,
  `stadium_capacity` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`id_stadium`, `type_sport`, `name_of_the_stadium`, `stadium_capacity`) VALUES
(1, 3, 'Динамо', 35000),
(2, 3, 'Олімпія', 45000),
(3, 3, 'Дніпро', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `swimming_pool`
--

CREATE TABLE `swimming_pool` (
  `id_sp` int(11) NOT NULL,
  `type_sport` int(11) NOT NULL,
  `name_of_the_sp` varchar(20) DEFAULT NULL,
  `number_of_tracks` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swimming_pool`
--

INSERT INTO `swimming_pool` (`id_sp`, `type_sport`, `name_of_the_sp`, `number_of_tracks`) VALUES
(1, 4, 'Дельфін', 12),
(2, 4, 'Акула', 8),
(3, 4, 'Іхтіандр', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tennis_courts`
--

CREATE TABLE `tennis_courts` (
  `id_tk` int(11) NOT NULL,
  `type_sport` int(11) NOT NULL,
  `name_of_the_tk` varchar(20) DEFAULT NULL,
  `type_of_coating` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tennis_courts`
--

INSERT INTO `tennis_courts` (`id_tk`, `type_sport`, `name_of_the_tk`, `type_of_coating`) VALUES
(1, 5, 'Блискавка', 'хард'),
(2, 5, 'Нова Англия', 'грунт'),
(3, 5, 'Стрибунець', 'трава');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_sports`
--

CREATE TABLE `type_of_sports` (
  `id` int(11) NOT NULL,
  `type_sport_id` int(11) NOT NULL,
  `name_sport` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_of_sports`
--

INSERT INTO `type_of_sports` (`id`, `type_sport_id`, `name_sport`) VALUES
(1, 1, 'Бокс'),
(2, 2, 'Хокей'),
(3, 3, 'Футбол'),
(4, 4, 'Плавання'),
(5, 5, 'Теніс');

-- --------------------------------------------------------

--
-- Table structure for table `winners_of_competitions`
--

CREATE TABLE `winners_of_competitions` (
  `id_woc` int(11) NOT NULL,
  `name_ivent` varchar(50) NOT NULL,
  `type_sport` int(11) DEFAULT NULL,
  `date_of_the_event` date DEFAULT NULL,
  `first_place` varchar(20) DEFAULT NULL,
  `second_place` varchar(20) DEFAULT NULL,
  `third_place` varchar(20) DEFAULT NULL,
  `sportclub_winner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `winners_of_competitions`
--

INSERT INTO `winners_of_competitions` (`id_woc`, `name_ivent`, `type_sport`, `date_of_the_event`, `first_place`, `second_place`, `third_place`, `sportclub_winner`) VALUES
(1, 'Жага перемоги', 5, '2018-08-02', 'Єва', 'Катя', 'Марта', 3),
(2, 'Володар рингу', 1, '2009-10-15', 'Віталій', 'Алекс', 'Том', 2),
(3, 'Боротьба рівних', 3, '2006-05-08', 'Алекс', 'Том', 'Віталій', 4),
(4, 'Олімпіада', 4, '2014-03-12', 'Катя', 'Єва', 'Марта', 5),
(5, 'Кубок Стенлі', 2, '2003-07-20', 'Том', 'Віталій', 'Алекс', 1),
(6, 'Постріл', 1, '2015-11-22', 'Віталій', 'Микола', 'Том', 2),
(7, 'Фінал чемпіонату Європи', 3, '2010-07-15', 'Андрій', 'Алекс', 'Микола', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `athletes`
--
ALTER TABLE `athletes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_athlete_id` (`personal_athlete_id`);

--
-- Indexes for table `boxing_hall`
--
ALTER TABLE `boxing_hall`
  ADD PRIMARY KEY (`id_hall`),
  ADD KEY `type_sport` (`type_sport`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coach_type_sport_id` (`coach_type_sport_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id_comp`),
  ADD KEY `type_sport` (`type_sport`);

--
-- Indexes for table `icerink`
--
ALTER TABLE `icerink`
  ADD PRIMARY KEY (`id_icerink`),
  ADD KEY `type_sport` (`type_sport`);

--
-- Indexes for table `list_of_athletes`
--
ALTER TABLE `list_of_athletes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_of_sportclubs`
--
ALTER TABLE `list_of_sportclubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representative` (`representative`);

--
-- Indexes for table `sportclubs_statistics`
--
ALTER TABLE `sportclubs_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_representative` (`club_representative`);

--
-- Indexes for table `sports_category`
--
ALTER TABLE `sports_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_athlete_id` (`personal_athlete_id`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`id_stadium`),
  ADD KEY `type_sport` (`type_sport`);

--
-- Indexes for table `swimming_pool`
--
ALTER TABLE `swimming_pool`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `type_sport` (`type_sport`);

--
-- Indexes for table `tennis_courts`
--
ALTER TABLE `tennis_courts`
  ADD PRIMARY KEY (`id_tk`),
  ADD KEY `type_sport` (`type_sport`);

--
-- Indexes for table `type_of_sports`
--
ALTER TABLE `type_of_sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winners_of_competitions`
--
ALTER TABLE `winners_of_competitions`
  ADD PRIMARY KEY (`id_woc`),
  ADD KEY `type_sports` (`type_sport`),
  ADD KEY `sportclub_winner` (`sportclub_winner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `athletes`
--
ALTER TABLE `athletes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `boxing_hall`
--
ALTER TABLE `boxing_hall`
  MODIFY `id_hall` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id_comp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `icerink`
--
ALTER TABLE `icerink`
  MODIFY `id_icerink` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_of_athletes`
--
ALTER TABLE `list_of_athletes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `list_of_sportclubs`
--
ALTER TABLE `list_of_sportclubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sportclubs_statistics`
--
ALTER TABLE `sportclubs_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sports_category`
--
ALTER TABLE `sports_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stadium`
--
ALTER TABLE `stadium`
  MODIFY `id_stadium` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `swimming_pool`
--
ALTER TABLE `swimming_pool`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tennis_courts`
--
ALTER TABLE `tennis_courts`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_of_sports`
--
ALTER TABLE `type_of_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `winners_of_competitions`
--
ALTER TABLE `winners_of_competitions`
  MODIFY `id_woc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `athletes`
--
ALTER TABLE `athletes`
  ADD CONSTRAINT `athletes_ibfk_1` FOREIGN KEY (`personal_athlete_id`) REFERENCES `list_of_athletes` (`id`);

--
-- Constraints for table `boxing_hall`
--
ALTER TABLE `boxing_hall`
  ADD CONSTRAINT `boxing_hall_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`coach_type_sport_id`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `competitions`
--
ALTER TABLE `competitions`
  ADD CONSTRAINT `competitions_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `icerink`
--
ALTER TABLE `icerink`
  ADD CONSTRAINT `icerink_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `list_of_sportclubs`
--
ALTER TABLE `list_of_sportclubs`
  ADD CONSTRAINT `list_of_sportclubs_ibfk_1` FOREIGN KEY (`representative`) REFERENCES `list_of_athletes` (`id`);

--
-- Constraints for table `sportclubs_statistics`
--
ALTER TABLE `sportclubs_statistics`
  ADD CONSTRAINT `sportclubs_statistics_ibfk_1` FOREIGN KEY (`club_representative`) REFERENCES `list_of_sportclubs` (`id`);

--
-- Constraints for table `sports_category`
--
ALTER TABLE `sports_category`
  ADD CONSTRAINT `sports_category_ibfk_1` FOREIGN KEY (`personal_athlete_id`) REFERENCES `list_of_athletes` (`id`);

--
-- Constraints for table `stadium`
--
ALTER TABLE `stadium`
  ADD CONSTRAINT `stadium_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `swimming_pool`
--
ALTER TABLE `swimming_pool`
  ADD CONSTRAINT `swimming_pool_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `tennis_courts`
--
ALTER TABLE `tennis_courts`
  ADD CONSTRAINT `tennis_courts_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`);

--
-- Constraints for table `winners_of_competitions`
--
ALTER TABLE `winners_of_competitions`
  ADD CONSTRAINT `winners_of_competitions_ibfk_1` FOREIGN KEY (`type_sport`) REFERENCES `type_of_sports` (`id`),
  ADD CONSTRAINT `winners_of_competitions_ibfk_2` FOREIGN KEY (`sportclub_winner`) REFERENCES `list_of_sportclubs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

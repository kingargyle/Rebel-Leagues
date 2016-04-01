-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2016 at 02:19 PM
-- Server version: 5.7.11
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xwingleague`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(20) NOT NULL,
  `tier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attribute_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `attribute_group` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `logo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attribute_id`, `name`, `attribute_group`, `icon`, `logo`) VALUES
(1, 'Epic', 'Format', NULL, NULL),
(2, 'VASSAL', 'Emplacement', NULL, NULL),
(3, 'Free Game', 'Emplacement', NULL, NULL),
(4, 'Donjon', 'Emplacement', NULL, NULL),
(5, 'La Revanche', 'Emplacement', NULL, NULL),
(6, 'Imaginaire', 'Emplacement', NULL, NULL),
(7, 'Standard', 'Format', NULL, NULL),
(8, 'Scenario', 'Format', NULL, NULL),
(9, 'Escalation', 'Format', NULL, NULL),
(10, 'Autre', 'Format', NULL, NULL),
(11, 'Ligue Saison 1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `faction_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `parent_faction_id` int(11) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `logo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`faction_id`, `name`, `parent_faction_id`, `color`, `logo`) VALUES
(1, 'Alliance', NULL, 'a90c0c', 'uploads/factions/81edf7d428e9f21aefab65d440a2c1a1.png'),
(2, 'Empire', NULL, '248717', 'uploads/factions/84935fe3eba50ea4e3d70b7f7964b9c0.png'),
(3, 'Scum and Villainy', NULL, 'dda923', 'uploads/factions/f01a32fba3591049fc979f5fc7d0bc08.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `factions_games_split`
-- (See below for the actual view)
--
CREATE TABLE `factions_games_split` (
`parent_faction_id` int(11)
,`faction_id` int(11)
,`rival_parent_faction_id` int(11)
,`rival_faction_id` int(11)
,`is_win` bigint(20)
,`is_draw` tinyint(4)
,`is_loss` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `factions_ranking`
-- (See below for the actual view)
--
CREATE TABLE `factions_ranking` (
`parent_faction_id` int(11)
,`parent_faction_name` varchar(40)
,`faction_id` int(11)
,`faction_name` varchar(40)
,`games_won` decimal(41,0)
,`games_tied` decimal(25,0)
,`games_lost` decimal(41,0)
,`games_played` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `factions_stats`
-- (See below for the actual view)
--
CREATE TABLE `factions_stats` (
`faction_id` int(11)
,`rival_faction_id` int(11)
,`rival_faction_name` varchar(40)
,`rival_faction_color` varchar(6)
,`rival_parent_faction_id` int(11)
,`rival_parent_faction_name` varchar(40)
,`rival_parent_faction_color` varchar(6)
,`games_won` decimal(41,0)
,`games_tied` decimal(25,0)
,`games_lost` decimal(41,0)
,`games_played` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `player1_id` int(11) NOT NULL,
  `player1_faction_id` int(11) NOT NULL,
  `player2_id` int(11) NOT NULL,
  `player2_faction_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_draw` tinyint(1) NOT NULL DEFAULT '0',
  `is_ranked` tinyint(1) NOT NULL DEFAULT '1',
  `is_time_runout` tinyint(1) NOT NULL DEFAULT '0',
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `notes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `games_attributes`
--

CREATE TABLE `games_attributes` (
  `game_attribute_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games_attributes`
--

INSERT INTO `games_attributes` (`game_attribute_id`, `game_id`, `attribute_id`) VALUES
(1, 408, 3),
(2, 408, 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `games_history`
-- (See below for the actual view)
--
CREATE TABLE `games_history` (
`game_id` int(11)
,`player1_id` int(11)
,`player1_nickname` varchar(20)
,`player1_firstname` varchar(20)
,`player1_lastname` varchar(20)
,`player1_parent_faction_id` int(11)
,`player1_parent_faction_name` varchar(40)
,`player1_parent_faction_color` varchar(6)
,`player1_faction_id` int(11)
,`player1_faction_name` varchar(40)
,`player1_faction_color` varchar(6)
,`player2_id` int(11)
,`player2_nickname` varchar(20)
,`player2_firstname` varchar(20)
,`player2_lastname` varchar(20)
,`player2_parent_faction_id` int(11)
,`player2_parent_faction_name` varchar(40)
,`player2_parent_faction_color` varchar(6)
,`player2_faction_id` int(11)
,`player2_faction_name` varchar(40)
,`player2_faction_color` varchar(6)
,`date` datetime
,`is_draw` tinyint(1)
,`is_ranked` tinyint(1)
,`is_time_runout` tinyint(1)
,`is_online` tinyint(1)
,`notes` varchar(500)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `games_split`
-- (See below for the actual view)
--
CREATE TABLE `games_split` (
`game_id` int(11)
,`player_id` int(11)
,`parent_faction_id` int(11)
,`faction_id` int(11)
,`rival_player_id` int(11)
,`rival_parent_faction_id` int(11)
,`rival_faction_id` int(11)
,`date` datetime
,`is_win` bigint(20)
,`is_draw` tinyint(4)
,`is_loss` bigint(20)
,`is_ranked` tinyint(4)
,`is_time_runout` tinyint(4)
,`is_online` tinyint(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `league_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `subtitle` varchar(60) NOT NULL,
  `logo` varchar(60) DEFAULT NULL,
  `defaultGameNotes` varchar(500) DEFAULT NULL,
  `pointsWinValue` int(11) NOT NULL,
  `pointsDrawValue` int(11) NOT NULL,
  `pointsLossValue` int(11) NOT NULL,
  `eloStartRank` int(11) NOT NULL,
  `eloMasterRank` int(11) NOT NULL,
  `eloStartKFactor` int(11) NOT NULL,
  `eloSeasonedKFactor` int(11) NOT NULL,
  `eloMasterKFactor` int(11) NOT NULL,
  `eloSeasonedGameCountRequirement` int(11) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leagues`
--

INSERT INTO `leagues` (`league_id`, `title`, `subtitle`, `logo`, `defaultGameNotes`, `pointsWinValue`, `pointsDrawValue`, `pointsLossValue`, `eloStartRank`, `eloMasterRank`, `eloStartKFactor`, `eloSeasonedKFactor`, `eloMasterKFactor`, `eloSeasonedGameCountRequirement`, `description`) VALUES
(1, 'Star Wars X-Wing Miniatures Game', 'Central Ohio X-Wing', 'uploads/leagues/e034fb6b66aacc1d48f445ddfb08da98.png', 'Suggestion: add links to related web squads used in Yet Another Squad Builder description highlights, etc.', 3, 2, 1, 1000, 2400, 25, 15, 10, 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leagues_ranking_methods`
--

CREATE TABLE `leagues_ranking_methods` (
  `league_id` int(11) NOT NULL,
  `ranking_method_id` int(11) NOT NULL,
  `default_ranking` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leagues_ranking_methods`
--

INSERT INTO `leagues_ranking_methods` (`league_id`, `ranking_method_id`, `default_ranking`) VALUES
(1, 1, 0),
(1, 2, 1),
(1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Stand-in structure for view `players_factions_against_stats`
-- (See below for the actual view)
--
CREATE TABLE `players_factions_against_stats` (
`player_id` int(11)
,`player_nickname` varchar(20)
,`player_firstname` varchar(20)
,`player_lastname` varchar(20)
,`faction_id` int(11)
,`faction_name` varchar(40)
,`faction_color` varchar(6)
,`parent_faction_id` int(11)
,`parent_faction_name` varchar(40)
,`parent_faction_color` varchar(6)
,`games_won_against` decimal(41,0)
,`games_tied_against` decimal(25,0)
,`games_lost_against` decimal(41,0)
,`games_played_against` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `players_factions_split_stats`
-- (See below for the actual view)
--
CREATE TABLE `players_factions_split_stats` (
`player_id` int(11)
,`player_nickname` varchar(20)
,`player_firstname` varchar(20)
,`player_lastname` varchar(20)
,`faction_id` int(11)
,`faction_name` varchar(40)
,`faction_color` varchar(6)
,`parent_faction_id` int(11)
,`parent_faction_name` varchar(40)
,`parent_faction_color` varchar(6)
,`games_won_with` decimal(41,0)
,`games_tied_with` decimal(25,0)
,`games_lost_with` decimal(41,0)
,`games_played_with` decimal(43,0)
,`games_won_against` decimal(41,0)
,`games_tied_against` decimal(25,0)
,`games_lost_against` decimal(41,0)
,`games_played_against` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `players_factions_stats`
-- (See below for the actual view)
--
CREATE TABLE `players_factions_stats` (
`player_id` int(11)
,`player_nickname` varchar(20)
,`player_firstname` varchar(20)
,`player_lastname` varchar(20)
,`faction_id` int(11)
,`faction_name` varchar(40)
,`faction_color` varchar(6)
,`parent_faction_id` int(11)
,`parent_faction_name` varchar(40)
,`parent_faction_color` varchar(6)
,`games_won_with` decimal(63,0)
,`games_tied_with` decimal(47,0)
,`games_lost_with` decimal(63,0)
,`games_played_with` decimal(65,0)
,`games_won_against` decimal(63,0)
,`games_tied_against` decimal(47,0)
,`games_lost_against` decimal(63,0)
,`games_played_against` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `players_factions_with_stats`
-- (See below for the actual view)
--
CREATE TABLE `players_factions_with_stats` (
`player_id` int(11)
,`player_nickname` varchar(20)
,`player_firstname` varchar(20)
,`player_lastname` varchar(20)
,`faction_id` int(11)
,`faction_name` varchar(40)
,`faction_color` varchar(6)
,`parent_faction_id` int(11)
,`parent_faction_name` varchar(40)
,`parent_faction_color` varchar(6)
,`games_won_with` decimal(41,0)
,`games_tied_with` decimal(25,0)
,`games_lost_with` decimal(41,0)
,`games_played_with` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `players_ranking`
-- (See below for the actual view)
--
CREATE TABLE `players_ranking` (
`player_id` int(11)
,`nickname` varchar(20)
,`firstname` varchar(20)
,`lastname` varchar(20)
,`games_won` decimal(41,0)
,`games_tied` decimal(25,0)
,`games_lost` decimal(41,0)
,`games_played` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `players_stats`
-- (See below for the actual view)
--
CREATE TABLE `players_stats` (
`player_id` int(11)
,`rival_player_id` int(11)
,`rival_nickname` varchar(20)
,`rival_firstname` varchar(20)
,`rival_lastname` varchar(20)
,`games_won` decimal(41,0)
,`games_tied` decimal(25,0)
,`games_lost` decimal(41,0)
,`games_played` decimal(43,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `ranking_methods`
--

CREATE TABLE `ranking_methods` (
  `ranking_method_id` int(11) NOT NULL,
  `ranking_method_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ranking_methods`
--

INSERT INTO `ranking_methods` (`ranking_method_id`, `ranking_method_name`) VALUES
(1, 'games_played'),
(2, 'points'),
(3, 'elo_rating');

-- --------------------------------------------------------

--
-- Structure for view `factions_games_split`
--
DROP TABLE IF EXISTS `factions_games_split`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `factions_games_split`  AS  select `games_history`.`player1_parent_faction_id` AS `parent_faction_id`,`games_history`.`player1_faction_id` AS `faction_id`,`games_history`.`player2_parent_faction_id` AS `rival_parent_faction_id`,`games_history`.`player2_faction_id` AS `rival_faction_id`,1 AS `is_win`,`games_history`.`is_draw` AS `is_draw`,0 AS `is_loss` from `games_history` where (`games_history`.`is_draw` = 0) union all select `games_history`.`player2_parent_faction_id` AS `parent_faction_id`,`games_history`.`player2_faction_id` AS `faction_id`,`games_history`.`player1_parent_faction_id` AS `rival_parent_faction_id`,`games_history`.`player1_faction_id` AS `rival_faction_id`,0 AS `is_win`,`games_history`.`is_draw` AS `is_draw`,1 AS `is_loss` from `games_history` where (`games_history`.`is_draw` = 0) union all select `games_history`.`player1_parent_faction_id` AS `parent_faction_id`,`games_history`.`player1_faction_id` AS `faction_id`,`games_history`.`player2_parent_faction_id` AS `rival_parent_faction_id`,`games_history`.`player2_faction_id` AS `rival_faction_id`,0 AS `is_win`,`games_history`.`is_draw` AS `is_draw`,0 AS `is_loss` from `games_history` where (`games_history`.`is_draw` = 1) union all select `games_history`.`player2_parent_faction_id` AS `parent_faction_id`,`games_history`.`player2_faction_id` AS `faction_id`,`games_history`.`player1_parent_faction_id` AS `rival_parent_faction_id`,`games_history`.`player1_faction_id` AS `rival_faction_id`,0 AS `is_win`,`games_history`.`is_draw` AS `is_draw`,0 AS `is_loss` from `games_history` where (`games_history`.`is_draw` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `factions_ranking`
--
DROP TABLE IF EXISTS `factions_ranking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `factions_ranking`  AS  select `factions_games_split`.`parent_faction_id` AS `parent_faction_id`,`parent_faction`.`name` AS `parent_faction_name`,`factions_games_split`.`faction_id` AS `faction_id`,`child_faction`.`name` AS `faction_name`,coalesce(sum(`factions_games_split`.`is_win`),0) AS `games_won`,coalesce(sum(`factions_games_split`.`is_draw`),0) AS `games_tied`,coalesce(sum(`factions_games_split`.`is_loss`),0) AS `games_lost`,((coalesce(sum(`factions_games_split`.`is_win`),0) + coalesce(sum(`factions_games_split`.`is_draw`),0)) + coalesce(sum(`factions_games_split`.`is_loss`),0)) AS `games_played` from ((`factions_games_split` left join `factions` `child_faction` on((`child_faction`.`faction_id` = `factions_games_split`.`faction_id`))) left join `factions` `parent_faction` on((`parent_faction`.`faction_id` = `factions_games_split`.`parent_faction_id`))) group by `factions_games_split`.`faction_id` order by `games_won` desc ;

-- --------------------------------------------------------

--
-- Structure for view `factions_stats`
--
DROP TABLE IF EXISTS `factions_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `factions_stats`  AS  select `factions_games_split`.`faction_id` AS `faction_id`,`rival_factions`.`faction_id` AS `rival_faction_id`,`rival_factions`.`name` AS `rival_faction_name`,`rival_factions`.`color` AS `rival_faction_color`,`rival_parent_factions`.`faction_id` AS `rival_parent_faction_id`,`rival_parent_factions`.`name` AS `rival_parent_faction_name`,`rival_parent_factions`.`color` AS `rival_parent_faction_color`,coalesce(sum(`factions_games_split`.`is_win`),0) AS `games_won`,coalesce(sum(`factions_games_split`.`is_draw`),0) AS `games_tied`,coalesce(sum(`factions_games_split`.`is_loss`),0) AS `games_lost`,((coalesce(sum(`factions_games_split`.`is_win`),0) + coalesce(sum(`factions_games_split`.`is_draw`),0)) + coalesce(sum(`factions_games_split`.`is_loss`),0)) AS `games_played` from ((`factions_games_split` left join `factions` `rival_factions` on((`rival_factions`.`faction_id` = `factions_games_split`.`rival_faction_id`))) left join `factions` `rival_parent_factions` on((`rival_parent_factions`.`faction_id` = `factions_games_split`.`rival_parent_faction_id`))) group by `factions_games_split`.`faction_id`,`factions_games_split`.`rival_faction_id` order by `factions_games_split`.`faction_id`,`factions_games_split`.`rival_parent_faction_id`,`factions_games_split`.`rival_faction_id` ;

-- --------------------------------------------------------

--
-- Structure for view `games_history`
--
DROP TABLE IF EXISTS `games_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `games_history`  AS  select `games`.`game_id` AS `game_id`,`games`.`player1_id` AS `player1_id`,`player1`.`nickname` AS `player1_nickname`,`player1`.`firstname` AS `player1_firstname`,`player1`.`lastname` AS `player1_lastname`,`parentfaction1`.`faction_id` AS `player1_parent_faction_id`,`parentfaction1`.`name` AS `player1_parent_faction_name`,`parentfaction1`.`color` AS `player1_parent_faction_color`,`games`.`player1_faction_id` AS `player1_faction_id`,`faction1`.`name` AS `player1_faction_name`,`faction1`.`color` AS `player1_faction_color`,`games`.`player2_id` AS `player2_id`,`player2`.`nickname` AS `player2_nickname`,`player2`.`firstname` AS `player2_firstname`,`player2`.`lastname` AS `player2_lastname`,`parentfaction2`.`faction_id` AS `player2_parent_faction_id`,`parentfaction2`.`name` AS `player2_parent_faction_name`,`parentfaction2`.`color` AS `player2_parent_faction_color`,`games`.`player2_faction_id` AS `player2_faction_id`,`faction2`.`name` AS `player2_faction_name`,`faction2`.`color` AS `player2_faction_color`,`games`.`date` AS `date`,`games`.`is_draw` AS `is_draw`,`games`.`is_ranked` AS `is_ranked`,`games`.`is_time_runout` AS `is_time_runout`,`games`.`is_online` AS `is_online`,`games`.`notes` AS `notes` from ((((((`games` left join `players` `player1` on((`games`.`player1_id` = `player1`.`player_id`))) left join `players` `player2` on((`games`.`player2_id` = `player2`.`player_id`))) left join `factions` `faction1` on((`games`.`player1_faction_id` = `faction1`.`faction_id`))) left join `factions` `faction2` on((`games`.`player2_faction_id` = `faction2`.`faction_id`))) left join `factions` `parentfaction1` on((`parentfaction1`.`faction_id` = `faction1`.`parent_faction_id`))) left join `factions` `parentfaction2` on((`parentfaction2`.`faction_id` = `faction2`.`parent_faction_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `games_split`
--
DROP TABLE IF EXISTS `games_split`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `games_split`  AS  (select `games`.`game_id` AS `game_id`,`games`.`player1_id` AS `player_id`,`factions`.`parent_faction_id` AS `parent_faction_id`,`games`.`player1_faction_id` AS `faction_id`,`games`.`player2_id` AS `rival_player_id`,`factions2`.`parent_faction_id` AS `rival_parent_faction_id`,`games`.`player2_faction_id` AS `rival_faction_id`,`games`.`date` AS `date`,1 AS `is_win`,`games`.`is_draw` AS `is_draw`,0 AS `is_loss`,`games`.`is_ranked` AS `is_ranked`,`games`.`is_time_runout` AS `is_time_runout`,`games`.`is_online` AS `is_online` from ((((`games` left join `factions` on((`factions`.`faction_id` = `games`.`player1_faction_id`))) left join `factions` `parent_factions` on((`factions`.`parent_faction_id` = `parent_factions`.`faction_id`))) left join `factions` `factions2` on((`factions2`.`faction_id` = `games`.`player2_faction_id`))) left join `factions` `rival_parent_factions` on((`factions2`.`parent_faction_id` = `factions2`.`faction_id`))) where (`games`.`is_draw` = 0)) union all (select `games`.`game_id` AS `game_id`,`games`.`player2_id` AS `player_id`,`factions`.`parent_faction_id` AS `parent_faction_id`,`games`.`player2_faction_id` AS `faction_id`,`games`.`player1_id` AS `rival_player_id`,`factions1`.`parent_faction_id` AS `rival_parent_faction_id`,`games`.`player1_faction_id` AS `rival_faction_id`,`games`.`date` AS `date`,0 AS `is_win`,`games`.`is_draw` AS `is_draw`,1 AS `is_loss`,`games`.`is_ranked` AS `is_ranked`,`games`.`is_time_runout` AS `is_time_runout`,`games`.`is_online` AS `is_online` from ((((`games` left join `factions` on((`factions`.`faction_id` = `games`.`player2_faction_id`))) left join `factions` `parent_factions` on((`factions`.`parent_faction_id` = `parent_factions`.`faction_id`))) left join `factions` `factions1` on((`factions1`.`faction_id` = `games`.`player1_faction_id`))) left join `factions` `rival_parent_factions` on((`factions1`.`parent_faction_id` = `factions1`.`faction_id`))) where (`games`.`is_draw` = 0)) union all (select `games`.`game_id` AS `game_id`,`games`.`player1_id` AS `player_id`,`factions`.`parent_faction_id` AS `parent_faction_id`,`games`.`player1_faction_id` AS `faction_id`,`games`.`player2_id` AS `rival_player_id`,`factions2`.`parent_faction_id` AS `rival_parent_faction_id`,`games`.`player2_faction_id` AS `rival_faction_id`,`games`.`date` AS `date`,0 AS `is_win`,`games`.`is_draw` AS `is_draw`,0 AS `is_loss`,`games`.`is_ranked` AS `is_ranked`,`games`.`is_time_runout` AS `is_time_runout`,`games`.`is_online` AS `is_online` from ((((`games` left join `factions` on((`factions`.`faction_id` = `games`.`player1_faction_id`))) left join `factions` `parent_factions` on((`factions`.`parent_faction_id` = `parent_factions`.`faction_id`))) left join `factions` `factions2` on((`factions2`.`faction_id` = `games`.`player2_faction_id`))) left join `factions` `rival_parent_factions` on((`factions2`.`parent_faction_id` = `factions2`.`faction_id`))) where (`games`.`is_draw` = 1)) union all (select `games`.`game_id` AS `game_id`,`games`.`player2_id` AS `player_id`,`factions`.`parent_faction_id` AS `parent_faction_id`,`games`.`player2_faction_id` AS `faction_id`,`games`.`player1_id` AS `rival_player_id`,`factions1`.`parent_faction_id` AS `rival_parent_faction_id`,`games`.`player1_faction_id` AS `rival_faction_id`,`games`.`date` AS `date`,0 AS `is_win`,`games`.`is_draw` AS `is_draw`,0 AS `is_loss`,`games`.`is_ranked` AS `is_ranked`,`games`.`is_time_runout` AS `is_time_runout`,`games`.`is_online` AS `is_online` from ((((`games` left join `factions` on((`factions`.`faction_id` = `games`.`player2_faction_id`))) left join `factions` `parent_factions` on((`factions`.`parent_faction_id` = `parent_factions`.`faction_id`))) left join `factions` `factions1` on((`factions1`.`faction_id` = `games`.`player1_faction_id`))) left join `factions` `rival_parent_factions` on((`factions1`.`parent_faction_id` = `factions1`.`faction_id`))) where (`games`.`is_draw` = 1)) ;

-- --------------------------------------------------------

--
-- Structure for view `players_factions_against_stats`
--
DROP TABLE IF EXISTS `players_factions_against_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_factions_against_stats`  AS  select `games_split`.`player_id` AS `player_id`,`players`.`nickname` AS `player_nickname`,`players`.`firstname` AS `player_firstname`,`players`.`lastname` AS `player_lastname`,`games_split`.`rival_faction_id` AS `faction_id`,`factions`.`name` AS `faction_name`,`factions`.`color` AS `faction_color`,`parent_factions`.`faction_id` AS `parent_faction_id`,`parent_factions`.`name` AS `parent_faction_name`,`parent_factions`.`color` AS `parent_faction_color`,coalesce(sum(`games_split`.`is_win`),0) AS `games_won_against`,coalesce(sum(`games_split`.`is_draw`),0) AS `games_tied_against`,coalesce(sum(`games_split`.`is_loss`),0) AS `games_lost_against`,((coalesce(sum(`games_split`.`is_win`),0) + coalesce(sum(`games_split`.`is_draw`),0)) + coalesce(sum(`games_split`.`is_loss`),0)) AS `games_played_against` from (((`games_split` left join `players` on((`players`.`player_id` = `games_split`.`player_id`))) left join `factions` on((`factions`.`faction_id` = `games_split`.`rival_faction_id`))) left join `factions` `parent_factions` on((`parent_factions`.`faction_id` = `factions`.`parent_faction_id`))) group by `games_split`.`player_id`,`faction_id` ;

-- --------------------------------------------------------

--
-- Structure for view `players_factions_split_stats`
--
DROP TABLE IF EXISTS `players_factions_split_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_factions_split_stats`  AS  select `players_factions_with_stats`.`player_id` AS `player_id`,`players_factions_with_stats`.`player_nickname` AS `player_nickname`,`players_factions_with_stats`.`player_firstname` AS `player_firstname`,`players_factions_with_stats`.`player_lastname` AS `player_lastname`,`players_factions_with_stats`.`faction_id` AS `faction_id`,`players_factions_with_stats`.`faction_name` AS `faction_name`,`players_factions_with_stats`.`faction_color` AS `faction_color`,`players_factions_with_stats`.`parent_faction_id` AS `parent_faction_id`,`players_factions_with_stats`.`parent_faction_name` AS `parent_faction_name`,`players_factions_with_stats`.`parent_faction_color` AS `parent_faction_color`,`players_factions_with_stats`.`games_won_with` AS `games_won_with`,`players_factions_with_stats`.`games_tied_with` AS `games_tied_with`,`players_factions_with_stats`.`games_lost_with` AS `games_lost_with`,`players_factions_with_stats`.`games_played_with` AS `games_played_with`,0 AS `games_won_against`,0 AS `games_tied_against`,0 AS `games_lost_against`,0 AS `games_played_against` from `players_factions_with_stats` union all select `players_factions_against_stats`.`player_id` AS `player_id`,`players_factions_against_stats`.`player_nickname` AS `player_nickname`,`players_factions_against_stats`.`player_firstname` AS `player_firstname`,`players_factions_against_stats`.`player_lastname` AS `player_lastname`,`players_factions_against_stats`.`faction_id` AS `faction_id`,`players_factions_against_stats`.`faction_name` AS `faction_name`,`players_factions_against_stats`.`faction_color` AS `faction_color`,`players_factions_against_stats`.`parent_faction_id` AS `parent_faction_id`,`players_factions_against_stats`.`parent_faction_name` AS `parent_faction_name`,`players_factions_against_stats`.`parent_faction_color` AS `parent_faction_color`,0 AS `games_won_with`,0 AS `games_tied_with`,0 AS `games_lost_with`,0 AS `games_played_with`,`players_factions_against_stats`.`games_won_against` AS `games_won_against`,`players_factions_against_stats`.`games_tied_against` AS `games_tied_against`,`players_factions_against_stats`.`games_lost_against` AS `games_lost_against`,`players_factions_against_stats`.`games_played_against` AS `games_played_against` from `players_factions_against_stats` ;

-- --------------------------------------------------------

--
-- Structure for view `players_factions_stats`
--
DROP TABLE IF EXISTS `players_factions_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_factions_stats`  AS  select `players_factions_split_stats`.`player_id` AS `player_id`,`players_factions_split_stats`.`player_nickname` AS `player_nickname`,`players_factions_split_stats`.`player_firstname` AS `player_firstname`,`players_factions_split_stats`.`player_lastname` AS `player_lastname`,`players_factions_split_stats`.`faction_id` AS `faction_id`,`players_factions_split_stats`.`faction_name` AS `faction_name`,`players_factions_split_stats`.`faction_color` AS `faction_color`,`players_factions_split_stats`.`parent_faction_id` AS `parent_faction_id`,`players_factions_split_stats`.`parent_faction_name` AS `parent_faction_name`,`players_factions_split_stats`.`parent_faction_color` AS `parent_faction_color`,sum(`players_factions_split_stats`.`games_won_with`) AS `games_won_with`,sum(`players_factions_split_stats`.`games_tied_with`) AS `games_tied_with`,sum(`players_factions_split_stats`.`games_lost_with`) AS `games_lost_with`,sum(`players_factions_split_stats`.`games_played_with`) AS `games_played_with`,sum(`players_factions_split_stats`.`games_won_against`) AS `games_won_against`,sum(`players_factions_split_stats`.`games_tied_against`) AS `games_tied_against`,sum(`players_factions_split_stats`.`games_lost_against`) AS `games_lost_against`,sum(`players_factions_split_stats`.`games_played_against`) AS `games_played_against` from `players_factions_split_stats` group by `players_factions_split_stats`.`player_id`,`players_factions_split_stats`.`faction_id` ;

-- --------------------------------------------------------

--
-- Structure for view `players_factions_with_stats`
--
DROP TABLE IF EXISTS `players_factions_with_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_factions_with_stats`  AS  select `games_split`.`player_id` AS `player_id`,`players`.`nickname` AS `player_nickname`,`players`.`firstname` AS `player_firstname`,`players`.`lastname` AS `player_lastname`,`games_split`.`faction_id` AS `faction_id`,`factions`.`name` AS `faction_name`,`factions`.`color` AS `faction_color`,`parent_factions`.`faction_id` AS `parent_faction_id`,`parent_factions`.`name` AS `parent_faction_name`,`parent_factions`.`color` AS `parent_faction_color`,coalesce(sum(`games_split`.`is_win`),0) AS `games_won_with`,coalesce(sum(`games_split`.`is_draw`),0) AS `games_tied_with`,coalesce(sum(`games_split`.`is_loss`),0) AS `games_lost_with`,((coalesce(sum(`games_split`.`is_win`),0) + coalesce(sum(`games_split`.`is_draw`),0)) + coalesce(sum(`games_split`.`is_loss`),0)) AS `games_played_with` from (((`games_split` left join `players` on((`players`.`player_id` = `games_split`.`player_id`))) left join `factions` on((`factions`.`faction_id` = `games_split`.`faction_id`))) left join `factions` `parent_factions` on((`parent_factions`.`faction_id` = `factions`.`parent_faction_id`))) group by `games_split`.`player_id`,`games_split`.`faction_id` ;

-- --------------------------------------------------------

--
-- Structure for view `players_ranking`
--
DROP TABLE IF EXISTS `players_ranking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_ranking`  AS  select `players`.`player_id` AS `player_id`,`players`.`nickname` AS `nickname`,`players`.`firstname` AS `firstname`,`players`.`lastname` AS `lastname`,coalesce(sum(`games_split`.`is_win`),0) AS `games_won`,coalesce(sum(`games_split`.`is_draw`),0) AS `games_tied`,coalesce(sum(`games_split`.`is_loss`),0) AS `games_lost`,((coalesce(sum(`games_split`.`is_win`),0) + coalesce(sum(`games_split`.`is_draw`),0)) + coalesce(sum(`games_split`.`is_loss`),0)) AS `games_played` from (`players` left join `games_split` on((`games_split`.`player_id` = `players`.`player_id`))) group by `players`.`player_id` ;

-- --------------------------------------------------------

--
-- Structure for view `players_stats`
--
DROP TABLE IF EXISTS `players_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_stats`  AS  select `games_split`.`player_id` AS `player_id`,`rival_players`.`player_id` AS `rival_player_id`,`rival_players`.`nickname` AS `rival_nickname`,`rival_players`.`firstname` AS `rival_firstname`,`rival_players`.`lastname` AS `rival_lastname`,coalesce(sum(`games_split`.`is_win`),0) AS `games_won`,coalesce(sum(`games_split`.`is_draw`),0) AS `games_tied`,coalesce(sum(`games_split`.`is_loss`),0) AS `games_lost`,((coalesce(sum(`games_split`.`is_win`),0) + coalesce(sum(`games_split`.`is_draw`),0)) + coalesce(sum(`games_split`.`is_loss`),0)) AS `games_played` from ((`games_split` left join `players` on((`players`.`player_id` = `games_split`.`player_id`))) left join `players` `rival_players` on((`rival_players`.`player_id` = `games_split`.`rival_player_id`))) group by `games_split`.`player_id`,`games_split`.`rival_player_id` order by `games_split`.`player_id`,`games_split`.`rival_player_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`faction_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent_faction_id` (`parent_faction_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `player1_faction_id` (`player1_faction_id`),
  ADD KEY `player2_faction_id` (`player2_faction_id`),
  ADD KEY `player1_id` (`player1_id`),
  ADD KEY `player2_id` (`player2_id`);

--
-- Indexes for table `games_attributes`
--
ALTER TABLE `games_attributes`
  ADD PRIMARY KEY (`game_attribute_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`league_id`);

--
-- Indexes for table `leagues_ranking_methods`
--
ALTER TABLE `leagues_ranking_methods`
  ADD UNIQUE KEY `league_id` (`league_id`,`ranking_method_id`),
  ADD KEY `ranking_method_id` (`ranking_method_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- Indexes for table `ranking_methods`
--
ALTER TABLE `ranking_methods`
  ADD PRIMARY KEY (`ranking_method_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `faction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;
--
-- AUTO_INCREMENT for table `games_attributes`
--
ALTER TABLE `games_attributes`
  MODIFY `game_attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `league_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ranking_methods`
--
ALTER TABLE `ranking_methods`
  MODIFY `ranking_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `factions`
--
ALTER TABLE `factions`
  ADD CONSTRAINT `factions_ibfk_1` FOREIGN KEY (`parent_faction_id`) REFERENCES `factions` (`faction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`player1_faction_id`) REFERENCES `factions` (`faction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`player2_faction_id`) REFERENCES `factions` (`faction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `games_ibfk_3` FOREIGN KEY (`player1_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `games_ibfk_4` FOREIGN KEY (`player2_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `games_attributes`
--
ALTER TABLE `games_attributes`
  ADD CONSTRAINT `games_attributes_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `games_attributes_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leagues_ranking_methods`
--
ALTER TABLE `leagues_ranking_methods`
  ADD CONSTRAINT `leagues_ranking_methods_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`league_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leagues_ranking_methods_ibfk_2` FOREIGN KEY (`ranking_method_id`) REFERENCES `ranking_methods` (`ranking_method_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

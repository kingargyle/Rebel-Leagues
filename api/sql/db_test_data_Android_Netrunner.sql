
/* POPULATE leagues
============================================= */

INSERT INTO leagues (league_id, title, subtitle, logo, defaultGameNotes, pointsWinValue, pointsDrawValue, pointsLossValue, eloStartRank, eloMasterRank, eloStartKFactor, eloSeasonedKFactor, eloMasterKFactor, eloSeasonedGameCountRequirement) VALUES (1,'Android: Netrunner', 'RebelLeagues Québec', 'uploads/leagues/e6db1baa29d3df1eb307ff6a12c778da.png','Exemple= Score: 7-4 flatline (au cas échéant)', 5, 3, 1, 1000, 2400, 25, 15, 10, 30);

/* POPULATE factions
============================================= */

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(1, 'Anarch', NULL, 'dc523e', 'uploads/factions/f8237a00e2beac45ab68d6c5fac72620.png');
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(2, 'Criminal', NULL, '5475bb', 'uploads/factions/c48eb09b2a29362563c94179ef4f7ca7.png');
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(3, 'Shaper', NULL, '789f3f', 'uploads/factions/d6f7455baf3d08ef1a960aaf15c9fdde.png');
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(4, 'Haas-Bioroid', NULL, '83678b', 'uploads/factions/73cb3c5bfc1349eb4b32b731b96c792b.png');
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(5, 'Jinteki', NULL, 'cc5238', 'uploads/factions/687500971bade8cbe8df67ccf17470c6.png');
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(6, 'NBN', NULL, 'edac32', 'uploads/factions/6a1ee2f2759ac311ee8b406b5807b80e.png');
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(7, 'Weyland Consortium', NULL, '6a7365', 'uploads/factions/ea26b6b08c39342155cc1fc575315d2f.png');

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(8, 'Noise', 1, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(9, 'Whizzard', 1, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(10, 'Reina Roja', 1, NULL, NULL);

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(11, 'Gabriel Santiago', 2, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(12, 'Andromeda', 2, NULL, NULL);

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(13, 'Kate Mac McCaffrey', 3, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(14, 'Chaos Theory', 3, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(15, 'Exile', 3, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(16, 'Rielle Kit Peddler', 3, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(17, 'The Professor', 3, NULL, NULL);

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(18, 'Engineering the Future', 4, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(19, 'Stronger Together', 4, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(20, 'Cerebral Imaging', 4, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(21, 'Custom Biotics', 4, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(22, 'Next Design', 4, NULL, NULL);

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(23, 'Personal Evolution', 5, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(24, 'Replicating Perfection', 5, NULL, NULL);

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(25, 'Making News', 6, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(26, 'The World is Yours', 6, NULL, NULL);

INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(27, 'Building a Better World', 7, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(28, 'Because We Built It', 7, NULL, NULL);
INSERT INTO factions (faction_id, name, parent_faction_id, color, logo) VALUES(29, 'GRNDL', 7, NULL, NULL);


/* POPULATE players
============================================= */

INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(1, 'Mu0n', 'Michaël', 'Juneau');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(2, 'Pwhy5', 'Pierre Yves', 'Caron');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(3, 'Max', 'Maxime', 'Ste-Marie');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(4, 'Etienne', 'Etienne', 'Montminy');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(5, 'jay_bilo', 'Jason', 'Bilodeau');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(6, 'Gmtiberus', 'Frédéric', 'Herpe');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(7, 'GomJabbar', 'David', 'Bernier');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(8, 'Moyzan', 'Christian', 'Moisan');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(9, 'Hugo', 'Hugo', 'Lafleur');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(10, 'Borgoto', 'Mathieu', 'Borgeat');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(11, 'MalcolmPF', 'Pierre', 'Fortier');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(12, 'Gurgeh', 'Xavier', 'Dallaire');
INSERT INTO players (player_id, nickname, firstname, lastname) VALUES(13, 'JoeBoo', 'Jean', 'Bourgault');


/* POPULATE games
============================================= */
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(1, 2, 25, 3, 15, '2014-03-03 19:15:00', 0, 1, 0, 0, 'Score: 7-5');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(2, 3, 15, 2, 18, '2014-03-03 19:30:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(3, 3, 25, 2, 13, '2014-03-03 19:45:00', 0, 1, 0, 0, 'Score: 7-6');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(4, 3, 23, 2, 13, '2014-03-03 20:15:00', 0, 1, 0, 0, 'Score: 6-4 flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(5, 2, 25, 3, 8, '2014-03-03 20:30:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(6, 1, 10, 7, 27, '2014-03-08 18:45:00', 0, 1, 0, 0, 'Score: 7-5');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(7, 1, 24, 7, 15, '2014-03-08 19:00:00', 0, 1, 0, 0, 'Score: 8-2');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(8, 1, 25, 7, 11, '2014-03-08 19:45:00', 0, 1, 0, 0, 'Score: 0-0 flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(9, 7, 11, 1, 25, '2014-03-08 20:15:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(10, 6, 12, 9, 25, '2014-03-10 19:00:00', 1, 1, 1, 0, 'Score: ?-?');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(11, 6, 12, 3, 25, '2014-03-10 19:30:00', 0, 1, 0, 0, 'Score: ?-?');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(12, 6, 18, 3, 15, '2014-03-10 20:00:00', 1, 1, 1, 0, 'Score: ?-?');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(13, 2, 25, 11, 11, '2014-03-15 13:00:00', 0, 1, 0, 0, 'Score: 5-2 flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(14, 10, 26, 12, 11, '2014-03-15 13:15:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(15, 2, 13, 11, 23, '2014-03-15 13:30:00', 0, 1, 0, 0, 'Score: 9-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(16, 10, 12, 12, 23, '2014-03-15 13:30:00', 0, 1, 0, 0, 'Score: 7-2');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(17, 1, 24, 11, 11, '2014-03-15 14:20:00', 0, 1, 0, 0, 'Score: 6-5 flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(19, 10, 26, 1, 16, '2014-03-15 15:30:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(21, 12, 11, 2, 25, '2014-03-15 15:00:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(22, 2, 13, 12, 23, '2014-03-15 15:00:00', 0, 1, 0, 0, 'Score: 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(23, 12, 11, 1, 24, '2014-03-15 16:45:00', 0, 1, 0, 0, 'Score. 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(24, 10, 26, 11, 11, '2014-03-15 16:30:00', 0, 1, 0, 0, 'Score. 7-6');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(25, 1, 16, 12, 23, '2014-03-15 17:30:00', 0, 1, 0, 0, 'Score: 8-2');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(26, 1, 24, 2, 13, '2014-03-15 18:00:00', 0, 1, 0, 0, 'Score: 7-1');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(27, 1, 16, 2, 25, '2014-03-15 18:30:00', 0, 1, 0, 0, 'Score: 8-5');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(28, 10, 12, 1, 24, '2014-03-15 16:15:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(29, 1, 16, 11, 23, '2014-03-15 14:00:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(30, 10, 11, 11, 23, '2014-03-15 16:45:00', 0, 1, 0, 0, 'Score: 9-1');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(31, 12, 23, 11, 11, '2014-03-15 18:00:00', 0, 1, 0, 0, 'Score: 8-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(32, 12, 11, 11, 23, '2014-03-15 18:30:00', 0, 1, 0, 0, 'Score: 7-2');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(33, 10, 12, 2, 25, '2014-03-15 14:30:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(34, 10, 26, 2, 13, '2014-03-15 14:45:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(35, 2, 27, 13, 11, '2014-03-20 07:00:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(36, 2, 11, 13, 25, '2014-03-20 07:30:00', 0, 1, 0, 0, 'Score: 8-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(37, 13, 27, 2, 11, '2014-03-20 08:00:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(38, 2, 27, 13, 16, '2014-03-20 08:30:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(39, 2, 27, 13, 16, '2014-03-20 09:00:00', 0, 1, 0, 0, 'Score: 0-6 flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(41, 9, 27, 3, 15, '2014-03-24 18:00:00', 0, 0, 0, 0, 'Score: ?-?');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(42, 9, 23, 3, 8, '2014-03-24 19:30:00', 0, 1, 0, 0, 'Score: ?-?');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(43, 9, 15, 3, 23, '2014-03-24 18:00:00', 0, 1, 0, 0, 'Score: ?-? flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(44, 4, 11, 2, 24, '2014-03-27 18:30:00', 0, 1, 0, 0, 'Score: 7-5');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(45, 4, 13, 2, 27, '2014-03-27 19:00:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(46, 4, 25, 2, 11, '2014-03-27 19:30:00', 0, 1, 0, 0, 'Score: 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(47, 4, 25, 2, 13, '2014-03-27 20:00:00', 0, 1, 0, 0, 'Score: 7-5');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(48, 2, 27, 4, 11, '2014-03-27 20:15:00', 0, 1, 0, 0, 'Score: 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(49, 2, 27, 4, 11, '2014-03-27 20:30:00', 0, 1, 0, 0, 'Score: 7-1');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(50, 2, 27, 4, 11, '2014-03-27 20:45:00', 0, 1, 0, 0, 'Score: 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(51, 2, 27, 4, 11, '2014-03-27 21:00:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(52, 4, 11, 2, 27, '2014-03-27 21:15:00', 0, 1, 0, 0, 'Score: 7-3');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(53, 9, 23, 3, 13, '2014-03-31 20:00:00', 0, 1, 0, 0, 'Score: 4-2 flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(54, 2, 14, 13, 27, '2014-03-31 19:54:38', 0, 1, 0, 0, 'Score: 7-1');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(55, 13, 27, 2, 14, '2014-03-31 20:10:30', 0, 1, 0, 0, 'Score: 7-6');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(56, 2, 27, 13, 11, '2014-03-31 08:30:00', 0, 0, 0, 0, 'Score: 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(57, 2, 14, 6, 23, '2014-03-31 09:00:52', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(58, 2, 27, 3, 13, '2014-03-31 09:31:47', 0, 1, 0, 0, 'Score: 7-0');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(59, 3, 23, 13, 11, '2014-03-31 21:00:00', 0, 1, 0, 0, 'Score: ?-? flatline');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(60, 3, 13, 6, 25, '2014-03-31 22:00:00', 0, 1, 0, 0, 'Score: 7-4');
INSERT INTO games (game_id, player1_id, player1_faction_id, player2_id, player2_faction_id, date, is_draw, is_ranked, is_time_runout, is_online, notes) VALUES(61, 3, 23, 6, 12, '2014-03-31 22:15:03', 0, 1, 0, 0, 'Score: ?-? flatline');


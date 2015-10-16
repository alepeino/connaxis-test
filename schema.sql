-- Adminer 4.2.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `games` (`id`, `title`, `slug`, `price`, `created`, `modified`) VALUES
(664,	'Battlefield: Bad Company',	'battlefield_bad_company',	17.50,	'2011-11-09 20:25:57',	'2012-12-04 19:02:15'),
(678,	'Madden NFL 09',	'madden_nfl_09',	17.50,	'2011-11-09 20:26:59',	'2012-12-04 19:02:17'),
(685,	'Call of Duty: World at War',	'call_of_duty_world_at_war',	17.50,	'2011-11-09 20:27:24',	'2012-12-04 19:02:19'),
(697,	'NFL Head Coach 09',	'nfl_head_coach_09',	17.50,	'2011-11-09 20:28:11',	'2012-12-04 19:02:20'),
(698,	'NCAA Football 09',	'ncaa_football_09',	17.50,	'2011-11-09 20:28:13',	'2012-12-04 19:02:20'),
(700,	'Top Spin 3',	'top_spin_3',	17.50,	'2011-11-09 20:28:15',	'2012-12-04 19:02:21'),
(701,	'Nascar 09',	'nascar_09',	17.50,	'2011-11-09 20:28:28',	'2012-12-04 19:02:21'),
(707,	'Naruto: Ultimate Ninja Storm ',	'naruto_ultimate_ninja_storm',	17.50,	'2011-11-09 20:28:40',	'2012-12-04 19:02:22'),
(708,	'Damnation',	'damnation',	17.50,	'2011-11-09 20:28:47',	'2012-12-04 19:02:22'),
(710,	'To End All Wars',	'to_end_all_wars',	17.50,	'2011-11-09 20:29:02',	'2012-12-04 19:02:22'),
(711,	'NBA 2K9',	'nba_2k9',	17.50,	'2011-11-09 20:29:03',	'2012-12-04 19:02:22'),
(712,	'Blitz: The League II',	'blitz_the_league_ii',	17.50,	'2011-11-09 20:29:05',	'2012-12-04 19:02:22'),
(713,	'Afro Samurai',	'afro_samurai',	17.50,	'2011-11-09 20:29:06',	'2012-12-04 19:02:23'),
(715,	'Midnight Club: Los Angeles',	'midnight_club_los_angeles',	17.50,	'2011-11-09 20:29:09',	'2012-12-04 19:02:23'),
(753,	'Jumpman',	'jumpman',	17.50,	'2011-11-09 20:31:35',	'2012-12-04 19:02:28'),
(754,	'Balls of Fury',	'balls_of_fury',	17.50,	'2011-11-09 20:31:36',	'2012-12-04 19:02:28'),
(756,	'Elebits',	'elebits',	17.50,	'2011-11-09 20:31:41',	'2012-12-04 19:02:29'),
(758,	'SNK Arcade Classics V.1',	'snk_arcade_classics_v_1',	17.50,	'2011-11-09 20:31:50',	'2012-12-04 19:02:30'),
(759,	'Boom Blox',	'boom_blox',	17.50,	'2011-11-09 20:31:51',	'2015-10-14 13:47:17'),
(761,	'Wii Fit',	'wii_fit',	17.50,	'2011-11-09 20:31:55',	'2012-12-04 19:02:30'),
(762,	'Dragon Blade: Wrath of Fire',	'dragon_blade_wrath_of_fire',	17.50,	'2011-11-09 20:31:56',	'2012-12-04 19:02:30'),
(763,	'Escape From Bug Island',	'escape_from_bug_island',	17.50,	'2011-11-09 20:31:57',	'2015-10-14 12:59:25'),
(764,	'Geon: Emotions',	'geon_emotions',	17.50,	'2011-11-09 20:31:58',	'2012-12-04 19:02:30'),
(766,	'Harvey Birdman: Attorney at Law',	'harvey_birdman_attorney_at_law',	17.50,	'2011-11-09 20:32:10',	'2012-12-04 19:02:30'),
(767,	'Monster Lab',	'monster_lab',	17.50,	'2011-11-09 20:32:11',	'2015-10-14 13:47:30'),
(768,	'Mushroom Men: The Spore Wars',	'mushroom_men_the_spore_wars',	17.50,	'2011-11-09 20:32:12',	'2013-01-09 13:52:27'),
(769,	'Naruto: Clash of Ninja Revolution',	'naruto_clash_of_ninja_revolution',	17.50,	'2011-11-09 20:32:14',	'2015-10-14 13:00:22'),
(771,	'Rayman Raving Rabbids 2',	'rayman_raving_rabbids_2',	17.50,	'2011-11-09 20:32:29',	'2015-10-14 13:00:05'),
(772,	'Samba de Amigo',	'samba_de_amigo',	17.50,	'2011-11-09 20:32:34',	'2012-12-04 19:02:31'),
(773,	'Sonic Riders: Zero Gravity',	'sonic_riders_zero_gravity',	17.50,	'2011-11-09 20:32:35',	'2012-12-04 19:02:31'),
(774,	'Super Smash Bros. Brawl',	'super_smash_bros_brawl',	17.50,	'2011-11-09 20:32:39',	'2015-10-15 21:43:29'),
(775,	'Dance Dance Revolution HOTTEST PARTY 2',	'dance_dance_revolution_hottest_party_2',	17.50,	'2011-11-09 20:32:49',	'2012-12-04 19:02:32'),
(780,	'Natural Selection',	'natural_selection',	17.50,	'2011-11-09 20:33:06',	'2012-12-04 19:02:32'),
(781,	'Street Fighter II: The World Warrior',	'street_fighter_ii_the_world_warrior',	17.50,	'2011-11-09 20:33:07',	'2012-12-04 19:02:32'),
(782,	'Command & Conquer: Red Alert',	'command_conquer_red_alert',	17.50,	'2011-11-09 20:33:09',	'2012-12-04 19:02:32'),
(783,	'SimEarth: The Living Planet',	'simearth_the_living_planet',	17.50,	'2011-11-09 20:33:10',	'2012-12-04 19:02:32'),
(789,	'4-D Boxing',	'4-d_boxing',	17.50,	'2011-11-09 20:33:36',	'2012-12-04 19:02:34'),
(792,	'Gangsters 2',	'gangsters_2',	17.50,	'2011-11-09 20:33:47',	'2012-12-04 19:02:34'),
(804,	'American Gladiators',	'american_gladiators',	17.50,	'2011-11-09 20:34:22',	'2012-12-04 19:02:36'),
(805,	'Need for Speed II',	'need_for_speed_ii',	17.50,	'2011-11-09 20:34:29',	'2015-10-15 22:36:19'),
(815,	'Need for Speed: High Stakes',	'need_for_speed_high_stakes',	17.50,	'2011-11-09 20:35:13',	'2015-10-14 13:47:35'),
(822,	'DDRMAX Dance Dance Revolution',	'ddrmax_dance_dance_revolution',	17.50,	'2011-11-09 20:35:36',	'2012-12-04 19:02:38'),
(824,	'Seaman',	'seaman',	17.50,	'2011-11-09 20:35:44',	'2012-12-04 19:02:39'),
(832,	'Ace Combat 04: Shattered Skies',	'ace_combat_04_shattered_skies',	17.50,	'2011-11-09 20:36:23',	'2012-12-04 19:02:40'),
(837,	'SingStar',	'singstar_2',	17.50,	'2011-11-09 20:36:40',	'2012-12-04 19:02:41'),
(844,	'NHL 2004',	'nhl_2004',	17.50,	'2011-11-09 20:37:07',	'2012-12-04 19:02:42'),
(845,	'The Urbz: Sims in the City',	'the_urbz_sims_in_the_city',	17.50,	'2011-11-09 20:37:11',	'2012-12-04 19:02:43'),
(859,	'Seven Samurai 20XX',	'seven_samurai_20xx',	17.50,	'2011-11-09 20:37:55',	'2012-12-04 19:02:44'),
(860,	'Pro Evolution Soccer 5',	'pro_evolution_soccer_5',	17.50,	'2011-11-09 20:38:05',	'2012-12-04 19:02:45'),
(861,	'Tony Hawk\'s Pro Skater 4',	'tony_hawks_pro_skater_4',	17.50,	'2011-11-09 20:38:07',	'2012-12-04 19:02:45'),
(867,	'LMA Manager 2004',	'lma_manager_2004',	17.50,	'2011-11-09 20:38:44',	'2012-12-04 19:02:46'),
(872,	'Disaster Report',	'disaster_report',	17.50,	'2011-11-09 20:39:15',	'2012-12-04 19:02:46'),
(874,	'Max Payne',	'max_payne',	17.50,	'2011-11-09 20:39:23',	'2012-12-04 19:02:46'),
(876,	'Full Spectrum Warrior: Ten Hammers',	'full_spectrum_warrior_ten_hammers',	17.50,	'2011-11-09 20:39:30',	'2012-12-04 19:02:47'),
(877,	'The Sims 2',	'the_sims_2',	17.50,	'2011-11-09 20:39:33',	'2012-12-04 19:02:47'),
(878,	'Indigo Prophecy',	'indigo_prophecy',	17.50,	'2011-11-09 20:39:42',	'2012-12-04 19:02:47'),
(879,	'Men in Black II: Alien Escape',	'men_in_black_ii_alien_escape',	17.50,	'2011-11-09 20:39:43',	'2012-12-04 19:02:47'),
(880,	'Britney\'s Dance Beat',	'britneys_dance_beat',	17.50,	'2011-11-09 20:39:44',	'2012-12-04 19:02:47'),
(881,	'Aggressive Inline',	'aggressive_inline',	17.50,	'2011-11-09 20:39:46',	'2012-12-04 19:02:47'),
(882,	'Kingdom Under Fire: Circle of Doom',	'kingdom_under_fire_circle_of_doom',	17.50,	'2011-11-10 10:26:28',	'2012-12-04 19:02:47'),
(883,	'FaceBreaker',	'facebreaker',	25.00,	'2011-11-10 10:26:41',	'2013-02-22 12:58:30'),
(884,	'Baja: Edge of Control ',	'baja_edge_of_control',	17.50,	'2011-11-10 10:26:51',	'2012-12-04 19:02:48'),
(885,	'NHL 2K9',	'nhl_2k9',	17.50,	'2011-11-10 10:26:57',	'2015-10-15 22:36:04'),
(887,	'Minority Report: Everybody Runs',	'minority_report_everybody_runs',	17.50,	'2011-11-10 10:27:10',	'2012-12-04 19:02:48'),
(888,	'Monster Jam: Maximum Destruction',	'monster_jam_maximum_destruction',	17.50,	'2011-11-10 10:27:18',	'2012-12-04 19:02:48'),
(897,	'Ferrari Challenge Trofeo Pirelli',	'ferrari_challenge_trofeo_pirelli',	17.50,	'2011-11-10 11:48:04',	'2012-12-04 19:02:48'),
(898,	'Disgaea 3: Absence of Justice',	'disgaea_3_absence_of_justice',	17.50,	'2011-11-10 11:48:07',	'2012-12-04 19:02:48'),
(899,	'MLB Power Pros',	'mlb_power_pros',	17.50,	'2011-11-10 11:48:15',	'2012-12-04 19:02:49'),
(901,	'Marvel vs. Capcom 2: New Age of Heroes',	'marvel_vs_capcom_2_new_age_of_heroes',	17.50,	'2011-11-10 11:48:25',	'2012-12-04 19:02:49'),
(902,	'Return to Castle Wolfenstein: Operation Resurrection',	'return_to_castle_wolfenstein_operation_resurrection',	17.50,	'2011-11-10 11:48:31',	'2012-12-04 19:02:49'),
(1105,	'Battlefield 2: Modern Combat',	'battlefield_2_modern_combat',	17.50,	'2012-04-05 15:01:22',	'2012-12-04 19:03:19'),
(1545,	'WarPath',	'warpath',	50.00,	'2012-04-05 16:05:02',	'2013-02-22 13:34:12'),
(2202,	'Mobile Forces',	'mobile_forces',	17.50,	'2012-04-05 18:05:43',	'2012-12-04 19:05:59'),
(2560,	'American McGee\'s Alice',	'american_mcgees_alice',	500.00,	'2012-04-05 19:30:41',	'2015-10-16 12:59:41'),
(2843,	'Anachronox',	'anachronox',	17.50,	'2012-04-05 21:01:31',	'2015-10-16 12:59:46'),
(2960,	'Gunman Chronicles',	'gunman_chronicles',	17.50,	'2012-04-05 22:01:24',	'2012-12-04 19:07:51'),
(3159,	'Vampire: The Masquerade - Redemption',	'vampire_the_masquerade_-_redemption',	17.50,	'2012-04-05 23:31:31',	'2012-12-04 19:08:20'),
(3162,	'Medal of Honor: Allied Assault',	'medal_of_honor_allied_assault',	17.50,	'2012-04-05 23:31:37',	'2012-12-04 19:08:20'),
(3348,	'Battlefield 1942: Secret Weapons of WWII',	'battlefield_1942_secret_weapons_of_wwii',	17.50,	'2012-04-06 01:30:23',	'2015-10-16 12:59:36'),
(3795,	'John Romero\'s Daikatana',	'john_romeros_daikatana',	17.50,	'2012-04-06 07:01:40',	'2012-12-04 19:09:55'),
(3837,	'Quake',	'quake_1',	17.50,	'2012-04-06 07:32:01',	'2015-10-16 12:59:31'),
(3921,	'Wolfenstein: Enemy Territory',	'wolfenstein_enemy_territory',	17.50,	'2012-04-06 09:01:15',	'2012-12-04 19:10:14'),
(3988,	'Quake II Mission Pack: Ground Zero',	'quake_ii_mission_pack_ground_zero',	17.50,	'2012-04-06 10:02:05',	'2012-12-04 19:10:24'),
(4502,	'Quake II Mission Pack: The Reckoning',	'quake_ii_mission_pack_the_reckoning',	17.50,	'2012-04-06 18:00:30',	'2012-12-04 19:11:43'),
(4788,	'Star Wars: Jedi Knight II - Jedi Outcast',	'star_wars_jedi_knight_ii_-_jedi_outcast',	17.50,	'2012-04-06 22:31:35',	'2012-12-04 19:12:26'),
(4801,	'Duke Caribbean: Life\'s A Beach',	'duke_caribbean_lifes_a_beach',	17.50,	'2012-04-06 23:00:22',	'2012-12-04 19:12:28'),
(4811,	'Battlefield 1942: The Road to Rome',	'battlefield_1942_the_road_to_rome',	17.50,	'2012-04-06 23:01:12',	'2015-10-16 11:00:19'),
(4904,	'Star Trek: Elite Force II',	'star_trek_elite_force_ii',	50.00,	'2012-04-07 01:00:24',	'2013-02-22 13:34:57'),
(6773,	'Offspring Fling',	'offspring_fling',	17.50,	'2012-04-08 07:30:57',	'2015-10-16 10:24:14'),
(6776,	'Mirror\'s Edge',	'mirror_s_edge',	100.00,	'2014-02-03 12:55:01',	'2014-02-03 12:55:01'),
(6777,	'Tomb Raider',	'tomb_raider_2',	100.00,	'2014-02-03 12:55:02',	'2014-02-03 12:55:02'),
(6895,	'Project CARS',	'project_cars_1',	50.00,	'2014-02-03 13:07:04',	'2015-10-14 13:00:18'),
(6900,	'Rayman Legends',	'rayman_legends_1',	60.00,	'2014-02-03 13:08:42',	'2015-09-22 16:55:44'),
(8195,	'Lode Runner',	'lode_runner_1',	100.00,	'2014-02-03 15:52:11',	'2015-10-14 15:07:44'),
(8240,	'Adventure Island',	'adventure_island',	100.00,	'2014-02-03 15:57:12',	'2015-10-15 20:14:59'),
(8267,	'Tetris',	'tetris_4',	100.00,	'2014-02-03 15:59:12',	'2014-02-03 15:59:12'),
(9860,	'Super Mario World 2: Yoshi\'s Island',	'super_mario_world_2_yoshis_island',	100.00,	'2014-02-03 19:59:35',	'2015-07-03 18:36:39'),
(9974,	'Galaxian',	'galaxian_1',	100.00,	'2014-02-03 20:09:28',	'2014-02-03 20:09:28'),
(9983,	'Duck Hunt',	'duck_hunt',	100.00,	'2014-02-03 20:10:53',	'2014-02-03 20:10:53'),
(10437,	'Laser Ghost',	'laser_ghost',	100.00,	'2014-02-03 20:54:47',	'2015-10-16 10:19:26');

DROP TABLE IF EXISTS `game_collections`;
CREATE TABLE `game_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `game_condition_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `userpanel_id` (`user_id`),
  KEY `game_condition_id` (`game_condition_id`),
  CONSTRAINT `game_collections_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `game_collections_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`),
  CONSTRAINT `game_collections_ibfk_3` FOREIGN KEY (`game_condition_id`) REFERENCES `game_conditions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `game_conditions`;
CREATE TABLE `game_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `game_conditions` (`id`, `title`, `slug`, `created`, `modified`) VALUES
(1,	'Disc Only',	'disk-only',	'2011-11-03 16:29:08',	'2012-05-09 14:52:07'),
(2,	'Disc + Case',	'disk-case',	'2011-11-03 16:28:58',	'2012-05-09 14:52:01'),
(3,	'Full Package',	'full-package',	'2011-10-31 17:16:53',	'2011-11-03 16:22:55');

DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(20) NOT NULL,
  `game_collection_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_collection_id` (`game_collection_id`),
  KEY `created` (`created`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `game_condition_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `game_condition_id` (`game_condition_id`),
  KEY `created` (`created`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `trades`;
CREATE TABLE `trades` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `offer_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_balance` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `email`, `password`, `account_balance`, `created`, `modified`) VALUES
(1,	'gordon.freeman@blackmesa.net',	'123',	100.00,	'2015-10-16 16:34:30',	'2015-10-16 16:34:30'),
(2,	'shigeru.miyamoto@nintendo.com',	'123',	50.00,	'2015-10-16 16:35:33',	'2015-10-16 16:35:33'),
(3,	'jcdenton@unatco.com',	'123',	200.00,	'2015-10-16 16:35:55',	'2015-10-16 16:35:55'),
(4,	'terra@ff6.org',	'123',	150.00,	'2015-10-16 16:36:48',	'2015-10-16 16:36:48'),
(5,	'leon.kennedy@rcpd.com',	'123',	250.00,	'2015-10-16 16:37:55',	'2015-10-16 16:37:55');

-- 2015-10-16 20:04:37
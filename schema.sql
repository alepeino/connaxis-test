-- MySQL dump 10.13  Distrib 5.6.25, for osx10.8 (x86_64)
--
-- Host: localhost    Database: connaxis
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game_collections`
--

DROP TABLE IF EXISTS `game_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `game_collections_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`),
  CONSTRAINT `game_collections_ibfk_3` FOREIGN KEY (`game_condition_id`) REFERENCES `game_conditions` (`id`),
  CONSTRAINT `game_collections_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_collections`
--

LOCK TABLES `game_collections` WRITE;
/*!40000 ALTER TABLE `game_collections` DISABLE KEYS */;
INSERT INTO `game_collections` VALUES (2,715,2,2,'2015-10-18 12:01:23','2015-10-18 12:01:23'),(3,753,2,2,'2015-10-18 12:01:25','2015-10-18 12:01:25'),(4,754,2,2,'2015-10-18 12:01:27','2015-10-18 12:01:27'),(5,715,3,2,'2015-10-18 12:01:23','2015-10-18 12:01:23'),(6,754,4,2,'2015-10-18 12:01:27','2015-10-18 12:01:27'),(7,753,3,2,'2015-10-18 12:01:25','2015-10-18 12:01:25'),(8,881,5,3,'2015-10-21 04:25:48','2015-10-21 04:25:48'),(9,789,5,3,'2015-10-21 04:26:04','2015-10-21 04:26:04'),(10,772,3,1,'2015-10-21 04:29:34','2015-10-21 04:29:34'),(11,708,2,2,'2015-10-22 00:24:37','2015-10-22 00:24:37'),(12,832,2,1,'2015-10-22 00:27:25','2015-10-22 00:27:25');
/*!40000 ALTER TABLE `game_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_conditions`
--

DROP TABLE IF EXISTS `game_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `relative_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_conditions`
--

LOCK TABLES `game_conditions` WRITE;
/*!40000 ALTER TABLE `game_conditions` DISABLE KEYS */;
INSERT INTO `game_conditions` VALUES (1,'Disc Only','disk-only','2011-11-03 16:29:08','2015-10-22 03:10:09',10),(2,'Disc + Case','disk-case','2011-11-03 16:28:58','2015-10-22 00:24:37',20),(3,'Full Package','full-package','2011-10-31 17:16:53','2015-10-21 04:26:04',30);
/*!40000 ALTER TABLE `game_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10438 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (664,'Battlefield: Bad Company','battlefield_bad_company',17.50,'2011-11-09 20:25:57','2012-12-04 19:02:15'),(678,'Madden NFL 09','madden_nfl_09',17.50,'2011-11-09 20:26:59','2012-12-04 19:02:17'),(685,'Call of Duty: World at War','call_of_duty_world_at_war',17.50,'2011-11-09 20:27:24','2012-12-04 19:02:19'),(697,'NFL Head Coach 09','nfl_head_coach_09',17.50,'2011-11-09 20:28:11','2012-12-04 19:02:20'),(698,'NCAA Football 09','ncaa_football_09',17.50,'2011-11-09 20:28:13','2012-12-04 19:02:20'),(700,'Top Spin 3','top_spin_3',17.50,'2011-11-09 20:28:15','2012-12-04 19:02:21'),(701,'Nascar 09','nascar_09',17.50,'2011-11-09 20:28:28','2012-12-04 19:02:21'),(707,'Naruto: Ultimate Ninja Storm ','naruto_ultimate_ninja_storm',17.50,'2011-11-09 20:28:40','2012-12-04 19:02:22'),(708,'Damnation','damnation',17.50,'2011-11-09 20:28:47','2015-10-22 00:24:37'),(710,'To End All Wars','to_end_all_wars',17.50,'2011-11-09 20:29:02','2012-12-04 19:02:22'),(711,'NBA 2K9','nba_2k9',17.50,'2011-11-09 20:29:03','2012-12-04 19:02:22'),(712,'Blitz: The League II','blitz_the_league_ii',17.50,'2011-11-09 20:29:05','2012-12-04 19:02:22'),(713,'Afro Samurai','afro_samurai',17.50,'2011-11-09 20:29:06','2015-10-22 02:29:33'),(715,'Midnight Club: Los Angeles','midnight_club_los_angeles',17.50,'2011-11-09 20:29:09','2012-12-04 19:02:23'),(753,'Jumpman','jumpman',17.50,'2011-11-09 20:31:35','2012-12-04 19:02:28'),(754,'Balls of Fury','balls_of_fury',17.50,'2011-11-09 20:31:36','2012-12-04 19:02:28'),(756,'Elebits','elebits',17.50,'2011-11-09 20:31:41','2012-12-04 19:02:29'),(758,'SNK Arcade Classics V.1','snk_arcade_classics_v_1',17.50,'2011-11-09 20:31:50','2012-12-04 19:02:30'),(759,'Boom Blox','boom_blox',17.50,'2011-11-09 20:31:51','2015-10-14 13:47:17'),(761,'Wii Fit','wii_fit',17.50,'2011-11-09 20:31:55','2012-12-04 19:02:30'),(762,'Dragon Blade: Wrath of Fire','dragon_blade_wrath_of_fire',17.50,'2011-11-09 20:31:56','2012-12-04 19:02:30'),(763,'Escape From Bug Island','escape_from_bug_island',17.50,'2011-11-09 20:31:57','2015-10-14 12:59:25'),(764,'Geon: Emotions','geon_emotions',17.50,'2011-11-09 20:31:58','2012-12-04 19:02:30'),(766,'Harvey Birdman: Attorney at Law','harvey_birdman_attorney_at_law',17.50,'2011-11-09 20:32:10','2012-12-04 19:02:30'),(767,'Monster Lab','monster_lab',17.50,'2011-11-09 20:32:11','2015-10-14 13:47:30'),(768,'Mushroom Men: The Spore Wars','mushroom_men_the_spore_wars',17.50,'2011-11-09 20:32:12','2013-01-09 13:52:27'),(769,'Naruto: Clash of Ninja Revolution','naruto_clash_of_ninja_revolution',17.50,'2011-11-09 20:32:14','2015-10-14 13:00:22'),(771,'Rayman Raving Rabbids 2','rayman_raving_rabbids_2',17.50,'2011-11-09 20:32:29','2015-10-14 13:00:05'),(772,'Samba de Amigo','samba_de_amigo',17.50,'2011-11-09 20:32:34','2015-10-22 03:10:09'),(773,'Sonic Riders: Zero Gravity','sonic_riders_zero_gravity',17.50,'2011-11-09 20:32:35','2012-12-04 19:02:31'),(774,'Super Smash Bros. Brawl','super_smash_bros_brawl',17.50,'2011-11-09 20:32:39','2015-10-15 21:43:29'),(775,'Dance Dance Revolution HOTTEST PARTY 2','dance_dance_revolution_hottest_party_2',17.50,'2011-11-09 20:32:49','2012-12-04 19:02:32'),(780,'Natural Selection','natural_selection',17.50,'2011-11-09 20:33:06','2012-12-04 19:02:32'),(781,'Street Fighter II: The World Warrior','street_fighter_ii_the_world_warrior',17.50,'2011-11-09 20:33:07','2012-12-04 19:02:32'),(782,'Command & Conquer: Red Alert','command_conquer_red_alert',17.50,'2011-11-09 20:33:09','2012-12-04 19:02:32'),(783,'SimEarth: The Living Planet','simearth_the_living_planet',17.50,'2011-11-09 20:33:10','2012-12-04 19:02:32'),(789,'4-D Boxing','4-d_boxing',17.50,'2011-11-09 20:33:36','2015-10-21 04:26:04'),(792,'Gangsters 2','gangsters_2',17.50,'2011-11-09 20:33:47','2012-12-04 19:02:34'),(804,'American Gladiators','american_gladiators',17.50,'2011-11-09 20:34:22','2012-12-04 19:02:36'),(805,'Need for Speed II','need_for_speed_ii',17.50,'2011-11-09 20:34:29','2015-10-15 22:36:19'),(815,'Need for Speed: High Stakes','need_for_speed_high_stakes',17.50,'2011-11-09 20:35:13','2015-10-14 13:47:35'),(822,'DDRMAX Dance Dance Revolution','ddrmax_dance_dance_revolution',17.50,'2011-11-09 20:35:36','2012-12-04 19:02:38'),(824,'Seaman','seaman',17.50,'2011-11-09 20:35:44','2012-12-04 19:02:39'),(832,'Ace Combat 04: Shattered Skies','ace_combat_04_shattered_skies',17.50,'2011-11-09 20:36:23','2015-10-22 00:27:25'),(837,'SingStar','singstar_2',17.50,'2011-11-09 20:36:40','2012-12-04 19:02:41'),(844,'NHL 2004','nhl_2004',17.50,'2011-11-09 20:37:07','2012-12-04 19:02:42'),(845,'The Urbz: Sims in the City','the_urbz_sims_in_the_city',17.50,'2011-11-09 20:37:11','2012-12-04 19:02:43'),(859,'Seven Samurai 20XX','seven_samurai_20xx',17.50,'2011-11-09 20:37:55','2012-12-04 19:02:44'),(860,'Pro Evolution Soccer 5','pro_evolution_soccer_5',17.50,'2011-11-09 20:38:05','2012-12-04 19:02:45'),(861,'Tony Hawk\'s Pro Skater 4','tony_hawks_pro_skater_4',17.50,'2011-11-09 20:38:07','2012-12-04 19:02:45'),(867,'LMA Manager 2004','lma_manager_2004',17.50,'2011-11-09 20:38:44','2012-12-04 19:02:46'),(872,'Disaster Report','disaster_report',17.50,'2011-11-09 20:39:15','2012-12-04 19:02:46'),(874,'Max Payne','max_payne',17.50,'2011-11-09 20:39:23','2012-12-04 19:02:46'),(876,'Full Spectrum Warrior: Ten Hammers','full_spectrum_warrior_ten_hammers',17.50,'2011-11-09 20:39:30','2012-12-04 19:02:47'),(877,'The Sims 2','the_sims_2',17.50,'2011-11-09 20:39:33','2012-12-04 19:02:47'),(878,'Indigo Prophecy','indigo_prophecy',17.50,'2011-11-09 20:39:42','2012-12-04 19:02:47'),(879,'Men in Black II: Alien Escape','men_in_black_ii_alien_escape',17.50,'2011-11-09 20:39:43','2012-12-04 19:02:47'),(880,'Britney\'s Dance Beat','britneys_dance_beat',17.50,'2011-11-09 20:39:44','2012-12-04 19:02:47'),(881,'Aggressive Inline','aggressive_inline',17.50,'2011-11-09 20:39:46','2015-10-21 04:25:48'),(882,'Kingdom Under Fire: Circle of Doom','kingdom_under_fire_circle_of_doom',17.50,'2011-11-10 10:26:28','2012-12-04 19:02:47'),(883,'FaceBreaker','facebreaker',25.00,'2011-11-10 10:26:41','2013-02-22 12:58:30'),(884,'Baja: Edge of Control ','baja_edge_of_control',17.50,'2011-11-10 10:26:51','2012-12-04 19:02:48'),(885,'NHL 2K9','nhl_2k9',17.50,'2011-11-10 10:26:57','2015-10-15 22:36:04'),(887,'Minority Report: Everybody Runs','minority_report_everybody_runs',17.50,'2011-11-10 10:27:10','2012-12-04 19:02:48'),(888,'Monster Jam: Maximum Destruction','monster_jam_maximum_destruction',17.50,'2011-11-10 10:27:18','2012-12-04 19:02:48'),(897,'Ferrari Challenge Trofeo Pirelli','ferrari_challenge_trofeo_pirelli',17.50,'2011-11-10 11:48:04','2012-12-04 19:02:48'),(898,'Disgaea 3: Absence of Justice','disgaea_3_absence_of_justice',17.50,'2011-11-10 11:48:07','2012-12-04 19:02:48'),(899,'MLB Power Pros','mlb_power_pros',17.50,'2011-11-10 11:48:15','2012-12-04 19:02:49'),(901,'Marvel vs. Capcom 2: New Age of Heroes','marvel_vs_capcom_2_new_age_of_heroes',17.50,'2011-11-10 11:48:25','2012-12-04 19:02:49'),(902,'Return to Castle Wolfenstein: Operation Resurrection','return_to_castle_wolfenstein_operation_resurrection',17.50,'2011-11-10 11:48:31','2012-12-04 19:02:49'),(1105,'Battlefield 2: Modern Combat','battlefield_2_modern_combat',17.50,'2012-04-05 15:01:22','2012-12-04 19:03:19'),(1545,'WarPath','warpath',50.00,'2012-04-05 16:05:02','2013-02-22 13:34:12'),(2202,'Mobile Forces','mobile_forces',17.50,'2012-04-05 18:05:43','2012-12-04 19:05:59'),(2560,'American McGee\'s Alice','american_mcgees_alice',500.00,'2012-04-05 19:30:41','2015-10-16 12:59:41'),(2843,'Anachronox','anachronox',17.50,'2012-04-05 21:01:31','2015-10-22 02:29:58'),(2960,'Gunman Chronicles','gunman_chronicles',17.50,'2012-04-05 22:01:24','2012-12-04 19:07:51'),(3159,'Vampire: The Masquerade - Redemption','vampire_the_masquerade_-_redemption',17.50,'2012-04-05 23:31:31','2012-12-04 19:08:20'),(3162,'Medal of Honor: Allied Assault','medal_of_honor_allied_assault',17.50,'2012-04-05 23:31:37','2012-12-04 19:08:20'),(3348,'Battlefield 1942: Secret Weapons of WWII','battlefield_1942_secret_weapons_of_wwii',17.50,'2012-04-06 01:30:23','2015-10-16 12:59:36'),(3795,'John Romero\'s Daikatana','john_romeros_daikatana',17.50,'2012-04-06 07:01:40','2012-12-04 19:09:55'),(3837,'Quake','quake_1',17.50,'2012-04-06 07:32:01','2015-10-16 12:59:31'),(3921,'Wolfenstein: Enemy Territory','wolfenstein_enemy_territory',17.50,'2012-04-06 09:01:15','2012-12-04 19:10:14'),(3988,'Quake II Mission Pack: Ground Zero','quake_ii_mission_pack_ground_zero',17.50,'2012-04-06 10:02:05','2012-12-04 19:10:24'),(4502,'Quake II Mission Pack: The Reckoning','quake_ii_mission_pack_the_reckoning',17.50,'2012-04-06 18:00:30','2012-12-04 19:11:43'),(4788,'Star Wars: Jedi Knight II - Jedi Outcast','star_wars_jedi_knight_ii_-_jedi_outcast',17.50,'2012-04-06 22:31:35','2012-12-04 19:12:26'),(4801,'Duke Caribbean: Life\'s A Beach','duke_caribbean_lifes_a_beach',17.50,'2012-04-06 23:00:22','2012-12-04 19:12:28'),(4811,'Battlefield 1942: The Road to Rome','battlefield_1942_the_road_to_rome',17.50,'2012-04-06 23:01:12','2015-10-16 11:00:19'),(4904,'Star Trek: Elite Force II','star_trek_elite_force_ii',50.00,'2012-04-07 01:00:24','2013-02-22 13:34:57'),(6773,'Offspring Fling','offspring_fling',17.50,'2012-04-08 07:30:57','2015-10-16 10:24:14'),(6776,'Mirror\'s Edge','mirror_s_edge',100.00,'2014-02-03 12:55:01','2014-02-03 12:55:01'),(6777,'Tomb Raider','tomb_raider_2',100.00,'2014-02-03 12:55:02','2014-02-03 12:55:02'),(6895,'Project CARS','project_cars_1',50.00,'2014-02-03 13:07:04','2015-10-14 13:00:18'),(6900,'Rayman Legends','rayman_legends_1',60.00,'2014-02-03 13:08:42','2015-09-22 16:55:44'),(8195,'Lode Runner','lode_runner_1',100.00,'2014-02-03 15:52:11','2015-10-14 15:07:44'),(8240,'Adventure Island','adventure_island',100.00,'2014-02-03 15:57:12','2015-10-15 20:14:59'),(8267,'Tetris','tetris_4',100.00,'2014-02-03 15:59:12','2014-02-03 15:59:12'),(9860,'Super Mario World 2: Yoshi\'s Island','super_mario_world_2_yoshis_island',100.00,'2014-02-03 19:59:35','2015-07-03 18:36:39'),(9974,'Galaxian','galaxian_1',100.00,'2014-02-03 20:09:28','2014-02-03 20:09:28'),(9983,'Duck Hunt','duck_hunt',100.00,'2014-02-03 20:10:53','2014-02-03 20:10:53'),(10437,'Laser Ghost','laser_ghost',100.00,'2014-02-03 20:54:47','2015-10-16 10:19:26');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `game_collection_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_collection_id` (`game_collection_id`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES ('5625b276-84f8-4492-b7d6-03e52c286a2a',2,1,'2015-10-18 12:01:23','2015-10-18 12:01:23'),('5625b2cf-8228-45c4-991c-04a92c286a2a',2,0,'2015-10-19 12:01:23','2015-10-18 12:01:23'),('5625b310-1ef4-4bec-bb56-03e72c286a2a',3,1,'2015-10-20 03:20:48','2015-10-20 03:20:48'),('5625b3c0-00b0-4606-96ff-03e52c286a2a',5,1,'2015-10-20 03:23:44','2015-10-20 03:23:44'),('562704f2-d1c8-43b7-be1d-00aa2c286a2a',4,1,'2015-10-21 03:22:26','2015-10-21 03:22:26'),('562714c1-c680-475b-b64f-02bc2c286a2a',10,0,'2015-10-21 04:29:53','2015-10-22 23:49:35'),('56282cd3-97b0-4aeb-b22b-036f2c286a2a',11,1,'2015-10-22 00:24:51','2015-10-22 00:24:51'),('56296ed3-19d4-4872-a971-03d02c286a2a',9,1,'2015-10-22 23:18:43','2015-10-22 23:18:43');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(20) NOT NULL,
  `game_id` int(11) NOT NULL,
  `game_condition_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `game_condition_id` (`game_condition_id`),
  KEY `created` (`created`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES ('56284a0d-48b0-4497-b66b-00ac2c286a2a',2,713,1,1,'2015-10-22 02:29:33','2015-10-22 02:29:33'),('56284a26-e240-4ae5-a21a-036f2c286a2a',3,2843,1,1,'2015-10-22 02:29:58','2015-10-22 02:29:58'),('56285391-d1d4-45a9-8652-03702c286a2a',3,772,1,0,'2015-10-22 03:10:09','2015-10-22 23:49:35');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trades` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `offer_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trades`
--

LOCK TABLES `trades` WRITE;
/*!40000 ALTER TABLE `trades` DISABLE KEYS */;
INSERT INTO `trades` VALUES (8,'562714c1-c680-475b-b64f-02bc2c286a2a','56285391-d1d4-45a9-8652-03702c286a2a',0,'2015-10-22 20:06:48','2015-10-22 23:49:35');
/*!40000 ALTER TABLE `trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_balance` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gordon.freeman@blackmesa.net','57d6c2535d86865db6a95a68d33f85deac8d7e4b','gFreeman',100.00,'2015-10-16 16:34:30','2015-10-16 16:34:30'),(2,'shigeru.miyamoto@nintendo.com','57d6c2535d86865db6a95a68d33f85deac8d7e4b','Shigeru',50.00,'2015-10-16 16:35:33','2015-10-22 02:29:33'),(3,'jcdenton@unatco.com','57d6c2535d86865db6a95a68d33f85deac8d7e4b','JCD',82.50,'2015-10-16 16:35:55','2015-10-22 03:10:09'),(4,'terra@ff6.org','57d6c2535d86865db6a95a68d33f85deac8d7e4b','Terra',150.00,'2015-10-16 16:36:48','2015-10-16 16:36:48'),(5,'leon.kennedy@rcpd.com','57d6c2535d86865db6a95a68d33f85deac8d7e4b','Leon',170.00,'2015-10-16 16:37:55','2015-10-21 04:29:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'connaxis'
--
/*!50003 DROP PROCEDURE IF EXISTS `confirm_trade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `confirm_trade`(trade_id int, confirmed int)
BEGIN
	START TRANSACTION;
	
	UPDATE trades t
	JOIN offers o ON t.offer_id = o.id
	JOIN requests r ON t.request_id = r.id
	SET t.status = 0, t.modified = NOW(),
		o.status = 0, o.modified = NOW(),
		r.status = 0, r.modified = NOW()
	WHERE t.id = trade_id;
	
	IF confirmed = 1
	THEN
		UPDATE trades t
		JOIN requests r ON t.request_id = r.id
		JOIN offers o ON t.offer_id = o.id
		JOIN game_collections gc ON o.game_collection_id = gc.id
		JOIN games g ON gc.game_id = g.id
		JOIN users u ON gc.user_id = u.id
		SET u.account_balance = u.account_balance + g.price,
			gc.user_id = r.user_id
		WHERE t.id = trade_id;
	ELSE
		UPDATE trades t
		JOIN requests r ON t.request_id = r.id
		JOIN users u ON r.user_id = u.id
		JOIN offers o ON t.offer_id = o.id
		JOIN game_collections gc ON o.game_collection_id = gc.id
		JOIN games g ON gc.game_id = g.id
		SET u.account_balance = u.account_balance + g.price
		WHERE t.id = trade_id;
	END IF;
	
	COMMIT;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_matches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `do_matches`()
BEGIN
	SET @last_offer := @last_request := '';
	
	DROP TEMPORARY TABLE IF EXISTS potential_trades;
	
	CREATE TEMPORARY TABLE potential_trades
	AS
	SELECT offer_id, request_id
	FROM (
		SELECT  t.*,
				IF(offer_id != @last_offer COLLATE utf8_unicode_ci, 0, 1) AS matched_offer,
				@last_offer := offer_id, 
				IF(request_id != @last_request COLLATE utf8_unicode_ci, 0, 1) AS matched_request,
				@last_request := request_id
		FROM (
			SELECT  o.id AS offer_id, o.created AS offer_created,
					r.id AS request_id, r.created AS request_created,
					o.game_collection_id, gc.game_condition_id, gc.game_id
			FROM offers o
			JOIN game_collections gc ON gc.id = o.game_collection_id
			JOIN game_conditions ogc ON gc.game_condition_id = ogc.id
			JOIN games g ON g.id = gc.game_id
			JOIN requests r ON r.game_id = g.id
			JOIN game_conditions rgc ON r.game_condition_id = rgc.id
			JOIN users u ON u.id = r.user_id
			WHERE gc.user_id != r.user_id
			AND u.account_balance >= g.price
			AND o.status = 1
			AND r.status = 1
			AND ogc.relative_value >= rgc.relative_value 
			AND NOT EXISTS (SELECT 1 FROM trades t WHERE t.offer_id = o.id AND t.status = 1)
			AND NOT EXISTS (SELECT 1 FROM trades t WHERE t.request_id = r.id AND t.status = 1)
			ORDER BY game_id, o.created, r.created
		) t
		HAVING matched_offer = 0 AND matched_request = 0
	) t2;
	
	CALL iterate_matches();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_trade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `do_trade`(off_id CHAR(36), req_id CHAR(36))
BEGIN
	START TRANSACTION;
	
	UPDATE users u
	JOIN requests r ON r.user_id = u.id
	JOIN games g ON r.game_id = g.id
	JOIN game_collections gc ON gc.game_id = g.id
	JOIN offers o ON o.game_collection_id = gc.id	 
	SET u.account_balance = u.account_balance - g.price
	WHERE o.id = off_id
	AND r.id = req_id
	AND u.account_balance >= g.price;
	
	IF ROW_COUNT() = 1
	THEN
		INSERT INTO trades (offer_id, request_id, created, modified)
		VALUES (off_id, req_id, NOW(), NOW());
		
		COMMIT;
	ELSE
	 	ROLLBACK;
	END IF;	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `iterate_matches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `iterate_matches`()
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE off_id CHAR(36);
	DECLARE req_id CHAR(36);
	
	DEClARE curs CURSOR FOR 
 	SELECT offer_id, request_id FROM potential_trades;
 
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
	
	OPEN curs;
	
	iter: LOOP
 	FETCH curs INTO off_id, req_id;
 	IF finished = 1 THEN 
 		LEAVE iter;
 	END IF;
 	
 	CALL do_trade(off_id, req_id);
 
 	END LOOP iter;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-22 23:50:59

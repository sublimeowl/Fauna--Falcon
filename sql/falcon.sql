-- MySQL dump 10.11
--
-- Host: localhost    Database: fsuser_falcon
-- ------------------------------------------------------
-- Server version	5.0.91-community

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
-- Table structure for table `backlogs`
--

DROP TABLE IF EXISTS `backlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backlogs` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` int(11) NOT NULL,
  `project_uid` varchar(150) collate utf8_unicode_ci default NULL,
  `title` varchar(500) collate utf8_unicode_ci default NULL,
  `description` mediumtext collate utf8_unicode_ci,
  `budget` float default NULL,
  `assign_id` int(11) default NULL,
  `completed` int(11) default '0',
  `sprint_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backlogs`
--

LOCK TABLES `backlogs` WRITE;
/*!40000 ALTER TABLE `backlogs` DISABLE KEYS */;
INSERT INTO `backlogs` VALUES (1,2,'fkjdshgklauhckjanbaaaaaaaaasdf','teste de backlog','Duis ac elit sit amet felis gravida elementum et et eros. Nam sed lorem nisl. Sed non justo odio. In pellentesque, odio a feugiat laoreet, sem tortor adipiscing quam, vitae mattis tortor nulla sit amet leo. Curabitur eget tellus turpis, vitae auctor erat. Donec id dui nibh, quis tincidunt tellus. Donec ullamcorper posuere commodo. Fusce vehicula justo non dui sodales laoreet. Suspendisse vitae sapien sed neque sollicitudin aliquam. Praesent tempor gravida libero in hendrerit. Maecenas sed metus nec nibh adipiscing tristique. ',0,NULL,0,NULL);
/*!40000 ALTER TABLE `backlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(16) NOT NULL default '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('fcc9ae6ba54e5c0f8264335860fe87fa','127.0.0.1','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.1',1296867032,'a:9:{s:10:\"DX_user_id\";s:1:\"1\";s:11:\"DX_username\";s:5:\"admin\";s:10:\"DX_role_id\";s:1:\"2\";s:12:\"DX_role_name\";s:5:\"Admin\";s:18:\"DX_parent_roles_id\";a:0:{}s:20:\"DX_parent_roles_name\";a:0:{}s:13:\"DX_permission\";a:0:{}s:21:\"DX_parent_permissions\";a:0:{}s:12:\"DX_logged_in\";b:1;}'),('b544372bf884f3d24e14791ef05cbc0c','127.0.0.1','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.1',1296773925,'a:9:{s:10:\"DX_user_id\";s:1:\"1\";s:11:\"DX_username\";s:5:\"admin\";s:10:\"DX_role_id\";s:1:\"2\";s:12:\"DX_role_name\";s:5:\"Admin\";s:18:\"DX_parent_roles_id\";a:0:{}s:20:\"DX_parent_roles_name\";a:0:{}s:13:\"DX_permission\";a:0:{}s:21:\"DX_parent_permissions\";a:0:{}s:12:\"DX_logged_in\";b:1;}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(40) collate utf8_bin NOT NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(300) collate utf8_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `subject` varchar(500) collate utf8_unicode_ci NOT NULL,
  `body` mediumtext collate utf8_unicode_ci NOT NULL,
  `read_date` datetime default NULL,
  `sent_date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(300) default NULL,
  `body` mediumtext,
  `type` varchar(100) default NULL,
  `parentid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `data` text collate utf8_bin,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(500) character set latin1 NOT NULL,
  `description` mediumtext character set latin1,
  `uid` varchar(150) collate utf8_unicode_ci default NULL,
  `created` datetime default NULL,
  `updated` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'Falcon','Plano principal do Falcon','fkjdshgklauhckjanbaaaaaaaaasdf',NULL,'2011-02-02 10:46:07');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(30) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,0,'User'),(2,0,'Admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprints`
--

DROP TABLE IF EXISTS `sprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprints` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` int(11) NOT NULL,
  `title` varchar(500) collate utf8_unicode_ci NOT NULL,
  `description` mediumtext collate utf8_unicode_ci,
  `completed` int(11) default '0',
  `totalhours` float default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprints`
--

LOCK TABLES `sprints` WRITE;
/*!40000 ALTER TABLE `sprints` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_autologin`
--

DROP TABLE IF EXISTS `user_autologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_autologin` (
  `key_id` char(32) collate utf8_bin NOT NULL,
  `user_id` mediumint(8) NOT NULL default '0',
  `user_agent` varchar(150) collate utf8_bin NOT NULL,
  `last_ip` varchar(40) collate utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`key_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_autologin`
--

LOCK TABLES `user_autologin` WRITE;
/*!40000 ALTER TABLE `user_autologin` DISABLE KEYS */;
INSERT INTO `user_autologin` VALUES ('f13f0c09b4ead13c14463b146f52c439',1,'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.10 (maverick) Firefox/3.6.13','127.0.0.1','2011-01-28 20:00:27');
/*!40000 ALTER TABLE `user_autologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) collate utf8_bin default NULL,
  `website` varchar(255) collate utf8_bin default NULL,
  `uid` varchar(100) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_temp`
--

DROP TABLE IF EXISTS `user_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_temp` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_bin NOT NULL,
  `password` varchar(34) collate utf8_bin NOT NULL,
  `email` varchar(100) collate utf8_bin NOT NULL,
  `activation_key` varchar(50) collate utf8_bin NOT NULL,
  `last_ip` varchar(40) collate utf8_bin NOT NULL,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_temp`
--

LOCK TABLES `user_temp` WRITE;
/*!40000 ALTER TABLE `user_temp` DISABLE KEYS */;
INSERT INTO `user_temp` VALUES (1,'klunky','$1$8dMJWEqd$g9sVW0APqGqwtkH.ECRyj/','aabatista@gmail.com','7837460f8db47facf96d49bc63daf7c2','127.0.0.1','2011-01-27 19:48:31');
/*!40000 ALTER TABLE `user_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL default '1',
  `username` varchar(25) collate utf8_bin NOT NULL,
  `password` varchar(34) collate utf8_bin NOT NULL,
  `email` varchar(100) collate utf8_bin NOT NULL,
  `banned` tinyint(1) NOT NULL default '0',
  `ban_reason` varchar(255) collate utf8_bin default NULL,
  `newpass` varchar(34) collate utf8_bin default NULL,
  `newpass_key` varchar(32) collate utf8_bin default NULL,
  `newpass_time` datetime default NULL,
  `last_ip` varchar(40) collate utf8_bin NOT NULL,
  `last_login` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2,'admin','$1$i75.Do4.$ROPRZjZzDx/JjqeVtaJLW.','admin@localhost.com',0,NULL,NULL,NULL,NULL,'127.0.0.1','2011-02-05 00:21:32','2008-11-30 04:56:32','2011-02-04 23:21:22'),(2,1,'user','$1$bO..IR4.$CxjJBjKJ5QW2/BaYKDS7f.','user@localhost.com',0,NULL,NULL,NULL,NULL,'127.0.0.1','2008-12-01 14:04:14','2008-12-01 14:01:53','2008-12-01 14:04:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-05  0:53:33

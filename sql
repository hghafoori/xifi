-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: xifi
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_`
--

LOCK TABLES `Account_` WRITE;
/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` VALUES (10156,10154,0,'','2015-01-06 08:51:28','2015-01-06 08:51:28',0,'Liferay','Liferay, Inc','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`),
  KEY `IX_381E55DA` (`uuid_`),
  KEY `IX_8FCB620E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsDelivery`
--

DROP TABLE IF EXISTS `AnnouncementsDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsDelivery`
--

LOCK TABLES `AnnouncementsDelivery` WRITE;
/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsEntry`
--

DROP TABLE IF EXISTS `AnnouncementsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsEntry`
--

LOCK TABLES `AnnouncementsEntry` WRITE;
/*!40000 ALTER TABLE `AnnouncementsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsFlag`
--

DROP TABLE IF EXISTS `AnnouncementsFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsFlag`
--

LOCK TABLES `AnnouncementsFlag` WRITE;
/*!40000 ALTER TABLE `AnnouncementsFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategory`
--

DROP TABLE IF EXISTS `AssetCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`),
  KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`),
  KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategory`
--

LOCK TABLES `AssetCategory` WRITE;
/*!40000 ALTER TABLE `AssetCategory` DISABLE KEYS */;
INSERT INTO `AssetCategory` VALUES ('8b8c61ad-13e0-473b-a519-d5ed4e8322ab',11439,10181,10154,10434,'Haroon Ghafoori','2015-01-06 09:00:32','2015-01-06 09:00:32',0,2,3,'xifire','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">xifire</Title></root>','',11437);
/*!40000 ALTER TABLE `AssetCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategoryProperty`
--

DROP TABLE IF EXISTS `AssetCategoryProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategoryProperty`
--

LOCK TABLES `AssetCategoryProperty` WRITE;
/*!40000 ALTER TABLE `AssetCategoryProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategoryProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetCategories`
--

DROP TABLE IF EXISTS `AssetEntries_AssetCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetCategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetCategories`
--

LOCK TABLES `AssetEntries_AssetCategories` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetTags`
--

DROP TABLE IF EXISTS `AssetEntries_AssetTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetTags`
--

LOCK TABLES `AssetEntries_AssetTags` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntry`
--

DROP TABLE IF EXISTS `AssetEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_FEC4A201` (`layoutUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntry`
--

LOCK TABLES `AssetEntry` WRITE;
/*!40000 ALTER TABLE `AssetEntry` DISABLE KEYS */;
INSERT INTO `AssetEntry` VALUES (10179,10172,10154,10158,'','2015-01-06 08:51:29','2015-01-06 08:51:29',10116,10177,'5b9ee8a1-397b-4608-b842-a65b3ebbe41b',0,0,NULL,NULL,NULL,NULL,'text/html','10175','','','','',0,0,0,0),(10205,10194,10154,10198,'Test Test','2015-01-06 08:51:30','2015-01-06 08:51:30',10005,10198,'17483e23-2b7a-47f1-bb02-1f4676c00d5e',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(10326,10318,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10116,10323,'85385ac4-7d64-4ee1-ae8f-2ffeb4bb14e9',0,0,NULL,NULL,NULL,NULL,'text/html','10321','','','','',0,0,0,0),(10337,10330,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10116,10335,'2e218657-101c-43cb-8cd3-10ca70d732af',0,0,NULL,NULL,NULL,NULL,'text/html','10333','','','','',0,0,0,0),(10347,10340,10154,10158,'','2015-01-06 08:51:36','2015-01-06 08:51:36',10116,10345,'f9e11530-4840-41b0-91fc-89240ace3d30',0,0,NULL,NULL,NULL,NULL,'text/html','10343','','','','',0,0,0,0),(10366,10351,10154,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:37',10116,10364,'062c63d1-3129-454e-b25c-45277d677ba2',0,0,NULL,NULL,NULL,NULL,'text/html','10362','','','','',0,0,0,0),(10374,10351,10154,10158,'','2015-01-06 08:51:38','2015-01-06 08:51:38',10116,10372,'8ba5230f-fef0-41f0-a084-dcaae0c44430',0,0,NULL,NULL,NULL,NULL,'text/html','10370','','','','',0,0,0,0),(10392,10377,10154,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:39',10116,10390,'c4578f4d-bab3-4bbb-bd3d-75b631bb1263',0,0,NULL,NULL,NULL,NULL,'text/html','10388','','','','',0,0,0,0),(10401,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10116,10399,'1bdb9b29-4f12-4d64-b122-eb055aeffc1f',0,0,NULL,NULL,NULL,NULL,'text/html','10397','','','','',0,0,0,0),(10409,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10116,10407,'9e065067-4902-4c67-a36c-10d0fe94ce56',0,0,NULL,NULL,NULL,NULL,'text/html','10405','','','','',0,0,0,0),(10440,10194,10154,10434,'Haroon Ghafoori','2015-01-06 08:51:43','2015-01-06 08:51:43',10005,10434,'1fe8a62f-1664-46e5-90ff-38355dce6902',0,0,NULL,NULL,NULL,NULL,'','Haroon Ghafoori','','','','',0,0,0,0),(10449,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',10116,10447,'7fc17a5e-8a62-45c0-a01c-afb47797fba8',0,0,NULL,NULL,NULL,NULL,'text/html','10445','','','','',0,0,0,0),(10455,10442,10154,10158,'','2015-01-06 08:51:55','2015-01-06 08:51:55',10116,10453,'244b6fbb-88a9-4a77-9687-e04b5082e5d7',0,0,NULL,NULL,NULL,NULL,'text/html','10451','','','','',0,0,0,0),(10467,10194,10154,10461,'Test ORD 1','2015-01-06 08:51:56','2015-01-06 08:51:56',10005,10461,'76e8e736-fe3b-457b-8872-bbbc5402bdbc',0,0,NULL,NULL,NULL,NULL,'','Test ORD 1','','','','',0,0,0,0),(10474,10194,10154,10468,'Test ORD 2','2015-01-06 08:51:57','2015-01-06 08:51:57',10005,10468,'c30b9f41-7bca-4b66-b32e-18869d4f31fc',0,0,NULL,NULL,NULL,NULL,'','Test ORD 2','','','','',0,0,0,0),(10481,10194,10154,10475,'Test ORD 3','2015-01-06 08:51:57','2015-01-06 08:51:57',10005,10475,'bb4af016-6ecb-4cfa-911f-c840a59d5cbc',0,0,NULL,NULL,NULL,NULL,'','Test ORD 3','','','','',0,0,0,0),(10488,10194,10154,10482,'Test ORD 4','2015-01-06 08:51:57','2015-01-06 08:51:57',10005,10482,'2d2f4ac3-8311-4c14-b262-8071d289398b',0,0,NULL,NULL,NULL,NULL,'','Test ORD 4','','','','',0,0,0,0),(10495,10194,10154,10489,'Test ORD 5','2015-01-06 08:51:58','2015-01-06 08:51:58',10005,10489,'a6b3236e-4fe2-4b5a-8db1-1557bf7ed201',0,0,NULL,NULL,NULL,NULL,'','Test ORD 5','','','','',0,0,0,0),(10502,10194,10154,10496,'Test ORD 6','2015-01-06 08:52:00','2015-01-06 08:52:00',10005,10496,'94daeb31-b978-486e-8163-baf57b7884b4',0,0,NULL,NULL,NULL,NULL,'','Test ORD 6','','','','',0,0,0,0),(10509,10194,10154,10503,'Test ORD 7','2015-01-06 08:52:00','2015-01-06 08:52:00',10005,10503,'e16c5ea1-66c9-40cb-aaae-11ec90457432',0,0,NULL,NULL,NULL,NULL,'','Test ORD 7','','','','',0,0,0,0),(10516,10194,10154,10510,'Test ORD 8','2015-01-06 08:52:01','2015-01-06 08:52:01',10005,10510,'3ddea87f-9961-48d4-89f9-2e90df6b2733',0,0,NULL,NULL,NULL,NULL,'','Test ORD 8','','','','',0,0,0,0),(10523,10194,10154,10517,'Test ORD 9','2015-01-06 08:52:01','2015-01-06 08:52:01',10005,10517,'2090ea41-9c38-4472-831c-969c4b5db676',0,0,NULL,NULL,NULL,NULL,'','Test ORD 9','','','','',0,0,0,0),(10530,10194,10154,10524,'Test ORD 10','2015-01-06 08:52:01','2015-01-06 08:52:01',10005,10524,'f46af80b-4ae8-4b3c-8873-1705d62210b9',0,0,NULL,NULL,NULL,NULL,'','Test ORD 10','','','','',0,0,0,0),(10545,10194,10154,10539,'Test DLC 1','2015-01-06 08:52:02','2015-01-06 08:52:02',10005,10539,'e9f9d396-9006-489c-b4cd-4b5e3bc1b70e',0,0,NULL,NULL,NULL,NULL,'','Test DLC 1','','','','',0,0,0,0),(10552,10194,10154,10546,'Test DLC 2','2015-01-06 08:52:02','2015-01-06 08:52:02',10005,10546,'a8103504-4ce6-433d-a720-7c88fe3d81ff',0,0,NULL,NULL,NULL,NULL,'','Test DLC 2','','','','',0,0,0,0),(10559,10194,10154,10553,'Test DLC 3','2015-01-06 08:52:03','2015-01-06 08:52:03',10005,10553,'3fbfad30-dc99-41bb-ab8e-5b03ec14ca0f',0,0,NULL,NULL,NULL,NULL,'','Test DLC 3','','','','',0,0,0,0),(10566,10194,10154,10560,'Test DLC 4','2015-01-06 08:52:03','2015-01-06 08:52:03',10005,10560,'db66fa0a-b508-4d89-b8c3-43c08dfbe629',0,0,NULL,NULL,NULL,NULL,'','Test DLC 4','','','','',0,0,0,0),(10573,10194,10154,10567,'Test DLC 5','2015-01-06 08:52:03','2015-01-06 08:52:03',10005,10567,'10c6b2d3-e55a-4ad8-991e-715b2055d65d',0,0,NULL,NULL,NULL,NULL,'','Test DLC 5','','','','',0,0,0,0),(10580,10194,10154,10574,'Test DLC 6','2015-01-06 08:52:04','2015-01-06 08:52:04',10005,10574,'4af9cc09-e02f-4abc-8526-83db3180489f',0,0,NULL,NULL,NULL,NULL,'','Test DLC 6','','','','',0,0,0,0),(10587,10194,10154,10581,'Test DLC 7','2015-01-06 08:52:04','2015-01-06 08:52:04',10005,10581,'eb2627a5-ca4b-4cd0-934b-9c8e2032f7d0',0,0,NULL,NULL,NULL,NULL,'','Test DLC 7','','','','',0,0,0,0),(10594,10194,10154,10588,'Test DLC 8','2015-01-06 08:52:05','2015-01-06 08:52:05',10005,10588,'ea9bf075-84ea-477c-970a-8046b431e506',0,0,NULL,NULL,NULL,NULL,'','Test DLC 8','','','','',0,0,0,0),(10601,10194,10154,10595,'Test DLC 9','2015-01-06 08:52:05','2015-01-06 08:52:05',10005,10595,'076c3c65-7b00-4277-b235-6b1a9035dac0',0,0,NULL,NULL,NULL,NULL,'','Test DLC 9','','','','',0,0,0,0),(10608,10194,10154,10602,'Test DLC 10','2015-01-06 08:52:05','2015-01-06 08:52:05',10005,10602,'53f18266-49f1-43cf-99fa-043b62cf2190',0,0,NULL,NULL,NULL,NULL,'','Test DLC 10','','','','',0,0,0,0),(10623,10194,10154,10617,'Test FRA 1','2015-01-06 08:52:06','2015-01-06 08:52:06',10005,10617,'5b3e22ea-b3a0-4522-8f58-986a2722e38c',0,0,NULL,NULL,NULL,NULL,'','Test FRA 1','','','','',0,0,0,0),(10630,10194,10154,10624,'Test FRA 2','2015-01-06 08:52:07','2015-01-06 08:52:07',10005,10624,'40211692-0d05-42c3-9347-622ba050a2ed',0,0,NULL,NULL,NULL,NULL,'','Test FRA 2','','','','',0,0,0,0),(10637,10194,10154,10631,'Test FRA 3','2015-01-06 08:52:07','2015-01-06 08:52:07',10005,10631,'90d3226e-f389-4947-bdd1-bc77c4b523ae',0,0,NULL,NULL,NULL,NULL,'','Test FRA 3','','','','',0,0,0,0),(10644,10194,10154,10638,'Test FRA 4','2015-01-06 08:52:08','2015-01-06 08:52:08',10005,10638,'910de253-2875-4e9c-adbd-f07deaefe51b',0,0,NULL,NULL,NULL,NULL,'','Test FRA 4','','','','',0,0,0,0),(10651,10194,10154,10645,'Test FRA 5','2015-01-06 08:52:08','2015-01-06 08:52:08',10005,10645,'98982885-79b9-4494-8bdc-3c3cea996840',0,0,NULL,NULL,NULL,NULL,'','Test FRA 5','','','','',0,0,0,0),(10658,10194,10154,10652,'Test FRA 6','2015-01-06 08:52:09','2015-01-06 08:52:09',10005,10652,'e064b56e-99b6-4f38-89b2-7696db477df3',0,0,NULL,NULL,NULL,NULL,'','Test FRA 6','','','','',0,0,0,0),(10665,10194,10154,10659,'Test FRA 7','2015-01-06 08:52:09','2015-01-06 08:52:09',10005,10659,'ab817cde-b68c-4b73-900f-6e5b8f10a4d4',0,0,NULL,NULL,NULL,NULL,'','Test FRA 7','','','','',0,0,0,0),(10672,10194,10154,10666,'Test FRA 8','2015-01-06 08:52:09','2015-01-06 08:52:09',10005,10666,'6769ad57-06df-43dd-8ea5-fa2c8d2e1e87',0,0,NULL,NULL,NULL,NULL,'','Test FRA 8','','','','',0,0,0,0),(10679,10194,10154,10673,'Test FRA 9','2015-01-06 08:52:10','2015-01-06 08:52:10',10005,10673,'ba758747-97f6-45e0-a489-ff7f32be28e0',0,0,NULL,NULL,NULL,NULL,'','Test FRA 9','','','','',0,0,0,0),(10686,10194,10154,10680,'Test FRA 10','2015-01-06 08:52:10','2015-01-06 08:52:10',10005,10680,'eab3ce72-6139-4fd8-91d7-c5b74cec1bd7',0,0,NULL,NULL,NULL,NULL,'','Test FRA 10','','','','',0,0,0,0),(10697,10194,10154,10691,'Test HKG 1','2015-01-06 08:52:10','2015-01-06 08:52:10',10005,10691,'80259ee3-f458-446d-8da0-4ff5105521d1',0,0,NULL,NULL,NULL,NULL,'','Test HKG 1','','','','',0,0,0,0),(10704,10194,10154,10698,'Test HKG 2','2015-01-06 08:52:11','2015-01-06 08:52:11',10005,10698,'f9e85de7-2c48-46bf-89a6-75a75b18a028',0,0,NULL,NULL,NULL,NULL,'','Test HKG 2','','','','',0,0,0,0),(10711,10194,10154,10705,'Test HKG 3','2015-01-06 08:52:11','2015-01-06 08:52:11',10005,10705,'5d86fa6e-ec06-4344-90d2-3f0785a6420d',0,0,NULL,NULL,NULL,NULL,'','Test HKG 3','','','','',0,0,0,0),(10718,10194,10154,10712,'Test HKG 4','2015-01-06 08:52:11','2015-01-06 08:52:11',10005,10712,'87b57a4f-eaee-455c-a411-39bbc2d3269e',0,0,NULL,NULL,NULL,NULL,'','Test HKG 4','','','','',0,0,0,0),(10725,10194,10154,10719,'Test HKG 5','2015-01-06 08:52:12','2015-01-06 08:52:12',10005,10719,'be5ef289-36d3-41bf-bdd3-23028a82a07f',0,0,NULL,NULL,NULL,NULL,'','Test HKG 5','','','','',0,0,0,0),(10732,10194,10154,10726,'Test HKG 6','2015-01-06 08:52:12','2015-01-06 08:52:12',10005,10726,'2389654d-3913-4d09-a41c-6901783e31b2',0,0,NULL,NULL,NULL,NULL,'','Test HKG 6','','','','',0,0,0,0),(10739,10194,10154,10733,'Test HKG 7','2015-01-06 08:52:13','2015-01-06 08:52:13',10005,10733,'43869098-d838-4c57-b909-6e0242e22d4e',0,0,NULL,NULL,NULL,NULL,'','Test HKG 7','','','','',0,0,0,0),(10746,10194,10154,10740,'Test HKG 8','2015-01-06 08:52:13','2015-01-06 08:52:13',10005,10740,'0f07a5cb-f728-4912-8a30-08b696bd7a2d',0,0,NULL,NULL,NULL,NULL,'','Test HKG 8','','','','',0,0,0,0),(10753,10194,10154,10747,'Test HKG 9','2015-01-06 08:52:13','2015-01-06 08:52:13',10005,10747,'51c2f058-7863-467b-bc90-241b2d1596e7',0,0,NULL,NULL,NULL,NULL,'','Test HKG 9','','','','',0,0,0,0),(10760,10194,10154,10754,'Test HKG 10','2015-01-06 08:52:14','2015-01-06 08:52:14',10005,10754,'64f71f38-60c8-47ec-9793-5fa13ad541e4',0,0,NULL,NULL,NULL,NULL,'','Test HKG 10','','','','',0,0,0,0),(10771,10194,10154,10765,'Test KUL 1','2015-01-06 08:52:14','2015-01-06 08:52:14',10005,10765,'19a3241a-cb21-4d9b-ae5c-678cb98d8c4a',0,0,NULL,NULL,NULL,NULL,'','Test KUL 1','','','','',0,0,0,0),(10778,10194,10154,10772,'Test KUL 2','2015-01-06 08:52:14','2015-01-06 08:52:14',10005,10772,'5318136f-2ca5-4513-87b4-a652ee630dfc',0,0,NULL,NULL,NULL,NULL,'','Test KUL 2','','','','',0,0,0,0),(10785,10194,10154,10779,'Test KUL 3','2015-01-06 08:52:15','2015-01-06 08:52:15',10005,10779,'dc31a4c1-ee29-417f-b674-d2f71b2705c6',0,0,NULL,NULL,NULL,NULL,'','Test KUL 3','','','','',0,0,0,0),(10792,10194,10154,10786,'Test KUL 4','2015-01-06 08:52:15','2015-01-06 08:52:15',10005,10786,'a950e845-4c20-4c6e-8b7b-1c81092cf818',0,0,NULL,NULL,NULL,NULL,'','Test KUL 4','','','','',0,0,0,0),(10799,10194,10154,10793,'Test KUL 5','2015-01-06 08:52:15','2015-01-06 08:52:15',10005,10793,'549818e6-fd06-47e4-b9f4-dd10076b1b9b',0,0,NULL,NULL,NULL,NULL,'','Test KUL 5','','','','',0,0,0,0),(10806,10194,10154,10800,'Test KUL 6','2015-01-06 08:52:16','2015-01-06 08:52:16',10005,10800,'528f35f8-e688-4661-bba9-21c9a15ad5be',0,0,NULL,NULL,NULL,NULL,'','Test KUL 6','','','','',0,0,0,0),(10813,10194,10154,10807,'Test KUL 7','2015-01-06 08:52:16','2015-01-06 08:52:16',10005,10807,'ffb4b2ad-bb80-42c9-9781-d39ad96eab09',0,0,NULL,NULL,NULL,NULL,'','Test KUL 7','','','','',0,0,0,0),(10820,10194,10154,10814,'Test KUL 8','2015-01-06 08:52:16','2015-01-06 08:52:16',10005,10814,'36cf8651-84aa-4ffe-bbfd-12bcc046e254',0,0,NULL,NULL,NULL,NULL,'','Test KUL 8','','','','',0,0,0,0),(10827,10194,10154,10821,'Test KUL 9','2015-01-06 08:52:17','2015-01-06 08:52:17',10005,10821,'b3490a0c-7e43-4991-9447-1aa83be4caf3',0,0,NULL,NULL,NULL,NULL,'','Test KUL 9','','','','',0,0,0,0),(10834,10194,10154,10828,'Test KUL 10','2015-01-06 08:52:17','2015-01-06 08:52:17',10005,10828,'b3f1ae61-a99d-42c9-9605-a61e56aa4a05',0,0,NULL,NULL,NULL,NULL,'','Test KUL 10','','','','',0,0,0,0),(10845,10194,10154,10839,'Test LAX 1','2015-01-06 08:52:18','2015-01-06 08:52:18',10005,10839,'8bc660f0-a807-4c7e-9a78-e786bbc017d1',0,0,NULL,NULL,NULL,NULL,'','Test LAX 1','','','','',0,0,0,0),(10852,10194,10154,10846,'Test LAX 2','2015-01-06 08:52:18','2015-01-06 08:52:18',10005,10846,'e4104fb3-fd25-49a7-8444-6a63ce815132',0,0,NULL,NULL,NULL,NULL,'','Test LAX 2','','','','',0,0,0,0),(10859,10194,10154,10853,'Test LAX 3','2015-01-06 08:52:19','2015-01-06 08:52:19',10005,10853,'86bee8cd-a80e-4343-b37d-2e1f926ba2ad',0,0,NULL,NULL,NULL,NULL,'','Test LAX 3','','','','',0,0,0,0),(10866,10194,10154,10860,'Test LAX 4','2015-01-06 08:52:19','2015-01-06 08:52:19',10005,10860,'4bf9f31f-71ca-4cd8-8f94-da68a4fd1786',0,0,NULL,NULL,NULL,NULL,'','Test LAX 4','','','','',0,0,0,0),(10873,10194,10154,10867,'Test LAX 5','2015-01-06 08:52:20','2015-01-06 08:52:20',10005,10867,'5be661ae-27e5-41af-9206-f91898b22e7c',0,0,NULL,NULL,NULL,NULL,'','Test LAX 5','','','','',0,0,0,0),(10880,10194,10154,10874,'Test LAX 6','2015-01-06 08:52:20','2015-01-06 08:52:20',10005,10874,'995c76e4-841e-45cd-850a-a89b18e037ed',0,0,NULL,NULL,NULL,NULL,'','Test LAX 6','','','','',0,0,0,0),(10887,10194,10154,10881,'Test LAX 7','2015-01-06 08:52:20','2015-01-06 08:52:20',10005,10881,'93e81625-4c08-4760-af37-fe0746bc1f48',0,0,NULL,NULL,NULL,NULL,'','Test LAX 7','','','','',0,0,0,0),(10894,10194,10154,10888,'Test LAX 8','2015-01-06 08:52:21','2015-01-06 08:52:21',10005,10888,'e3160842-0d56-4ab5-9607-78c4be607de5',0,0,NULL,NULL,NULL,NULL,'','Test LAX 8','','','','',0,0,0,0),(10901,10194,10154,10895,'Test LAX 9','2015-01-06 08:52:21','2015-01-06 08:52:21',10005,10895,'d23d8a43-887d-4ce2-a224-076d21643b53',0,0,NULL,NULL,NULL,NULL,'','Test LAX 9','','','','',0,0,0,0),(10908,10194,10154,10902,'Test LAX 10','2015-01-06 08:52:21','2015-01-06 08:52:21',10005,10902,'e80b8355-0a06-450b-80d6-89aba7d627de',0,0,NULL,NULL,NULL,NULL,'','Test LAX 10','','','','',0,0,0,0),(10919,10194,10154,10913,'Test MAD 1','2015-01-06 08:52:22','2015-01-06 08:52:22',10005,10913,'c5d3c712-c82b-4f35-be5e-6b7fc323aee0',0,0,NULL,NULL,NULL,NULL,'','Test MAD 1','','','','',0,0,0,0),(10926,10194,10154,10920,'Test MAD 2','2015-01-06 08:52:23','2015-01-06 08:52:23',10005,10920,'135e785b-fe01-47cf-8688-c21dea6d29f0',0,0,NULL,NULL,NULL,NULL,'','Test MAD 2','','','','',0,0,0,0),(10933,10194,10154,10927,'Test MAD 3','2015-01-06 08:52:24','2015-01-06 08:52:24',10005,10927,'daa95f39-5b1d-4eda-b8cc-e461b745a6af',0,0,NULL,NULL,NULL,NULL,'','Test MAD 3','','','','',0,0,0,0),(10940,10194,10154,10934,'Test MAD 4','2015-01-06 08:52:24','2015-01-06 08:52:24',10005,10934,'aff764f3-5a13-486b-be30-cad9514982b4',0,0,NULL,NULL,NULL,NULL,'','Test MAD 4','','','','',0,0,0,0),(10947,10194,10154,10941,'Test MAD 5','2015-01-06 08:52:25','2015-01-06 08:52:25',10005,10941,'fa0f76ad-1aa2-4502-a04e-5f4ef4601bd4',0,0,NULL,NULL,NULL,NULL,'','Test MAD 5','','','','',0,0,0,0),(10954,10194,10154,10948,'Test MAD 6','2015-01-06 08:52:25','2015-01-06 08:52:25',10005,10948,'60a6327b-1298-47ca-8fce-801560bacddb',0,0,NULL,NULL,NULL,NULL,'','Test MAD 6','','','','',0,0,0,0),(10961,10194,10154,10955,'Test MAD 7','2015-01-06 08:52:26','2015-01-06 08:52:26',10005,10955,'c5301efa-ab8f-45f3-8ee3-03b568b2b787',0,0,NULL,NULL,NULL,NULL,'','Test MAD 7','','','','',0,0,0,0),(10968,10194,10154,10962,'Test MAD 8','2015-01-06 08:52:26','2015-01-06 08:52:26',10005,10962,'95a55f65-1928-408d-8ec3-a6b59625c59b',0,0,NULL,NULL,NULL,NULL,'','Test MAD 8','','','','',0,0,0,0),(10975,10194,10154,10969,'Test MAD 9','2015-01-06 08:52:26','2015-01-06 08:52:26',10005,10969,'1b5ae61b-767e-4919-8768-0d56d6e08959',0,0,NULL,NULL,NULL,NULL,'','Test MAD 9','','','','',0,0,0,0),(10982,10194,10154,10976,'Test MAD 10','2015-01-06 08:52:27','2015-01-06 08:52:27',10005,10976,'ac2c6805-6270-4eac-8190-af8946ce9702',0,0,NULL,NULL,NULL,NULL,'','Test MAD 10','','','','',0,0,0,0),(10997,10194,10154,10991,'Test NYC 1','2015-01-06 08:52:27','2015-01-06 08:52:27',10005,10991,'b10c4ecc-5396-4694-aa6d-e8fb8d35fee3',0,0,NULL,NULL,NULL,NULL,'','Test NYC 1','','','','',0,0,0,0),(11004,10194,10154,10998,'Test NYC 2','2015-01-06 08:52:28','2015-01-06 08:52:28',10005,10998,'6e67f0cc-9932-4454-85ba-77c5d83a5e32',0,0,NULL,NULL,NULL,NULL,'','Test NYC 2','','','','',0,0,0,0),(11011,10194,10154,11005,'Test NYC 3','2015-01-06 08:52:28','2015-01-06 08:52:28',10005,11005,'999bb061-88c5-421e-9170-ba2d2394e9ec',0,0,NULL,NULL,NULL,NULL,'','Test NYC 3','','','','',0,0,0,0),(11018,10194,10154,11012,'Test NYC 4','2015-01-06 08:52:28','2015-01-06 08:52:28',10005,11012,'24bf221e-e370-4e70-8286-74cf40257838',0,0,NULL,NULL,NULL,NULL,'','Test NYC 4','','','','',0,0,0,0),(11025,10194,10154,11019,'Test NYC 5','2015-01-06 08:52:29','2015-01-06 08:52:29',10005,11019,'528ae60c-2a8c-4a72-ad9c-595cd781380e',0,0,NULL,NULL,NULL,NULL,'','Test NYC 5','','','','',0,0,0,0),(11032,10194,10154,11026,'Test NYC 6','2015-01-06 08:52:29','2015-01-06 08:52:29',10005,11026,'acbf9ae7-9dbd-4434-a268-44eaae3f142c',0,0,NULL,NULL,NULL,NULL,'','Test NYC 6','','','','',0,0,0,0),(11039,10194,10154,11033,'Test NYC 7','2015-01-06 08:52:29','2015-01-06 08:52:29',10005,11033,'017c6099-1409-4fa2-a1b7-f2dafa4f0767',0,0,NULL,NULL,NULL,NULL,'','Test NYC 7','','','','',0,0,0,0),(11046,10194,10154,11040,'Test NYC 8','2015-01-06 08:52:30','2015-01-06 08:52:30',10005,11040,'12448b8d-fad8-4974-9bad-5229b588d0e1',0,0,NULL,NULL,NULL,NULL,'','Test NYC 8','','','','',0,0,0,0),(11053,10194,10154,11047,'Test NYC 9','2015-01-06 08:52:30','2015-01-06 08:52:30',10005,11047,'01ccbb66-e2a0-4344-a524-c0d473a13058',0,0,NULL,NULL,NULL,NULL,'','Test NYC 9','','','','',0,0,0,0),(11060,10194,10154,11054,'Test NYC 10','2015-01-06 08:52:30','2015-01-06 08:52:30',10005,11054,'4099ea15-50a2-4c32-ab57-16e1197975f8',0,0,NULL,NULL,NULL,NULL,'','Test NYC 10','','','','',0,0,0,0),(11071,10194,10154,11065,'Test GRU 1','2015-01-06 08:52:31','2015-01-06 08:52:31',10005,11065,'222a2fbd-1403-4efb-a06a-c187b43dce54',0,0,NULL,NULL,NULL,NULL,'','Test GRU 1','','','','',0,0,0,0),(11078,10194,10154,11072,'Test GRU 2','2015-01-06 08:52:32','2015-01-06 08:52:32',10005,11072,'486a80e8-2b21-4457-a6ae-c1a1a52734bb',0,0,NULL,NULL,NULL,NULL,'','Test GRU 2','','','','',0,0,0,0),(11085,10194,10154,11079,'Test GRU 3','2015-01-06 08:52:32','2015-01-06 08:52:32',10005,11079,'fd51979b-add0-4786-a51c-0214ec37b5a5',0,0,NULL,NULL,NULL,NULL,'','Test GRU 3','','','','',0,0,0,0),(11092,10194,10154,11086,'Test GRU 4','2015-01-06 08:52:32','2015-01-06 08:52:32',10005,11086,'e5085943-085c-418b-9e47-55834c982585',0,0,NULL,NULL,NULL,NULL,'','Test GRU 4','','','','',0,0,0,0),(11099,10194,10154,11093,'Test GRU 5','2015-01-06 08:52:33','2015-01-06 08:52:33',10005,11093,'23b0b838-feaa-4995-873a-06de4ce1aad7',0,0,NULL,NULL,NULL,NULL,'','Test GRU 5','','','','',0,0,0,0),(11106,10194,10154,11100,'Test GRU 6','2015-01-06 08:52:33','2015-01-06 08:52:33',10005,11100,'eee46433-3bd3-4b3a-a43f-f2713ea63570',0,0,NULL,NULL,NULL,NULL,'','Test GRU 6','','','','',0,0,0,0),(11113,10194,10154,11107,'Test GRU 7','2015-01-06 08:52:34','2015-01-06 08:52:34',10005,11107,'064126f6-6da3-4478-9b85-82553482ea0d',0,0,NULL,NULL,NULL,NULL,'','Test GRU 7','','','','',0,0,0,0),(11120,10194,10154,11114,'Test GRU 8','2015-01-06 08:52:34','2015-01-06 08:52:34',10005,11114,'92d433da-338d-49b4-ada7-c7f6127fff48',0,0,NULL,NULL,NULL,NULL,'','Test GRU 8','','','','',0,0,0,0),(11127,10194,10154,11121,'Test GRU 9','2015-01-06 08:52:34','2015-01-06 08:52:34',10005,11121,'617ff95b-698d-48b8-980f-f0fdc9b6486d',0,0,NULL,NULL,NULL,NULL,'','Test GRU 9','','','','',0,0,0,0),(11134,10194,10154,11128,'Test GRU 10','2015-01-06 08:52:35','2015-01-06 08:52:35',10005,11128,'48e5ab0c-0637-4965-9aa1-5cf9ce8a0323',0,0,NULL,NULL,NULL,NULL,'','Test GRU 10','','','','',0,0,0,0),(11149,10194,10154,11143,'Test SFO 1','2015-01-06 08:52:35','2015-01-06 08:52:35',10005,11143,'e68fd479-45cc-4f01-9daa-95d154f5fb2d',0,0,NULL,NULL,NULL,NULL,'','Test SFO 1','','','','',0,0,0,0),(11156,10194,10154,11150,'Test SFO 2','2015-01-06 08:52:36','2015-01-06 08:52:36',10005,11150,'fb639734-ce5b-49f3-b7ff-e5e787566731',0,0,NULL,NULL,NULL,NULL,'','Test SFO 2','','','','',0,0,0,0),(11163,10194,10154,11157,'Test SFO 3','2015-01-06 08:52:36','2015-01-06 08:52:36',10005,11157,'4e2891d8-1483-4d8e-bcca-7133b6feb515',0,0,NULL,NULL,NULL,NULL,'','Test SFO 3','','','','',0,0,0,0),(11170,10194,10154,11164,'Test SFO 4','2015-01-06 08:52:37','2015-01-06 08:52:37',10005,11164,'81e6dffe-3266-4ab2-ab34-c019043c25fb',0,0,NULL,NULL,NULL,NULL,'','Test SFO 4','','','','',0,0,0,0),(11177,10194,10154,11171,'Test SFO 5','2015-01-06 08:52:37','2015-01-06 08:52:37',10005,11171,'23146e64-4175-4723-bdd8-5743f2c50654',0,0,NULL,NULL,NULL,NULL,'','Test SFO 5','','','','',0,0,0,0),(11184,10194,10154,11178,'Test SFO 6','2015-01-06 08:52:38','2015-01-06 08:52:38',10005,11178,'01500cac-dfd6-446f-8d22-f6e21cfd479e',0,0,NULL,NULL,NULL,NULL,'','Test SFO 6','','','','',0,0,0,0),(11191,10194,10154,11185,'Test SFO 7','2015-01-06 08:52:38','2015-01-06 08:52:38',10005,11185,'16a6d54f-b083-44a8-b831-22ebbfab1a54',0,0,NULL,NULL,NULL,NULL,'','Test SFO 7','','','','',0,0,0,0),(11198,10194,10154,11192,'Test SFO 8','2015-01-06 08:52:38','2015-01-06 08:52:38',10005,11192,'58a37cdb-4b8a-47ad-a039-21e6d28dc453',0,0,NULL,NULL,NULL,NULL,'','Test SFO 8','','','','',0,0,0,0),(11205,10194,10154,11199,'Test SFO 9','2015-01-06 08:52:39','2015-01-06 08:52:39',10005,11199,'f6a162e0-c966-4fb9-b196-3562dade5d6b',0,0,NULL,NULL,NULL,NULL,'','Test SFO 9','','','','',0,0,0,0),(11212,10194,10154,11206,'Test SFO 10','2015-01-06 08:52:39','2015-01-06 08:52:39',10005,11206,'ed1f0aec-2c61-4857-adf9-158d65f4f20f',0,0,NULL,NULL,NULL,NULL,'','Test SFO 10','','','','',0,0,0,0),(11221,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:43','2015-01-06 08:52:43',10116,11219,'747dae6f-4431-4f54-9e07-bd770c6f78f4',0,0,NULL,NULL,NULL,NULL,'text/html','11217','','','','',0,0,0,0),(11227,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:44','2015-01-06 08:52:44',10116,11225,'8bd703fa-48eb-40dc-a72d-e11859fa8d51',0,0,NULL,NULL,NULL,NULL,'text/html','11223','','','','',0,0,0,0),(11263,10181,10154,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',10011,11261,'7ec122d1-8221-485f-813c-7dd0037ff616',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_tools','','','','',0,0,0,2),(11266,10181,10154,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',10116,11264,'c41ab4bd-93ff-42bf-b6b9-263226c6ae5a',0,0,NULL,NULL,NULL,NULL,'text/html','11261','','','','',0,0,0,0),(11279,10181,10154,10158,'','2015-01-06 08:53:50','2015-01-06 08:53:50',10011,11276,'98dcc90f-3e44-47e0-ac38-3b7e3f0557c1',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_learn','','','','',0,0,0,2),(11282,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10116,11280,'bc624f7d-2534-45a6-8cfb-f4e43dfb0fca',0,0,NULL,NULL,NULL,NULL,'text/html','11276','','','','',0,0,0,0),(11292,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10011,11290,'5234206c-26df-44cb-ab1d-f564adf6ffad',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_cube','','','','',0,0,0,2),(11295,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10116,11293,'97ed2c8a-452d-408c-ab12-319c03a60b7c',0,0,NULL,NULL,NULL,NULL,'text/html','11290','','','','',0,0,0,0),(11310,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',10011,11303,'6734023e-3acb-427b-802d-b713655eb009',0,1,NULL,NULL,NULL,NULL,'application/pdf','helpful_links_for_using_liferay_portal','','','','',0,0,0,0),(11313,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',10116,11311,'b6c58616-ec11-4135-92c3-8901521a63ec',0,0,NULL,NULL,NULL,NULL,'text/html','11303','','','','',0,0,0,0),(11324,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',10011,11317,'30d6902f-82f5-46fd-b35b-d3fa1f55d9ad',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_ee','','','','',0,0,0,2),(11327,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',10116,11325,'5b6da6b1-beec-4c42-8519-b214bf4f6851',0,0,NULL,NULL,NULL,NULL,'text/html','11317','','','','',0,0,0,0),(11338,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',10011,11332,'daca27e9-ba74-4fbd-81a9-eb7568c0592f',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_community','','','','',0,0,0,2),(11341,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',10116,11339,'68ca4e58-b3d6-4e92-8d6c-2a809de97fca',0,0,NULL,NULL,NULL,NULL,'text/html','11332','','','','',0,0,0,0),(11353,10181,10154,10158,'','2015-01-06 08:53:59','2015-01-06 08:53:59',10109,11351,'65543358-9b11-4a03-9215-bdf0714599bd',0,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','',0,0,0,3),(11356,10181,10154,10158,'','2015-01-06 08:54:00','2015-01-06 08:54:00',10116,11354,'73722a04-5f6e-4f9d-afa5-fca79b1ddb1f',0,0,NULL,NULL,NULL,NULL,'text/html','11351','','','','',0,0,0,0),(11366,10181,10154,10158,'','2015-01-06 08:54:02','2015-01-06 08:54:02',10116,11364,'34ea6685-bc15-40b4-8336-bcf2299df9da',0,0,NULL,NULL,NULL,NULL,'text/html','11362','','','','',0,0,0,0);
/*!40000 ALTER TABLE `AssetEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetLink`
--

DROP TABLE IF EXISTS `AssetLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetLink`
--

LOCK TABLES `AssetLink` WRITE;
/*!40000 ALTER TABLE `AssetLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTag`
--

DROP TABLE IF EXISTS `AssetTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTag`
--

LOCK TABLES `AssetTag` WRITE;
/*!40000 ALTER TABLE `AssetTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagProperty`
--

DROP TABLE IF EXISTS `AssetTagProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagProperty`
--

LOCK TABLES `AssetTagProperty` WRITE;
/*!40000 ALTER TABLE `AssetTagProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagStats`
--

DROP TABLE IF EXISTS `AssetTagStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagStats`
--

LOCK TABLES `AssetTagStats` WRITE;
/*!40000 ALTER TABLE `AssetTagStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetVocabulary`
--

DROP TABLE IF EXISTS `AssetVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_C0AAD74D` (`groupId`,`name`),
  KEY `IX_55F58818` (`uuid_`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetVocabulary`
--

LOCK TABLES `AssetVocabulary` WRITE;
/*!40000 ALTER TABLE `AssetVocabulary` DISABLE KEYS */;
INSERT INTO `AssetVocabulary` VALUES ('bf537d67-e239-4ed1-85a1-7bb046c8e3c2',10325,10194,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),('c212b51d-ec63-4dd0-83be-a61149e20da8',11437,10181,10154,10158,'','2015-01-06 08:59:39','2015-01-06 08:59:39','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `AssetVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BackgroundTask`
--

DROP TABLE IF EXISTS `BackgroundTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BackgroundTask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_5A09E5D1` (`groupId`),
  KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_C07CC7F8` (`name`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BackgroundTask`
--

LOCK TABLES `BackgroundTask` WRITE;
/*!40000 ALTER TABLE `BackgroundTask` DISABLE KEYS */;
/*!40000 ALTER TABLE `BackgroundTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsEntry`
--

DROP TABLE IF EXISTS `BlogsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsEntry`
--

LOCK TABLES `BlogsEntry` WRITE;
/*!40000 ALTER TABLE `BlogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsStatsUser`
--

DROP TABLE IF EXISTS `BlogsStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsStatsUser`
--

LOCK TABLES `BlogsStatsUser` WRITE;
/*!40000 ALTER TABLE `BlogsStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksEntry`
--

DROP TABLE IF EXISTS `BookmarksEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_1F90CA2D` (`companyId`),
  KEY `IX_276C8C13` (`companyId`,`status`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_146382F2` (`groupId`,`folderId`,`status`),
  KEY `IX_416AD7D5` (`groupId`,`status`),
  KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`),
  KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksEntry`
--

LOCK TABLES `BookmarksEntry` WRITE;
/*!40000 ALTER TABLE `BookmarksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksFolder`
--

DROP TABLE IF EXISTS `BookmarksFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_C27C9DBD` (`companyId`,`status`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksFolder`
--

LOCK TABLES `BookmarksFolder` WRITE;
/*!40000 ALTER TABLE `BookmarksFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrowserTracker`
--

DROP TABLE IF EXISTS `BrowserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrowserTracker`
--

LOCK TABLES `BrowserTracker` WRITE;
/*!40000 ALTER TABLE `BrowserTracker` DISABLE KEYS */;
INSERT INTO `BrowserTracker` VALUES (11431,10434,871760995200);
/*!40000 ALTER TABLE `BrowserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalEvent`
--

DROP TABLE IF EXISTS `CalEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalEvent`
--

LOCK TABLES `CalEvent` WRITE;
/*!40000 ALTER TABLE `CalEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Calendar`
--

DROP TABLE IF EXISTS `Calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  `enableComments` tinyint(4) DEFAULT NULL,
  `enableRatings` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarBooking`
--

DROP TABLE IF EXISTS `CalendarBooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarBooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` longtext,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_470170B4` (`calendarId`,`status`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_22DFDB49` (`resourceBlockId`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarBooking`
--

LOCK TABLES `CalendarBooking` WRITE;
/*!40000 ALTER TABLE `CalendarBooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalendarBooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarNotificationTemplate`
--

DROP TABLE IF EXISTS `CalendarNotificationTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarNotificationTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarNotificationTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `notificationType` varchar(75) DEFAULT NULL,
  `notificationTypeSettings` varchar(75) DEFAULT NULL,
  `notificationTemplateType` varchar(75) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`calendarNotificationTemplateId`),
  UNIQUE KEY `IX_4012E97F` (`uuid_`,`groupId`),
  KEY `IX_A412E5B6` (`calendarId`),
  KEY `IX_7727A482` (`calendarId`,`notificationType`,`notificationTemplateType`),
  KEY `IX_A2D4D78B` (`uuid_`),
  KEY `IX_4D7D97BD` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarNotificationTemplate`
--

LOCK TABLES `CalendarNotificationTemplate` WRITE;
/*!40000 ALTER TABLE `CalendarNotificationTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalendarNotificationTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarResource`
--

DROP TABLE IF EXISTS `CalendarResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_1243D698` (`groupId`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarResource`
--

LOCK TABLES `CalendarResource` WRITE;
/*!40000 ALTER TABLE `CalendarResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalendarResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassName_`
--

DROP TABLE IF EXISTS `ClassName_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassName_`
--

LOCK TABLES `ClassName_` WRITE;
/*!40000 ALTER TABLE `ClassName_` DISABLE KEYS */;
INSERT INTO `ClassName_` VALUES (11238,'com.liferay.calendar.model.Calendar'),(11239,'com.liferay.calendar.model.CalendarBooking'),(11240,'com.liferay.calendar.model.CalendarNotificationTemplate'),(11241,'com.liferay.calendar.model.CalendarResource'),(10017,'com.liferay.counter.model.Counter'),(11230,'com.liferay.marketplace.model.App'),(11231,'com.liferay.marketplace.model.Module'),(11271,'com.liferay.opensocial.model.Gadget'),(11272,'com.liferay.opensocial.model.OAuthConsumer'),(11273,'com.liferay.opensocial.model.OAuthToken'),(10423,'com.liferay.portal.kernel.repository.model.FileEntry'),(10018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(10019,'com.liferay.portal.model.Account'),(10020,'com.liferay.portal.model.Address'),(10021,'com.liferay.portal.model.BackgroundTask'),(10022,'com.liferay.portal.model.BrowserTracker'),(10023,'com.liferay.portal.model.ClassName'),(10024,'com.liferay.portal.model.ClusterGroup'),(10025,'com.liferay.portal.model.Company'),(10026,'com.liferay.portal.model.Contact'),(10027,'com.liferay.portal.model.Country'),(10028,'com.liferay.portal.model.EmailAddress'),(10001,'com.liferay.portal.model.Group'),(10029,'com.liferay.portal.model.Image'),(10002,'com.liferay.portal.model.Layout'),(10030,'com.liferay.portal.model.LayoutBranch'),(10031,'com.liferay.portal.model.LayoutFriendlyURL'),(10032,'com.liferay.portal.model.LayoutPrototype'),(10033,'com.liferay.portal.model.LayoutRevision'),(10034,'com.liferay.portal.model.LayoutSet'),(10035,'com.liferay.portal.model.LayoutSetBranch'),(10036,'com.liferay.portal.model.LayoutSetPrototype'),(10037,'com.liferay.portal.model.ListType'),(10038,'com.liferay.portal.model.Lock'),(10039,'com.liferay.portal.model.MembershipRequest'),(10003,'com.liferay.portal.model.Organization'),(10040,'com.liferay.portal.model.OrgGroupRole'),(10041,'com.liferay.portal.model.OrgLabor'),(10042,'com.liferay.portal.model.PasswordPolicy'),(10043,'com.liferay.portal.model.PasswordPolicyRel'),(10044,'com.liferay.portal.model.PasswordTracker'),(10045,'com.liferay.portal.model.Phone'),(10046,'com.liferay.portal.model.PluginSetting'),(10047,'com.liferay.portal.model.PortalPreferences'),(10048,'com.liferay.portal.model.Portlet'),(10049,'com.liferay.portal.model.PortletItem'),(10050,'com.liferay.portal.model.PortletPreferences'),(10051,'com.liferay.portal.model.Region'),(10052,'com.liferay.portal.model.Release'),(10053,'com.liferay.portal.model.Repository'),(10054,'com.liferay.portal.model.RepositoryEntry'),(10055,'com.liferay.portal.model.ResourceAction'),(10056,'com.liferay.portal.model.ResourceBlock'),(10057,'com.liferay.portal.model.ResourceBlockPermission'),(10058,'com.liferay.portal.model.ResourcePermission'),(10059,'com.liferay.portal.model.ResourceTypePermission'),(10004,'com.liferay.portal.model.Role'),(10060,'com.liferay.portal.model.ServiceComponent'),(10061,'com.liferay.portal.model.Shard'),(10062,'com.liferay.portal.model.Subscription'),(10063,'com.liferay.portal.model.SystemEvent'),(10064,'com.liferay.portal.model.Team'),(10065,'com.liferay.portal.model.Ticket'),(10005,'com.liferay.portal.model.User'),(10006,'com.liferay.portal.model.UserGroup'),(10066,'com.liferay.portal.model.UserGroupGroupRole'),(10067,'com.liferay.portal.model.UserGroupRole'),(10068,'com.liferay.portal.model.UserIdMapper'),(10069,'com.liferay.portal.model.UserNotificationDelivery'),(10070,'com.liferay.portal.model.UserNotificationEvent'),(10190,'com.liferay.portal.model.UserPersonalSite'),(10071,'com.liferay.portal.model.UserTracker'),(10072,'com.liferay.portal.model.UserTrackerPath'),(10073,'com.liferay.portal.model.VirtualHost'),(10074,'com.liferay.portal.model.WebDAVProps'),(10075,'com.liferay.portal.model.Website'),(10076,'com.liferay.portal.model.WorkflowDefinitionLink'),(10077,'com.liferay.portal.model.WorkflowInstanceLink'),(11260,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),(11375,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),(11376,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),(11377,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),(11378,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),(11379,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),(11380,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),(11381,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),(11382,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),(11383,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),(11384,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),(11385,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),(11386,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),(11387,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),(11388,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),(11389,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),(11390,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),(10078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(10079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(10080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(10081,'com.liferay.portlet.asset.model.AssetCategory'),(10082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(10083,'com.liferay.portlet.asset.model.AssetEntry'),(10084,'com.liferay.portlet.asset.model.AssetLink'),(10085,'com.liferay.portlet.asset.model.AssetTag'),(10086,'com.liferay.portlet.asset.model.AssetTagProperty'),(10087,'com.liferay.portlet.asset.model.AssetTagStats'),(10088,'com.liferay.portlet.asset.model.AssetVocabulary'),(10007,'com.liferay.portlet.blogs.model.BlogsEntry'),(10089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(10008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(10009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(10010,'com.liferay.portlet.calendar.model.CalEvent'),(10090,'com.liferay.portlet.documentlibrary.model.DLContent'),(10011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(10091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(10092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(10093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(10094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(10095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(10012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(10096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(10315,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(10097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(10098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(10099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(10100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(10101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(10102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(10103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(10104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(10105,'com.liferay.portlet.expando.model.ExpandoColumn'),(10106,'com.liferay.portlet.expando.model.ExpandoRow'),(10107,'com.liferay.portlet.expando.model.ExpandoTable'),(10108,'com.liferay.portlet.expando.model.ExpandoValue'),(10109,'com.liferay.portlet.journal.model.JournalArticle'),(10110,'com.liferay.portlet.journal.model.JournalArticleImage'),(10111,'com.liferay.portlet.journal.model.JournalArticleResource'),(10112,'com.liferay.portlet.journal.model.JournalContentSearch'),(10113,'com.liferay.portlet.journal.model.JournalFeed'),(10013,'com.liferay.portlet.journal.model.JournalFolder'),(10114,'com.liferay.portlet.messageboards.model.MBBan'),(10115,'com.liferay.portlet.messageboards.model.MBCategory'),(10116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(10117,'com.liferay.portlet.messageboards.model.MBMailingList'),(10014,'com.liferay.portlet.messageboards.model.MBMessage'),(10118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(10015,'com.liferay.portlet.messageboards.model.MBThread'),(10119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(10120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(10121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(10122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(10123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(10124,'com.liferay.portlet.polls.model.PollsChoice'),(10125,'com.liferay.portlet.polls.model.PollsQuestion'),(10126,'com.liferay.portlet.polls.model.PollsVote'),(10127,'com.liferay.portlet.ratings.model.RatingsEntry'),(10128,'com.liferay.portlet.ratings.model.RatingsStats'),(10129,'com.liferay.portlet.shopping.model.ShoppingCart'),(10130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(10131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(10132,'com.liferay.portlet.shopping.model.ShoppingItem'),(10133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(10134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(10135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(10136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(10137,'com.liferay.portlet.social.model.SocialActivity'),(10138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(10139,'com.liferay.portlet.social.model.SocialActivityCounter'),(10140,'com.liferay.portlet.social.model.SocialActivityLimit'),(10141,'com.liferay.portlet.social.model.SocialActivitySet'),(10142,'com.liferay.portlet.social.model.SocialActivitySetting'),(10143,'com.liferay.portlet.social.model.SocialRelation'),(10144,'com.liferay.portlet.social.model.SocialRequest'),(10145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(10146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(10147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(10148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(10149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(10150,'com.liferay.portlet.trash.model.TrashEntry'),(10151,'com.liferay.portlet.trash.model.TrashVersion'),(10152,'com.liferay.portlet.wiki.model.WikiNode'),(10016,'com.liferay.portlet.wiki.model.WikiPage'),(10153,'com.liferay.portlet.wiki.model.WikiPageResource'),(11244,'com.liferay.sync.model.SyncDLObject');
/*!40000 ALTER TABLE `ClassName_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterGroup`
--

LOCK TABLES `ClusterGroup` WRITE;
/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (10154,10156,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABBsYFJvsVYy/jMQM3SSu8Y+','liferay.com','',0,0,0,1);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_`
--

LOCK TABLES `Contact_` WRITE;
/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` VALUES (10159,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10005,10158,10156,0,'default@liferay.com','','','',0,0,1,'2015-01-06 08:51:28','','','','','','','','','','','','','','',''),(10200,10154,10198,'','2015-01-06 08:51:30','2015-01-06 08:51:30',10005,10198,10156,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10435,10154,10434,'','2015-01-06 08:51:43','2015-01-06 08:51:43',10005,10434,10156,0,'hghafoori@xebia.com','Haroon','','Ghafoori',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10462,10154,10461,'','2015-01-06 08:51:56','2015-01-06 08:51:56',10005,10461,10156,0,'test.ord.1@liferay.com','Test','','ORD 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10469,10154,10468,'','2015-01-06 08:51:57','2015-01-06 08:51:57',10005,10468,10156,0,'test.ord.2@liferay.com','Test','','ORD 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10476,10154,10475,'','2015-01-06 08:51:57','2015-01-06 08:51:57',10005,10475,10156,0,'test.ord.3@liferay.com','Test','','ORD 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10483,10154,10482,'','2015-01-06 08:51:57','2015-01-06 08:51:57',10005,10482,10156,0,'test.ord.4@liferay.com','Test','','ORD 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10490,10154,10489,'','2015-01-06 08:51:58','2015-01-06 08:51:58',10005,10489,10156,0,'test.ord.5@liferay.com','Test','','ORD 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10497,10154,10496,'','2015-01-06 08:52:00','2015-01-06 08:52:00',10005,10496,10156,0,'test.ord.6@liferay.com','Test','','ORD 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10504,10154,10503,'','2015-01-06 08:52:00','2015-01-06 08:52:00',10005,10503,10156,0,'test.ord.7@liferay.com','Test','','ORD 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10511,10154,10510,'','2015-01-06 08:52:01','2015-01-06 08:52:01',10005,10510,10156,0,'test.ord.8@liferay.com','Test','','ORD 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10518,10154,10517,'','2015-01-06 08:52:01','2015-01-06 08:52:01',10005,10517,10156,0,'test.ord.9@liferay.com','Test','','ORD 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10525,10154,10524,'','2015-01-06 08:52:01','2015-01-06 08:52:01',10005,10524,10156,0,'test.ord.10@liferay.com','Test','','ORD 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10540,10154,10539,'','2015-01-06 08:52:02','2015-01-06 08:52:02',10005,10539,10156,0,'test.dlc.1@liferay.com','Test','','DLC 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10547,10154,10546,'','2015-01-06 08:52:02','2015-01-06 08:52:02',10005,10546,10156,0,'test.dlc.2@liferay.com','Test','','DLC 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10554,10154,10553,'','2015-01-06 08:52:03','2015-01-06 08:52:03',10005,10553,10156,0,'test.dlc.3@liferay.com','Test','','DLC 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10561,10154,10560,'','2015-01-06 08:52:03','2015-01-06 08:52:03',10005,10560,10156,0,'test.dlc.4@liferay.com','Test','','DLC 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10568,10154,10567,'','2015-01-06 08:52:03','2015-01-06 08:52:03',10005,10567,10156,0,'test.dlc.5@liferay.com','Test','','DLC 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10575,10154,10574,'','2015-01-06 08:52:04','2015-01-06 08:52:04',10005,10574,10156,0,'test.dlc.6@liferay.com','Test','','DLC 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10582,10154,10581,'','2015-01-06 08:52:04','2015-01-06 08:52:04',10005,10581,10156,0,'test.dlc.7@liferay.com','Test','','DLC 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10589,10154,10588,'','2015-01-06 08:52:05','2015-01-06 08:52:05',10005,10588,10156,0,'test.dlc.8@liferay.com','Test','','DLC 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10596,10154,10595,'','2015-01-06 08:52:05','2015-01-06 08:52:05',10005,10595,10156,0,'test.dlc.9@liferay.com','Test','','DLC 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10603,10154,10602,'','2015-01-06 08:52:05','2015-01-06 08:52:05',10005,10602,10156,0,'test.dlc.10@liferay.com','Test','','DLC 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10618,10154,10617,'','2015-01-06 08:52:06','2015-01-06 08:52:06',10005,10617,10156,0,'test.fra.1@liferay.com','Test','','FRA 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10625,10154,10624,'','2015-01-06 08:52:07','2015-01-06 08:52:07',10005,10624,10156,0,'test.fra.2@liferay.com','Test','','FRA 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10632,10154,10631,'','2015-01-06 08:52:07','2015-01-06 08:52:07',10005,10631,10156,0,'test.fra.3@liferay.com','Test','','FRA 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10639,10154,10638,'','2015-01-06 08:52:08','2015-01-06 08:52:08',10005,10638,10156,0,'test.fra.4@liferay.com','Test','','FRA 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10646,10154,10645,'','2015-01-06 08:52:08','2015-01-06 08:52:08',10005,10645,10156,0,'test.fra.5@liferay.com','Test','','FRA 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10653,10154,10652,'','2015-01-06 08:52:09','2015-01-06 08:52:09',10005,10652,10156,0,'test.fra.6@liferay.com','Test','','FRA 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10660,10154,10659,'','2015-01-06 08:52:09','2015-01-06 08:52:09',10005,10659,10156,0,'test.fra.7@liferay.com','Test','','FRA 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10667,10154,10666,'','2015-01-06 08:52:09','2015-01-06 08:52:09',10005,10666,10156,0,'test.fra.8@liferay.com','Test','','FRA 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10674,10154,10673,'','2015-01-06 08:52:10','2015-01-06 08:52:10',10005,10673,10156,0,'test.fra.9@liferay.com','Test','','FRA 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10681,10154,10680,'','2015-01-06 08:52:10','2015-01-06 08:52:10',10005,10680,10156,0,'test.fra.10@liferay.com','Test','','FRA 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10692,10154,10691,'','2015-01-06 08:52:10','2015-01-06 08:52:10',10005,10691,10156,0,'test.hkg.1@liferay.com','Test','','HKG 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10699,10154,10698,'','2015-01-06 08:52:11','2015-01-06 08:52:11',10005,10698,10156,0,'test.hkg.2@liferay.com','Test','','HKG 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10706,10154,10705,'','2015-01-06 08:52:11','2015-01-06 08:52:11',10005,10705,10156,0,'test.hkg.3@liferay.com','Test','','HKG 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10713,10154,10712,'','2015-01-06 08:52:11','2015-01-06 08:52:11',10005,10712,10156,0,'test.hkg.4@liferay.com','Test','','HKG 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10720,10154,10719,'','2015-01-06 08:52:12','2015-01-06 08:52:12',10005,10719,10156,0,'test.hkg.5@liferay.com','Test','','HKG 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10727,10154,10726,'','2015-01-06 08:52:12','2015-01-06 08:52:12',10005,10726,10156,0,'test.hkg.6@liferay.com','Test','','HKG 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10734,10154,10733,'','2015-01-06 08:52:13','2015-01-06 08:52:13',10005,10733,10156,0,'test.hkg.7@liferay.com','Test','','HKG 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10741,10154,10740,'','2015-01-06 08:52:13','2015-01-06 08:52:13',10005,10740,10156,0,'test.hkg.8@liferay.com','Test','','HKG 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10748,10154,10747,'','2015-01-06 08:52:13','2015-01-06 08:52:13',10005,10747,10156,0,'test.hkg.9@liferay.com','Test','','HKG 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10755,10154,10754,'','2015-01-06 08:52:14','2015-01-06 08:52:14',10005,10754,10156,0,'test.hkg.10@liferay.com','Test','','HKG 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10766,10154,10765,'','2015-01-06 08:52:14','2015-01-06 08:52:14',10005,10765,10156,0,'test.kul.1@liferay.com','Test','','KUL 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10773,10154,10772,'','2015-01-06 08:52:14','2015-01-06 08:52:14',10005,10772,10156,0,'test.kul.2@liferay.com','Test','','KUL 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10780,10154,10779,'','2015-01-06 08:52:15','2015-01-06 08:52:15',10005,10779,10156,0,'test.kul.3@liferay.com','Test','','KUL 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10787,10154,10786,'','2015-01-06 08:52:15','2015-01-06 08:52:15',10005,10786,10156,0,'test.kul.4@liferay.com','Test','','KUL 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10794,10154,10793,'','2015-01-06 08:52:15','2015-01-06 08:52:15',10005,10793,10156,0,'test.kul.5@liferay.com','Test','','KUL 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10801,10154,10800,'','2015-01-06 08:52:16','2015-01-06 08:52:16',10005,10800,10156,0,'test.kul.6@liferay.com','Test','','KUL 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10808,10154,10807,'','2015-01-06 08:52:16','2015-01-06 08:52:16',10005,10807,10156,0,'test.kul.7@liferay.com','Test','','KUL 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10815,10154,10814,'','2015-01-06 08:52:16','2015-01-06 08:52:16',10005,10814,10156,0,'test.kul.8@liferay.com','Test','','KUL 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10822,10154,10821,'','2015-01-06 08:52:17','2015-01-06 08:52:17',10005,10821,10156,0,'test.kul.9@liferay.com','Test','','KUL 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10829,10154,10828,'','2015-01-06 08:52:17','2015-01-06 08:52:17',10005,10828,10156,0,'test.kul.10@liferay.com','Test','','KUL 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10840,10154,10839,'','2015-01-06 08:52:18','2015-01-06 08:52:18',10005,10839,10156,0,'test.lax.1@liferay.com','Test','','LAX 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10847,10154,10846,'','2015-01-06 08:52:18','2015-01-06 08:52:18',10005,10846,10156,0,'test.lax.2@liferay.com','Test','','LAX 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10854,10154,10853,'','2015-01-06 08:52:19','2015-01-06 08:52:19',10005,10853,10156,0,'test.lax.3@liferay.com','Test','','LAX 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10861,10154,10860,'','2015-01-06 08:52:19','2015-01-06 08:52:19',10005,10860,10156,0,'test.lax.4@liferay.com','Test','','LAX 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10868,10154,10867,'','2015-01-06 08:52:20','2015-01-06 08:52:20',10005,10867,10156,0,'test.lax.5@liferay.com','Test','','LAX 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10875,10154,10874,'','2015-01-06 08:52:20','2015-01-06 08:52:20',10005,10874,10156,0,'test.lax.6@liferay.com','Test','','LAX 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10882,10154,10881,'','2015-01-06 08:52:20','2015-01-06 08:52:20',10005,10881,10156,0,'test.lax.7@liferay.com','Test','','LAX 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10889,10154,10888,'','2015-01-06 08:52:21','2015-01-06 08:52:21',10005,10888,10156,0,'test.lax.8@liferay.com','Test','','LAX 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10896,10154,10895,'','2015-01-06 08:52:21','2015-01-06 08:52:21',10005,10895,10156,0,'test.lax.9@liferay.com','Test','','LAX 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10903,10154,10902,'','2015-01-06 08:52:21','2015-01-06 08:52:21',10005,10902,10156,0,'test.lax.10@liferay.com','Test','','LAX 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10914,10154,10913,'','2015-01-06 08:52:22','2015-01-06 08:52:22',10005,10913,10156,0,'test.mad.1@liferay.com','Test','','MAD 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10921,10154,10920,'','2015-01-06 08:52:23','2015-01-06 08:52:23',10005,10920,10156,0,'test.mad.2@liferay.com','Test','','MAD 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10928,10154,10927,'','2015-01-06 08:52:24','2015-01-06 08:52:24',10005,10927,10156,0,'test.mad.3@liferay.com','Test','','MAD 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10935,10154,10934,'','2015-01-06 08:52:24','2015-01-06 08:52:24',10005,10934,10156,0,'test.mad.4@liferay.com','Test','','MAD 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10942,10154,10941,'','2015-01-06 08:52:25','2015-01-06 08:52:25',10005,10941,10156,0,'test.mad.5@liferay.com','Test','','MAD 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10949,10154,10948,'','2015-01-06 08:52:25','2015-01-06 08:52:25',10005,10948,10156,0,'test.mad.6@liferay.com','Test','','MAD 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10956,10154,10955,'','2015-01-06 08:52:26','2015-01-06 08:52:26',10005,10955,10156,0,'test.mad.7@liferay.com','Test','','MAD 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10963,10154,10962,'','2015-01-06 08:52:26','2015-01-06 08:52:26',10005,10962,10156,0,'test.mad.8@liferay.com','Test','','MAD 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10970,10154,10969,'','2015-01-06 08:52:26','2015-01-06 08:52:26',10005,10969,10156,0,'test.mad.9@liferay.com','Test','','MAD 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10977,10154,10976,'','2015-01-06 08:52:27','2015-01-06 08:52:27',10005,10976,10156,0,'test.mad.10@liferay.com','Test','','MAD 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10992,10154,10991,'','2015-01-06 08:52:27','2015-01-06 08:52:27',10005,10991,10156,0,'test.nyc.1@liferay.com','Test','','NYC 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10999,10154,10998,'','2015-01-06 08:52:28','2015-01-06 08:52:28',10005,10998,10156,0,'test.nyc.2@liferay.com','Test','','NYC 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11006,10154,11005,'','2015-01-06 08:52:28','2015-01-06 08:52:28',10005,11005,10156,0,'test.nyc.3@liferay.com','Test','','NYC 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11013,10154,11012,'','2015-01-06 08:52:28','2015-01-06 08:52:28',10005,11012,10156,0,'test.nyc.4@liferay.com','Test','','NYC 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11020,10154,11019,'','2015-01-06 08:52:29','2015-01-06 08:52:29',10005,11019,10156,0,'test.nyc.5@liferay.com','Test','','NYC 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11027,10154,11026,'','2015-01-06 08:52:29','2015-01-06 08:52:29',10005,11026,10156,0,'test.nyc.6@liferay.com','Test','','NYC 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11034,10154,11033,'','2015-01-06 08:52:29','2015-01-06 08:52:29',10005,11033,10156,0,'test.nyc.7@liferay.com','Test','','NYC 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11041,10154,11040,'','2015-01-06 08:52:30','2015-01-06 08:52:30',10005,11040,10156,0,'test.nyc.8@liferay.com','Test','','NYC 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11048,10154,11047,'','2015-01-06 08:52:30','2015-01-06 08:52:30',10005,11047,10156,0,'test.nyc.9@liferay.com','Test','','NYC 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11055,10154,11054,'','2015-01-06 08:52:30','2015-01-06 08:52:30',10005,11054,10156,0,'test.nyc.10@liferay.com','Test','','NYC 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11066,10154,11065,'','2015-01-06 08:52:31','2015-01-06 08:52:31',10005,11065,10156,0,'test.gru.1@liferay.com','Test','','GRU 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11073,10154,11072,'','2015-01-06 08:52:32','2015-01-06 08:52:32',10005,11072,10156,0,'test.gru.2@liferay.com','Test','','GRU 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11080,10154,11079,'','2015-01-06 08:52:32','2015-01-06 08:52:32',10005,11079,10156,0,'test.gru.3@liferay.com','Test','','GRU 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11087,10154,11086,'','2015-01-06 08:52:32','2015-01-06 08:52:32',10005,11086,10156,0,'test.gru.4@liferay.com','Test','','GRU 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11094,10154,11093,'','2015-01-06 08:52:33','2015-01-06 08:52:33',10005,11093,10156,0,'test.gru.5@liferay.com','Test','','GRU 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11101,10154,11100,'','2015-01-06 08:52:33','2015-01-06 08:52:33',10005,11100,10156,0,'test.gru.6@liferay.com','Test','','GRU 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11108,10154,11107,'','2015-01-06 08:52:34','2015-01-06 08:52:34',10005,11107,10156,0,'test.gru.7@liferay.com','Test','','GRU 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11115,10154,11114,'','2015-01-06 08:52:34','2015-01-06 08:52:34',10005,11114,10156,0,'test.gru.8@liferay.com','Test','','GRU 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11122,10154,11121,'','2015-01-06 08:52:34','2015-01-06 08:52:34',10005,11121,10156,0,'test.gru.9@liferay.com','Test','','GRU 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11129,10154,11128,'','2015-01-06 08:52:35','2015-01-06 08:52:35',10005,11128,10156,0,'test.gru.10@liferay.com','Test','','GRU 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11144,10154,11143,'','2015-01-06 08:52:35','2015-01-06 08:52:35',10005,11143,10156,0,'test.sfo.1@liferay.com','Test','','SFO 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11151,10154,11150,'','2015-01-06 08:52:36','2015-01-06 08:52:36',10005,11150,10156,0,'test.sfo.2@liferay.com','Test','','SFO 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11158,10154,11157,'','2015-01-06 08:52:36','2015-01-06 08:52:36',10005,11157,10156,0,'test.sfo.3@liferay.com','Test','','SFO 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11165,10154,11164,'','2015-01-06 08:52:37','2015-01-06 08:52:37',10005,11164,10156,0,'test.sfo.4@liferay.com','Test','','SFO 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11172,10154,11171,'','2015-01-06 08:52:37','2015-01-06 08:52:37',10005,11171,10156,0,'test.sfo.5@liferay.com','Test','','SFO 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11179,10154,11178,'','2015-01-06 08:52:38','2015-01-06 08:52:38',10005,11178,10156,0,'test.sfo.6@liferay.com','Test','','SFO 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11186,10154,11185,'','2015-01-06 08:52:38','2015-01-06 08:52:38',10005,11185,10156,0,'test.sfo.7@liferay.com','Test','','SFO 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11193,10154,11192,'','2015-01-06 08:52:38','2015-01-06 08:52:38',10005,11192,10156,0,'test.sfo.8@liferay.com','Test','','SFO 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11200,10154,11199,'','2015-01-06 08:52:39','2015-01-06 08:52:39',10005,11199,10156,0,'test.sfo.9@liferay.com','Test','','SFO 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11207,10154,11206,'','2015-01-06 08:52:39','2015-01-06 08:52:39',10005,11206,10156,0,'test.sfo.10@liferay.com','Test','','SFO 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',11500),('com.liferay.portal.model.Layout#10172#true',1),('com.liferay.portal.model.Layout#10181#false',1),('com.liferay.portal.model.Layout#10318#true',1),('com.liferay.portal.model.Layout#10330#true',1),('com.liferay.portal.model.Layout#10340#true',1),('com.liferay.portal.model.Layout#10351#true',2),('com.liferay.portal.model.Layout#10377#true',3),('com.liferay.portal.model.Layout#10437#false',1),('com.liferay.portal.model.Layout#10437#true',1),('com.liferay.portal.model.Layout#10442#false',1),('com.liferay.portal.model.Layout#10442#true',1),('com.liferay.portal.model.ResourceAction',100),('com.liferay.portal.model.ResourcePermission',700),('com.liferay.portlet.documentlibrary.model.DLFileEntry',100),('com.liferay.portlet.social.model.SocialActivity',100);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusUser`
--

LOCK TABLES `CyrusUser` WRITE;
/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusVirtual`
--

LOCK TABLES `CyrusVirtual` WRITE;
/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecord`
--

DROP TABLE IF EXISTS `DDLRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecord`
--

LOCK TABLES `DDLRecord` WRITE;
/*!40000 ALTER TABLE `DDLRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordSet`
--

DROP TABLE IF EXISTS `DDLRecordSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordSet`
--

LOCK TABLES `DDLRecordSet` WRITE;
/*!40000 ALTER TABLE `DDLRecordSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordVersion`
--

DROP TABLE IF EXISTS `DDLRecordVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordVersion`
--

LOCK TABLES `DDLRecordVersion` WRITE;
/*!40000 ALTER TABLE `DDLRecordVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMContent`
--

DROP TABLE IF EXISTS `DDMContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMContent`
--

LOCK TABLES `DDMContent` WRITE;
/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
INSERT INTO `DDMContent` VALUES ('c0c926cc-67e8-4757-8725-f2c14b99679e',11286,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('4fcd0d2e-e878-4b42-9f89-95d31b577c81',11297,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('81fa286c-b9a0-4db9-9b86-ea6d5c4328ce',11307,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('4af249b0-13c3-4ce3-87bf-2fc25eaf0ec2',11321,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_MODIFIED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_LAST_SAVED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_CREATION_DATE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:30:43Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[application/pdf]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_LAST_MODIFIED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:33:19Z]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_CREATED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2013-08-28T22:30:43Z]]></dynamic-content>\n	</dynamic-element>\n</root>'),('0f9e83ea-cfeb-49ac-ad27-23b6c43cc325',11335,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('e2ff8b03-2a9b-486a-9f89-1d4be3b8bb90',11347,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[50]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8 8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStorageLink`
--

DROP TABLE IF EXISTS `DDMStorageLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStorageLink`
--

LOCK TABLES `DDMStorageLink` WRITE;
/*!40000 ALTER TABLE `DDMStorageLink` DISABLE KEYS */;
INSERT INTO `DDMStorageLink` VALUES ('ed431b36-509f-4930-b5bb-dfb1bf6336fa',11287,10100,11286,10316),('5c09eb36-425c-4127-a6d2-4c1acfd63219',11298,10100,11297,10316),('fa470828-478b-49d3-9f2c-2711f8941d63',11308,10100,11307,10316),('1053b1d7-b724-4c47-a258-5354d7ed0191',11322,10100,11321,10316),('10a2a882-8efd-425c-bbd7-98f09f629bf3',11336,10100,11335,10316),('33f0262d-8772-4bee-865f-1b4247473a51',11348,10100,11347,10316);
/*!40000 ALTER TABLE `DDMStorageLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructure`
--

DROP TABLE IF EXISTS `DDMStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_B6ED5E50` (`groupId`,`classNameId`),
  KEY `IX_43395316` (`groupId`,`parentStructureId`),
  KEY `IX_657899A8` (`parentStructureId`),
  KEY `IX_20FDE04C` (`structureKey`),
  KEY `IX_E61809C8` (`uuid_`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructure`
--

LOCK TABLES `DDMStructure` WRITE;
/*!40000 ALTER TABLE `DDMStructure` DISABLE KEYS */;
INSERT INTO `DDMStructure` VALUES ('f03a499c-3581-4b36-a557-47e3b8d169d8',10304,10194,10154,10158,'','2015-01-06 08:51:32','2015-01-06 08:51:32',0,10091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('76a9e4df-b58d-4c11-93af-582bfe4e9666',10305,10194,10154,10158,'','2015-01-06 08:51:32','2015-01-06 08:51:32',0,10091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('cff7e90c-c11d-447a-906a-70552ee3b523',10306,10194,10154,10158,'','2015-01-06 08:51:32','2015-01-06 08:51:32',0,10091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('da77ae13-b975-4e7a-8fa7-7ca15ad9ae59',10308,10194,10154,10158,'','2015-01-06 08:51:32','2015-01-06 08:51:32',0,10091,'AUTO_8D990DB1-F49C-4D83-A36C-CF0E8E5DDF7E','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('2fe0b65f-2484-4bfd-8804-70d389b1ff9e',10310,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33',0,10091,'AUTO_E48113D1-93B0-4326-AB70-A80043619379','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('3b3e48a4-a32e-4135-aa6d-9c459770a567',10312,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33',0,10091,'AUTO_5A4E7D1F-9E4D-4179-BD5C-38975B8EE284','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('ce88def5-9a61-4449-9b7a-1ac833342768',10314,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33',0,10091,'AUTO_BC419AFC-6840-4B16-80FB-E3450E057317','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('8a1bcb98-b5a1-463c-95cd-9bd98c1eb3dc',10316,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33',0,10315,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `DDMStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructureLink`
--

DROP TABLE IF EXISTS `DDMStructureLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructureLink`
--

LOCK TABLES `DDMStructureLink` WRITE;
/*!40000 ALTER TABLE `DDMStructureLink` DISABLE KEYS */;
INSERT INTO `DDMStructureLink` VALUES (11288,10091,11278,10316),(11299,10091,11296,10316),(11309,10091,11306,10316),(11323,10091,11320,10316),(11337,10091,11334,10316),(11349,10091,11346,10316);
/*!40000 ALTER TABLE `DDMStructureLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMTemplate`
--

DROP TABLE IF EXISTS `DDMTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_BD9A4A91` (`groupId`,`classNameId`),
  KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_90800923` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_B1C33EA6` (`groupId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_127A35B0` (`smallImageId`),
  KEY `IX_CAE41A28` (`templateKey`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMTemplate`
--

LOCK TABLES `DDMTemplate` WRITE;
/*!40000 ALTER TABLE `DDMTemplate` DISABLE KEYS */;
INSERT INTO `DDMTemplate` VALUES ('bfd5b8e7-47ab-463a-9021-d521118f966e',10419,10194,10154,10158,'','2015-01-06 08:51:41','2015-01-06 08:51:41',10016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> ${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"${viewPageURL}\">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"${viewPageURL}\">${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${addPageURL.setParameter(\"redirect\", currentURL)}\n		${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${addPageURL.setParameter(\"title\", \"\")}\n		${addPageURL.setParameter(\"editTitle\", \"1\")}\n		${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${editPageURL.setParameter(\"redirect\", currentURL)}\n		${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter(\"viewMode\", \"print\")}\n	${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))]) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,10420,''),('be0db16f-88b0-4f8a-8263-9f55f49c7ab4',10421,10194,10154,10158,'','2015-01-06 08:51:42','2015-01-06 08:51:42',10081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter(\"resetCur\", \"true\")}\n					${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"${categoryURL}\">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,10422,''),('e64c47b1-c46f-4258-89e4-8898be66a9c2',10424,10194,10154,10158,'','2015-01-06 08:51:42','2015-01-06 08:51:42',10423,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,10425,''),('e696076a-779c-48c7-9702-be328e08aa3a',10426,10194,10154,10158,'','2015-01-06 08:51:42','2015-01-06 08:51:42',10083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetRenderer.getURLViewInContext(renderRequest, renderResponse, viewURL) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"${viewURL}\"><img alt=\"\" src=\"${assetRenderer.getIconPath(renderRequest)}\" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(locale))}\n\n				<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		${printURL.setParameter(\"viewMode\", \"print\")}\n		${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle]) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,10427,''),('6f099edf-7391-4541-851a-3597c1a7d1be',10428,10194,10154,10158,'','2015-01-06 08:51:42','2015-01-06 08:51:42',10034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"${layoutURL}\">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"${pageLayoutURL}\">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,10429,''),('1fc128de-eebc-4ed1-92c6-307671385eae',10430,10194,10154,10158,'','2015-01-06 08:51:42','2015-01-06 08:51:42',10085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter(\"resetCur\", \"true\")}\n				${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: ${color};\" href=\"${tagURL}\">\n					${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,10431,''),('2064f114-916a-4362-80d1-6b5ab47204ad',10432,10194,10154,10158,'','2015-01-06 08:51:43','2015-01-06 08:51:43',10007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		${viewURL.setParameter(\"redirect\", currentURL)}\n		${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"${viewURL}\">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,10433,'');
/*!40000 ALTER TABLE `DDMTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLContent`
--

DROP TABLE IF EXISTS `DLContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLContent`
--

LOCK TABLES `DLContent` WRITE;
/*!40000 ALTER TABLE `DLContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntry`
--

DROP TABLE IF EXISTS `DLFileEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_772ECDE7` (`fileEntryTypeId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_64F0FE40` (`uuid_`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntry`
--

LOCK TABLES `DLFileEntry` WRITE;
/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
INSERT INTO `DLFileEntry` VALUES ('7ec122d1-8221-485f-813c-7dd0037ff616',11261,10181,10154,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',0,0,10181,0,'/0/','1','png','image/png','welcome_tools','','',0,'1.0',528,2,0,0,0,0,0),('98dcc90f-3e44-47e0-ac38-3b7e3f0557c1',11276,10181,10154,10158,'','2015-01-06 08:53:50','2015-01-06 08:53:50',0,0,10181,0,'/0/','2','png','image/png','welcome_learn','','',0,'1.0',565,2,0,0,0,0,0),('5234206c-26df-44cb-ab1d-f564adf6ffad',11290,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',0,0,10181,0,'/0/','3','png','image/png','welcome_cube','','',0,'1.0',452,2,0,0,0,0,0),('6734023e-3acb-427b-802d-b713655eb009',11303,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',0,0,10181,0,'/0/','4','pdf','application/pdf','helpful_links_for_using_liferay_portal','','',0,'1.0',148065,0,0,0,0,0,0),('30d6902f-82f5-46fd-b35b-d3fa1f55d9ad',11317,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',0,0,10181,0,'/0/','5','png','image/png','welcome_ee','','',0,'1.0',218,2,0,0,0,0,0),('daca27e9-ba74-4fbd-81a9-eb7568c0592f',11332,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',0,0,10181,0,'/0/','6','png','image/png','welcome_community','','',0,'1.0',435,2,0,0,0,0,0);
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryMetadata`
--

DROP TABLE IF EXISTS `DLFileEntryMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryMetadata`
--

LOCK TABLES `DLFileEntryMetadata` WRITE;
/*!40000 ALTER TABLE `DLFileEntryMetadata` DISABLE KEYS */;
INSERT INTO `DLFileEntryMetadata` VALUES ('26be71f7-339d-4ffb-9b04-c33601fb20bc',11278,11286,10316,0,11261,11262),('7c860d81-f43a-4366-8308-feb2c81c138d',11296,11297,10316,0,11276,11277),('40dc1e56-6062-44ea-934d-e6125d380f24',11306,11307,10316,0,11290,11291),('61e00ea8-57d5-4ed5-a8cc-969b7c255c29',11320,11321,10316,0,11303,11304),('54e91682-6dd2-45d6-b218-9e973edc18be',11334,11335,10316,0,11317,11319),('1b719ef6-0843-41b6-b0c0-9379f260db20',11346,11347,10316,0,11332,11333);
/*!40000 ALTER TABLE `DLFileEntryMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryType`
--

DROP TABLE IF EXISTS `DLFileEntryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryType`
--

LOCK TABLES `DLFileEntryType` WRITE;
/*!40000 ALTER TABLE `DLFileEntryType` DISABLE KEYS */;
INSERT INTO `DLFileEntryType` VALUES ('ec435405-9333-4f44-9fc0-d4f3c68cce11',0,0,0,0,'','2015-01-06 08:51:27','2015-01-06 08:51:27','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('8d990db1-f49c-4d83-a36c-cf0e8e5ddf7e',10307,10194,10154,10158,'','2015-01-06 08:51:32','2015-01-06 08:51:32','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('e48113d1-93b0-4326-ab70-a80043619379',10309,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('5a4e7d1f-9e4d-4179-bd5c-38975b8ee284',10311,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('bc419afc-6840-4b16-80fb-e3450e057317',10313,10194,10154,10158,'','2015-01-06 08:51:33','2015-01-06 08:51:33','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');
/*!40000 ALTER TABLE `DLFileEntryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DDMStructures`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DDMStructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DDMStructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DDMStructures`
--

LOCK TABLES `DLFileEntryTypes_DDMStructures` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` DISABLE KEYS */;
INSERT INTO `DLFileEntryTypes_DDMStructures` VALUES (10308,10307),(10305,10309),(10310,10309),(10304,10311),(10312,10311),(10306,10313),(10314,10313);
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DLFolders`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DLFolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DLFolders`
--

LOCK TABLES `DLFileEntryTypes_DLFolders` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileRank`
--

DROP TABLE IF EXISTS `DLFileRank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileRank`
--

LOCK TABLES `DLFileRank` WRITE;
/*!40000 ALTER TABLE `DLFileRank` DISABLE KEYS */;
INSERT INTO `DLFileRank` VALUES (11426,10181,10154,10434,'2015-01-06 08:57:24',11290,1),(11427,10181,10154,10434,'2015-01-06 08:57:25',11276,1),(11428,10181,10154,10434,'2015-01-06 08:57:25',11261,1),(11429,10181,10154,10434,'2015-01-06 08:57:25',11317,1),(11430,10181,10154,10434,'2015-01-06 08:57:25',11332,1),(11441,10181,10154,10158,'2015-01-07 05:42:43',11290,1),(11442,10181,10154,10158,'2015-01-07 05:42:44',11276,1),(11443,10181,10154,10158,'2015-01-07 05:42:44',11332,1),(11444,10181,10154,10158,'2015-01-07 05:42:44',11261,1),(11445,10181,10154,10158,'2015-01-07 05:42:44',11317,1);
/*!40000 ALTER TABLE `DLFileRank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileShortcut`
--

DROP TABLE IF EXISTS `DLFileShortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_A4BB2E58` (`companyId`),
  KEY `IX_8571953E` (`companyId`,`status`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileShortcut`
--

LOCK TABLES `DLFileShortcut` WRITE;
/*!40000 ALTER TABLE `DLFileShortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileShortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileVersion`
--

DROP TABLE IF EXISTS `DLFileVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileVersion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_F389330E` (`companyId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
INSERT INTO `DLFileVersion` VALUES ('a972cb8a-a3ba-4f0b-baed-9a176da11922',11262,10181,10154,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',10181,0,11261,'/0/','png','image/png','welcome_tools','','','',0,'1.0',528,'',0,10158,'','2015-01-06 08:53:48'),('49015ff2-7a29-454b-a669-3237caae27ff',11277,10181,10154,10158,'','2015-01-06 08:53:50','2015-01-06 08:53:50',10181,0,11276,'/0/','png','image/png','welcome_learn','','','',0,'1.0',565,'',0,10158,'','2015-01-06 08:53:51'),('37fd30af-e90e-4cc0-9073-4727e3ec009b',11291,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10181,0,11290,'/0/','png','image/png','welcome_cube','','','',0,'1.0',452,'',0,10158,'','2015-01-06 08:53:52'),('e4301eb2-e5db-423d-b2cf-3c73e82196c7',11304,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',10181,0,11303,'/0/','pdf','application/pdf','helpful_links_for_using_liferay_portal','','','',0,'1.0',148065,'',0,10158,'','2015-01-06 08:53:53'),('a35fee29-bd12-49af-9d19-75bb6bfe9e1c',11319,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',10181,0,11317,'/0/','png','image/png','welcome_ee','','','',0,'1.0',218,'',0,10158,'','2015-01-06 08:53:57'),('d84c737c-60c7-4bf4-968c-fe975525dedb',11333,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',10181,0,11332,'/0/','png','image/png','welcome_community','','','',0,'1.0',435,'',0,10158,'','2015-01-06 08:53:58');
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFolder`
--

DROP TABLE IF EXISTS `DLFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFolder`
--

LOCK TABLES `DLFolder` WRITE;
/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLSyncEvent`
--

DROP TABLE IF EXISTS `DLSyncEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLSyncEvent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`),
  UNIQUE KEY `IX_57D82B06` (`typePK`),
  KEY `IX_3D8E1607` (`modifiedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLSyncEvent`
--

LOCK TABLES `DLSyncEvent` WRITE;
/*!40000 ALTER TABLE `DLSyncEvent` DISABLE KEYS */;
INSERT INTO `DLSyncEvent` VALUES (11268,1420534428751,'add','file',11261),(11284,1420534431161,'add','file',11276),(11301,1420534432102,'add','file',11290),(11315,1420534433222,'add','file',11303),(11329,1420534437857,'add','file',11317),(11343,1420534438445,'add','file',11332);
/*!40000 ALTER TABLE `DLSyncEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailAddress`
--

DROP TABLE IF EXISTS `EmailAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailAddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`),
  KEY `IX_D24F3956` (`uuid_`),
  KEY `IX_F74AB912` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailAddress`
--

LOCK TABLES `EmailAddress` WRITE;
/*!40000 ALTER TABLE `EmailAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoColumn`
--

DROP TABLE IF EXISTS `ExpandoColumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoColumn`
--

LOCK TABLES `ExpandoColumn` WRITE;
/*!40000 ALTER TABLE `ExpandoColumn` DISABLE KEYS */;
INSERT INTO `ExpandoColumn` VALUES (11235,10154,11234,'clientId',15,'','');
/*!40000 ALTER TABLE `ExpandoColumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoRow`
--

DROP TABLE IF EXISTS `ExpandoRow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_49EB3118` (`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoRow`
--

LOCK TABLES `ExpandoRow` WRITE;
/*!40000 ALTER TABLE `ExpandoRow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoRow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoTable`
--

DROP TABLE IF EXISTS `ExpandoTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoTable`
--

LOCK TABLES `ExpandoTable` WRITE;
/*!40000 ALTER TABLE `ExpandoTable` DISABLE KEYS */;
INSERT INTO `ExpandoTable` VALUES (11373,10154,10002,'OPEN_SOCIAL_DATA_'),(11234,10154,10005,'MP'),(11374,10154,10005,'OPEN_SOCIAL_DATA_'),(11438,10154,10088,'CUSTOM_FIELDS');
/*!40000 ALTER TABLE `ExpandoTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoValue`
--

DROP TABLE IF EXISTS `ExpandoValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoValue`
--

LOCK TABLES `ExpandoValue` WRITE;
/*!40000 ALTER TABLE `ExpandoValue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_`
--

DROP TABLE IF EXISTS `Group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_B584B5CC` (`companyId`,`classNameId`),
  KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`),
  KEY `IX_5D75499E` (`companyId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_63A2AABD` (`companyId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`),
  KEY `IX_F981514E` (`uuid_`),
  KEY `IX_26CC761A` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_`
--

LOCK TABLES `Group_` WRITE;
/*!40000 ALTER TABLE `Group_` DISABLE KEYS */;
INSERT INTO `Group_` VALUES ('e09e2af8-2e4b-4068-a16b-8a9de7d2d91e',10172,10154,10158,10001,10172,0,0,'/10172/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('7d20591f-8230-4b5a-b7c1-eb166255cf23',10181,10154,10158,10001,10181,0,0,'/10181/','Guest','',1,'',1,0,'/guest',1,0,1),('95efcae1-a1a1-49fc-821c-ce307cae630d',10191,10154,10158,10190,10158,0,0,'/10191/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('49c490e2-c624-4944-936c-0e390704d114',10194,10154,10158,10025,10154,0,0,'/10194/','10154','',0,'',1,0,'/global',1,0,1),('3f673835-3e66-49a9-9e75-968a3dc3208c',10202,10154,10198,10005,10198,0,0,'/10202/','10198','',0,'',1,0,'/test',0,0,1),('a9246d67-5d77-48ce-bc3f-d5e77f492ab9',10318,10154,10158,10032,10317,0,0,'/10318/','10317','',0,'',1,0,'/template-10317',0,0,1),('85a97e07-eafd-4899-ad03-dc934ac3e392',10330,10154,10158,10032,10329,0,0,'/10330/','10329','',0,'',1,0,'/template-10329',0,0,1),('ae9705ea-b76a-47f7-a1dc-8a5d7f46b7b8',10340,10154,10158,10032,10339,0,0,'/10340/','10339','',0,'',1,0,'/template-10339',0,0,1),('6855743b-e39b-4ed2-ad57-285b53d17e7f',10351,10154,10158,10036,10350,0,0,'/10351/','10350','',0,'',1,0,'/template-10350',0,0,1),('d1ffc590-130e-47da-aa9f-b690a0fa6d21',10377,10154,10158,10036,10376,0,0,'/10377/','10376','',0,'',1,0,'/template-10376',0,0,1),('34934134-7dd0-4e3c-b3a6-3399fb07604b',10437,10154,10434,10005,10434,0,0,'/10437/','10434','',0,'',1,0,'/hghafoori',0,0,1),('371503cd-5776-4b0c-8d93-8666ba09ca5e',10442,10154,10158,10003,10441,0,0,'/10442/','Liferay, Inc. LFR_ORGANIZATION','',3,'',0,0,'/liferay',1,0,1),('2705d6e2-791f-4934-823f-4f8a8d81bd58',10458,10154,10158,10003,10457,10442,0,'/10442/10458/','Liferay Chicago LFR_ORGANIZATION','',3,'',0,0,'/chicago',1,0,1),('9977dce0-a091-4ce0-bab2-b1cb78376f70',10464,10154,10461,10005,10461,0,0,'/10464/','10461','',0,'',1,0,'/ord1',0,0,1),('a88eca3d-33fb-41e5-a624-4d4dea8fd1bd',10471,10154,10468,10005,10468,0,0,'/10471/','10468','',0,'',1,0,'/ord2',0,0,1),('8bd55f2a-256b-4554-ad33-3bc71a034a22',10478,10154,10475,10005,10475,0,0,'/10478/','10475','',0,'',1,0,'/ord3',0,0,1),('4c819dbe-34cf-4672-8660-d39811a2ffaf',10485,10154,10482,10005,10482,0,0,'/10485/','10482','',0,'',1,0,'/ord4',0,0,1),('5c350aad-ed6f-425f-ab5d-872b92876818',10492,10154,10489,10005,10489,0,0,'/10492/','10489','',0,'',1,0,'/ord5',0,0,1),('fb875148-202d-4261-a88a-6260b58a3056',10499,10154,10496,10005,10496,0,0,'/10499/','10496','',0,'',1,0,'/ord6',0,0,1),('6751e26d-b15f-4434-a00a-6e1bf80517fa',10506,10154,10503,10005,10503,0,0,'/10506/','10503','',0,'',1,0,'/ord7',0,0,1),('662f9170-2018-4468-8268-47367de65ec8',10513,10154,10510,10005,10510,0,0,'/10513/','10510','',0,'',1,0,'/ord8',0,0,1),('282271d3-615d-402e-b31f-a6f2c127d02b',10520,10154,10517,10005,10517,0,0,'/10520/','10517','',0,'',1,0,'/ord9',0,0,1),('39785c5e-840c-4e44-b3f6-c527db98e3e6',10527,10154,10524,10005,10524,0,0,'/10527/','10524','',0,'',1,0,'/ord10',0,0,1),('b9631d2a-fae0-4c18-acaa-90e97821a6de',10532,10154,10158,10003,10531,10442,0,'/10442/10532/','Liferay Consulting LFR_ORGANIZATION','',3,'',0,0,'/consulting',1,0,1),('d7328e0c-f398-44c1-9971-d853b832c8b3',10536,10154,10158,10003,10535,10442,0,'/10442/10536/','Liferay Dalian LFR_ORGANIZATION','',3,'',0,0,'/dalian',1,0,1),('67b498fd-195d-4bdf-b3fe-3b252b1b0cdd',10542,10154,10539,10005,10539,0,0,'/10542/','10539','',0,'',1,0,'/dlc1',0,0,1),('2bd153e6-c8c6-41e5-adcb-89ea82065d81',10549,10154,10546,10005,10546,0,0,'/10549/','10546','',0,'',1,0,'/dlc2',0,0,1),('b4a999ed-36e8-42cc-817d-fe439f689ec8',10556,10154,10553,10005,10553,0,0,'/10556/','10553','',0,'',1,0,'/dlc3',0,0,1),('9cad8766-fb8d-4a90-bd32-6383b4164bd5',10563,10154,10560,10005,10560,0,0,'/10563/','10560','',0,'',1,0,'/dlc4',0,0,1),('cced4076-a0a7-4d9b-bf05-92b3ec80d6d3',10570,10154,10567,10005,10567,0,0,'/10570/','10567','',0,'',1,0,'/dlc5',0,0,1),('2d8ab944-c6ee-439c-9374-ffa634a2cb0c',10577,10154,10574,10005,10574,0,0,'/10577/','10574','',0,'',1,0,'/dlc6',0,0,1),('b3e58470-97d5-453e-8186-136f29b5fa54',10584,10154,10581,10005,10581,0,0,'/10584/','10581','',0,'',1,0,'/dlc7',0,0,1),('868281b8-2ac4-4dae-9085-38ec17419c7f',10591,10154,10588,10005,10588,0,0,'/10591/','10588','',0,'',1,0,'/dlc8',0,0,1),('4e2c1a34-4328-426e-9115-76c70506d48c',10598,10154,10595,10005,10595,0,0,'/10598/','10595','',0,'',1,0,'/dlc9',0,0,1),('32b6a24b-b62d-428f-8b29-e16f16fafd44',10605,10154,10602,10005,10602,0,0,'/10605/','10602','',0,'',1,0,'/dlc10',0,0,1),('ab886d92-1bba-4e7d-a177-b258ff403356',10610,10154,10158,10003,10609,10442,0,'/10442/10610/','Liferay Engineering LFR_ORGANIZATION','',3,'',0,0,'/engineering',1,0,1),('7abc3dd6-6d64-49b8-a083-85aa64560508',10614,10154,10158,10003,10613,10442,0,'/10442/10614/','Liferay Frankfurt LFR_ORGANIZATION','',3,'',0,0,'/frankfurt',1,0,1),('4b69c397-efaa-428a-977b-d068f24ae42c',10620,10154,10617,10005,10617,0,0,'/10620/','10617','',0,'',1,0,'/fra1',0,0,1),('94bdf4ed-ee20-4543-a2eb-f6983fd0d55b',10627,10154,10624,10005,10624,0,0,'/10627/','10624','',0,'',1,0,'/fra2',0,0,1),('4368eb89-a372-4fcb-84bc-cd22f6dda4b8',10634,10154,10631,10005,10631,0,0,'/10634/','10631','',0,'',1,0,'/fra3',0,0,1),('b69bd036-241a-45d5-8a07-fe93ba7366d3',10641,10154,10638,10005,10638,0,0,'/10641/','10638','',0,'',1,0,'/fra4',0,0,1),('3353d853-5138-4a86-a55b-40a3c087b36b',10648,10154,10645,10005,10645,0,0,'/10648/','10645','',0,'',1,0,'/fra5',0,0,1),('79f99f93-2abc-47bc-ab28-35c8310b6251',10655,10154,10652,10005,10652,0,0,'/10655/','10652','',0,'',1,0,'/fra6',0,0,1),('9265ac35-1e08-4fa4-96db-ae043005a595',10662,10154,10659,10005,10659,0,0,'/10662/','10659','',0,'',1,0,'/fra7',0,0,1),('7119dd89-8bc4-4937-a2ff-e2c24cc8f981',10669,10154,10666,10005,10666,0,0,'/10669/','10666','',0,'',1,0,'/fra8',0,0,1),('10626f9e-804b-45c4-856b-e3b53551af54',10676,10154,10673,10005,10673,0,0,'/10676/','10673','',0,'',1,0,'/fra9',0,0,1),('515f952f-36d7-4427-8203-2b94e3a0499c',10683,10154,10680,10005,10680,0,0,'/10683/','10680','',0,'',1,0,'/fra10',0,0,1),('3676ef90-5ce8-4ae1-9ede-a65cf8f54823',10688,10154,10158,10003,10687,10442,0,'/10442/10688/','Liferay Hong Kong LFR_ORGANIZATION','',3,'',0,0,'/hong-kong',1,0,1),('04c56ca2-d758-4340-8106-f260a506d7c6',10694,10154,10691,10005,10691,0,0,'/10694/','10691','',0,'',1,0,'/hkg1',0,0,1),('fe9c7610-4d93-4a39-aed1-8d90f21e636c',10701,10154,10698,10005,10698,0,0,'/10701/','10698','',0,'',1,0,'/hkg2',0,0,1),('6738aaf6-9a40-4e7e-94dd-a4ba0d1b95a6',10708,10154,10705,10005,10705,0,0,'/10708/','10705','',0,'',1,0,'/hkg3',0,0,1),('c6e0abc1-a71b-4b6a-ad7d-1e23dac7ce92',10715,10154,10712,10005,10712,0,0,'/10715/','10712','',0,'',1,0,'/hkg4',0,0,1),('05e02ad0-fb8a-4857-a568-8a0ad6c86a32',10722,10154,10719,10005,10719,0,0,'/10722/','10719','',0,'',1,0,'/hkg5',0,0,1),('becb49c4-5e55-4019-9da2-2388316b50c5',10729,10154,10726,10005,10726,0,0,'/10729/','10726','',0,'',1,0,'/hkg6',0,0,1),('2597e2d8-3fa3-4511-a2c0-156027be574c',10736,10154,10733,10005,10733,0,0,'/10736/','10733','',0,'',1,0,'/hkg7',0,0,1),('15da0e88-1501-43b7-8ca8-f845849789a9',10743,10154,10740,10005,10740,0,0,'/10743/','10740','',0,'',1,0,'/hkg8',0,0,1),('70ae4d95-d166-4d9d-b788-38e3d3fc504e',10750,10154,10747,10005,10747,0,0,'/10750/','10747','',0,'',1,0,'/hkg9',0,0,1),('28fa6fd3-91c1-43af-aa51-3aff70d0ef48',10757,10154,10754,10005,10754,0,0,'/10757/','10754','',0,'',1,0,'/hkg10',0,0,1),('7a17b55d-3d29-47da-94f1-48925ee47814',10762,10154,10158,10003,10761,10442,0,'/10442/10762/','Liferay Kuala Lumpur LFR_ORGANIZATION','',3,'',0,0,'/kuala-lumpur',1,0,1),('40f12655-e113-4baf-8602-e84a61a02dce',10768,10154,10765,10005,10765,0,0,'/10768/','10765','',0,'',1,0,'/kul1',0,0,1),('1648fd6c-d477-4ad4-90fd-02650b36dad1',10775,10154,10772,10005,10772,0,0,'/10775/','10772','',0,'',1,0,'/kul2',0,0,1),('2bee34d0-33e0-4210-abcc-80aea3e31121',10782,10154,10779,10005,10779,0,0,'/10782/','10779','',0,'',1,0,'/kul3',0,0,1),('58a5f4c9-78c7-49c9-91d6-14a0baf412c8',10789,10154,10786,10005,10786,0,0,'/10789/','10786','',0,'',1,0,'/kul4',0,0,1),('31fb0893-7159-4eb1-9e7c-7393f4c790c1',10796,10154,10793,10005,10793,0,0,'/10796/','10793','',0,'',1,0,'/kul5',0,0,1),('1cc934b5-221f-4ef6-875b-372d58e282f7',10803,10154,10800,10005,10800,0,0,'/10803/','10800','',0,'',1,0,'/kul6',0,0,1),('6910a999-b0c4-4f33-9fad-0050549867d4',10810,10154,10807,10005,10807,0,0,'/10810/','10807','',0,'',1,0,'/kul7',0,0,1),('73d8e93c-f6d5-4a8e-ae76-838777724e1e',10817,10154,10814,10005,10814,0,0,'/10817/','10814','',0,'',1,0,'/kul8',0,0,1),('5f8fbdf1-128e-46b3-83e2-3a5de1b2604d',10824,10154,10821,10005,10821,0,0,'/10824/','10821','',0,'',1,0,'/kul9',0,0,1),('5a3d37a9-123a-4481-b8a7-34c4f07c7109',10831,10154,10828,10005,10828,0,0,'/10831/','10828','',0,'',1,0,'/kul10',0,0,1),('ac53825d-c395-43d1-b7ea-337df944b959',10836,10154,10158,10003,10835,10442,0,'/10442/10836/','Liferay Los Angeles LFR_ORGANIZATION','',3,'',0,0,'/los-angeles',1,0,1),('0f8e0423-6ba5-4648-8e94-ebc5b0bbda92',10842,10154,10839,10005,10839,0,0,'/10842/','10839','',0,'',1,0,'/lax1',0,0,1),('5148b907-c325-4b64-86e7-a4e11e80afc2',10849,10154,10846,10005,10846,0,0,'/10849/','10846','',0,'',1,0,'/lax2',0,0,1),('056ddf3c-238f-4064-bf21-d360bc0c642b',10856,10154,10853,10005,10853,0,0,'/10856/','10853','',0,'',1,0,'/lax3',0,0,1),('317caabc-9a62-40ec-9785-6d14cdc96a07',10863,10154,10860,10005,10860,0,0,'/10863/','10860','',0,'',1,0,'/lax4',0,0,1),('485ceb14-0afa-472e-b0d4-67a14a195017',10870,10154,10867,10005,10867,0,0,'/10870/','10867','',0,'',1,0,'/lax5',0,0,1),('b84a3ccb-5030-43ac-9a4b-4fabb10d9b5b',10877,10154,10874,10005,10874,0,0,'/10877/','10874','',0,'',1,0,'/lax6',0,0,1),('1b394184-da1a-42c8-89e7-93a9d7e24e17',10884,10154,10881,10005,10881,0,0,'/10884/','10881','',0,'',1,0,'/lax7',0,0,1),('b8f3add1-1751-42eb-866a-a87ba7e36a0a',10891,10154,10888,10005,10888,0,0,'/10891/','10888','',0,'',1,0,'/lax8',0,0,1),('e724f09d-8c74-427b-b09f-4f21ff9148ab',10898,10154,10895,10005,10895,0,0,'/10898/','10895','',0,'',1,0,'/lax9',0,0,1),('805ffe02-b40d-467b-afb1-8f4c4b5fc93b',10905,10154,10902,10005,10902,0,0,'/10905/','10902','',0,'',1,0,'/lax10',0,0,1),('f8b149b1-ad92-479a-b7fe-5ff77a7d2fc3',10910,10154,10158,10003,10909,10442,0,'/10442/10910/','Liferay Madrid LFR_ORGANIZATION','',3,'',0,0,'/madrid',1,0,1),('fdb44e9a-7990-47fb-bfd6-d7701dd1e810',10916,10154,10913,10005,10913,0,0,'/10916/','10913','',0,'',1,0,'/mad1',0,0,1),('c89da1d2-4012-47da-b957-61dadb849504',10923,10154,10920,10005,10920,0,0,'/10923/','10920','',0,'',1,0,'/mad2',0,0,1),('ef9bdd80-6d1c-4f28-b893-63ba3a950feb',10930,10154,10927,10005,10927,0,0,'/10930/','10927','',0,'',1,0,'/mad3',0,0,1),('b15a39cc-a666-4dbb-8796-84ef5a02aa26',10937,10154,10934,10005,10934,0,0,'/10937/','10934','',0,'',1,0,'/mad4',0,0,1),('43c5706c-b652-48e2-b782-6c5e0edb4560',10944,10154,10941,10005,10941,0,0,'/10944/','10941','',0,'',1,0,'/mad5',0,0,1),('8d836f08-9301-4091-9326-86e7bd5df1bc',10951,10154,10948,10005,10948,0,0,'/10951/','10948','',0,'',1,0,'/mad6',0,0,1),('f5128586-162e-47e9-a4f9-b2522c3b9440',10958,10154,10955,10005,10955,0,0,'/10958/','10955','',0,'',1,0,'/mad7',0,0,1),('ec48fef1-256c-490f-b132-ba1688aee1f5',10965,10154,10962,10005,10962,0,0,'/10965/','10962','',0,'',1,0,'/mad8',0,0,1),('4327c1d0-6a48-42d5-8948-46735e3fac82',10972,10154,10969,10005,10969,0,0,'/10972/','10969','',0,'',1,0,'/mad9',0,0,1),('92b8f833-a243-49d0-832a-6fdb58580a8f',10979,10154,10976,10005,10976,0,0,'/10979/','10976','',0,'',1,0,'/mad10',0,0,1),('5e67ba51-0a15-4dd8-9b2e-b8a340dbf2e2',10984,10154,10158,10003,10983,10442,0,'/10442/10984/','Liferay Marketing LFR_ORGANIZATION','',3,'',0,0,'/marketing',1,0,1),('97a31bbf-8afa-4f34-9a27-6b451e1560a6',10988,10154,10158,10003,10987,10442,0,'/10442/10988/','Liferay New York LFR_ORGANIZATION','',3,'',0,0,'/new-york',1,0,1),('826eeb07-3f10-4000-b52d-9bce656079b4',10994,10154,10991,10005,10991,0,0,'/10994/','10991','',0,'',1,0,'/nyc1',0,0,1),('caa06153-9019-4e3c-8318-e3519aadb5e5',11001,10154,10998,10005,10998,0,0,'/11001/','10998','',0,'',1,0,'/nyc2',0,0,1),('62a5a563-f220-4d77-b821-59b7477f2a68',11008,10154,11005,10005,11005,0,0,'/11008/','11005','',0,'',1,0,'/nyc3',0,0,1),('b14028b1-84a1-4cff-9216-7435229f3d34',11015,10154,11012,10005,11012,0,0,'/11015/','11012','',0,'',1,0,'/nyc4',0,0,1),('e27470b5-0222-4b05-8467-2d92c7fad5aa',11022,10154,11019,10005,11019,0,0,'/11022/','11019','',0,'',1,0,'/nyc5',0,0,1),('31534e4e-4ecd-4484-9a7e-8b7a483f85cf',11029,10154,11026,10005,11026,0,0,'/11029/','11026','',0,'',1,0,'/nyc6',0,0,1),('7c88cea8-1ac5-4f7b-a3af-046b00c18383',11036,10154,11033,10005,11033,0,0,'/11036/','11033','',0,'',1,0,'/nyc7',0,0,1),('b476b874-9fc6-403f-95a9-0545d1c07860',11043,10154,11040,10005,11040,0,0,'/11043/','11040','',0,'',1,0,'/nyc8',0,0,1),('94928bd9-152f-4b35-83f7-cecf6af02108',11050,10154,11047,10005,11047,0,0,'/11050/','11047','',0,'',1,0,'/nyc9',0,0,1),('74cee825-ed27-4954-98f8-a6d7de5d3cfe',11057,10154,11054,10005,11054,0,0,'/11057/','11054','',0,'',1,0,'/nyc10',0,0,1),('e4c0a0c2-9fe5-4c50-8d0c-a6ce82fd9eaa',11062,10154,10158,10003,11061,10442,0,'/10442/11062/','Liferay Saint Paulo LFR_ORGANIZATION','',3,'',0,0,'/saint-paulo',1,0,1),('2e3f52ae-b9d6-4592-b9ce-616b93b992f3',11068,10154,11065,10005,11065,0,0,'/11068/','11065','',0,'',1,0,'/gru1',0,0,1),('6ed268b6-95f1-4309-bf5c-1a004a260b70',11075,10154,11072,10005,11072,0,0,'/11075/','11072','',0,'',1,0,'/gru2',0,0,1),('4eae91bf-7efb-4942-80dc-0f126a43ae4f',11082,10154,11079,10005,11079,0,0,'/11082/','11079','',0,'',1,0,'/gru3',0,0,1),('fa720c1d-c233-452f-a7a9-9614595e6053',11089,10154,11086,10005,11086,0,0,'/11089/','11086','',0,'',1,0,'/gru4',0,0,1),('ed751eb3-a9b0-489d-88d8-ca75d23da6ed',11096,10154,11093,10005,11093,0,0,'/11096/','11093','',0,'',1,0,'/gru5',0,0,1),('9081db67-f236-4fd3-b666-18fc131d9373',11103,10154,11100,10005,11100,0,0,'/11103/','11100','',0,'',1,0,'/gru6',0,0,1),('3cecad84-4d2c-4ccc-8f0f-9c045e06f567',11110,10154,11107,10005,11107,0,0,'/11110/','11107','',0,'',1,0,'/gru7',0,0,1),('0010fa64-1e6a-41c6-891b-a09c9a0c7bcd',11117,10154,11114,10005,11114,0,0,'/11117/','11114','',0,'',1,0,'/gru8',0,0,1),('132b5dd4-5999-4a51-b549-a4f2543a3897',11124,10154,11121,10005,11121,0,0,'/11124/','11121','',0,'',1,0,'/gru9',0,0,1),('e687c512-3b8a-4097-8f9b-5eb23b9225b3',11131,10154,11128,10005,11128,0,0,'/11131/','11128','',0,'',1,0,'/gru10',0,0,1),('789294dd-697a-4033-8377-68a1c4830234',11136,10154,10158,10003,11135,10442,0,'/10442/11136/','Liferay Sales LFR_ORGANIZATION','',3,'',0,0,'/sales',1,0,1),('646614bb-52d5-46eb-bdfd-04fd6e616bf5',11140,10154,10158,10003,11139,10442,0,'/10442/11140/','Liferay San Francisco LFR_ORGANIZATION','',3,'',0,0,'/san-francisco',1,0,1),('bf2f7b13-6242-4244-a926-2a1e40618cf8',11146,10154,11143,10005,11143,0,0,'/11146/','11143','',0,'',1,0,'/sfo1',0,0,1),('d97e589a-b35d-4604-842c-4cf74b30768d',11153,10154,11150,10005,11150,0,0,'/11153/','11150','',0,'',1,0,'/sfo2',0,0,1),('9e84a4e8-69cb-4436-8594-ffce0674afda',11160,10154,11157,10005,11157,0,0,'/11160/','11157','',0,'',1,0,'/sfo3',0,0,1),('4ab683d7-ef94-4cb7-a3ff-8c44a0ee260f',11167,10154,11164,10005,11164,0,0,'/11167/','11164','',0,'',1,0,'/sfo4',0,0,1),('2e6058fa-c249-4e22-8e75-bc23fc98e841',11174,10154,11171,10005,11171,0,0,'/11174/','11171','',0,'',1,0,'/sfo5',0,0,1),('321aa982-999d-4d6b-ab79-0078bd6ab909',11181,10154,11178,10005,11178,0,0,'/11181/','11178','',0,'',1,0,'/sfo6',0,0,1),('0d711d2a-f6aa-4881-9540-90824afecaf9',11188,10154,11185,10005,11185,0,0,'/11188/','11185','',0,'',1,0,'/sfo7',0,0,1),('257f4a50-bce9-4358-9d23-0bea948e7e18',11195,10154,11192,10005,11192,0,0,'/11195/','11192','',0,'',1,0,'/sfo8',0,0,1),('e963b848-1ab9-45e7-9a94-fc3ddd7580c1',11202,10154,11199,10005,11199,0,0,'/11202/','11199','',0,'',1,0,'/sfo9',0,0,1),('e3a3f141-47ce-4527-894a-8afb50b26c4c',11209,10154,11206,10005,11206,0,0,'/11209/','11206','',0,'',1,0,'/sfo10',0,0,1),('13879aba-82c9-4e2d-a284-74f698258884',11214,10154,10158,10003,11213,10442,0,'/10442/11214/','Liferay Support LFR_ORGANIZATION','',3,'',0,0,'/support',1,0,1);
/*!40000 ALTER TABLE `Group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Orgs`
--

DROP TABLE IF EXISTS `Groups_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Orgs`
--

LOCK TABLES `Groups_Orgs` WRITE;
/*!40000 ALTER TABLE `Groups_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Roles`
--

DROP TABLE IF EXISTS `Groups_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Roles`
--

LOCK TABLES `Groups_Roles` WRITE;
/*!40000 ALTER TABLE `Groups_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_UserGroups`
--

DROP TABLE IF EXISTS `Groups_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_UserGroups`
--

LOCK TABLES `Groups_UserGroups` WRITE;
/*!40000 ALTER TABLE `Groups_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticle`
--

DROP TABLE IF EXISTS `JournalArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_EA05E9E1` (`displayDate`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_5CD17502` (`groupId`,`folderId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_D19C1B9F` (`groupId`,`userId`),
  KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_89FF8B06` (`resourcePrimKey`,`indexable`),
  KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_71520099` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticle`
--

LOCK TABLES `JournalArticle` WRITE;
/*!40000 ALTER TABLE `JournalArticle` DISABLE KEYS */;
INSERT INTO `JournalArticle` VALUES ('eb70f314-9be4-4137-9b08-8bdc8b0aa885',11350,11351,10181,10154,10158,'','2015-01-06 08:53:59','2015-01-06 08:54:02',0,0,0,'/0/','WELCOME',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','welcome','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<style type=\"text/css\">\n	h2.welcome-title {\n		font-size: 35px;\n		margin: 0 0 40px;\n	}\n\n	h4.subtitle {\n		font-size: 24px;\n		line-height: 30px;\n		margin-bottom: 0;\n	}\n\n	.welcome-content {\n		font-size: 15px;\n		margin: 0;\n	}\n\n	.welcome-content a {\n		text-decoration: none;\n	}\n\n	.welcome-content a:hover {\n		text-decoration: underline;\n	}\n\n	.welcome-content .welcome-text {\n		line-height: 22px;\n		margin: 0;\n	}\n\n	.welcome-content .pdf {\n		display: inline-block;\n		margin-top: 25px;\n	}\n\n	.welcome-content .welcome-icon {\n		float: left;\n		margin: 4px 0;\n		padding-right: 38px;\n	}\n\n	@media all and (max-width: 767px) {\n		h2.welcome-title {\n			font-size: 24px;\n		}\n\n		h4.subtitle {\n			margin: 32px 0 4px;\n		}\n\n		.welcome-content-wrapper {\n			text-align: center;\n		}\n\n		.welcome-content .welcome-icon {\n			float: none;\n			padding: 0;\n		}\n	}\n</style>\n\n<div class=\"welcome-content-wrapper\">\n	<h2 class=\"welcome-title\">\n		Welcome To Liferay Portal\n	</h2>\n\n	<div class=\"welcome-content\">\n		<img class=\"welcome-icon\" src=\"/documents/10181/0/welcome_cube/5234206c-26df-44cb-ab1d-f564adf6ffad?version=1.0&t=1420534431471\" />\n\n		<h4 class=\"subtitle\">\n			Start\n		</h4>\n\n		<p class=\"welcome-text\">\n			Review our <a href=\"http://www.liferay.com/welcome-start?v1.0\" target=\"_blank\">Quick Start Guide</a> for an overview of Liferay\'s features.\n		</p>\n\n		<div class=\"helper-clearfix\">&nbsp;</div>\n	</div>\n\n	<div class=\"welcome-content\">\n		<img class=\"welcome-icon\" src=\"/documents/10181/0/welcome_learn/98dcc90f-3e44-47e0-ac38-3b7e3f0557c1?version=1.0&t=1420534430342\" />\n\n		<h4 class=\"subtitle\">\n			Learn\n		</h4>\n\n		<p class=\"welcome-text\">\n			Read the official <a href=\"http://www.liferay.com/welcome-learn?v1.0\" target=\"_blank\">Liferay User Guide</a> for detailed information about setting up and configuring Liferay.\n		</p>\n\n		<div class=\"helper-clearfix\">&nbsp;</div>\n	</div>\n\n	<div class=\"welcome-content\">\n		<img class=\"welcome-icon\" src=\"/documents/10181/0/welcome_community/daca27e9-ba74-4fbd-81a9-eb7568c0592f?version=1.0&t=1420534438214\" />\n\n		<h4 class=\"subtitle\">\n			Engage\n		</h4>\n\n		<p class=\"welcome-text\">\n			Visit the <a href=\"http://www.liferay.com/welcome-engage?v1.0\" target=\"_blank\">Liferay Community</a> to post questions, find answers, and contribute.\n		</p>\n\n		<div class=\"helper-clearfix\">&nbsp;</div>\n	</div>\n\n	<div class=\"welcome-content\">\n		<img class=\"welcome-icon\" src=\"/documents/10181/0/welcome_tools/7ec122d1-8221-485f-813c-7dd0037ff616?version=1.0&t=1420534428253\" />\n\n		<h4 class=\"subtitle\">\n			Develop\n		</h4>\n\n		<p class=\"welcome-text\">\n			Explore our <a href=\"http://www.liferay.com/welcome-develop?v1.0\" target=\"_blank\">Developer Resources</a> to develop apps and more for Liferay Portal.\n		</p>\n\n		<div class=\"helper-clearfix\">&nbsp;</div>\n	</div>\n\n	<div class=\"welcome-content\">\n		<img class=\"welcome-icon\" src=\"/documents/10181/0/welcome_ee/30d6902f-82f5-46fd-b35b-d3fa1f55d9ad?version=1.0&t=1420534437728\" />\n\n		<h4 class=\"subtitle\">\n			Evaluate\n		</h4>\n\n		<p class=\"welcome-text\">\n			Learn more about partners, support, training and other <a href=\"http://www.liferay.com/welcome-evaluate?v1.0\" target=\"_blank\">enterprise level options</a> available for Liferay.\n		</p>\n\n		<a class=\"pdf\" href=\"/documents/10181/0/helpful_links_for_using_liferay_portal/6734023e-3acb-427b-802d-b713655eb009?version=1.0\">Download this page as a PDF</a>\n	</div>\n</div>]]></static-content>\n</root>','general','','','','2010-02-01 00:00:00',NULL,NULL,1,0,11352,'',0,10158,'','2015-01-06 08:54:02');
/*!40000 ALTER TABLE `JournalArticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleImage`
--

DROP TABLE IF EXISTS `JournalArticleImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleImage`
--

LOCK TABLES `JournalArticleImage` WRITE;
/*!40000 ALTER TABLE `JournalArticleImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleResource`
--

DROP TABLE IF EXISTS `JournalArticleResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleResource`
--

LOCK TABLES `JournalArticleResource` WRITE;
/*!40000 ALTER TABLE `JournalArticleResource` DISABLE KEYS */;
INSERT INTO `JournalArticleResource` VALUES ('65543358-9b11-4a03-9215-bdf0714599bd',11351,10181,'WELCOME');
/*!40000 ALTER TABLE `JournalArticleResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalContentSearch`
--

DROP TABLE IF EXISTS `JournalContentSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalContentSearch`
--

LOCK TABLES `JournalContentSearch` WRITE;
/*!40000 ALTER TABLE `JournalContentSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalContentSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFeed`
--

DROP TABLE IF EXISTS `JournalFeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFeed`
--

LOCK TABLES `JournalFeed` WRITE;
/*!40000 ALTER TABLE `JournalFeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFolder`
--

DROP TABLE IF EXISTS `JournalFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_E6E2725D` (`companyId`),
  KEY `IX_C36B0443` (`companyId`,`status`),
  KEY `IX_742DEC1F` (`groupId`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_190483C6` (`groupId`,`parentFolderId`),
  KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_63BDFA69` (`uuid_`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFolder`
--

LOCK TABLES `JournalFolder` WRITE;
/*!40000 ALTER TABLE `JournalFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoAction`
--

DROP TABLE IF EXISTS `KaleoAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoAction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`),
  KEY `IX_50E9112C` (`companyId`),
  KEY `IX_170EFD7A` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_4B2545E8` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_F95A622` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoAction`
--

LOCK TABLES `KaleoAction` WRITE;
/*!40000 ALTER TABLE `KaleoAction` DISABLE KEYS */;
INSERT INTO `KaleoAction` VALUES (11395,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14','com.liferay.portal.workflow.kaleo.model.KaleoNode',11394,11393,'update','reject','','onAssignment','\n					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					\n				','javascript','',0),(11400,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14','com.liferay.portal.workflow.kaleo.model.KaleoNode',11399,11393,'approved','approve','','onEntry','\n					\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','groovy','',0);
/*!40000 ALTER TABLE `KaleoAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoCondition`
--

DROP TABLE IF EXISTS `KaleoCondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoCondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoConditionId`),
  KEY `IX_FEE46067` (`companyId`),
  KEY `IX_DC978A5D` (`kaleoDefinitionId`),
  KEY `IX_86CBD4C` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoCondition`
--

LOCK TABLES `KaleoCondition` WRITE;
/*!40000 ALTER TABLE `KaleoCondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoCondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoDefinition`
--

DROP TABLE IF EXISTS `KaleoDefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoDefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`),
  KEY `IX_40B9112F` (`companyId`),
  KEY `IX_408542BA` (`companyId`,`active_`),
  KEY `IX_76C781AE` (`companyId`,`name`),
  KEY `IX_4C23F11B` (`companyId`,`name`,`active_`),
  KEY `IX_EC14F81A` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoDefinition`
--

LOCK TABLES `KaleoDefinition` WRITE;
/*!40000 ALTER TABLE `KaleoDefinition` DISABLE KEYS */;
INSERT INTO `KaleoDefinition` VALUES (11393,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:15','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.2.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.2.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_2_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[36,51]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}]]> </metadata>\n		<actions>\n			<action>\n				<name>reject</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onAssignment</execution-type>\n			</action>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by ${userName}, please modify and resubmit.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[168,36]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>${userName} sent you a ${entryType} for review in the workflow.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[\n				{\"xy\":[380,51]}\n			]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>groovy</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,11401);
/*!40000 ALTER TABLE `KaleoDefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoInstance`
--

DROP TABLE IF EXISTS `KaleoInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoInstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`),
  KEY `IX_5F2FCD2D` (`companyId`),
  KEY `IX_BF5839F8` (`companyId`,`kaleoDefinitionName`,`kaleoDefinitionVersion`,`completionDate`),
  KEY `IX_4DA4D123` (`kaleoDefinitionId`),
  KEY `IX_ACF16238` (`kaleoDefinitionId`,`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoInstance`
--

LOCK TABLES `KaleoInstance` WRITE;
/*!40000 ALTER TABLE `KaleoInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoInstanceToken`
--

DROP TABLE IF EXISTS `KaleoInstanceToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoInstanceToken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`),
  KEY `IX_153721BE` (`companyId`),
  KEY `IX_4A86923B` (`companyId`,`parentKaleoInstanceTokenId`),
  KEY `IX_360D34D9` (`companyId`,`parentKaleoInstanceTokenId`,`completionDate`),
  KEY `IX_7BDB04B4` (`kaleoDefinitionId`),
  KEY `IX_F42AAFF6` (`kaleoInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoInstanceToken`
--

LOCK TABLES `KaleoInstanceToken` WRITE;
/*!40000 ALTER TABLE `KaleoInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoInstanceToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoLog`
--

DROP TABLE IF EXISTS `KaleoLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoLog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`),
  KEY `IX_73B5F4DE` (`companyId`),
  KEY `IX_E66A153A` (`kaleoClassName`,`kaleoClassPK`,`kaleoInstanceTokenId`,`type_`),
  KEY `IX_6C64B7D4` (`kaleoDefinitionId`),
  KEY `IX_5BC6AB16` (`kaleoInstanceId`),
  KEY `IX_470B9FF8` (`kaleoInstanceTokenId`,`type_`),
  KEY `IX_B0CDCA38` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoLog`
--

LOCK TABLES `KaleoLog` WRITE;
/*!40000 ALTER TABLE `KaleoLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoNode`
--

DROP TABLE IF EXISTS `KaleoNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoNode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`),
  KEY `IX_C4E9ACE0` (`companyId`),
  KEY `IX_F28C443E` (`companyId`,`kaleoDefinitionId`),
  KEY `IX_32E94DD6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoNode`
--

LOCK TABLES `KaleoNode` WRITE;
/*!40000 ALTER TABLE `KaleoNode` DISABLE KEYS */;
INSERT INTO `KaleoNode` VALUES (11394,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14',11393,'update','\n			{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}\n		','','TASK',0,0),(11399,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14',11393,'approved','\n			\n				{\"xy\":[380,51]}\n			\n		','','STATE',0,1),(11401,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14',11393,'created','\n			{\"xy\":[36,51]}\n		','','STATE',1,0),(11402,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14',11393,'review','\n			{\"xy\":[168,36]}\n		','','TASK',0,0);
/*!40000 ALTER TABLE `KaleoNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoNotification`
--

DROP TABLE IF EXISTS `KaleoNotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoNotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`),
  KEY `IX_38829497` (`companyId`),
  KEY `IX_902D342F` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_F3362E93` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_4B968E8D` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoNotification`
--

LOCK TABLES `KaleoNotification` WRITE;
/*!40000 ALTER TABLE `KaleoNotification` DISABLE KEYS */;
INSERT INTO `KaleoNotification` VALUES (11396,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14','com.liferay.portal.workflow.kaleo.model.KaleoNode',11394,11393,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by ${userName}, please modify and resubmit.','freemarker','user-notification,email'),(11403,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14','com.liferay.portal.workflow.kaleo.model.KaleoNode',11402,11393,'review','Review Notification','','onAssignment','${userName} sent you a ${entryType} for review in the workflow.','freemarker','user-notification,email'),(11404,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14','com.liferay.portal.workflow.kaleo.model.KaleoNode',11402,11393,'review','Review Completion Notification','','onExit','\n					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email');
/*!40000 ALTER TABLE `KaleoNotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoNotificationRecipient`
--

DROP TABLE IF EXISTS `KaleoNotificationRecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoNotificationRecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`),
  KEY `IX_2C8C4AF4` (`companyId`),
  KEY `IX_AA6697EA` (`kaleoDefinitionId`),
  KEY `IX_7F4FED02` (`kaleoNotificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoNotificationRecipient`
--

LOCK TABLES `KaleoNotificationRecipient` WRITE;
/*!40000 ALTER TABLE `KaleoNotificationRecipient` DISABLE KEYS */;
INSERT INTO `KaleoNotificationRecipient` VALUES (11405,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14',11393,11404,'com.liferay.portal.model.User',0,0,'');
/*!40000 ALTER TABLE `KaleoNotificationRecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTask`
--

DROP TABLE IF EXISTS `KaleoTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`),
  KEY `IX_E1F8B23D` (`companyId`),
  KEY `IX_3FFA633` (`kaleoDefinitionId`),
  KEY `IX_77B3F1A2` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTask`
--

LOCK TABLES `KaleoTask` WRITE;
/*!40000 ALTER TABLE `KaleoTask` DISABLE KEYS */;
INSERT INTO `KaleoTask` VALUES (11397,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14',11393,11394,'update',''),(11406,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',11393,11402,'review','');
/*!40000 ALTER TABLE `KaleoTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTaskAssignment`
--

DROP TABLE IF EXISTS `KaleoTaskAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskAssignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  `assigneeScriptRequiredContexts` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskAssignment`
--

LOCK TABLES `KaleoTaskAssignment` WRITE;
/*!40000 ALTER TABLE `KaleoTaskAssignment` DISABLE KEYS */;
INSERT INTO `KaleoTaskAssignment` VALUES (11398,0,10154,10158,'','2015-01-06 08:55:14','2015-01-06 08:55:14','com.liferay.portal.workflow.kaleo.model.KaleoTask',11397,11393,0,'com.liferay.portal.model.User',0,'','','',''),(11407,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',10161,'','','',''),(11408,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',11409,'','','',''),(11410,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',11411,'','','',''),(11412,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',11413,'','','',''),(11414,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',10171,'','','',''),(11415,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',10169,'','','',''),(11416,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',10166,'','','',''),(11417,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15','com.liferay.portal.workflow.kaleo.model.KaleoTask',11406,11393,0,'com.liferay.portal.model.Role',10167,'','','','');
/*!40000 ALTER TABLE `KaleoTaskAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTaskAssignmentInstance`
--

DROP TABLE IF EXISTS `KaleoTaskAssignmentInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskAssignmentInstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`),
  KEY `IX_6E3CDA1B` (`companyId`),
  KEY `IX_C851011` (`kaleoDefinitionId`),
  KEY `IX_67A9EE93` (`kaleoInstanceId`),
  KEY `IX_D4C2235B` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskAssignmentInstance`
--

LOCK TABLES `KaleoTaskAssignmentInstance` WRITE;
/*!40000 ALTER TABLE `KaleoTaskAssignmentInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTaskAssignmentInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTaskInstanceToken`
--

DROP TABLE IF EXISTS `KaleoTaskInstanceToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTaskInstanceToken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`),
  KEY `IX_997FE723` (`companyId`),
  KEY `IX_608E9519` (`kaleoDefinitionId`),
  KEY `IX_2CE1159B` (`kaleoInstanceId`),
  KEY `IX_B857A115` (`kaleoInstanceId`,`kaleoTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTaskInstanceToken`
--

LOCK TABLES `KaleoTaskInstanceToken` WRITE;
/*!40000 ALTER TABLE `KaleoTaskInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTaskInstanceToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTimer`
--

DROP TABLE IF EXISTS `KaleoTimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`),
  KEY `IX_4DE6A889` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1A479F32` (`kaleoClassName`,`kaleoClassPK`,`blocking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTimer`
--

LOCK TABLES `KaleoTimer` WRITE;
/*!40000 ALTER TABLE `KaleoTimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTimerInstanceToken`
--

DROP TABLE IF EXISTS `KaleoTimerInstanceToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTimerInstanceToken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`),
  KEY `IX_DB96C55B` (`kaleoInstanceId`),
  KEY `IX_DB279423` (`kaleoInstanceTokenId`,`completed`),
  KEY `IX_9932524C` (`kaleoInstanceTokenId`,`completed`,`blocking`),
  KEY `IX_13A5BA2C` (`kaleoInstanceTokenId`,`kaleoTimerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTimerInstanceToken`
--

LOCK TABLES `KaleoTimerInstanceToken` WRITE;
/*!40000 ALTER TABLE `KaleoTimerInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTimerInstanceToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KaleoTransition`
--

DROP TABLE IF EXISTS `KaleoTransition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KaleoTransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`),
  KEY `IX_41D6C6D` (`companyId`),
  KEY `IX_479F3063` (`kaleoDefinitionId`),
  KEY `IX_A392DFD2` (`kaleoNodeId`),
  KEY `IX_A38E2194` (`kaleoNodeId`,`defaultTransition`),
  KEY `IX_85268A11` (`kaleoNodeId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KaleoTransition`
--

LOCK TABLES `KaleoTransition` WRITE;
/*!40000 ALTER TABLE `KaleoTransition` DISABLE KEYS */;
INSERT INTO `KaleoTransition` VALUES (11418,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',11393,11394,'resubmit','',11394,'update',11402,'review',1),(11419,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',11393,11401,'review','',11401,'created',11402,'review',1),(11420,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',11393,11402,'approve','',11402,'review',11399,'approved',1),(11421,0,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',11393,11402,'reject','',11402,'review',11394,'update',0);
/*!40000 ALTER TABLE `KaleoTransition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layout`
--

DROP TABLE IF EXISTS `Layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`),
  KEY `IX_D0822724` (`uuid_`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layout`
--

LOCK TABLES `Layout` WRITE;
/*!40000 ALTER TABLE `Layout` DISABLE KEYS */;
INSERT INTO `Layout` VALUES ('aceab319-56dd-493a-90dd-8fbdf3fe9b23',10175,10172,10154,10158,'','2015-01-06 08:51:29','2015-01-06 08:51:29',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),('721b5b78-db31-474a-b3fe-063a9b68dfb0',10321,10318,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_HDPeBurgzkQu,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('4967a1d0-0e0e-41b2-a088-f6ab59a00ca7',10333,10330,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_QADgVl6H3JHU\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_QADgVl6H3JHU,\ncolumn-1=141_INSTANCE_hvqt5PdMQOIm,122_INSTANCE_G4S1QeEcKmqs,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('0f9b3ae8-1e54-4c8c-a075-00ed0a892257',10343,10340,10154,10158,'','2015-01-06 08:51:36','2015-01-06 08:51:37',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_YA8FNzsUDMYS,141_INSTANCE_RD9lIyK98VTT,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('4e242a71-899d-4b5d-adbe-7933341c60e6',10362,10351,10154,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:38',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_rnf4z9Qy9bpa,180,101_INSTANCE_Yl0U3EhoxNjf,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),('10768a69-da0a-485f-8667-22661e2f4d8e',10370,10351,10154,10158,'','2015-01-06 08:51:38','2015-01-06 08:51:38',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_LRzdF1RfF9Am,148_INSTANCE_7Rm36Lc9K3s8,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('a88457bd-0c6f-4ea6-b390-3627bc794609',10388,10377,10154,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:40',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_K5p2STUphzgl,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),('8b4d436d-6239-4548-81ef-5ac162d9c13a',10397,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-2=101_INSTANCE_ivHtfPHhk3Tt,\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),('00ef47ad-f8b5-4b8b-9356-915e9c39b27a',10405,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:41',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_1fwBNR3HCs9p,\ncolumn-1=39_INSTANCE_mCI145l59uzA,\n',0,'/news',0,0,'','','','','',2,'',0,''),('4c3dcfe7-7c0a-4b6d-aecc-9aeafcd8aad7',10445,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay, Inc. Extranet</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=19,\ncolumn-1=3,\n',0,'/extranet',0,0,'','','','','',0,'',0,''),('c1070828-dabc-408f-aeff-2f00a0044f27',10451,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:55',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay, Inc. Intranet</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=19,\ncolumn-1=3,\n',0,'/intranet',0,0,'','','','','',0,'',0,''),('ec860aad-de77-4284-a881-bc9870e49d14',11217,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:43','2015-01-06 08:52:44',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('819c82f2-7af0-4357-8a49-f203c8cacab9',11223,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:44','2015-01-06 08:52:45',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,''),('507192d7-0ec4-4c07-a434-686e49e4ba95',11362,10181,10154,10158,'','2015-01-06 08:54:02','2015-01-06 08:54:04',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=56_INSTANCE_nzQEh4uYjuQZ,\ncolumn-1=58,\n',0,'/welcome',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `Layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutBranch`
--

DROP TABLE IF EXISTS `LayoutBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutBranch`
--

LOCK TABLES `LayoutBranch` WRITE;
/*!40000 ALTER TABLE `LayoutBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutFriendlyURL`
--

DROP TABLE IF EXISTS `LayoutFriendlyURL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutFriendlyURL` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`),
  UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`),
  UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`),
  UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`),
  KEY `IX_EAB317C8` (`companyId`),
  KEY `IX_742EF04A` (`groupId`),
  KEY `IX_CA713461` (`groupId`,`privateLayout`,`friendlyURL`),
  KEY `IX_83AE56AB` (`plid`),
  KEY `IX_59051329` (`plid`,`friendlyURL`),
  KEY `IX_9F80D54` (`uuid_`),
  KEY `IX_F4321A54` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutFriendlyURL`
--

LOCK TABLES `LayoutFriendlyURL` WRITE;
/*!40000 ALTER TABLE `LayoutFriendlyURL` DISABLE KEYS */;
INSERT INTO `LayoutFriendlyURL` VALUES ('f1b97e37-ae76-4d99-ada6-2adb80be3d2e',10176,10172,10154,10158,'','2015-01-06 08:51:29','2015-01-06 08:51:29',10175,1,'/manage','en_US'),('95dbc174-7903-4328-aae5-7d5af183e8ec',10322,10318,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10321,1,'/layout','en_US'),('8c1c499f-e859-4359-ba48-5e6fb6c1cd95',10334,10330,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10333,1,'/layout','en_US'),('1e8c70d6-01bc-4891-9b57-5960b3486b96',10344,10340,10154,10158,'','2015-01-06 08:51:36','2015-01-06 08:51:36',10343,1,'/layout','en_US'),('49b0ee6f-995e-4d73-ba53-09ca2f9a201f',10363,10351,10154,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:37',10362,1,'/home','en_US'),('4678301e-48f1-47fc-920d-62cf02a35686',10371,10351,10154,10158,'','2015-01-06 08:51:38','2015-01-06 08:51:38',10370,1,'/wiki','en_US'),('76ee1429-8604-4fea-af6e-1bf1f803c0bb',10389,10377,10154,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:39',10388,1,'/home','en_US'),('2b20f924-2a5e-41bf-95fd-493ca335aab4',10398,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10397,1,'/documents','en_US'),('10b5ff8d-d9c8-4023-9b89-b2e132cd3397',10406,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10405,1,'/news','en_US'),('efc2f9c5-c057-4dab-b962-d4734bf62ce4',10446,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',10445,0,'/extranet','en_US'),('0cf11690-7177-43d8-a4d2-dfbf745188e5',10452,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',10451,1,'/intranet','en_US'),('dec198fe-9ec0-4a3e-a063-165c829109b2',11218,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:43','2015-01-06 08:52:43',11217,1,'/home','en_US'),('6c9d9911-3e1a-4be4-ba0e-c5815d5355fa',11224,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:44','2015-01-06 08:52:44',11223,0,'/home','en_US'),('fe7ac7e9-7869-476f-abdc-3de7b422145c',11363,10181,10154,10158,'','2015-01-06 08:54:02','2015-01-06 08:54:02',11362,0,'/welcome','en_US');
/*!40000 ALTER TABLE `LayoutFriendlyURL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPrototype`
--

LOCK TABLES `LayoutPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` VALUES ('afac14c4-0030-46e3-b815-e5c8ec8e204c',10317,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('fe756197-efd2-4fc3-97ab-3d1deabf0ca2',10329,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('b871c927-3aee-4043-b07f-e6615a5aa1dc',10339,10154,10158,'','2015-01-06 08:51:35','2015-01-06 08:51:35','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `LayoutPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutRevision`
--

DROP TABLE IF EXISTS `LayoutRevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutRevision`
--

LOCK TABLES `LayoutRevision` WRITE;
/*!40000 ALTER TABLE `LayoutRevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutRevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSet`
--

DROP TABLE IF EXISTS `LayoutSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSet`
--

LOCK TABLES `LayoutSet` WRITE;
/*!40000 ALTER TABLE `LayoutSet` DISABLE KEYS */;
INSERT INTO `LayoutSet` VALUES (10173,10172,10154,'2015-01-06 08:51:28','2015-01-06 08:51:29',1,0,0,'classic','01','mobile','01','',1,'','',0),(10174,10172,10154,'2015-01-06 08:51:28','2015-01-06 08:51:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(10182,10181,10154,'2015-01-06 08:51:29','2015-01-06 08:54:02',1,0,0,'welcome_WAR_welcometheme','01','mobile','01','',0,'','',0),(10183,10181,10154,'2015-01-06 08:51:29','2015-01-06 08:54:02',0,0,0,'welcome_WAR_welcometheme','01','mobile','01','',1,'','',0),(10192,10191,10154,'2015-01-06 08:51:29','2015-01-06 08:51:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(10193,10191,10154,'2015-01-06 08:51:29','2015-01-06 08:51:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(10195,10194,10154,'2015-01-06 08:51:30','2015-01-06 08:51:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(10196,10194,10154,'2015-01-06 08:51:30','2015-01-06 08:51:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10203,10202,10154,'2015-01-06 08:51:30','2015-01-06 08:51:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(10204,10202,10154,'2015-01-06 08:51:30','2015-01-06 08:51:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(10319,10318,10154,'2015-01-06 08:51:34','2015-01-06 08:51:34',1,0,0,'classic','01','mobile','01','',1,'','',0),(10320,10318,10154,'2015-01-06 08:51:34','2015-01-06 08:51:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(10331,10330,10154,'2015-01-06 08:51:34','2015-01-06 08:51:34',1,0,0,'classic','01','mobile','01','',1,'','',0),(10332,10330,10154,'2015-01-06 08:51:34','2015-01-06 08:51:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(10341,10340,10154,'2015-01-06 08:51:35','2015-01-06 08:51:36',1,0,0,'classic','01','mobile','01','',1,'','',0),(10342,10340,10154,'2015-01-06 08:51:35','2015-01-06 08:51:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(10352,10351,10154,'2015-01-06 08:51:37','2015-01-06 08:51:38',1,0,0,'classic','01','mobile','01','',2,'','',0),(10353,10351,10154,'2015-01-06 08:51:37','2015-01-06 08:51:37',0,0,0,'classic','01','mobile','01','',0,'','',0),(10378,10377,10154,'2015-01-06 08:51:39','2015-01-06 08:51:41',1,0,0,'classic','01','mobile','01','',3,'','',0),(10379,10377,10154,'2015-01-06 08:51:39','2015-01-06 08:51:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(10438,10437,10154,'2015-01-06 08:51:43','2015-01-06 08:52:43',1,0,0,'classic','01','mobile','01','',1,'','',0),(10439,10437,10154,'2015-01-06 08:51:43','2015-01-06 08:52:44',0,0,0,'classic','01','mobile','01','',1,'','',0),(10443,10442,10154,'2015-01-06 08:51:54','2015-01-06 08:51:55',1,0,0,'classic','01','mobile','01','',1,'','',0),(10444,10442,10154,'2015-01-06 08:51:54','2015-01-06 08:51:54',0,0,0,'classic','01','mobile','01','',1,'','',0),(10459,10458,10154,'2015-01-06 08:51:55','2015-01-06 08:51:55',1,0,0,'classic','01','mobile','01','',0,'','',0),(10460,10458,10154,'2015-01-06 08:51:55','2015-01-06 08:51:55',0,0,0,'classic','01','mobile','01','',0,'','',0),(10465,10464,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',1,0,0,'classic','01','mobile','01','',0,'','',0),(10466,10464,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',0,0,0,'classic','01','mobile','01','',0,'','',0),(10472,10471,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',1,0,0,'classic','01','mobile','01','',0,'','',0),(10473,10471,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',0,0,0,'classic','01','mobile','01','',0,'','',0),(10479,10478,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',1,0,0,'classic','01','mobile','01','',0,'','',0),(10480,10478,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',0,0,0,'classic','01','mobile','01','',0,'','',0),(10486,10485,10154,'2015-01-06 08:51:58','2015-01-06 08:51:58',1,0,0,'classic','01','mobile','01','',0,'','',0),(10487,10485,10154,'2015-01-06 08:51:58','2015-01-06 08:51:58',0,0,0,'classic','01','mobile','01','',0,'','',0),(10493,10492,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',1,0,0,'classic','01','mobile','01','',0,'','',0),(10494,10492,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',0,0,0,'classic','01','mobile','01','',0,'','',0),(10500,10499,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',1,0,0,'classic','01','mobile','01','',0,'','',0),(10501,10499,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',0,0,0,'classic','01','mobile','01','',0,'','',0),(10507,10506,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',1,0,0,'classic','01','mobile','01','',0,'','',0),(10508,10506,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',0,0,0,'classic','01','mobile','01','',0,'','',0),(10514,10513,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',1,0,0,'classic','01','mobile','01','',0,'','',0),(10515,10513,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',0,0,0,'classic','01','mobile','01','',0,'','',0),(10521,10520,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',1,0,0,'classic','01','mobile','01','',0,'','',0),(10522,10520,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',0,0,0,'classic','01','mobile','01','',0,'','',0),(10528,10527,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',1,0,0,'classic','01','mobile','01','',0,'','',0),(10529,10527,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',0,0,0,'classic','01','mobile','01','',0,'','',0),(10533,10532,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',1,0,0,'classic','01','mobile','01','',0,'','',0),(10534,10532,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',0,0,0,'classic','01','mobile','01','',0,'','',0),(10537,10536,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',1,0,0,'classic','01','mobile','01','',0,'','',0),(10538,10536,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',0,0,0,'classic','01','mobile','01','',0,'','',0),(10543,10542,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',1,0,0,'classic','01','mobile','01','',0,'','',0),(10544,10542,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',0,0,0,'classic','01','mobile','01','',0,'','',0),(10550,10549,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',1,0,0,'classic','01','mobile','01','',0,'','',0),(10551,10549,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',0,0,0,'classic','01','mobile','01','',0,'','',0),(10557,10556,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',1,0,0,'classic','01','mobile','01','',0,'','',0),(10558,10556,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',0,0,0,'classic','01','mobile','01','',0,'','',0),(10564,10563,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',1,0,0,'classic','01','mobile','01','',0,'','',0),(10565,10563,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',0,0,0,'classic','01','mobile','01','',0,'','',0),(10571,10570,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',1,0,0,'classic','01','mobile','01','',0,'','',0),(10572,10570,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',0,0,0,'classic','01','mobile','01','',0,'','',0),(10578,10577,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',1,0,0,'classic','01','mobile','01','',0,'','',0),(10579,10577,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',0,0,0,'classic','01','mobile','01','',0,'','',0),(10585,10584,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',1,0,0,'classic','01','mobile','01','',0,'','',0),(10586,10584,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',0,0,0,'classic','01','mobile','01','',0,'','',0),(10592,10591,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',1,0,0,'classic','01','mobile','01','',0,'','',0),(10593,10591,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',0,0,0,'classic','01','mobile','01','',0,'','',0),(10599,10598,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',1,0,0,'classic','01','mobile','01','',0,'','',0),(10600,10598,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',0,0,0,'classic','01','mobile','01','',0,'','',0),(10606,10605,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(10607,10605,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',0,0,0,'classic','01','mobile','01','',0,'','',0),(10611,10610,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(10612,10610,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',0,0,0,'classic','01','mobile','01','',0,'','',0),(10615,10614,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(10616,10614,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',0,0,0,'classic','01','mobile','01','',0,'','',0),(10621,10620,10154,'2015-01-06 08:52:07','2015-01-06 08:52:07',1,0,0,'classic','01','mobile','01','',0,'','',0),(10622,10620,10154,'2015-01-06 08:52:07','2015-01-06 08:52:07',0,0,0,'classic','01','mobile','01','',0,'','',0),(10628,10627,10154,'2015-01-06 08:52:07','2015-01-06 08:52:07',1,0,0,'classic','01','mobile','01','',0,'','',0),(10629,10627,10154,'2015-01-06 08:52:07','2015-01-06 08:52:07',0,0,0,'classic','01','mobile','01','',0,'','',0),(10635,10634,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',1,0,0,'classic','01','mobile','01','',0,'','',0),(10636,10634,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',0,0,0,'classic','01','mobile','01','',0,'','',0),(10642,10641,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',1,0,0,'classic','01','mobile','01','',0,'','',0),(10643,10641,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',0,0,0,'classic','01','mobile','01','',0,'','',0),(10649,10648,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',1,0,0,'classic','01','mobile','01','',0,'','',0),(10650,10648,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',0,0,0,'classic','01','mobile','01','',0,'','',0),(10656,10655,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(10657,10655,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(10663,10662,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(10664,10662,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(10670,10669,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(10671,10669,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(10677,10676,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(10678,10676,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(10684,10683,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(10685,10683,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(10689,10688,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(10690,10688,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(10695,10694,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',1,0,0,'classic','01','mobile','01','',0,'','',0),(10696,10694,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',0,0,0,'classic','01','mobile','01','',0,'','',0),(10702,10701,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',1,0,0,'classic','01','mobile','01','',0,'','',0),(10703,10701,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',0,0,0,'classic','01','mobile','01','',0,'','',0),(10709,10708,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',1,0,0,'classic','01','mobile','01','',0,'','',0),(10710,10708,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',0,0,0,'classic','01','mobile','01','',0,'','',0),(10716,10715,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(10717,10715,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10723,10722,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(10724,10722,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10730,10729,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(10731,10729,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10737,10736,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(10738,10736,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(10744,10743,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(10745,10743,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(10751,10750,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(10752,10750,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(10758,10757,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(10759,10757,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(10763,10762,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(10764,10762,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(10769,10768,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(10770,10768,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(10776,10775,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(10777,10775,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(10783,10782,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(10784,10782,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(10790,10789,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(10791,10789,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(10797,10796,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(10798,10796,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(10804,10803,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(10805,10803,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(10811,10810,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(10812,10810,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(10818,10817,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',1,0,0,'classic','01','mobile','01','',0,'','',0),(10819,10817,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',0,0,0,'classic','01','mobile','01','',0,'','',0),(10825,10824,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',1,0,0,'classic','01','mobile','01','',0,'','',0),(10826,10824,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',0,0,0,'classic','01','mobile','01','',0,'','',0),(10832,10831,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',1,0,0,'classic','01','mobile','01','',0,'','',0),(10833,10831,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',0,0,0,'classic','01','mobile','01','',0,'','',0),(10837,10836,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(10838,10836,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(10843,10842,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(10844,10842,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(10850,10849,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(10851,10849,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(10857,10856,10154,'2015-01-06 08:52:19','2015-01-06 08:52:19',1,0,0,'classic','01','mobile','01','',0,'','',0),(10858,10856,10154,'2015-01-06 08:52:19','2015-01-06 08:52:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(10864,10863,10154,'2015-01-06 08:52:19','2015-01-06 08:52:19',1,0,0,'classic','01','mobile','01','',0,'','',0),(10865,10863,10154,'2015-01-06 08:52:19','2015-01-06 08:52:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(10871,10870,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',1,0,0,'classic','01','mobile','01','',0,'','',0),(10872,10870,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',0,0,0,'classic','01','mobile','01','',0,'','',0),(10878,10877,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',1,0,0,'classic','01','mobile','01','',0,'','',0),(10879,10877,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',0,0,0,'classic','01','mobile','01','',0,'','',0),(10885,10884,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(10886,10884,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(10892,10891,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(10893,10891,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(10899,10898,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(10900,10898,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(10906,10905,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(10907,10905,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(10911,10910,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(10912,10910,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(10917,10916,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(10918,10916,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(10924,10923,10154,'2015-01-06 08:52:23','2015-01-06 08:52:23',1,0,0,'classic','01','mobile','01','',0,'','',0),(10925,10923,10154,'2015-01-06 08:52:23','2015-01-06 08:52:23',0,0,0,'classic','01','mobile','01','',0,'','',0),(10931,10930,10154,'2015-01-06 08:52:24','2015-01-06 08:52:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(10932,10930,10154,'2015-01-06 08:52:24','2015-01-06 08:52:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(10938,10937,10154,'2015-01-06 08:52:25','2015-01-06 08:52:25',1,0,0,'classic','01','mobile','01','',0,'','',0),(10939,10937,10154,'2015-01-06 08:52:25','2015-01-06 08:52:25',0,0,0,'classic','01','mobile','01','',0,'','',0),(10945,10944,10154,'2015-01-06 08:52:25','2015-01-06 08:52:25',1,0,0,'classic','01','mobile','01','',0,'','',0),(10946,10944,10154,'2015-01-06 08:52:25','2015-01-06 08:52:25',0,0,0,'classic','01','mobile','01','',0,'','',0),(10952,10951,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',1,0,0,'classic','01','mobile','01','',0,'','',0),(10953,10951,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(10959,10958,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',1,0,0,'classic','01','mobile','01','',0,'','',0),(10960,10958,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(10966,10965,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',1,0,0,'classic','01','mobile','01','',0,'','',0),(10967,10965,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(10973,10972,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(10974,10972,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(10980,10979,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(10981,10979,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(10985,10984,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(10986,10984,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(10989,10988,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(10990,10988,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(10995,10994,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(10996,10994,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(11002,11001,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(11003,11001,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(11009,11008,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(11010,11008,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(11016,11015,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(11017,11015,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(11023,11022,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(11024,11022,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(11030,11029,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(11031,11029,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(11037,11036,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(11038,11036,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(11044,11043,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(11045,11043,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(11051,11050,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(11052,11050,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(11058,11057,10154,'2015-01-06 08:52:31','2015-01-06 08:52:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(11059,11057,10154,'2015-01-06 08:52:31','2015-01-06 08:52:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(11063,11062,10154,'2015-01-06 08:52:31','2015-01-06 08:52:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(11064,11062,10154,'2015-01-06 08:52:31','2015-01-06 08:52:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(11069,11068,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(11070,11068,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(11076,11075,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(11077,11075,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(11083,11082,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(11084,11082,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(11090,11089,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(11091,11089,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(11097,11096,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(11098,11096,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(11104,11103,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(11105,11103,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(11111,11110,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',1,0,0,'classic','01','mobile','01','',0,'','',0),(11112,11110,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(11118,11117,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',1,0,0,'classic','01','mobile','01','',0,'','',0),(11119,11117,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(11125,11124,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(11126,11124,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(11132,11131,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(11133,11131,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(11137,11136,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(11138,11136,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(11141,11140,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(11142,11140,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(11147,11146,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(11148,11146,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(11154,11153,10154,'2015-01-06 08:52:36','2015-01-06 08:52:36',1,0,0,'classic','01','mobile','01','',0,'','',0),(11155,11153,10154,'2015-01-06 08:52:36','2015-01-06 08:52:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(11161,11160,10154,'2015-01-06 08:52:36','2015-01-06 08:52:36',1,0,0,'classic','01','mobile','01','',0,'','',0),(11162,11160,10154,'2015-01-06 08:52:36','2015-01-06 08:52:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(11168,11167,10154,'2015-01-06 08:52:37','2015-01-06 08:52:37',1,0,0,'classic','01','mobile','01','',0,'','',0),(11169,11167,10154,'2015-01-06 08:52:37','2015-01-06 08:52:37',0,0,0,'classic','01','mobile','01','',0,'','',0),(11175,11174,10154,'2015-01-06 08:52:37','2015-01-06 08:52:37',1,0,0,'classic','01','mobile','01','',0,'','',0),(11176,11174,10154,'2015-01-06 08:52:37','2015-01-06 08:52:37',0,0,0,'classic','01','mobile','01','',0,'','',0),(11182,11181,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',1,0,0,'classic','01','mobile','01','',0,'','',0),(11183,11181,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',0,0,0,'classic','01','mobile','01','',0,'','',0),(11189,11188,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',1,0,0,'classic','01','mobile','01','',0,'','',0),(11190,11188,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',0,0,0,'classic','01','mobile','01','',0,'','',0),(11196,11195,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',1,0,0,'classic','01','mobile','01','',0,'','',0),(11197,11195,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(11203,11202,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',1,0,0,'classic','01','mobile','01','',0,'','',0),(11204,11202,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(11210,11209,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',1,0,0,'classic','01','mobile','01','',0,'','',0),(11211,11209,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(11215,11214,10154,'2015-01-06 08:52:40','2015-01-06 08:52:40',1,0,0,'classic','01','mobile','01','',0,'','',0),(11216,11214,10154,'2015-01-06 08:52:40','2015-01-06 08:52:40',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `LayoutSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetBranch`
--

DROP TABLE IF EXISTS `LayoutSetBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`),
  KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetBranch`
--

LOCK TABLES `LayoutSetBranch` WRITE;
/*!40000 ALTER TABLE `LayoutSetBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutSetBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetPrototype`
--

DROP TABLE IF EXISTS `LayoutSetPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetPrototype`
--

LOCK TABLES `LayoutSetPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` VALUES ('b92bf33d-29fc-4d2a-9b89-825329a86a0d',10350,10154,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:38','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('d3b8691e-4899-49c4-abdc-b1226eee078e',10376,10154,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:41','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListType`
--

DROP TABLE IF EXISTS `ListType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListType`
--

LOCK TABLES `ListType` WRITE;
/*!40000 ALTER TABLE `ListType` DISABLE KEYS */;
INSERT INTO `ListType` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `ListType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lock_`
--

DROP TABLE IF EXISTS `Lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lock_`
--

LOCK TABLES `Lock_` WRITE;
/*!40000 ALTER TABLE `Lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBBan`
--

DROP TABLE IF EXISTS `MBBan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBBan` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`),
  KEY `IX_8A13C634` (`uuid_`),
  KEY `IX_4F841574` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBBan`
--

LOCK TABLES `MBBan` WRITE;
/*!40000 ALTER TABLE `MBBan` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBBan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBCategory`
--

DROP TABLE IF EXISTS `MBCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_E15A5DB5` (`companyId`,`status`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`),
  KEY `IX_DA84A9F7` (`groupId`,`status`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBCategory`
--

LOCK TABLES `MBCategory` WRITE;
/*!40000 ALTER TABLE `MBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBDiscussion`
--

DROP TABLE IF EXISTS `MBDiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBDiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`),
  KEY `IX_79D0120B` (`classNameId`),
  KEY `IX_5477D431` (`uuid_`),
  KEY `IX_7E965757` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBDiscussion`
--

LOCK TABLES `MBDiscussion` WRITE;
/*!40000 ALTER TABLE `MBDiscussion` DISABLE KEYS */;
INSERT INTO `MBDiscussion` VALUES ('c24f3105-ffbc-45a6-ac26-1f0b1a781bb7',10180,0,0,10158,'','2015-01-06 08:51:29','2015-01-06 08:51:29',10002,10175,10178),('d4a5104d-ea49-4d7b-89a6-fbebf82cef5e',10327,0,0,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10002,10321,10324),('bc58ded3-1af1-4e29-a910-3b46bb4cde7d',10338,0,0,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10002,10333,10336),('e12b951f-51f0-4d76-96e8-8baf0d4127ea',10348,0,0,10158,'','2015-01-06 08:51:36','2015-01-06 08:51:36',10002,10343,10346),('71c0326b-627c-4a0d-b676-65d4ccf62079',10367,0,0,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:37',10002,10362,10365),('2732098e-760d-4c49-b757-6d83a4d6a824',10375,0,0,10158,'','2015-01-06 08:51:38','2015-01-06 08:51:38',10002,10370,10373),('d798a4f5-52c8-4ae9-a850-4781370a9002',10393,0,0,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:39',10002,10388,10391),('f123379c-b5cf-4018-b97f-50366557b2a4',10402,0,0,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10002,10397,10400),('081fffa7-99ef-4a50-9c99-7eee228c8f79',10410,0,0,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10002,10405,10408),('0e664eaf-b8f6-436b-b920-9faab26cf5e0',10450,0,0,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',10002,10445,10448),('86f3ae0d-446c-4703-8822-1840c0e1fbb6',10456,0,0,10158,'','2015-01-06 08:51:55','2015-01-06 08:51:55',10002,10451,10454),('c44a19b7-dd8a-4077-9aee-969c66875d6f',11222,0,0,10434,'Haroon Ghafoori','2015-01-06 08:52:43','2015-01-06 08:52:43',10002,11217,11220),('428e023f-ddd4-43e1-ad27-06f2958ddb4c',11228,0,0,10434,'Haroon Ghafoori','2015-01-06 08:52:44','2015-01-06 08:52:44',10002,11223,11226),('27c44f67-6e7a-4f25-83f3-e775479dc547',11267,0,0,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',10011,11261,11265),('736e69c7-c906-44b1-9d96-a507eecabc6d',11283,0,0,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10011,11276,11281),('e80c2e62-3878-4e9e-a6dc-1a4893ced4df',11300,0,0,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10011,11290,11294),('04490a0b-1c40-43bd-a7fc-88fcf9db5350',11314,0,0,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',10011,11303,11312),('4a7cc12c-0963-4b74-9530-6ab29c18447e',11328,0,0,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',10011,11317,11326),('1f19f037-2560-4aa8-a37d-22c0bdce106b',11342,0,0,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',10011,11332,11340),('2bd10821-f6cc-4604-a702-defb2f4f4d3e',11357,0,0,10158,'','2015-01-06 08:54:00','2015-01-06 08:54:00',10109,11351,11355),('1f39476c-8741-461e-bb10-099c9b939731',11367,0,0,10158,'','2015-01-06 08:54:02','2015-01-06 08:54:02',10002,11362,11365);
/*!40000 ALTER TABLE `MBDiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMailingList`
--

DROP TABLE IF EXISTS `MBMailingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMailingList`
--

LOCK TABLES `MBMailingList` WRITE;
/*!40000 ALTER TABLE `MBMailingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBMailingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMessage`
--

DROP TABLE IF EXISTS `MBMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMessage`
--

LOCK TABLES `MBMessage` WRITE;
/*!40000 ALTER TABLE `MBMessage` DISABLE KEYS */;
INSERT INTO `MBMessage` VALUES ('5b9ee8a1-397b-4608-b842-a65b3ebbe41b',10177,10172,10154,10158,'','2015-01-06 08:51:29','2015-01-06 08:51:29',10002,10175,-1,10178,10177,0,'10175','10175','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:29'),('85385ac4-7d64-4ee1-ae8f-2ffeb4bb14e9',10323,10318,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10002,10321,-1,10324,10323,0,'10321','10321','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:34'),('2e218657-101c-43cb-8cd3-10ca70d732af',10335,10330,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',10002,10333,-1,10336,10335,0,'10333','10333','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:34'),('f9e11530-4840-41b0-91fc-89240ace3d30',10345,10340,10154,10158,'','2015-01-06 08:51:36','2015-01-06 08:51:36',10002,10343,-1,10346,10345,0,'10343','10343','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:36'),('062c63d1-3129-454e-b25c-45277d677ba2',10364,10351,10154,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:37',10002,10362,-1,10365,10364,0,'10362','10362','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:37'),('8ba5230f-fef0-41f0-a084-dcaae0c44430',10372,10351,10154,10158,'','2015-01-06 08:51:38','2015-01-06 08:51:38',10002,10370,-1,10373,10372,0,'10370','10370','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:38'),('c4578f4d-bab3-4bbb-bd3d-75b631bb1263',10390,10377,10154,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:39',10002,10388,-1,10391,10390,0,'10388','10388','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:39'),('1bdb9b29-4f12-4d64-b122-eb055aeffc1f',10399,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10002,10397,-1,10400,10399,0,'10397','10397','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:40'),('9e065067-4902-4c67-a36c-10d0fe94ce56',10407,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',10002,10405,-1,10408,10407,0,'10405','10405','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:40'),('7fc17a5e-8a62-45c0-a01c-afb47797fba8',10447,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',10002,10445,-1,10448,10447,0,'10445','10445','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:54'),('244b6fbb-88a9-4a77-9687-e04b5082e5d7',10453,10442,10154,10158,'','2015-01-06 08:51:55','2015-01-06 08:51:55',10002,10451,-1,10454,10453,0,'10451','10451','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:51:55'),('747dae6f-4431-4f54-9e07-bd770c6f78f4',11219,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:43','2015-01-06 08:52:43',10002,11217,-1,11220,11219,0,'11217','11217','bbcode',0,0,0,0,0,10434,'Haroon Ghafoori','2015-01-06 08:52:43'),('8bd703fa-48eb-40dc-a72d-e11859fa8d51',11225,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:44','2015-01-06 08:52:44',10002,11223,-1,11226,11225,0,'11223','11223','bbcode',0,0,0,0,0,10434,'Haroon Ghafoori','2015-01-06 08:52:44'),('c41ab4bd-93ff-42bf-b6b9-263226c6ae5a',11264,10181,10154,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',10011,11261,-1,11265,11264,0,'11261','11261','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:53:48'),('bc624f7d-2534-45a6-8cfb-f4e43dfb0fca',11280,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10011,11276,-1,11281,11280,0,'11276','11276','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:53:51'),('97ed2c8a-452d-408c-ab12-319c03a60b7c',11293,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',10011,11290,-1,11294,11293,0,'11290','11290','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:53:51'),('b6c58616-ec11-4135-92c3-8901521a63ec',11311,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',10011,11303,-1,11312,11311,0,'11303','11303','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:53:53'),('5b6da6b1-beec-4c42-8519-b214bf4f6851',11325,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',10011,11317,-1,11326,11325,0,'11317','11317','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:53:57'),('68ca4e58-b3d6-4e92-8d6c-2a809de97fca',11339,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',10011,11332,-1,11340,11339,0,'11332','11332','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:53:58'),('73722a04-5f6e-4f9d-afa5-fca79b1ddb1f',11354,10181,10154,10158,'','2015-01-06 08:54:00','2015-01-06 08:54:00',10109,11351,-1,11355,11354,0,'11351','11351','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:54:00'),('34ea6685-bc15-40b4-8336-bcf2299df9da',11364,10181,10154,10158,'','2015-01-06 08:54:02','2015-01-06 08:54:02',10002,11362,-1,11365,11364,0,'11362','11362','bbcode',1,0,0,0,0,10158,'','2015-01-06 08:54:02');
/*!40000 ALTER TABLE `MBMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBStatsUser`
--

DROP TABLE IF EXISTS `MBStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBStatsUser`
--

LOCK TABLES `MBStatsUser` WRITE;
/*!40000 ALTER TABLE `MBStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThread`
--

DROP TABLE IF EXISTS `MBThread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`),
  KEY `IX_7E264A0F` (`uuid_`),
  KEY `IX_F8CA2AB9` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThread`
--

LOCK TABLES `MBThread` WRITE;
/*!40000 ALTER TABLE `MBThread` DISABLE KEYS */;
INSERT INTO `MBThread` VALUES ('61168b24-5358-4d42-9686-7509275a9ee5',10178,10172,10154,10158,'','2015-01-06 08:51:29','2015-01-06 08:51:29',-1,10177,10158,1,0,0,'2015-01-06 08:51:29',0,0,0,10158,'','2015-01-06 08:51:29'),('e27d39bf-c031-44fd-9f8e-e31cee27e1d3',10324,10318,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',-1,10323,10158,1,0,0,'2015-01-06 08:51:34',0,0,0,10158,'','2015-01-06 08:51:34'),('ad68f12a-a6cc-4084-8c59-a44b377cc5f3',10336,10330,10154,10158,'','2015-01-06 08:51:34','2015-01-06 08:51:34',-1,10335,10158,1,0,0,'2015-01-06 08:51:34',0,0,0,10158,'','2015-01-06 08:51:34'),('a64af5ed-91fc-49f1-a92d-8973caeb937c',10346,10340,10154,10158,'','2015-01-06 08:51:36','2015-01-06 08:51:36',-1,10345,10158,1,0,0,'2015-01-06 08:51:36',0,0,0,10158,'','2015-01-06 08:51:36'),('72dcc88d-d560-4858-aee9-9e4b42a2c93f',10365,10351,10154,10158,'','2015-01-06 08:51:37','2015-01-06 08:51:37',-1,10364,10158,1,0,0,'2015-01-06 08:51:37',0,0,0,10158,'','2015-01-06 08:51:37'),('468fdc5b-c168-4fd8-b375-53f5d71892e5',10373,10351,10154,10158,'','2015-01-06 08:51:38','2015-01-06 08:51:38',-1,10372,10158,1,0,0,'2015-01-06 08:51:38',0,0,0,10158,'','2015-01-06 08:51:38'),('25578b8c-49e3-49e9-a16c-68a0b8354321',10391,10377,10154,10158,'','2015-01-06 08:51:39','2015-01-06 08:51:39',-1,10390,10158,1,0,0,'2015-01-06 08:51:39',0,0,0,10158,'','2015-01-06 08:51:39'),('db7ca382-79cf-466f-b87b-9d8f642a0144',10400,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',-1,10399,10158,1,0,0,'2015-01-06 08:51:40',0,0,0,10158,'','2015-01-06 08:51:40'),('b0505a08-8c9d-4af1-8330-5a3bae7d6b95',10408,10377,10154,10158,'','2015-01-06 08:51:40','2015-01-06 08:51:40',-1,10407,10158,1,0,0,'2015-01-06 08:51:40',0,0,0,10158,'','2015-01-06 08:51:40'),('58b974b5-ca20-4b1f-960a-d76996027698',10448,10442,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',-1,10447,10158,1,0,0,'2015-01-06 08:51:54',0,0,0,10158,'','2015-01-06 08:51:54'),('2c8721fd-5fe7-444c-a194-b60b9f2a8985',10454,10442,10154,10158,'','2015-01-06 08:51:55','2015-01-06 08:51:55',-1,10453,10158,1,0,0,'2015-01-06 08:51:55',0,0,0,10158,'','2015-01-06 08:51:55'),('93c6c54e-b02e-48be-a8e2-95663cc8eaf2',11220,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:43','2015-01-06 08:52:43',-1,11219,10434,1,0,10434,'2015-01-06 08:52:43',0,0,0,10434,'Haroon Ghafoori','2015-01-06 08:52:43'),('dbbd70cc-07c2-44e1-a2e6-221a49055e43',11226,10437,10154,10434,'Haroon Ghafoori','2015-01-06 08:52:44','2015-01-06 08:52:44',-1,11225,10434,1,0,10434,'2015-01-06 08:52:44',0,0,0,10434,'Haroon Ghafoori','2015-01-06 08:52:44'),('0c88074c-1781-4681-b78d-b9c992cdda95',11265,10181,10154,10158,'','2015-01-06 08:53:48','2015-01-06 08:53:48',-1,11264,10158,1,0,0,'2015-01-06 08:53:48',0,0,0,10158,'','2015-01-06 08:53:48'),('3b908c75-7a5b-4f73-9fa9-b78b401a6276',11281,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',-1,11280,10158,1,0,0,'2015-01-06 08:53:51',0,0,0,10158,'','2015-01-06 08:53:51'),('576eeb20-3c92-470b-b45a-dd272a56ce43',11294,10181,10154,10158,'','2015-01-06 08:53:51','2015-01-06 08:53:51',-1,11293,10158,1,0,0,'2015-01-06 08:53:51',0,0,0,10158,'','2015-01-06 08:53:51'),('b794a692-ae2c-4adf-b47b-d7561d9f85de',11312,10181,10154,10158,'','2015-01-06 08:53:53','2015-01-06 08:53:53',-1,11311,10158,1,0,0,'2015-01-06 08:53:53',0,0,0,10158,'','2015-01-06 08:53:53'),('77f67bc1-9bdc-4490-a0e8-b26cfc95f287',11326,10181,10154,10158,'','2015-01-06 08:53:57','2015-01-06 08:53:57',-1,11325,10158,1,0,0,'2015-01-06 08:53:57',0,0,0,10158,'','2015-01-06 08:53:57'),('4417e58f-6fb1-4d59-b47e-cb80e2dac932',11340,10181,10154,10158,'','2015-01-06 08:53:58','2015-01-06 08:53:58',-1,11339,10158,1,0,0,'2015-01-06 08:53:58',0,0,0,10158,'','2015-01-06 08:53:58'),('fba86041-4546-42cf-9fca-baa01bc37472',11355,10181,10154,10158,'','2015-01-06 08:54:00','2015-01-06 08:54:00',-1,11354,10158,1,0,0,'2015-01-06 08:54:00',0,0,0,10158,'','2015-01-06 08:54:00'),('deac1718-bc97-4b44-acd6-5185ab5e44ee',11365,10181,10154,10158,'','2015-01-06 08:54:02','2015-01-06 08:54:02',-1,11364,10158,1,0,0,'2015-01-06 08:54:02',0,0,0,10158,'','2015-01-06 08:54:02');
/*!40000 ALTER TABLE `MBThread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThreadFlag`
--

DROP TABLE IF EXISTS `MBThreadFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThreadFlag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_F36BBB83` (`uuid_`),
  KEY `IX_DCE308C5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThreadFlag`
--

LOCK TABLES `MBThreadFlag` WRITE;
/*!40000 ALTER TABLE `MBThreadFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBThreadFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRAction`
--

DROP TABLE IF EXISTS `MDRAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRAction`
--

LOCK TABLES `MDRAction` WRITE;
/*!40000 ALTER TABLE `MDRAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRule`
--

DROP TABLE IF EXISTS `MDRRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRule`
--

LOCK TABLES `MDRRule` WRITE;
/*!40000 ALTER TABLE `MDRRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroup`
--

DROP TABLE IF EXISTS `MDRRuleGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroup`
--

LOCK TABLES `MDRRuleGroup` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroupInstance`
--

DROP TABLE IF EXISTS `MDRRuleGroupInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroupInstance`
--

LOCK TABLES `MDRRuleGroupInstance` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_App`
--

DROP TABLE IF EXISTS `Marketplace_App`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_App` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `category` varchar(75) DEFAULT NULL,
  `iconURL` longtext,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_94A7EF25` (`category`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`),
  KEY `IX_A7807DA7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_App`
--

LOCK TABLES `Marketplace_App` WRITE;
/*!40000 ALTER TABLE `Marketplace_App` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_App` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_Module`
--

DROP TABLE IF EXISTS `Marketplace_Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_Module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_Module`
--

LOCK TABLES `Marketplace_Module` WRITE;
/*!40000 ALTER TABLE `Marketplace_Module` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MembershipRequest`
--

DROP TABLE IF EXISTS `MembershipRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipRequest`
--

LOCK TABLES `MembershipRequest` WRITE;
/*!40000 ALTER TABLE `MembershipRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `MembershipRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSocial_Gadget`
--

DROP TABLE IF EXISTS `OpenSocial_Gadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenSocial_Gadget` (
  `uuid_` varchar(75) DEFAULT NULL,
  `gadgetId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `portletCategoryNames` longtext,
  PRIMARY KEY (`gadgetId`),
  KEY `IX_729869EE` (`companyId`),
  KEY `IX_E1F8627A` (`uuid_`),
  KEY `IX_3C79316E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenSocial_Gadget`
--

LOCK TABLES `OpenSocial_Gadget` WRITE;
/*!40000 ALTER TABLE `OpenSocial_Gadget` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_Gadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSocial_OAuthConsumer`
--

DROP TABLE IF EXISTS `OpenSocial_OAuthConsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenSocial_OAuthConsumer` (
  `oAuthConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` longtext,
  `keyType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthConsumerId`),
  KEY `IX_47206618` (`gadgetKey`),
  KEY `IX_8E715BF8` (`gadgetKey`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenSocial_OAuthConsumer`
--

LOCK TABLES `OpenSocial_OAuthConsumer` WRITE;
/*!40000 ALTER TABLE `OpenSocial_OAuthConsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_OAuthConsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenSocial_OAuthToken`
--

DROP TABLE IF EXISTS `OpenSocial_OAuthToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenSocial_OAuthToken` (
  `oAuthTokenId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `tokenName` varchar(75) DEFAULT NULL,
  `tokenSecret` varchar(75) DEFAULT NULL,
  `sessionHandle` varchar(75) DEFAULT NULL,
  `expiration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oAuthTokenId`),
  KEY `IX_6C8CCC3D` (`gadgetKey`,`serviceName`),
  KEY `IX_CDD35402` (`userId`,`gadgetKey`,`serviceName`,`moduleId`,`tokenName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenSocial_OAuthToken`
--

LOCK TABLES `OpenSocial_OAuthToken` WRITE;
/*!40000 ALTER TABLE `OpenSocial_OAuthToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_OAuthToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgGroupRole`
--

DROP TABLE IF EXISTS `OrgGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgGroupRole`
--

LOCK TABLES `OrgGroupRole` WRITE;
/*!40000 ALTER TABLE `OrgGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgLabor`
--

DROP TABLE IF EXISTS `OrgLabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgLabor`
--

LOCK TABLES `OrgLabor` WRITE;
/*!40000 ALTER TABLE `OrgLabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgLabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization_`
--

DROP TABLE IF EXISTS `Organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_396D6B42` (`uuid_`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_`
--

LOCK TABLES `Organization_` WRITE;
/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
INSERT INTO `Organization_` VALUES ('f4b29292-f375-4303-9770-2f8c383d1f30',10441,10154,10158,'','2015-01-06 08:51:54','2015-01-06 08:51:54',0,'/10441/','Liferay, Inc.','regular-organization',1,0,0,12017,''),('eb65171a-a422-400e-8eca-e8c7d4ceed94',10457,10154,10158,'','2015-01-06 08:51:55','2015-01-06 08:51:55',10441,'/10441/10457/','Liferay Chicago','location',1,19014,19,12017,''),('8aa92d72-141e-4de6-b2b5-c2597828b34d',10531,10154,10158,'','2015-01-06 08:52:02','2015-01-06 08:52:02',10441,'/10441/10531/','Liferay Consulting','regular-organization',1,19005,19,12017,''),('9d182ff7-89e9-4bea-ba8a-16bcb8ac1d04',10535,10154,10158,'','2015-01-06 08:52:02','2015-01-06 08:52:02',10441,'/10441/10535/','Liferay Dalian','location',1,0,2,12017,''),('427c2286-028f-4cb9-923f-22e2e3c0a6a8',10609,10154,10158,'','2015-01-06 08:52:06','2015-01-06 08:52:06',10441,'/10441/10609/','Liferay Engineering','regular-organization',1,19005,19,12017,''),('9e5288f0-c94e-42d5-a471-e43f73757e23',10613,10154,10158,'','2015-01-06 08:52:06','2015-01-06 08:52:06',10441,'/10441/10613/','Liferay Frankfurt','location',1,0,4,12017,''),('bd947d9f-10ca-4d0f-bf54-e66f2db16650',10687,10154,10158,'','2015-01-06 08:52:10','2015-01-06 08:52:10',10441,'/10441/10687/','Liferay Hong Kong','location',1,0,2,12017,''),('1f310f09-c281-44e8-93c8-3cedefea05ce',10761,10154,10158,'','2015-01-06 08:52:14','2015-01-06 08:52:14',10441,'/10441/10761/','Liferay Kuala Lumpur','location',1,0,135,12017,''),('f498c13f-6b02-4bb5-abcc-65f71ae622a7',10835,10154,10158,'','2015-01-06 08:52:18','2015-01-06 08:52:18',10441,'/10441/10835/','Liferay Los Angeles','location',1,19005,19,12017,''),('ae9cf3ab-51a5-41a9-a001-4f0de7e84356',10909,10154,10158,'','2015-01-06 08:52:22','2015-01-06 08:52:22',10441,'/10441/10909/','Liferay Madrid','location',1,0,15,12017,''),('4f5b5f3b-6ad2-4a1c-aa7d-f8cf44d8e581',10983,10154,10158,'','2015-01-06 08:52:27','2015-01-06 08:52:27',10441,'/10441/10983/','Liferay Marketing','regular-organization',1,19005,19,12017,''),('deccd85c-41f6-4095-a9c3-8ea8b88640e2',10987,10154,10158,'','2015-01-06 08:52:27','2015-01-06 08:52:27',10441,'/10441/10987/','Liferay New York','location',1,19033,19,12017,''),('24fa3de8-e7fa-4073-87c9-e86313cb85a5',11061,10154,10158,'','2015-01-06 08:52:31','2015-01-06 08:52:31',10441,'/10441/11061/','Liferay Saint Paulo','location',1,0,48,12017,''),('078b070e-babb-457d-a7e2-7af85113ae80',11135,10154,10158,'','2015-01-06 08:52:35','2015-01-06 08:52:35',10441,'/10441/11135/','Liferay Sales','regular-organization',1,19005,19,12017,''),('b95ff09c-9bee-4a6b-a7f0-ca1de80ca848',11139,10154,10158,'','2015-01-06 08:52:35','2015-01-06 08:52:35',10441,'/10441/11139/','Liferay San Francisco','location',1,19005,19,12017,''),('acd03c8b-e0e0-4ea2-aa78-5029e53bc4d7',11213,10154,10158,'','2015-01-06 08:52:40','2015-01-06 08:52:40',10441,'/10441/11213/','Liferay Support','regular-organization',1,19005,19,12017,'');
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicy`
--

DROP TABLE IF EXISTS `PasswordPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_8FEE65F5` (`companyId`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_51437A01` (`uuid_`),
  KEY `IX_E4D7EF87` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicy`
--

LOCK TABLES `PasswordPolicy` WRITE;
/*!40000 ALTER TABLE `PasswordPolicy` DISABLE KEYS */;
INSERT INTO `PasswordPolicy` VALUES ('3aa3561e-e715-4e1f-b9dc-0e8f9f338062',10197,10154,10158,'','2015-01-06 08:51:30','2015-01-06 08:51:30',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `PasswordPolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicyRel`
--

DROP TABLE IF EXISTS `PasswordPolicyRel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicyRel`
--

LOCK TABLES `PasswordPolicyRel` WRITE;
/*!40000 ALTER TABLE `PasswordPolicyRel` DISABLE KEYS */;
INSERT INTO `PasswordPolicyRel` VALUES (10201,10197,10005,10198),(10436,10197,10005,10434),(10463,10197,10005,10461),(10470,10197,10005,10468),(10477,10197,10005,10475),(10484,10197,10005,10482),(10491,10197,10005,10489),(10498,10197,10005,10496),(10505,10197,10005,10503),(10512,10197,10005,10510),(10519,10197,10005,10517),(10526,10197,10005,10524),(10541,10197,10005,10539),(10548,10197,10005,10546),(10555,10197,10005,10553),(10562,10197,10005,10560),(10569,10197,10005,10567),(10576,10197,10005,10574),(10583,10197,10005,10581),(10590,10197,10005,10588),(10597,10197,10005,10595),(10604,10197,10005,10602),(10619,10197,10005,10617),(10626,10197,10005,10624),(10633,10197,10005,10631),(10640,10197,10005,10638),(10647,10197,10005,10645),(10654,10197,10005,10652),(10661,10197,10005,10659),(10668,10197,10005,10666),(10675,10197,10005,10673),(10682,10197,10005,10680),(10693,10197,10005,10691),(10700,10197,10005,10698),(10707,10197,10005,10705),(10714,10197,10005,10712),(10721,10197,10005,10719),(10728,10197,10005,10726),(10735,10197,10005,10733),(10742,10197,10005,10740),(10749,10197,10005,10747),(10756,10197,10005,10754),(10767,10197,10005,10765),(10774,10197,10005,10772),(10781,10197,10005,10779),(10788,10197,10005,10786),(10795,10197,10005,10793),(10802,10197,10005,10800),(10809,10197,10005,10807),(10816,10197,10005,10814),(10823,10197,10005,10821),(10830,10197,10005,10828),(10841,10197,10005,10839),(10848,10197,10005,10846),(10855,10197,10005,10853),(10862,10197,10005,10860),(10869,10197,10005,10867),(10876,10197,10005,10874),(10883,10197,10005,10881),(10890,10197,10005,10888),(10897,10197,10005,10895),(10904,10197,10005,10902),(10915,10197,10005,10913),(10922,10197,10005,10920),(10929,10197,10005,10927),(10936,10197,10005,10934),(10943,10197,10005,10941),(10950,10197,10005,10948),(10957,10197,10005,10955),(10964,10197,10005,10962),(10971,10197,10005,10969),(10978,10197,10005,10976),(10993,10197,10005,10991),(11000,10197,10005,10998),(11007,10197,10005,11005),(11014,10197,10005,11012),(11021,10197,10005,11019),(11028,10197,10005,11026),(11035,10197,10005,11033),(11042,10197,10005,11040),(11049,10197,10005,11047),(11056,10197,10005,11054),(11067,10197,10005,11065),(11074,10197,10005,11072),(11081,10197,10005,11079),(11088,10197,10005,11086),(11095,10197,10005,11093),(11102,10197,10005,11100),(11109,10197,10005,11107),(11116,10197,10005,11114),(11123,10197,10005,11121),(11130,10197,10005,11128),(11145,10197,10005,11143),(11152,10197,10005,11150),(11159,10197,10005,11157),(11166,10197,10005,11164),(11173,10197,10005,11171),(11180,10197,10005,11178),(11187,10197,10005,11185),(11194,10197,10005,11192),(11201,10197,10005,11199),(11208,10197,10005,11206);
/*!40000 ALTER TABLE `PasswordPolicyRel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordTracker`
--

DROP TABLE IF EXISTS `PasswordTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordTracker`
--

LOCK TABLES `PasswordTracker` WRITE;
/*!40000 ALTER TABLE `PasswordTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`),
  KEY `IX_EA6245A0` (`uuid_`),
  KEY `IX_B271FA88` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone`
--

LOCK TABLES `Phone` WRITE;
/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginSetting`
--

DROP TABLE IF EXISTS `PluginSetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginSetting`
--

LOCK TABLES `PluginSetting` WRITE;
/*!40000 ALTER TABLE `PluginSetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginSetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsChoice`
--

DROP TABLE IF EXISTS `PollsChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`),
  KEY `IX_8AE746EF` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsChoice`
--

LOCK TABLES `PollsChoice` WRITE;
/*!40000 ALTER TABLE `PollsChoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsQuestion`
--

DROP TABLE IF EXISTS `PollsQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsQuestion`
--

LOCK TABLES `PollsQuestion` WRITE;
/*!40000 ALTER TABLE `PollsQuestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsVote`
--

DROP TABLE IF EXISTS `PollsVote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsVote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`),
  KEY `IX_FD32EB70` (`uuid_`),
  KEY `IX_7D8E92B8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsVote`
--

LOCK TABLES `PollsVote` WRITE;
/*!40000 ALTER TABLE `PollsVote` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsVote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortalPreferences`
--

DROP TABLE IF EXISTS `PortalPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortalPreferences`
--

LOCK TABLES `PortalPreferences` WRITE;
/*!40000 ALTER TABLE `PortalPreferences` DISABLE KEYS */;
INSERT INTO `PortalPreferences` VALUES (10160,10154,1,'<portlet-preferences />'),(10199,0,1,'<portlet-preferences />'),(11229,10434,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.pages</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#control-panel-sidebar-minimized</name><value>0</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.configuration</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.content</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.users</name><value>closed</value></preference></portlet-preferences>'),(11440,10158,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `PortalPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portlet`
--

DROP TABLE IF EXISTS `Portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (10206,10154,'98','',0),(10207,10154,'66','',1),(10208,10154,'180','',1),(10209,10154,'27','',1),(10210,10154,'152','',1),(10211,10154,'183','',1),(10212,10154,'134','',1),(10213,10154,'130','',1),(10214,10154,'122','',1),(10215,10154,'36','',1),(10216,10154,'26','',1),(10217,10154,'175','',1),(10218,10154,'153','',1),(10219,10154,'64','',1),(10220,10154,'129','',1),(10221,10154,'182','',1),(10222,10154,'179','',1),(10223,10154,'173','',0),(10224,10154,'100','',1),(10225,10154,'19','',1),(10226,10154,'157','',1),(10227,10154,'128','',1),(10228,10154,'181','',1),(10229,10154,'154','',1),(10230,10154,'148','',1),(10231,10154,'11','',1),(10232,10154,'29','',1),(10233,10154,'158','',1),(10234,10154,'178','',1),(10235,10154,'58','',1),(10236,10154,'71','',1),(10237,10154,'97','',1),(10238,10154,'39','',1),(10239,10154,'85','',1),(10240,10154,'118','',1),(10241,10154,'107','',1),(10242,10154,'30','',1),(10243,10154,'184','',1),(10244,10154,'147','',1),(10245,10154,'48','',1),(10246,10154,'125','',1),(10247,10154,'161','',1),(10248,10154,'146','',1),(10249,10154,'62','',0),(10250,10154,'162','',1),(10251,10154,'176','',1),(10252,10154,'108','',1),(10253,10154,'187','',1),(10254,10154,'84','',1),(10255,10154,'101','',1),(10256,10154,'121','',1),(10257,10154,'143','',1),(10258,10154,'77','',1),(10259,10154,'167','',1),(10260,10154,'115','',1),(10261,10154,'56','',1),(10262,10154,'16','',1),(10263,10154,'3','',1),(10264,10154,'23','',1),(10265,10154,'20','',1),(10266,10154,'83','',1),(10267,10154,'99','',1),(10268,10154,'186','',1),(10269,10154,'194','',1),(10270,10154,'70','',1),(10271,10154,'164','',1),(10272,10154,'141','',1),(10273,10154,'9','',1),(10274,10154,'28','',1),(10275,10154,'137','',1),(10276,10154,'47','',1),(10277,10154,'15','',1),(10278,10154,'116','',1),(10279,10154,'82','',1),(10280,10154,'151','',1),(10281,10154,'54','',1),(10282,10154,'34','',1),(10283,10154,'169','',1),(10284,10154,'132','',1),(10285,10154,'61','',1),(10286,10154,'73','',1),(10287,10154,'31','',1),(10288,10154,'50','',1),(10289,10154,'127','',1),(10290,10154,'193','',1),(10291,10154,'25','',1),(10292,10154,'166','',1),(10293,10154,'33','',1),(10294,10154,'150','',1),(10295,10154,'114','',1),(10296,10154,'149','',1),(10297,10154,'67','',1),(10298,10154,'110','',1),(10299,10154,'59','',1),(10300,10154,'135','',1),(10301,10154,'188','',1),(10302,10154,'131','',1),(10303,10154,'102','',1),(11237,10154,'1_WAR_notificationsportlet','',1),(11243,10154,'1_WAR_calendarportlet','',1),(11369,10154,'4_WAR_opensocialportlet','',1),(11370,10154,'2_WAR_opensocialportlet','',1),(11371,10154,'1_WAR_opensocialportlet','',1),(11372,10154,'3_WAR_opensocialportlet','',1),(11422,10154,'1_WAR_webformportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletItem`
--

DROP TABLE IF EXISTS `PortletItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletItem`
--

LOCK TABLES `PortletItem` WRITE;
/*!40000 ALTER TABLE `PortletItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PortletItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletPreferences`
--

DROP TABLE IF EXISTS `PortletPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_A3B2A80C` (`ownerType`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletPreferences`
--

LOCK TABLES `PortletPreferences` WRITE;
/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` VALUES (10328,0,3,10321,'148_INSTANCE_HDPeBurgzkQu','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>10007</value></preference><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>maxAssetTags</name><value>10</value></preference></portlet-preferences>'),(10349,0,3,10343,'141_INSTANCE_RD9lIyK98VTT','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>10016</value></preference></portlet-preferences>'),(10368,0,3,10362,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10369,0,3,10362,'101_INSTANCE_Yl0U3EhoxNjf','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10394,0,3,10388,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10395,0,3,10388,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10396,0,3,10388,'101_INSTANCE_K5p2STUphzgl','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10403,0,3,10397,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10404,0,3,10397,'101_INSTANCE_ivHtfPHhk3Tt','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10411,0,3,10405,'39_INSTANCE_mCI145l59uzA','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(10412,0,3,10405,'39_INSTANCE_1fwBNR3HCs9p','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(11269,10181,2,0,'20','<portlet-preferences />'),(11358,10181,2,0,'15','<portlet-preferences />'),(11368,0,3,11362,'56_INSTANCE_nzQEh4uYjuQZ','<portlet-preferences><preference><name>articleId</name><value>WELCOME</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>groupId</name><value>10181</value></preference></portlet-preferences>'),(11423,0,3,11217,'145','<portlet-preferences />'),(11424,0,3,11362,'145','<portlet-preferences />'),(11425,0,3,11362,'2_WAR_notificationsportlet','<portlet-preferences />'),(11432,0,3,10175,'160','<portlet-preferences />'),(11433,0,3,10175,'156','<portlet-preferences />'),(11434,0,3,10175,'145','<portlet-preferences />'),(11435,0,3,10175,'2_WAR_notificationsportlet','<portlet-preferences />'),(11436,0,3,10175,'147','<portlet-preferences />'),(11446,0,3,11362,'58','<portlet-preferences />'),(11447,0,3,11217,'2_WAR_notificationsportlet','<portlet-preferences />');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

LOCK TABLES `QUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `QUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_JOB_DETAILS`
--

LOCK TABLES `QUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

LOCK TABLES `QUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `QUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_TRIGGERS`
--

LOCK TABLES `QUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsEntry`
--

DROP TABLE IF EXISTS `RatingsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsEntry`
--

LOCK TABLES `RatingsEntry` WRITE;
/*!40000 ALTER TABLE `RatingsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsStats`
--

DROP TABLE IF EXISTS `RatingsStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsStats`
--

LOCK TABLES `RatingsStats` WRITE;
/*!40000 ALTER TABLE `RatingsStats` DISABLE KEYS */;
INSERT INTO `RatingsStats` VALUES (11270,10011,11261,0,0,0),(11285,10011,11276,0,0,0),(11302,10011,11290,0,0,0),(11316,10011,11303,0,0,0),(11330,10011,11317,0,0,0),(11344,10011,11332,0,0,0),(11359,10109,11351,0,0,0);
/*!40000 ALTER TABLE `RatingsStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BR','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MZ','Monza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Release_`
--

DROP TABLE IF EXISTS `Release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Release_`
--

LOCK TABLES `Release_` WRITE;
/*!40000 ALTER TABLE `Release_` DISABLE KEYS */;
INSERT INTO `Release_` VALUES (1,'2015-01-06 14:19:37','2015-01-06 08:51:28','portal',6201,'2015-01-06 08:51:28',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(11233,'2015-01-06 08:53:12','2015-01-06 08:53:12','marketplace-portlet',100,NULL,1,0,''),(11236,'2015-01-06 08:53:14','2015-01-06 08:53:14','notifications-portlet',100,NULL,1,0,''),(11392,'2015-01-06 08:55:11','2015-01-06 08:55:13','kaleo-web',110,NULL,1,0,'');
/*!40000 ALTER TABLE `Release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repository`
--

DROP TABLE IF EXISTS `Repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repository`
--

LOCK TABLES `Repository` WRITE;
/*!40000 ALTER TABLE `Repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RepositoryEntry`
--

DROP TABLE IF EXISTS `RepositoryEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`),
  KEY `IX_D3B9AF62` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RepositoryEntry`
--

LOCK TABLES `RepositoryEntry` WRITE;
/*!40000 ALTER TABLE `RepositoryEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RepositoryEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceAction`
--

DROP TABLE IF EXISTS `ResourceAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceAction`
--

LOCK TABLES `ResourceAction` WRITE;
/*!40000 ALTER TABLE `ResourceAction` DISABLE KEYS */;
INSERT INTO `ResourceAction` VALUES (1,'1_WAR_marketplaceportlet','VIEW',1),(2,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(3,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(4,'1_WAR_marketplaceportlet','CONFIGURATION',8),(5,'1_WAR_marketplaceportlet','PERMISSIONS',16),(6,'2_WAR_marketplaceportlet','VIEW',1),(7,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(8,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(9,'2_WAR_marketplaceportlet','CONFIGURATION',8),(10,'2_WAR_marketplaceportlet','PERMISSIONS',16),(11,'3_WAR_marketplaceportlet','VIEW',1),(12,'3_WAR_marketplaceportlet','ADD_TO_PAGE',2),(13,'3_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(14,'3_WAR_marketplaceportlet','CONFIGURATION',8),(15,'3_WAR_marketplaceportlet','PERMISSIONS',16),(16,'2_WAR_notificationsportlet','VIEW',1),(17,'2_WAR_notificationsportlet','ADD_TO_PAGE',2),(18,'2_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',4),(19,'2_WAR_notificationsportlet','CONFIGURATION',8),(20,'2_WAR_notificationsportlet','PERMISSIONS',16),(21,'1_WAR_notificationsportlet','VIEW',1),(22,'1_WAR_notificationsportlet','ADD_TO_PAGE',2),(23,'1_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',4),(24,'1_WAR_notificationsportlet','CONFIGURATION',8),(25,'1_WAR_notificationsportlet','PERMISSIONS',16),(26,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(27,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(28,'1_WAR_calendarportlet','CONFIGURATION',8),(29,'1_WAR_calendarportlet','VIEW',1),(30,'1_WAR_calendarportlet','PERMISSIONS',16),(31,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(32,'com.liferay.calendar.model.CalendarResource','DELETE',4),(33,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(34,'com.liferay.calendar.model.CalendarResource','VIEW',1),(35,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(36,'com.liferay.calendar.model.Calendar','DELETE',2),(37,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(38,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(39,'com.liferay.calendar.model.Calendar','UPDATE',16),(40,'com.liferay.calendar.model.Calendar','VIEW',1),(41,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32),(42,'com.liferay.calendar','ADD_RESOURCE',2),(43,'com.liferay.calendar','PERMISSIONS',4),(44,'com.liferay.calendar.model.CalendarBooking','ADD_DISCUSSION',2),(45,'com.liferay.calendar.model.CalendarBooking','DELETE_DISCUSSION',4),(46,'com.liferay.calendar.model.CalendarBooking','PERMISSIONS',8),(47,'com.liferay.calendar.model.CalendarBooking','UPDATE_DISCUSSION',16),(48,'4_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(49,'4_WAR_opensocialportlet','CONFIGURATION',4),(50,'4_WAR_opensocialportlet','VIEW',1),(51,'4_WAR_opensocialportlet','PERMISSIONS',8),(52,'2_WAR_opensocialportlet','ADD_TO_PAGE',2),(53,'2_WAR_opensocialportlet','CONFIGURATION',4),(54,'2_WAR_opensocialportlet','VIEW',1),(55,'2_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',8),(56,'2_WAR_opensocialportlet','PERMISSIONS',16),(57,'1_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(58,'1_WAR_opensocialportlet','CONFIGURATION',4),(59,'1_WAR_opensocialportlet','VIEW',1),(60,'1_WAR_opensocialportlet','PERMISSIONS',8),(61,'com.liferay.opensocial.model.Gadget','DELETE',2),(62,'com.liferay.opensocial.model.Gadget','PERMISSIONS',4),(63,'com.liferay.opensocial.model.Gadget','UPDATE',8),(64,'com.liferay.opensocial.model.Gadget','VIEW',1),(65,'com.liferay.opensocial','PERMISSIONS',2),(66,'com.liferay.opensocial','PUBLISH_GADGET',4),(67,'3_WAR_opensocialportlet','ADD_TO_PAGE',2),(68,'3_WAR_opensocialportlet','CONFIGURATION',4),(69,'3_WAR_opensocialportlet','VIEW',1),(70,'3_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',8),(71,'3_WAR_opensocialportlet','PERMISSIONS',16),(72,'1_WAR_webformportlet','VIEW',1),(73,'1_WAR_webformportlet','ADD_TO_PAGE',2),(74,'1_WAR_webformportlet','ACCESS_IN_CONTROL_PANEL',4),(75,'1_WAR_webformportlet','CONFIGURATION',8),(76,'1_WAR_webformportlet','PERMISSIONS',16);
/*!40000 ALTER TABLE `ResourceAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlock`
--

DROP TABLE IF EXISTS `ResourceBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlock`
--

LOCK TABLES `ResourceBlock` WRITE;
/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlockPermission`
--

DROP TABLE IF EXISTS `ResourceBlockPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`),
  KEY `IX_20A2E3D9` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlockPermission`
--

LOCK TABLES `ResourceBlockPermission` WRITE;
/*!40000 ALTER TABLE `ResourceBlockPermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceBlockPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourcePermission`
--

DROP TABLE IF EXISTS `ResourcePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourcePermission`
--

LOCK TABLES `ResourcePermission` WRITE;
/*!40000 ALTER TABLE `ResourcePermission` DISABLE KEYS */;
INSERT INTO `ResourcePermission` VALUES (1,10154,'2',1,'10154',10165,0,2),(2,10154,'140',1,'10154',10165,0,2),(3,10154,'158',1,'10154',10165,0,6),(4,10154,'153',1,'10154',10165,0,6),(5,10154,'com.liferay.portal.model.Layout',4,'10175',10163,10158,1023),(6,10154,'com.liferay.portal.model.Layout',4,'10175',10170,0,19),(7,10154,'com.liferay.portal.model.Layout',4,'10175',10162,0,1),(11,10154,'98',2,'10191',10165,0,1),(12,10154,'66',2,'10191',10165,0,1),(13,10154,'180',2,'10191',10165,0,1),(14,10154,'27',2,'10191',10165,0,1),(15,10154,'152',2,'10191',10165,0,1),(16,10154,'183',2,'10191',10165,0,1),(17,10154,'134',2,'10191',10165,0,1),(18,10154,'130',2,'10191',10165,0,1),(19,10154,'122',2,'10191',10165,0,1),(20,10154,'36',2,'10191',10165,0,1),(21,10154,'26',2,'10191',10165,0,1),(22,10154,'175',2,'10191',10165,0,1),(23,10154,'153',2,'10191',10165,0,1),(24,10154,'64',2,'10191',10165,0,1),(25,10154,'129',2,'10191',10165,0,1),(26,10154,'182',2,'10191',10165,0,1),(27,10154,'179',2,'10191',10165,0,1),(28,10154,'173',2,'10191',10165,0,1),(29,10154,'100',2,'10191',10165,0,1),(30,10154,'19',2,'10191',10165,0,1),(31,10154,'157',2,'10191',10165,0,1),(32,10154,'128',2,'10191',10165,0,1),(33,10154,'181',2,'10191',10165,0,1),(34,10154,'154',2,'10191',10165,0,1),(35,10154,'148',2,'10191',10165,0,1),(36,10154,'11',2,'10191',10165,0,1),(37,10154,'29',2,'10191',10165,0,1),(38,10154,'158',2,'10191',10165,0,1),(39,10154,'178',2,'10191',10165,0,1),(40,10154,'58',2,'10191',10165,0,1),(41,10154,'71',2,'10191',10165,0,1),(42,10154,'97',2,'10191',10165,0,1),(43,10154,'39',2,'10191',10165,0,1),(44,10154,'85',2,'10191',10165,0,1),(45,10154,'118',2,'10191',10165,0,1),(46,10154,'107',2,'10191',10165,0,1),(47,10154,'30',2,'10191',10165,0,1),(48,10154,'184',2,'10191',10165,0,1),(49,10154,'147',2,'10191',10165,0,1),(50,10154,'48',2,'10191',10165,0,1),(51,10154,'125',2,'10191',10165,0,1),(52,10154,'161',2,'10191',10165,0,1),(53,10154,'146',2,'10191',10165,0,1),(54,10154,'62',2,'10191',10165,0,1),(55,10154,'162',2,'10191',10165,0,1),(56,10154,'176',2,'10191',10165,0,1),(57,10154,'108',2,'10191',10165,0,1),(58,10154,'187',2,'10191',10165,0,1),(59,10154,'84',2,'10191',10165,0,1),(60,10154,'101',2,'10191',10165,0,1),(61,10154,'121',2,'10191',10165,0,1),(62,10154,'143',2,'10191',10165,0,1),(63,10154,'77',2,'10191',10165,0,1),(64,10154,'167',2,'10191',10165,0,1),(65,10154,'115',2,'10191',10165,0,1),(66,10154,'56',2,'10191',10165,0,1),(67,10154,'16',2,'10191',10165,0,1),(68,10154,'3',2,'10191',10165,0,1),(69,10154,'23',2,'10191',10165,0,1),(70,10154,'20',2,'10191',10165,0,1),(71,10154,'83',2,'10191',10165,0,1),(72,10154,'99',2,'10191',10165,0,1),(73,10154,'186',2,'10191',10165,0,1),(74,10154,'194',2,'10191',10165,0,1),(75,10154,'70',2,'10191',10165,0,1),(76,10154,'164',2,'10191',10165,0,1),(77,10154,'141',2,'10191',10165,0,1),(78,10154,'9',2,'10191',10165,0,1),(79,10154,'28',2,'10191',10165,0,1),(80,10154,'137',2,'10191',10165,0,1),(81,10154,'47',2,'10191',10165,0,1),(82,10154,'15',2,'10191',10165,0,1),(83,10154,'116',2,'10191',10165,0,1),(84,10154,'82',2,'10191',10165,0,1),(85,10154,'151',2,'10191',10165,0,1),(86,10154,'54',2,'10191',10165,0,1),(87,10154,'34',2,'10191',10165,0,1),(88,10154,'169',2,'10191',10165,0,1),(89,10154,'132',2,'10191',10165,0,1),(90,10154,'61',2,'10191',10165,0,1),(91,10154,'73',2,'10191',10165,0,1),(92,10154,'31',2,'10191',10165,0,1),(93,10154,'50',2,'10191',10165,0,1),(94,10154,'127',2,'10191',10165,0,1),(95,10154,'193',2,'10191',10165,0,1),(96,10154,'25',2,'10191',10165,0,1),(97,10154,'166',2,'10191',10165,0,1),(98,10154,'33',2,'10191',10165,0,1),(99,10154,'150',2,'10191',10165,0,1),(100,10154,'114',2,'10191',10165,0,1),(101,10154,'149',2,'10191',10165,0,1),(102,10154,'67',2,'10191',10165,0,1),(103,10154,'110',2,'10191',10165,0,1),(104,10154,'59',2,'10191',10165,0,1),(105,10154,'135',2,'10191',10165,0,1),(106,10154,'188',2,'10191',10165,0,1),(107,10154,'131',2,'10191',10165,0,1),(108,10154,'102',2,'10191',10165,0,1),(109,10154,'com.liferay.portal.model.Layout',2,'10191',10165,0,1),(110,10154,'com.liferay.portlet.blogs',2,'10191',10165,0,14),(111,10154,'98',2,'10191',10164,0,2),(112,10154,'152',2,'10191',10164,0,2),(113,10154,'183',2,'10191',10164,0,4),(114,10154,'182',2,'10191',10164,0,4),(115,10154,'179',2,'10191',10164,0,2),(116,10154,'173',2,'10191',10164,0,4),(117,10154,'154',2,'10191',10164,0,2),(118,10154,'178',2,'10191',10164,0,16),(119,10154,'147',2,'10191',10164,0,2),(120,10154,'161',2,'10191',10164,0,2),(121,10154,'162',2,'10191',10164,0,2),(122,10154,'167',2,'10191',10164,0,2),(123,10154,'20',2,'10191',10164,0,2),(124,10154,'99',2,'10191',10164,0,2),(125,10154,'28',2,'10191',10164,0,2),(126,10154,'15',2,'10191',10164,0,2),(127,10154,'25',2,'10191',10164,0,2),(128,10154,'com.liferay.portal.model.Group',2,'10191',10164,0,8396800),(129,10154,'com.liferay.portlet.asset',2,'10191',10164,0,30),(130,10154,'com.liferay.portlet.blogs',2,'10191',10164,0,14),(131,10154,'com.liferay.portlet.bookmarks',2,'10191',10164,0,31),(132,10154,'com.liferay.portlet.documentlibrary',2,'10191',10164,0,1023),(133,10154,'com.liferay.portlet.journal',2,'10191',10164,0,255),(134,10154,'com.liferay.portlet.messageboards',2,'10191',10164,0,2047),(135,10154,'com.liferay.portlet.polls',2,'10191',10164,0,6),(136,10154,'com.liferay.portlet.wiki',2,'10191',10164,0,6),(137,10154,'com.liferay.portal.model.User',4,'10198',10163,10198,31),(138,10154,'98',1,'10154',10164,0,4),(139,10154,'98',1,'10154',10165,0,4),(140,10154,'66',1,'10154',10164,0,2),(141,10154,'66',1,'10154',10165,0,2),(142,10154,'180',1,'10154',10162,0,2),(143,10154,'180',1,'10154',10164,0,2),(144,10154,'180',1,'10154',10165,0,2),(145,10154,'27',1,'10154',10164,0,2),(146,10154,'27',1,'10154',10165,0,2),(147,10154,'183',1,'10154',10161,0,2),(148,10154,'122',1,'10154',10162,0,8),(149,10154,'122',1,'10154',10164,0,8),(150,10154,'122',1,'10154',10165,0,8),(151,10154,'36',1,'10154',10164,0,4),(152,10154,'36',1,'10154',10165,0,4),(153,10154,'26',1,'10154',10164,0,2),(154,10154,'26',1,'10154',10165,0,2),(155,10154,'175',1,'10154',10162,0,2),(156,10154,'175',1,'10154',10164,0,2),(157,10154,'175',1,'10154',10165,0,2),(158,10154,'153',1,'10154',10164,0,4),(159,10154,'64',1,'10154',10162,0,2),(160,10154,'64',1,'10154',10164,0,2),(161,10154,'64',1,'10154',10165,0,2),(162,10154,'182',1,'10154',10164,0,2),(163,10154,'182',1,'10154',10165,0,2),(164,10154,'173',1,'10154',10162,0,2),(165,10154,'173',1,'10154',10164,0,2),(166,10154,'173',1,'10154',10165,0,2),(167,10154,'100',1,'10154',10164,0,2),(168,10154,'100',1,'10154',10165,0,2),(169,10154,'19',1,'10154',10164,0,2),(170,10154,'19',1,'10154',10165,0,2),(171,10154,'181',1,'10154',10162,0,2),(172,10154,'181',1,'10154',10164,0,2),(173,10154,'181',1,'10154',10165,0,2),(174,10154,'148',1,'10154',10162,0,2),(175,10154,'148',1,'10154',10164,0,2),(176,10154,'148',1,'10154',10165,0,2),(177,10154,'11',1,'10154',10164,0,2),(178,10154,'11',1,'10154',10165,0,2),(179,10154,'29',1,'10154',10164,0,2),(180,10154,'29',1,'10154',10165,0,2),(181,10154,'158',1,'10154',10164,0,4),(182,10154,'178',1,'10154',10164,0,4),(183,10154,'178',1,'10154',10165,0,4),(184,10154,'58',1,'10154',10162,0,2),(185,10154,'58',1,'10154',10164,0,2),(186,10154,'58',1,'10154',10165,0,2),(187,10154,'71',1,'10154',10162,0,2),(188,10154,'71',1,'10154',10164,0,2),(189,10154,'71',1,'10154',10165,0,2),(190,10154,'97',1,'10154',10164,0,2),(191,10154,'97',1,'10154',10165,0,2),(192,10154,'39',1,'10154',10164,0,2),(193,10154,'39',1,'10154',10165,0,2),(194,10154,'85',1,'10154',10162,0,2),(195,10154,'85',1,'10154',10164,0,2),(196,10154,'85',1,'10154',10165,0,2),(197,10154,'118',1,'10154',10162,0,2),(198,10154,'118',1,'10154',10164,0,2),(199,10154,'118',1,'10154',10165,0,2),(200,10154,'107',1,'10154',10164,0,2),(201,10154,'107',1,'10154',10165,0,2),(202,10154,'30',1,'10154',10164,0,2),(203,10154,'30',1,'10154',10165,0,2),(204,10154,'184',1,'10154',10162,0,2),(205,10154,'184',1,'10154',10164,0,2),(206,10154,'184',1,'10154',10165,0,2),(207,10154,'48',1,'10154',10164,0,2),(208,10154,'48',1,'10154',10165,0,2),(209,10154,'62',1,'10154',10164,0,2),(210,10154,'62',1,'10154',10165,0,2),(211,10154,'176',1,'10154',10161,0,2),(212,10154,'108',1,'10154',10164,0,2),(213,10154,'108',1,'10154',10165,0,2),(214,10154,'187',1,'10154',10164,0,2),(215,10154,'187',1,'10154',10165,0,2),(216,10154,'84',1,'10154',10164,0,4),(217,10154,'84',1,'10154',10165,0,4),(218,10154,'101',1,'10154',10162,0,4),(219,10154,'101',1,'10154',10164,0,4),(220,10154,'101',1,'10154',10165,0,4),(221,10154,'121',1,'10154',10162,0,2),(222,10154,'121',1,'10154',10164,0,2),(223,10154,'121',1,'10154',10165,0,2),(224,10154,'143',1,'10154',10162,0,2),(225,10154,'143',1,'10154',10164,0,2),(226,10154,'143',1,'10154',10165,0,2),(227,10154,'77',1,'10154',10162,0,2),(228,10154,'77',1,'10154',10164,0,2),(229,10154,'77',1,'10154',10165,0,2),(230,10154,'167',1,'10154',10164,0,4),(231,10154,'167',1,'10154',10165,0,4),(232,10154,'115',1,'10154',10162,0,2),(233,10154,'115',1,'10154',10164,0,2),(234,10154,'115',1,'10154',10165,0,2),(235,10154,'56',1,'10154',10162,0,2),(236,10154,'56',1,'10154',10164,0,2),(237,10154,'56',1,'10154',10165,0,2),(238,10154,'16',1,'10154',10164,0,8),(239,10154,'16',1,'10154',10165,0,8),(240,10154,'3',1,'10154',10162,0,2),(241,10154,'3',1,'10154',10164,0,2),(242,10154,'3',1,'10154',10165,0,2),(243,10154,'23',1,'10154',10164,0,2),(244,10154,'23',1,'10154',10165,0,2),(245,10154,'20',1,'10154',10162,0,8),(246,10154,'20',1,'10154',10164,0,8),(247,10154,'20',1,'10154',10165,0,8),(248,10154,'83',1,'10154',10164,0,4),(249,10154,'83',1,'10154',10165,0,4),(250,10154,'186',1,'10154',10164,0,2),(251,10154,'186',1,'10154',10165,0,2),(252,10154,'194',1,'10154',10162,0,2),(253,10154,'194',1,'10154',10164,0,2),(254,10154,'194',1,'10154',10165,0,2),(255,10154,'70',1,'10154',10164,0,2),(256,10154,'70',1,'10154',10165,0,2),(257,10154,'164',1,'10154',10162,0,2),(258,10154,'164',1,'10154',10164,0,2),(259,10154,'164',1,'10154',10165,0,2),(260,10154,'141',1,'10154',10162,0,8),(261,10154,'141',1,'10154',10164,0,8),(262,10154,'141',1,'10154',10165,0,8),(263,10154,'9',1,'10154',10161,0,2),(264,10154,'28',1,'10154',10164,0,4),(265,10154,'28',1,'10154',10165,0,4),(266,10154,'47',1,'10154',10162,0,2),(267,10154,'47',1,'10154',10164,0,2),(268,10154,'47',1,'10154',10165,0,2),(269,10154,'15',1,'10154',10164,0,4),(270,10154,'15',1,'10154',10165,0,4),(271,10154,'116',1,'10154',10162,0,2),(272,10154,'116',1,'10154',10164,0,2),(273,10154,'116',1,'10154',10165,0,2),(274,10154,'82',1,'10154',10162,0,2),(275,10154,'82',1,'10154',10164,0,2),(276,10154,'82',1,'10154',10165,0,2),(277,10154,'54',1,'10154',10164,0,2),(278,10154,'54',1,'10154',10165,0,2),(279,10154,'34',1,'10154',10164,0,2),(280,10154,'34',1,'10154',10165,0,2),(281,10154,'169',1,'10154',10164,0,2),(282,10154,'169',1,'10154',10165,0,2),(283,10154,'61',1,'10154',10164,0,2),(284,10154,'61',1,'10154',10165,0,2),(285,10154,'73',1,'10154',10162,0,2),(286,10154,'73',1,'10154',10164,0,2),(287,10154,'73',1,'10154',10165,0,2),(288,10154,'31',1,'10154',10162,0,2),(289,10154,'31',1,'10154',10164,0,2),(290,10154,'31',1,'10154',10165,0,2),(291,10154,'50',1,'10154',10162,0,2),(292,10154,'50',1,'10154',10164,0,2),(293,10154,'50',1,'10154',10165,0,2),(294,10154,'127',1,'10154',10161,0,2),(295,10154,'193',1,'10154',10162,0,2),(296,10154,'193',1,'10154',10164,0,2),(297,10154,'193',1,'10154',10165,0,2),(298,10154,'166',1,'10154',10164,0,4),(299,10154,'166',1,'10154',10165,0,4),(300,10154,'33',1,'10154',10162,0,4),(301,10154,'33',1,'10154',10164,0,4),(302,10154,'33',1,'10154',10165,0,4),(303,10154,'114',1,'10154',10162,0,2),(304,10154,'114',1,'10154',10164,0,2),(305,10154,'114',1,'10154',10165,0,2),(306,10154,'67',1,'10154',10164,0,2),(307,10154,'67',1,'10154',10165,0,2),(308,10154,'110',1,'10154',10164,0,2),(309,10154,'110',1,'10154',10165,0,2),(310,10154,'59',1,'10154',10164,0,2),(311,10154,'59',1,'10154',10165,0,2),(312,10154,'188',1,'10154',10164,0,2),(313,10154,'188',1,'10154',10165,0,2),(314,10154,'102',1,'10154',10162,0,2),(315,10154,'102',1,'10154',10164,0,2),(316,10154,'102',1,'10154',10165,0,2),(317,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10163,10158,15),(318,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10165,0,1),(319,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10162,0,1),(320,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10163,10158,15),(321,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10165,0,1),(322,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10162,0,1),(323,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10163,10158,15),(324,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10165,0,1),(325,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10162,0,1),(326,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10163,10158,15),(327,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10165,0,1),(328,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10162,0,1),(329,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10307',10163,10158,15),(330,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10307',10165,0,1),(331,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10307',10162,0,1),(332,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10310',10163,10158,15),(333,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10310',10165,0,1),(334,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10310',10162,0,1),(335,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10309',10163,10158,15),(336,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10309',10165,0,1),(337,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10309',10162,0,1),(338,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10312',10163,10158,15),(339,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10312',10165,0,1),(340,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10312',10162,0,1),(341,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10311',10163,10158,15),(342,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10311',10165,0,1),(343,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10311',10162,0,1),(344,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10314',10163,10158,15),(345,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10314',10165,0,1),(346,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10314',10162,0,1),(347,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10313',10163,10158,15),(348,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10313',10165,0,1),(349,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10313',10162,0,1),(350,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10316',10163,10158,15),(351,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10316',10165,0,1),(352,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10316',10162,0,1),(353,10154,'com.liferay.portal.model.LayoutPrototype',4,'10317',10163,10158,15),(354,10154,'com.liferay.portal.model.Layout',4,'10321',10163,10158,1023),(355,10154,'com.liferay.portal.model.Layout',4,'10321',10170,0,19),(356,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10325',10163,10158,15),(357,10154,'33',4,'10321_LAYOUT_33',10163,0,63),(358,10154,'33',4,'10321_LAYOUT_33',10170,0,1),(359,10154,'33',4,'10321_LAYOUT_33',10162,0,1),(360,10154,'com.liferay.portlet.blogs',4,'10318',10163,0,14),(361,10154,'148',4,'10321_LAYOUT_148_INSTANCE_HDPeBurgzkQu',10163,0,31),(362,10154,'148',4,'10321_LAYOUT_148_INSTANCE_HDPeBurgzkQu',10170,0,1),(363,10154,'148',4,'10321_LAYOUT_148_INSTANCE_HDPeBurgzkQu',10162,0,1),(364,10154,'114',4,'10321_LAYOUT_114',10163,0,31),(365,10154,'114',4,'10321_LAYOUT_114',10170,0,1),(366,10154,'114',4,'10321_LAYOUT_114',10162,0,1),(367,10154,'com.liferay.portal.model.LayoutPrototype',4,'10329',10163,10158,15),(368,10154,'com.liferay.portal.model.Layout',4,'10333',10163,10158,1023),(369,10154,'com.liferay.portal.model.Layout',4,'10333',10170,0,19),(370,10154,'141',4,'10333_LAYOUT_141_INSTANCE_hvqt5PdMQOIm',10163,0,63),(371,10154,'141',4,'10333_LAYOUT_141_INSTANCE_hvqt5PdMQOIm',10170,0,1),(372,10154,'141',4,'10333_LAYOUT_141_INSTANCE_hvqt5PdMQOIm',10162,0,1),(373,10154,'122',4,'10333_LAYOUT_122_INSTANCE_G4S1QeEcKmqs',10163,0,63),(374,10154,'122',4,'10333_LAYOUT_122_INSTANCE_G4S1QeEcKmqs',10170,0,1),(375,10154,'122',4,'10333_LAYOUT_122_INSTANCE_G4S1QeEcKmqs',10162,0,1),(376,10154,'3',4,'10333_LAYOUT_3',10163,0,31),(377,10154,'3',4,'10333_LAYOUT_3',10170,0,1),(378,10154,'3',4,'10333_LAYOUT_3',10162,0,1),(379,10154,'101',4,'10333_LAYOUT_101_INSTANCE_QADgVl6H3JHU',10163,0,127),(380,10154,'101',4,'10333_LAYOUT_101_INSTANCE_QADgVl6H3JHU',10170,0,17),(381,10154,'101',4,'10333_LAYOUT_101_INSTANCE_QADgVl6H3JHU',10162,0,1),(382,10154,'com.liferay.portal.model.LayoutPrototype',4,'10339',10163,10158,15),(383,10154,'com.liferay.portal.model.Layout',4,'10343',10163,10158,1023),(384,10154,'com.liferay.portal.model.Layout',4,'10343',10170,0,19),(385,10154,'36',4,'10343_LAYOUT_36',10163,0,63),(386,10154,'36',4,'10343_LAYOUT_36',10170,0,1),(387,10154,'36',4,'10343_LAYOUT_36',10162,0,1),(388,10154,'com.liferay.portlet.wiki',4,'10340',10163,0,6),(389,10154,'122',4,'10343_LAYOUT_122_INSTANCE_YA8FNzsUDMYS',10163,0,63),(390,10154,'122',4,'10343_LAYOUT_122_INSTANCE_YA8FNzsUDMYS',10170,0,1),(391,10154,'122',4,'10343_LAYOUT_122_INSTANCE_YA8FNzsUDMYS',10162,0,1),(392,10154,'141',4,'10343_LAYOUT_141_INSTANCE_RD9lIyK98VTT',10163,0,63),(393,10154,'141',4,'10343_LAYOUT_141_INSTANCE_RD9lIyK98VTT',10170,0,1),(394,10154,'141',4,'10343_LAYOUT_141_INSTANCE_RD9lIyK98VTT',10162,0,1),(395,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10350',10163,10158,15),(399,10154,'com.liferay.portal.model.Layout',4,'10362',10163,10158,1023),(400,10154,'com.liferay.portal.model.Layout',4,'10362',10170,0,19),(401,10154,'com.liferay.portal.model.Layout',4,'10362',10162,0,1),(402,10154,'19',4,'10362_LAYOUT_19',10163,0,31),(403,10154,'19',4,'10362_LAYOUT_19',10170,0,1),(404,10154,'19',4,'10362_LAYOUT_19',10162,0,1),(405,10154,'com.liferay.portlet.messageboards',4,'10351',10163,0,2047),(406,10154,'com.liferay.portlet.messageboards',4,'10351',10170,0,781),(407,10154,'com.liferay.portlet.messageboards',4,'10351',10162,0,1),(408,10154,'3',4,'10362_LAYOUT_3',10163,0,31),(409,10154,'3',4,'10362_LAYOUT_3',10170,0,1),(410,10154,'3',4,'10362_LAYOUT_3',10162,0,1),(411,10154,'59',4,'10362_LAYOUT_59_INSTANCE_rnf4z9Qy9bpa',10163,0,31),(412,10154,'59',4,'10362_LAYOUT_59_INSTANCE_rnf4z9Qy9bpa',10170,0,1),(413,10154,'59',4,'10362_LAYOUT_59_INSTANCE_rnf4z9Qy9bpa',10162,0,1),(414,10154,'com.liferay.portlet.polls',4,'10351',10163,0,6),(415,10154,'180',4,'10362_LAYOUT_180',10163,0,31),(416,10154,'180',4,'10362_LAYOUT_180',10170,0,1),(417,10154,'180',4,'10362_LAYOUT_180',10162,0,1),(418,10154,'101',4,'10362_LAYOUT_101_INSTANCE_Yl0U3EhoxNjf',10163,0,127),(419,10154,'101',4,'10362_LAYOUT_101_INSTANCE_Yl0U3EhoxNjf',10170,0,17),(420,10154,'101',4,'10362_LAYOUT_101_INSTANCE_Yl0U3EhoxNjf',10162,0,1),(421,10154,'com.liferay.portal.model.Layout',4,'10370',10163,10158,1023),(422,10154,'com.liferay.portal.model.Layout',4,'10370',10170,0,19),(423,10154,'com.liferay.portal.model.Layout',4,'10370',10162,0,1),(424,10154,'36',4,'10370_LAYOUT_36',10163,0,63),(425,10154,'36',4,'10370_LAYOUT_36',10170,0,1),(426,10154,'36',4,'10370_LAYOUT_36',10162,0,1),(427,10154,'com.liferay.portlet.wiki',4,'10351',10163,0,6),(428,10154,'122',4,'10370_LAYOUT_122_INSTANCE_LRzdF1RfF9Am',10163,0,63),(429,10154,'122',4,'10370_LAYOUT_122_INSTANCE_LRzdF1RfF9Am',10170,0,1),(430,10154,'122',4,'10370_LAYOUT_122_INSTANCE_LRzdF1RfF9Am',10162,0,1),(431,10154,'148',4,'10370_LAYOUT_148_INSTANCE_7Rm36Lc9K3s8',10163,0,31),(432,10154,'148',4,'10370_LAYOUT_148_INSTANCE_7Rm36Lc9K3s8',10170,0,1),(433,10154,'148',4,'10370_LAYOUT_148_INSTANCE_7Rm36Lc9K3s8',10162,0,1),(434,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10376',10163,10158,15),(438,10154,'com.liferay.portal.model.Layout',4,'10388',10163,10158,1023),(439,10154,'com.liferay.portal.model.Layout',4,'10388',10170,0,19),(440,10154,'com.liferay.portal.model.Layout',4,'10388',10162,0,1),(441,10154,'116',4,'10388_LAYOUT_116',10163,0,31),(442,10154,'116',4,'10388_LAYOUT_116',10170,0,1),(443,10154,'116',4,'10388_LAYOUT_116',10162,0,1),(444,10154,'3',4,'10388_LAYOUT_3',10163,0,31),(445,10154,'3',4,'10388_LAYOUT_3',10170,0,1),(446,10154,'3',4,'10388_LAYOUT_3',10162,0,1),(447,10154,'82',4,'10388_LAYOUT_82',10163,0,31),(448,10154,'82',4,'10388_LAYOUT_82',10170,0,1),(449,10154,'82',4,'10388_LAYOUT_82',10162,0,1),(450,10154,'101',4,'10388_LAYOUT_101_INSTANCE_K5p2STUphzgl',10163,0,127),(451,10154,'101',4,'10388_LAYOUT_101_INSTANCE_K5p2STUphzgl',10170,0,17),(452,10154,'101',4,'10388_LAYOUT_101_INSTANCE_K5p2STUphzgl',10162,0,1),(453,10154,'com.liferay.portal.model.Layout',4,'10397',10163,10158,1023),(454,10154,'com.liferay.portal.model.Layout',4,'10397',10170,0,19),(455,10154,'com.liferay.portal.model.Layout',4,'10397',10162,0,1),(456,10154,'20',4,'10397_LAYOUT_20',10163,0,63),(457,10154,'20',4,'10397_LAYOUT_20',10170,0,1),(458,10154,'20',4,'10397_LAYOUT_20',10162,0,1),(459,10154,'com.liferay.portlet.documentlibrary',4,'10377',10163,0,1023),(460,10154,'com.liferay.portlet.documentlibrary',4,'10377',10170,0,331),(461,10154,'com.liferay.portlet.documentlibrary',4,'10377',10162,0,1),(462,10154,'101',4,'10397_LAYOUT_101_INSTANCE_ivHtfPHhk3Tt',10163,0,127),(463,10154,'101',4,'10397_LAYOUT_101_INSTANCE_ivHtfPHhk3Tt',10170,0,17),(464,10154,'101',4,'10397_LAYOUT_101_INSTANCE_ivHtfPHhk3Tt',10162,0,1),(465,10154,'com.liferay.portal.model.Layout',4,'10405',10163,10158,1023),(466,10154,'com.liferay.portal.model.Layout',4,'10405',10170,0,19),(467,10154,'com.liferay.portal.model.Layout',4,'10405',10162,0,1),(468,10154,'39',4,'10405_LAYOUT_39_INSTANCE_mCI145l59uzA',10163,0,31),(469,10154,'39',4,'10405_LAYOUT_39_INSTANCE_mCI145l59uzA',10170,0,1),(470,10154,'39',4,'10405_LAYOUT_39_INSTANCE_mCI145l59uzA',10162,0,1),(471,10154,'39',4,'10405_LAYOUT_39_INSTANCE_1fwBNR3HCs9p',10163,0,31),(472,10154,'39',4,'10405_LAYOUT_39_INSTANCE_1fwBNR3HCs9p',10170,0,1),(473,10154,'39',4,'10405_LAYOUT_39_INSTANCE_1fwBNR3HCs9p',10162,0,1),(480,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10419',10163,10158,15),(481,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10421',10163,10158,15),(482,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10424',10163,10158,15),(483,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10426',10163,10158,15),(484,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10428',10163,10158,15),(485,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10430',10163,10158,15),(486,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10432',10163,10158,15),(487,10154,'com.liferay.portal.model.User',4,'10434',10163,10434,31),(488,10154,'com.liferay.portal.model.Organization',4,'10441',10163,10158,2047),(489,10154,'com.liferay.portal.model.Layout',4,'10445',10163,10158,1023),(490,10154,'com.liferay.portal.model.Layout',4,'10445',10170,0,19),(491,10154,'com.liferay.portal.model.Layout',4,'10445',10162,0,1),(492,10154,'com.liferay.portal.model.Layout',4,'10451',10163,10158,1023),(493,10154,'com.liferay.portal.model.Layout',4,'10451',10170,0,19),(494,10154,'com.liferay.portal.model.Organization',4,'10457',10163,10158,2047),(495,10154,'com.liferay.portal.model.User',4,'10461',10163,10461,31),(496,10154,'com.liferay.portal.model.User',4,'10468',10163,10468,31),(497,10154,'com.liferay.portal.model.User',4,'10475',10163,10475,31),(498,10154,'com.liferay.portal.model.User',4,'10482',10163,10482,31),(499,10154,'com.liferay.portal.model.User',4,'10489',10163,10489,31),(500,10154,'com.liferay.portal.model.User',4,'10496',10163,10496,31),(501,10154,'com.liferay.portal.model.User',4,'10503',10163,10503,31),(502,10154,'com.liferay.portal.model.User',4,'10510',10163,10510,31),(503,10154,'com.liferay.portal.model.User',4,'10517',10163,10517,31),(504,10154,'com.liferay.portal.model.User',4,'10524',10163,10524,31),(505,10154,'com.liferay.portal.model.Organization',4,'10531',10163,10158,2047),(506,10154,'com.liferay.portal.model.Organization',4,'10535',10163,10158,2047),(507,10154,'com.liferay.portal.model.User',4,'10539',10163,10539,31),(508,10154,'com.liferay.portal.model.User',4,'10546',10163,10546,31),(509,10154,'com.liferay.portal.model.User',4,'10553',10163,10553,31),(510,10154,'com.liferay.portal.model.User',4,'10560',10163,10560,31),(511,10154,'com.liferay.portal.model.User',4,'10567',10163,10567,31),(512,10154,'com.liferay.portal.model.User',4,'10574',10163,10574,31),(513,10154,'com.liferay.portal.model.User',4,'10581',10163,10581,31),(514,10154,'com.liferay.portal.model.User',4,'10588',10163,10588,31),(515,10154,'com.liferay.portal.model.User',4,'10595',10163,10595,31),(516,10154,'com.liferay.portal.model.User',4,'10602',10163,10602,31),(517,10154,'com.liferay.portal.model.Organization',4,'10609',10163,10158,2047),(518,10154,'com.liferay.portal.model.Organization',4,'10613',10163,10158,2047),(519,10154,'com.liferay.portal.model.User',4,'10617',10163,10617,31),(520,10154,'com.liferay.portal.model.User',4,'10624',10163,10624,31),(521,10154,'com.liferay.portal.model.User',4,'10631',10163,10631,31),(522,10154,'com.liferay.portal.model.User',4,'10638',10163,10638,31),(523,10154,'com.liferay.portal.model.User',4,'10645',10163,10645,31),(524,10154,'com.liferay.portal.model.User',4,'10652',10163,10652,31),(525,10154,'com.liferay.portal.model.User',4,'10659',10163,10659,31),(526,10154,'com.liferay.portal.model.User',4,'10666',10163,10666,31),(527,10154,'com.liferay.portal.model.User',4,'10673',10163,10673,31),(528,10154,'com.liferay.portal.model.User',4,'10680',10163,10680,31),(529,10154,'com.liferay.portal.model.Organization',4,'10687',10163,10158,2047),(530,10154,'com.liferay.portal.model.User',4,'10691',10163,10691,31),(531,10154,'com.liferay.portal.model.User',4,'10698',10163,10698,31),(532,10154,'com.liferay.portal.model.User',4,'10705',10163,10705,31),(533,10154,'com.liferay.portal.model.User',4,'10712',10163,10712,31),(534,10154,'com.liferay.portal.model.User',4,'10719',10163,10719,31),(535,10154,'com.liferay.portal.model.User',4,'10726',10163,10726,31),(536,10154,'com.liferay.portal.model.User',4,'10733',10163,10733,31),(537,10154,'com.liferay.portal.model.User',4,'10740',10163,10740,31),(538,10154,'com.liferay.portal.model.User',4,'10747',10163,10747,31),(539,10154,'com.liferay.portal.model.User',4,'10754',10163,10754,31),(540,10154,'com.liferay.portal.model.Organization',4,'10761',10163,10158,2047),(541,10154,'com.liferay.portal.model.User',4,'10765',10163,10765,31),(542,10154,'com.liferay.portal.model.User',4,'10772',10163,10772,31),(543,10154,'com.liferay.portal.model.User',4,'10779',10163,10779,31),(544,10154,'com.liferay.portal.model.User',4,'10786',10163,10786,31),(545,10154,'com.liferay.portal.model.User',4,'10793',10163,10793,31),(546,10154,'com.liferay.portal.model.User',4,'10800',10163,10800,31),(547,10154,'com.liferay.portal.model.User',4,'10807',10163,10807,31),(548,10154,'com.liferay.portal.model.User',4,'10814',10163,10814,31),(549,10154,'com.liferay.portal.model.User',4,'10821',10163,10821,31),(550,10154,'com.liferay.portal.model.User',4,'10828',10163,10828,31),(551,10154,'com.liferay.portal.model.Organization',4,'10835',10163,10158,2047),(552,10154,'com.liferay.portal.model.User',4,'10839',10163,10839,31),(553,10154,'com.liferay.portal.model.User',4,'10846',10163,10846,31),(554,10154,'com.liferay.portal.model.User',4,'10853',10163,10853,31),(555,10154,'com.liferay.portal.model.User',4,'10860',10163,10860,31),(556,10154,'com.liferay.portal.model.User',4,'10867',10163,10867,31),(557,10154,'com.liferay.portal.model.User',4,'10874',10163,10874,31),(558,10154,'com.liferay.portal.model.User',4,'10881',10163,10881,31),(559,10154,'com.liferay.portal.model.User',4,'10888',10163,10888,31),(560,10154,'com.liferay.portal.model.User',4,'10895',10163,10895,31),(561,10154,'com.liferay.portal.model.User',4,'10902',10163,10902,31),(562,10154,'com.liferay.portal.model.Organization',4,'10909',10163,10158,2047),(563,10154,'com.liferay.portal.model.User',4,'10913',10163,10913,31),(564,10154,'com.liferay.portal.model.User',4,'10920',10163,10920,31),(565,10154,'com.liferay.portal.model.User',4,'10927',10163,10927,31),(566,10154,'com.liferay.portal.model.User',4,'10934',10163,10934,31),(567,10154,'com.liferay.portal.model.User',4,'10941',10163,10941,31),(568,10154,'com.liferay.portal.model.User',4,'10948',10163,10948,31),(569,10154,'com.liferay.portal.model.User',4,'10955',10163,10955,31),(570,10154,'com.liferay.portal.model.User',4,'10962',10163,10962,31),(571,10154,'com.liferay.portal.model.User',4,'10969',10163,10969,31),(572,10154,'com.liferay.portal.model.User',4,'10976',10163,10976,31),(573,10154,'com.liferay.portal.model.Organization',4,'10983',10163,10158,2047),(574,10154,'com.liferay.portal.model.Organization',4,'10987',10163,10158,2047),(575,10154,'com.liferay.portal.model.User',4,'10991',10163,10991,31),(576,10154,'com.liferay.portal.model.User',4,'10998',10163,10998,31),(577,10154,'com.liferay.portal.model.User',4,'11005',10163,11005,31),(578,10154,'com.liferay.portal.model.User',4,'11012',10163,11012,31),(579,10154,'com.liferay.portal.model.User',4,'11019',10163,11019,31),(580,10154,'com.liferay.portal.model.User',4,'11026',10163,11026,31),(581,10154,'com.liferay.portal.model.User',4,'11033',10163,11033,31),(582,10154,'com.liferay.portal.model.User',4,'11040',10163,11040,31),(583,10154,'com.liferay.portal.model.User',4,'11047',10163,11047,31),(584,10154,'com.liferay.portal.model.User',4,'11054',10163,11054,31),(585,10154,'com.liferay.portal.model.Organization',4,'11061',10163,10158,2047),(586,10154,'com.liferay.portal.model.User',4,'11065',10163,11065,31),(587,10154,'com.liferay.portal.model.User',4,'11072',10163,11072,31),(588,10154,'com.liferay.portal.model.User',4,'11079',10163,11079,31),(589,10154,'com.liferay.portal.model.User',4,'11086',10163,11086,31),(590,10154,'com.liferay.portal.model.User',4,'11093',10163,11093,31),(591,10154,'com.liferay.portal.model.User',4,'11100',10163,11100,31),(592,10154,'com.liferay.portal.model.User',4,'11107',10163,11107,31),(593,10154,'com.liferay.portal.model.User',4,'11114',10163,11114,31),(594,10154,'com.liferay.portal.model.User',4,'11121',10163,11121,31),(595,10154,'com.liferay.portal.model.User',4,'11128',10163,11128,31),(596,10154,'com.liferay.portal.model.Organization',4,'11135',10163,10158,2047),(597,10154,'com.liferay.portal.model.Organization',4,'11139',10163,10158,2047),(598,10154,'com.liferay.portal.model.User',4,'11143',10163,11143,31),(599,10154,'com.liferay.portal.model.User',4,'11150',10163,11150,31),(600,10154,'com.liferay.portal.model.User',4,'11157',10163,11157,31),(601,10154,'com.liferay.portal.model.User',4,'11164',10163,11164,31),(602,10154,'com.liferay.portal.model.User',4,'11171',10163,11171,31),(603,10154,'com.liferay.portal.model.User',4,'11178',10163,11178,31),(604,10154,'com.liferay.portal.model.User',4,'11185',10163,11185,31),(605,10154,'com.liferay.portal.model.User',4,'11192',10163,11192,31),(606,10154,'com.liferay.portal.model.User',4,'11199',10163,11199,31),(607,10154,'com.liferay.portal.model.User',4,'11206',10163,11206,31),(608,10154,'com.liferay.portal.model.Organization',4,'11213',10163,10158,2047),(609,10154,'com.liferay.portal.model.Layout',4,'11217',10163,10434,1023),(610,10154,'com.liferay.portal.model.Layout',4,'11223',10163,10434,1023),(611,10154,'com.liferay.portal.model.Layout',4,'11223',10164,0,19),(612,10154,'com.liferay.portal.model.Layout',4,'11223',10162,0,1),(613,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'11235',10163,0,15),(614,10154,'1_WAR_notificationsportlet',1,'10154',10161,0,2),(615,10154,'1_WAR_notificationsportlet',1,'10154',10162,0,2),(616,10154,'1_WAR_notificationsportlet',1,'10154',10164,0,2),(617,10154,'1_WAR_notificationsportlet',1,'10154',10165,0,2),(618,10154,'1_WAR_calendarportlet',1,'10154',10161,0,4),(619,10154,'1_WAR_calendarportlet',1,'10154',10162,0,4),(620,10154,'1_WAR_calendarportlet',1,'10154',10164,0,4),(621,10154,'1_WAR_calendarportlet',1,'10154',10165,0,4),(622,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11261',10163,10158,255),(623,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11261',10170,0,3),(624,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11261',10162,0,3),(625,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11276',10163,10158,255),(626,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11276',10170,0,3),(627,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11276',10162,0,3),(628,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11290',10163,10158,255),(629,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11290',10170,0,3),(630,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11290',10162,0,3),(631,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11303',10163,10158,255),(632,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11303',10170,0,3),(633,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11303',10162,0,3),(634,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11317',10163,10158,255),(635,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11317',10170,0,3),(636,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11317',10162,0,3),(637,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11332',10163,10158,255),(638,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11332',10170,0,3),(639,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'11332',10162,0,3),(640,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'11351',10163,10158,255),(641,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'11351',10170,0,3),(642,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'11351',10162,0,3),(643,10154,'com.liferay.portal.model.Layout',4,'11362',10163,10158,1023),(644,10154,'com.liferay.portal.model.Layout',4,'11362',10170,0,19),(645,10154,'com.liferay.portal.model.Layout',4,'11362',10162,0,1),(646,10154,'2_WAR_opensocialportlet',1,'10154',10161,0,2),(647,10154,'2_WAR_opensocialportlet',1,'10154',10162,0,2),(648,10154,'2_WAR_opensocialportlet',1,'10154',10164,0,2),(649,10154,'2_WAR_opensocialportlet',1,'10154',10165,0,2),(650,10154,'3_WAR_opensocialportlet',1,'10154',10161,0,2),(651,10154,'3_WAR_opensocialportlet',1,'10154',10162,0,2),(652,10154,'3_WAR_opensocialportlet',1,'10154',10164,0,2),(653,10154,'3_WAR_opensocialportlet',1,'10154',10165,0,2),(654,10154,'1_WAR_webformportlet',1,'10154',10161,0,2),(655,10154,'1_WAR_webformportlet',1,'10154',10162,0,2),(656,10154,'1_WAR_webformportlet',1,'10154',10164,0,2),(657,10154,'1_WAR_webformportlet',1,'10154',10165,0,2),(658,10154,'145',4,'11217_LAYOUT_145',10163,0,31),(659,10154,'145',4,'11217_LAYOUT_145',10164,0,1),(660,10154,'58',4,'11217_LAYOUT_58',10163,0,31),(661,10154,'58',4,'11217_LAYOUT_58',10164,0,1),(662,10154,'58',4,'11362_LAYOUT_58',10163,0,31),(663,10154,'58',4,'11362_LAYOUT_58',10170,0,1),(664,10154,'56',4,'11362_LAYOUT_56_INSTANCE_nzQEh4uYjuQZ',10163,0,31),(665,10154,'58',4,'11362_LAYOUT_58',10162,0,1),(666,10154,'56',4,'11362_LAYOUT_56_INSTANCE_nzQEh4uYjuQZ',10170,0,1),(667,10154,'56',4,'11362_LAYOUT_56_INSTANCE_nzQEh4uYjuQZ',10162,0,1),(668,10154,'145',4,'11362_LAYOUT_145',10163,0,31),(669,10154,'145',4,'11362_LAYOUT_145',10170,0,1),(670,10154,'145',4,'11362_LAYOUT_145',10162,0,1),(671,10154,'2_WAR_notificationsportlet',4,'11362_LAYOUT_2_WAR_notificationsportlet',10163,0,31),(672,10154,'2_WAR_notificationsportlet',4,'11362_LAYOUT_2_WAR_notificationsportlet',10170,0,1),(673,10154,'2_WAR_notificationsportlet',4,'11362_LAYOUT_2_WAR_notificationsportlet',10162,0,1),(674,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'11437',10163,10158,15),(675,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'11439',10163,10434,31),(676,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'11439',10170,0,3),(677,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'11439',10162,0,1),(678,10154,'49',4,'11362_LAYOUT_49',10163,0,31),(679,10154,'49',4,'11362_LAYOUT_49',10170,0,1),(680,10154,'49',4,'11362_LAYOUT_49',10162,0,1),(681,10154,'23',4,'11217_LAYOUT_23',10163,0,31),(682,10154,'11',4,'11217_LAYOUT_11',10163,0,31),(683,10154,'82',4,'11217_LAYOUT_82',10163,0,31),(684,10154,'23',4,'11217_LAYOUT_23',10164,0,1),(685,10154,'29',4,'11217_LAYOUT_29',10163,0,31),(686,10154,'82',4,'11217_LAYOUT_82',10164,0,1),(687,10154,'29',4,'11217_LAYOUT_29',10164,0,1),(688,10154,'2_WAR_notificationsportlet',4,'11217_LAYOUT_2_WAR_notificationsportlet',10163,0,31),(689,10154,'2_WAR_notificationsportlet',4,'11217_LAYOUT_2_WAR_notificationsportlet',10164,0,1);
/*!40000 ALTER TABLE `ResourcePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceTypePermission`
--

DROP TABLE IF EXISTS `ResourceTypePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceTypePermission`
--

LOCK TABLES `ResourceTypePermission` WRITE;
/*!40000 ALTER TABLE `ResourceTypePermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceTypePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_F92B66E6` (`type_`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_26DB26C5` (`uuid_`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_`
--

LOCK TABLES `Role_` WRITE;
/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` VALUES ('896c34a0-9b48-4d49-abd5-dadc8718942c',10161,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10161,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('32a29644-e753-47d3-ae09-760087498723',10162,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10162,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('fb28f6c2-b6cf-4de1-8f78-c0012b6ce201',10163,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10163,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('0d302830-b921-44ed-83af-7bab05ed3622',10164,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10164,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('09dc9d65-074a-4bed-bdf3-84e3ba3b9376',10165,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10165,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('be84fabe-23ca-44ae-834c-4907438aaac4',10166,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10166,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('3333c9be-0a8c-4415-9e7b-a5dcaba18280',10167,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10167,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('11e8e48d-0606-49b7-b881-a9e0f9809dd4',10168,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10168,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('b96a8304-f2d9-49f9-b1e0-4e6993ce0f65',10169,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10169,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('a3b18106-1e1b-44d3-9099-c9d9bc2a9dfd',10170,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10170,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('d65b49f5-54e5-4712-ba14-54e7ad30c5ce',10171,10154,10158,'','2015-01-06 08:51:28','2015-01-06 08:51:28',10004,10171,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),('c4d99b2d-680e-43cd-94a4-8dd5465b2945',11409,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',10004,11409,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),('f622428f-9d42-428e-b4c1-3e2a82c2f91d',11411,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',10004,11411,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),('373ba802-b75d-49d8-b4e3-cfb63e08eacb',11413,10154,10158,'','2015-01-06 08:55:15','2015-01-06 08:55:15',10004,11413,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersi_SCProductVers`
--

DROP TABLE IF EXISTS `SCFrameworkVersi_SCProductVers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersi_SCProductVers`
--

LOCK TABLES `SCFrameworkVersi_SCProductVers` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersion`
--

DROP TABLE IF EXISTS `SCFrameworkVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersion`
--

LOCK TABLES `SCFrameworkVersion` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicense`
--

DROP TABLE IF EXISTS `SCLicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicense`
--

LOCK TABLES `SCLicense` WRITE;
/*!40000 ALTER TABLE `SCLicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicenses_SCProductEntries`
--

DROP TABLE IF EXISTS `SCLicenses_SCProductEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicenses_SCProductEntries`
--

LOCK TABLES `SCLicenses_SCProductEntries` WRITE;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductEntry`
--

DROP TABLE IF EXISTS `SCProductEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductEntry`
--

LOCK TABLES `SCProductEntry` WRITE;
/*!40000 ALTER TABLE `SCProductEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductScreenshot`
--

DROP TABLE IF EXISTS `SCProductScreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductScreenshot`
--

LOCK TABLES `SCProductScreenshot` WRITE;
/*!40000 ALTER TABLE `SCProductScreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductScreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductVersion`
--

DROP TABLE IF EXISTS `SCProductVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(767)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductVersion`
--

LOCK TABLES `SCProductVersion` WRITE;
/*!40000 ALTER TABLE `SCProductVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceComponent`
--

DROP TABLE IF EXISTS `ServiceComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceComponent`
--

LOCK TABLES `ServiceComponent` WRITE;
/*!40000 ALTER TABLE `ServiceComponent` DISABLE KEYS */;
INSERT INTO `ServiceComponent` VALUES (11232,'Marketplace',3,1371580382539,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	title VARCHAR(75) null,\n	description STRING null,\n	category VARCHAR(75) null,\n	iconURL STRING null,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);\ncreate index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\ncreate index IX_A7807DA7 on Marketplace_App (uuid_, companyId);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),(11242,'Calendar',1,1359464855450,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	color INTEGER,\n	defaultCalendar BOOLEAN,\n	enableComments BOOLEAN,\n	enableRatings BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	title STRING null,\n	description STRING null,\n	location STRING null,\n	startTime LONG,\n	endTime LONG,\n	allDay BOOLEAN,\n	recurrence STRING null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarNotificationTemplate (\n	uuid_ VARCHAR(75) null,\n	calendarNotificationTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	notificationType VARCHAR(75) null,\n	notificationTypeSettings VARCHAR(75) null,\n	notificationTemplateType VARCHAR(75) null,\n	subject VARCHAR(75) null,\n	body TEXT null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_470170B4 on CalendarBooking (calendarId, status);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_22DFDB49 on CalendarBooking (resourceBlockId);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);\ncreate index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);\ncreate index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);\ncreate index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);\ncreate unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_2C5184D4 on CalendarResource (companyId, name, active_);\ncreate index IX_1243D698 on CalendarResource (groupId);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_B9EA8C92 on CalendarResource (groupId, name, active_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(11245,'Sync',1,1368486568278,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SyncDLObject (\n	objectId LONG not null primary key,\n	companyId LONG,\n	createTime LONG,\n	modifiedTime LONG,\n	repositoryId LONG,\n	parentFolderId LONG,\n	name VARCHAR(255) null,\n	extension VARCHAR(75) null,\n	mimeType VARCHAR(75) null,\n	description STRING null,\n	changeLog VARCHAR(75) null,\n	extraSettings TEXT null,\n	version VARCHAR(75) null,\n	size_ LONG,\n	checksum VARCHAR(75) null,\n	event VARCHAR(75) null,\n	lockExpirationDate DATE null,\n	lockUserId LONG,\n	lockUserName VARCHAR(75) null,\n	type_ VARCHAR(75) null,\n	typePK LONG,\n	typeUuid VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_7F996123 on SyncDLObject (companyId, modifiedTime, repositoryId);\ncreate unique index IX_69ADEDD1 on SyncDLObject (typePK);]]></indexes-sql>\n</data>'),(11274,'OpenSocial',4,1343264401607,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OpenSocial_Gadget (\n	uuid_ VARCHAR(75) null,\n	gadgetId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	portletCategoryNames STRING null\n);\n\ncreate table OpenSocial_OAuthConsumer (\n	oAuthConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret TEXT null,\n	keyType VARCHAR(75) null\n);\n\ncreate table OpenSocial_OAuthToken (\n	oAuthTokenId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	moduleId LONG,\n	accessToken VARCHAR(75) null,\n	tokenName VARCHAR(75) null,\n	tokenSecret VARCHAR(75) null,\n	sessionHandle VARCHAR(75) null,\n	expiration LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);\ncreate unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);\ncreate index IX_E1F8627A on OpenSocial_Gadget (uuid_);\ncreate index IX_3C79316E on OpenSocial_Gadget (uuid_, companyId);\n\ncreate index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);\ncreate index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);\n\ncreate index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);\ncreate index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>\n</data>'),(11391,'Kaleo',6,1378393571274,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts VARCHAR(75) null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ TEXT null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null,\n	assigneeScriptRequiredContexts VARCHAR(75) null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_170EFD7A on KaleoAction (kaleoClassName, kaleoClassPK);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_902D342F on KaleoNotification (kaleoClassName, kaleoClassPK);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `ServiceComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shard`
--

DROP TABLE IF EXISTS `Shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shard`
--

LOCK TABLES `Shard` WRITE;
/*!40000 ALTER TABLE `Shard` DISABLE KEYS */;
INSERT INTO `Shard` VALUES (10155,10025,10154,'default');
/*!40000 ALTER TABLE `Shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCart`
--

DROP TABLE IF EXISTS `ShoppingCart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCart`
--

LOCK TABLES `ShoppingCart` WRITE;
/*!40000 ALTER TABLE `ShoppingCart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCategory`
--

DROP TABLE IF EXISTS `ShoppingCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCategory`
--

LOCK TABLES `ShoppingCategory` WRITE;
/*!40000 ALTER TABLE `ShoppingCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCoupon`
--

DROP TABLE IF EXISTS `ShoppingCoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCoupon`
--

LOCK TABLES `ShoppingCoupon` WRITE;
/*!40000 ALTER TABLE `ShoppingCoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItem`
--

DROP TABLE IF EXISTS `ShoppingItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItem`
--

LOCK TABLES `ShoppingItem` WRITE;
/*!40000 ALTER TABLE `ShoppingItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemField`
--

DROP TABLE IF EXISTS `ShoppingItemField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemField`
--

LOCK TABLES `ShoppingItemField` WRITE;
/*!40000 ALTER TABLE `ShoppingItemField` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemPrice`
--

DROP TABLE IF EXISTS `ShoppingItemPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemPrice`
--

LOCK TABLES `ShoppingItemPrice` WRITE;
/*!40000 ALTER TABLE `ShoppingItemPrice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrder`
--

DROP TABLE IF EXISTS `ShoppingOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrder`
--

LOCK TABLES `ShoppingOrder` WRITE;
/*!40000 ALTER TABLE `ShoppingOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrderItem`
--

DROP TABLE IF EXISTS `ShoppingOrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrderItem`
--

LOCK TABLES `ShoppingOrderItem` WRITE;
/*!40000 ALTER TABLE `ShoppingOrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivity`
--

DROP TABLE IF EXISTS `SocialActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F542E9BC` (`activitySetId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivity`
--

LOCK TABLES `SocialActivity` WRITE;
/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
INSERT INTO `SocialActivity` VALUES (1,10181,10154,10158,1420534428253,0,0,10011,11261,0,0,1,'{\"title\":\"welcome_tools\"}',0),(2,10181,10154,10158,1420534430342,0,0,10011,11276,0,0,1,'{\"title\":\"welcome_learn\"}',0),(3,10181,10154,10158,1420534431471,0,0,10011,11290,0,0,1,'{\"title\":\"welcome_cube\"}',0),(4,10181,10154,10158,1420534433141,0,0,10011,11303,0,0,1,'{\"title\":\"helpful_links_for_using_liferay_portal\"}',0),(5,10181,10154,10158,1420534437728,0,0,10011,11317,0,0,1,'{\"title\":\"welcome_ee\"}',0),(6,10181,10154,10158,1420534438214,0,0,10011,11332,0,0,1,'{\"title\":\"welcome_community\"}',0),(7,10181,10154,10158,1420534440976,0,0,10109,11351,0,0,1,'{\"title\":\"<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\\\"en_US\\\" default-locale=\\\"en_US\\\"><Title language-id=\\\"en_US\\\">Welcome<\\/Title><\\/root>\"}',0),(8,10181,10154,10158,1420534442101,0,0,10109,11351,0,0,1,'{\"title\":\"<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\\\"en_US\\\" default-locale=\\\"en_US\\\"><Title language-id=\\\"en_US\\\">Welcome<\\/Title><\\/root>\"}',0);
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityAchievement`
--

DROP TABLE IF EXISTS `SocialActivityAchievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityAchievement`
--

LOCK TABLES `SocialActivityAchievement` WRITE;
/*!40000 ALTER TABLE `SocialActivityAchievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityAchievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityCounter`
--

DROP TABLE IF EXISTS `SocialActivityCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_D6666704` (`groupId`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityCounter`
--

LOCK TABLES `SocialActivityCounter` WRITE;
/*!40000 ALTER TABLE `SocialActivityCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityLimit`
--

DROP TABLE IF EXISTS `SocialActivityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_18D4BAE5` (`groupId`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityLimit`
--

LOCK TABLES `SocialActivityLimit` WRITE;
/*!40000 ALTER TABLE `SocialActivityLimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityLimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySet`
--

DROP TABLE IF EXISTS `SocialActivitySet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySet` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`),
  KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`),
  KEY `IX_9E13F2DE` (`groupId`),
  KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`),
  KEY `IX_F71071BD` (`groupId`,`userId`,`type_`),
  KEY `IX_F80C4386` (`userId`),
  KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySet`
--

LOCK TABLES `SocialActivitySet` WRITE;
/*!40000 ALTER TABLE `SocialActivitySet` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySetting`
--

DROP TABLE IF EXISTS `SocialActivitySetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_8BE5F230` (`groupId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_9D22151E` (`groupId`,`classNameId`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySetting`
--

LOCK TABLES `SocialActivitySetting` WRITE;
/*!40000 ALTER TABLE `SocialActivitySetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRelation`
--

DROP TABLE IF EXISTS `SocialRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRelation`
--

LOCK TABLES `SocialRelation` WRITE;
/*!40000 ALTER TABLE `SocialRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRequest`
--

DROP TABLE IF EXISTS `SocialRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRequest`
--

LOCK TABLES `SocialRequest` WRITE;
/*!40000 ALTER TABLE `SocialRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SyncDLObject`
--

DROP TABLE IF EXISTS `SyncDLObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SyncDLObject` (
  `objectId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `lockExpirationDate` datetime DEFAULT NULL,
  `lockUserId` bigint(20) DEFAULT NULL,
  `lockUserName` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `typeUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`objectId`),
  UNIQUE KEY `IX_69ADEDD1` (`typePK`),
  KEY `IX_7F996123` (`companyId`,`modifiedTime`,`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SyncDLObject`
--

LOCK TABLES `SyncDLObject` WRITE;
/*!40000 ALTER TABLE `SyncDLObject` DISABLE KEYS */;
INSERT INTO `SyncDLObject` VALUES (11275,10154,1420534428751,1420534428751,10181,0,'welcome_tools','png','image/png','','','','1.0',528,'M0/IPjARFwXLT/FpD6vPuE+zotA=','add',NULL,0,'','file',11261,'7ec122d1-8221-485f-813c-7dd0037ff616'),(11289,10154,1420534431161,1420534431161,10181,0,'welcome_learn','png','image/png','','','','1.0',565,'VN9lePxKZwl+N76+bzYB4oeMgg4=','add',NULL,0,'','file',11276,'98dcc90f-3e44-47e0-ac38-3b7e3f0557c1'),(11305,10154,1420534432102,1420534432102,10181,0,'welcome_cube','png','image/png','','','','1.0',452,'u7ezbZ5yW4ulWfonrR5PWzJicp4=','add',NULL,0,'','file',11290,'5234206c-26df-44cb-ab1d-f564adf6ffad'),(11318,10154,1420534433222,1420534433222,10181,0,'helpful_links_for_using_liferay_portal','pdf','application/pdf','','','','1.0',148065,'UMErxgdyPxLp8QXdkDJ75XNBbWA=','add',NULL,0,'','file',11303,'6734023e-3acb-427b-802d-b713655eb009'),(11331,10154,1420534437857,1420534437857,10181,0,'welcome_ee','png','image/png','','','','1.0',218,'bAZ1F0qHRb1PCB42YiADy/l4ABI=','add',NULL,0,'','file',11317,'30d6902f-82f5-46fd-b35b-d3fa1f55d9ad'),(11345,10154,1420534438445,1420534438445,10181,0,'welcome_community','png','image/png','','','','1.0',435,'MRLiI1X3aES3j3bNEXOaoJK6CbA=','add',NULL,0,'','file',11332,'daca27e9-ba74-4fbd-81a9-eb7568c0592f');
/*!40000 ALTER TABLE `SyncDLObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemEvent`
--

DROP TABLE IF EXISTS `SystemEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemEvent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`),
  KEY `IX_72D73D39` (`groupId`),
  KEY `IX_7A2F0ECE` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemEvent`
--

LOCK TABLES `SystemEvent` WRITE;
/*!40000 ALTER TABLE `SystemEvent` DISABLE KEYS */;
INSERT INTO `SystemEvent` VALUES (11248,10181,10154,0,'','2015-01-06 08:53:47',10102,10413,'6ab71ff3-5245-473b-9a2d-7dfd172fc261',10098,0,11249,1,''),(11250,10181,10154,0,'','2015-01-06 08:53:47',10102,10414,'ddfa0f12-c139-4725-abc2-df09963bd821',10098,0,11251,1,''),(11252,10181,10154,0,'','2015-01-06 08:53:47',10102,10415,'10b541b5-e2b7-44be-8ea3-4664b37fe856',10098,0,11253,1,''),(11254,10181,10154,0,'','2015-01-06 08:53:47',10102,10416,'6b2a675b-bd5c-4bd7-a33c-b8cd7a9c745d',10098,0,11255,1,''),(11256,10181,10154,0,'','2015-01-06 08:53:47',10102,10417,'30e1686c-489f-46f1-8f8f-e544f623f95d',10098,0,11257,1,''),(11258,10181,10154,0,'','2015-01-06 08:53:47',10102,10418,'37ecd951-3fa4-4888-9ec8-272831bae6ed',10098,0,11259,1,'');
/*!40000 ALTER TABLE `SystemEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashEntry`
--

DROP TABLE IF EXISTS `TrashEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_526A032A` (`groupId`),
  KEY `IX_FC4EEA64` (`groupId`,`classNameId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashEntry`
--

LOCK TABLES `TrashEntry` WRITE;
/*!40000 ALTER TABLE `TrashEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashVersion`
--

DROP TABLE IF EXISTS `TrashVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashVersion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`),
  KEY `IX_630A643B` (`classNameId`,`classPK`),
  KEY `IX_55D44577` (`entryId`),
  KEY `IX_72D58D37` (`entryId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashVersion`
--

LOCK TABLES `TrashVersion` WRITE;
/*!40000 ALTER TABLE `TrashVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`),
  KEY `IX_5F1DD85A` (`uuid_`),
  KEY `IX_72394F8E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;
/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupGroupRole`
--

DROP TABLE IF EXISTS `UserGroupGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupGroupRole`
--

LOCK TABLES `UserGroupGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupRole`
--

DROP TABLE IF EXISTS `UserGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupRole`
--

LOCK TABLES `UserGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupRole` DISABLE KEYS */;
INSERT INTO `UserGroupRole` VALUES (10158,10442,10167),(10158,10458,10167),(10158,10532,10167),(10158,10536,10167),(10158,10610,10167),(10158,10614,10167),(10158,10688,10167),(10158,10762,10167),(10158,10836,10167),(10158,10910,10167),(10158,10984,10167),(10158,10988,10167),(10158,11062,10167),(10158,11136,10167),(10158,11140,10167),(10158,11214,10167);
/*!40000 ALTER TABLE `UserGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups_Teams`
--

DROP TABLE IF EXISTS `UserGroups_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups_Teams`
--

LOCK TABLES `UserGroups_Teams` WRITE;
/*!40000 ALTER TABLE `UserGroups_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserIdMapper`
--

DROP TABLE IF EXISTS `UserIdMapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserIdMapper`
--

LOCK TABLES `UserIdMapper` WRITE;
/*!40000 ALTER TABLE `UserIdMapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserIdMapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationDelivery`
--

DROP TABLE IF EXISTS `UserNotificationDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationDelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`),
  UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`),
  KEY `IX_C648700A` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationDelivery`
--

LOCK TABLES `UserNotificationDelivery` WRITE;
/*!40000 ALTER TABLE `UserNotificationDelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationEvent`
--

DROP TABLE IF EXISTS `UserNotificationEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_24F1BF0` (`userId`,`delivered`),
  KEY `IX_ECD8CFEA` (`uuid_`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationEvent`
--

LOCK TABLES `UserNotificationEvent` WRITE;
/*!40000 ALTER TABLE `UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTracker`
--

DROP TABLE IF EXISTS `UserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTracker`
--

LOCK TABLES `UserTracker` WRITE;
/*!40000 ALTER TABLE `UserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTrackerPath`
--

DROP TABLE IF EXISTS `UserTrackerPath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTrackerPath`
--

LOCK TABLES `UserTrackerPath` WRITE;
/*!40000 ALTER TABLE `UserTrackerPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTrackerPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_`
--

DROP TABLE IF EXISTS `User_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_740C4D0C` (`companyId`,`createDate`),
  KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`),
  KEY `IX_89509087` (`companyId`,`openId`(767)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_`
--

LOCK TABLES `User_` WRITE;
/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` VALUES ('3b6ebbdb-0ed8-4567-b850-f6dcf76c9747',10158,10154,'2015-01-06 08:51:28','2015-01-06 08:51:28',1,10159,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,528f53719430814f22dbf509e0faa0c4,528f53719430814f22dbf509e0faa0c4','','',0,'10158','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2015-01-06 08:51:28','',NULL,'',NULL,0,0,NULL,1,0,0),('17483e23-2b7a-47f1-bb02-1f4676c00d5e',10198,10154,'2015-01-06 08:51:30','2015-01-06 08:51:30',0,10200,'AAAAoAAB9AADdv0tqzqBNL2p+MxojKjwut/Z9+U9njDfO/Qi',1,0,NULL,'','','',0,'joebloggs','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Joe Bloggs!','','Joe','','Bloggs','','2015-01-06 08:51:30','','2015-01-06 08:51:30','',NULL,0,0,NULL,0,1,5),('1fe8a62f-1664-46e5-90ff-38355dce6902',10434,10154,'2015-01-06 08:51:43','2015-01-06 08:51:43',0,10435,'AAAAoAAB9AAHVZRaaRNb8QD/FsYrxLGxXFtO7h5Bs+M9Kp6a',1,0,'2015-01-06 08:56:28','7d4b41ac6a0c6971d2b199204f0dbefe,24cc43375ddbaf0b197d2784ab71cc01,7d458df0790ba6f8868987c8f86f5d54','team','bb',0,'hghafoori','hghafoori@xebia.com',0,-1,'',0,'en_US','UTC','Welcome Haroon Ghafoori!','','Haroon','','Ghafoori','','2015-01-07 05:43:05','127.0.0.1','2015-01-06 08:51:44','127.0.0.1',NULL,0,0,NULL,1,1,0),('76e8e736-fe3b-457b-8872-bbbc5402bdbc',10461,10154,'2015-01-06 08:51:56','2015-01-06 08:51:56',0,10462,'AAAAoAAB9AChyI6fmnRVCFBDxsOgy+XFOXGNHSL1UlkbBEHA',1,0,NULL,'','','',0,'ord1','test.ord.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 1!','','Test','','ORD 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c30b9f41-7bca-4b66-b32e-18869d4f31fc',10468,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',0,10469,'AAAAoAAB9AAZ9ROjQxId0BxgnuTymyeaQ7z6IIDS60FpEof8',1,0,NULL,'','','',0,'ord2','test.ord.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 2!','','Test','','ORD 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('bb4af016-6ecb-4cfa-911f-c840a59d5cbc',10475,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',0,10476,'AAAAoAAB9ACyBEQcpgx2Fc7GkYSsUFGDBq54bM8kIlqjXyaU',1,0,NULL,'','','',0,'ord3','test.ord.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 3!','','Test','','ORD 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2d2f4ac3-8311-4c14-b262-8071d289398b',10482,10154,'2015-01-06 08:51:57','2015-01-06 08:51:57',0,10483,'AAAAoAAB9ADHjr/2ha8nzj8Wv9w4XeaS62z6lpI2psXYddHQ',1,0,NULL,'','','',0,'ord4','test.ord.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 4!','','Test','','ORD 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('a6b3236e-4fe2-4b5a-8db1-1557bf7ed201',10489,10154,'2015-01-06 08:51:58','2015-01-06 08:51:58',0,10490,'AAAAoAAB9ABuUwci5z3wjDLgxMZDOh5qQgQsJJU8nPRXwOMY',1,0,NULL,'','','',0,'ord5','test.ord.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 5!','','Test','','ORD 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('94daeb31-b978-486e-8163-baf57b7884b4',10496,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',0,10497,'AAAAoAAB9AAzRUCCYAR/aakCCUCHDzCUvzaQDBQTP0RXzRvr',1,0,NULL,'','','',0,'ord6','test.ord.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 6!','','Test','','ORD 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e16c5ea1-66c9-40cb-aaae-11ec90457432',10503,10154,'2015-01-06 08:52:00','2015-01-06 08:52:00',0,10504,'AAAAoAAB9ABqPyF7BS+4Vk6POllSEv35QS2NgqTlz/Fg9Xoz',1,0,NULL,'','','',0,'ord7','test.ord.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 7!','','Test','','ORD 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('3ddea87f-9961-48d4-89f9-2e90df6b2733',10510,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',0,10511,'AAAAoAAB9ADztvtdH2tf/pLB6c9mc3pboY86guNLRdhlsNMh',1,0,NULL,'','','',0,'ord8','test.ord.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 8!','','Test','','ORD 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2090ea41-9c38-4472-831c-969c4b5db676',10517,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',0,10518,'AAAAoAAB9ABDBzP/YPSfTgH2hwIJTineLVVPrIkYSpJxakD/',1,0,NULL,'','','',0,'ord9','test.ord.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 9!','','Test','','ORD 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f46af80b-4ae8-4b3c-8873-1705d62210b9',10524,10154,'2015-01-06 08:52:01','2015-01-06 08:52:01',0,10525,'AAAAoAAB9ABnNk/z/pLPPdslVSuvYToZRNeote5ro4gefMiu',1,0,NULL,'','','',0,'ord10','test.ord.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 10!','','Test','','ORD 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e9f9d396-9006-489c-b4cd-4b5e3bc1b70e',10539,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',0,10540,'AAAAoAAB9ADgWdJflS2jYPTnqO/ZX0YF9RE+2ZhwXi9VDwZ3',1,0,NULL,'','','',0,'dlc1','test.dlc.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 1!','','Test','','DLC 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('a8103504-4ce6-433d-a720-7c88fe3d81ff',10546,10154,'2015-01-06 08:52:02','2015-01-06 08:52:02',0,10547,'AAAAoAAB9AAyh8ymBAtukgwMr/Nbs+VkXrw8MhZutohmAcoq',1,0,NULL,'','','',0,'dlc2','test.dlc.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 2!','','Test','','DLC 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('3fbfad30-dc99-41bb-ab8e-5b03ec14ca0f',10553,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',0,10554,'AAAAoAAB9AAxo0GEUz/uUOxY9jeT6Rs7rhZ3yNvu3E3lDoOa',1,0,NULL,'','','',0,'dlc3','test.dlc.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 3!','','Test','','DLC 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('db66fa0a-b508-4d89-b8c3-43c08dfbe629',10560,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',0,10561,'AAAAoAAB9AA+KPLcTpLGcYA4yeUUKCGYTZ13DkcTeCbiIAx8',1,0,NULL,'','','',0,'dlc4','test.dlc.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 4!','','Test','','DLC 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('10c6b2d3-e55a-4ad8-991e-715b2055d65d',10567,10154,'2015-01-06 08:52:03','2015-01-06 08:52:03',0,10568,'AAAAoAAB9ADScUb0rf20MXNVgIQflntDuXWVJJIbBBsAVKfv',1,0,NULL,'','','',0,'dlc5','test.dlc.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 5!','','Test','','DLC 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4af9cc09-e02f-4abc-8526-83db3180489f',10574,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',0,10575,'AAAAoAAB9AC4K7hhWwWhN722lIhIv4OZfnaEZTGmzW2wooEd',1,0,NULL,'','','',0,'dlc6','test.dlc.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 6!','','Test','','DLC 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('eb2627a5-ca4b-4cd0-934b-9c8e2032f7d0',10581,10154,'2015-01-06 08:52:04','2015-01-06 08:52:04',0,10582,'AAAAoAAB9ABb3x1rH9XTsMDJh+hkcSVeyyU6cFdwvfCtyMJS',1,0,NULL,'','','',0,'dlc7','test.dlc.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 7!','','Test','','DLC 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ea9bf075-84ea-477c-970a-8046b431e506',10588,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',0,10589,'AAAAoAAB9ACPJA1uRWd2GmviJ5LuPrEPmB8LgOL/4p3Kkbyk',1,0,NULL,'','','',0,'dlc8','test.dlc.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 8!','','Test','','DLC 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('076c3c65-7b00-4277-b235-6b1a9035dac0',10595,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',0,10596,'AAAAoAAB9ADyiOOydFf7XXzb4dsNaU4pI/U41glm7aMfQy9E',1,0,NULL,'','','',0,'dlc9','test.dlc.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 9!','','Test','','DLC 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('53f18266-49f1-43cf-99fa-043b62cf2190',10602,10154,'2015-01-06 08:52:05','2015-01-06 08:52:05',0,10603,'AAAAoAAB9ABSRkyNXv1C76jsuJ7p2JZz7Y7wzzgbC6oVhMn0',1,0,NULL,'','','',0,'dlc10','test.dlc.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 10!','','Test','','DLC 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('5b3e22ea-b3a0-4522-8f58-986a2722e38c',10617,10154,'2015-01-06 08:52:06','2015-01-06 08:52:06',0,10618,'AAAAoAAB9ADeApN5M3OowYe7G0sWYfW8HuoYNZt9UanFSwB1',1,0,NULL,'','','',0,'fra1','test.fra.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 1!','','Test','','FRA 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('40211692-0d05-42c3-9347-622ba050a2ed',10624,10154,'2015-01-06 08:52:07','2015-01-06 08:52:07',0,10625,'AAAAoAAB9AC3i7w0jHmj4abKAUAUcAdnYbvebt76dizuupMk',1,0,NULL,'','','',0,'fra2','test.fra.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 2!','','Test','','FRA 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('90d3226e-f389-4947-bdd1-bc77c4b523ae',10631,10154,'2015-01-06 08:52:07','2015-01-06 08:52:07',0,10632,'AAAAoAAB9ACzPTczxWPVOqPspnDChBqrHQ5mN2DWDA1g4SmO',1,0,NULL,'','','',0,'fra3','test.fra.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 3!','','Test','','FRA 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('910de253-2875-4e9c-adbd-f07deaefe51b',10638,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',0,10639,'AAAAoAAB9ABBjfzkHUgMZLbq1tgP+nOTuEI/YrsbvN1U8DId',1,0,NULL,'','','',0,'fra4','test.fra.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 4!','','Test','','FRA 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('98982885-79b9-4494-8bdc-3c3cea996840',10645,10154,'2015-01-06 08:52:08','2015-01-06 08:52:08',0,10646,'AAAAoAAB9ACCApgF2vKkMNWrW62wmuW1HdiekYWS01KGlF0+',1,0,NULL,'','','',0,'fra5','test.fra.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 5!','','Test','','FRA 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e064b56e-99b6-4f38-89b2-7696db477df3',10652,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',0,10653,'AAAAoAAB9AAfO4LH43OqaDoKrObIRl5w+gFD7TQjfHpDKBmX',1,0,NULL,'','','',0,'fra6','test.fra.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 6!','','Test','','FRA 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ab817cde-b68c-4b73-900f-6e5b8f10a4d4',10659,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',0,10660,'AAAAoAAB9ADwrFDnVgEHgTTT21+pPZk7I3oUClpVbedQMQOX',1,0,NULL,'','','',0,'fra7','test.fra.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 7!','','Test','','FRA 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('6769ad57-06df-43dd-8ea5-fa2c8d2e1e87',10666,10154,'2015-01-06 08:52:09','2015-01-06 08:52:09',0,10667,'AAAAoAAB9AC+oORzm7/Q46pnQF74zhouIt8Bv/ksVtur6hqX',1,0,NULL,'','','',0,'fra8','test.fra.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 8!','','Test','','FRA 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ba758747-97f6-45e0-a489-ff7f32be28e0',10673,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,10674,'AAAAoAAB9AACCIzSInioaxlWcvOjFBfkDKdS62rxDyTbth6+',1,0,NULL,'','','',0,'fra9','test.fra.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 9!','','Test','','FRA 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('eab3ce72-6139-4fd8-91d7-c5b74cec1bd7',10680,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,10681,'AAAAoAAB9ADObjVOfNOxJcVpnZyAlG96eQDotDVLSDj+aEvs',1,0,NULL,'','','',0,'fra10','test.fra.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 10!','','Test','','FRA 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('80259ee3-f458-446d-8da0-4ff5105521d1',10691,10154,'2015-01-06 08:52:10','2015-01-06 08:52:10',0,10692,'AAAAoAAB9ABHUVX1qII6iDcSon5uuUFKS0aQN7bZpARfRy4Z',1,0,NULL,'','','',0,'hkg1','test.hkg.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 1!','','Test','','HKG 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f9e85de7-2c48-46bf-89a6-75a75b18a028',10698,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',0,10699,'AAAAoAAB9AB5UaAjZng0ujyvigQvLZdwWn4WCZ4RnKwYqTGI',1,0,NULL,'','','',0,'hkg2','test.hkg.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 2!','','Test','','HKG 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('5d86fa6e-ec06-4344-90d2-3f0785a6420d',10705,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',0,10706,'AAAAoAAB9AB2YTPOYQyzKr7xeZRZMwb8zOqjBOvKEyt839/k',1,0,NULL,'','','',0,'hkg3','test.hkg.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 3!','','Test','','HKG 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('87b57a4f-eaee-455c-a411-39bbc2d3269e',10712,10154,'2015-01-06 08:52:11','2015-01-06 08:52:11',0,10713,'AAAAoAAB9ABDF4bD/Q25IzuAo8jFguP/ZoFSz3oRXim2hYzs',1,0,NULL,'','','',0,'hkg4','test.hkg.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 4!','','Test','','HKG 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('be5ef289-36d3-41bf-bdd3-23028a82a07f',10719,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',0,10720,'AAAAoAAB9ADFyy3fjYhGRotyjz0OsdTxetRpNa/63OkvH37o',1,0,NULL,'','','',0,'hkg5','test.hkg.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 5!','','Test','','HKG 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2389654d-3913-4d09-a41c-6901783e31b2',10726,10154,'2015-01-06 08:52:12','2015-01-06 08:52:12',0,10727,'AAAAoAAB9AArpZtN+4xTXaJarkN6eHTURKLkB0uWnNaLRxNn',1,0,NULL,'','','',0,'hkg6','test.hkg.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 6!','','Test','','HKG 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('43869098-d838-4c57-b909-6e0242e22d4e',10733,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',0,10734,'AAAAoAAB9AD2iMI58ENbnygd92NgaM9pPyG+eRn60voYT/Y8',1,0,NULL,'','','',0,'hkg7','test.hkg.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 7!','','Test','','HKG 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('0f07a5cb-f728-4912-8a30-08b696bd7a2d',10740,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',0,10741,'AAAAoAAB9AAW3yWJSL6jcCcEG9O1LqCloFxpUdHPKMoYJvow',1,0,NULL,'','','',0,'hkg8','test.hkg.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 8!','','Test','','HKG 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('51c2f058-7863-467b-bc90-241b2d1596e7',10747,10154,'2015-01-06 08:52:13','2015-01-06 08:52:13',0,10748,'AAAAoAAB9AB0Fl6Ondgd9+c/2sYhro1vD1xkE/O1tyJsbjfC',1,0,NULL,'','','',0,'hkg9','test.hkg.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 9!','','Test','','HKG 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('64f71f38-60c8-47ec-9793-5fa13ad541e4',10754,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',0,10755,'AAAAoAAB9ABeIRMV1+Kh3pxuBPcUxNOTVCCqYpskaI48VoIt',1,0,NULL,'','','',0,'hkg10','test.hkg.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 10!','','Test','','HKG 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('19a3241a-cb21-4d9b-ae5c-678cb98d8c4a',10765,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',0,10766,'AAAAoAAB9ABrpqg8hWh+rk2gQtfVz3vsHD0orX8tBpr3phR8',1,0,NULL,'','','',0,'kul1','test.kul.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 1!','','Test','','KUL 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('5318136f-2ca5-4513-87b4-a652ee630dfc',10772,10154,'2015-01-06 08:52:14','2015-01-06 08:52:14',0,10773,'AAAAoAAB9AB+6GyK/7FUyOjdNyzeEfnU20IsqUTqVqzfJeJH',1,0,NULL,'','','',0,'kul2','test.kul.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 2!','','Test','','KUL 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('dc31a4c1-ee29-417f-b674-d2f71b2705c6',10779,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',0,10780,'AAAAoAAB9ABt0rcNr2L3jX3pe4iO8Vdz0bmP1GgP5romfC4G',1,0,NULL,'','','',0,'kul3','test.kul.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 3!','','Test','','KUL 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('a950e845-4c20-4c6e-8b7b-1c81092cf818',10786,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',0,10787,'AAAAoAAB9ABngbDBzXOOcEIqNi8wgcMBTfRanF2g0h2weH8g',1,0,NULL,'','','',0,'kul4','test.kul.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 4!','','Test','','KUL 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('549818e6-fd06-47e4-b9f4-dd10076b1b9b',10793,10154,'2015-01-06 08:52:15','2015-01-06 08:52:15',0,10794,'AAAAoAAB9AA+wQXKmcdh5qcgMvc/bmaooL7FYS1x4e/mn2rp',1,0,NULL,'','','',0,'kul5','test.kul.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 5!','','Test','','KUL 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('528f35f8-e688-4661-bba9-21c9a15ad5be',10800,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',0,10801,'AAAAoAAB9AC16ViMMgnHTwJCSOsA8wFSSZTDtzPgtTs75r8S',1,0,NULL,'','','',0,'kul6','test.kul.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 6!','','Test','','KUL 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ffb4b2ad-bb80-42c9-9781-d39ad96eab09',10807,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',0,10808,'AAAAoAAB9AA3i9C2Kzcidlz6RnuakZNuxIBjR8D6cOpRSmYK',1,0,NULL,'','','',0,'kul7','test.kul.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 7!','','Test','','KUL 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('36cf8651-84aa-4ffe-bbfd-12bcc046e254',10814,10154,'2015-01-06 08:52:16','2015-01-06 08:52:16',0,10815,'AAAAoAAB9ABZGZBOnPDLvUP5AvChpmcArYnGb4Qy+DrmIRu4',1,0,NULL,'','','',0,'kul8','test.kul.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 8!','','Test','','KUL 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('b3490a0c-7e43-4991-9447-1aa83be4caf3',10821,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',0,10822,'AAAAoAAB9ADAD6BBkdHXfg7TVQNGcuEEdhMyuKaCjxvEGNTa',1,0,NULL,'','','',0,'kul9','test.kul.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 9!','','Test','','KUL 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('b3f1ae61-a99d-42c9-9605-a61e56aa4a05',10828,10154,'2015-01-06 08:52:17','2015-01-06 08:52:17',0,10829,'AAAAoAAB9ABHZcAZJdpgFoe+Nm8WAMlSDlpoZuJmVAVWRCPm',1,0,NULL,'','','',0,'kul10','test.kul.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 10!','','Test','','KUL 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('8bc660f0-a807-4c7e-9a78-e786bbc017d1',10839,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',0,10840,'AAAAoAAB9AA/NjmxUZ3l2vn8LSYP0cSo5MROxaIEEYL+F5q8',1,0,NULL,'','','',0,'lax1','test.lax.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 1!','','Test','','LAX 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e4104fb3-fd25-49a7-8444-6a63ce815132',10846,10154,'2015-01-06 08:52:18','2015-01-06 08:52:18',0,10847,'AAAAoAAB9ADukaj5dipHyirmp+GhLSZh8yt3p+NPcea0CQbB',1,0,NULL,'','','',0,'lax2','test.lax.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 2!','','Test','','LAX 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('86bee8cd-a80e-4343-b37d-2e1f926ba2ad',10853,10154,'2015-01-06 08:52:19','2015-01-06 08:52:19',0,10854,'AAAAoAAB9ABWwl/QepMOKgDxxMyBA1UbS9WrsBhZzyAY35kN',1,0,NULL,'','','',0,'lax3','test.lax.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 3!','','Test','','LAX 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4bf9f31f-71ca-4cd8-8f94-da68a4fd1786',10860,10154,'2015-01-06 08:52:19','2015-01-06 08:52:19',0,10861,'AAAAoAAB9AD621PhIbVack4kVsN1T7qC0BCnr49q2Y9OhGWq',1,0,NULL,'','','',0,'lax4','test.lax.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 4!','','Test','','LAX 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('5be661ae-27e5-41af-9206-f91898b22e7c',10867,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',0,10868,'AAAAoAAB9ABbd2aJZcXVtk0pmWHBmiwyuVqvhFw5XiwIgg0a',1,0,NULL,'','','',0,'lax5','test.lax.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 5!','','Test','','LAX 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('995c76e4-841e-45cd-850a-a89b18e037ed',10874,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',0,10875,'AAAAoAAB9AATxgde+Ew6YtG9Ydn43iPIt2Ig09oxTfop1gb4',1,0,NULL,'','','',0,'lax6','test.lax.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 6!','','Test','','LAX 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('93e81625-4c08-4760-af37-fe0746bc1f48',10881,10154,'2015-01-06 08:52:20','2015-01-06 08:52:20',0,10882,'AAAAoAAB9ABMr+2rl6IARC1/kJKT9YHAzB/RyjBxFjDRVwr5',1,0,NULL,'','','',0,'lax7','test.lax.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 7!','','Test','','LAX 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e3160842-0d56-4ab5-9607-78c4be607de5',10888,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',0,10889,'AAAAoAAB9AChhHXYy3xqgQQXe4nHh+06vJf4Wfxdrp7N64kg',1,0,NULL,'','','',0,'lax8','test.lax.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 8!','','Test','','LAX 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('d23d8a43-887d-4ce2-a224-076d21643b53',10895,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',0,10896,'AAAAoAAB9ACWfsg+RnbFsKVcpSppltvcgaTzvW50JdCciZzs',1,0,NULL,'','','',0,'lax9','test.lax.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 9!','','Test','','LAX 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e80b8355-0a06-450b-80d6-89aba7d627de',10902,10154,'2015-01-06 08:52:21','2015-01-06 08:52:21',0,10903,'AAAAoAAB9ADzJqf1WC697LxJAu9r6Kx1Pff3UrB5oDuGZFjT',1,0,NULL,'','','',0,'lax10','test.lax.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 10!','','Test','','LAX 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c5d3c712-c82b-4f35-be5e-6b7fc323aee0',10913,10154,'2015-01-06 08:52:22','2015-01-06 08:52:22',0,10914,'AAAAoAAB9ABzh2RkMnQBxqx7/5o2lWt+MSffCASFXBaNhsro',1,0,NULL,'','','',0,'mad1','test.mad.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 1!','','Test','','MAD 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('135e785b-fe01-47cf-8688-c21dea6d29f0',10920,10154,'2015-01-06 08:52:23','2015-01-06 08:52:23',0,10921,'AAAAoAAB9ADzBOWp8/ZK80P1pU4X9RC+Wd4nU/IkqwCX7vZW',1,0,NULL,'','','',0,'mad2','test.mad.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 2!','','Test','','MAD 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('daa95f39-5b1d-4eda-b8cc-e461b745a6af',10927,10154,'2015-01-06 08:52:24','2015-01-06 08:52:24',0,10928,'AAAAoAAB9AABTSiRSlmoyiEPXUrOiI8eE4KHri6WErCAETXj',1,0,NULL,'','','',0,'mad3','test.mad.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 3!','','Test','','MAD 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('aff764f3-5a13-486b-be30-cad9514982b4',10934,10154,'2015-01-06 08:52:24','2015-01-06 08:52:24',0,10935,'AAAAoAAB9AA4idNqTrYX6svTvZDTJaVRTcJ82/GUrfWifGyq',1,0,NULL,'','','',0,'mad4','test.mad.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 4!','','Test','','MAD 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('fa0f76ad-1aa2-4502-a04e-5f4ef4601bd4',10941,10154,'2015-01-06 08:52:25','2015-01-06 08:52:25',0,10942,'AAAAoAAB9AAmqCVloYqS2L8jfUhFf1RedWrGj2u9pU/a690e',1,0,NULL,'','','',0,'mad5','test.mad.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 5!','','Test','','MAD 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('60a6327b-1298-47ca-8fce-801560bacddb',10948,10154,'2015-01-06 08:52:25','2015-01-06 08:52:25',0,10949,'AAAAoAAB9ACuwJFfQNdsyG+TUD7eMC/sppjRh19KCKRfc4Qa',1,0,NULL,'','','',0,'mad6','test.mad.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 6!','','Test','','MAD 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c5301efa-ab8f-45f3-8ee3-03b568b2b787',10955,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',0,10956,'AAAAoAAB9ADnTEQQ/2ZoxyGUebjgAxA6qg+HIB44o00Z2XRZ',1,0,NULL,'','','',0,'mad7','test.mad.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 7!','','Test','','MAD 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('95a55f65-1928-408d-8ec3-a6b59625c59b',10962,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',0,10963,'AAAAoAAB9ABlH/A23dB7/92TIreDdAbluxO+yP8LQ+vxbgy0',1,0,NULL,'','','',0,'mad8','test.mad.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 8!','','Test','','MAD 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1b5ae61b-767e-4919-8768-0d56d6e08959',10969,10154,'2015-01-06 08:52:26','2015-01-06 08:52:26',0,10970,'AAAAoAAB9ADjjD+fP5unBL2VKjTDkvjmw4cfrnEvOqEDuX87',1,0,NULL,'','','',0,'mad9','test.mad.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 9!','','Test','','MAD 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ac2c6805-6270-4eac-8190-af8946ce9702',10976,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',0,10977,'AAAAoAAB9AAT7YTzTbeIBUe7n8KJyHSYj6l51o5LaMEPvmvJ',1,0,NULL,'','','',0,'mad10','test.mad.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 10!','','Test','','MAD 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('b10c4ecc-5396-4694-aa6d-e8fb8d35fee3',10991,10154,'2015-01-06 08:52:27','2015-01-06 08:52:27',0,10992,'AAAAoAAB9AB4oXZebr+pTEJg79fqetN0OxM6vUe7n0TsoH2a',1,0,NULL,'','','',0,'nyc1','test.nyc.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 1!','','Test','','NYC 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('6e67f0cc-9932-4454-85ba-77c5d83a5e32',10998,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',0,10999,'AAAAoAAB9AA1gR7SRaBdSlwDuoPJ9EBgk9JGtnaHaVG41Ya3',1,0,NULL,'','','',0,'nyc2','test.nyc.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 2!','','Test','','NYC 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('999bb061-88c5-421e-9170-ba2d2394e9ec',11005,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',0,11006,'AAAAoAAB9ACv//k6b/VrUe7eebPAwvUjeS4voF+YXu6BhnNY',1,0,NULL,'','','',0,'nyc3','test.nyc.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 3!','','Test','','NYC 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('24bf221e-e370-4e70-8286-74cf40257838',11012,10154,'2015-01-06 08:52:28','2015-01-06 08:52:28',0,11013,'AAAAoAAB9ACT3Q+yGia994mVBfnl4asESdGwLQCjcL+1LQhZ',1,0,NULL,'','','',0,'nyc4','test.nyc.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 4!','','Test','','NYC 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('528ae60c-2a8c-4a72-ad9c-595cd781380e',11019,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',0,11020,'AAAAoAAB9ADVVIVnr/eHRCa7RxPMH9diWmzDO2WBayZcq9Tq',1,0,NULL,'','','',0,'nyc5','test.nyc.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 5!','','Test','','NYC 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('acbf9ae7-9dbd-4434-a268-44eaae3f142c',11026,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',0,11027,'AAAAoAAB9AAuGJoYh1YIORJjTFoTZyuUEhGKB7mcxdXZuSqZ',1,0,NULL,'','','',0,'nyc6','test.nyc.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 6!','','Test','','NYC 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('017c6099-1409-4fa2-a1b7-f2dafa4f0767',11033,10154,'2015-01-06 08:52:29','2015-01-06 08:52:29',0,11034,'AAAAoAAB9AC8H8Mipj5aErbG62PjIO1r0zlN0vzaO1WbazIS',1,0,NULL,'','','',0,'nyc7','test.nyc.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 7!','','Test','','NYC 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('12448b8d-fad8-4974-9bad-5229b588d0e1',11040,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',0,11041,'AAAAoAAB9ADZ7r9aJkWL6nnr6sGld0fL9A7OmoQTf5EBAtvL',1,0,NULL,'','','',0,'nyc8','test.nyc.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 8!','','Test','','NYC 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('01ccbb66-e2a0-4344-a524-c0d473a13058',11047,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',0,11048,'AAAAoAAB9ABh0zyYn3kqJl670C2A1dboq4TcV6YFLIFadDNI',1,0,NULL,'','','',0,'nyc9','test.nyc.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 9!','','Test','','NYC 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4099ea15-50a2-4c32-ab57-16e1197975f8',11054,10154,'2015-01-06 08:52:30','2015-01-06 08:52:30',0,11055,'AAAAoAAB9AD7v8wiBN5UDocf4ryoKE7ExoKVUCd1Njfw1aTV',1,0,NULL,'','','',0,'nyc10','test.nyc.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 10!','','Test','','NYC 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('222a2fbd-1403-4efb-a06a-c187b43dce54',11065,10154,'2015-01-06 08:52:31','2015-01-06 08:52:31',0,11066,'AAAAoAAB9ACeFMs4Eo8tfquzXLadphuIIt+3AnypfMMiuhqb',1,0,NULL,'','','',0,'gru1','test.gru.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 1!','','Test','','GRU 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('486a80e8-2b21-4457-a6ae-c1a1a52734bb',11072,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',0,11073,'AAAAoAAB9ACrJhi1GQW3miDOzijvDMiARnBfdvNN7pFfZVIp',1,0,NULL,'','','',0,'gru2','test.gru.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 2!','','Test','','GRU 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('fd51979b-add0-4786-a51c-0214ec37b5a5',11079,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',0,11080,'AAAAoAAB9AAFFmtNlaw5vqZV4aAzV52PBw78HpMs3SldUkVi',1,0,NULL,'','','',0,'gru3','test.gru.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 3!','','Test','','GRU 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e5085943-085c-418b-9e47-55834c982585',11086,10154,'2015-01-06 08:52:32','2015-01-06 08:52:32',0,11087,'AAAAoAAB9AD1sepvX5YpK/HSNOUoIZj+SEVxmhTFdrqy/d68',1,0,NULL,'','','',0,'gru4','test.gru.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 4!','','Test','','GRU 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('23b0b838-feaa-4995-873a-06de4ce1aad7',11093,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',0,11094,'AAAAoAAB9AAoAqNDWdhC5GQnvJ+cUJpvyYschknCOhtqM6V9',1,0,NULL,'','','',0,'gru5','test.gru.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 5!','','Test','','GRU 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('eee46433-3bd3-4b3a-a43f-f2713ea63570',11100,10154,'2015-01-06 08:52:33','2015-01-06 08:52:33',0,11101,'AAAAoAAB9ADH/3FVhAXDz8CaVPMghknMg0l84jrFV47EIvy9',1,0,NULL,'','','',0,'gru6','test.gru.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 6!','','Test','','GRU 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('064126f6-6da3-4478-9b85-82553482ea0d',11107,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',0,11108,'AAAAoAAB9ACJJ+FmSLwZa2YYSRVWwBjXsq7xuDnua/BhP0s4',1,0,NULL,'','','',0,'gru7','test.gru.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 7!','','Test','','GRU 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('92d433da-338d-49b4-ada7-c7f6127fff48',11114,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',0,11115,'AAAAoAAB9AC1eMYsJXLGl/iVRTyVa10iv54SW3SHwLNHtBVb',1,0,NULL,'','','',0,'gru8','test.gru.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 8!','','Test','','GRU 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('617ff95b-698d-48b8-980f-f0fdc9b6486d',11121,10154,'2015-01-06 08:52:34','2015-01-06 08:52:34',0,11122,'AAAAoAAB9ABe0QaxUvPx02Qb1I0cSbpKT/CsHURUyrooBlLe',1,0,NULL,'','','',0,'gru9','test.gru.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 9!','','Test','','GRU 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('48e5ab0c-0637-4965-9aa1-5cf9ce8a0323',11128,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,11129,'AAAAoAAB9ABMi9znIygfZ2tgJ3XTGEa36uRmMxtU4fLCZHBi',1,0,NULL,'','','',0,'gru10','test.gru.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 10!','','Test','','GRU 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e68fd479-45cc-4f01-9daa-95d154f5fb2d',11143,10154,'2015-01-06 08:52:35','2015-01-06 08:52:35',0,11144,'AAAAoAAB9AD4pDrnxHHv3coTLPr41w30ksnGYooPC6mJOXcr',1,0,NULL,'','','',0,'sfo1','test.sfo.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 1!','','Test','','SFO 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('fb639734-ce5b-49f3-b7ff-e5e787566731',11150,10154,'2015-01-06 08:52:36','2015-01-06 08:52:36',0,11151,'AAAAoAAB9AD+dcCa87XD5XE0dip/SbhNw6qNG+5fVOrYbo1a',1,0,NULL,'','','',0,'sfo2','test.sfo.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 2!','','Test','','SFO 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4e2891d8-1483-4d8e-bcca-7133b6feb515',11157,10154,'2015-01-06 08:52:36','2015-01-06 08:52:36',0,11158,'AAAAoAAB9ACRWFqaY0f2QSywijrH1bnbJrAWlYNt/rN8H9rC',1,0,NULL,'','','',0,'sfo3','test.sfo.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 3!','','Test','','SFO 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('81e6dffe-3266-4ab2-ab34-c019043c25fb',11164,10154,'2015-01-06 08:52:37','2015-01-06 08:52:37',0,11165,'AAAAoAAB9ADHWw1ozx6QDlb5Zg7lwlM7vIZoO9gGmCgyVzpM',1,0,NULL,'','','',0,'sfo4','test.sfo.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 4!','','Test','','SFO 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('23146e64-4175-4723-bdd8-5743f2c50654',11171,10154,'2015-01-06 08:52:37','2015-01-06 08:52:37',0,11172,'AAAAoAAB9AB49LVZkdf2ENn7CbNDmYcdOyPlmlrqtoZEKqo9',1,0,NULL,'','','',0,'sfo5','test.sfo.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 5!','','Test','','SFO 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('01500cac-dfd6-446f-8d22-f6e21cfd479e',11178,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',0,11179,'AAAAoAAB9ABp/ke3H8lJyMEXTex9QhNHuu9G5Qmb2laspq4s',1,0,NULL,'','','',0,'sfo6','test.sfo.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 6!','','Test','','SFO 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('16a6d54f-b083-44a8-b831-22ebbfab1a54',11185,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',0,11186,'AAAAoAAB9ADAtCQHD0stFTudjsLJFk7ruQCz6I2WbdLRl4vu',1,0,NULL,'','','',0,'sfo7','test.sfo.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 7!','','Test','','SFO 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('58a37cdb-4b8a-47ad-a039-21e6d28dc453',11192,10154,'2015-01-06 08:52:38','2015-01-06 08:52:38',0,11193,'AAAAoAAB9AAOx8Ln0P+pNi+WY/pIuTDmRVLvBRY2n70ZPgi5',1,0,NULL,'','','',0,'sfo8','test.sfo.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 8!','','Test','','SFO 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f6a162e0-c966-4fb9-b196-3562dade5d6b',11199,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',0,11200,'AAAAoAAB9ACw7ktakdtEjFb6YaCm9HBZWFUbNoBZ9BRE762C',1,0,NULL,'','','',0,'sfo9','test.sfo.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 9!','','Test','','SFO 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ed1f0aec-2c61-4857-adf9-158d65f4f20f',11206,10154,'2015-01-06 08:52:39','2015-01-06 08:52:39',0,11207,'AAAAoAAB9ABFN62KoqdKX/dGLF/BkYAp/78/TTaptDeY/92n',1,0,NULL,'','','',0,'sfo10','test.sfo.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 10!','','Test','','SFO 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Groups`
--

DROP TABLE IF EXISTS `Users_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Groups`
--

LOCK TABLES `Users_Groups` WRITE;
/*!40000 ALTER TABLE `Users_Groups` DISABLE KEYS */;
INSERT INTO `Users_Groups` VALUES (10181,10198),(10181,10434),(10458,10461),(10458,10468),(10458,10475),(10458,10482),(10458,10489),(10458,10496),(10458,10503),(10458,10510),(10458,10517),(10458,10524),(10536,10539),(10536,10546),(10536,10553),(10536,10560),(10536,10567),(10536,10574),(10536,10581),(10536,10588),(10536,10595),(10536,10602),(10614,10617),(10614,10624),(10614,10631),(10614,10638),(10614,10645),(10614,10652),(10614,10659),(10614,10666),(10614,10673),(10614,10680),(10688,10691),(10688,10698),(10688,10705),(10688,10712),(10688,10719),(10688,10726),(10688,10733),(10688,10740),(10688,10747),(10688,10754),(10762,10765),(10762,10772),(10762,10779),(10762,10786),(10762,10793),(10762,10800),(10762,10807),(10762,10814),(10762,10821),(10762,10828),(10836,10839),(10836,10846),(10836,10853),(10836,10860),(10836,10867),(10836,10874),(10836,10881),(10836,10888),(10836,10895),(10836,10902),(10910,10913),(10910,10920),(10910,10927),(10910,10934),(10910,10941),(10910,10948),(10910,10955),(10910,10962),(10910,10969),(10910,10976),(10988,10991),(10988,10998),(10988,11005),(10988,11012),(10988,11019),(10988,11026),(10988,11033),(10988,11040),(10988,11047),(10988,11054),(11062,11065),(11062,11072),(11062,11079),(11062,11086),(11062,11093),(11062,11100),(11062,11107),(11062,11114),(11062,11121),(11062,11128),(11140,11143),(11140,11150),(11140,11157),(11140,11164),(11140,11171),(11140,11178),(11140,11185),(11140,11192),(11140,11199),(11140,11206);
/*!40000 ALTER TABLE `Users_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Orgs`
--

DROP TABLE IF EXISTS `Users_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Orgs`
--

LOCK TABLES `Users_Orgs` WRITE;
/*!40000 ALTER TABLE `Users_Orgs` DISABLE KEYS */;
INSERT INTO `Users_Orgs` VALUES (10441,10198),(10441,10461),(10441,10468),(10441,10475),(10441,10482),(10441,10489),(10441,10496),(10441,10503),(10441,10510),(10441,10517),(10441,10524),(10441,10539),(10441,10546),(10441,10553),(10441,10560),(10441,10567),(10441,10574),(10441,10581),(10441,10588),(10441,10595),(10441,10602),(10441,10617),(10441,10624),(10441,10631),(10441,10638),(10441,10645),(10441,10652),(10441,10659),(10441,10666),(10441,10673),(10441,10680),(10441,10691),(10441,10698),(10441,10705),(10441,10712),(10441,10719),(10441,10726),(10441,10733),(10441,10740),(10441,10747),(10441,10754),(10441,10765),(10441,10772),(10441,10779),(10441,10786),(10441,10793),(10441,10800),(10441,10807),(10441,10814),(10441,10821),(10441,10828),(10441,10839),(10441,10846),(10441,10853),(10441,10860),(10441,10867),(10441,10874),(10441,10881),(10441,10888),(10441,10895),(10441,10902),(10441,10913),(10441,10920),(10441,10927),(10441,10934),(10441,10941),(10441,10948),(10441,10955),(10441,10962),(10441,10969),(10441,10976),(10441,10991),(10441,10998),(10441,11005),(10441,11012),(10441,11019),(10441,11026),(10441,11033),(10441,11040),(10441,11047),(10441,11054),(10441,11065),(10441,11072),(10441,11079),(10441,11086),(10441,11093),(10441,11100),(10441,11107),(10441,11114),(10441,11121),(10441,11128),(10441,11143),(10441,11150),(10441,11157),(10441,11164),(10441,11171),(10441,11178),(10441,11185),(10441,11192),(10441,11199),(10441,11206),(10457,10461),(10457,10468),(10457,10475),(10457,10482),(10457,10489),(10457,10496),(10457,10503),(10457,10510),(10457,10517),(10457,10524),(10535,10539),(10535,10546),(10535,10553),(10535,10560),(10535,10567),(10535,10574),(10535,10581),(10535,10588),(10535,10595),(10535,10602),(10613,10617),(10613,10624),(10613,10631),(10613,10638),(10613,10645),(10613,10652),(10613,10659),(10613,10666),(10613,10673),(10613,10680),(10687,10691),(10687,10698),(10687,10705),(10687,10712),(10687,10719),(10687,10726),(10687,10733),(10687,10740),(10687,10747),(10687,10754),(10761,10765),(10761,10772),(10761,10779),(10761,10786),(10761,10793),(10761,10800),(10761,10807),(10761,10814),(10761,10821),(10761,10828),(10835,10839),(10835,10846),(10835,10853),(10835,10860),(10835,10867),(10835,10874),(10835,10881),(10835,10888),(10835,10895),(10835,10902),(10909,10913),(10909,10920),(10909,10927),(10909,10934),(10909,10941),(10909,10948),(10909,10955),(10909,10962),(10909,10969),(10909,10976),(10987,10991),(10987,10998),(10987,11005),(10987,11012),(10987,11019),(10987,11026),(10987,11033),(10987,11040),(10987,11047),(10987,11054),(11061,11065),(11061,11072),(11061,11079),(11061,11086),(11061,11093),(11061,11100),(11061,11107),(11061,11114),(11061,11121),(11061,11128),(11139,11143),(11139,11150),(11139,11157),(11139,11164),(11139,11171),(11139,11178),(11139,11185),(11139,11192),(11139,11199),(11139,11206);
/*!40000 ALTER TABLE `Users_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Roles`
--

DROP TABLE IF EXISTS `Users_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Roles`
--

LOCK TABLES `Users_Roles` WRITE;
/*!40000 ALTER TABLE `Users_Roles` DISABLE KEYS */;
INSERT INTO `Users_Roles` VALUES (10161,10198),(10161,10434),(10162,10158),(10164,10198),(10164,10434),(10164,10461),(10164,10468),(10164,10475),(10164,10482),(10164,10489),(10164,10496),(10164,10503),(10164,10510),(10164,10517),(10164,10524),(10164,10539),(10164,10546),(10164,10553),(10164,10560),(10164,10567),(10164,10574),(10164,10581),(10164,10588),(10164,10595),(10164,10602),(10164,10617),(10164,10624),(10164,10631),(10164,10638),(10164,10645),(10164,10652),(10164,10659),(10164,10666),(10164,10673),(10164,10680),(10164,10691),(10164,10698),(10164,10705),(10164,10712),(10164,10719),(10164,10726),(10164,10733),(10164,10740),(10164,10747),(10164,10754),(10164,10765),(10164,10772),(10164,10779),(10164,10786),(10164,10793),(10164,10800),(10164,10807),(10164,10814),(10164,10821),(10164,10828),(10164,10839),(10164,10846),(10164,10853),(10164,10860),(10164,10867),(10164,10874),(10164,10881),(10164,10888),(10164,10895),(10164,10902),(10164,10913),(10164,10920),(10164,10927),(10164,10934),(10164,10941),(10164,10948),(10164,10955),(10164,10962),(10164,10969),(10164,10976),(10164,10991),(10164,10998),(10164,11005),(10164,11012),(10164,11019),(10164,11026),(10164,11033),(10164,11040),(10164,11047),(10164,11054),(10164,11065),(10164,11072),(10164,11079),(10164,11086),(10164,11093),(10164,11100),(10164,11107),(10164,11114),(10164,11121),(10164,11128),(10164,11143),(10164,11150),(10164,11157),(10164,11164),(10164,11171),(10164,11178),(10164,11185),(10164,11192),(10164,11199),(10164,11206),(10165,10198),(10165,10434),(10165,10461),(10165,10468),(10165,10475),(10165,10482),(10165,10489),(10165,10496),(10165,10503),(10165,10510),(10165,10517),(10165,10524),(10165,10539),(10165,10546),(10165,10553),(10165,10560),(10165,10567),(10165,10574),(10165,10581),(10165,10588),(10165,10595),(10165,10602),(10165,10617),(10165,10624),(10165,10631),(10165,10638),(10165,10645),(10165,10652),(10165,10659),(10165,10666),(10165,10673),(10165,10680),(10165,10691),(10165,10698),(10165,10705),(10165,10712),(10165,10719),(10165,10726),(10165,10733),(10165,10740),(10165,10747),(10165,10754),(10165,10765),(10165,10772),(10165,10779),(10165,10786),(10165,10793),(10165,10800),(10165,10807),(10165,10814),(10165,10821),(10165,10828),(10165,10839),(10165,10846),(10165,10853),(10165,10860),(10165,10867),(10165,10874),(10165,10881),(10165,10888),(10165,10895),(10165,10902),(10165,10913),(10165,10920),(10165,10927),(10165,10934),(10165,10941),(10165,10948),(10165,10955),(10165,10962),(10165,10969),(10165,10976),(10165,10991),(10165,10998),(10165,11005),(10165,11012),(10165,11019),(10165,11026),(10165,11033),(10165,11040),(10165,11047),(10165,11054),(10165,11065),(10165,11072),(10165,11079),(10165,11086),(10165,11093),(10165,11100),(10165,11107),(10165,11114),(10165,11121),(10165,11128),(10165,11143),(10165,11150),(10165,11157),(10165,11164),(10165,11171),(10165,11178),(10165,11185),(10165,11192),(10165,11199),(10165,11206);
/*!40000 ALTER TABLE `Users_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Teams`
--

DROP TABLE IF EXISTS `Users_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Teams`
--

LOCK TABLES `Users_Teams` WRITE;
/*!40000 ALTER TABLE `Users_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_UserGroups`
--

DROP TABLE IF EXISTS `Users_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_UserGroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_UserGroups`
--

LOCK TABLES `Users_UserGroups` WRITE;
/*!40000 ALTER TABLE `Users_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualHost`
--

DROP TABLE IF EXISTS `VirtualHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualHost`
--

LOCK TABLES `VirtualHost` WRITE;
/*!40000 ALTER TABLE `VirtualHost` DISABLE KEYS */;
INSERT INTO `VirtualHost` VALUES (10157,10154,0,'localhost');
/*!40000 ALTER TABLE `VirtualHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebDAVProps`
--

DROP TABLE IF EXISTS `WebDAVProps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebDAVProps`
--

LOCK TABLES `WebDAVProps` WRITE;
/*!40000 ALTER TABLE `WebDAVProps` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebDAVProps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website`
--

DROP TABLE IF EXISTS `Website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`),
  KEY `IX_76F15D13` (`uuid_`),
  KEY `IX_712BCD35` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website`
--

LOCK TABLES `Website` WRITE;
/*!40000 ALTER TABLE `Website` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiNode`
--

DROP TABLE IF EXISTS `WikiNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B54332D6` (`companyId`,`status`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_23325358` (`groupId`,`status`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiNode`
--

LOCK TABLES `WikiNode` WRITE;
/*!40000 ALTER TABLE `WikiNode` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPage`
--

DROP TABLE IF EXISTS `WikiPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_16E99B0A` (`groupId`,`nodeId`,`head`),
  KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`),
  KEY `IX_941E429C` (`groupId`,`nodeId`,`status`),
  KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`),
  KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_85E7CC76` (`resourcePrimKey`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_1725355C` (`resourcePrimKey`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPage`
--

LOCK TABLES `WikiPage` WRITE;
/*!40000 ALTER TABLE `WikiPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPageResource`
--

DROP TABLE IF EXISTS `WikiPageResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPageResource`
--

LOCK TABLES `WikiPageResource` WRITE;
/*!40000 ALTER TABLE `WikiPageResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPageResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinitionLink`
--

DROP TABLE IF EXISTS `WorkflowDefinitionLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinitionLink`
--

LOCK TABLES `WorkflowDefinitionLink` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstanceLink`
--

DROP TABLE IF EXISTS `WorkflowInstanceLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstanceLink`
--

LOCK TABLES `WorkflowInstanceLink` WRITE;
/*!40000 ALTER TABLE `WorkflowInstanceLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstanceLink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-07 15:11:59

# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: workbench.dev (MySQL 5.6.19-0ubuntu0.14.04.1)
# Database: barebones
# Generation Time: 2015-12-15 00:38:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Create barebones database
# ------------------------------------------------------------
CREATE DATABASE `barebones`;
USE `barebones`;


# Dump of table container
# ------------------------------------------------------------

DROP TABLE IF EXISTS `container`;

CREATE TABLE `container` (
  `bShared` tinyint(1) DEFAULT '0',
  `displayMethod` varchar(250) DEFAULT NULL,
  `objectID` varchar(50) NOT NULL DEFAULT '',
  `mirrorID` varchar(50) DEFAULT NULL,
  `label` varchar(250) DEFAULT '(unspecified)',
  PRIMARY KEY (`objectID`),
  KEY `mirrorID_index` (`mirrorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table container_aRules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `container_aRules`;

CREATE TABLE `container_aRules` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmArchive
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmArchive`;

CREATE TABLE `dmArchive` (
  `metaWDDX` longtext,
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `objectTypename` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `bDeleted` tinyint(1) DEFAULT '0',
  `event` varchar(250) DEFAULT NULL,
  `archiveID` varchar(50) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `lRoles` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `objectWDDX` longtext,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `ipaddress` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `archiveID_index` (`archiveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmArchive` WRITE;
/*!40000 ALTER TABLE `dmArchive` DISABLE KEYS */;

INSERT INTO `dmArchive` (`metaWDDX`, `datetimelastupdated`, `lockedBy`, `objectTypename`, `lastupdatedby`, `createdby`, `datetimecreated`, `bDeleted`, `event`, `archiveID`, `locked`, `lRoles`, `ObjectID`, `objectWDDX`, `label`, `ownedby`, `ipaddress`, `username`)
VALUES
	('<wddxPacket version=\'1.0\'><header/><data><struct><var name=\'TMPCATEGORIES\'><string></string></var><var name=\'FRIENDLYURLS\'><recordset rowCount=\'1\' fieldNames=\'datetimelastupdated,lockedBy,fuStatus,lastupdatedby,applicationName,createdby,refobjectid,friendlyURL,datetimecreated,locked,bDefault,ObjectID,redirectionType,redirectTo,label,ownedby,queryString,typename\' type=\'coldfusion.sql.QueryTable\'><field name=\'datetimelastupdated\'><dateTime>2014-4-9T10:39:22+0:0</dateTime></field><field name=\'lockedBy\'><string></string></field><field name=\'fuStatus\'><number>1.0</number></field><field name=\'lastupdatedby\'><string>farcry_CLIENTUD</string></field><field name=\'applicationName\'><string></string></field><field name=\'createdby\'><string>farcry_CLIENTUD</string></field><field name=\'refobjectid\'><string>E689D66F-96FD-E9F6-B1AF64B8DAE78A69</string></field><field name=\'friendlyURL\'><string>/home</string></field><field name=\'datetimecreated\'><dateTime>2014-4-9T10:39:22+0:0</dateTime></field><field name=\'locked\'><number>0.0</number></field><field name=\'bDefault\'><number>1.0</number></field><field name=\'ObjectID\'><string>65CAACE0-BF7F-11E3-AAD9BC5FF41C5C33</string></field><field name=\'redirectionType\'><string>none</string></field><field name=\'redirectTo\'><string>default</string></field><field name=\'label\'><string>(incomplete)</string></field><field name=\'ownedby\'><string>CDD3B33E-A463-9B75-DC0150D316830765</string></field><field name=\'queryString\'><string></string></field><field name=\'typename\'><string>farFU</string></field></recordset></var><var name=\'categories\'><recordset rowCount=\'0\' fieldNames=\'objectid,label\' type=\'coldfusion.sql.QueryTable\'><field name=\'objectid\'></field><field name=\'label\'></field></recordset></var><var name=\'FILES\'><recordset rowCount=\'0\' fieldNames=\'property,filename,archive\' type=\'coldfusion.sql.QueryTable\'><field name=\'property\'></field><field name=\'filename\'></field><field name=\'archive\'></field></recordset></var><var name=\'TREE\'><struct><var name=\'PARENT\'><string>E689D721-B6C9-605B-DE1D813E4CDA3339</string></var></struct></var></struct></data></wddxPacket>','2015-12-15 00:37:31',NULL,'dmHTML','farcry_CLIENTUD','farcry_CLIENTUD','2015-12-15 00:37:31',0,'published','E689D66F-96FD-E9F6-B1AF64B8DAE78A69',0,'E689D5FD-E815-6563-42C96C62768CE342,E689D5B4-F414-BFA2-C9057B5D298E1819','06FA60F0-A2C4-11E5-B0DE0242AC110015','<wddxPacket version=\'1.0\'><header/><data><struct><var name=\'REVIEWDATE\'><string></string></var><var name=\'DATETIMELASTUPDATED\'><dateTime>2014-4-9T10:39:22+0:0</dateTime></var><var name=\'LOCKEDBY\'><string></string></var><var name=\'TYPENAME\'><string>dmHTML</string></var><var name=\'LASTUPDATEDBY\'><string>farcry_CLIENTUD</string></var><var name=\'CREATEDBY\'><string>farcry_CLIENTUD</string></var><var name=\'DATETIMECREATED\'><dateTime>2011-12-15T22:18:57+0:0</dateTime></var><var name=\'CATHTML\'><string></string></var><var name=\'LOCKED\'><number>0.0</number></var><var name=\'STATUS\'><string>approved</string></var><var name=\'METAKEYWORDS\'><string></string></var><var name=\'aRelatedIDs\'><array length=\'0\'></array></var><var name=\'SEOTITLE\'><string></string></var><var name=\'TEASER\'><string></string></var><var name=\'DISPLAYMETHOD\'><string>displayPageStandard</string></var><var name=\'aObjectIDs\'><array length=\'0\'></array></var><var name=\'EXTENDEDMETADATA\'><string></string></var><var name=\'OBJECTID\'><string>E689D66F-96FD-E9F6-B1AF64B8DAE78A69</string></var><var name=\'LABEL\'><string>Home</string></var><var name=\'VERSIONID\'><string></string></var><var name=\'TITLE\'><string>Home</string></var><var name=\'TEASERIMAGE\'><string></string></var><var name=\'OWNEDBY\'><string>CDD3B33E-A463-9B75-DC0150D316830765</string></var><var name=\'BODY\'><string></string></var></struct></data></wddxPacket>','Home',NULL,'127.0.0.1','farcry_CLIENTUD');

/*!40000 ALTER TABLE `dmArchive` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmCategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmCategory`;

CREATE TABLE `dmCategory` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `categoryLabel` varchar(250) NOT NULL DEFAULT '',
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `imgCategory` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmCategory` WRITE;
/*!40000 ALTER TABLE `dmCategory` DISABLE KEYS */;

INSERT INTO `dmCategory` (`datetimelastupdated`, `lockedBy`, `categoryLabel`, `lastupdatedby`, `imgCategory`, `alias`, `createdby`, `datetimecreated`, `locked`, `ObjectID`, `label`, `ownedby`)
VALUES
	('2008-01-31 16:15:36','','Root','farcry','','root','farcry_CLIENTUD','2008-01-31 16:13:24',0,'CE43797A-0F7A-61E2-CCAEA1146DFFDD09','Root','');

/*!40000 ALTER TABLE `dmCategory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmCron
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmCron`;

CREATE TABLE `dmCron` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `endDate` datetime NOT NULL,
  `startDate` datetime NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `parameters` varchar(250) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `frequency` varchar(250) DEFAULT 'daily',
  `bAutoStart` tinyint(1) NOT NULL DEFAULT '1',
  `timeOut` decimal(11,0) DEFAULT '60',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmCSS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmCSS`;

CREATE TABLE `dmCSS` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `mediaType` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `bThisNodeOnly` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmFile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmFile`;

CREATE TABLE `dmFile` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `documentDate` datetime DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `catFile` varchar(250) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(250) NOT NULL DEFAULT 'draft',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmFlash
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmFlash`;

CREATE TABLE `dmFlash` (
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `flashPlay` tinyint(1) NOT NULL DEFAULT '1',
  `flashQuality` varchar(250) DEFAULT 'high',
  `flashWidth` decimal(10,2) DEFAULT '0.00',
  `flashBgcolor` varchar(250) DEFAULT '#FFFFFF',
  `status` varchar(250) DEFAULT NULL,
  `metaKeywords` varchar(250) DEFAULT NULL,
  `teaser` longtext,
  `flashAlign` varchar(250) DEFAULT 'center',
  `displayMethod` varchar(250) NOT NULL DEFAULT 'displayPageStandard',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `flashMenu` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(250) DEFAULT NULL,
  `flashMovie` varchar(250) DEFAULT NULL,
  `datetimelastupdated` datetime NOT NULL,
  `flashLoop` tinyint(1) NOT NULL DEFAULT '0',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `flashVersion` varchar(250) DEFAULT '8,0,0,0',
  `flashURL` varchar(250) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `flashParams` varchar(250) DEFAULT NULL,
  `bLibrary` tinyint(1) DEFAULT '1',
  `catFlash` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `flashHeight` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmHTML
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmHTML`;

CREATE TABLE `dmHTML` (
  `reviewDate` datetime DEFAULT NULL,
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `catHTML` varchar(250) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(250) NOT NULL DEFAULT 'draft',
  `metaKeywords` longtext,
  `seoTitle` varchar(250) DEFAULT NULL,
  `Teaser` longtext,
  `displayMethod` varchar(250) NOT NULL DEFAULT 'displayPageStandard',
  `extendedmetadata` longtext,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `versionID` varchar(50) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `teaserImage` varchar(50) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `Body` longtext,
  PRIMARY KEY (`ObjectID`),
  KEY `teaserImage_index` (`teaserImage`),
  KEY `versionID_index` (`versionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmHTML` WRITE;
/*!40000 ALTER TABLE `dmHTML` DISABLE KEYS */;

INSERT INTO `dmHTML` (`reviewDate`, `datetimelastupdated`, `lockedBy`, `lastupdatedby`, `createdby`, `datetimecreated`, `catHTML`, `locked`, `status`, `metaKeywords`, `seoTitle`, `Teaser`, `displayMethod`, `extendedmetadata`, `ObjectID`, `label`, `versionID`, `Title`, `teaserImage`, `ownedby`, `Body`)
VALUES
	(NULL,'2015-12-15 00:37:31',NULL,'farcry_CLIENTUD','farcry_CLIENTUD','2011-12-15 22:18:57',NULL,0,'approved',NULL,NULL,NULL,'displayPageStandard',NULL,'E689D66F-96FD-E9F6-B1AF64B8DAE78A69','Home Sweet Home',NULL,'Home Sweet Home',NULL,'CDD3B33E-A463-9B75-DC0150D316830765',NULL);

/*!40000 ALTER TABLE `dmHTML` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmHTML_aObjectIDs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmHTML_aObjectIDs`;

CREATE TABLE `dmHTML_aObjectIDs` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmHTML_aRelatedIDs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmHTML_aRelatedIDs`;

CREATE TABLE `dmHTML_aRelatedIDs` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmImage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmImage`;

CREATE TABLE `dmImage` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `StandardImage` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `alt` varchar(1000) DEFAULT NULL,
  `ThumbnailImage` varchar(250) DEFAULT NULL,
  `SourceImage` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `catImage` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmInclude
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmInclude`;

CREATE TABLE `dmInclude` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `webskin` varchar(250) DEFAULT NULL,
  `catInclude` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `include` varchar(250) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(250) NOT NULL DEFAULT 'draft',
  `webskinTypename` varchar(250) DEFAULT NULL,
  `teaser` longtext,
  `displayMethod` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `teaserImage` varchar(50) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `teaserImage_index` (`teaserImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmNavigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmNavigation`;

CREATE TABLE `dmNavigation` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `fu` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `options` varchar(250) DEFAULT NULL,
  `internalRedirectID` varchar(50) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(250) NOT NULL DEFAULT 'draft',
  `ExternalLink` varchar(50) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `target` varchar(250) DEFAULT NULL,
  `navType` varchar(250) NOT NULL DEFAULT 'aObjectIDs',
  `lNavIDAlias` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `externalRedirectURL` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `ExternalLink_index` (`ExternalLink`),
  KEY `internalRedirectID_index` (`internalRedirectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmNavigation` WRITE;
/*!40000 ALTER TABLE `dmNavigation` DISABLE KEYS */;

INSERT INTO `dmNavigation` (`datetimelastupdated`, `lockedBy`, `lastupdatedby`, `fu`, `createdby`, `options`, `internalRedirectID`, `datetimecreated`, `locked`, `status`, `ExternalLink`, `ObjectID`, `target`, `navType`, `lNavIDAlias`, `label`, `title`, `externalRedirectURL`, `ownedby`)
VALUES
	('2011-11-11 10:35:20','','farcry_CLIENTUD','','farcry_CLIENTUD','','','2011-11-11 10:35:20',0,'draft','','0909BC90-0BFD-11E1-BAE44A60BC869D4C','','aObjectIDs','','(incomplete)','','','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2011-11-11 10:35:50','','farcry_CLIENTUD','','farcry_CLIENTUD','','','2011-11-11 10:35:50',0,'draft','','1AC64B60-0BFD-11E1-BAE44A60BC869D4C','','aObjectIDs','','(incomplete)','','','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2011-11-11 10:36:21','','farcry_CLIENTUD','','farcry_CLIENTUD','','','2011-11-11 10:36:21',0,'draft','','2D85CB40-0BFD-11E1-BAE44A60BC869D4C','','aObjectIDs','','(incomplete)','','','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2011-11-11 10:37:36','','farcry_CLIENTUD','','farcry_CLIENTUD','','','2011-11-11 10:37:36',0,'draft','','5A3BB780-0BFD-11E1-BAE44A60BC869D4C','','aObjectIDs','','(incomplete)','','','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2013-11-11 14:59:25','','farcry_CLIENTUD','','farcry','','','2007-12-17 16:18:21',0,'approved','','E689D720-B19E-FC94-66DD3411BED0693C','_self','aObjectIDs','root','Root','Root','',''),
	('2014-04-09 10:39:08','','farcry_CLIENTUD','','farcry','','','2007-12-17 16:18:21',0,'approved','','E689D721-B6C9-605B-DE1D813E4CDA3339','_self','aObjectIDs','home','Home','Home','',''),
	('2013-11-11 14:59:43','','farcry_CLIENTUD','','farcry','','','2007-12-17 16:18:21',0,'approved','','E689D724-AE3E-A438-FCD3CBF4D14557C3','_self','aObjectIDs','hidden','Utility','Utility','',''),
	('2013-11-11 14:59:49','','farcry_CLIENTUD','','farcry','','','2007-12-17 16:18:21',0,'approved','','E689D729-0081-4050-6D2273E9D9B6389F','_self','aObjectIDs','rubbish','Trash','Trash','',''),
	('2011-11-11 10:34:55','','farcry_CLIENTUD','','farcry_CLIENTUD','','','2011-11-11 10:34:55',0,'draft','','F9E823F0-0BFC-11E1-BAE44A60BC869D4C','','aObjectIDs','','(incomplete)','','','CDD3B33E-A463-9B75-DC0150D316830765');

/*!40000 ALTER TABLE `dmNavigation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmNavigation_aObjectIDs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmNavigation_aObjectIDs`;

CREATE TABLE `dmNavigation_aObjectIDs` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmNavigation_aObjectIDs` WRITE;
/*!40000 ALTER TABLE `dmNavigation_aObjectIDs` DISABLE KEYS */;

INSERT INTO `dmNavigation_aObjectIDs` (`data`, `typename`, `parentid`, `seq`)
VALUES
	('E689D66F-96FD-E9F6-B1AF64B8DAE78A69','dmHTML','E689D721-B6C9-605B-DE1D813E4CDA3339',1.00);

/*!40000 ALTER TABLE `dmNavigation_aObjectIDs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmProfile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmProfile`;

CREATE TABLE `dmProfile` (
  `lockedBy` varchar(250) DEFAULT NULL,
  `notes` longtext,
  `lastLogin` datetime DEFAULT NULL,
  `bActive` tinyint(1) NOT NULL DEFAULT '0',
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `userDirectory` varchar(250) NOT NULL DEFAULT '',
  `locale` varchar(250) NOT NULL DEFAULT 'en_AU',
  `department` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `firstName` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `userName` varchar(250) NOT NULL DEFAULT '',
  `emailAddress` varchar(250) DEFAULT NULL,
  `datetimelastupdated` datetime NOT NULL,
  `bReceiveEmail` tinyint(1) NOT NULL DEFAULT '1',
  `position` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `lastName` varchar(250) DEFAULT NULL,
  `fax` varchar(250) DEFAULT NULL,
  `wddxPersonalisation` longtext,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `overviewHome` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmProfile` WRITE;
/*!40000 ALTER TABLE `dmProfile` DISABLE KEYS */;

INSERT INTO `dmProfile` (`lockedBy`, `notes`, `lastLogin`, `bActive`, `lastupdatedby`, `userDirectory`, `locale`, `department`, `avatar`, `ObjectID`, `firstName`, `label`, `userName`, `emailAddress`, `datetimelastupdated`, `bReceiveEmail`, `position`, `createdby`, `lastName`, `fax`, `wddxPersonalisation`, `datetimecreated`, `locked`, `overviewHome`, `phone`, `ownedby`)
VALUES
	(NULL,NULL,'2015-12-15 00:37:14',0,'farcry_CLIENTUD','CLIENTUD','en_AU',NULL,NULL,'CDD3B33E-A463-9B75-DC0150D316830765',NULL,'farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2013-11-11 15:02:55',0,NULL,'farcry',NULL,NULL,NULL,'2008-01-31 14:11:18',0,NULL,NULL,NULL);

/*!40000 ALTER TABLE `dmProfile` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmWebskinAncestor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmWebskinAncestor`;

CREATE TABLE `dmWebskinAncestor` (
  `ancestorTemplate` varchar(250) NOT NULL DEFAULT '',
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `webskinTemplate` varchar(250) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ancestorTypename` varchar(250) NOT NULL DEFAULT '',
  `webskinTypename` varchar(250) DEFAULT NULL,
  `ancestorID` varchar(50) NOT NULL DEFAULT '',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `webskinObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `ancestorID_index` (`ancestorID`),
  KEY `webskinObjectID_index` (`webskinObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table dmWizard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmWizard`;

CREATE TABLE `dmWizard` (
  `datetimelastupdated` datetime NOT NULL,
  `Steps` longtext,
  `ReferenceID` varchar(250) NOT NULL DEFAULT '',
  `Data` longtext,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `UserLogin` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `CurrentStep` decimal(10,2) DEFAULT '1.00',
  `PrimaryObjectID` varchar(50) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `PrimaryObjectID_index` (`PrimaryObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farBarnacle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farBarnacle`;

CREATE TABLE `farBarnacle` (
  `datetimelastupdated` datetime NOT NULL,
  `referenceid` varchar(50) DEFAULT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `permissionid` varchar(50) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `objecttype` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `roleid` varchar(50) DEFAULT NULL,
  `barnaclevalue` decimal(10,2) DEFAULT '0.00',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `roleid_index` (`roleid`),
  KEY `permissionid_index` (`permissionid`),
  KEY `referenceid_index` (`referenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farBarnacle` WRITE;
/*!40000 ALTER TABLE `farBarnacle` DISABLE KEYS */;

INSERT INTO `farBarnacle` (`datetimelastupdated`, `referenceid`, `lockedBy`, `permissionid`, `lastupdatedby`, `objecttype`, `createdby`, `datetimecreated`, `roleid`, `barnaclevalue`, `locked`, `ObjectID`, `label`, `ownedby`)
VALUES
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E51594C-EE79-345C-9E78D508536F7088','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2B1-D797-240F-53534186AFD119ED','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E51597F-BEF9-4B80-EAA6040CF397442E','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2D2-A257-0547-41617FF02EE7A585','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E5159A0-E3D1-28B3-400876206DE5C0BA','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E5159C2-A5D8-9F43-4ECD42C57EDFDEFF','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D28C-A886-56BE-BC48F514253BBC9C','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E5159E4-D16D-63BC-58D4ACE6ECB112F3','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E515A06-0A3B-EBD8-F06A1B3401769526','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2A5-E097-4576-C31248CA0D52232E','farcry','dmNavigation','farcry','2008-05-22 11:49:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E515A28-CCE4-FDBC-F27242B8C2901E2A','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'0E515A52-03F7-FF34-A0FB1F6F23D68D40','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5E0-DA22-E887-D354DB4233669252',0.00,0,'0E515A86-B574-66E9-5F64C7BC536ACB5D','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2B1-D797-240F-53534186AFD119ED','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5E0-DA22-E887-D354DB4233669252',0.00,0,'0E515AA8-C055-E354-0A03C27B8D5182EF','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2D2-A257-0547-41617FF02EE7A585','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5E0-DA22-E887-D354DB4233669252',0.00,0,'0E515AC9-B161-E876-5CD72C9C42A2A8FB','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D28C-A886-56BE-BC48F514253BBC9C','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5E0-DA22-E887-D354DB4233669252',0.00,0,'0E515AFC-F7BF-8B24-FC1CB5FC92C54D15','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5E0-DA22-E887-D354DB4233669252',0.00,0,'0E515B60-DA03-3385-D864C4538C8EDF98','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515B9A-D99F-2A7B-D8F7FE55BBEA4F94','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2B1-D797-240F-53534186AFD119ED','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515BBB-A27E-B4E8-36A2E89678951DBC','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2D2-A257-0547-41617FF02EE7A585','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515BDE-B65F-ACD3-01A062E770403FE9','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515C07-986B-2671-AD1701C78C8AE856','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D28C-A886-56BE-BC48F514253BBC9C','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515C32-EA34-8EB8-993883E22929BDFC','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515C54-F191-D0A0-5885B71D5FACBDB1','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2A5-E097-4576-C31248CA0D52232E','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515C76-C7A4-55FB-8A76AE0589C7A92A','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5D6-F917-2DDA-D7DD0091F974912B',0.00,0,'0E515C97-C82B-A2C9-BD77E138EBCD9A05','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',0.00,0,'0E515D47-CA0B-2DDE-2F75C20D4005DCD4','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','farcry','dmNavigation','farcry','2008-05-22 11:49:50','E689D5C9-AC95-26EF-7B2E71C02EDB8757',0.00,0,'0E515DF3-DE2E-B63F-37353FA907ED3AFE','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515E26-CDB5-8E26-0E546FAF63A0EB4B','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2B1-D797-240F-53534186AFD119ED','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515E47-0CF1-0741-DEEB191FE093EB73','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2D2-A257-0547-41617FF02EE7A585','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515E6D-FE6F-4877-C50839D761687273','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515E8E-D109-67F4-C15B6E6FB4C41D7C','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D28C-A886-56BE-BC48F514253BBC9C','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515EB0-9E8A-AABD-9870BFAEA50383A5','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515ED6-A8ED-6D88-CBF164F5B40C382B','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2A5-E097-4576-C31248CA0D52232E','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515EF9-0673-434F-EF0C6F96A0E0F23E','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515F19-9840-8EF3-13BB3FD5AEB48D74','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2008-05-22 11:49:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D298-CC85-C22F-95829704E2D5B45C','farcry','dmNavigation','farcry','2008-05-22 11:49:51','E689D5B4-F414-BFA2-C9057B5D298E1819',0.00,0,'0E515F45-DBCA-C416-39F232E4602D0A1D','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2011-12-15 17:08:33','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:33','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9995D8D0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:33','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:33','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'999BA530-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:33','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:33','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'99AAC060-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:34','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:34','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'99FE1080-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:34','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:34','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9A0D52C0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:34','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:34','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9A2324B0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:34','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:34','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9A6E5E80-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:34','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:34','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9A7CB660-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59A-9A8E-A3F8-EA41732715E84F87','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9A8AC020-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9AB9BF60-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9AC9C4F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9AD6BD40-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9AEB2FA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9AFDF450-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9B0F3260-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:35','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:35','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9B16AC70-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9B202250-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9B2E5320-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9B330E10-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9B386540-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D59D-D8C5-616D-4B6FFB61CC29E340','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9B3CF920-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9B590CA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9B5CB620-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9B625B70-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9B782D60-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9B7F5950-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9B8C9FC0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9B98ADB0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9BA075E0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:36','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD','anonymous','farCoapi','Unknown','2011-12-15 17:08:36','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9BA530D0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9BCBCBA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9BD0ADA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9BD4F360-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9BD8EB00-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9BE54710-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9BEAC550-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9BF06AA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9BF65E10-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9C002210-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9C061580-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9C0B45A0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9C111200-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:37','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:37','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9C423420-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9C4FA1A0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9C556E00-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9C5BFDB0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9C7467B0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9C7AD050-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9C818710-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9C86B730-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9C927700-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9C966EA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9C9EFA20-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5A7-A91D-6350-47EBEC196B30A68F','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9CA38E00-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9CC8A230-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9CCD5D20-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','5CB48D6F-571D-49B7-A5BDBDBBF6D54D8A','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9CD21810-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9CDD3BA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:38','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:38','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9CE13340-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:39','6408937F-52F4-4614-A76D0096B55FF9F6','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:39','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9CE6B180-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:39','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:39','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9CEF6410-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:39','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:39','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9CF2BF70-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:39','4E908D7F-58A2-4CD9-9F419B732C26971E','','E689D5AA-9CA9-5496-4FF5040A8002629C','anonymous','farCoapi','Unknown','2011-12-15 17:08:39','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9CF88BD0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:40','06CFC8B3E37C5BEA664B71408CDB014B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:40','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9DE77FB0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:40','06CFC8B3E37C5BEA664B71408CDB014B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:40','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9E00D410-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:40','06CFC8B3E37C5BEA664B71408CDB014B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:40','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'9E119CF0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:41','06CFC8B3E37C5BEA664B71408CDB014B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:41','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9E2E25A0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:41','06CFC8B3E37C5BEA664B71408CDB014B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:41','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9E5C1370-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:41','06CFC8B3E37C5BEA664B71408CDB014B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:41','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'9E6F4D50-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:41','70167446C9012B0EFD78F1242F7B3217','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:41','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9E9524D0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','70167446C9012B0EFD78F1242F7B3217','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9EAC2F40-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','70167446C9012B0EFD78F1242F7B3217','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'9ED14370-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','70167446C9012B0EFD78F1242F7B3217','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9ED959C0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','70167446C9012B0EFD78F1242F7B3217','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9EE6C740-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','70167446C9012B0EFD78F1242F7B3217','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'9F074790-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','0D3777F4509E5A8B818DAD21E985FB05','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9F185E90-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:42','0D3777F4509E5A8B818DAD21E985FB05','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:42','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9F3BC510-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','0D3777F4509E5A8B818DAD21E985FB05','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'9F62D510-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','0D3777F4509E5A8B818DAD21E985FB05','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9F72B390-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','0D3777F4509E5A8B818DAD21E985FB05','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9F8CCB40-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','0D3777F4509E5A8B818DAD21E985FB05','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'9FA4C010-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','AAC8E8031AE359CE8AACD6C05CA564DF','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'9FB38D20-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','AAC8E8031AE359CE8AACD6C05CA564DF','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'9FBE3B80-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','AAC8E8031AE359CE8AACD6C05CA564DF','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'9FCC1E30-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','AAC8E8031AE359CE8AACD6C05CA564DF','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'9FD3BF50-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:43','AAC8E8031AE359CE8AACD6C05CA564DF','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'9FDCE710-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:44','AAC8E8031AE359CE8AACD6C05CA564DF','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:44','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'9FE72040-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:44','53DE824999067B0B9ECE5E04A4AB2520','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:44','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A04FCD20-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:44','53DE824999067B0B9ECE5E04A4AB2520','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'A0715EE0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:45','53DE824999067B0B9ECE5E04A4AB2520','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:45','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A07B49F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:45','53DE824999067B0B9ECE5E04A4AB2520','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:45','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A0964C00-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:45','53DE824999067B0B9ECE5E04A4AB2520','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:45','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'A0A05E20-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:45','53DE824999067B0B9ECE5E04A4AB2520','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:45','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A0D1F570-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:45','244A186D90265F3547DE6D4BC2BCF625','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:45','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A1100FE0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','244A186D90265F3547DE6D4BC2BCF625','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'A11B8190-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','244A186D90265F3547DE6D4BC2BCF625','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A12B11F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','244A186D90265F3547DE6D4BC2BCF625','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A1385860-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','244A186D90265F3547DE6D4BC2BCF625','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A1524900-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','244A186D90265F3547DE6D4BC2BCF625','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A160EF00-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','8C73FFB766E38439047E8AA9568F5B78','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A1703140-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','8C73FFB766E38439047E8AA9568F5B78','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'A17ADFA0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','8C73FFB766E38439047E8AA9568F5B78','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A18CB9F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:46','8C73FFB766E38439047E8AA9568F5B78','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:46','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A198EEF0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8C73FFB766E38439047E8AA9568F5B78','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A1D00480-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8C73FFB766E38439047E8AA9568F5B78','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A1D77E90-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8515E4BF3CCFD5A6524752C52A30E460','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A1ED7790-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8515E4BF3CCFD5A6524752C52A30E460','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'A1FE4070-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8515E4BF3CCFD5A6524752C52A30E460','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A212D9E0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8515E4BF3CCFD5A6524752C52A30E460','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A21A53F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8515E4BF3CCFD5A6524752C52A30E460','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A2206E70-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','8515E4BF3CCFD5A6524752C52A30E460','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A2352EF0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:47','A51D2CE376EF6971E182A4B0AFD3AB74','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:47','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A23E56B0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','A51D2CE376EF6971E182A4B0AFD3AB74','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'A255FD60-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','A51D2CE376EF6971E182A4B0AFD3AB74','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A25D5060-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','A51D2CE376EF6971E182A4B0AFD3AB74','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A26391F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','A51D2CE376EF6971E182A4B0AFD3AB74','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A26DF230-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','A51D2CE376EF6971E182A4B0AFD3AB74','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A2762F90-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','428E2C9270F3E36AC3F252551DF5368B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A280B6E0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','428E2C9270F3E36AC3F252551DF5368B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'A287BBC0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','428E2C9270F3E36AC3F252551DF5368B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A28E7280-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','428E2C9270F3E36AC3F252551DF5368B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A2AECBC0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','428E2C9270F3E36AC3F252551DF5368B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A2C6C090-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:48','428E2C9270F3E36AC3F252551DF5368B','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:48','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A2D28060-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','057FBA81E87CC103B847962D5BB6EF39','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A2E45AB0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','057FBA81E87CC103B847962D5BB6EF39','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'A2F52390-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','057FBA81E87CC103B847962D5BB6EF39','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A2FBDA50-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','057FBA81E87CC103B847962D5BB6EF39','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A3080F50-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','057FBA81E87CC103B847962D5BB6EF39','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A3144450-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','057FBA81E87CC103B847962D5BB6EF39','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A320A060-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','4BCFB7EA2B60B57F8AFC8C3926B8C859','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'A351C280-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','4BCFB7EA2B60B57F8AFC8C3926B8C859','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'A35B1150-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:49','4BCFB7EA2B60B57F8AFC8C3926B8C859','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:49','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'A36857C0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:50','4BCFB7EA2B60B57F8AFC8C3926B8C859','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:50','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'A37CF130-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:50','4BCFB7EA2B60B57F8AFC8C3926B8C859','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'A391FFD0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2011-12-15 17:08:50','4BCFB7EA2B60B57F8AFC8C3926B8C859','','9DB3EC90-26EB-11E1-9348001C42000009','anonymous','webtop','Unknown','2011-12-15 17:08:50','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'A3A5D5F0-26EB-11E1-9348001C42000009','(incomplete)',''),
	('2007-12-17 16:18:42','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:42','E689D5FD-E815-6563-42C96C62768CE342',1.00,0,'E68A2A80-E609-17BA-A9315E9EF426DB93','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A2B77-9F45-FDB6-E0FA25790E84FE72','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A2BE5-F71C-C193-65C5920547F93E36','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A2C1A-0C30-E9A7-D843D373256AE7A6','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A2C59-DA70-01A3-BBE6D8ECC3F8DCCD','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5D6-F917-2DDA-D7DD0091F974912B',1.00,0,'E68A2C97-C52A-3A4E-DB8B7B2AA28227BB','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2CC6-C551-0A5D-64BCBF9D06736928','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2D15-C0AC-4354-1D972CFFB8C3C4AF','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2D54-B017-AF51-CA2B7F50C1F3334E','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2D87-0DC2-A913-FE4D412DBD3592F2','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2DBE-FA15-894C-BDAA9DC83156900A','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2E0D-B35F-12F3-B0FECA0838C1B9C3','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2E64-DF0C-F69E-7DF9A454141083B5','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A2EAA-D193-3832-BE14624F39C849A4','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A2ED7-C594-5390-C022698CEBC8240F','(incomplete)',''),
	('2007-12-17 16:18:43','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:43','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A2F00-EBCF-F810-AFA47A1A085FF5F8','(incomplete)',''),
	('2007-12-17 16:18:44','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A2F27-053E-1FFD-8DB193C102527BEE','(incomplete)',''),
	('2007-12-17 16:18:44','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A2F4E-A986-C217-9DF8E021A99BBC40','(incomplete)',''),
	('2007-12-17 16:18:44','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A2F75-F7B4-3A6A-2D0E29ACA45EE23A','(incomplete)',''),
	('2007-12-17 16:18:44','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A30D8-9138-B288-B6FB45210EE4BEE3','(incomplete)',''),
	('2007-12-17 16:18:44','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A30FE-DAFA-2321-370DBF65948A8CCF','(incomplete)',''),
	('2007-12-17 16:18:44','E689D724-AE3E-A438-FCD3CBF4D14557C3','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A3129-0534-678E-0EEB2DEC2F6A43CF','(incomplete)',''),
	('2007-12-17 16:18:44','E689D729-0081-4050-6D2273E9D9B6389F','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A317E-D6DA-239C-6DED225DA6B5BF2B','(incomplete)',''),
	('2007-12-17 16:18:44','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A31D4-CFEF-0D22-31DB70A98A68EC8F','(incomplete)',''),
	('2007-12-17 16:18:44','E689D729-0081-4050-6D2273E9D9B6389F','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A3215-9DC7-FAD3-E052EC8667246206','(incomplete)',''),
	('2007-12-17 16:18:44','E689D729-0081-4050-6D2273E9D9B6389F','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A3246-9739-2DF5-F0F84CCC5353CFFF','(incomplete)',''),
	('2007-12-17 16:18:44','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A32AD-D025-D40D-A276654A6736DFB3','(incomplete)',''),
	('2007-12-17 16:18:44','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:44','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A32ED-D52A-859A-0D86AE64466890A8','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A3320-BB8B-23B0-B8D4E64966261ADF','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A3359-BD87-09D6-1D0A95A191424C4E','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A3381-07F9-9692-2DCEE91B8479C376','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A33A8-CFF1-CBB6-ABB57807F76D8413','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A33D6-E218-140F-5C6F9F6A98541CEC','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A33FF-F7DB-9238-1715BBEE5113118A','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A342D-D65A-363F-A9F7C251D51AEC57','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A3467-D2B9-95C6-1EA62D255687FF9B','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A3492-BF02-9524-A19581C993661AC0','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A34B9-AE31-B8A2-87E10927EB70843A','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A3508-CF42-97ED-061567E9360F4160','(incomplete)',''),
	('2007-12-17 16:18:45','E689D729-0081-4050-6D2273E9D9B6389F','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A352F-BFA2-D53C-7C5064CC07205A1C','(incomplete)',''),
	('2007-12-17 16:18:45','E689D720-B19E-FC94-66DD3411BED0693C','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A3570-F404-50B8-5C5C9B4A5E6B9200','(incomplete)',''),
	('2007-12-17 16:18:45','E689D720-B19E-FC94-66DD3411BED0693C','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:45','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A36AA-C5FF-6536-7279B48F201A9C16','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A370E-EC45-2409-68270201AF0885EF','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A374B-B22A-047B-B83EA9A6FBE5C795','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3788-B011-7FF4-B2894393A2839837','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A37CB-A680-CF4E-F57DC54AD622C459','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A37FA-086C-51C9-DA8D6F414AEA78EA','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3827-A8D9-1874-D177A91BC8C3BF76','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A384E-FC55-B993-58FFE98BFCA3430E','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3914-F673-800D-881B468A88658E04','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A398D-0D37-F163-6DE77F549D0876E3','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A39B3-02B9-E440-87E3F96D509FF1F9','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A39E4-DE9A-7485-7B484E49984A3F88','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3A18-ACE3-FF2E-9AF3A974BBE45CFB','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A3A3F-EBC1-4CEF-9DA8AA78B0602812','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3A65-DC53-DDFD-7AFBC280FF07488C','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3A8D-A2C0-A0BA-C83490F59BCB4035','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A3AB0-D611-C5E6-4C1963D5AF7AE9DD','(incomplete)',''),
	('2007-12-17 16:18:46','E689D720-B19E-FC94-66DD3411BED0693C','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:46','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A3AD6-FAAA-D3BB-406AA6B52A0EFCE3','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3AFB-CA60-5852-457AA8D2B7DE3B76','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A3B50-94E8-AFF8-3CC9E610F5B99835','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3B74-94CA-4B62-A7908F8EB9CA5119','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3B9B-D59F-FD15-6F0E429FF871F40B','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A3BC5-D7AE-C16D-B659E8F6967EC9D3','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A3BF0-9EB0-1A64-1CB34B24DE44C540','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3C15-92EF-44B8-DD806441D94F82BC','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A3C3A-FD1D-2A60-192D1EF6CF5CF47B','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3C5E-0801-5D23-DAE053D3BBDB5064','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3C8F-D5BE-1A68-08263B467BDB349A','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5FD-E815-6563-42C96C62768CE342',1.00,0,'E68A3CC0-9912-B209-539C1EB535B4FA9A','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A3D0F-FC8D-6E3A-F1C9399A7CCFF4B5','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3D34-E62C-92C2-88ED72BB08967ADD','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A3D5A-FF14-58B2-D15E0D37F6318B5C','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3D7C-F11B-D8BB-77E1795921F5CA84','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3D9F-D030-7423-0BA18E29F1D57336','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A3DCE-02A3-6A18-AFA352829131B4F6','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A3DF0-BCF8-33F2-B2EBA13054F4BE9A','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3E12-991B-38CE-3888C6B09BE24CA2','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A3E38-AEDC-FC5E-9E422D0FEEFBC8B4','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3E97-9FA8-6BD7-9FD385E72B6EB11D','(incomplete)',''),
	('2007-12-17 16:18:47','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:47','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3EB8-BE50-3322-065494858960F7B6','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A3EDB-0ED1-5CED-AAE2DEC9F5DB9571','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A3EFD-A18F-AF16-44010A747E525B62','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5C9-AC95-26EF-7B2E71C02EDB8757',-1.00,0,'E68A3F24-F84A-4D0D-74931793B8DE8169','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A3F48-CFC0-8C72-1F601CF186743127','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A3F6A-9355-4D2D-2A0BE974E41B9F2C','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',-1.00,0,'E68A3F8C-A73D-0B9D-9FFB040896EA9631','(incomplete)',''),
	('2007-12-17 16:18:48','E689D720-B19E-FC94-66DD3411BED0693C','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:48','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A3FAE-EDEB-229A-B293A26BD9F89E81','(incomplete)',''),
	('2007-12-17 16:18:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:49','E689D5FD-E815-6563-42C96C62768CE342',0.00,0,'E68A45FF-DD3D-39BF-E9C07EB04FA5E2E0','(incomplete)',''),
	('2007-12-17 16:18:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:49','E689D5D6-F917-2DDA-D7DD0091F974912B',1.00,0,'E68A464C-ECFC-23B6-90C0F6E9340BAB2E','(incomplete)',''),
	('2007-12-17 16:18:49','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:49','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A468E-0E03-C216-73FF92A1B08C04F4','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A46C1-EBBE-84A4-BAE3C41F1DEE4840','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A4701-B967-3213-B390B2B7DCBA258F','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5E0-DA22-E887-D354DB4233669252',1.00,0,'E68A4742-D8E0-F4D5-346684A6777FEEC2','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A47B5-F952-C63A-DF61D5E6ED66BD85','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A47ED-A7E9-C092-87FE14DA4CE5B92A','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A4815-9172-84E2-A6BBA487F95AA8CF','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A483C-F4AA-50A6-ECB93E5E3F4E329D','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A486B-CFCD-694C-CE984DB24FA3025B','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A4891-D23D-8F53-D9B1D298A888D9C9','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A48BD-A2A9-DDF0-CB2945F54978B86E','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A490D-094A-222E-C66686B36E8D5A9B','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D202-EC06-56B0-C3F0E3D7A54A9A03','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A4933-F1D1-C6F5-16E56ACE92C0326A','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2B1-D797-240F-53534186AFD119ED','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A495C-BCE9-BAFC-6760A63BCC195788','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2D2-A257-0547-41617FF02EE7A585','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A49A3-A7F6-9897-FF21822588B528F6','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D235-FDCC-1B10-FC659CA1FDF77C1D','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A49C9-0FC7-FE36-A9DD88EA005A241F','(incomplete)',''),
	('2007-12-17 16:18:50','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D28C-A886-56BE-BC48F514253BBC9C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:50','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A49EF-AA2D-E2C6-86C602762C770DA8','(incomplete)',''),
	('2007-12-17 16:18:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5','Unknown','dmNavigation','Unknown','2007-12-17 16:18:51','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A4B09-C2A5-E8B4-3410F0DF70E15A9D','(incomplete)',''),
	('2007-12-17 16:18:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D2A5-E097-4576-C31248CA0D52232E','Unknown','dmNavigation','Unknown','2007-12-17 16:18:51','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A4B2E-95B7-3420-FC1926A8F20C930E','(incomplete)',''),
	('2007-12-17 16:18:51','E689D721-B6C9-605B-DE1D813E4CDA3339','','E689D298-CC85-C22F-95829704E2D5B45C','Unknown','dmNavigation','Unknown','2007-12-17 16:18:51','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A4B5F-0E5C-C3BA-9D945CB4CE269FC0','(incomplete)',''),
	('2007-12-17 16:18:52','E689D720-B19E-FC94-66DD3411BED0693C','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','Unknown','dmNavigation','Unknown','2007-12-17 16:18:52','E689D5FD-E815-6563-42C96C62768CE342',-1.00,0,'E68A51A5-C071-6574-1511BE3428599E4F','(incomplete)',''),
	('2007-12-17 16:18:52','E689D720-B19E-FC94-66DD3411BED0693C','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','Unknown','dmNavigation','Unknown','2007-12-17 16:18:52','E689D5E0-DA22-E887-D354DB4233669252',-1.00,0,'E68A51C9-9D65-1DC5-CF8F12199B37BF69','(incomplete)',''),
	('2007-12-17 16:18:52','E689D720-B19E-FC94-66DD3411BED0693C','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','Unknown','dmNavigation','Unknown','2007-12-17 16:18:52','E689D5D6-F917-2DDA-D7DD0091F974912B',-1.00,0,'E68A51F5-EC18-E0E2-4CAC22064E886C1E','(incomplete)',''),
	('2007-12-17 16:18:52','E689D720-B19E-FC94-66DD3411BED0693C','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','Unknown','dmNavigation','Unknown','2007-12-17 16:18:52','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00,0,'E68A522F-C915-69F8-C46CD5E28A29C5CE','(incomplete)',''),
	('2007-12-17 16:18:53','E689D720-B19E-FC94-66DD3411BED0693C','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','Unknown','dmNavigation','Unknown','2007-12-17 16:18:53','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00,0,'E68A5257-97C7-B0BC-7AA6DE37C05E5FB9','(incomplete)',''),
	('2007-12-17 16:18:53','E689D720-B19E-FC94-66DD3411BED0693C','','E689D591-0FA1-C0D6-59E34E7B6D15E30A','Unknown','dmNavigation','Unknown','2007-12-17 16:18:53','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00,0,'E68A527C-CBDD-BAA2-B872883B30E36FDB','(incomplete)','');

/*!40000 ALTER TABLE `farBarnacle` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farCoapi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farCoapi`;

CREATE TABLE `farCoapi` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farCoapi` WRITE;
/*!40000 ALTER TABLE `farCoapi` DISABLE KEYS */;

INSERT INTO `farCoapi` (`datetimelastupdated`, `lockedBy`, `lastupdatedby`, `createdby`, `datetimecreated`, `locked`, `ObjectID`, `name`, `label`, `ownedby`)
VALUES
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD27A290-BF7F-11E3-9C24BC5FF41C5C33','dmInclude','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD292930-BF7F-11E3-9C24BC5FF41C5C33','farTask','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD2B4C10-BF7F-11E3-9C24BC5FF41C5C33','farQueueTask','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD2C8490-BF7F-11E3-9C24BC5FF41C5C33','configTinyMCE','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD2D6EF0-BF7F-11E3-9C24BC5FF41C5C33','farLog','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD2E5950-BF7F-11E3-9C24BC5FF41C5C33','farGroup','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD2F91D0-BF7F-11E3-9C24BC5FF41C5C33','farWorkflowDef','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD307C30-BF7F-11E3-9C24BC5FF41C5C33','configDevice','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD316690-BF7F-11E3-9C24BC5FF41C5C33','dmWizard','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD32C620-BF7F-11E3-9C24BC5FF41C5C33','configRepositories','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD33D790-BF7F-11E3-9C24BC5FF41C5C33','farUser','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD34C1F0-BF7F-11E3-9C24BC5FF41C5C33','configFormProtect','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD35FA70-BF7F-11E3-9C24BC5FF41C5C33','configEnvironment','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD3732F0-BF7F-11E3-9C24BC5FF41C5C33','dmProfile','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD38E0A0-BF7F-11E3-9C24BC5FF41C5C33','farFU','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD39CB00-BF7F-11E3-9C24BC5FF41C5C33','farFilterProperty','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD3AB560-BF7F-11E3-9C24BC5FF41C5C33','dmCSS','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD3C14F0-BF7F-11E3-9C24BC5FF41C5C33','configGeneral','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD3D2660-BF7F-11E3-9C24BC5FF41C5C33','dmWebskinAncestor','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD3E37D0-BF7F-11E3-9C24BC5FF41C5C33','farQueueResult','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD3F7050-BF7F-11E3-9C24BC5FF41C5C33','dmImage','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD41E150-BF7F-11E3-9C24BC5FF41C5C33','farPermission','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4367F0-BF7F-11E3-9C24BC5FF41C5C33','dmCategory','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD45B1E0-BF7F-11E3-9C24BC5FF41C5C33','farSkeleton','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD471170-BF7F-11E3-9C24BC5FF41C5C33','farLogin','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD487100-BF7F-11E3-9C24BC5FF41C5C33','dmHTML','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD49F7A0-BF7F-11E3-9C24BC5FF41C5C33','dmArchive','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4ABAF0-BF7F-11E3-9C24BC5FF41C5C33','ruleText','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4BCC60-BF7F-11E3-9C24BC5FF41C5C33','configTaskQueue','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4C68A0-BF7F-11E3-9C24BC5FF41C5C33','container','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4D2BF0-BF7F-11E3-9C24BC5FF41C5C33','UpdateApp','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4DEF40-BF7F-11E3-9C24BC5FF41C5C33','farWorkflow','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD4F27C0-BF7F-11E3-9C24BC5FF41C5C33','formTheme','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD506040-BF7F-11E3-9C24BC5FF41C5C33','auditUserOverTime','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD5198C0-BF7F-11E3-9C24BC5FF41C5C33','farQueueJob','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD52D140-BF7F-11E3-9C24BC5FF41C5C33','farConfig','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD53E2B0-BF7F-11E3-9C24BC5FF41C5C33','dmCron','',''),
	('2014-04-09 10:41:48','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:48',0,'BD54F420-BF7F-11E3-9C24BC5FF41C5C33','farCoapi','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD55B770-BF7F-11E3-9C24BC5FF41C5C33','dmNavigation','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD567AC0-BF7F-11E3-9C24BC5FF41C5C33','farBarnacle','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD578C30-BF7F-11E3-9C24BC5FF41C5C33','farWebtopDashboard','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD587690-BF7F-11E3-9C24BC5FF41C5C33','farFilter','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD598800-BF7F-11E3-9C24BC5FF41C5C33','bulkFileUpload','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD5A9970-BF7F-11E3-9C24BC5FF41C5C33','farWebfeed','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD5BD1F0-BF7F-11E3-9C24BC5FF41C5C33','configSecurity','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD5E1BE0-BF7F-11E3-9C24BC5FF41C5C33','farRole','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD5F5460-BF7F-11E3-9C24BC5FF41C5C33','farPagination','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD6017B0-BF7F-11E3-9C24BC5FF41C5C33','dmFile','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD615030-BF7F-11E3-9C24BC5FF41C5C33','farTaskDef','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD621380-BF7F-11E3-9C24BC5FF41C5C33','dmFlash','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD62D6D0-BF7F-11E3-9C24BC5FF41C5C33','fixRefObjects','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD639A20-BF7F-11E3-9C24BC5FF41C5C33','dashboard','',''),
	('2014-04-09 10:41:49','','farcry_CLIENTUD','farcry_CLIENTUD','2014-04-09 10:41:49',0,'BD648480-BF7F-11E3-9C24BC5FF41C5C33','configFormTheme','',''),
	('2015-12-15 00:36:53',NULL,'anonymous','anonymous','2015-12-15 00:36:53',0,'EFD934A0-A2C3-11E5-BF4E0242AC110015','formThemeBootstrap',NULL,NULL),
	('2015-12-15 00:36:53',NULL,'anonymous','anonymous','2015-12-15 00:36:53',0,'EFDE3DB0-A2C3-11E5-BF4E0242AC110015','richtextSnippet',NULL,NULL),
	('2015-12-15 00:36:53',NULL,'anonymous','anonymous','2015-12-15 00:36:53',0,'EFE4A650-A2C3-11E5-BF4E0242AC110015','formThemeUniform',NULL,NULL);

/*!40000 ALTER TABLE `farCoapi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farConfig
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farConfig`;

CREATE TABLE `farConfig` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `configdata` longtext,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `configkey` varchar(250) DEFAULT NULL,
  `configtypename` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farConfig` WRITE;
/*!40000 ALTER TABLE `farConfig` DISABLE KEYS */;

INSERT INTO `farConfig` (`datetimelastupdated`, `lockedBy`, `lastupdatedby`, `configdata`, `createdby`, `datetimecreated`, `locked`, `ObjectID`, `configkey`, `configtypename`, `label`, `ownedby`)
VALUES
	('2014-04-09 10:31:49','','anonymous','{\"akismetBlogURL\":\"\",\"lockedBy\":\"\",\"tooManyUrls\":\"1\",\"tooManyUrlsPoints\":\"1\",\"lastupdatedby\":\"\",\"emailUserName\":\"\",\"mouseMovementPoints\":\"1\",\"logFailedTests\":\"1\",\"showSpamInfoBubble\":\"1\",\"emailServer\":\"\",\"emailToAddress\":\"\",\"hiddenFormField\":\"1\",\"timedFormMaxSeconds\":\"3600\",\"ObjectID\":\"7DE03C2F-D2F6-B576-D3B91B4ECE480BD6\",\"akismetAPIKey\":\"\",\"akismetFormNameField\":\"\",\"timedFormSubmission\":\"1\",\"label\":\"\",\"timedFormPoints\":\"1\",\"logFile\":\"form-protection-log\",\"datetimelastupdated\":\"\",\"akismet\":\"0\",\"akismetFormBodyField\":\"\",\"tooManyUrlsMaxUrls\":\"6\",\"teststrings\":\"1\",\"TYPENAME\":\"configFormProtect\",\"spamStringPoints\":\"1\",\"createdby\":\"\",\"emailPassword\":\"\",\"datetimecreated\":\"\",\"timedFormMinSeconds\":\"5\",\"emailFailedTests\":\"0\",\"locked\":\"0\",\"akismetFormURLField\":\"\",\"akismetFormEmailField\":\"\",\"mouseMovement\":\"1\",\"emailFromAddress\":\"\",\"akismetPoints\":\"1\",\"hiddenFieldPoints\":\"1\",\"usedKeyboardPoints\":\"1\",\"emailSubject\":\"\",\"spamstrings\":\"free music,download music,music downloads,viagra,phentermine,viagra,tramadol,ultram,prescription soma,cheap soma,cialis,levitra,weight loss,buy cheap\",\"ownedby\":\"\",\"usedKeyboard\":\"1\",\"failureLimit\":\"3\"}','farcry','2014-04-09 10:31:49',0,'7DE03C42-A622-2933-A1F46F3F14D9FF36','formProtection','configFormProtect','Form Spam Protection Configuration','CDD3B33E-A463-9B75-DC0150D316830765'),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lockedBy\":\"\",\"TYPENAME\":\"configSecurity\",\"passwordPolicyHint\":\"Minimum password length of 6 characters.\",\"lastupdatedby\":\"\",\"passwordMinLength\":\"6\",\"passwordHashAlgorithm\":\"bcrypt\",\"createdby\":\"\",\"bIncludeSymbol\":\"0\",\"bIncludeLetters\":\"0\",\"datetimecreated\":\"\",\"locked\":\"0\",\"bIncludeNumeric\":\"0\",\"ObjectID\":\"A13958B0-F642-11E1-8AD6D49A20F53776\",\"bIncludeMixedCase\":\"0\",\"label\":\"\",\"ownedby\":\"\",\"defaultUserDirectory\":\"\"}','Unknown','2014-04-09 10:31:49',0,'A13A1C00-F642-11E1-8AD6D49A20F53776','security','configSecurity','Security Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"webtopBackgroundPath\":\"\",\"lockedBy\":\"\",\"loginattemptstimeout\":\"10\",\"eventsexpirytype\":\"d\",\"webtopLogoPath\":\"\",\"lastupdatedby\":\"\",\"componentdocurl\":\"/CFIDE/componentutils/componentdetail.cfm\",\"newsexpirytype\":\"d\",\"adminemail\":\"\",\"locale\":\"en_AU\",\"emailWhitelist\":\"\",\"contentreviewdayspan\":\"90\",\"logstats\":\"1\",\"ObjectID\":\"CDD2A31B-06A0-D992-06085DB7E35DB08E\",\"adminserver\":\"\",\"sessiontimeout\":\"60\",\"label\":\"\",\"bEmailErrors\":\"0\",\"eventsexpiry\":\"14\",\"exportpath\":\"www/xml\",\"defaultUserDirectory\":\"\",\"sitetitle\":\"Skeleton\",\"sitelogopath\":\"/wsimages/logo.png\",\"archiveweburl\":\"archive/\",\"teaserlimit\":\"255\",\"showforgotpassword\":\"1\",\"datetimelastupdated\":\"\",\"newsexpiry\":\"12\",\"dmfilessearchable\":\"1\",\"verityStoragePath\":\"/Applications/JRun4/servers/cfusion/cfusion-ear/cfusion-war/WEB-INF/cfusion/verity/collections/\",\"bugemail\":\"\",\"typename\":\"configGeneral\",\"categorycachetimespan\":\"0\",\"createdby\":\"\",\"bdoarchive\":\"0\",\"datetimecreated\":\"\",\"locked\":\"0\",\"bWebtopBackgroundMask\":\"0\",\"webtopBackgroundPosition\":\"\",\"logDBChanges\":\"\",\"loginattemptsallowed\":\"3\",\"errorEmail\":\"\",\"filedownloaddirectlink\":\"0\",\"sitetagline\":\"\",\"ownedby\":\"\",\"archivedirectory\":\"/Library/WebServer/Documents/farcry/projects/mollio/archive/\",\"genericadminnumitems\":\"15\",\"filenameconflict\":\"makeunique\"}','Unknown','2014-04-09 10:31:49',0,'CDD2A356-EAC8-2242-EB48790985762230','general','configGeneral','General Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lockedBy\":\"\",\"bUseConfig\":\"0\",\"typename\":\"configTinyMCE\",\"lastupdatedby\":\"\",\"tinyMCE_config\":\"theme : &quot;advanced&quot;,\\nplugins : &quot;table,advhr,farcrycontenttemplates,advimage,advlink,preview,zoom,searchreplace,print,contextmenu,paste,directionality,fullscreen&quot;,\\t\\ntheme_advanced_buttons2_add : &quot;separator,farcrycontenttemplates&quot;,\\ntheme_advanced_buttons3_add_before : &quot;tablecontrols,separator&quot;,\\t\\t\\ntheme_advanced_buttons3_add : &quot;separator,fullscreen,pasteword,pastetext&quot;,\\t\\t\\t\\t\\ntheme_advanced_toolbar_location : &quot;top&quot;,\\ntheme_advanced_toolbar_align : &quot;left&quot;,\\ntheme_advanced_path_location : &quot;bottom&quot;,\\ntheme_advanced_resize_horizontal : true,\\ntheme_advanced_resizing : true,\\nextended_valid_elements: &quot;code,colgroup,col,thead,tfoot,tbody,abbr,blockquote,cite,button,textarea[name|class|cols|rows],script[type],img[style|class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name]&quot;,\\nremove_linebreaks : false,\\nrelative_urls : false\",\"createdby\":\"\",\"datetimecreated\":\"\",\"locked\":\"0\",\"ObjectID\":\"CDD2A452-9AA6-3BAA-41C1DA37D6E521CC\",\"tinyMCE4_config\":\"\",\"label\":\"\",\"ownedby\":\"\"}','Unknown','2014-04-09 10:31:49',0,'CDD2A454-B831-53DA-BF6A8A7DB5772D8E','tinymce','configTinyMCE','TinyMCE Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lockedBy\":\"\",\"desktopWidth\":\"1050\",\"TYPENAME\":\"configDevice\",\"lastupdatedby\":\"\",\"createdby\":\"\",\"datetimecreated\":\"\",\"locked\":\"0\",\"ObjectID\":\"EFF7C310-4A83-11E3-8521BC5FF41C5C33\",\"label\":\"\",\"mobileWidth\":\"480\",\"ownedby\":\"\",\"tabletWidth\":\"768\"}','Unknown','2014-04-09 10:31:49',0,'EFF85F50-4A83-11E3-8521BC5FF41C5C33','device','configDevice','Device Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lDomainsDevelopment\":\"127.0.0.1, localhost, *.local\",\"lockedBy\":\"\",\"labelDevelopment\":\"Development\",\"colorStaging\":\"#FFCC00\",\"TYPENAME\":\"configEnvironment\",\"labelUnknown\":\"Unknown\",\"lastupdatedby\":\"\",\"createdby\":\"\",\"colorProduction\":\"#66CC44\",\"labelProduction\":\"Production\",\"bShowEnvironment\":\"1\",\"datetimecreated\":\"\",\"labelStaging\":\"Staging\",\"locked\":\"0\",\"ObjectID\":\"EFFDB680-4A83-11E3-8521BC5FF41C5C33\",\"lDomainsProduction\":\"\",\"canonicalProtocol\":\"http\",\"colorUnknown\":\"#CC3333\",\"lDomainsStaging\":\"\",\"canonicalDomain\":\"\",\"colorDevelopment\":\"#AAAAAA\",\"label\":\"\",\"ownedby\":\"\"}','Unknown','2014-04-09 10:31:49',0,'EFFEA0E0-4A83-11E3-8521BC5FF41C5C33','environment','configEnvironment','Environment Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lockedBy\":\"\",\"TYPENAME\":\"configFormTheme\",\"lastupdatedby\":\"\",\"createdby\":\"\",\"webtop\":\"bootstrap\",\"datetimecreated\":\"\",\"locked\":\"0\",\"ObjectID\":\"F001FC40-4A83-11E3-8521BC5FF41C5C33\",\"label\":\"\",\"site\":\"bootstrap\",\"ownedby\":\"\"}','Unknown','2014-04-09 10:31:49',0,'F0027171-4A83-11E3-8521BC5FF41C5C33','formtheme','configFormTheme','Form Theme Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lockedBy\":\"\",\"TYPENAME\":\"configRepositories\",\"lastupdatedby\":\"\",\"createdby\":\"\",\"datetimecreated\":\"\",\"locked\":\"0\",\"svnExecutable\":\"C:\\\\Program Files\\\\TortoiseSVN\\\\bin\\\\svn.exe\",\"ObjectID\":\"F007A190-4A83-11E3-8521BC5FF41C5C33\",\"label\":\"\",\"ownedby\":\"\",\"gitExecutable\":\"C:\\\\Program Files (x86)\\\\Git\\\\bin\\\\git.exe\"}','Unknown','2014-04-09 10:31:49',0,'F0083DD0-4A83-11E3-8521BC5FF41C5C33','repo','configRepositories','Repository Info Configuration',''),
	('2014-04-09 10:31:49','','anonymous','{\"datetimelastupdated\":\"\",\"lockedBy\":\"\",\"maxThreads\":\"1\",\"TYPENAME\":\"configTaskQueue\",\"lastupdatedby\":\"\",\"createdby\":\"\",\"threadTimeout\":\"15\",\"datetimecreated\":\"\",\"locked\":\"0\",\"ObjectID\":\"F00AFCF0-4A83-11E3-8521BC5FF41C5C33\",\"resultTimeout\":\"30\",\"label\":\"\",\"ownedby\":\"\"}','Unknown','2014-04-09 10:31:49',0,'F00B7221-4A83-11E3-8521BC5FF41C5C33','taskqueue','configTaskQueue','Task Queue','');

/*!40000 ALTER TABLE `farConfig` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farFilter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farFilter`;

CREATE TABLE `farFilter` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `profileID` varchar(50) DEFAULT NULL,
  `listID` varchar(250) DEFAULT NULL,
  `filterTypename` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `lRoles` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `profileID_index` (`profileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farFilterProperty
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farFilterProperty`;

CREATE TABLE `farFilterProperty` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `property` varchar(250) DEFAULT NULL,
  `filterID` varchar(50) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `wddxDefinition` longtext,
  `type` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `filterID_index` (`filterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farFilterProperty_aRelated
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farFilterProperty_aRelated`;

CREATE TABLE `farFilterProperty_aRelated` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farFU
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farFU`;

CREATE TABLE `farFU` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `fuStatus` decimal(11,0) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `applicationName` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `refobjectid` varchar(250) DEFAULT NULL,
  `friendlyURL` varchar(250) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `bDefault` tinyint(1) DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `redirectionType` varchar(250) DEFAULT NULL,
  `redirectTo` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `queryString` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `friendlyURL_index` (`friendlyURL`),
  KEY `refobjectid_index` (`refobjectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farFU` WRITE;
/*!40000 ALTER TABLE `farFU` DISABLE KEYS */;

INSERT INTO `farFU` (`datetimelastupdated`, `lockedBy`, `fuStatus`, `lastupdatedby`, `applicationName`, `createdby`, `refobjectid`, `friendlyURL`, `datetimecreated`, `locked`, `bDefault`, `ObjectID`, `redirectionType`, `redirectTo`, `label`, `ownedby`, `queryString`)
VALUES
	('2014-04-09 10:39:22',NULL,0,'farcry_CLIENTUD',NULL,'farcry_CLIENTUD','E689D66F-96FD-E9F6-B1AF64B8DAE78A69','/home','2014-04-09 10:39:22',0,0,'07086AB0-A2C4-11E5-B0DE0242AC110015','301','default','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765',NULL),
	('2011-11-02 13:59:47','',1,'farcry_CLIENTUD','','farcry_CLIENTUD','E689D721-B6C9-605B-DE1D813E4CDA3339','/','2011-11-02 13:59:47',0,1,'1E78D1D0-0507-11E1-A141D49A20F53776','none','default','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765',''),
	('2014-04-09 10:39:22',NULL,1,'farcry_CLIENTUD',NULL,'farcry_CLIENTUD','E689D66F-96FD-E9F6-B1AF64B8DAE78A69','/home-sweet-home','2014-04-09 10:39:22',0,1,'65CAACE0-BF7F-11E3-AAD9BC5FF41C5C33','none','default','(incomplete)','CDD3B33E-A463-9B75-DC0150D316830765',NULL);

/*!40000 ALTER TABLE `farFU` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farGroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farGroup`;

CREATE TABLE `farGroup` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farGroup` WRITE;
/*!40000 ALTER TABLE `farGroup` DISABLE KEYS */;

INSERT INTO `farGroup` (`datetimelastupdated`, `lockedBy`, `lastupdatedby`, `createdby`, `datetimecreated`, `locked`, `ObjectID`, `label`, `title`, `ownedby`)
VALUES
	('2007-12-17 16:18:19','','installation','installation','2007-12-17 16:18:19',0,'E689D11B-E02F-628E-5267654BB92D334F','','Contributors',''),
	('2007-12-17 16:18:19','','installation','installation','2007-12-17 16:18:19',0,'E689D131-A4A0-21F0-45AB44EC3AB144CD','','Member',''),
	('2007-12-17 16:18:19','','installation','installation','2007-12-17 16:18:19',0,'E689D13F-D5B9-183C-035154054829ACDE','','Publishers',''),
	('2007-12-17 16:18:19','','installation','installation','2007-12-17 16:18:19',0,'E689D144-0821-1733-364BD09A3CD85752','','News Contributor',''),
	('2007-12-17 16:18:19','','installation','installation','2007-12-17 16:18:19',0,'E689D148-F430-B6F5-34D2F39C6D933049','','SiteAdmin',''),
	('2007-12-17 16:18:19','','installation','installation','2007-12-17 16:18:19',0,'E689D14C-FEDC-B2C0-9F5404C3F3A58A49','','SysAdmin','');

/*!40000 ALTER TABLE `farGroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farLog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farLog`;

CREATE TABLE `farLog` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `notes` longtext,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `location` varchar(250) DEFAULT NULL,
  `datetimecreated` datetime NOT NULL,
  `event` varchar(250) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(250) DEFAULT NULL,
  `object` varchar(50) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `ipaddress` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `object_index` (`object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farLog` WRITE;
/*!40000 ALTER TABLE `farLog` DISABLE KEYS */;

INSERT INTO `farLog` (`datetimelastupdated`, `lockedBy`, `userid`, `notes`, `lastupdatedby`, `createdby`, `location`, `datetimecreated`, `event`, `locked`, `ObjectID`, `type`, `object`, `label`, `ownedby`, `ipaddress`)
VALUES
	('2015-12-15 00:37:22',NULL,'farcry_CLIENTUD','Draft object created','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:22','create',0,'0179AFF0-A2C4-11E5-B0DE0242AC110015','types','E689D66F-96FD-E9F6-B1AF64B8DAE78A69',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:23',NULL,'farcry_CLIENTUD','Updated','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:23','update',0,'01D00D50-A2C4-11E5-B0DE0242AC110015','types','01ACA6D0-A2C4-11E5-B0DE0242AC110015',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:28',NULL,'farcry_CLIENTUD','Updated','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:28','update',0,'04BB1F50-A2C4-11E5-B0DE0242AC110015','types','01ACA6D0-A2C4-11E5-B0DE0242AC110015',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:28',NULL,'farcry_CLIENTUD','Updated','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:28','update',0,'04C46E20-A2C4-11E5-B0DE0242AC110015','types','0177DB30-A2C4-11E5-B0DE0242AC110015',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:32',NULL,'farcry_CLIENTUD','Updated','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:32','update',0,'070B9F00-A2C4-11E5-B0DE0242AC110015','types','07086AB0-A2C4-11E5-B0DE0242AC110015',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:32',NULL,'farcry_CLIENTUD','Updated','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:32','update',0,'071059F0-A2C4-11E5-B0DE0242AC110015','types','65CAACE0-BF7F-11E3-AAD9BC5FF41C5C33',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:32',NULL,'farcry_CLIENTUD','Draft version sent live','farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:32','update',0,'07122EB0-A2C4-11E5-B0DE0242AC110015','types','E689D66F-96FD-E9F6-B1AF64B8DAE78A69',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:32',NULL,'farcry_CLIENTUD',NULL,'farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:32','toapproved',0,'07142A80-A2C4-11E5-B0DE0242AC110015','types','E689D66F-96FD-E9F6-B1AF64B8DAE78A69',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:14',NULL,NULL,'Updated','anonymous','anonymous',NULL,'2015-12-15 00:37:14','update',0,'FCAD81E0-A2C3-11E5-B0DE0242AC110015','types','E689D150-0C0C-923A-C05D110545136581',NULL,NULL,'127.0.0.1'),
	('2015-12-15 00:37:14',NULL,'farcry_CLIENTUD',NULL,'farcry_CLIENTUD','farcry_CLIENTUD',NULL,'2015-12-15 00:37:14','login',0,'FCB34E40-A2C3-11E5-B0DE0242AC110015','security',NULL,NULL,NULL,'127.0.0.1');

/*!40000 ALTER TABLE `farLog` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farPermission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farPermission`;

CREATE TABLE `farPermission` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `hint` longtext,
  `bDisabled` tinyint(1) NOT NULL DEFAULT '0',
  `aRoles` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `bSystem` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `shortcut` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farPermission` WRITE;
/*!40000 ALTER TABLE `farPermission` DISABLE KEYS */;

INSERT INTO `farPermission` (`datetimelastupdated`, `lockedBy`, `lastupdatedby`, `hint`, `bDisabled`, `aRoles`, `createdby`, `datetimecreated`, `bSystem`, `locked`, `ObjectID`, `label`, `title`, `ownedby`, `shortcut`)
VALUES
	('2011-12-15 17:08:40','','anonymous','',0,'','Unknown','2011-12-15 17:08:40',1,0,'9DB3EC90-26EB-11E1-9348001C42000009','viewWebtopItem','viewWebtopItem','','viewWebtopItem'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D202-EC06-56B0-C3F0E3D7A54A9A03','','Approve','','Approve'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D235-FDCC-1B10-FC659CA1FDF77C1D','','Create','','Create'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D250-E0AA-3E4C-8EF77C7D8AB212B5','','Edit','','Edit'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D28C-A886-56BE-BC48F514253BBC9C','','Delete','','Delete'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D298-CC85-C22F-95829704E2D5B45C','','View','','View'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D2A5-E097-4576-C31248CA0D52232E','','RequestApproval','','RequestApproval'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D2B1-D797-240F-53534186AFD119ED','','CanApproveOwnContent','','CanApproveOwnContent'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D2BC-9740-AA86-F6DB0B7301CC05DF','','Developer','','Developer'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D2C1-BCF9-1D2D-8F43DF18E8F5A69A','','Admin','','Admin'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D2C6-CFFB-7B56-9F7A9FA842DD62DF','','ModifyPermissions','','ModifyPermissions'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D2CD-DB06-764E-7C54767FD0D2D618','','RootNodeManagement','','RootNodeManagement'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D2D2-A257-0547-41617FF02EE7A585','','ContainerManagement','','ContainerManagement'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D2DC-A4D2-DD90-5827EDC38488F8DC','','NewsApprove','','NewsApprove'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D2E4-059E-1939-CFBFC324E71B746D','','NewsCreate','','NewsCreate'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D2E9-DC9F-8380-01E3111FA5897936','','NewsDelete','','NewsDelete'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D2EE-E8CE-66C8-404E6CC1CDC66E71','','NewsCanApproveOwnContent','','NewsCanApproveOwnContent'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D2F4-CD44-FF15-8697975A8E6CFA32','','NewsEdit','','NewsEdit'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D2FA-CD62-A65B-24E2719CCBADE8B7','','NewsRequestApproval','','NewsRequestApproval'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D301-FEBE-5812-F9535E278CD711D8','','SecurityManagement','','SecurityManagement'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D306-E8A4-9204-3D6022A23A4FAD19','','MainNavMyFarcryTab','','MainNavMyFarcryTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D313-B3A4-0623-E678B6C6E2D20D18','','MainNavSiteTab','','MainNavSiteTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D31A-E8E4-BD8B-B884718614B5B9A0','','MainNavContentTab','','MainNavContentTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D31E-F0E3-97D2-7824C31BD8C61991','','MainNavAdminTab','','MainNavAdminTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D322-C101-2859-E559E8561F1D8557','','MainNavSecurityTab','','MainNavSecurityTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D329-A214-E7B4-660E400CEEE14528','','AdminSearchTab','','AdminSearchTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D333-AE3C-476F-D29D19A2201E509A','','AdminCOAPITab','','AdminCOAPITab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D339-F017-4CD5-887ED5B7F94D6F74','','AdminGeneralTab','','AdminGeneralTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D33F-A119-D9EB-35680B0870510D70','','SecurityUserManagementTab','','SecurityUserManagementTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D343-08A3-515B-D31C179129F09E2A','','SecurityPolicyManagementTab','','SecurityPolicyManagementTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D34A-9C3D-166E-DD0466BFE13417BE','','ReportingAuditTab','','ReportingAuditTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D350-A443-18BC-D6C1386BD84193ED','','ObjectOverviewTab','','ObjectOverviewTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D356-A851-EB24-9C5D7E816BFDF277','','ObjectEditTab','','ObjectEditTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D35A-AC89-570C-351A2CE254ABA1E8','','ObjectArchiveTab','','ObjectArchiveTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D35F-9DF0-4351-4BB7A9A598734800','','ObjectAuditTab','','ObjectAuditTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D365-A0BA-2CC5-A5E2FD2ED3882A5E','','ObjectStatsTab','','ObjectStatsTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D36E-0D65-0003-02868D66F17B0E9B','','ObjectDumpTab','','ObjectDumpTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D374-083B-2DB5-F7BF29039BDC07B2','','TreeBranchTabs','','TreeBranchTabs'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D379-EA87-C2A9-F74C8D34C5471D4D','','TreeRootNode','','TreeRootNode'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D37E-F2EE-5BC6-7380FF1F9A703404','','TreeDump','','TreeDump'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D383-0E9C-D201-B4DF1B06610517D5','','TreeSendToTrash','','TreeSendToTrash'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D4F3-E3D0-B48F-831E68C611AB00A7','','TreeDelete','','TreeDelete'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D4F9-BD4A-1173-F9992C34558A3DF6','','ContentCategorisationTab','','ContentCategorisationTab'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D4FF-A1DA-8D8A-7911F843BB1FC931','','EventCreate','','EventCreate'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D506-F83F-96C9-841A215D494C897E','','EventEdit','','EventEdit'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D50B-DA2D-1B5D-7C882A223D927BE0','','EventRequestApproval','','EventRequestApproval'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D50F-B0FD-05D2-BECD98EE75130C89','','EventApprove','','EventApprove'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D513-DDD9-2DD2-BA32ED0310F0EF87','','EventDelete','','EventDelete'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',1,0,'E689D517-0180-44A8-1A68E4C896B0760F','','MainNavReportingTab','','MainNavReportingTab'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D51C-F9D5-3C21-833EC4564E69C5C7','','FactApprove','','FactApprove'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D524-0F6F-411F-7345E24E7B782CE4','','FactDelete','','FactDelete'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D529-0CE1-2C81-2503CC579F364996','','LinkApprove','','LinkApprove'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D52D-A597-D988-B7928F37ADD428BC','','LinkDelete','','LinkDelete'),
	('2007-12-17 16:18:20','','installation','',0,'','installation','2007-12-17 16:18:20',0,0,'E689D531-F714-E238-E5B20B954FCE5958','','ReportingStatsTab','','ReportingStatsTab'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D537-09F6-7CF6-BDA45BD8A66A6EA9','','FactCreate','','FactCreate'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D540-976D-7199-AAFE6F78F5C6E74F','','FactEdit','','FactEdit'),
	('2007-12-17 16:18:20','','installation','',1,'','installation','2007-12-17 16:18:20',1,0,'E689D546-E54C-6A0A-70755C496597922F','','LinkCreate','','LinkCreate'),
	('2007-12-17 16:18:21','','installation','',1,'','installation','2007-12-17 16:18:21',1,0,'E689D54A-D233-44B6-36232CA169202378','','LinkEdit','','LinkEdit'),
	('2007-12-17 16:18:21','','installation','',0,'','installation','2007-12-17 16:18:21',0,0,'E689D553-0ECF-90A6-50531AAEB1FE7B40','','ContentExportTab','','ContentExportTab'),
	('2007-12-17 16:18:21','','installation','',0,'','installation','2007-12-17 16:18:21',1,0,'E689D557-D731-1A94-18C8E1ED5D96809C','','EventCanApproveOwnContent','','EventCanApproveOwnContent'),
	('2007-12-17 16:18:21','','installation','',1,'','installation','2007-12-17 16:18:21',1,0,'E689D55D-CC02-7808-A3C25F734A722F26','','FactRequestApproval','','FactRequestApproval'),
	('2007-12-17 16:18:21','','installation','',1,'','installation','2007-12-17 16:18:21',1,0,'E689D562-0302-B1EE-BE2A78B0F4C12512','','FactCanApproveOwnContent','','FactCanApproveOwnContent'),
	('2007-12-17 16:18:21','','installation','',1,'','installation','2007-12-17 16:18:21',1,0,'E689D566-C140-27E6-040D77D702498344','','LinkRequestApproval','','LinkRequestApproval'),
	('2007-12-17 16:18:21','','installation','',1,'','installation','2007-12-17 16:18:21',1,0,'E689D56C-D9F2-E494-65E44E22254BFDC9','','LinkCanApproveOwnContent','','LinkCanApproveOwnContent'),
	('2007-12-17 16:18:21','','installation','',0,'','installation','2007-12-17 16:18:21',0,0,'E689D58C-E15E-FFE3-51F668111EC71569','','MainNavHelpTab','','MainNavHelpTab'),
	('2007-12-17 16:18:21','','installation','',0,'','installation','2007-12-17 16:18:21',1,0,'E689D591-0FA1-C0D6-59E34E7B6D15E30A','','SendToTrash','','SendToTrash'),
	('2007-12-17 16:18:21','','migratescript','',0,'','migratescript','2007-12-17 16:18:21',1,0,'E689D59A-9A8E-A3F8-EA41732715E84F87','Generic Approve','Generic Approve','','genericApprove'),
	('2007-12-17 16:18:21','','migratescript','',0,'','migratescript','2007-12-17 16:18:21',1,0,'E689D59D-D8C5-616D-4B6FFB61CC29E340','Generic Create','Generic Create','','genericCreate'),
	('2007-12-17 16:18:21','','migratescript','',0,'','migratescript','2007-12-17 16:18:21',1,0,'E689D5A0-ADA3-4D3C-79886ADA58B63BCD','Generic Delete','Generic Delete','','genericDelete'),
	('2007-12-17 16:18:21','','migratescript','',0,'','migratescript','2007-12-17 16:18:21',1,0,'E689D5A2-CE66-DAE1-54DCAC81F0E215B1','Generic Edit','Generic Edit','','genericEdit'),
	('2007-12-17 16:18:21','','migratescript','',0,'','migratescript','2007-12-17 16:18:21',1,0,'E689D5A7-A91D-6350-47EBEC196B30A68F','Generic RequestApproval','Generic RequestApproval','','genericRequestApproval'),
	('2007-12-17 16:18:21','','migratescript','',0,'','migratescript','2007-12-17 16:18:21',1,0,'E689D5AA-9CA9-5496-4FF5040A8002629C','Generic CanApproveOwnContent','Generic CanApproveOwnContent','','genericCanApproveOwnContent');

/*!40000 ALTER TABLE `farPermission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farPermission_aRelatedtypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farPermission_aRelatedtypes`;

CREATE TABLE `farPermission_aRelatedtypes` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farPermission_aRelatedtypes` WRITE;
/*!40000 ALTER TABLE `farPermission_aRelatedtypes` DISABLE KEYS */;

INSERT INTO `farPermission_aRelatedtypes` (`data`, `typename`, `parentid`, `seq`)
VALUES
	('webtop','','9DB3EC90-26EB-11E1-9348001C42000009',1.00),
	('dmNavigation','','E689D202-EC06-56B0-C3F0E3D7A54A9A03',1.00),
	('dmNavigation','','E689D235-FDCC-1B10-FC659CA1FDF77C1D',1.00),
	('dmNavigation','','E689D250-E0AA-3E4C-8EF77C7D8AB212B5',1.00),
	('dmNavigation','','E689D28C-A886-56BE-BC48F514253BBC9C',1.00),
	('dmNavigation','','E689D298-CC85-C22F-95829704E2D5B45C',1.00),
	('dmNavigation','','E689D2A5-E097-4576-C31248CA0D52232E',1.00),
	('dmNavigation','','E689D2B1-D797-240F-53534186AFD119ED',1.00),
	('dmNavigation','','E689D2D2-A257-0547-41617FF02EE7A585',1.00),
	('dmNavigation','','E689D591-0FA1-C0D6-59E34E7B6D15E30A',1.00),
	('farCoapi','','E689D59A-9A8E-A3F8-EA41732715E84F87',1.00),
	('farCoapi','','E689D59D-D8C5-616D-4B6FFB61CC29E340',1.00),
	('farCoapi','','E689D5A0-ADA3-4D3C-79886ADA58B63BCD',1.00),
	('farCoapi','','E689D5A2-CE66-DAE1-54DCAC81F0E215B1',1.00),
	('farCoapi','','E689D5A7-A91D-6350-47EBEC196B30A68F',1.00),
	('farCoapi','','E689D5AA-9CA9-5496-4FF5040A8002629C',1.00);

/*!40000 ALTER TABLE `farPermission_aRelatedtypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farQueueResult
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farQueueResult`;

CREATE TABLE `farQueueResult` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `taskID` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `resultTick` decimal(15,0) DEFAULT '0',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `jobID` varchar(50) DEFAULT NULL,
  `taskOwnedBy` varchar(250) DEFAULT NULL,
  `resultTimestamp` datetime DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `jobType` varchar(250) DEFAULT 'Unknown',
  `wddxResult` longtext,
  `label` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`),
  KEY `jobID_index` (`jobID`),
  KEY `byJobID` (`jobID`,`resultTick`),
  KEY `resultTimestamp_index` (`resultTimestamp`),
  KEY `getStatus` (`jobType`,`jobID`,`taskOwnedBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farQueueTask
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farQueueTask`;

CREATE TABLE `farQueueTask` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `wddxStackTrace` longtext,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `jobID` varchar(50) DEFAULT NULL,
  `taskOwnedBy` varchar(250) DEFAULT NULL,
  `threadID` varchar(50) DEFAULT NULL,
  `objectid` varchar(50) NOT NULL DEFAULT '',
  `jobType` varchar(250) DEFAULT 'Unkown',
  `wddxDetails` longtext,
  `action` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `taskTimestamp` datetime DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `taskStatus` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`objectid`),
  KEY `jobID_index` (`jobID`),
  KEY `byJobID` (`jobID`),
  KEY `taskTimestamp_index` (`taskTimestamp`),
  KEY `getStatus` (`jobType`,`jobID`,`taskOwnedBy`,`taskStatus`),
  KEY `threadID_index` (`threadID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farRole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farRole`;

CREATE TABLE `farRole` (
  `datetimelastupdated` datetime NOT NULL,
  `webskins` longtext,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `webtopPermissions` longtext,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `typePermissions` longtext,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `sitePermissions` longtext,
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT '0',
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farRole` WRITE;
/*!40000 ALTER TABLE `farRole` DISABLE KEYS */;

INSERT INTO `farRole` (`datetimelastupdated`, `webskins`, `lockedBy`, `lastupdatedby`, `createdby`, `webtopPermissions`, `datetimecreated`, `locked`, `typePermissions`, `ObjectID`, `sitePermissions`, `label`, `title`, `isdefault`, `ownedby`)
VALUES
	('2007-12-17 16:18:21','*','','installation','installation','','2007-12-17 16:18:21',0,'','E689D5B4-F414-BFA2-C9057B5D298E1819','','SysAdmin','SysAdmin',0,''),
	('2007-12-17 16:18:21','*','','installation','installation','','2007-12-17 16:18:21',0,'','E689D5C9-AC95-26EF-7B2E71C02EDB8757','','SiteAdmin','SiteAdmin',0,''),
	('2007-12-17 16:18:21','','','installation','installation','','2007-12-17 16:18:21',0,'','E689D5D6-F917-2DDA-D7DD0091F974912B','','Member','Member',0,''),
	('2011-12-17 18:02:29','*','','farcry_CLIENTUD','installation','','2007-12-17 16:18:21',0,'','E689D5E0-DA22-E887-D354DB4233669252','','Contributors','Contributors',0,''),
	('2007-12-17 16:18:21','*','','installation','installation','','2007-12-17 16:18:21',0,'','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7','','Publishers','Publishers',0,''),
	('2008-05-23 10:39:32','display*\nexecute*\nforgot*','','farcry_CLIENTUD','installation','','2007-12-17 16:18:21',0,'','E689D5FD-E815-6563-42C96C62768CE342','','Anonymous','Anonymous',1,'');

/*!40000 ALTER TABLE `farRole` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farRole_aGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farRole_aGroups`;

CREATE TABLE `farRole_aGroups` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farRole_aGroups` WRITE;
/*!40000 ALTER TABLE `farRole_aGroups` DISABLE KEYS */;

INSERT INTO `farRole_aGroups` (`data`, `typename`, `parentid`, `seq`)
VALUES
	('SysAdmin_CLIENTUD','','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00),
	('SiteAdmin_CLIENTUD','','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00),
	('Member_CLIENTUD','','E689D5D6-F917-2DDA-D7DD0091F974912B',1.00),
	('Contributors_CLIENTUD','','E689D5E0-DA22-E887-D354DB4233669252',1.00),
	('News Contributor_CLIENTUD','','E689D5E0-DA22-E887-D354DB4233669252',2.00),
	('Publishers_CLIENTUD','','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00);

/*!40000 ALTER TABLE `farRole_aGroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farRole_aPermissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farRole_aPermissions`;

CREATE TABLE `farRole_aPermissions` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farRole_aPermissions` WRITE;
/*!40000 ALTER TABLE `farRole_aPermissions` DISABLE KEYS */;

INSERT INTO `farRole_aPermissions` (`data`, `typename`, `parentid`, `seq`)
VALUES
	('E689D339-F017-4CD5-887ED5B7F94D6F74','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',1.00),
	('E689D50B-DA2D-1B5D-7C882A223D927BE0','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',2.00),
	('E689D562-0302-B1EE-BE2A78B0F4C12512','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',3.00),
	('E689D524-0F6F-411F-7345E24E7B782CE4','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',4.00),
	('E689D31A-E8E4-BD8B-B884718614B5B9A0','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',5.00),
	('E689D313-B3A4-0623-E678B6C6E2D20D18','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',6.00),
	('E689D2DC-A4D2-DD90-5827EDC38488F8DC','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',7.00),
	('E689D2E4-059E-1939-CFBFC324E71B746D','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',8.00),
	('E689D2F4-CD44-FF15-8697975A8E6CFA32','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',9.00),
	('E689D35A-AC89-570C-351A2CE254ABA1E8','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',10.00),
	('E689D36E-0D65-0003-02868D66F17B0E9B','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',11.00),
	('E689D531-F714-E238-E5B20B954FCE5958','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',12.00),
	('E689D374-083B-2DB5-F7BF29039BDC07B2','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',13.00),
	('E689D33F-A119-D9EB-35680B0870510D70','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',14.00),
	('E689D383-0E9C-D201-B4DF1B06610517D5','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',15.00),
	('E689D2C1-BCF9-1D2D-8F43DF18E8F5A69A','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',16.00),
	('E689D350-A443-18BC-D6C1386BD84193ED','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',17.00),
	('E689D365-A0BA-2CC5-A5E2FD2ED3882A5E','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',18.00),
	('E689D34A-9C3D-166E-DD0466BFE13417BE','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',19.00),
	('E689D2CD-DB06-764E-7C54767FD0D2D618','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',20.00),
	('E689D343-08A3-515B-D31C179129F09E2A','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',21.00),
	('E689D333-AE3C-476F-D29D19A2201E509A','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',22.00),
	('E689D4F9-BD4A-1173-F9992C34558A3DF6','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',23.00),
	('E689D51C-F9D5-3C21-833EC4564E69C5C7','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',24.00),
	('E689D537-09F6-7CF6-BDA45BD8A66A6EA9','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',25.00),
	('E689D31E-F0E3-97D2-7824C31BD8C61991','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',26.00),
	('E689D306-E8A4-9204-3D6022A23A4FAD19','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',27.00),
	('E689D2C6-CFFB-7B56-9F7A9FA842DD62DF','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',28.00),
	('E689D2EE-E8CE-66C8-404E6CC1CDC66E71','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',29.00),
	('E689D2E9-DC9F-8380-01E3111FA5897936','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',30.00),
	('E689D2FA-CD62-A65B-24E2719CCBADE8B7','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',31.00),
	('E689D35F-9DF0-4351-4BB7A9A598734800','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',32.00),
	('E689D356-A851-EB24-9C5D7E816BFDF277','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',33.00),
	('E689D301-FEBE-5812-F9535E278CD711D8','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',34.00),
	('E689D37E-F2EE-5BC6-7380FF1F9A703404','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',35.00),
	('E689D379-EA87-C2A9-F74C8D34C5471D4D','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',36.00),
	('E689D4F3-E3D0-B48F-831E68C611AB00A7','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',37.00),
	('E689D517-0180-44A8-1A68E4C896B0760F','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',38.00),
	('E689D553-0ECF-90A6-50531AAEB1FE7B40','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',39.00),
	('E689D540-976D-7199-AAFE6F78F5C6E74F','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',40.00),
	('E689D55D-CC02-7808-A3C25F734A722F26','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',41.00),
	('E689D529-0CE1-2C81-2503CC579F364996','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',42.00),
	('E689D546-E54C-6A0A-70755C496597922F','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',43.00),
	('E689D52D-A597-D988-B7928F37ADD428BC','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',44.00),
	('E689D54A-D233-44B6-36232CA169202378','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',45.00),
	('E689D566-C140-27E6-040D77D702498344','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',46.00),
	('E689D56C-D9F2-E494-65E44E22254BFDC9','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',47.00),
	('E689D557-D731-1A94-18C8E1ED5D96809C','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',48.00),
	('E689D329-A214-E7B4-660E400CEEE14528','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',49.00),
	('E689D2BC-9740-AA86-F6DB0B7301CC05DF','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',50.00),
	('E689D50F-B0FD-05D2-BECD98EE75130C89','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',51.00),
	('E689D4FF-A1DA-8D8A-7911F843BB1FC931','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',52.00),
	('E689D513-DDD9-2DD2-BA32ED0310F0EF87','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',53.00),
	('E689D506-F83F-96C9-841A215D494C897E','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',54.00),
	('E689D322-C101-2859-E559E8561F1D8557','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',55.00),
	('E689D58C-E15E-FFE3-51F668111EC71569','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',56.00),
	('E689D59A-9A8E-A3F8-EA41732715E84F87','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',57.00),
	('E689D5AA-9CA9-5496-4FF5040A8002629C','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',58.00),
	('E689D59D-D8C5-616D-4B6FFB61CC29E340','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',59.00),
	('E689D5A0-ADA3-4D3C-79886ADA58B63BCD','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',60.00),
	('E689D5A2-CE66-DAE1-54DCAC81F0E215B1','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',61.00),
	('E689D5A7-A91D-6350-47EBEC196B30A68F','farPermission','E689D5B4-F414-BFA2-C9057B5D298E1819',62.00),
	('E689D2CD-DB06-764E-7C54767FD0D2D618','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',1.00),
	('E689D33F-A119-D9EB-35680B0870510D70','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',2.00),
	('E689D383-0E9C-D201-B4DF1B06610517D5','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',3.00),
	('E689D333-AE3C-476F-D29D19A2201E509A','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',4.00),
	('E689D4F9-BD4A-1173-F9992C34558A3DF6','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',5.00),
	('E689D553-0ECF-90A6-50531AAEB1FE7B40','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',6.00),
	('E689D557-D731-1A94-18C8E1ED5D96809C','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',7.00),
	('E689D513-DDD9-2DD2-BA32ED0310F0EF87','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',8.00),
	('E689D506-F83F-96C9-841A215D494C897E','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',9.00),
	('E689D562-0302-B1EE-BE2A78B0F4C12512','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',10.00),
	('E689D524-0F6F-411F-7345E24E7B782CE4','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',11.00),
	('E689D540-976D-7199-AAFE6F78F5C6E74F','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',12.00),
	('E689D529-0CE1-2C81-2503CC579F364996','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',13.00),
	('E689D54A-D233-44B6-36232CA169202378','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',14.00),
	('E689D31E-F0E3-97D2-7824C31BD8C61991','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',15.00),
	('E689D313-B3A4-0623-E678B6C6E2D20D18','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',16.00),
	('E689D2C6-CFFB-7B56-9F7A9FA842DD62DF','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',17.00),
	('E689D350-A443-18BC-D6C1386BD84193ED','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',18.00),
	('E689D365-A0BA-2CC5-A5E2FD2ED3882A5E','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',19.00),
	('E689D34A-9C3D-166E-DD0466BFE13417BE','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',20.00),
	('E689D301-FEBE-5812-F9535E278CD711D8','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',21.00),
	('E689D4F3-E3D0-B48F-831E68C611AB00A7','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',22.00),
	('E689D531-F714-E238-E5B20B954FCE5958','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',23.00),
	('E689D374-083B-2DB5-F7BF29039BDC07B2','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',24.00),
	('E689D379-EA87-C2A9-F74C8D34C5471D4D','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',25.00),
	('E689D58C-E15E-FFE3-51F668111EC71569','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',26.00),
	('E689D51C-F9D5-3C21-833EC4564E69C5C7','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',27.00),
	('E689D537-09F6-7CF6-BDA45BD8A66A6EA9','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',28.00),
	('E689D55D-CC02-7808-A3C25F734A722F26','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',29.00),
	('E689D546-E54C-6A0A-70755C496597922F','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',30.00),
	('E689D52D-A597-D988-B7928F37ADD428BC','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',31.00),
	('E689D566-C140-27E6-040D77D702498344','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',32.00),
	('E689D56C-D9F2-E494-65E44E22254BFDC9','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',33.00),
	('E689D2C1-BCF9-1D2D-8F43DF18E8F5A69A','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',34.00),
	('E689D339-F017-4CD5-887ED5B7F94D6F74','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',35.00),
	('E689D329-A214-E7B4-660E400CEEE14528','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',36.00),
	('E689D2BC-9740-AA86-F6DB0B7301CC05DF','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',37.00),
	('E689D50F-B0FD-05D2-BECD98EE75130C89','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',38.00),
	('E689D4FF-A1DA-8D8A-7911F843BB1FC931','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',39.00),
	('E689D50B-DA2D-1B5D-7C882A223D927BE0','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',40.00),
	('E689D31A-E8E4-BD8B-B884718614B5B9A0','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',41.00),
	('E689D306-E8A4-9204-3D6022A23A4FAD19','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',42.00),
	('E689D517-0180-44A8-1A68E4C896B0760F','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',43.00),
	('E689D322-C101-2859-E559E8561F1D8557','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',44.00),
	('E689D2DC-A4D2-DD90-5827EDC38488F8DC','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',45.00),
	('E689D2EE-E8CE-66C8-404E6CC1CDC66E71','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',46.00),
	('E689D2E4-059E-1939-CFBFC324E71B746D','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',47.00),
	('E689D2E9-DC9F-8380-01E3111FA5897936','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',48.00),
	('E689D2F4-CD44-FF15-8697975A8E6CFA32','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',49.00),
	('E689D2FA-CD62-A65B-24E2719CCBADE8B7','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',50.00),
	('E689D35A-AC89-570C-351A2CE254ABA1E8','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',51.00),
	('E689D35F-9DF0-4351-4BB7A9A598734800','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',52.00),
	('E689D356-A851-EB24-9C5D7E816BFDF277','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',53.00),
	('E689D59A-9A8E-A3F8-EA41732715E84F87','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',54.00),
	('E689D5AA-9CA9-5496-4FF5040A8002629C','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',55.00),
	('E689D59D-D8C5-616D-4B6FFB61CC29E340','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',56.00),
	('E689D5A0-ADA3-4D3C-79886ADA58B63BCD','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',57.00),
	('E689D5A2-CE66-DAE1-54DCAC81F0E215B1','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',58.00),
	('E689D5A7-A91D-6350-47EBEC196B30A68F','farPermission','E689D5C9-AC95-26EF-7B2E71C02EDB8757',59.00),
	('E689D537-09F6-7CF6-BDA45BD8A66A6EA9','farPermission','E689D5E0-DA22-E887-D354DB4233669252',1.00),
	('E689D4FF-A1DA-8D8A-7911F843BB1FC931','farPermission','E689D5E0-DA22-E887-D354DB4233669252',2.00),
	('E689D506-F83F-96C9-841A215D494C897E','farPermission','E689D5E0-DA22-E887-D354DB4233669252',3.00),
	('E689D540-976D-7199-AAFE6F78F5C6E74F','farPermission','E689D5E0-DA22-E887-D354DB4233669252',4.00),
	('E689D546-E54C-6A0A-70755C496597922F','farPermission','E689D5E0-DA22-E887-D354DB4233669252',5.00),
	('E689D54A-D233-44B6-36232CA169202378','farPermission','E689D5E0-DA22-E887-D354DB4233669252',6.00),
	('E689D31A-E8E4-BD8B-B884718614B5B9A0','farPermission','E689D5E0-DA22-E887-D354DB4233669252',7.00),
	('E689D313-B3A4-0623-E678B6C6E2D20D18','farPermission','E689D5E0-DA22-E887-D354DB4233669252',8.00),
	('E689D2F4-CD44-FF15-8697975A8E6CFA32','farPermission','E689D5E0-DA22-E887-D354DB4233669252',9.00),
	('E689D2FA-CD62-A65B-24E2719CCBADE8B7','farPermission','E689D5E0-DA22-E887-D354DB4233669252',10.00),
	('E689D356-A851-EB24-9C5D7E816BFDF277','farPermission','E689D5E0-DA22-E887-D354DB4233669252',11.00),
	('E689D365-A0BA-2CC5-A5E2FD2ED3882A5E','farPermission','E689D5E0-DA22-E887-D354DB4233669252',12.00),
	('E689D2C1-BCF9-1D2D-8F43DF18E8F5A69A','farPermission','E689D5E0-DA22-E887-D354DB4233669252',13.00),
	('E689D55D-CC02-7808-A3C25F734A722F26','farPermission','E689D5E0-DA22-E887-D354DB4233669252',14.00),
	('E689D566-C140-27E6-040D77D702498344','farPermission','E689D5E0-DA22-E887-D354DB4233669252',15.00),
	('E689D306-E8A4-9204-3D6022A23A4FAD19','farPermission','E689D5E0-DA22-E887-D354DB4233669252',16.00),
	('E689D2E4-059E-1939-CFBFC324E71B746D','farPermission','E689D5E0-DA22-E887-D354DB4233669252',17.00),
	('E689D35A-AC89-570C-351A2CE254ABA1E8','farPermission','E689D5E0-DA22-E887-D354DB4233669252',18.00),
	('E689D350-A443-18BC-D6C1386BD84193ED','farPermission','E689D5E0-DA22-E887-D354DB4233669252',19.00),
	('E689D374-083B-2DB5-F7BF29039BDC07B2','farPermission','E689D5E0-DA22-E887-D354DB4233669252',20.00),
	('E689D383-0E9C-D201-B4DF1B06610517D5','farPermission','E689D5E0-DA22-E887-D354DB4233669252',21.00),
	('E689D50B-DA2D-1B5D-7C882A223D927BE0','farPermission','E689D5E0-DA22-E887-D354DB4233669252',22.00),
	('E689D35F-9DF0-4351-4BB7A9A598734800','farPermission','E689D5E0-DA22-E887-D354DB4233669252',23.00),
	('E689D59D-D8C5-616D-4B6FFB61CC29E340','farPermission','E689D5E0-DA22-E887-D354DB4233669252',24.00),
	('E689D5A2-CE66-DAE1-54DCAC81F0E215B1','farPermission','E689D5E0-DA22-E887-D354DB4233669252',25.00),
	('E689D5A7-A91D-6350-47EBEC196B30A68F','farPermission','E689D5E0-DA22-E887-D354DB4233669252',26.00),
	('E689D537-09F6-7CF6-BDA45BD8A66A6EA9','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',1.00),
	('E689D55D-CC02-7808-A3C25F734A722F26','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',2.00),
	('E689D56C-D9F2-E494-65E44E22254BFDC9','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',3.00),
	('E689D566-C140-27E6-040D77D702498344','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',4.00),
	('E689D2E9-DC9F-8380-01E3111FA5897936','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',5.00),
	('E689D356-A851-EB24-9C5D7E816BFDF277','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',6.00),
	('E689D4FF-A1DA-8D8A-7911F843BB1FC931','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',7.00),
	('E689D313-B3A4-0623-E678B6C6E2D20D18','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',8.00),
	('E689D35F-9DF0-4351-4BB7A9A598734800','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',9.00),
	('E689D2C1-BCF9-1D2D-8F43DF18E8F5A69A','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',10.00),
	('E689D50F-B0FD-05D2-BECD98EE75130C89','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',11.00),
	('E689D51C-F9D5-3C21-833EC4564E69C5C7','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',12.00),
	('E689D540-976D-7199-AAFE6F78F5C6E74F','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',13.00),
	('E689D529-0CE1-2C81-2503CC579F364996','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',14.00),
	('E689D52D-A597-D988-B7928F37ADD428BC','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',15.00),
	('E689D31A-E8E4-BD8B-B884718614B5B9A0','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',16.00),
	('E689D2E4-059E-1939-CFBFC324E71B746D','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',17.00),
	('E689D2FA-CD62-A65B-24E2719CCBADE8B7','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',18.00),
	('E689D365-A0BA-2CC5-A5E2FD2ED3882A5E','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',19.00),
	('E689D374-083B-2DB5-F7BF29039BDC07B2','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',20.00),
	('E689D383-0E9C-D201-B4DF1B06610517D5','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',21.00),
	('E689D4F9-BD4A-1173-F9992C34558A3DF6','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',22.00),
	('E689D506-F83F-96C9-841A215D494C897E','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',23.00),
	('E689D2DC-A4D2-DD90-5827EDC38488F8DC','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',24.00),
	('E689D557-D731-1A94-18C8E1ED5D96809C','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',25.00),
	('E689D524-0F6F-411F-7345E24E7B782CE4','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',26.00),
	('E689D562-0302-B1EE-BE2A78B0F4C12512','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',27.00),
	('E689D546-E54C-6A0A-70755C496597922F','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',28.00),
	('E689D54A-D233-44B6-36232CA169202378','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',29.00),
	('E689D513-DDD9-2DD2-BA32ED0310F0EF87','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',30.00),
	('E689D50B-DA2D-1B5D-7C882A223D927BE0','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',31.00),
	('E689D306-E8A4-9204-3D6022A23A4FAD19','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',32.00),
	('E689D2EE-E8CE-66C8-404E6CC1CDC66E71','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',33.00),
	('E689D2F4-CD44-FF15-8697975A8E6CFA32','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',34.00),
	('E689D35A-AC89-570C-351A2CE254ABA1E8','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',35.00),
	('E689D350-A443-18BC-D6C1386BD84193ED','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',36.00),
	('E689D4F3-E3D0-B48F-831E68C611AB00A7','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',37.00),
	('E689D59A-9A8E-A3F8-EA41732715E84F87','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',38.00),
	('E689D5AA-9CA9-5496-4FF5040A8002629C','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',39.00),
	('E689D59D-D8C5-616D-4B6FFB61CC29E340','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',40.00),
	('E689D5A0-ADA3-4D3C-79886ADA58B63BCD','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',41.00),
	('E689D5A2-CE66-DAE1-54DCAC81F0E215B1','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',42.00),
	('E689D5A7-A91D-6350-47EBEC196B30A68F','farPermission','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7',43.00);

/*!40000 ALTER TABLE `farRole_aPermissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farTask
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farTask`;

CREATE TABLE `farTask` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `userID` varchar(50) DEFAULT NULL,
  `taskDefID` varchar(50) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `bComplete` tinyint(1) DEFAULT '0',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `taskWebskin` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`ObjectID`),
  KEY `userID_index` (`userID`),
  KEY `taskDefID_index` (`taskDefID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farTaskDef
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farTaskDef`;

CREATE TABLE `farTaskDef` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `taskWebskin` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farTaskDef_aRoles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farTaskDef_aRoles`;

CREATE TABLE `farTaskDef_aRoles` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farUser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farUser`;

CREATE TABLE `farUser` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `userid` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `userstatus` varchar(250) DEFAULT 'active',
  `failedLogins` longtext,
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `forgotPasswordHash` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `lGroups` longtext,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farUser` WRITE;
/*!40000 ALTER TABLE `farUser` DISABLE KEYS */;

INSERT INTO `farUser` (`datetimelastupdated`, `lockedBy`, `userid`, `lastupdatedby`, `createdby`, `userstatus`, `failedLogins`, `datetimecreated`, `locked`, `password`, `ObjectID`, `label`, `forgotPasswordHash`, `ownedby`, `lGroups`)
VALUES
	('2008-04-03 15:41:06',NULL,'farcry','installation','installation','active',NULL,'2007-12-17 16:18:19',0,'$2a$10$Pvg8tgeOekIZO5DSqmp.8eHeN2Hsu9kbTuTWeP7fj1k.wfv3tdiQS','E689D150-0C0C-923A-C05D110545136581','farcry',NULL,NULL,NULL);

/*!40000 ALTER TABLE `farUser` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farUser_aGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farUser_aGroups`;

CREATE TABLE `farUser_aGroups` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `farUser_aGroups` WRITE;
/*!40000 ALTER TABLE `farUser_aGroups` DISABLE KEYS */;

INSERT INTO `farUser_aGroups` (`data`, `typename`, `parentid`, `seq`)
VALUES
	('E689D14C-FEDC-B2C0-9F5404C3F3A58A49','farGroup','E689D150-0C0C-923A-C05D110545136581',1.00);

/*!40000 ALTER TABLE `farUser_aGroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table farWebfeed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWebfeed`;

CREATE TABLE `farWebfeed` (
  `keywords` varchar(250) DEFAULT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `itunesauthor` varchar(250) DEFAULT NULL,
  `bAuthor` tinyint(1) DEFAULT '0',
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `itunescategories` varchar(250) DEFAULT NULL,
  `skiphours` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `itunessubtitleproperty` varchar(250) DEFAULT NULL,
  `generator` varchar(250) DEFAULT 'http://www.farcrycms.org/',
  `copyright` varchar(250) DEFAULT NULL,
  `itunesimage` varchar(250) DEFAULT NULL,
  `itemtype` varchar(250) DEFAULT NULL,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `atomicon` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `dateproperty` varchar(250) DEFAULT 'datetimecreated',
  `keywordsproperty` varchar(250) DEFAULT NULL,
  `datetimelastupdated` datetime NOT NULL,
  `language` varchar(250) DEFAULT NULL,
  `feedimage` varchar(250) DEFAULT NULL,
  `enclosurefileproperty` varchar(250) DEFAULT NULL,
  `iTunesFeedId` decimal(11,0) DEFAULT NULL,
  `directory` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `catFilter` longtext,
  `contentproperty` varchar(250) DEFAULT 'teaser',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `skipdays` varchar(250) DEFAULT NULL,
  `editoremail` varchar(250) DEFAULT NULL,
  `editor` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `itunesdurationproperty` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `titleproperty` varchar(250) DEFAULT 'title',
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farWebtopDashboard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWebtopDashboard`;

CREATE TABLE `farWebtopDashboard` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `lCards` longtext,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `lRoles` longtext,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farWebtopDashboard_aRoles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWebtopDashboard_aRoles`;

CREATE TABLE `farWebtopDashboard_aRoles` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farWorkflow
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWorkflow`;

CREATE TABLE `farWorkflow` (
  `datetimelastupdated` datetime NOT NULL,
  `referenceID` varchar(50) DEFAULT NULL,
  `bTasksComplete` tinyint(1) DEFAULT '0',
  `lockedBy` varchar(250) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `bActive` tinyint(1) DEFAULT '1',
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `workflowDefID` varchar(50) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `bWorkflowSetupComplete` tinyint(1) DEFAULT '0',
  `bWorkflowComplete` tinyint(1) DEFAULT '0',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`ObjectID`),
  KEY `referenceID_index` (`referenceID`),
  KEY `workflowDefID_index` (`workflowDefID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farWorkflow_aTaskIDs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWorkflow_aTaskIDs`;

CREATE TABLE `farWorkflow_aTaskIDs` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farWorkflowDef
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWorkflowDef`;

CREATE TABLE `farWorkflowDef` (
  `datetimelastupdated` datetime NOT NULL,
  `lockedBy` varchar(250) DEFAULT NULL,
  `lastupdatedby` varchar(250) NOT NULL DEFAULT '',
  `workflowEnd` varchar(250) DEFAULT NULL,
  `createdby` varchar(250) NOT NULL DEFAULT '',
  `datetimecreated` datetime NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `lTypenames` longtext,
  `ObjectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ownedby` varchar(250) DEFAULT NULL,
  `description` longtext,
  `workflowStart` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table farWorkflowDef_aTaskDefs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `farWorkflowDef_aTaskDefs`;

CREATE TABLE `farWorkflowDef_aTaskDefs` (
  `data` varchar(250) DEFAULT NULL,
  `typename` varchar(250) DEFAULT NULL,
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `seq` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`parentid`,`seq`),
  KEY `data_index` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table nested_tree_objects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nested_tree_objects`;

CREATE TABLE `nested_tree_objects` (
  `nlevel` decimal(11,0) NOT NULL,
  `nright` decimal(11,0) NOT NULL,
  `typename` varchar(250) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `objectname` varchar(250) NOT NULL DEFAULT '',
  `objectid` varchar(50) NOT NULL DEFAULT '',
  `nleft` decimal(11,0) NOT NULL,
  PRIMARY KEY (`objectid`),
  KEY `IDX_NTO` (`nleft`,`nright`),
  KEY `parentid_index` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `nested_tree_objects` WRITE;
/*!40000 ALTER TABLE `nested_tree_objects` DISABLE KEYS */;

INSERT INTO `nested_tree_objects` (`nlevel`, `nright`, `typename`, `parentid`, `objectname`, `objectid`, `nleft`)
VALUES
	(0,2,'dmCategory','','Root','CE43797A-0F7A-61E2-CCAEA1146DFFDD09',1),
	(0,18,'dmNavigation','','Root','E689D720-B19E-FC94-66DD3411BED0693C',1),
	(1,13,'dmNavigation','E689D720-B19E-FC94-66DD3411BED0693C','Home','E689D721-B6C9-605B-DE1D813E4CDA3339',2),
	(1,15,'dmNavigation','E689D720-B19E-FC94-66DD3411BED0693C','Utility','E689D724-AE3E-A438-FCD3CBF4D14557C3',14),
	(1,17,'dmNavigation','E689D720-B19E-FC94-66DD3411BED0693C','Trash','E689D729-0081-4050-6D2273E9D9B6389F',16);

/*!40000 ALTER TABLE `nested_tree_objects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refCategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refCategories`;

CREATE TABLE `refCategories` (
  `categoryid` varchar(50) NOT NULL DEFAULT '',
  `objectid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table refContainers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refContainers`;

CREATE TABLE `refContainers` (
  `containerid` varchar(50) NOT NULL DEFAULT '',
  `objectid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`containerid`,`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table refObjects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refObjects`;

CREATE TABLE `refObjects` (
  `typename` varchar(250) NOT NULL DEFAULT '',
  `objectid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refObjects` WRITE;
/*!40000 ALTER TABLE `refObjects` DISABLE KEYS */;

INSERT INTO `refObjects` (`typename`, `objectid`)
VALUES
	('dmHTML','0177DB30-A2C4-11E5-B0DE0242AC110015'),
	('farFU','07086AB0-A2C4-11E5-B0DE0242AC110015'),
	('dmNavigation','0909BC90-0BFD-11E1-BAE44A60BC869D4C'),
	('dmNavigation','1AC64B60-0BFD-11E1-BAE44A60BC869D4C'),
	('farFU','1E78D1D0-0507-11E1-A141D49A20F53776'),
	('dmNavigation','2D85CB40-0BFD-11E1-BAE44A60BC869D4C'),
	('dmNavigation','5A3BB780-0BFD-11E1-BAE44A60BC869D4C'),
	('farFU','65CAACE0-BF7F-11E3-AAD9BC5FF41C5C33'),
	('farConfig','7DE03C42-A622-2933-A1F46F3F14D9FF36'),
	('farPermission','9DB3EC90-26EB-11E1-9348001C42000009'),
	('farConfig','A13A1C00-F642-11E1-8AD6D49A20F53776'),
	('farConfig','CDD2A356-EAC8-2242-EB48790985762230'),
	('farConfig','CDD2A454-B831-53DA-BF6A8A7DB5772D8E'),
	('dmProfile','CDD3B33E-A463-9B75-DC0150D316830765'),
	('dmCategory','CE43797A-0F7A-61E2-CCAEA1146DFFDD09'),
	('farGroup','E689D11B-E02F-628E-5267654BB92D334F'),
	('farGroup','E689D131-A4A0-21F0-45AB44EC3AB144CD'),
	('farGroup','E689D13F-D5B9-183C-035154054829ACDE'),
	('farGroup','E689D144-0821-1733-364BD09A3CD85752'),
	('farGroup','E689D148-F430-B6F5-34D2F39C6D933049'),
	('farGroup','E689D14C-FEDC-B2C0-9F5404C3F3A58A49'),
	('farUser','E689D150-0C0C-923A-C05D110545136581'),
	('farPermission','E689D202-EC06-56B0-C3F0E3D7A54A9A03'),
	('farPermission','E689D235-FDCC-1B10-FC659CA1FDF77C1D'),
	('farPermission','E689D250-E0AA-3E4C-8EF77C7D8AB212B5'),
	('farPermission','E689D28C-A886-56BE-BC48F514253BBC9C'),
	('farPermission','E689D298-CC85-C22F-95829704E2D5B45C'),
	('farPermission','E689D2A5-E097-4576-C31248CA0D52232E'),
	('farPermission','E689D2B1-D797-240F-53534186AFD119ED'),
	('farPermission','E689D2BC-9740-AA86-F6DB0B7301CC05DF'),
	('farPermission','E689D2C1-BCF9-1D2D-8F43DF18E8F5A69A'),
	('farPermission','E689D2C6-CFFB-7B56-9F7A9FA842DD62DF'),
	('farPermission','E689D2CD-DB06-764E-7C54767FD0D2D618'),
	('farPermission','E689D2D2-A257-0547-41617FF02EE7A585'),
	('farPermission','E689D2DC-A4D2-DD90-5827EDC38488F8DC'),
	('farPermission','E689D2E4-059E-1939-CFBFC324E71B746D'),
	('farPermission','E689D2E9-DC9F-8380-01E3111FA5897936'),
	('farPermission','E689D2EE-E8CE-66C8-404E6CC1CDC66E71'),
	('farPermission','E689D2F4-CD44-FF15-8697975A8E6CFA32'),
	('farPermission','E689D2FA-CD62-A65B-24E2719CCBADE8B7'),
	('farPermission','E689D301-FEBE-5812-F9535E278CD711D8'),
	('farPermission','E689D306-E8A4-9204-3D6022A23A4FAD19'),
	('farPermission','E689D313-B3A4-0623-E678B6C6E2D20D18'),
	('farPermission','E689D31A-E8E4-BD8B-B884718614B5B9A0'),
	('farPermission','E689D31E-F0E3-97D2-7824C31BD8C61991'),
	('farPermission','E689D322-C101-2859-E559E8561F1D8557'),
	('farPermission','E689D329-A214-E7B4-660E400CEEE14528'),
	('farPermission','E689D333-AE3C-476F-D29D19A2201E509A'),
	('farPermission','E689D339-F017-4CD5-887ED5B7F94D6F74'),
	('farPermission','E689D33F-A119-D9EB-35680B0870510D70'),
	('farPermission','E689D343-08A3-515B-D31C179129F09E2A'),
	('farPermission','E689D34A-9C3D-166E-DD0466BFE13417BE'),
	('farPermission','E689D350-A443-18BC-D6C1386BD84193ED'),
	('farPermission','E689D356-A851-EB24-9C5D7E816BFDF277'),
	('farPermission','E689D35A-AC89-570C-351A2CE254ABA1E8'),
	('farPermission','E689D35F-9DF0-4351-4BB7A9A598734800'),
	('farPermission','E689D365-A0BA-2CC5-A5E2FD2ED3882A5E'),
	('farPermission','E689D36E-0D65-0003-02868D66F17B0E9B'),
	('farPermission','E689D374-083B-2DB5-F7BF29039BDC07B2'),
	('farPermission','E689D379-EA87-C2A9-F74C8D34C5471D4D'),
	('farPermission','E689D37E-F2EE-5BC6-7380FF1F9A703404'),
	('farPermission','E689D383-0E9C-D201-B4DF1B06610517D5'),
	('farPermission','E689D4F3-E3D0-B48F-831E68C611AB00A7'),
	('farPermission','E689D4F9-BD4A-1173-F9992C34558A3DF6'),
	('farPermission','E689D4FF-A1DA-8D8A-7911F843BB1FC931'),
	('farPermission','E689D506-F83F-96C9-841A215D494C897E'),
	('farPermission','E689D50B-DA2D-1B5D-7C882A223D927BE0'),
	('farPermission','E689D50F-B0FD-05D2-BECD98EE75130C89'),
	('farPermission','E689D513-DDD9-2DD2-BA32ED0310F0EF87'),
	('farPermission','E689D517-0180-44A8-1A68E4C896B0760F'),
	('farPermission','E689D51C-F9D5-3C21-833EC4564E69C5C7'),
	('farPermission','E689D524-0F6F-411F-7345E24E7B782CE4'),
	('farPermission','E689D529-0CE1-2C81-2503CC579F364996'),
	('farPermission','E689D52D-A597-D988-B7928F37ADD428BC'),
	('farPermission','E689D531-F714-E238-E5B20B954FCE5958'),
	('farPermission','E689D537-09F6-7CF6-BDA45BD8A66A6EA9'),
	('farPermission','E689D540-976D-7199-AAFE6F78F5C6E74F'),
	('farPermission','E689D546-E54C-6A0A-70755C496597922F'),
	('farPermission','E689D54A-D233-44B6-36232CA169202378'),
	('farPermission','E689D553-0ECF-90A6-50531AAEB1FE7B40'),
	('farPermission','E689D557-D731-1A94-18C8E1ED5D96809C'),
	('farPermission','E689D55D-CC02-7808-A3C25F734A722F26'),
	('farPermission','E689D562-0302-B1EE-BE2A78B0F4C12512'),
	('farPermission','E689D566-C140-27E6-040D77D702498344'),
	('farPermission','E689D56C-D9F2-E494-65E44E22254BFDC9'),
	('farPermission','E689D58C-E15E-FFE3-51F668111EC71569'),
	('farPermission','E689D591-0FA1-C0D6-59E34E7B6D15E30A'),
	('farPermission','E689D59A-9A8E-A3F8-EA41732715E84F87'),
	('farPermission','E689D59D-D8C5-616D-4B6FFB61CC29E340'),
	('farPermission','E689D5A0-ADA3-4D3C-79886ADA58B63BCD'),
	('farPermission','E689D5A2-CE66-DAE1-54DCAC81F0E215B1'),
	('farPermission','E689D5A7-A91D-6350-47EBEC196B30A68F'),
	('farPermission','E689D5AA-9CA9-5496-4FF5040A8002629C'),
	('farRole','E689D5B4-F414-BFA2-C9057B5D298E1819'),
	('farRole','E689D5C9-AC95-26EF-7B2E71C02EDB8757'),
	('farRole','E689D5D6-F917-2DDA-D7DD0091F974912B'),
	('farRole','E689D5E0-DA22-E887-D354DB4233669252'),
	('farRole','E689D5F3-E58C-FBF6-4DD93F7551EAB3C7'),
	('farRole','E689D5FD-E815-6563-42C96C62768CE342'),
	('dmHTML','E689D66F-96FD-E9F6-B1AF64B8DAE78A69'),
	('dmNavigation','E689D720-B19E-FC94-66DD3411BED0693C'),
	('dmNavigation','E689D721-B6C9-605B-DE1D813E4CDA3339'),
	('dmNavigation','E689D724-AE3E-A438-FCD3CBF4D14557C3'),
	('dmNavigation','E689D729-0081-4050-6D2273E9D9B6389F'),
	('farConfig','EFF85F50-4A83-11E3-8521BC5FF41C5C33'),
	('farConfig','EFFEA0E0-4A83-11E3-8521BC5FF41C5C33'),
	('farConfig','F0027171-4A83-11E3-8521BC5FF41C5C33'),
	('farConfig','F0083DD0-4A83-11E3-8521BC5FF41C5C33'),
	('farConfig','F00B7221-4A83-11E3-8521BC5FF41C5C33'),
	('dmNavigation','F9E823F0-0BFC-11E1-BAE44A60BC869D4C');

/*!40000 ALTER TABLE `refObjects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ruleText
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ruleText`;

CREATE TABLE `ruleText` (
  `datetimelastupdated` datetime DEFAULT NULL,
  `text` longtext NOT NULL,
  `objectID` varchar(50) NOT NULL DEFAULT '',
  `label` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`objectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

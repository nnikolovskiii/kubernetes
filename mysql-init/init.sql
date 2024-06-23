CREATE DATABASE  IF NOT EXISTS `finki_rasporedi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finki_rasporedi`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: finki_rasporedi
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20240213174900_lol','7.0.12'),('20240219020916_make-changes','7.0.12');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUsers`
--

LOCK TABLES `AspNetUsers` WRITE;
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` VALUES ('1b7ed073-2a3e-414d-a83b-ec27919d59ae','niksdadfsd','NIKSDADFSD','nik@gmail.com','NIK@GMAIL.COM',0,'AQAAAAIAAYagAAAAELR+rhbFG4LDfCP2OWOCiTqz7xF9A4mMbpV9a39BpafjeiIGNagm3nfgA9oWU3p9eA==','FGPCDGAHKJ4KORSFDY7VMR2BVWIKIDQ3','38e93995-faf0-4ec1-81e3-063c5ee0afce',NULL,0,0,NULL,1,0),('26476dfa-2165-4516-bd6c-be1d2fd93114','dasdsadsad','DASDSADSAD','nik@nik.com','NIK@NIK.COM',0,'AQAAAAIAAYagAAAAEIIuTXowim6N85C+omCSU9XWgrbLqK2QHcKS0V3er/vD5jJazcEdyCx2NLRgyOfd6w==','EDNWOZNZSLWASWSVOKN5MK5A4PLKERFE','7846d31f-bcb4-4799-96aa-329ba4c102c5',NULL,0,0,NULL,1,0),('2bf3c24f-40b2-4adf-a690-9b26f9214f02','niksdad','NIKSDAD','nik@gmail.com','NIK@GMAIL.COM',0,'AQAAAAIAAYagAAAAELS3CTLjThVr5ZYjnFGQ5Wc4y3KRIBe9LY0fxzn+TG8HgJfSth6VbWszE71Eq21IHw==','YXVGSK5KZTKWY4LJLH7OEQKAO7WGQAZA','c7061edb-90cc-46d1-a126-ba5cf54ec6bb',NULL,0,0,NULL,1,0),('3cd1f39f-ccce-4896-a142-582281fe6585','adsadasd','ADSADASD','asd@sad.com','ASD@SAD.COM',0,'AQAAAAIAAYagAAAAEJeO0tS/Cry7TViq9V8B2wpeneyJo7nnGYNhiVjjAsyc4moyRRaYqbVQx9aX7t/4ag==','IR5ACYLXV5GKCCENODOME3EABGMVEBVN','d8116e7d-a142-4f69-a8eb-7c49560755f7',NULL,0,0,NULL,1,0),('3d208379-4ea4-4c2b-9988-333f3b53eeeb','anja','ANJA','anja@anja.com','ANJA@ANJA.COM',0,'AQAAAAIAAYagAAAAEDvbixQbIA9lAGWJEOUzYUCSjY4dnqYWl+zgdZYCo8x/JCI7z3Efx0oTaB8jGGZlVA==','4NLWRET25YLX6CFPHKWAGRCNKXL6BIVI','e1faeb23-8b25-42ee-8b9e-da70bece8902',NULL,0,0,NULL,1,0),('558ac729-ab29-48cd-ac87-92234d2e2e84','ass','ASS','anja@anja.com','ANJA@ANJA.COM',0,'AQAAAAIAAYagAAAAEBWHtNOiJpE1B0sZ/DuYzi9sUkehkXzbFnSMDsxnkOz4IFu1RWN5zEZBL0TM9UFdvQ==','24MRMH3UORWF24C2OGCJBIC652CBRLFI','61ff3826-9b3d-4ce9-8d3d-f9fd8f8ec2ed',NULL,0,0,NULL,1,0),('5c184abe-b91d-43e4-8545-d6d8a621e128','assqw','ASSQW','anja@anja.com','ANJA@ANJA.COM',0,'AQAAAAIAAYagAAAAEDF+5QRbM9X6A3JPTM2OoVzm7rFrCH8i0Q8NGgrgoyi2hQut3vNluqWyMf+BKadQ8Q==','SVQVWWDKWGCBHWAMQYNFK66BAQLUZ4MV','6f4e47a1-3571-43cd-aa44-40fbf2b4e9a7',NULL,0,0,NULL,1,0),('5c60d642-d1fa-43ab-887b-0b476cfd32ea','niksdadf','NIKSDADF','nik@gmail.com','NIK@GMAIL.COM',0,'AQAAAAIAAYagAAAAEN2bjxEA8WeWfVrtGXGcLjO3BCDm7Sx0HVdjrlz4A1EgcpHUa7G9lC5eKZBDk8s5XQ==','53GBWQADZIUHECDU3ETNTSHGVEDM62JU','0b6600b3-ab27-49a3-910e-097741a43b82',NULL,0,0,NULL,1,0),('6a42ddf9-9861-4e11-8c25-3d735c5207ae','assqwsdasd','ASSQWSDASD','anja@anja.com','ANJA@ANJA.COM',0,'AQAAAAIAAYagAAAAEC/UQUFQpjOCp1y7760DPNsGTQpHcEnj6oAAkh/UO1MjuvzHOGIWEOI8SQ2gBCAvXQ==','FGF5R32BTOC7YSASX4NKYR36Q455VHA5','f421f339-582d-4b6e-be24-8071568f4dc6',NULL,0,0,NULL,1,0),('6e2868f5-bdfb-4c5d-bde1-101fc6191c33','asdsad','ASDSAD','nik@gmail.com','NIK@GMAIL.COM',0,'AQAAAAIAAYagAAAAEPYu91QEHtFpuQTbJvmhwM2Im6sqo42PYzbOPEhPPRijgNiZXJEtMZCtD3VrYBj3pQ==','OCIQ2CW5HQBHKXXGYG7UYCIJGTGTM2A6','087cfc6f-2e38-4b1d-9618-bcc8f77d4aab',NULL,0,0,NULL,1,0),('a292e3ea-35e9-432a-bae1-fa127e4165ac','gsgsgsg','GSGSGSG','nik@nik.com','NIK@NIK.COM',0,'AQAAAAIAAYagAAAAEAXhZ2Y1WnxXGxrvuNk66ibqlR5DtqhApyi2o4Vcgt3yIYvvtMlaUftORFcfEsKd/g==','ZLCFZYQWZ7LE2PJFCETC3A7QSXQA6FCH','2a82fb6b-c012-46ce-adf1-8e00a943b782',NULL,0,0,NULL,1,0),('anja1','anja1','ANJA1','anja@gmail.com','ANJA@GMAIL.COM',0,'AQAAAAIAAYagAAAAEPCSD4IXGTIxnBliL2dYjG1mtrtAbZdSuZljdliO79bVn+EVBn+khIk0pvTCcVqO/Q==','4V6B7ZFINUNCUJNFWP77KDJAJV5HKQGN','b8463160-1b28-46a1-9e4c-8ec970d615b1',NULL,0,0,NULL,1,0),('c9dcdbeb-9ea6-4609-8acd-03335368b68e','sadsa','SADSA','nik@gmailc.om','NIK@GMAILC.OM',0,'AQAAAAIAAYagAAAAEIO7dBAX/nYei1b9eA55Oryet/blaKrTm9OMZeWZA4v8a5QDmhRwWA871g+HFlUV6g==','SZEQZH5XSPLIQZJCRY6SWPNIHXLINZZT','7c13f9a0-025e-4f18-bdd1-dcfcac8727f1',NULL,0,0,NULL,1,0),('cf21147c-9a9d-4120-b5d3-c9f6c0c030d0','NIKOLA1','NIKOLA1','nik@nik.com','NIK@NIK.COM',0,'AQAAAAIAAYagAAAAELxOueibxuacszI7DdUCEvFSqo27yvHu8z7V9HbhmJNpenHfx5pagpyihAMze7cSEA==','FJ7OH3N5WXSURMUPGFGJEHDRDTFM4FDF','c98d9a01-8a6c-43fe-8e64-d4ae80178cd5',NULL,0,0,NULL,1,0),('d7e2a41f-4a82-4c56-a792-23f7de5889e5','NIKOLA12','NIKOLA12','nik@nik.com','NIK@NIK.COM',0,'AQAAAAIAAYagAAAAEKvNLH7O9m/FYti5hhzmlElS3mpJiJY5IJ0L0Ptx2vO7zNEmLkvNv2Gkt2I8cd+9tw==','4YBR4S4Z3TKXT7O7P2XDD5JO4XLMQTCB','c892d071-6f12-4113-b7de-7f58df85ea3c',NULL,0,0,NULL,1,0),('daa7c720-d268-4d8d-ac18-ebc49c58975c','assqws','ASSQWS','anja@anja.com','ANJA@ANJA.COM',0,'AQAAAAIAAYagAAAAEAH4dPB1SaCHfcspPFhV+8YDzyHRvwvNmVZJYmLCxp1dp56R8Ue1tqQRZdUN3UxBeQ==','CBBN55PIWXUWRWYIEJQA3VSMSBT7RNRP','f357a4d4-3fcc-46bd-9c6c-21651c5baf3d',NULL,0,0,NULL,1,0),('e0f6e0c5-ac11-491c-bede-25c415f3dfa4','dimitar128','DIMITAR128','test@example.com','TEST@EXAMPLE.COM',0,'AQAAAAIAAYagAAAAEKAA7djX6RDzygEKH5T5jgnLHnGZ/Qm/hytSTbJ+9/fSKtNuChpwky8EAdI//uloLg==','E6MCULOF6XYM2CMCSOWSGLILX5RVP6QR','cdce17e2-ef5d-4578-9eb6-26822851115a',NULL,0,0,NULL,1,0),('fd9028cd-9bcd-4d8a-9395-cb5cdae940ba','gsgsgsgasd','GSGSGSGASD','nik@nik.com','NIK@NIK.COM',0,'AQAAAAIAAYagAAAAEIpxHUWarNmNwxxnouGfCgy9bujqSSDfR+jIdHsMK1pHVDL0A23aZOA3yC5Xtu9qsA==','PWZOKBEFVCMYAYWOXIHXED4FA2XUX5IX','33a81b29-76d3-4bf1-b9bc-c177830cf86a',NULL,0,0,NULL,1,0),('FINKI','FINKI','FINKI','finki@finki.com','FINKI@FINKI.COM',0,'AQAAAAIAAYagAAAAEN3TrAmnFBy4uYK6e8LKvW9kvITaxaP9fOGa2YLfgnDNGlMc3c9EkBNdKU/G3qPo1g==','OARU7WAKCLWCIC2YETDLFTVQX7YSBJQZ','ed2928ef-dc28-4d56-8533-47be18751dd5',NULL,0,0,NULL,1,0),('nikola','nikola','NIKOLA','finki@finki.com','FINKI@FINKI.COM',0,'AQAAAAIAAYagAAAAEIfMISM+ocu98MZjvqUx7ucnPEUoAz0kW2ovfrl8NaIiXZnOLxh7oAtqLaUjXP4kaw==','FWQ3PDNFIV7EWGWYNFVCDGHZUMH6LY44','b57a72ea-fe2e-4095-837f-b201d6a380d3',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseprofessors`
--

DROP TABLE IF EXISTS `courseprofessors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseprofessors` (
  `CourseId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProfessorId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CourseId`,`ProfessorId`),
  KEY `IX_CourseProfessors_ProfessorId` (`ProfessorId`),
  CONSTRAINT `FK_CourseProfessors_Courses_CourseId` FOREIGN KEY (`CourseId`) REFERENCES `courses` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CourseProfessors_Professors_ProfessorId` FOREIGN KEY (`ProfessorId`) REFERENCES `professors` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseprofessors`
--

LOCK TABLES `courseprofessors` WRITE;
/*!40000 ALTER TABLE `courseprofessors` DISABLE KEYS */;
INSERT INTO `courseprofessors` VALUES ('W23veb.programiranje','aleksandar.petrushev'),('W23strukturno.programiranje','aleksandar.stojmenski'),('W23algoritmi.i.podatochni.strukturi','aleksandar.tenev'),('W23biznis.i.menadzhment','aleksandar.tenev'),('W23ekonomija.za.ikt.inzheneri','aleksandar.tenev'),('W23strukturno.programiranje','aleksandar.tenev'),('W23kompjuterski.mrezhi.i.bezbednost','aleksandra.dedinets'),('W23voved.vo.pametni.gradovi','aleksandra.dedinets'),('W23matematika.1./.kalkulus','aleksandra.popovska.mitrovikj'),('W23osnovi.na.teorijata.na.informatsii','aleksandra.popovska.mitrovikj'),('W23verojatnost.i.statistika','aleksandra.popovska.mitrovikj'),('W23dizajn.i.arkhitektura.na.softver','ana.atanasova'),('W23algoritmi.i.podatochni.strukturi','ana.madevska.bogdanova'),('W23strukturno.programiranje','ana.madevska.bogdanova'),('W23napredno.programiranje','ana.todorovska'),('W23veb.programiranje','ana.todorovska'),('W23voved.vo.naukata.za.podatotsi','ana.todorovska'),('W23kompjuterski.mrezhi.i.bezbednost','anastas.mishev'),('W23mrezhna.i.mobilna.forenzika','anastas.mishev'),('W23sajber.bezbednost./.mrezhna.bezbednost','anastas.mishev'),('W23upravuvanje.so.tekhnichka.poddrshka','anastas.mishev'),('W23osnovi.na.robotikata','andrea.kulakov'),('W23voved.vo.naukata.za.podatotsi','andrea.kulakov'),('W23metodologija.na.istrazhuvanjeto.vo.ikt','andreja.naumoski'),('W23profesionalni.veshtini','andreja.naumoski'),('W23multimediski.sistemi','biljana.stojkoska.risteska'),('W23profesionalni.veshtini','biljana.stojkoska.risteska'),('W23voved.vo.kompjuterskite.nauki','biljana.stojkoska.risteska'),('W23diskretni.strukturi.1','biljana.tojtovska.ribarski'),('W23verojatnost.i.statistika','biljana.tojtovska.ribarski'),('W23digitizatsija','boban.joksimoski'),('W23implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod','boban.joksimoski'),('W23napreden.veb.dizajn','boban.joksimoski'),('W23strukturno.programiranje','boban.joksimoski'),('W23internet.programiranje.na.klientska.strana','bojan.ilijoski'),('W23kompjuterska.etika','bojan.ilijoski'),('W23napredna.interaktsija.chovek.kompjuter','bojan.ilijoski'),('W23algoritmi.i.podatochni.strukturi','bojana.koteska'),('W23voved.vo.kompjuterskite.nauki','bojana.koteska'),('W23bazi.na.podatotsi','boris.stanoev'),('W23administratsija.na.sistemi','boro.jakimovski'),('W23distribuirani.sistemi','boro.jakimovski'),('W23napredno.programiranje','dejan.gjorgjevikj'),('W23strukturno.programiranje','dejan.gjorgjevikj'),('W23izbrani.temi.od.matematika./.diskretna.matematika','dejan.spasov'),('W23kompjuterski.mrezhi','dejan.spasov'),('W23kompjuterski.mrezhi.i.bezbednost','dejan.spasov'),('W23kompjuterski.mrezhi.i.bezbednost','dimitar.kitanovski'),('W23strukturno.programiranje','dimitar.kitanovski'),('W23inovatsii.vo.ikt','dimitar.milevski'),('W23presmetuvanje.vo.oblak','dimitar.milevski'),('W23veb.bazirani.sistemi','dimitar.trajanov'),('W23veb.programiranje','dimitar.trajanov'),('W23voved.vo.naukata.za.podatotsi','dimitar.trajanov'),('W23algoritmi.i.podatochni.strukturi','eftim.zdravevski'),('W23bazi.na.podatotsi','eftim.zdravevski'),('W23pedagogija','elena.rizova'),('W23matematika.1./.kalkulus','emil.stankov'),('W23programski.paradigmi','emil.stankov'),('W23strukturno.programiranje','emil.stankov'),('W23bazi.na.podatotsi','georgina.mircheva'),('W23biznis.i.menadzhment','georgina.mircheva'),('W23sistemi.za.poddrshka.pri.odluchuvanjeto','georgina.mircheva'),('W23napredno.programiranje','gjorgji.madzharov'),('W23strukturno.programiranje','gjorgji.madzharov'),('W23bazi.na.podatotsi','goran.velinov'),('W23menadzhment.informatsiski.sistemi','goran.velinov'),('W23dizajn.na.obrazoven.softver','gotse.armenski'),('W23internet.programiranje.na.klientska.strana','gotse.armenski'),('W23napreden.veb.dizajn','gotse.armenski'),('W23kompjuterski.mrezhi.i.bezbednost','igor.mishkovski'),('W23voved.vo.naukata.za.podatotsi','igor.mishkovski'),('W23algoritmi.i.podatochni.strukturi','ilinka.ivanoska'),('W23verojatnost.i.statistika','ilinka.ivanoska'),('W23implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod','ivan.chorbev'),('W23napreden.veb.dizajn','ivan.chorbev'),('W23strukturno.programiranje','ivan.chorbev'),('W23internet.programiranje.na.klientska.strana','ivan.kitanovski'),('W23voved.vo.kompjuterskite.nauki','ivan.kitanovski'),('W23shabloni.za.dizajn.na.korisnichki.interfejsi','ivitsa.dimitrovski'),('W23strukturno.programiranje','ivitsa.dimitrovski'),('W23algoritmi.i.podatochni.strukturi','jana.kuzmanova'),('W23analiza.i.dizajn.na.is','jana.kuzmanova'),('W23bazi.na.podatotsi','jana.kuzmanova'),('W23dizajn.i.arkhitektura.na.softver','jana.kuzmanova'),('W23matematika.1./.kalkulus','jasmina.jovanovska'),('W23dizajn.na.digitalni.kola','jovana.dobreva'),('W23voved.vo.naukata.za.podatotsi','jovana.dobreva'),('W23programiranje.na.video.igri','katarina.trojachanets.dineva'),('W23shabloni.za.dizajn.na.korisnichki.interfejsi','katarina.trojachanets.dineva'),('W23strukturno.programiranje','katarina.trojachanets.dineva'),('W23kompjuterska.etika','katerina.zdravkova'),('W23voved.vo.kompjuterskite.nauki','katerina.zdravkova'),('W23algoritmi.i.podatochni.strukturi','khristina.mikhajloska'),('W23informatsiska.bezbednost','khristina.mikhajloska'),('W23strukturno.programiranje','khristina.mikhajloska'),('W23bazi.na.podatotsi','kire.trivodaliev'),('W23profesionalni.veshtini','kire.trivodaliev'),('W23programski.paradigmi','kire.trivodaliev'),('W23administratsija.na.sistemi','kiril.kjiroski'),('W23voved.vo.kompjuterskite.nauki','kiril.kjiroski'),('W23profesionalni.veshtini','kosta.mitreski'),('W23voved.vo.kompjuterskite.nauki','kosta.mitreski'),('W23kompjuterski.mrezhi.i.bezbednost','kostadin.mishev'),('W23mobilni.platformi.i.programiranje','kostadin.mishev'),('W23veb.programiranje','kostadin.mishev'),('W23fizika','lasko.basnarkov'),('W23kompjuterska.elektronika','lasko.basnarkov'),('W23profesionalni.veshtini','lasko.basnarkov'),('W23dizajn.i.arkhitektura.na.softver','ljupcho.antovski'),('W23menadzhment.informatsiski.sistemi','ljupcho.antovski'),('W23mobilni.platformi.i.programiranje','ljupcho.antovski'),('W23algoritmi.i.podatochni.strukturi','magdalena.kostoska.gjorchevska'),('W23inovatsii.vo.ikt','magdalena.kostoska.gjorchevska'),('W23profesionalni.veshtini','magdalena.kostoska.gjorchevska'),('W23linearna.algebra.i.primeni','marija.mikhova'),('W23verojatnost.i.statistika','marija.mikhova'),('W23kompjuterski.mrezhi.i.bezbednost','marija.taneska'),('W23voved.vo.kompjuterskite.nauki','marija.taneska'),('W23inovatsii.vo.ikt','marjan.gushev'),('W23kompjuterski.mrezhi','marjan.gushev'),('W23presmetuvanje.vo.oblak','marjan.gushev'),('W23algoritmi.i.podatochni.strukturi','martin.dinev'),('W23multimedijalni.tekhnologii','martin.dinev'),('W23strukturno.programiranje','martin.dinev'),('W23verojatnost.i.statistika','martin.dinev'),('W23bazi.na.podatotsi','martina.toshevska'),('W23metodologija.na.istrazhuvanjeto.vo.ikt','martina.toshevska'),('W23obrabotka.na.prirodnite.jazitsi','martina.toshevska'),('W23izbrani.temi.od.matematika./.diskretna.matematika','metodija.jancheski'),('W23matematika.1./.kalkulus','metodija.jancheski'),('W23mobilni.informatsiski.sistemi','mila.dodevska'),('W23mobilni.platformi.i.programiranje','mila.dodevska'),('W23napreden.veb.dizajn','mila.dodevska'),('W23voved.vo.kompjuterskite.nauki','mila.dodevska'),('W23multimedijalni.tekhnologii','mile.jovanov'),('W23profesionalni.veshtini','mile.jovanov'),('W23strukturno.programiranje','mile.jovanov'),('W23biznis.i.menadzhment','milena.trajanoska'),('W23veb.bazirani.sistemi','milena.trajanoska'),('W23veb.programiranje','milena.trajanoska'),('W23voved.vo.naukata.za.podatotsi','milena.trajanoska'),('W23dizajn.na.digitalni.kola','milosh.jovanovikj'),('W23veb.bazirani.sistemi','milosh.jovanovikj'),('W23optichki.mrezhi','miroslav.mirchev'),('W23profesionalni.veshtini','miroslav.mirchev'),('W23mikroprotsesorski.sistemi','monika.simjanoska'),('W23softver.za.vgradlivi.sistemi','monika.simjanoska'),('W23izbrani.temi.od.matematika./.diskretna.matematika','natasha.ilievska'),('W23verojatnost.i.statistika','natasha.ilievska'),('W23algoritmi.i.podatochni.strukturi','nenad.anchev'),('W23bazi.na.podatotsi','nenad.anchev'),('W23distribuirani.sistemi','nenad.anchev'),('W23kompjuterski.mrezhi','nenad.anchev'),('W23napredna.interaktsija.chovek.kompjuter','nevena.atskovska'),('W23strukturno.programiranje','nevena.atskovska'),('W23voved.vo.bioinformatikata','nevena.atskovska'),('W23profesionalni.veshtini','panche.ribarski'),('W23voved.vo.kompjuterskite.nauki','panche.ribarski'),('W23ekonomija.za.ikt.inzheneri','petar.rogachikj'),('W23diskretni.strukturi.1','petar.sekuloski'),('W23kalkulus.1','petar.sekuloski'),('W23matematika.1./.kalkulus','petar.sekuloski'),('W23verojatnost.i.statistika','petar.sekuloski'),('W23dizajn.i.arkhitektura.na.softver','petre.lameski'),('W23mobilni.informatsiski.sistemi','petre.lameski'),('W23biznis.i.menadzhment','riste.stojanov'),('W23veb.programiranje','riste.stojanov'),('W23kompjuterski.mrezhi.i.bezbednost','sasho.gramatikov'),('W23multimediski.mrezhi','sasho.gramatikov'),('W23veb.programiranje','sasho.gramatikov'),('W23verojatnost.i.statistika','sijche.pechkova'),('W23algoritmi.i.podatochni.strukturi','slave.temkov'),('W23programiranje.na.video.igri','slave.temkov'),('W23algoritmi.i.podatochni.strukturi','slobodan.kalajdzhiski'),('W23bazi.na.podatotsi','slobodan.kalajdzhiski'),('W23voved.vo.naukata.za.podatotsi','slobodan.kalajdzhiski'),('W23biznis.i.menadzhment','smilka.janeska.sarkanjats'),('W23ekonomija.za.ikt.inzheneri','smilka.janeska.sarkanjats'),('W23bazi.na.podatotsi','sonja.gievska'),('W23obrabotka.na.prirodnite.jazitsi','sonja.gievska'),('W23napredno.programiranje','stefan.andonov'),('W23strukturno.programiranje','stefan.andonov'),('W23bazi.na.podatotsi','vangel.ajanovski'),('W23kompjuterski.zvuk,.muzika.i.govor','vangel.ajanovski'),('W23matematika.1./.kalkulus','veritsa.bakeva'),('W23osnovi.na.teorijata.na.informatsii','veritsa.bakeva'),('W23verojatnost.i.statistika','veritsa.bakeva'),('W23izbrani.temi.od.matematika./.diskretna.matematika','vesna.dimitrievska.ristovska'),('W23kalkulus.1','vesna.dimitrievska.ristovska'),('W23matematika.1./.kalkulus','vesna.dimitrievska.ristovska'),('W23informatsiska.bezbednost','vesna.dimitrova'),('W23inzhenerska.matematika','vesna.dimitrova'),('W23matematika.1./.kalkulus','vesna.dimitrova'),('W23algoritmi.i.podatochni.strukturi','vladimir.trajkovikj'),('W23analiza.i.dizajn.na.is','vladimir.trajkovikj'),('W23metodologija.na.istrazhuvanjeto.vo.ikt','vladimir.trajkovikj'),('W23biznis.i.menadzhment','vladimir.zdraveski'),('W23paralelno.i.distribuirano.protsesiranje','vladimir.zdraveski'),('W23presmetuvanje.vo.oblak','vladislav.bidikov'),('W23internet.programiranje.na.klientska.strana','vlatko.spasev'),('W23osnovi.na.robotikata','vlatko.spasev'),('W23shabloni.za.dizajn.na.korisnichki.interfejsi','vlatko.spasev'),('W23strukturno.programiranje','vlatko.spasev'),('W23kompjuterski.mrezhi.i.bezbednost','vojdan.kjorveziroski'),('W23mrezhna.i.mobilna.forenzika','vojdan.kjorveziroski'),('W23sajber.bezbednost./.mrezhna.bezbednost','vojdan.kjorveziroski'),('W23upravuvanje.so.tekhnichka.poddrshka','vojdan.kjorveziroski'),('W23izbrani.temi.od.matematika./.diskretna.matematika','zhivko.atanaskoski'),('W23matematika.1./.kalkulus','zhivko.atanaskoski'),('W23fizika','zoritsa.karapancheva'),('W23kompjuterski.mrezhi','zoritsa.karapancheva'),('W23kompjuterski.mrezhi.i.bezbednost','zoritsa.karapancheva'),('W23strukturno.programiranje','zoritsa.karapancheva');
/*!40000 ALTER TABLE `courseprofessors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SemesterCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SubjectId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Courses_SemesterCode` (`SemesterCode`),
  KEY `IX_Courses_SubjectId` (`SubjectId`),
  CONSTRAINT `FK_Courses_Semesters_SemesterCode` FOREIGN KEY (`SemesterCode`) REFERENCES `semesters` (`Code`) ON DELETE CASCADE,
  CONSTRAINT `FK_Courses_Subjects_SubjectId` FOREIGN KEY (`SubjectId`) REFERENCES `subjects` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('W23administratsija.na.sistemi','W23','administratsija.na.sistemi'),('W23algoritmi.i.podatochni.strukturi','W23','algoritmi.i.podatochni.strukturi'),('W23analiza.i.dizajn.na.is','W23','analiza.i.dizajn.na.is'),('W23bazi.na.podatotsi','W23','bazi.na.podatotsi'),('W23biznis.i.menadzhment','W23','biznis.i.menadzhment'),('W23digitizatsija','W23','digitizatsija'),('W23diskretni.strukturi.1','W23','diskretni.strukturi.1'),('W23distribuirani.sistemi','W23','distribuirani.sistemi'),('W23dizajn.i.arkhitektura.na.softver','W23','dizajn.i.arkhitektura.na.softver'),('W23dizajn.na.digitalni.kola','W23','dizajn.na.digitalni.kola'),('W23dizajn.na.obrazoven.softver','W23','dizajn.na.obrazoven.softver'),('W23ekonomija.za.ikt.inzheneri','W23','ekonomija.za.ikt.inzheneri'),('W23fizika','W23','fizika'),('W23implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod','W23','implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod'),('W23informatsiska.bezbednost','W23','informatsiska.bezbednost'),('W23inovatsii.vo.ikt','W23','inovatsii.vo.ikt'),('W23internet.programiranje.na.klientska.strana','W23','internet.programiranje.na.klientska.strana'),('W23inzhenerska.matematika','W23','inzhenerska.matematika'),('W23izbrani.temi.od.matematika./.diskretna.matematika','W23','izbrani.temi.od.matematika./.diskretna.matematika'),('W23kalkulus.1','W23','kalkulus.1'),('W23kompjuterska.elektronika','W23','kompjuterska.elektronika'),('W23kompjuterska.etika','W23','kompjuterska.etika'),('W23kompjuterski.mrezhi','W23','kompjuterski.mrezhi'),('W23kompjuterski.mrezhi.i.bezbednost','W23','kompjuterski.mrezhi.i.bezbednost'),('W23kompjuterski.zvuk,.muzika.i.govor','W23','kompjuterski.zvuk,.muzika.i.govor'),('W23linearna.algebra.i.primeni','W23','linearna.algebra.i.primeni'),('W23matematika.1./.kalkulus','W23','matematika.1./.kalkulus'),('W23menadzhment.informatsiski.sistemi','W23','menadzhment.informatsiski.sistemi'),('W23metodologija.na.istrazhuvanjeto.vo.ikt','W23','metodologija.na.istrazhuvanjeto.vo.ikt'),('W23mikroprotsesorski.sistemi','W23','mikroprotsesorski.sistemi'),('W23mobilni.informatsiski.sistemi','W23','mobilni.informatsiski.sistemi'),('W23mobilni.platformi.i.programiranje','W23','mobilni.platformi.i.programiranje'),('W23mrezhna.i.mobilna.forenzika','W23','mrezhna.i.mobilna.forenzika'),('W23multimedijalni.tekhnologii','W23','multimedijalni.tekhnologii'),('W23multimediski.mrezhi','W23','multimediski.mrezhi'),('W23multimediski.sistemi','W23','multimediski.sistemi'),('W23napreden.veb.dizajn','W23','napreden.veb.dizajn'),('W23napredna.interaktsija.chovek.kompjuter','W23','napredna.interaktsija.chovek.kompjuter'),('W23napredno.programiranje','W23','napredno.programiranje'),('W23obrabotka.na.prirodnite.jazitsi','W23','obrabotka.na.prirodnite.jazitsi'),('W23optichki.mrezhi','W23','optichki.mrezhi'),('W23osnovi.na.robotikata','W23','osnovi.na.robotikata'),('W23osnovi.na.teorijata.na.informatsii','W23','osnovi.na.teorijata.na.informatsii'),('W23paralelno.i.distribuirano.protsesiranje','W23','paralelno.i.distribuirano.protsesiranje'),('W23pedagogija','W23','pedagogija'),('W23presmetuvanje.vo.oblak','W23','presmetuvanje.vo.oblak'),('W23profesionalni.veshtini','W23','profesionalni.veshtini'),('W23programiranje.na.video.igri','W23','programiranje.na.video.igri'),('W23programski.paradigmi','W23','programski.paradigmi'),('W23sajber.bezbednost./.mrezhna.bezbednost','W23','sajber.bezbednost./.mrezhna.bezbednost'),('W23shabloni.za.dizajn.na.korisnichki.interfejsi','W23','shabloni.za.dizajn.na.korisnichki.interfejsi'),('W23sistemi.za.poddrshka.pri.odluchuvanjeto','W23','sistemi.za.poddrshka.pri.odluchuvanjeto'),('W23softver.za.vgradlivi.sistemi','W23','softver.za.vgradlivi.sistemi'),('W23strukturno.programiranje','W23','strukturno.programiranje'),('W23upravuvanje.so.tekhnichka.poddrshka','W23','upravuvanje.so.tekhnichka.poddrshka'),('W23veb.bazirani.sistemi','W23','veb.bazirani.sistemi'),('W23veb.programiranje','W23','veb.programiranje'),('W23verojatnost.i.statistika','W23','verojatnost.i.statistika'),('W23voved.vo.bioinformatikata','W23','voved.vo.bioinformatikata'),('W23voved.vo.kompjuterskite.nauki','W23','voved.vo.kompjuterskite.nauki'),('W23voved.vo.naukata.za.podatotsi','W23','voved.vo.naukata.za.podatotsi'),('W23voved.vo.pametni.gradovi','W23','voved.vo.pametni.gradovi');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectures` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Day` int NOT NULL,
  `TimeFrom` int NOT NULL,
  `TimeTo` int NOT NULL,
  `ProfessorId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CourseId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoomName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Lectures_CourseId` (`CourseId`),
  KEY `IX_Lectures_ProfessorId` (`ProfessorId`),
  KEY `IX_Lectures_RoomName` (`RoomName`),
  CONSTRAINT `FK_Lectures_Courses_CourseId` FOREIGN KEY (`CourseId`) REFERENCES `courses` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Lectures_Professors_ProfessorId` FOREIGN KEY (`ProfessorId`) REFERENCES `professors` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Lectures_Rooms_RoomName` FOREIGN KEY (`RoomName`) REFERENCES `rooms` (`Name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` VALUES (1,NULL,0,8,10,'aleksandar.stojmenski','W23strukturno.programiranje','315 ТМФ'),(2,NULL,1,10,14,'aleksandar.stojmenski','W23strukturno.programiranje','ЛАБ.138'),(3,NULL,2,15,17,'aleksandar.stojmenski','W23strukturno.programiranje','Барака 2.2'),(4,NULL,2,11,14,'aleksandar.stojmenski','W23strukturno.programiranje','ЛАБ.138'),(5,NULL,3,11,14,'aleksandar.stojmenski','W23strukturno.programiranje','ЛАБ.138'),(6,NULL,0,14,15,'aleksandar.tenev','W23biznis.i.menadzhment','online'),(7,NULL,1,14,15,'aleksandar.tenev','W23biznis.i.menadzhment','online'),(8,NULL,1,16,18,'aleksandar.tenev','W23strukturno.programiranje','Барака 1'),(9,NULL,2,14,16,'aleksandar.tenev','W23ekonomija.za.ikt.inzheneri','online'),(10,NULL,4,14,16,'aleksandar.tenev','W23algoritmi.i.podatochni.strukturi','117 ТМФ'),(11,NULL,4,12,14,'aleksandar.tenev','W23ekonomija.za.ikt.inzheneri','online'),(12,NULL,1,10,13,'aleksandra.dedinets','W23voved.vo.pametni.gradovi','online'),(13,NULL,3,9,11,'aleksandra.dedinets','W23kompjuterski.mrezhi.i.bezbednost','112 ФЕИТ'),(14,NULL,4,12,14,'aleksandra.dedinets','W23kompjuterski.mrezhi.i.bezbednost','223 ФЕИТ'),(15,NULL,0,14,16,'aleksandra.popovska.mitrovikj','W23osnovi.na.teorijata.na.informatsii','Барака 2.1'),(16,NULL,1,12,15,'aleksandra.popovska.mitrovikj','W23osnovi.na.teorijata.na.informatsii','Барака 2.2'),(17,NULL,1,8,10,'aleksandra.popovska.mitrovikj','W23verojatnost.i.statistika','Барака 1'),(18,NULL,3,9,12,'aleksandra.popovska.mitrovikj','W23matematika.1./.kalkulus','Барака 1'),(19,NULL,4,9,12,'aleksandra.popovska.mitrovikj','W23verojatnost.i.statistika','Барака 1'),(20,NULL,2,11,13,'ana.madevska.bogdanova','W23algoritmi.i.podatochni.strukturi','Амфитеатар Педагаошка'),(21,NULL,3,16,18,'ana.madevska.bogdanova','W23algoritmi.i.podatochni.strukturi','Барака 2.2'),(22,NULL,3,14,16,'ana.madevska.bogdanova','W23strukturno.programiranje','225 МФ'),(23,NULL,0,15,17,'ana.todorovska','W23napredno.programiranje','online'),(24,NULL,1,11,13,'ana.todorovska','W23veb.programiranje','Барака 3.2'),(25,NULL,1,15,17,'ana.todorovska','W23napredno.programiranje','Амфитеатар Педагаошка'),(26,NULL,1,17,19,'ana.todorovska','W23napredno.programiranje','Амфитеатар Педагаошка'),(27,NULL,2,12,14,'ana.todorovska','W23veb.programiranje','223 ФЕИТ'),(28,NULL,2,15,17,'ana.todorovska','W23napredno.programiranje','online'),(29,NULL,3,12,14,'ana.todorovska','W23voved.vo.naukata.za.podatotsi','Барака 3.2'),(30,NULL,4,10,12,'ana.todorovska','W23veb.programiranje','Барака 2.2'),(31,NULL,0,9,11,'anastas.mishev','W23mrezhna.i.mobilna.forenzika','online'),(32,NULL,1,8,10,'anastas.mishev','W23kompjuterski.mrezhi.i.bezbednost','Амфитеатар Педагаошка'),(33,NULL,1,12,14,'anastas.mishev','W23upravuvanje.so.tekhnichka.poddrshka','online'),(34,NULL,1,16,18,'anastas.mishev','W23upravuvanje.so.tekhnichka.poddrshka','online'),(35,NULL,4,14,16,'anastas.mishev','W23sajber.bezbednost./.mrezhna.bezbednost','112 ФЕИТ'),(36,NULL,2,14,16,'andrea.kulakov','W23voved.vo.naukata.za.podatotsi','Амфитеатар МФ'),(37,NULL,3,17,19,'andrea.kulakov','W23osnovi.na.robotikata','Барака 1'),(38,NULL,2,13,15,'andreja.naumoski','W23metodologija.na.istrazhuvanjeto.vo.ikt','online'),(39,NULL,4,10,13,'andreja.naumoski','W23profesionalni.veshtini','online'),(40,NULL,0,9,12,'biljana.stojkoska.risteska','W23multimediski.sistemi','online'),(41,NULL,1,8,10,'biljana.stojkoska.risteska','W23voved.vo.kompjuterskite.nauki','online'),(42,NULL,3,9,12,'biljana.stojkoska.risteska','W23profesionalni.veshtini','online'),(43,NULL,1,11,14,'biljana.tojtovska.ribarski','W23verojatnost.i.statistika','117 ТМФ'),(44,NULL,2,8,11,'biljana.tojtovska.ribarski','W23diskretni.strukturi.1','Барака 3.2'),(45,NULL,0,18,20,'boban.joksimoski','W23napreden.veb.dizajn','online'),(46,NULL,1,15,17,'boban.joksimoski','W23napreden.veb.dizajn','Амфитеатар МФ'),(47,NULL,1,17,18,'boban.joksimoski','W23napreden.veb.dizajn','Амфитеатар МФ'),(48,NULL,1,14,15,'boban.joksimoski','W23napreden.veb.dizajn','online'),(49,NULL,2,12,13,'boban.joksimoski','W23implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod','online'),(50,NULL,3,8,12,'boban.joksimoski','W23digitizatsija','online'),(51,NULL,3,14,16,'boban.joksimoski','W23strukturno.programiranje','315 ТМФ'),(52,NULL,0,9,11,'bojan.ilijoski','W23internet.programiranje.na.klientska.strana','online'),(53,NULL,0,19,20,'bojan.ilijoski','W23internet.programiranje.na.klientska.strana','Амфитеатар МФ'),(54,NULL,1,12,14,'bojan.ilijoski','W23internet.programiranje.na.klientska.strana','online'),(55,NULL,1,15,16,'bojan.ilijoski','W23napredna.interaktsija.chovek.kompjuter','online'),(56,NULL,2,9,11,'bojan.ilijoski','W23internet.programiranje.na.klientska.strana','online'),(57,NULL,2,11,13,'bojan.ilijoski','W23internet.programiranje.na.klientska.strana','online'),(58,NULL,2,13,14,'bojan.ilijoski','W23internet.programiranje.na.klientska.strana','Амфитеатар Педагаошка'),(59,NULL,3,16,20,'bojan.ilijoski','W23kompjuterska.etika','Амфитеатар МФ'),(60,NULL,0,9,12,'bojana.koteska','W23voved.vo.kompjuterskite.nauki','online'),(61,NULL,1,9,13,'bojana.koteska','W23voved.vo.kompjuterskite.nauki','203 ТМФ'),(62,NULL,3,8,10,'bojana.koteska','W23algoritmi.i.podatochni.strukturi','117 ТМФ'),(63,NULL,2,8,10,'boro.jakimovski','W23administratsija.na.sistemi','315 ТМФ'),(64,NULL,3,8,10,'boro.jakimovski','W23distribuirani.sistemi','315 ТМФ'),(65,NULL,0,16,20,'vangel.ajanovski','W23kompjuterski.zvuk,.muzika.i.govor','online'),(66,NULL,2,16,20,'vangel.ajanovski','W23bazi.na.podatotsi','Амфитеатар МФ'),(67,NULL,0,14,16,'veritsa.bakeva','W23osnovi.na.teorijata.na.informatsii','Барака 2.1'),(68,NULL,1,12,15,'veritsa.bakeva','W23osnovi.na.teorijata.na.informatsii','Барака 2.2'),(69,NULL,2,12,15,'veritsa.bakeva','W23matematika.1./.kalkulus','Барака 2.2'),(70,NULL,3,14,16,'veritsa.bakeva','W23verojatnost.i.statistika','Амфитеатар ТМФ'),(71,NULL,4,11,14,'veritsa.bakeva','W23verojatnost.i.statistika','117 ТМФ'),(72,NULL,0,8,11,'vesna.dimitrievska.ristovska','W23kalkulus.1','Барака 2.2'),(73,NULL,1,17,20,'vesna.dimitrievska.ristovska','W23izbrani.temi.od.matematika./.diskretna.matematika','Барака 3.2'),(74,NULL,1,13,16,'vesna.dimitrievska.ristovska','W23izbrani.temi.od.matematika./.diskretna.matematika','Барака 3.2'),(75,NULL,2,15,18,'vesna.dimitrievska.ristovska','W23matematika.1./.kalkulus','117 ТМФ'),(76,NULL,0,13,16,'vesna.dimitrova','W23matematika.1./.kalkulus','Барака 3.2'),(77,NULL,1,8,12,'vesna.dimitrova','W23inzhenerska.matematika','online'),(78,NULL,1,12,14,'vesna.dimitrova','W23informatsiska.bezbednost','315 ТМФ'),(79,NULL,1,15,18,'vladimir.zdraveski','W23paralelno.i.distribuirano.protsesiranje','224 МФ'),(80,NULL,2,12,14,'vladimir.zdraveski','W23biznis.i.menadzhment','online'),(81,NULL,2,14,15,'vladimir.zdraveski','W23biznis.i.menadzhment','online'),(82,NULL,3,15,17,'vladimir.zdraveski','W23biznis.i.menadzhment','online'),(83,NULL,1,14,16,'vladimir.trajkovikj','W23analiza.i.dizajn.na.is','315 ТМФ'),(84,NULL,2,11,13,'vladimir.trajkovikj','W23algoritmi.i.podatochni.strukturi','315 ТМФ'),(85,NULL,2,13,15,'vladimir.trajkovikj','W23metodologija.na.istrazhuvanjeto.vo.ikt','online'),(86,NULL,3,18,20,'vladislav.bidikov','W23presmetuvanje.vo.oblak','315 ТМФ'),(87,NULL,0,16,18,'vlatko.spasev','W23strukturno.programiranje','315 ТМФ'),(88,NULL,0,19,20,'vlatko.spasev','W23internet.programiranje.na.klientska.strana','Амфитеатар МФ'),(89,NULL,0,18,19,'vlatko.spasev','W23shabloni.za.dizajn.na.korisnichki.interfejsi','Амфитеатар МФ'),(90,NULL,2,13,14,'vlatko.spasev','W23internet.programiranje.na.klientska.strana','Амфитеатар Педагаошка'),(91,NULL,3,15,17,'vlatko.spasev','W23strukturno.programiranje','Барака 1'),(92,NULL,3,18,19,'vlatko.spasev','W23shabloni.za.dizajn.na.korisnichki.interfejsi','117 ТМФ'),(93,NULL,3,19,20,'vlatko.spasev','W23osnovi.na.robotikata','Барака 1'),(94,NULL,0,11,12,'vojdan.kjorveziroski','W23mrezhna.i.mobilna.forenzika','online'),(95,NULL,1,18,19,'vojdan.kjorveziroski','W23upravuvanje.so.tekhnichka.poddrshka','online'),(96,NULL,1,15,16,'vojdan.kjorveziroski','W23upravuvanje.so.tekhnichka.poddrshka','online'),(97,NULL,4,10,12,'vojdan.kjorveziroski','W23kompjuterski.mrezhi.i.bezbednost','223 ФЕИТ'),(98,NULL,4,12,14,'vojdan.kjorveziroski','W23sajber.bezbednost./.mrezhna.bezbednost','112 ФЕИТ'),(99,NULL,0,10,12,'georgina.mircheva','W23bazi.na.podatotsi','223 ФЕИТ'),(100,NULL,0,8,10,'georgina.mircheva','W23bazi.na.podatotsi','223 ФЕИТ'),(101,NULL,1,12,14,'georgina.mircheva','W23biznis.i.menadzhment','online'),(102,NULL,4,16,18,'georgina.mircheva','W23bazi.na.podatotsi','225 МФ'),(103,NULL,4,10,14,'georgina.mircheva','W23sistemi.za.poddrshka.pri.odluchuvanjeto','online'),(104,NULL,4,14,16,'georgina.mircheva','W23bazi.na.podatotsi','Амфитеатар МФ'),(105,NULL,0,14,18,'goran.velinov','W23menadzhment.informatsiski.sistemi','Амфитеатар Педагаошка'),(106,NULL,1,11,13,'goran.velinov','W23bazi.na.podatotsi','223 ФЕИТ'),(107,NULL,0,9,11,'gotse.armenski','W23internet.programiranje.na.klientska.strana','online'),(108,NULL,0,18,20,'gotse.armenski','W23napreden.veb.dizajn','online'),(109,NULL,1,12,14,'gotse.armenski','W23internet.programiranje.na.klientska.strana','online'),(110,NULL,1,15,17,'gotse.armenski','W23napreden.veb.dizajn','Амфитеатар МФ'),(111,NULL,2,9,11,'gotse.armenski','W23internet.programiranje.na.klientska.strana','online'),(112,NULL,2,11,13,'gotse.armenski','W23internet.programiranje.na.klientska.strana','online'),(113,NULL,3,8,11,'gotse.armenski','W23dizajn.na.obrazoven.softver','Барака 2.1'),(114,NULL,0,8,10,'dejan.gjorgjevikj','W23strukturno.programiranje','Барака 3.2'),(115,NULL,0,13,15,'dejan.gjorgjevikj','W23napredno.programiranje','online'),(116,NULL,1,15,17,'dejan.gjorgjevikj','W23napredno.programiranje','online'),(117,NULL,1,9,11,'dejan.gjorgjevikj','W23napredno.programiranje','online'),(118,NULL,1,12,14,'dejan.gjorgjevikj','W23napredno.programiranje','Амфитеатар Педагаошка'),(119,NULL,4,12,14,'dejan.gjorgjevikj','W23strukturno.programiranje','Барака 3.2'),(120,NULL,0,14,16,'dejan.spasov','W23kompjuterski.mrezhi.i.bezbednost','Амфитеатар ТМФ'),(121,NULL,1,10,12,'dejan.spasov','W23kompjuterski.mrezhi','112 ФЕИТ'),(122,NULL,2,9,12,'dejan.spasov','W23izbrani.temi.od.matematika./.diskretna.matematika','112 ФЕИТ'),(123,NULL,2,13,15,'martin.dinev','W23algoritmi.i.podatochni.strukturi','117 ТМФ'),(124,NULL,2,18,20,'martin.dinev','W23verojatnost.i.statistika','Барака 1'),(125,NULL,3,16,18,'martin.dinev','W23strukturno.programiranje','315 ТМФ'),(126,NULL,3,19,20,'martin.dinev','W23multimedijalni.tekhnologii','Барака 2.1'),(127,NULL,4,14,16,'martin.dinev','W23algoritmi.i.podatochni.strukturi','Амфитеатар ТМФ'),(128,NULL,1,12,14,'zoritsa.karapancheva','W23kompjuterski.mrezhi','112 ФЕИТ'),(129,NULL,1,14,16,'zoritsa.karapancheva','W23kompjuterski.mrezhi.i.bezbednost','117 ТМФ'),(130,NULL,2,16,18,'zoritsa.karapancheva','W23strukturno.programiranje','224 МФ'),(131,NULL,3,12,13,'zoritsa.karapancheva','W23fizika','Барака 1'),(132,NULL,1,17,18,'mila.dodevska','W23napreden.veb.dizajn','Амфитеатар МФ'),(133,NULL,1,14,15,'mila.dodevska','W23napreden.veb.dizajn','online'),(134,NULL,1,10,11,'mila.dodevska','W23voved.vo.kompjuterskite.nauki','online'),(135,NULL,2,16,18,'mila.dodevska','W23mobilni.platformi.i.programiranje','online'),(136,NULL,2,19,20,'mila.dodevska','W23mobilni.informatsiski.sistemi','online'),(137,NULL,4,14,15,'mila.dodevska','W23voved.vo.kompjuterskite.nauki','online'),(138,NULL,0,17,19,'marija.taneska','W23voved.vo.kompjuterskite.nauki','ЛАБ.138'),(139,NULL,1,17,20,'marija.taneska','W23voved.vo.kompjuterskite.nauki','ЛАБ.138'),(140,NULL,2,11,12,'marija.taneska','W23voved.vo.kompjuterskite.nauki','online'),(141,NULL,2,18,19,'marija.taneska','W23voved.vo.kompjuterskite.nauki','online'),(142,NULL,3,9,10,'marija.taneska','W23voved.vo.kompjuterskite.nauki','online'),(143,NULL,3,11,13,'marija.taneska','W23kompjuterski.mrezhi.i.bezbednost','Барака 2.1'),(144,NULL,3,18,20,'marija.taneska','W23kompjuterski.mrezhi.i.bezbednost','Амфитеатар Педагаошка'),(145,NULL,0,10,12,'zhivko.atanaskoski','W23matematika.1./.kalkulus','Барака 3.2'),(146,NULL,0,18,20,'zhivko.atanaskoski','W23matematika.1./.kalkulus','Барака 2.2'),(147,NULL,2,12,15,'zhivko.atanaskoski','W23izbrani.temi.od.matematika./.diskretna.matematika','112 ФЕИТ'),(148,NULL,2,17,19,'zhivko.atanaskoski','W23matematika.1./.kalkulus','116 ТМФ'),(149,NULL,3,17,19,'zhivko.atanaskoski','W23matematika.1./.kalkulus','216 ТМФ'),(150,NULL,3,12,14,'dimitar.kitanovski','W23kompjuterski.mrezhi.i.bezbednost','Барака 2.2'),(151,NULL,3,16,18,'dimitar.kitanovski','W23strukturno.programiranje','225 МФ'),(152,NULL,4,12,14,'dimitar.kitanovski','W23kompjuterski.mrezhi.i.bezbednost','315 ТМФ'),(153,NULL,4,14,16,'dimitar.kitanovski','W23strukturno.programiranje','Барака 1'),(154,NULL,0,10,12,'dimitar.trajanov','W23veb.bazirani.sistemi','112 ФЕИТ'),(155,NULL,1,9,11,'dimitar.trajanov','W23veb.programiranje','315 ТМФ'),(156,NULL,1,11,13,'dimitar.trajanov','W23voved.vo.naukata.za.podatotsi','Netaville'),(157,NULL,2,10,12,'dimitar.trajanov','W23veb.programiranje','223 ФЕИТ'),(158,NULL,3,14,16,'dimitar.trajanov','W23voved.vo.naukata.za.podatotsi','Амфитеатар МФ'),(159,NULL,3,10,12,'dimitar.trajanov','W23veb.programiranje','223 ФЕИТ'),(160,NULL,4,8,10,'dimitar.trajanov','W23veb.programiranje','Барака 2.2'),(161,NULL,0,13,15,'gjorgji.madzharov','W23napredno.programiranje','online'),(162,NULL,1,15,17,'gjorgji.madzharov','W23napredno.programiranje','online'),(163,NULL,1,9,11,'gjorgji.madzharov','W23napredno.programiranje','online'),(164,NULL,1,12,14,'gjorgji.madzharov','W23napredno.programiranje','Амфитеатар Педагаошка'),(165,NULL,3,8,10,'gjorgji.madzharov','W23strukturno.programiranje','223 ФЕИТ'),(166,NULL,1,17,20,'emil.stankov','W23programski.paradigmi','Барака 2.2'),(167,NULL,2,15,19,'emil.stankov','W23strukturno.programiranje','Барака 3.2'),(168,NULL,3,14,17,'emil.stankov','W23matematika.1./.kalkulus','216 ТМФ'),(169,NULL,4,14,17,'emil.stankov','W23matematika.1./.kalkulus','203 ТМФ'),(170,NULL,0,8,10,'eftim.zdravevski','W23bazi.na.podatotsi','Амфитеатар Педагаошка'),(171,NULL,2,8,10,'eftim.zdravevski','W23algoritmi.i.podatochni.strukturi','Барака 2.2'),(172,NULL,0,9,11,'ivan.kitanovski','W23internet.programiranje.na.klientska.strana','online'),(173,NULL,0,19,20,'ivan.kitanovski','W23internet.programiranje.na.klientska.strana','Амфитеатар МФ'),(174,NULL,1,12,14,'ivan.kitanovski','W23internet.programiranje.na.klientska.strana','online'),(175,NULL,2,9,11,'ivan.kitanovski','W23internet.programiranje.na.klientska.strana','online'),(176,NULL,2,11,13,'ivan.kitanovski','W23internet.programiranje.na.klientska.strana','online'),(177,NULL,2,13,14,'ivan.kitanovski','W23internet.programiranje.na.klientska.strana','Амфитеатар Педагаошка'),(178,NULL,4,12,14,'ivan.kitanovski','W23voved.vo.kompjuterskite.nauki','online'),(179,NULL,0,18,20,'ivan.chorbev','W23napreden.veb.dizajn','online'),(180,NULL,1,15,17,'ivan.chorbev','W23napreden.veb.dizajn','Амфитеатар МФ'),(181,NULL,2,8,10,'ivan.chorbev','W23strukturno.programiranje','Барака 1'),(182,NULL,4,12,14,'ivan.chorbev','W23implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod','online'),(183,NULL,0,10,12,'ivitsa.dimitrovski','W23shabloni.za.dizajn.na.korisnichki.interfejsi','online'),(184,NULL,2,11,13,'ivitsa.dimitrovski','W23shabloni.za.dizajn.na.korisnichki.interfejsi','online'),(185,NULL,4,9,11,'ivitsa.dimitrovski','W23strukturno.programiranje','117 ТМФ'),(186,NULL,3,10,12,'igor.mishkovski','W23kompjuterski.mrezhi.i.bezbednost','Барака 2.2'),(187,NULL,3,14,16,'igor.mishkovski','W23voved.vo.naukata.za.podatotsi','Барака 2.2'),(188,NULL,0,8,12,'ilinka.ivanoska','W23algoritmi.i.podatochni.strukturi','117 ТМФ'),(189,NULL,0,12,15,'ilinka.ivanoska','W23verojatnost.i.statistika','117 ТМФ'),(190,NULL,1,8,12,'ilinka.ivanoska','W23algoritmi.i.podatochni.strukturi','Барака 2.2'),(191,NULL,0,10,12,'boris.stanoev','W23bazi.na.podatotsi','Амфитеатар Педагаошка'),(192,NULL,0,10,12,'petar.rogachikj','W23ekonomija.za.ikt.inzheneri','online'),(193,NULL,1,11,13,'aleksandar.petrushev','W23veb.programiranje','Барака 3.2'),(194,NULL,2,12,14,'aleksandar.petrushev','W23veb.programiranje','223 ФЕИТ'),(195,NULL,3,12,14,'aleksandar.petrushev','W23veb.programiranje','223 ФЕИТ'),(196,NULL,4,10,12,'aleksandar.petrushev','W23veb.programiranje','Барака 2.2'),(197,NULL,1,10,11,'ana.atanasova','W23dizajn.i.arkhitektura.na.softver','223 ФЕИТ'),(198,NULL,3,10,11,'ana.atanasova','W23dizajn.i.arkhitektura.na.softver','Амфитеатар Педагаошка'),(199,NULL,2,11,12,'dimitar.milevski','W23inovatsii.vo.ikt','online'),(200,NULL,3,18,20,'dimitar.milevski','W23presmetuvanje.vo.oblak','315 ТМФ'),(201,NULL,1,16,17,'jana.kuzmanova','W23analiza.i.dizajn.na.is','315 ТМФ'),(202,NULL,2,16,18,'jana.kuzmanova','W23bazi.na.podatotsi','225 МФ'),(203,NULL,3,16,18,'jana.kuzmanova','W23bazi.na.podatotsi','Барака 3.2'),(204,NULL,4,18,20,'jana.kuzmanova','W23bazi.na.podatotsi','225 МФ'),(205,NULL,4,16,18,'jana.kuzmanova','W23bazi.na.podatotsi','Амфитеатар МФ'),(206,NULL,4,10,11,'jana.kuzmanova','W23dizajn.i.arkhitektura.na.softver','315 ТМФ'),(207,NULL,4,8,10,'jana.kuzmanova','W23algoritmi.i.podatochni.strukturi','223 ФЕИТ'),(208,NULL,0,16,18,'jasmina.jovanovska','W23matematika.1./.kalkulus','Барака 3.2'),(209,NULL,3,13,15,'jasmina.jovanovska','W23matematika.1./.kalkulus','Амфитеатар Педагаошка'),(210,NULL,1,13,15,'jovana.dobreva','W23voved.vo.naukata.za.podatotsi','Netaville'),(211,NULL,2,10,12,'jovana.dobreva','W23voved.vo.naukata.za.podatotsi','Барака 2.2'),(212,NULL,4,14,16,'jovana.dobreva','W23dizajn.na.digitalni.kola','Барака 2.2'),(213,NULL,4,8,10,'jovana.dobreva','W23voved.vo.naukata.za.podatotsi','Барака 3.2'),(214,NULL,0,14,16,'katarina.trojachanets.dineva','W23programiranje.na.video.igri','online'),(215,NULL,0,16,17,'katarina.trojachanets.dineva','W23programiranje.na.video.igri','online'),(216,NULL,0,10,12,'katarina.trojachanets.dineva','W23shabloni.za.dizajn.na.korisnichki.interfejsi','online'),(217,NULL,1,14,16,'katarina.trojachanets.dineva','W23strukturno.programiranje','Барака 1'),(218,NULL,2,11,13,'katarina.trojachanets.dineva','W23shabloni.za.dizajn.na.korisnichki.interfejsi','online'),(219,NULL,3,15,17,'katarina.trojachanets.dineva','W23programiranje.na.video.igri','online'),(220,NULL,3,14,15,'katarina.trojachanets.dineva','W23programiranje.na.video.igri','online'),(221,NULL,0,10,12,'katerina.zdravkova','W23voved.vo.kompjuterskite.nauki','Барака 2.1'),(222,NULL,0,15,17,'katerina.zdravkova','W23voved.vo.kompjuterskite.nauki','online'),(223,NULL,3,16,20,'katerina.zdravkova','W23kompjuterska.etika','Амфитеатар МФ'),(224,NULL,0,10,12,'kire.trivodaliev','W23bazi.na.podatotsi','223 ФЕИТ'),(225,NULL,0,8,10,'kire.trivodaliev','W23bazi.na.podatotsi','223 ФЕИТ'),(226,NULL,1,17,20,'kire.trivodaliev','W23programski.paradigmi','Барака 2.2'),(227,NULL,4,16,18,'kire.trivodaliev','W23bazi.na.podatotsi','225 МФ'),(228,NULL,4,9,12,'kire.trivodaliev','W23profesionalni.veshtini','online'),(229,NULL,4,14,16,'kire.trivodaliev','W23bazi.na.podatotsi','Амфитеатар МФ'),(230,NULL,0,17,18,'kiril.kjiroski','W23voved.vo.kompjuterskite.nauki','online'),(231,NULL,3,11,13,'kiril.kjiroski','W23administratsija.na.sistemi','315 ТМФ'),(232,NULL,3,18,19,'kiril.kjiroski','W23voved.vo.kompjuterskite.nauki','online'),(233,NULL,2,10,13,'kosta.mitreski','W23profesionalni.veshtini','online'),(234,NULL,3,8,10,'kosta.mitreski','W23voved.vo.kompjuterskite.nauki','online'),(235,NULL,3,10,12,'kosta.mitreski','W23voved.vo.kompjuterskite.nauki','online'),(236,NULL,0,11,15,'kostadin.mishev','W23kompjuterski.mrezhi.i.bezbednost','Барака 1'),(237,NULL,0,8,10,'kostadin.mishev','W23mobilni.platformi.i.programiranje','online'),(238,NULL,1,9,11,'kostadin.mishev','W23veb.programiranje','315 ТМФ'),(239,NULL,1,11,13,'kostadin.mishev','W23veb.programiranje','Барака 3.2'),(240,NULL,2,10,12,'kostadin.mishev','W23veb.programiranje','223 ФЕИТ'),(241,NULL,2,12,14,'kostadin.mishev','W23veb.programiranje','223 ФЕИТ'),(242,NULL,3,10,12,'kostadin.mishev','W23veb.programiranje','223 ФЕИТ'),(243,NULL,3,12,14,'kostadin.mishev','W23veb.programiranje','223 ФЕИТ'),(244,NULL,4,8,10,'kostadin.mishev','W23veb.programiranje','Барака 2.2'),(245,NULL,4,10,12,'kostadin.mishev','W23veb.programiranje','Барака 2.2'),(246,NULL,0,11,14,'lasko.basnarkov','W23fizika','315 ТМФ'),(247,NULL,2,9,12,'lasko.basnarkov','W23kompjuterska.elektronika','Барака 2.1'),(248,NULL,3,11,14,'lasko.basnarkov','W23profesionalni.veshtini','online'),(249,NULL,0,8,10,'ljupcho.antovski','W23mobilni.platformi.i.programiranje','online'),(250,NULL,1,8,10,'ljupcho.antovski','W23dizajn.i.arkhitektura.na.softver','223 ФЕИТ'),(251,NULL,1,10,11,'ljupcho.antovski','W23dizajn.i.arkhitektura.na.softver','223 ФЕИТ'),(252,NULL,2,8,12,'ljupcho.antovski','W23menadzhment.informatsiski.sistemi','117 ТМФ'),(253,NULL,3,8,10,'ljupcho.antovski','W23dizajn.i.arkhitektura.na.softver','Амфитеатар Педагаошка'),(254,NULL,3,10,11,'ljupcho.antovski','W23dizajn.i.arkhitektura.na.softver','Амфитеатар Педагаошка'),(255,NULL,4,8,10,'ljupcho.antovski','W23dizajn.i.arkhitektura.na.softver','315 ТМФ'),(256,NULL,4,10,11,'ljupcho.antovski','W23dizajn.i.arkhitektura.na.softver','315 ТМФ'),(257,NULL,1,9,12,'magdalena.kostoska.gjorchevska','W23profesionalni.veshtini','online'),(258,NULL,2,9,11,'magdalena.kostoska.gjorchevska','W23inovatsii.vo.ikt','online'),(259,NULL,4,12,14,'magdalena.kostoska.gjorchevska','W23algoritmi.i.podatochni.strukturi','Барака 1'),(260,NULL,0,12,14,'marija.mikhova','W23linearna.algebra.i.primeni','223 ФЕИТ'),(261,NULL,0,15,18,'marija.mikhova','W23verojatnost.i.statistika','117 ТМФ'),(262,NULL,2,17,20,'marija.mikhova','W23verojatnost.i.statistika','216 ТМФ'),(263,NULL,2,15,17,'marija.mikhova','W23linearna.algebra.i.primeni','Амфитеатар ТМФ'),(264,NULL,1,12,14,'marjan.gushev','W23presmetuvanje.vo.oblak','Барака 2.1'),(265,NULL,2,9,11,'marjan.gushev','W23inovatsii.vo.ikt','online'),(266,NULL,3,10,12,'marjan.gushev','W23kompjuterski.mrezhi','117 ТМФ'),(267,NULL,2,16,18,'martina.toshevska','W23bazi.na.podatotsi','225 МФ'),(268,NULL,2,15,16,'martina.toshevska','W23metodologija.na.istrazhuvanjeto.vo.ikt','online'),(269,NULL,3,16,18,'martina.toshevska','W23bazi.na.podatotsi','Барака 3.2'),(270,NULL,4,18,20,'martina.toshevska','W23bazi.na.podatotsi','225 МФ'),(271,NULL,4,16,18,'martina.toshevska','W23bazi.na.podatotsi','Амфитеатар МФ'),(272,NULL,4,10,11,'martina.toshevska','W23obrabotka.na.prirodnite.jazitsi','online'),(273,NULL,0,15,18,'metodija.jancheski','W23matematika.1./.kalkulus','Барака 2.2'),(274,NULL,2,14,20,'metodija.jancheski','W23izbrani.temi.od.matematika./.diskretna.matematika','Амфитеатар Педагаошка'),(275,NULL,0,14,16,'mile.jovanov','W23strukturno.programiranje','315 ТМФ'),(276,NULL,1,12,15,'mile.jovanov','W23profesionalni.veshtini','online'),(277,NULL,3,17,19,'mile.jovanov','W23multimedijalni.tekhnologii','Барака 2.1'),(278,NULL,0,12,14,'milena.trajanoska','W23veb.bazirani.sistemi','112 ФЕИТ'),(279,NULL,1,11,13,'milena.trajanoska','W23veb.programiranje','Барака 3.2'),(280,NULL,2,12,14,'milena.trajanoska','W23veb.programiranje','223 ФЕИТ'),(281,NULL,2,14,15,'milena.trajanoska','W23biznis.i.menadzhment','online'),(282,NULL,3,17,18,'milena.trajanoska','W23biznis.i.menadzhment','online'),(283,NULL,3,18,20,'milena.trajanoska','W23voved.vo.naukata.za.podatotsi','Барака 3.2'),(284,NULL,3,12,14,'milena.trajanoska','W23veb.programiranje','223 ФЕИТ'),(285,NULL,4,14,15,'milena.trajanoska','W23biznis.i.menadzhment','online'),(286,NULL,4,10,12,'milena.trajanoska','W23veb.programiranje','Барака 2.2'),(287,NULL,0,10,12,'milosh.jovanovikj','W23veb.bazirani.sistemi','112 ФЕИТ'),(288,NULL,0,12,14,'milosh.jovanovikj','W23veb.bazirani.sistemi','112 ФЕИТ'),(289,NULL,3,10,12,'milosh.jovanovikj','W23dizajn.na.digitalni.kola','Барака 3.2'),(290,NULL,2,16,20,'miroslav.mirchev','W23optichki.mrezhi','online'),(291,NULL,4,17,20,'miroslav.mirchev','W23profesionalni.veshtini','online'),(292,NULL,1,8,12,'monika.simjanoska','W23mikroprotsesorski.sistemi','Барака 2.1'),(293,NULL,1,15,18,'monika.simjanoska','W23softver.za.vgradlivi.sistemi','Барака 2.1'),(294,NULL,0,8,11,'natasha.ilievska','W23izbrani.temi.od.matematika./.diskretna.matematika','Барака 1'),(295,NULL,1,8,11,'natasha.ilievska','W23verojatnost.i.statistika','Барака 3.2'),(296,NULL,2,12,15,'natasha.ilievska','W23izbrani.temi.od.matematika./.diskretna.matematika','Барака 1'),(297,NULL,1,13,15,'nevena.atskovska','W23napredna.interaktsija.chovek.kompjuter','online'),(298,NULL,2,13,15,'nevena.atskovska','W23strukturno.programiranje','Барака 3.2'),(299,NULL,4,11,14,'nevena.atskovska','W23voved.vo.bioinformatikata','online'),(300,NULL,1,17,19,'nenad.anchev','W23distribuirani.sistemi','112 ФЕИТ'),(301,NULL,1,15,17,'nenad.anchev','W23kompjuterski.mrezhi','Барака 2.2'),(302,NULL,2,13,15,'nenad.anchev','W23algoritmi.i.podatochni.strukturi','315 ТМФ'),(303,NULL,2,15,17,'nenad.anchev','W23bazi.na.podatotsi','315 ТМФ'),(304,NULL,1,9,12,'panche.ribarski','W23profesionalni.veshtini','online'),(305,NULL,3,8,11,'panche.ribarski','W23voved.vo.kompjuterskite.nauki','ЛАБ.138'),(306,NULL,3,11,14,'panche.ribarski','W23profesionalni.veshtini','online'),(307,NULL,4,10,12,'panche.ribarski','W23voved.vo.kompjuterskite.nauki','online'),(308,NULL,2,18,20,'petar.sekuloski','W23matematika.1./.kalkulus','117 ТМФ'),(309,NULL,3,16,18,'petar.sekuloski','W23verojatnost.i.statistika','117 ТМФ'),(310,NULL,3,14,16,'petar.sekuloski','W23verojatnost.i.statistika','Барака 3.2'),(311,NULL,4,14,17,'petar.sekuloski','W23diskretni.strukturi.1','Барака 3.2'),(312,NULL,4,12,14,'petar.sekuloski','W23kalkulus.1','Барака 2.2'),(313,NULL,1,8,10,'petre.lameski','W23dizajn.i.arkhitektura.na.softver','223 ФЕИТ'),(314,NULL,2,17,19,'petre.lameski','W23mobilni.informatsiski.sistemi','online'),(315,NULL,3,8,10,'petre.lameski','W23dizajn.i.arkhitektura.na.softver','Амфитеатар Педагаошка'),(316,NULL,4,8,10,'petre.lameski','W23dizajn.i.arkhitektura.na.softver','315 ТМФ'),(317,NULL,1,9,11,'riste.stojanov','W23veb.programiranje','315 ТМФ'),(318,NULL,2,10,12,'riste.stojanov','W23veb.programiranje','223 ФЕИТ'),(319,NULL,3,10,12,'riste.stojanov','W23veb.programiranje','223 ФЕИТ'),(320,NULL,4,12,14,'riste.stojanov','W23biznis.i.menadzhment','online'),(321,NULL,4,8,10,'riste.stojanov','W23veb.programiranje','Барака 2.2'),(322,NULL,1,9,11,'sasho.gramatikov','W23veb.programiranje','315 ТМФ'),(323,NULL,2,10,12,'sasho.gramatikov','W23veb.programiranje','223 ФЕИТ'),(324,NULL,2,12,16,'sasho.gramatikov','W23multimediski.mrezhi','203 ТМФ'),(325,NULL,3,14,16,'sasho.gramatikov','W23kompjuterski.mrezhi.i.bezbednost','117 ТМФ'),(326,NULL,3,10,12,'sasho.gramatikov','W23veb.programiranje','223 ФЕИТ'),(327,NULL,4,8,10,'sasho.gramatikov','W23veb.programiranje','Барака 2.2'),(328,NULL,3,13,15,'sijche.pechkova','W23verojatnost.i.statistika','Барака 2.1'),(329,NULL,3,16,18,'sijche.pechkova','W23verojatnost.i.statistika','Амфитеатар ТМФ'),(330,NULL,0,16,17,'slave.temkov','W23programiranje.na.video.igri','online'),(331,NULL,1,12,14,'slave.temkov','W23algoritmi.i.podatochni.strukturi','Барака 1'),(332,NULL,2,9,11,'slave.temkov','W23algoritmi.i.podatochni.strukturi','Амфитеатар Педагаошка'),(333,NULL,3,12,14,'slave.temkov','W23algoritmi.i.podatochni.strukturi','117 ТМФ'),(334,NULL,3,14,15,'slave.temkov','W23programiranje.na.video.igri','online'),(335,NULL,0,10,12,'slobodan.kalajdzhiski','W23bazi.na.podatotsi','223 ФЕИТ'),(336,NULL,0,8,10,'slobodan.kalajdzhiski','W23bazi.na.podatotsi','223 ФЕИТ'),(337,NULL,1,8,10,'slobodan.kalajdzhiski','W23algoritmi.i.podatochni.strukturi','117 ТМФ'),(338,NULL,1,15,17,'slobodan.kalajdzhiski','W23voved.vo.naukata.za.podatotsi','Амфитеатар ТМФ'),(339,NULL,4,16,18,'slobodan.kalajdzhiski','W23bazi.na.podatotsi','225 МФ'),(340,NULL,4,14,16,'slobodan.kalajdzhiski','W23bazi.na.podatotsi','Амфитеатар МФ'),(341,NULL,0,12,14,'smilka.janeska.sarkanjats','W23biznis.i.menadzhment','online'),(342,NULL,0,8,10,'smilka.janeska.sarkanjats','W23ekonomija.za.ikt.inzheneri','online'),(343,NULL,2,12,14,'smilka.janeska.sarkanjats','W23ekonomija.za.ikt.inzheneri','online'),(344,NULL,4,10,12,'smilka.janeska.sarkanjats','W23ekonomija.za.ikt.inzheneri','online'),(345,NULL,0,10,12,'sonja.gievska','W23bazi.na.podatotsi','223 ФЕИТ'),(346,NULL,0,8,10,'sonja.gievska','W23bazi.na.podatotsi','223 ФЕИТ'),(347,NULL,4,16,18,'sonja.gievska','W23bazi.na.podatotsi','225 МФ'),(348,NULL,4,8,10,'sonja.gievska','W23obrabotka.na.prirodnite.jazitsi','online'),(349,NULL,4,14,16,'sonja.gievska','W23bazi.na.podatotsi','Амфитеатар МФ'),(350,NULL,0,15,17,'stefan.andonov','W23napredno.programiranje','online'),(351,NULL,0,13,15,'stefan.andonov','W23strukturno.programiranje','Барака 2.2'),(352,NULL,1,15,17,'stefan.andonov','W23napredno.programiranje','Амфитеатар Педагаошка'),(353,NULL,1,17,19,'stefan.andonov','W23napredno.programiranje','Амфитеатар Педагаошка'),(354,NULL,2,15,17,'stefan.andonov','W23napredno.programiranje','online'),(355,NULL,4,10,12,'stefan.andonov','W23strukturno.programiranje','Барака 3.2'),(356,NULL,0,11,13,'khristina.mikhajloska','W23algoritmi.i.podatochni.strukturi','Барака 2.2'),(357,NULL,0,14,16,'khristina.mikhajloska','W23strukturno.programiranje','Амфитеатар МФ'),(358,NULL,1,11,12,'khristina.mikhajloska','W23informatsiska.bezbednost','315 ТМФ'),(359,NULL,2,9,11,'khristina.mikhajloska','W23strukturno.programiranje','203 ТМФ'),(360,NULL,3,9,11,'khristina.mikhajloska','W23strukturno.programiranje','203 ТМФ'),(361,NULL,3,12,15,'elena.rizova','W23pedagogija','Слушална 7 на Филозофскиот факултет ');
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectureslots`
--

DROP TABLE IF EXISTS `lectureslots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectureslots` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `LectureId` int DEFAULT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Day` int DEFAULT NULL,
  `TimeFrom` int DEFAULT NULL,
  `TimeTo` int DEFAULT NULL,
  `HexColor` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_LectureSlots_LectureId` (`LectureId`),
  CONSTRAINT `FK_LectureSlots_Lectures_LectureId` FOREIGN KEY (`LectureId`) REFERENCES `lectures` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectureslots`
--

LOCK TABLES `lectureslots` WRITE;
/*!40000 ALTER TABLE `lectureslots` DISABLE KEYS */;
INSERT INTO `lectureslots` VALUES (3,13,NULL,NULL,NULL,NULL,NULL),(4,15,NULL,NULL,NULL,NULL,NULL),(6,44,'',3,11,12,'#0FBDBD'),(7,113,NULL,3,8,11,'#39C7A0');
/*!40000 ALTER TABLE `lectureslots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ProfessorTitle` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES ('aleksandar.petrushev','Александар Петрушев',NULL,NULL),('aleksandar.stojmenski','Александар Стојменски',NULL,NULL),('aleksandar.tenev','Александар Тенев',NULL,NULL),('aleksandra.dedinets','Александра Дединец',NULL,NULL),('aleksandra.popovska.mitrovikj','Александра Поповска Митровиќ',NULL,NULL),('ana.atanasova','Ана Атанасова',NULL,NULL),('ana.madevska.bogdanova','Ана Мадевска Богданова',NULL,NULL),('ana.todorovska','Ана Тодоровска',NULL,NULL),('anastas.mishev','Анастас Мишев',NULL,NULL),('andrea.kulakov','Андреа Кулаков',NULL,NULL),('andreja.naumoski','Андреја Наумоски',NULL,NULL),('biljana.stojkoska.risteska','Билјана Стојкоска Ристеска',NULL,NULL),('biljana.tojtovska.ribarski','Билјана Тојтовска Рибарски',NULL,NULL),('boban.joksimoski','Бобан Јоксимоски',NULL,NULL),('bojan.ilijoski','Бојан Илијоски',NULL,NULL),('bojana.koteska','Бојана Котеска',NULL,NULL),('boris.stanoev','Борис Станоев',NULL,NULL),('boro.jakimovski','Боро Јакимовски',NULL,NULL),('dejan.gjorgjevikj','Дејан Ѓорѓевиќ',NULL,NULL),('dejan.spasov','Дејан Спасов',NULL,NULL),('dimitar.kitanovski','Димитар Китановски',NULL,NULL),('dimitar.milevski','Димитар Милевски',NULL,NULL),('dimitar.trajanov','Димитар Трајанов',NULL,NULL),('eftim.zdravevski','Ефтим Здравевски',NULL,NULL),('elena.rizova','Елена Ризова',NULL,NULL),('emil.stankov','Емил Станков',NULL,NULL),('georgina.mircheva','Георгина Мирчева',NULL,NULL),('gjorgji.madzharov','Ѓорѓи Маџаров',NULL,NULL),('goran.velinov','Горан Велинов',NULL,NULL),('gotse.armenski','Гоце Арменски',NULL,NULL),('igor.mishkovski','Игор Мишковски',NULL,NULL),('ilinka.ivanoska','Илинка Иваноска',NULL,NULL),('ivan.chorbev','Иван Чорбев',NULL,NULL),('ivan.kitanovski','Иван Китановски',NULL,NULL),('ivitsa.dimitrovski','Ивица Димитровски',NULL,NULL),('jana.kuzmanova','Јана Кузманова',NULL,NULL),('jasmina.jovanovska','Јасмина Јовановска',NULL,NULL),('jovana.dobreva','Јована Добрева',NULL,NULL),('katarina.trojachanets.dineva','Катарина Тројачанец Динева',NULL,NULL),('katerina.zdravkova','Катерина Здравкова',NULL,NULL),('khristina.mikhajloska','Христина Михајлоска',NULL,NULL),('kire.trivodaliev','Кире Триводалиев',NULL,NULL),('kiril.kjiroski','Кирил Ќироски',NULL,NULL),('kosta.mitreski','Коста Митрески',NULL,NULL),('kostadin.mishev','Костадин Мишев',NULL,NULL),('lasko.basnarkov','Ласко Баснарков',NULL,NULL),('ljupcho.antovski','Љупчо Антовски',NULL,NULL),('magdalena.kostoska.gjorchevska','Магдалена Костоска Ѓорчевска',NULL,NULL),('marija.mikhova','Марија Михова',NULL,NULL),('marija.taneska','Марија Танеска',NULL,NULL),('marjan.gushev','Марјан Гушев',NULL,NULL),('martin.dinev','Мартин Динев',NULL,NULL),('martina.toshevska','Мартина Тошевска',NULL,NULL),('metodija.jancheski','Методија Јанчески',NULL,NULL),('mila.dodevska','Мила Додевска',NULL,NULL),('mile.jovanov','Миле Јованов',NULL,NULL),('milena.trajanoska','Милена Трајаноска',NULL,NULL),('milosh.jovanovikj','Милош Јовановиќ',NULL,NULL),('miroslav.mirchev','Мирослав Мирчев',NULL,NULL),('monika.simjanoska','Моника Симјаноска',NULL,NULL),('natasha.ilievska','Наташа Илиевска',NULL,NULL),('nenad.anchev','Ненад Анчев',NULL,NULL),('nevena.atskovska','Невена Ацковска',NULL,NULL),('panche.ribarski','Панче Рибарски',NULL,NULL),('petar.rogachikj','Петар Рогачиќ',NULL,NULL),('petar.sekuloski','Петар Секулоски',NULL,NULL),('petre.lameski','Петре Ламески',NULL,NULL),('riste.stojanov','Ристе Стојанов',NULL,NULL),('sasho.gramatikov','Сашо Граматиков',NULL,NULL),('sijche.pechkova','Сијче Печкова',NULL,NULL),('slave.temkov','Славе Темков',NULL,NULL),('slobodan.kalajdzhiski','Слободан Калајџиски',NULL,NULL),('smilka.janeska.sarkanjats','Смилка Јанеска Саркањац',NULL,NULL),('sonja.gievska','Соња Гиевска',NULL,NULL),('stefan.andonov','Стефан Андонов',NULL,NULL),('vangel.ajanovski','Вангел Ајановски',NULL,NULL),('veritsa.bakeva','Верица Бакева',NULL,NULL),('vesna.dimitrievska.ristovska','Весна Димитриевска Ристовска',NULL,NULL),('vesna.dimitrova','Весна Димитрова',NULL,NULL),('vladimir.trajkovikj','Владимир Трајковиќ',NULL,NULL),('vladimir.zdraveski','Владимир Здравески',NULL,NULL),('vladislav.bidikov','Владислав Бидиков',NULL,NULL),('vlatko.spasev','Влатко Спасев',NULL,NULL),('vojdan.kjorveziroski','Војдан Ќорвезироски',NULL,NULL),('zhivko.atanaskoski','Живко Атанаскоски',NULL,NULL),('zoritsa.karapancheva','Зорица Карапанчева',NULL,NULL);
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('112 ФЕИТ'),('116 ТМФ'),('117 ТМФ'),('203 ТМФ'),('216 ТМФ'),('223 ФЕИТ'),('224 МФ'),('225 МФ'),('315 ТМФ'),('Netaville'),('online'),('Амфитеатар МФ'),('Амфитеатар Педагаошка'),('Амфитеатар ТМФ'),('Барака 1'),('Барака 2.1'),('Барака 2.2'),('Барака 3.2'),('ЛАБ.138'),('Слушална 7 на Филозофскиот факултет ');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulelectures`
--

DROP TABLE IF EXISTS `schedulelectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedulelectures` (
  `LecturesId` int NOT NULL,
  `ScheduleId` int NOT NULL,
  PRIMARY KEY (`LecturesId`,`ScheduleId`),
  KEY `IX_ScheduleLectures_ScheduleId` (`ScheduleId`),
  CONSTRAINT `FK_ScheduleLectures_LectureSlots_LecturesId` FOREIGN KEY (`LecturesId`) REFERENCES `lectureslots` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ScheduleLectures_Schedules_ScheduleId` FOREIGN KEY (`ScheduleId`) REFERENCES `schedules` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulelectures`
--

LOCK TABLES `schedulelectures` WRITE;
/*!40000 ALTER TABLE `schedulelectures` DISABLE KEYS */;
INSERT INTO `schedulelectures` VALUES (6,3),(7,3);
/*!40000 ALTER TABLE `schedulelectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `StudentId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  KEY `IX_Schedules_StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'Nikola','Nikola','nikola'),(3,'anja','asdad','anja1'),(4,'default','default','FINKI'),(5,'asd','asd','FINKI'),(6,'da','dsa','FINKI'),(7,'sdfsd','sdfsdf','FINKI'),(8,'nikola','nikola2','nikola'),(9,'nikola','nikola3','nikola'),(10,'anja','anja1','anja1'),(11,'nikola','nikola4','nikola'),(12,'nikola','nikola6','nikola'),(13,'as','as1','nikola'),(14,'a','a','nikola');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Year` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SemesterType` int DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES ('S24','2024',0),('W23','2023',1);
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Level` int NOT NULL,
  `Abbreviation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('administratsija.na.sistemi','Администрација на системи',3,NULL),('algoritmi.i.podatochni.strukturi','Алгоритми и податочни структури',2,NULL),('analiza.i.dizajn.na.is','Анализа и дизајн на ИС',3,NULL),('bazi.na.podatotsi','Бази на податоци',3,NULL),('biznis.i.menadzhment','Бизнис и менаџмент',1,NULL),('digitizatsija','Дигитизација',2,NULL),('diskretni.strukturi.1','Дискретни структури 1',1,NULL),('distribuirani.sistemi','Дистрибуирани системи',3,NULL),('dizajn.i.arkhitektura.na.softver','Дизајн и архитектура на софтвер',3,NULL),('dizajn.na.digitalni.kola','Дизајн на дигитални кола',1,NULL),('dizajn.na.obrazoven.softver','Дизајн на образовен софтвер',3,NULL),('ekonomija.za.ikt.inzheneri','Економија за ИКТ инженери',2,NULL),('fizika','Физика',1,NULL),('implementatsija.na.softverski.sistemi.so.sloboden.i.otvoren.kod','Имплементација на софтверски системи со слободен и отворен код',3,NULL),('informatsiska.bezbednost','Информациска безбедност',3,NULL),('inovatsii.vo.ikt','Иновации во ИКТ',3,NULL),('internet.programiranje.na.klientska.strana','Интернет програмирање на клиентска страна',2,NULL),('inzhenerska.matematika','Инженерска математика',2,NULL),('izbrani.temi.od.matematika./.diskretna.matematika','Избрани теми од математика / Дискретна математика',1,NULL),('kalkulus.1','Калкулус 1',1,NULL),('kompjuterska.elektronika','Компјутерска електроника',3,NULL),('kompjuterska.etika','Компјутерска етика',3,NULL),('kompjuterski.mrezhi','Компјутерски мрежи',2,NULL),('kompjuterski.mrezhi.i.bezbednost','Компјутерски мрежи и безбедност',2,NULL),('kompjuterski.zvuk,.muzika.i.govor','Компјутерски звук, музика и говор',2,NULL),('linearna.algebra.i.primeni','Линеарна алгебра и примени',3,NULL),('matematika.1./.kalkulus','Математика 1 / Калкулус',1,NULL),('menadzhment.informatsiski.sistemi','Менаџмент информациски системи',3,NULL),('metodologija.na.istrazhuvanjeto.vo.ikt','Методологија на истражувањето во ИКТ',3,NULL),('mikroprotsesorski.sistemi','Микропроцесорски системи',3,NULL),('mobilni.informatsiski.sistemi','Мобилни информациски системи',3,NULL),('mobilni.platformi.i.programiranje','Мобилни платформи и програмирање',3,NULL),('mrezhna.i.mobilna.forenzika','Мрежна и мобилна форензика',3,NULL),('multimedijalni.tekhnologii','Мултимедијални технологии',2,NULL),('multimediski.mrezhi','Мултимедиски мрежи',3,NULL),('multimediski.sistemi','Мултимедиски системи',3,NULL),('napreden.veb.dizajn','Напреден веб дизајн',3,NULL),('napredna.interaktsija.chovek.kompjuter','Напредна интеракција човек компјутер',3,NULL),('napredno.programiranje','Напредно програмирање',2,NULL),('obrabotka.na.prirodnite.jazitsi','Обработка на природните јазици',3,NULL),('optichki.mrezhi','Оптички мрежи',3,NULL),('osnovi.na.robotikata','Основи на роботиката',3,NULL),('osnovi.na.teorijata.na.informatsii','Основи на теоријата на информации',2,NULL),('paralelno.i.distribuirano.protsesiranje','Паралелно и дистрибуирано процесирање',3,NULL),('pedagogija','Педагогија',1,NULL),('presmetuvanje.vo.oblak','Пресметување во облак',3,NULL),('profesionalni.veshtini','Професионални вештини',1,NULL),('programiranje.na.video.igri','Програмирање на видео игри',3,NULL),('programski.paradigmi','Програмски парадигми',3,NULL),('sajber.bezbednost./.mrezhna.bezbednost','Сајбер безбедност / Мрежна безбедност',3,NULL),('shabloni.za.dizajn.na.korisnichki.interfejsi','Шаблони за дизајн на кориснички интерфејси',2,NULL),('sistemi.za.poddrshka.pri.odluchuvanjeto','Системи за поддршка при одлучувањето',2,NULL),('softver.za.vgradlivi.sistemi','Софтвер за вградливи системи',3,NULL),('strukturno.programiranje','Структурно програмирање',1,NULL),('upravuvanje.so.tekhnichka.poddrshka','Управување со техничка поддршка',3,NULL),('veb.bazirani.sistemi','Веб базирани системи',3,NULL),('veb.programiranje','Веб програмирање',3,NULL),('verojatnost.i.statistika','Веројатност и статистика',2,NULL),('voved.vo.bioinformatikata','Вовед во биоинформатиката',3,NULL),('voved.vo.kompjuterskite.nauki','Вовед во компјутерските науки',1,NULL),('voved.vo.naukata.za.podatotsi','Вовед во науката за податоци',3,NULL),('voved.vo.pametni.gradovi','Вовед во паметни градови',3,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10  1:18:24

-- Ensure the admin user is created with the required password, if it doesn't already exist
-- Drop the user if it exists
DROP USER 'admin'@'%';

-- Create the admin user
CREATE USER 'admin'@'%' IDENTIFIED BY 'ogan123';

-- Grant all privileges to the admin user for the finki_rasporedi database
GRANT ALL PRIVILEGES ON finki_rasporedi.* TO 'admin'@'%';

-- Apply the changes
FLUSH PRIVILEGES;

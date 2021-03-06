-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: weapons
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sdo`
--

DROP TABLE IF EXISTS `sdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdo` (
  `uiIndex` int DEFAULT NULL,
  `szWeaponName` varchar(255) DEFAULT NULL,
  `ubWeaponClass` int DEFAULT NULL,
  `ubWeaponType` int DEFAULT NULL,
  `ubCalibre` int DEFAULT NULL,
  `ubReadyTime` int DEFAULT NULL,
  `ubShotsPer4Turns` decimal(19,6) DEFAULT NULL,
  `ubShotsPerBurst` int DEFAULT NULL,
  `ubBurstPenalty` int DEFAULT NULL,
  `ubBulletSpeed` int DEFAULT NULL,
  `ubImpact` int DEFAULT NULL,
  `ubDeadliness` int DEFAULT NULL,
  `bAccuracy` int DEFAULT NULL,
  `ubMagSize` int DEFAULT NULL,
  `usRange` int DEFAULT NULL,
  `usReloadDelay` int DEFAULT NULL,
  `BurstAniDelay` int DEFAULT NULL,
  `ubAttackVolume` int DEFAULT NULL,
  `ubHitVolume` int DEFAULT NULL,
  `sSound` int DEFAULT NULL,
  `sBurstSound` int DEFAULT NULL,
  `sSilencedBurstSound` int DEFAULT NULL,
  `sReloadSound` int DEFAULT NULL,
  `sLocknLoadSound` int DEFAULT NULL,
  `SilencedSound` int DEFAULT NULL,
  `bBurstAP` int DEFAULT NULL,
  `bAutofireShotsPerFiveAP` int DEFAULT NULL,
  `APsToReload` int DEFAULT NULL,
  `SwapClips` int DEFAULT NULL,
  `MaxDistForMessyDeath` int DEFAULT NULL,
  `AutoPenalty` int DEFAULT NULL,
  `NoSemiAuto` int DEFAULT NULL,
  `EasyUnjam` int DEFAULT NULL,
  `APsToReloadManually` int DEFAULT NULL,
  `ManualReloadSound` int DEFAULT NULL,
  `nAccuracy` int DEFAULT NULL,
  `bRecoilX` int DEFAULT NULL,
  `bRecoilY` decimal(19,6) DEFAULT NULL,
  `ubAimLevels` int DEFAULT NULL,
  `ubRecoilDelay` int DEFAULT NULL,
  `Handling` int DEFAULT NULL,
  `usOverheatingJamThreshold` int DEFAULT NULL,
  `usOverheatingDamageThreshold` int DEFAULT NULL,
  `usOverheatingSingleShotTemperature` int DEFAULT NULL,
  `HeavyGun` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdo`
--

LOCK TABLES `sdo` WRITE;
/*!40000 ALTER TABLE `sdo` DISABLE KEYS */;
INSERT INTO `sdo` VALUES (0,'Nothing',0,0,0,0,0.000000,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,157,0,0,20,1,7,0,0,0,0,0,0,0,0.000000,0,0,0,4000,5000,120,0),(1,'Glock 17',1,1,2,4,26.340000,0,0,21,25,16,1,18,115,200,100,50,3,299,0,0,100,106,156,0,0,25,1,7,0,0,0,0,476,6,0,0.000000,3,0,9,3500,4000,70,0),(2,'Glock 18',1,2,2,4,24.530000,0,16,21,24,16,1,18,140,200,23,50,3,371,57,111,100,106,156,0,5,25,1,7,16,0,0,0,476,6,6,15.000000,3,0,9,3500,4500,70,0),(3,'Beretta 92F',1,1,2,4,24.530000,0,0,21,25,15,1,15,120,200,100,50,3,367,0,0,100,106,156,0,0,25,1,7,0,0,0,0,476,6,0,0.000000,3,0,9,3500,4000,70,0),(4,'Beretta 93R',1,2,2,4,24.530000,3,11,21,24,18,1,18,145,200,27,55,3,368,54,111,100,106,156,7,0,25,1,7,11,0,0,0,476,8,4,10.000000,3,0,8,3200,4200,70,0),(5,'.38 Special',1,1,1,2,24.530000,0,0,20,20,14,0,6,105,200,100,45,3,459,0,0,100,106,156,0,0,32,1,7,0,0,1,0,480,4,0,0.000000,2,0,7,3500,4000,60,0),(6,'Barracuda',1,1,4,4,15.810000,0,0,20,26,16,1,6,110,200,100,60,5,423,0,0,100,106,157,0,0,32,1,7,0,0,1,0,480,6,0,0.000000,2,0,8,3500,4000,70,0),(7,'Desert Eagle .357',1,1,4,8,16.550000,0,0,21,28,16,1,9,135,200,100,60,5,422,0,0,100,106,157,0,0,24,1,7,0,0,0,0,476,14,0,0.000000,3,0,13,3800,4300,70,0),(8,'Colt M1911A1',1,1,3,4,24.530000,0,0,21,20,16,1,7,85,200,100,40,3,413,0,0,100,106,157,0,0,22,1,7,0,0,0,0,476,7,0,0.000000,3,0,9,3500,4000,75,0),(9,'HK MP5K )-|',2,2,2,6,17.360000,3,12,22,24,18,1,30,140,200,33,50,3,375,61,62,101,107,156,10,4,30,1,7,12,0,0,0,476,6,5,11.000000,4,0,14,3000,4000,70,0);
/*!40000 ALTER TABLE `sdo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21 19:05:46

-- MySQL dump 10.13  Distrib 5.7.33, for Linux (i686)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

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
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (114,'%'),(263,'&'),(478,'(JSON'),(92,'*'),(90,'+'),(91,'-'),(479,'->'),(481,'->>'),(93,'/'),(81,':='),(65,'<'),(265,'<<'),(64,'<='),(62,'<=>'),(63,'<>'),(61,'='),(67,'>'),(66,'>='),(266,'>>'),(96,'ABS'),(831,'ACCOUNT'),(97,'ACOS'),(633,'ACTION'),(55,'ADD'),(126,'ADDDATE'),(127,'ADDTIME'),(269,'AES_DECRYPT'),(270,'AES_ENCRYPT'),(569,'AFTER'),(249,'AGAINST'),(863,'AGGREGATE'),(570,'ALGORITHM'),(698,'ALL'),(56,'ALTER'),(15,'ANALYSE'),(571,'ANALYZE'),(68,'AND'),(531,'ANY_VALUE'),(634,'ARCHIVE'),(409,'AREA'),(699,'AS'),(373,'ASBINARY'),(513,'ASC'),(191,'ASCII'),(98,'ASIN'),(375,'ASTEXT'),(374,'ASWKB'),(376,'ASWKT'),(6,'ASYMMETRIC_DECRYPT'),(7,'ASYMMETRIC_DERIVE'),(8,'ASYMMETRIC_ENCRYPT'),(9,'ASYMMETRIC_SIGN'),(10,'ASYMMETRIC_VERIFY'),(623,'AT'),(99,'ATAN'),(100,'ATAN2'),(722,'AUTOCOMMIT'),(658,'AUTOEXTEND_SIZE'),(572,'AUTO_INCREMENT'),(507,'AVG'),(573,'AVG_ROW_LENGTH'),(750,'BEFORE'),(723,'BEGIN'),(291,'BENCHMARK'),(69,'BETWEEN'),(192,'BIN'),(254,'BINARY'),(886,'BINLOG'),(509,'BIT_AND'),(268,'BIT_COUNT'),(193,'BIT_LENGTH'),(510,'BIT_OR'),(511,'BIT_XOR'),(23,'BOOL'),(24,'BOOLEAN'),(236,'BOTH'),(627,'BTREE'),(424,'BUFFER'),(514,'BY'),(48,'BYTE'),(17,'CACHE'),(666,'CALL'),(635,'CASCADE'),(82,'CASE'),(255,'CAST'),(812,'CATALOG_NAME'),(101,'CEIL'),(102,'CEILING'),(410,'CENTROID'),(724,'CHAIN'),(574,'CHANGE'),(755,'CHANNEL'),(49,'CHAR'),(45,'CHARACTER'),(195,'CHARACTER_LENGTH'),(292,'CHARSET'),(194,'CHAR_LENGTH'),(575,'CHECK'),(576,'CHECKSUM'),(832,'CIPHER'),(813,'CLASS_ORIGIN'),(844,'CLIENT'),(672,'CLOSE'),(71,'COALESCE'),(889,'CODE'),(293,'COERCIBILITY'),(546,'COLLATE'),(294,'COLLATION'),(577,'COLUMN'),(578,'COLUMNS'),(814,'COLUMN_NAME'),(552,'COMMENT'),(725,'COMMIT'),(739,'COMMITTED'),(636,'COMPACT'),(553,'COMPLETION'),(271,'COMPRESS'),(637,'COMPRESSED'),(579,'COMPRESSION'),(196,'CONCAT'),(197,'CONCAT_WS'),(685,'CONCURRENT'),(808,'CONDITION'),(580,'CONNECTION'),(295,'CONNECTION_ID'),(726,'CONSISTENT'),(581,'CONSTRAINT'),(815,'CONSTRAINT_CATALOG'),(816,'CONSTRAINT_NAME'),(817,'CONSTRAINT_SCHEMA'),(455,'CONTAINS'),(809,'CONTINUE'),(103,'CONV'),(256,'CONVERT'),(128,'CONVERT_TZ'),(425,'CONVEXHULL'),(104,'COS'),(105,'COT'),(512,'COUNT'),(106,'CRC32'),(57,'CREATE'),(11,'CREATE_ASYMMETRIC_PRIV_KEY'),(12,'CREATE_ASYMMETRIC_PUB_KEY'),(13,'CREATE_DH_PARAMETERS'),(14,'CREATE_DIGEST'),(717,'CROSS'),(433,'CROSSES'),(638,'CSV'),(129,'CURDATE'),(130,'CURRENT_DATE'),(131,'CURRENT_TIME'),(132,'CURRENT_TIMESTAMP'),(296,'CURRENT_USER'),(806,'CURSOR'),(818,'CURSOR_NAME'),(133,'CURTIME'),(547,'DATA'),(297,'DATABASE'),(872,'DATABASES'),(618,'DATAFILE'),(42,'DATE'),(134,'DATEDIFF'),(257,'DATETIME'),(135,'DATE_ADD'),(150,'DATE_FORMAT'),(136,'DATE_SUB'),(137,'DAY'),(151,'DAYNAME'),(152,'DAYOFMONTH'),(153,'DAYOFWEEK'),(154,'DAYOFYEAR'),(138,'DAY_HOUR'),(139,'DAY_MINUTE'),(140,'DAY_SECOND'),(797,'DEALLOCATE'),(34,'DEC'),(37,'DECIMAL'),(798,'DECLARE'),(272,'DECODE'),(2,'DEFAULT'),(788,'DEFAULT_AUTH'),(554,'DEFINER'),(107,'DEGREES'),(679,'DELAYED'),(582,'DELAY_KEY_WRITE'),(639,'DELETE'),(515,'DESC'),(904,'DESCRIBE'),(273,'DES_DECRYPT'),(274,'DES_ENCRYPT'),(894,'DES_KEY_FILE'),(819,'DIAGNOSTICS'),(381,'DIMENSION'),(548,'DIRECTORY'),(555,'DISABLE'),(583,'DISCARD'),(456,'DISJOINT'),(434,'DISTANCE'),(508,'DISTINCT'),(700,'DISTINCTROW'),(94,'DIV'),(556,'DO'),(584,'DROP'),(716,'DUAL'),(701,'DUMPFILE'),(680,'DUPLICATE'),(640,'DYNAMIC'),(83,'ELSE'),(799,'ELSEIF'),(198,'ELT'),(557,'ENABLE'),(686,'ENCLOSED'),(275,'ENCODE'),(276,'ENCRYPT'),(585,'ENCRYPTION'),(84,'END'),(397,'ENDPOINT'),(624,'ENDS'),(586,'ENGINE'),(873,'ENGINES'),(382,'ENVELOPE'),(457,'EQUALS'),(895,'ERROR'),(874,'ERRORS'),(245,'ESCAPE'),(687,'ESCAPED'),(558,'EVENT'),(887,'EVENTS'),(625,'EVERY'),(587,'EXCHANGE'),(796,'EXECUTE'),(622,'EXISTS'),(810,'EXIT'),(108,'EXP'),(250,'EXPANSION'),(833,'EXPIRE'),(905,'EXPLAIN'),(896,'EXPORT'),(199,'EXPORT_SET'),(861,'EXTENDED'),(659,'EXTENT_SIZE'),(411,'EXTERIORRING'),(155,'EXTRACT'),(480,'EXTRACTION)'),(260,'EXTRACTVALUE'),(21,'FALSE'),(859,'FAST'),(641,'FEDERATED'),(807,'FETCH'),(200,'FIELD'),(688,'FIELDS'),(845,'FILE'),(660,'FILE_BLOCK_SIZE'),(779,'FILTER'),(201,'FIND_IN_SET'),(588,'FIRST'),(35,'FIXED'),(38,'FLOAT4'),(39,'FLOAT8'),(109,'FLOOR'),(18,'FLUSH'),(702,'FOR'),(718,'FORCE'),(589,'FOREIGN'),(202,'FORMAT'),(298,'FOUND_ROWS'),(237,'FROM'),(203,'FROM_BASE64'),(156,'FROM_DAYS'),(157,'FROM_UNIXTIME'),(642,'FULL'),(590,'FULLTEXT'),(175,'FUNCTION'),(897,'GENERAL'),(306,'GEOMCOLLFROMTEXT'),(336,'GEOMCOLLFROMWKB'),(366,'GEOMETRYCOLLECTION'),(307,'GEOMETRYCOLLECTIONFROMTEXT'),(337,'GEOMETRYCOLLECTIONFROMWKB'),(308,'GEOMETRYFROMTEXT'),(338,'GEOMETRYFROMWKB'),(420,'GEOMETRYN'),(383,'GEOMETRYTYPE'),(309,'GEOMFROMTEXT'),(339,'GEOMFROMWKB'),(820,'GET'),(158,'GET_FORMAT'),(286,'GET_LOCK'),(398,'GLENGTH'),(740,'GLOBAL'),(846,'GRANT'),(875,'GRANTS'),(72,'GREATEST'),(565,'GROUP'),(516,'GROUP_CONCAT'),(503,'GTID_SUBSET'),(504,'GTID_SUBTRACT'),(673,'HANDLER'),(703,'HAVING'),(643,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(204,'HEX'),(681,'HIGH_PRIORITY'),(628,'HOST'),(876,'HOSTS'),(141,'HOUR'),(142,'HOUR_MINUTE'),(143,'HOUR_SECOND'),(696,'IDENTIFIED'),(87,'IF'),(88,'IFNULL'),(682,'IGNORE'),(756,'IGNORE_SERVER_IDS'),(591,'IMPORT'),(73,'IN'),(58,'INDEX'),(877,'INDEXES'),(534,'INET6_ATON'),(535,'INET6_NTOA'),(532,'INET_ATON'),(533,'INET_NTOA'),(689,'INFILE'),(619,'INITIAL_SIZE'),(482,'INLINE'),(719,'INNER'),(644,'INNODB'),(205,'INSERT'),(592,'INSERT_METHOD'),(867,'INSTALL'),(564,'INSTANCE'),(206,'INSTR'),(25,'INT1'),(28,'INT2'),(29,'INT3'),(31,'INT4'),(33,'INT8'),(32,'INTEGER'),(412,'INTERIORRINGN'),(458,'INTERSECTS'),(74,'INTERVAL'),(683,'INTO'),(789,'IO_THREAD'),(75,'IS'),(399,'ISCLOSED'),(384,'ISEMPTY'),(77,'ISNULL'),(741,'ISOLATION'),(385,'ISSIMPLE'),(834,'ISSUER'),(287,'IS_FREE_LOCK'),(536,'IS_IPV4'),(537,'IS_IPV4_COMPAT'),(538,'IS_IPV4_MAPPED'),(539,'IS_IPV6'),(288,'IS_USED_LOCK'),(800,'ITERATE'),(704,'JOIN'),(258,'JSON'),(486,'JSON_APPEND'),(472,'JSON_ARRAY'),(519,'JSON_ARRAYAGG'),(487,'JSON_ARRAY_APPEND'),(488,'JSON_ARRAY_INSERT'),(475,'JSON_CONTAINS'),(476,'JSON_CONTAINS_PATH'),(497,'JSON_DEPTH'),(477,'JSON_EXTRACT'),(489,'JSON_INSERT'),(484,'JSON_KEYS'),(498,'JSON_LENGTH'),(490,'JSON_MERGE'),(491,'JSON_MERGE_PATCH'),(492,'JSON_MERGE_PRESERVE'),(473,'JSON_OBJECT'),(520,'JSON_OBJECTAGG'),(501,'JSON_PRETTY'),(474,'JSON_QUOTE'),(493,'JSON_REMOVE'),(494,'JSON_REPLACE'),(485,'JSON_SEARCH'),(495,'JSON_SET'),(502,'JSON_STORAGE_SIZE'),(499,'JSON_TYPE'),(496,'JSON_UNQUOTE'),(500,'JSON_VALID'),(59,'KEY'),(593,'KEYS'),(594,'KEY_BLOCK_SIZE'),(902,'KILL'),(674,'LAST'),(159,'LAST_DAY'),(299,'LAST_INSERT_ID'),(207,'LCASE'),(238,'LEADING'),(78,'LEAST'),(801,'LEAVE'),(903,'LEAVES'),(208,'LEFT'),(209,'LENGTH'),(742,'LEVEL'),(229,'LIKE'),(667,'LIMIT'),(310,'LINEFROMTEXT'),(340,'LINEFROMWKB'),(690,'LINES'),(367,'LINESTRING'),(311,'LINESTRINGFROMTEXT'),(341,'LINESTRINGFROMWKB'),(110,'LN'),(691,'LOAD'),(210,'LOAD_FILE'),(692,'LOCAL'),(160,'LOCALTIME'),(161,'LOCALTIMESTAMP'),(211,'LOCATE'),(595,'LOCK'),(111,'LOG'),(113,'LOG10'),(112,'LOG2'),(566,'LOGFILE'),(751,'LOGS'),(53,'LONG'),(54,'LONGBINARY'),(802,'LOOP'),(212,'LOWER'),(668,'LOW_PRIORITY'),(213,'LPAD'),(214,'LTRIM'),(162,'MAKEDATE'),(163,'MAKETIME'),(215,'MAKE_SET'),(752,'MASTER'),(757,'MASTER_AUTO_POSITION'),(758,'MASTER_BIND'),(759,'MASTER_CONNECT_RETRY'),(760,'MASTER_HEARTBEAT_PERIOD'),(761,'MASTER_HOST'),(762,'MASTER_LOG_FILE'),(763,'MASTER_LOG_POS'),(764,'MASTER_PASSWORD'),(765,'MASTER_PORT'),(540,'MASTER_POS_WAIT'),(766,'MASTER_RETRY_COUNT'),(767,'MASTER_SSL'),(768,'MASTER_SSL_CA'),(769,'MASTER_SSL_CERT'),(770,'MASTER_SSL_CIPHER'),(771,'MASTER_SSL_CRL'),(772,'MASTER_SSL_CRLPATH'),(773,'MASTER_SSL_KEY'),(774,'MASTER_SSL_VERIFY_SERVER_CERT'),(775,'MASTER_TLS_VERSION'),(776,'MASTER_USER'),(251,'MATCH'),(521,'MAX'),(835,'MAX_CONNECTIONS_PER_HOUR'),(836,'MAX_QUERIES_PER_HOUR'),(596,'MAX_ROWS'),(661,'MAX_SIZE'),(837,'MAX_UPDATES_PER_HOUR'),(838,'MAX_USER_CONNECTIONS'),(445,'MBRCONTAINS'),(446,'MBRCOVEREDBY'),(447,'MBRCOVERS'),(448,'MBRDISJOINT'),(449,'MBREQUAL'),(450,'MBREQUALS'),(451,'MBRINTERSECTS'),(452,'MBROVERLAPS'),(453,'MBRTOUCHES'),(454,'MBRWITHIN'),(277,'MD5'),(860,'MEDIUM'),(705,'MEMORY'),(645,'MERGE'),(821,'MESSAGE_TEXT'),(164,'MICROSECOND'),(216,'MID'),(30,'MIDDLEINT'),(522,'MIN'),(144,'MINUTE'),(145,'MINUTE_SECOND'),(597,'MIN_ROWS'),(312,'MLINEFROMTEXT'),(342,'MLINEFROMWKB'),(95,'MOD'),(252,'MODE'),(598,'MODIFY'),(146,'MONTH'),(165,'MONTHNAME'),(314,'MPOINTFROMTEXT'),(344,'MPOINTFROMWKB'),(316,'MPOLYFROMTEXT'),(346,'MPOLYFROMWKB'),(646,'MRG_MYISAM'),(368,'MULTILINESTRING'),(313,'MULTILINESTRINGFROMTEXT'),(343,'MULTILINESTRINGFROMWKB'),(369,'MULTIPOINT'),(315,'MULTIPOINTFROMTEXT'),(345,'MULTIPOINTFROMWKB'),(370,'MULTIPOLYGON'),(317,'MULTIPOLYGONFROMTEXT'),(347,'MULTIPOLYGONFROMWKB'),(878,'MUTEX'),(647,'MYISAM'),(822,'MYSQL_ERRNO'),(549,'NAME'),(871,'NAMES'),(541,'NAME_CONST'),(46,'NATIONAL'),(720,'NATURAL'),(47,'NCHAR'),(648,'NDB'),(649,'NDBCLUSTER'),(839,'NEVER'),(675,'NEXT'),(650,'NO'),(662,'NODEGROUP'),(847,'NONE'),(70,'NOT'),(166,'NOW'),(858,'NO_WRITE_TO_BINLOG'),(76,'NULL'),(89,'NULLIF'),(823,'NUMBER'),(36,'NUMERIC'),(421,'NUMGEOMETRIES'),(413,'NUMINTERIORRINGS'),(400,'NUMPOINTS'),(50,'NVARCHAR'),(217,'OCT'),(218,'OCTET_LENGTH'),(706,'OFFSET'),(559,'ON'),(727,'ONLY'),(676,'OPEN'),(599,'OPTIMIZE'),(898,'OPTIMIZER_COSTS'),(848,'OPTION'),(693,'OPTIONALLY'),(567,'OPTIONS'),(79,'OR'),(219,'ORD'),(517,'ORDER'),(721,'OUTER'),(707,'OUTFILE'),(459,'OVERLAPS'),(629,'OWNER'),(600,'PACK_KEYS'),(601,'PARSER'),(651,'PARTIAL'),(602,'PARTITION'),(603,'PARTITIONING'),(906,'PARTITIONS'),(278,'PASSWORD'),(483,'PATH)'),(167,'PERIOD_ADD'),(168,'PERIOD_DIFF'),(115,'PI'),(868,'PLUGIN'),(890,'PLUGINS'),(790,'PLUGIN_DIR'),(371,'POINT'),(318,'POINTFROMTEXT'),(348,'POINTFROMWKB'),(401,'POINTN'),(319,'POLYFROMTEXT'),(349,'POLYFROMWKB'),(372,'POLYGON'),(320,'POLYGONFROMTEXT'),(350,'POLYGONFROMWKB'),(630,'PORT'),(220,'POSITION'),(116,'POW'),(117,'POWER'),(40,'PRECISION'),(747,'PREPARE'),(560,'PRESERVE'),(677,'PREV'),(604,'PRIMARY'),(849,'PRIVILEGES'),(16,'PROCEDURE'),(850,'PROCESS'),(879,'PROCESSLIST'),(891,'PROFILE'),(892,'PROFILES'),(856,'PROXY'),(753,'PURGE'),(169,'QUARTER'),(19,'QUERY'),(669,'QUICK'),(221,'QUOTE'),(118,'RADIANS'),(119,'RAND'),(279,'RANDOM_BYTES'),(678,'READ'),(41,'REAL'),(605,'REBUILD'),(748,'RECOVER'),(652,'REDUNDANT'),(653,'REFERENCES'),(247,'REGEXP'),(899,'RELAY'),(893,'RELAYLOG'),(777,'RELAY_LOG_FILE'),(778,'RELAY_LOG_POS'),(728,'RELEASE'),(289,'RELEASE_ALL_LOCKS'),(290,'RELEASE_LOCK'),(851,'RELOAD'),(606,'REMOVE'),(561,'RENAME'),(607,'REORGANIZE'),(608,'REPAIR'),(222,'REPEAT'),(743,'REPEATABLE'),(223,'REPLACE'),(780,'REPLICATE_DO_DB'),(781,'REPLICATE_DO_TABLE'),(782,'REPLICATE_IGNORE_DB'),(783,'REPLICATE_IGNORE_TABLE'),(784,'REPLICATE_REWRITE_DB'),(785,'REPLICATE_WILD_DO_TABLE'),(786,'REPLICATE_WILD_IGNORE_TABLE'),(787,'REPLICATION'),(840,'REQUIRE'),(20,'RESET'),(828,'RESIGNAL'),(656,'RESTRICT'),(804,'RETURN'),(824,'RETURNED_SQLSTATE'),(864,'RETURNS'),(224,'REVERSE'),(857,'REVOKE'),(225,'RIGHT'),(248,'RLIKE'),(729,'ROLLBACK'),(120,'ROUND'),(697,'ROWS'),(300,'ROW_COUNT'),(609,'ROW_FORMAT'),(226,'RPAD'),(227,'RTRIM'),(735,'SAVEPOINT'),(562,'SCHEDULE'),(301,'SCHEMA'),(880,'SCHEMAS'),(825,'SCHEMA_NAME'),(147,'SECOND'),(852,'SECURITY'),(170,'SEC_TO_TIME'),(684,'SELECT'),(518,'SEPARATOR'),(3,'SERIAL'),(744,'SERIALIZABLE'),(568,'SERVER'),(745,'SESSION'),(302,'SESSION_USER'),(550,'SET'),(280,'SHA'),(281,'SHA1'),(282,'SHA2'),(708,'SHARE'),(881,'SHOW'),(853,'SHUTDOWN'),(121,'SIGN'),(830,'SIGNAL'),(259,'SIGNED'),(122,'SIN'),(563,'SLAVE'),(542,'SLEEP'),(900,'SLOW'),(730,'SNAPSHOT'),(631,'SOCKET'),(865,'SONAME'),(228,'SOUNDEX'),(230,'SOUNDS'),(231,'SPACE'),(610,'SPATIAL'),(829,'SQLSTATE'),(791,'SQL_AFTER_GTIDS'),(792,'SQL_AFTER_MTS_GAPS'),(793,'SQL_BEFORE_GTIDS'),(709,'SQL_BIG_RESULT'),(710,'SQL_BUFFER_RESULT'),(711,'SQL_CACHE'),(712,'SQL_CALC_FOUND_ROWS'),(754,'SQL_LOG_BIN'),(713,'SQL_NO_CACHE'),(714,'SQL_SMALL_RESULT'),(794,'SQL_THREAD'),(123,'SQRT'),(386,'SRID'),(841,'SSL'),(731,'START'),(694,'STARTING'),(408,'STARTPOINT'),(626,'STARTS'),(611,'STATS_AUTO_RECALC'),(612,'STATS_PERSISTENT'),(613,'STATS_SAMPLE_PAGES'),(882,'STATUS'),(523,'STD'),(524,'STDDEV'),(525,'STDDEV_POP'),(526,'STDDEV_SAMP'),(795,'STOP'),(888,'STORAGE'),(654,'STORED'),(715,'STRAIGHT_JOIN'),(246,'STRCMP'),(866,'STRING'),(171,'STR_TO_DATE'),(414,'ST_AREA'),(377,'ST_ASBINARY'),(465,'ST_ASGEOJSON'),(379,'ST_ASTEXT'),(378,'ST_ASWKB'),(380,'ST_ASWKT'),(426,'ST_BUFFER'),(427,'ST_BUFFER_STRATEGY'),(415,'ST_CENTROID'),(435,'ST_CONTAINS'),(428,'ST_CONVEXHULL'),(436,'ST_CROSSES'),(429,'ST_DIFFERENCE'),(387,'ST_DIMENSION'),(437,'ST_DISJOINT'),(438,'ST_DISTANCE'),(467,'ST_DISTANCE_SPHERE'),(402,'ST_ENDPOINT'),(388,'ST_ENVELOPE'),(439,'ST_EQUALS'),(416,'ST_EXTERIORRING'),(461,'ST_GEOHASH'),(321,'ST_GEOMCOLLFROMTEXT'),(351,'ST_GEOMCOLLFROMWKB'),(322,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(352,'ST_GEOMETRYCOLLECTIONFROMWKB'),(323,'ST_GEOMETRYFROMTEXT'),(353,'ST_GEOMETRYFROMWKB'),(422,'ST_GEOMETRYN'),(389,'ST_GEOMETRYTYPE'),(466,'ST_GEOMFROMGEOJSON'),(324,'ST_GEOMFROMTEXT'),(354,'ST_GEOMFROMWKB'),(417,'ST_INTERIORRINGN'),(430,'ST_INTERSECTION'),(440,'ST_INTERSECTS'),(403,'ST_ISCLOSED'),(390,'ST_ISEMPTY'),(391,'ST_ISSIMPLE'),(468,'ST_ISVALID'),(462,'ST_LATFROMGEOHASH'),(404,'ST_LENGTH'),(325,'ST_LINEFROMTEXT'),(355,'ST_LINEFROMWKB'),(326,'ST_LINESTRINGFROMTEXT'),(356,'ST_LINESTRINGFROMWKB'),(463,'ST_LONGFROMGEOHASH'),(469,'ST_MAKEENVELOPE'),(327,'ST_MLINEFROMTEXT'),(357,'ST_MLINEFROMWKB'),(329,'ST_MPOINTFROMTEXT'),(359,'ST_MPOINTFROMWKB'),(331,'ST_MPOLYFROMTEXT'),(361,'ST_MPOLYFROMWKB'),(328,'ST_MULTILINESTRINGFROMTEXT'),(358,'ST_MULTILINESTRINGFROMWKB'),(330,'ST_MULTIPOINTFROMTEXT'),(360,'ST_MULTIPOINTFROMWKB'),(332,'ST_MULTIPOLYGONFROMTEXT'),(362,'ST_MULTIPOLYGONFROMWKB'),(423,'ST_NUMGEOMETRIES'),(418,'ST_NUMINTERIORRING'),(419,'ST_NUMINTERIORRINGS'),(405,'ST_NUMPOINTS'),(441,'ST_OVERLAPS'),(464,'ST_POINTFROMGEOHASH'),(333,'ST_POINTFROMTEXT'),(363,'ST_POINTFROMWKB'),(406,'ST_POINTN'),(334,'ST_POLYFROMTEXT'),(364,'ST_POLYFROMWKB'),(335,'ST_POLYGONFROMTEXT'),(365,'ST_POLYGONFROMWKB'),(470,'ST_SIMPLIFY'),(392,'ST_SRID'),(407,'ST_STARTPOINT'),(431,'ST_SYMDIFFERENCE'),(442,'ST_TOUCHES'),(432,'ST_UNION'),(471,'ST_VALIDATE'),(443,'ST_WITHIN'),(393,'ST_X'),(394,'ST_Y'),(826,'SUBCLASS_ORIGIN'),(172,'SUBDATE'),(842,'SUBJECT'),(232,'SUBSTR'),(233,'SUBSTRING'),(234,'SUBSTRING_INDEX'),(173,'SUBTIME'),(527,'SUM'),(854,'SUPER'),(174,'SYSDATE'),(303,'SYSTEM_USER'),(60,'TABLE'),(737,'TABLES'),(614,'TABLESPACE'),(827,'TABLE_NAME'),(124,'TAN'),(665,'TEMPORARY'),(695,'TERMINATED'),(85,'THEN'),(44,'TIME'),(176,'TIMEDIFF'),(43,'TIMESTAMP'),(177,'TIMESTAMPADD'),(178,'TIMESTAMPDIFF'),(179,'TIME_FORMAT'),(180,'TIME_TO_SEC'),(736,'TO'),(444,'TOUCHES'),(235,'TO_BASE64'),(181,'TO_DAYS'),(182,'TO_SECONDS'),(907,'TRADITIONAL'),(239,'TRAILING'),(732,'TRANSACTION'),(664,'TRIGGER'),(883,'TRIGGERS'),(240,'TRIM'),(22,'TRUE'),(125,'TRUNCATE'),(615,'TYPE'),(241,'UCASE'),(746,'UNCOMMITTED'),(283,'UNCOMPRESS'),(284,'UNCOMPRESSED_LENGTH'),(811,'UNDO'),(242,'UNHEX'),(869,'UNINSTALL'),(616,'UNION'),(617,'UNIQUE'),(183,'UNIX_TIMESTAMP'),(738,'UNLOCK'),(26,'UNSIGNED'),(803,'UNTIL'),(657,'UPDATE'),(261,'UPDATEXML'),(551,'UPGRADE'),(243,'UPPER'),(855,'USAGE'),(663,'USE'),(304,'USER'),(901,'USER_RESOURCES'),(862,'USE_FRM'),(670,'USING'),(184,'UTC_DATE'),(185,'UTC_TIME'),(186,'UTC_TIMESTAMP'),(543,'UUID'),(544,'UUID_SHORT'),(285,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(545,'VALUES'),(51,'VARCHARACTER'),(870,'VARIABLE'),(884,'VARIABLES'),(530,'VARIANCE'),(52,'VARYING'),(528,'VAR_POP'),(529,'VAR_SAMP'),(305,'VERSION'),(621,'VIEW'),(655,'VIRTUAL'),(620,'WAIT'),(505,'WAIT_FOR_EXECUTED_GTID_SET'),(506,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(885,'WARNINGS'),(187,'WEEK'),(188,'WEEKDAY'),(189,'WEEKOFYEAR'),(244,'WEIGHT_STRING'),(86,'WHEN'),(671,'WHERE'),(805,'WHILE'),(253,'WITH'),(460,'WITHIN'),(733,'WORK'),(632,'WRAPPER'),(734,'WRITE'),(395,'X'),(843,'X509'),(749,'XA'),(80,'XOR'),(396,'Y'),(148,'YEAR'),(190,'YEARWEEK'),(149,'YEAR_MONTH'),(27,'ZEROFILL'),(264,'^'),(262,'|'),(267,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-17 14:49:00

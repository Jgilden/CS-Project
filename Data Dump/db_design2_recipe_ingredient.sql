-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: db_design2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `recipe_ingredient`
--

DROP TABLE IF EXISTS `recipe_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_ingredient` (
  `recipe_ingredient_id` int NOT NULL AUTO_INCREMENT,
  `unit` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `prep_method` varchar(45) DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `ingredient_id` int DEFAULT NULL,
  PRIMARY KEY (`recipe_ingredient_id`),
  KEY `recipe_ingredient_to_recipes_idx` (`recipe_id`),
  KEY `recipe_ingredient_to_ingredients_idx` (`ingredient_id`),
  CONSTRAINT `recipe_ingredient_to_ingredients` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recipe_ingredient_to_recipes` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_ingredient`
--

LOCK TABLES `recipe_ingredient` WRITE;
/*!40000 ALTER TABLE `recipe_ingredient` DISABLE KEYS */;
INSERT INTO `recipe_ingredient` VALUES (7,'tbsp',6,'scoop',22,1),(8,'tortillas',4,'placed on plate',22,2),(9,'grams',175,'shredded',22,3),(10,'tsp',1,'scoop',22,4),(11,'onion',1,'chopped',22,5),(12,'grams',220,'baked',22,6),(13,'tsp',1,'scoop',23,7),(14,'cup',1,'melt',23,8),(15,'cup',1,'scoop',23,9),(16,'eggs',2,'beat',23,10),(17,'bananas',2,'beat',23,11),(18,'cups',2,'scoop',23,12),(19,'pound',1,'sliced',24,13),(20,'tbsp',2,'scoop',24,14),(21,'ounces',28,'crushed',24,15),(22,'cup',1,'poured',24,16),(23,'pound',1,'boiled',24,17),(24,'tbsp',7,'scooped',25,18),(25,'tbsp',7,'scooped',25,19),(26,'tbsp',3,'sprinkled to taste',25,20),(27,'tbsp',3,'sprinkled to taste',25,21),(28,'cup',1,'cold',25,22),(29,'cup',1,'cold',25,23),(30,'ounces',28,'fillets, thick',25,24),(31,'pounds',2,'washed and cut',25,25),(32,'liter',1,'scooped',25,26),(33,'cup',1,'softened',26,8),(34,'cup',1,'scooped',26,9),(35,'cup',1,'scooped',26,27),(36,'tsp',2,'poured',26,28),(37,'eggs',2,'cracked',26,10),(38,'cup',3,'scooped',26,12),(39,'tsp',1,'scooped',26,7),(40,'tsp',1,'scooped',26,19),(41,'tsp',1,'scooped',26,20),(42,'cup',2,'chunked or chopped',26,29),(43,'cup',1,'picked and washed',27,30),(44,'cup',1,'picked and washed',27,31),(45,'inch',1,'fresh peeled',27,32),(46,'fruit',1,'peeled',27,33),(47,'fruit',1,'peeled',27,34),(48,'cubes',15,'optional',27,35),(49,'cup',1,'picked and washed',28,36),(50,'dash',1,'sprinked',28,37),(51,'tsp',5,'scooped',28,38),(52,'cup',1,'scooped',29,12),(53,'cup',1,'scooped',29,39),(54,'cup',1,'scooped',29,9),(55,'tsp',1,'scooped',29,20),(56,'tbsp',1,'scooped',29,19),(57,'cup',1,'poured',29,40),(58,'cup',1,'poured',29,41),(64,'Steaks',2,'Pat Dry',30,42),(65,'tsp',1,'scooped',30,20),(66,'tbsp',3,'scooped',30,8),(67,'Cloves',3,'smashed',30,43),(68,'sprigs',3,'whole',30,44),(69,'bunch',1,'trimmed',31,45),(70,'tbsp',3,'poured',31,38),(71,'tbsp',5,'grated, optional',31,46),(72,'Clove',1,'minced, optional',31,43),(73,'tsp',1,'scooped',31,20),(74,'tsp',1,'scooped',31,21),(75,'tbsp',1,'squeezed, optional',31,47);
/*!40000 ALTER TABLE `recipe_ingredient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 12:19:46

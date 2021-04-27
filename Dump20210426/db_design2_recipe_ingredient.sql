-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
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
  `ingredient_ingredient_id` int DEFAULT NULL,
  `recipe_recipe_id` int DEFAULT NULL,
  PRIMARY KEY (`recipe_ingredient_id`),
  KEY `recipe_ingredient_to_recipes_idx` (`recipe_id`),
  KEY `recipe_ingredient_to_ingredients_idx` (`ingredient_id`),
  KEY `FKoqhbi6mqufqhwka6hm5bnf24g` (`ingredient_ingredient_id`),
  KEY `FKsp837utrqj9c2uetnqvomquhc` (`recipe_recipe_id`),
  CONSTRAINT `FKoqhbi6mqufqhwka6hm5bnf24g` FOREIGN KEY (`ingredient_ingredient_id`) REFERENCES `ingredients` (`ingredient_id`),
  CONSTRAINT `FKsp837utrqj9c2uetnqvomquhc` FOREIGN KEY (`recipe_recipe_id`) REFERENCES `recipes` (`recipe_id`),
  CONSTRAINT `recipe_ingredient_to_ingredients` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recipe_ingredient_to_recipes` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_ingredient`
--

LOCK TABLES `recipe_ingredient` WRITE;
/*!40000 ALTER TABLE `recipe_ingredient` DISABLE KEYS */;
INSERT INTO `recipe_ingredient` VALUES (7,'tbsp',6,'scoop',22,1,NULL,NULL),(8,'tortillas',4,'placed on plate',22,2,NULL,NULL),(9,'grams',175,'shredded',22,3,NULL,NULL),(10,'tsp',1,'scoop',22,4,NULL,NULL),(11,'onion',1,'chopped',22,5,NULL,NULL),(12,'grams',220,'baked',22,6,NULL,NULL),(13,'tsp',1,'scoop',23,7,NULL,NULL),(14,'cup',1,'melt',23,8,NULL,NULL),(15,'cup',1,'scoop',23,9,NULL,NULL),(16,'eggs',2,'beat',23,10,NULL,NULL),(17,'bananas',2,'beat',23,11,NULL,NULL),(18,'cups',2,'scoop',23,12,NULL,NULL),(19,'pound',1,'sliced',24,13,NULL,NULL),(20,'tbsp',2,'scoop',24,14,NULL,NULL),(21,'ounces',28,'crushed',24,15,NULL,NULL),(22,'cup',1,'poured',24,16,NULL,NULL),(23,'pound',1,'boiled',24,17,NULL,NULL),(24,'tbsp',7,'scooped',25,18,NULL,NULL),(25,'tbsp',7,'scooped',25,19,NULL,NULL),(26,'tbsp',3,'sprinkled to taste',25,20,NULL,NULL),(27,'tbsp',3,'sprinkled to taste',25,21,NULL,NULL),(28,'cup',1,'cold',25,22,NULL,NULL),(29,'cup',1,'cold',25,23,NULL,NULL),(30,'ounces',28,'fillets, thick',25,24,NULL,NULL),(31,'pounds',2,'washed and cut',25,25,NULL,NULL),(32,'liter',1,'scooped',25,26,NULL,NULL),(33,'cup',1,'softened',26,8,NULL,NULL),(34,'cup',1,'scooped',26,9,NULL,NULL),(35,'cup',1,'scooped',26,27,NULL,NULL),(36,'tsp',2,'poured',26,28,NULL,NULL),(37,'eggs',2,'cracked',26,10,NULL,NULL),(38,'cup',3,'scooped',26,12,NULL,NULL),(39,'tsp',1,'scooped',26,7,NULL,NULL),(40,'tsp',1,'scooped',26,19,NULL,NULL),(41,'tsp',1,'scooped',26,20,NULL,NULL),(42,'cup',2,'chunked or chopped',26,29,NULL,NULL),(43,'cup',1,'picked and washed',27,30,NULL,NULL),(44,'cup',1,'picked and washed',27,31,NULL,NULL),(45,'inch',1,'fresh peeled',27,32,NULL,NULL),(46,'fruit',1,'peeled',27,33,NULL,NULL),(47,'fruit',1,'peeled',27,34,NULL,NULL),(48,'cubes',15,'optional',27,35,NULL,NULL),(49,'cup',1,'picked and washed',28,36,NULL,NULL),(50,'dash',1,'sprinked',28,37,NULL,NULL),(51,'tsp',5,'scooped',28,38,NULL,NULL),(52,'cup',1,'scooped',29,12,NULL,NULL),(53,'cup',1,'scooped',29,39,NULL,NULL),(54,'cup',1,'scooped',29,9,NULL,NULL),(55,'tsp',1,'scooped',29,20,NULL,NULL),(56,'tbsp',1,'scooped',29,19,NULL,NULL),(57,'cup',1,'poured',29,40,NULL,NULL),(58,'cup',1,'poured',29,41,NULL,NULL);
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

-- Dump completed on 2021-04-26 21:06:41

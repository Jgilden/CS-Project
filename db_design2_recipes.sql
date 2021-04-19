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
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `instructions` varchar(45) DEFAULT NULL,
  `prep_time` int DEFAULT NULL,
  `cook_time` int DEFAULT NULL,
  `serving_size` int DEFAULT NULL,
  `dietary_restriction` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `recipes_to_user_idx` (`user_id`),
  KEY `recipes_to_dietary_restriction_idx` (`dietary_restriction`),
  CONSTRAINT `recipes_to_dietary_restrction` FOREIGN KEY (`dietary_restriction`) REFERENCES `dietary_restriction` (`dietary_restriction`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recipes_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (22,'Fish Tacos','Bake fish, make salad, spread mayo, combine',30,30,4,'Pescatarian',1),(23,'Banana Bread','Mix all ingredients, put in pan, Bake at 350',30,60,6,'Nut free',1),(24,'Pasta with Sausage','boil pasta/drain water. add sauce and sausage',5,30,4,'No restriction',1),(25,'Fish and Chips','Batter fish. Fry fish & fries. Let fish rest.',50,35,4,'Pescatarian',2),(26,'Chocolate Chip Cookie','Mix ingredients. Bake at 375 degrees.',8,10,6,'Vegetarian',2),(27,'Red Grapefruit & Ginger Green Juice','Feed leaves through juicer. add other ingred',10,10,1,'Vegan',2),(28,'Nut free pesto sauce','Combine all ingredients',10,1,1,'Nut Free',3),(29,'Vegan Cornbread','Combine all ingredients. Spread on pan. Bake.',10,35,12,'Vegan',3),(30,'Stove-Top Steak','Season steak. Heat pan. Cook steak to prefere',10,35,12,'No restriction',4),(31,'Oven-Roasted Asparagus','Heat oven. Oil asparagus. Roast for 15 mins.',5,15,4,'Vegan',4);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 12:19:45

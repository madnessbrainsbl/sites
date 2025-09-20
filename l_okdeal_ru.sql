-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: l_okdeal_ru
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` int DEFAULT NULL,
  `slug` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_page`
--

DROP TABLE IF EXISTS `category_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_page` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_page` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_page`
--

LOCK TABLES `category_page` WRITE;
/*!40000 ALTER TABLE `category_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address` json DEFAULT NULL,
  `contacts` json DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `title` text COLLATE utf8mb4_unicode_ci,
  `title_2` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `title_3` text COLLATE utf8mb4_unicode_ci,
  `description_2` text COLLATE utf8mb4_unicode_ci,
  `title_4` text COLLATE utf8mb4_unicode_ci,
  `title_5` text COLLATE utf8mb4_unicode_ci,
  `icons` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'[{\"url\": null, \"image\": null, \"title\": \"г. Краснодар, ул. Фрунзе 186/1, 1 этаж\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": \"г. Подольск, Домодедовское шоссе 1Б\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": \"г. Санкт-Петербург, Колпинский район, 3 посёлок Сапёрный, территория предприятия Балтика\", \"video\": null, \"category\": \"kitchens\"}]','[{\"url\": \"whatsapp\", \"image\": null, \"title\": \"+7 958 500 85 56\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"phone\", \"image\": null, \"title\": \"8 800 300 85 56\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"envelope\", \"image\": null, \"title\": \"darinameb@mail.ru\", \"video\": null, \"category\": \"kitchens\"}]',NULL,'Современное производство','Запишитесь на экскурсию','Посетите фабрику с которой мы работаем - посмотрите как Darina делает мебель и получите скидку 5%','О нас','Более двух десятилетий компания Darina изготавливает мебель, которая становятся пространством для творчества в любом доме. Мы создаем оригинальные проекты, точно соответствующие индивидуальным требованиям и отличающиеся свободой сочетаний цветов и форм. Воплощая свои индивидуальные мечты, наши обученные специалисты по мебели будут рядом  с вами с лучшими советами.  Darina — это высокое качество изготовления, компетентное планирование и инновации.','Миссия Darina','Делаем жизнь комфортнее','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/garant-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}]','2025-01-10 09:31:00','2025-01-14 07:48:57','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}]');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,5,'name','text','Name',0,1,1,1,1,1,'{}',2),(24,5,'url','text','Url',0,1,1,1,1,1,'{}',3),(25,5,'icon','image','Icon',0,1,1,1,1,1,'{}',4),(26,5,'category','select_dropdown','Category',0,1,1,1,1,1,'{\"default\":\"MenuLinks\",\"options\":{\"option1\":\"MenuLinks\",\"option2\":\"MenuIco\"}}',5),(27,5,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(28,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(29,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(30,10,'title','text','Title',0,1,1,1,1,1,'{}',2),(31,10,'slug','text','Slug',0,1,1,1,1,1,'{}',3),(32,10,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{}',4),(33,10,'slider_images','multiple_images','Slider Images',0,1,1,1,1,1,'{}',5),(34,10,'category_links','custom_repeater','Category Links',0,1,1,1,1,1,'{}',6),(35,10,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',8),(36,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(37,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(38,10,'text_descr','rich_text_box','Text Descr',0,1,1,1,1,1,'{}',7),(39,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(40,12,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',4),(41,12,'text_description','text','Text Description',0,1,1,1,1,1,'{}',6),(42,12,'image_slider','custom_repeater','Image Slider',0,1,1,1,1,1,'{}',8),(43,12,'category_title','text','Category Title',0,1,1,1,1,1,'{}',9),(44,12,'category','custom_repeater','Category',0,1,1,1,1,1,'{}',10),(45,12,'video_slider','custom_repeater_description','Video Slider',0,1,1,1,1,1,'{}',11),(46,12,'section_img','media_picker','Section Img',0,1,1,1,1,1,'{}',12),(47,12,'section_img_mobile','media_picker','Section Img Mobile',0,1,1,1,1,1,'{}',13),(48,12,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',14),(49,12,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',15),(50,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',16),(51,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),(52,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(53,13,'name','text','Name',0,1,1,1,1,1,'{}',2),(54,13,'slug','text','Slug',0,1,1,1,1,1,'{}',3),(55,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(56,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(63,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(64,15,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',2),(65,15,'text_description','rich_text_box','Text Description',0,1,1,1,1,1,'{}',5),(66,15,'image_slider','custom_repeater','Image Slider',0,1,1,1,1,1,'{}',6),(67,15,'category_title','text','Category Title',0,1,1,1,1,1,'{}',7),(68,15,'category','gallery_repeater','Category',0,1,1,1,1,1,'{}',8),(69,15,'title_h2','text','Title H2',0,1,1,1,1,1,'{}',9),(70,15,'video_url_2','media_picker','Video Url 2',0,1,1,1,1,1,'{}',10),(71,15,'text_description_2','text','Text Description 2',0,1,1,1,1,1,'{}',12),(72,15,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',13),(73,15,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',18),(74,15,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',19),(75,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',20),(76,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(77,16,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{}',3),(78,16,'title_h2','text','Title H2',0,1,1,1,1,1,'{}',5),(79,16,'image_slider','custom_repeater','Image Slider',0,1,1,1,1,1,'{}',7),(80,16,'category_title','text','Category Title',0,1,1,1,1,1,'{}',9),(81,16,'category','custom_repeater','Category',0,1,1,1,1,1,'{}',10),(83,16,'call_action_title','text','Call Action Title',0,1,1,1,1,1,'{}',11),(84,16,'call_to_action_img','text','Call To Action Img',0,1,1,1,1,1,'{}',12),(85,16,'description_slider','custom_repeater_description','Description Slider',0,1,1,1,1,1,'{}',13),(86,16,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',15),(87,16,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',16),(88,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),(89,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(90,17,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{}',2),(91,17,'text_description','rich_text_box','Text Description',0,1,1,1,1,1,'{}',4),(92,17,'image_slider','custom_repeater','Image Slider',0,1,1,1,1,1,'{}',5),(93,17,'category_title','text','Category Title',0,1,1,1,1,1,'{}',6),(94,17,'category','gallery_repeater','Category',0,1,1,1,1,1,'{}',7),(95,17,'title_h2','text','Title H2',0,1,1,1,1,1,'{}',8),(96,17,'video_url_2','media_picker','Video Url 2',0,1,1,1,1,1,'{}',9),(97,17,'text_description_2','rich_text_box','Text Description 2',0,1,1,1,1,1,'{}',11),(98,17,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',12),(99,17,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',13),(100,17,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',14),(101,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',15),(102,18,'id','text','Id',1,0,0,0,0,0,'{}',1),(103,18,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',2),(104,18,'text_description','rich_text_box','Text Description',0,1,1,1,1,1,'{}',4),(105,18,'image_slider','custom_repeater','Image Slider',0,1,1,1,1,1,'{}',6),(106,18,'title_h2','text','Title H2',0,1,1,1,1,1,'{}',7),(107,18,'category_slide','gallery_repeater','Category Slide',0,1,1,1,1,1,'{}',8),(108,18,'title_h2_2','text','Title H2 2',0,1,1,1,1,1,'{}',9),(109,18,'video_url_2','media_picker','Video Url 2',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',10),(110,18,'text_description_2','rich_text_box','Text Description 2',0,1,1,1,1,1,'{}',12),(111,18,'description_slider','custom_repeater_description','Description Slider',0,1,1,1,1,1,'{}',13),(112,18,'title_h2_3','text','Title H2 3',0,1,1,1,1,1,'{}',14),(113,18,'video_url_3','media_picker','Video Url 3',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',15),(114,18,'text_description_3','rich_text_box','Text Description 3',0,1,1,1,1,1,'{}',17),(115,18,'call_tocation','text_area','Call Tocation',0,1,1,1,1,1,'{}',18),(116,18,'call_tocation_2','rich_text_box','Call Tocation 2',0,1,1,1,1,1,'{}',19),(117,18,'video_url_4','media_picker','Video Url 4',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',20),(118,18,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',22),(119,18,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',23),(120,18,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',24),(121,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',25),(122,16,'slug','text','Slug',0,1,1,1,1,1,'{}',2),(123,16,'description_text','rich_text_box','Description Text',0,1,1,1,1,1,'{}',6),(124,16,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',14),(125,16,'category_slide_color','color_slides','Category Slide Color',0,1,1,1,1,1,'{}',8),(126,18,'slug','text','Slug',0,1,1,1,1,1,'{}',26),(127,17,'slug','text','Slug',0,1,1,1,1,1,'{}',16),(128,17,'title_description','text','Title Description',0,1,1,1,1,1,'{}',3),(129,17,'title_description_2','text','Title Description 2',0,1,1,1,1,1,'{}',10),(130,15,'slug','text','Slug',0,1,1,1,1,1,'{}',21),(131,15,'title_description','text','Title Description',0,1,1,1,1,1,'{}',4),(132,15,'title_description_2','text','Title Description 2',0,1,1,1,1,1,'{}',11),(133,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(134,19,'video_url','media_picker','Video Url',0,1,1,1,1,1,'{}',3),(135,19,'text_description','rich_text_box','Text Description',0,1,1,1,1,1,'{}',4),(136,19,'image_galledy','custom_repeater','Image Gallery ',0,1,1,1,1,1,'{}',5),(137,19,'video_title','text','Video Title',0,1,1,1,1,1,'{}',6),(138,19,'video_back','media_picker','Video Back',0,1,1,1,1,1,'{}',8),(139,19,'image_galledy_2','custom_repeater','Image Gallery 2',0,1,1,1,1,1,'{}',9),(140,19,'image_galledy_description','text','Image Gallery Description',0,1,1,1,1,1,'{}',10),(141,19,'image_galledy_3','custom_repeater_description','Image Gallery 3',0,1,1,1,1,1,'{}',11),(142,19,'text_desccription','text','Text Desccription',0,1,1,1,1,1,'{}',12),(143,19,'slug','text','Slug',0,1,1,1,1,1,'{}',13),(144,19,'template','text','Template',0,1,1,1,1,1,'{}',14),(145,19,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',15),(146,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',16),(147,19,'title','text','Title',0,1,1,1,1,1,'{}',2),(148,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(149,20,'phone','text','Phone',0,1,1,1,1,1,'{}',2),(150,20,'email','text','Email',0,1,1,1,1,1,'{}',3),(151,20,'social','custom_repeater','Social',0,1,1,1,1,1,'{}',4),(152,20,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(153,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(154,16,'title','text','Title',0,1,1,1,1,1,'{}',18),(155,20,'social_white','custom_repeater','Social White',0,1,1,1,1,1,'{}',5),(156,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(157,21,'address','custom_repeater','Address',0,1,1,1,1,1,'{}',2),(158,21,'contacts','custom_repeater','Contacts',0,1,1,1,1,1,'{}',3),(159,21,'video','media_picker','Video',0,1,1,1,1,1,'{}',4),(160,21,'title','text','Title',0,1,1,1,1,1,'{}',5),(161,21,'title_2','text','Title 2',0,1,1,1,1,1,'{}',6),(162,21,'description','text','Description',0,1,1,1,1,1,'{}',7),(163,21,'title_3','text','Title 3',0,1,1,1,1,1,'{}',8),(164,21,'description_2','text','Description 2',0,1,1,1,1,1,'{}',9),(165,21,'title_4','text','Title 4',0,1,1,1,1,1,'{}',10),(166,21,'title_5','text','Title 5',0,1,1,1,1,1,'{}',11),(167,21,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',12),(168,21,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',13),(169,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(170,15,'cart_video_title','text','Cart Video Title',0,1,1,1,1,1,'{}',14),(171,15,'cart_video','custom_repeater_description','Cart Video',0,1,1,1,1,1,'{}',15),(172,15,'cart_video_title_bottom','text','Cart Video Title Bottom',0,1,1,1,1,1,'{}',16),(173,15,'video_url_3','media_picker','Video Url 3',0,1,1,1,1,1,'{}',17),(174,21,'video_reviews','custom_repeater','Video Reviews',0,1,1,1,1,1,'{}',15),(175,23,'id','text','Id',1,0,0,0,0,0,'{}',1),(176,23,'reviews','custom_repeater','Reviews',0,1,1,1,1,1,'{}',2),(177,23,'icons','custom_repeater','Icons',0,1,1,1,1,1,'{}',3),(178,23,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(179,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(180,18,'video_url_m','media_picker','Video Url M',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',3),(181,18,'video_url_2_m','media_picker','Video Url 2 M',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',11),(182,18,'video_url_4_m','media_picker','Video Url 4 M',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',21),(183,18,'video_url_3_m','media_picker','Video Url 3 M',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',16),(184,15,'video_url_m','media_picker','Video Url M',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',3),(185,12,'title','text','Title',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',2),(186,12,'description','text','Description',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',3),(187,12,'video_url_m','media_picker','Video Url M',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',5),(188,12,'text_description_2','text','Text Description 2',0,1,1,1,1,1,'{}',7),(189,16,'video_url_m','media_picker','Video Url M',0,1,1,1,1,1,'{}',4),(190,16,'description','text','Description',0,1,1,1,1,1,'{}',19),(191,18,'text_description_top','rich_text_box','Text Description Top',0,1,1,1,1,1,'{}',5),(192,18,'title','text','Title',0,1,1,1,1,1,'{}',27),(193,18,'description','text','Description',0,1,1,1,1,1,'{}',28),(194,19,'text_color','text','Text Color',0,1,1,1,1,1,'{}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(5,'header','header','Header','Headers','voyager-list','App\\Models\\Header',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-13 10:09:59','2024-12-13 11:05:07'),(10,'pages','pages','Page','Pages',NULL,'App\\Models\\Page',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-17 10:38:30','2024-12-17 11:07:06'),(12,'main_page','main-page','Main Page','Main Pages',NULL,'App\\Models\\MainPage',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-19 10:32:02','2025-02-10 08:04:10'),(13,'categories','categories','Category','Categories',NULL,'App\\Models\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2024-12-21 08:20:38','2024-12-21 08:20:38'),(15,'garderobnye','garderobnye','Garderobnye','Garderobnyes',NULL,'App\\Models\\Garderobnye',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-23 07:12:32','2025-02-06 12:09:03'),(16,'kitchen','kitchen','Kitchen','Kitchens',NULL,'App\\Models\\Kitchen',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-23 07:16:14','2025-02-10 10:34:48'),(17,'prikhozhie','prikhozhie','Prikhozhie','Prikhozhies',NULL,'App\\Models\\Prikhozhie',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-23 07:19:13','2024-12-25 09:01:03'),(18,'shkaf','shkaf','Shkaf','Shkafs',NULL,'App\\Models\\Shkaf',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-23 07:24:37','2025-02-10 11:13:39'),(19,'kitchen_template','kitchen-template','Kitchen Template','Kitchen Templates',NULL,'App\\Models\\KitchenTemplate',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2024-12-25 10:29:11','2025-05-19 10:31:47'),(20,'main_settings','main-settings','Main Setting','Main Settings',NULL,'App\\Models\\MainSetting',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2025-01-09 06:04:23','2025-01-10 09:08:48'),(21,'contacts','contacts','Contact','Contacts',NULL,'App\\Models\\Contacts',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2025-01-10 09:22:20','2025-01-13 10:34:18'),(23,'reviews_icons','reviews-icons','Reviews Icon','Reviews Icons',NULL,'App\\Models\\ReviewsIcons',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2025-01-23 08:51:41','2025-01-23 08:51:41');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `socials` json DEFAULT NULL,
  `paymants` json DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garderobnye`
--

DROP TABLE IF EXISTS `garderobnye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garderobnye` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `text_description` text COLLATE utf8mb4_unicode_ci,
  `image_slider` json DEFAULT NULL,
  `category_title` text COLLATE utf8mb4_unicode_ci,
  `category` json DEFAULT NULL,
  `title_h2` text COLLATE utf8mb4_unicode_ci,
  `video_url_2` text COLLATE utf8mb4_unicode_ci,
  `text_description_2` text COLLATE utf8mb4_unicode_ci,
  `icons` json DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `title_description` text COLLATE utf8mb4_unicode_ci,
  `title_description_2` text COLLATE utf8mb4_unicode_ci,
  `cart_video_title` text COLLATE utf8mb4_unicode_ci,
  `cart_video` json DEFAULT NULL,
  `cart_video_title_bottom` text COLLATE utf8mb4_unicode_ci,
  `video_url_3` text COLLATE utf8mb4_unicode_ci,
  `video_url_m` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garderobnye`
--

LOCK TABLES `garderobnye` WRITE;
/*!40000 ALTER TABLE `garderobnye` DISABLE KEYS */;
INSERT INTO `garderobnye` VALUES (1,'garderobnye/DARINA гардеробная ПК 1.mp4','<p>Гардеробная на заказ - возможность совместить функциональность и дизайн со стилистикой вашего дома, раскрыть свою индивидуальность, учесть личные характеристики, черты и привычки</p>\r\n<p>&nbsp;</p>\r\n<p>Наши лучшие мастера будут рады бесплатно проконсультировать вас и помочь создать проект вашей мечты</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner3.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner4.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner5.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Идеи для вашей  гардеробной на заказ','[{\"title\": \"Берл\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/berl/74148a205382097.66ba342a7c61c.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/berl/a2e550205382097.66ba342a7f005.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/berl/cc2b37205382097.66ba342a7d9b8.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/berl/d6eee0205382097.66ba342a7e0a8.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/berl/f268bc205382097.66ba342a7e9ae.jpg\"}], \"description\": \"<ul>\\r\\n<li><span style=\\\"color: rgb(0, 0, 0);\\\"><strong>Эстетика:</strong> выразительная деревянная фактура.</span></li>\\r\\n<li><span style=\\\"color: rgb(0, 0, 0);\\\"><strong>Простор:</strong> остров для удобства организации и стиля.</span></li>\\r\\n<li><span style=\\\"color: rgb(0, 0, 0);\\\"><strong>Устойчивость:</strong> прочные материалы для долговечности.</span></li>\\r\\n<li><span style=\\\"color: rgb(0, 0, 0);\\\"><strong>Функциональность:</strong> грамотное распределение пространства для удобства.</span></li>\\r\\n<li><span style=\\\"color: rgb(0, 0, 0);\\\"><strong>Оригинальность:</strong> уникальный дизайн, подчеркивающий индивидуальность.</span></li>\\r\\n</ul>\"}, {\"title\": \"Дели\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/deli/%D0%B025-1.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/deli/%D0%B025%D0%B0-1-600x553.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/deli/%D0%B025%D0%B1-1-600x553.jpg\"}], \"description\": \"<ul>\\r\\n<li><strong>Стиль вне времени:</strong> Классика, которая никогда не выйдет из моды.</li>\\r\\n<li><strong>Простор и контраст: </strong>Черный углубляет, белый расширяет, создавая динамику.</li>\\r\\n<li><strong>Чистота и элегантность:</strong> Белый - это порядок, черный - это утонченность.</li>\\r\\n<li><strong>Ваш стиль в фокусе:</strong> Гардеробная не отвлекает от вашего образа, а подчеркивает его.</li>\\r\\n</ul>\"}, {\"title\": \"Лира\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/lira/5-1-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/lira/5%D0%B0-1-600x553.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/lira/5%D0%B1-1-600x553.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Гардеробная в стиле &ldquo;Скандинавское бохо&rdquo;.</span> От основного помещения гардеробная отделена раздвижными дверями и располагается за телевизором.</p>\\r\\n<ul>\\r\\n<li><strong>Чистота и тепло:&nbsp;</strong>Сочетание белого и дерева создает атмосферу спокойствия и уюта.</li>\\r\\n</ul>\"}, {\"title\": \"Марс\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/Maes/%D0%B012-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/Maes/%D0%B012%D0%B0-scaled-600x567.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/Maes/%D0%B012%D0%B1-scaled-600x567.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Тепло, свет, пространство.</span></p>\\r\\n<ul>\\r\\n<li><strong>Теплая атмосфера:</strong> Деревянная фактура создает уют и комфорт.</li>\\r\\n<li><strong>Функциональность и стиль: </strong>Остров предоставляет дополнительное пространство для хранения и организации вещей.</li>\\r\\n<li>Подсветка делает гардеробную более яркой и стильной.</li>\\r\\n</ul>\"}, {\"title\": \"Рон\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/ron/3-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/ron/3%D0%B0.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/ron/3%D0%B1.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Вместительная и элегантная модель в современном стиле.</span> <strong>Она сочетает в себе продуманную и тщательно рассчитанную эргономичность.</strong> <br><br>Безупречное качество, броский внешний вид и выверенные пропорции позволят вам разместить эту гардеробную в любой зоне вашей квартиры или дома.</p>\"}, {\"title\": \"Спарк\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/spark/277e61207245225.66d9e93907e6b.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/spark/519aef207245225.66d9e939142c4.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/spark/70278a207245225.66d9e939139cb.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/spark/88dfef207245225.66d9e939085e4.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/spark/a1f0b2207245225.66d9e93908d82.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Бежевая классика: гардеробная, которая никогда не выйдет из моды.</span></p>\\r\\n<ul>\\r\\n<li><strong>Стиль и функциональность в одном:</strong> бежевая гардеробная идеально впишется в любой интерьер.</li>\\r\\n<li><strong>Вечная элегантность: </strong>бежевый цвет - это символ классики и элегантности, которая никогда не выйдет из моды.</li>\\r\\n<li>Бежевый цвет создает ощущение тепла.&nbsp;</li>\\r\\n</ul>\"}, {\"title\": \"Тодо\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/todo/%D0%B033-1-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/todo/%D0%B033%D0%B0-1-600x558.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/todo/%D0%B033%D0%B1-1-600x553.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Порядок и комфорт:</span> больше свободного пространства и легкость в поиске нужных вещей. <br><br></p>\\r\\n<ul>\\r\\n<li><strong>Прозрачность и элегантность:</strong> стеклянные фасады создают ощущение простора и легкости.</li>\\r\\n<li><strong>Индивидуальный подход:</strong> мы создадим гардеробную, которая идеально впишется в вашу спальню.&nbsp;<br><br><br></li>\\r\\n</ul>\"}, {\"title\": \"Форт\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/garderobnye/fort/2-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/fort/2%D0%B0.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/garderobnye/fort/2%D0%B1-600x553.jpg\"}], \"description\": \"<p><strong>Гардеробная Форт - </strong><span style=\\\"color: rgb(212, 96, 59);\\\">функциональная система хранения и украшение современного дома.</span> <strong>Игра контрастов белого и серого создает динамику.</strong><br><br></p>\\r\\n<ul>\\r\\n<li><strong>Каждая линия -</strong> ясность и простота. Ничего лишнего.</li>\\r\\n<li><strong>Элегантная грубость:</strong> Бетон, металл, дерево - не конфликт, а гармония.</li>\\r\\n</ul>\"}]','Идеальное пространство','garderobnye/Гардеробная видео №2 3.mp4',' Гардеробная, созданная по индивидуальным размерам, позволит вам               контролировать <br /> и адаптировать пространство под любое               настроение и событие. Делайте выбор легко <br /> и с               удовольствием!','[{\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/rassrocka-b.svg\", \"title\": \"Рассрочка\", \"video\": null, \"category\": \"kitchens\"}]','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','2024-12-25 10:00:00','2025-02-12 10:27:12',NULL,'Где вещи находят свой дом','Индивидуальный стиль  с гардеробной на заказ.','Принципы «Модулор» Ле Корбюзье: продуманные пропорции, оптимальное использование пространства.','[{\"image\": null, \"title\": \"Ваше пространство —ваш холст!\", \"video\": \"https://l.okdeal.ru/storage/Dressingrooms2.mp4\", \"description\": \"<p>Создайте уникальную гардеробную. Каждый элемент &mdash; это кисть на вашем холсте. Выбирая дизайн, отделку и функциональные зоны, вы задаёте стиль своему пространству.</p>\"}, {\"image\": null, \"title\": \"Функциональный мир порядка\", \"video\": \"https://l.okdeal.ru/storage/Dressingrooms1.mp4\", \"description\": \"<p>Забудьте о беспорядке и хаосе! Индивидуальные размеры гардеробной помогут вам эффективно организовать вещи, создавая пространство, где каждая вещь будет на своем месте.</p>\"}]','Создайте уникальную гардеробную. Каждый элемент — это кисть на вашем холсте','garderobnye/Фабрика DARINA эскиз гардеробной.mp4','garderobnye/DARINA гардеробная Моб.mp4');
/*!40000 ALTER TABLE `garderobnye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header`
--

DROP TABLE IF EXISTS `header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header`
--

LOCK TABLES `header` WRITE;
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` VALUES (1,'Процесс заказа',NULL,NULL,'option1','2024-12-13 10:17:00','2024-12-13 10:57:21'),(2,'Отзывы',NULL,NULL,'option1','2024-12-13 10:20:00','2024-12-13 10:55:56'),(3,'Материалы',NULL,NULL,'option1','2024-12-13 10:56:15','2024-12-13 10:56:15'),(4,'О фабрике',NULL,NULL,'option1','2024-12-13 10:56:26','2024-12-13 10:56:26'),(6,'Контакты',NULL,NULL,'option1','2024-12-13 10:56:35','2024-12-13 10:56:35'),(8,'кухни',NULL,'header/December2024/dte1i36MKLMzIxRgYKpT.png','option2','2024-12-13 11:04:00','2024-12-13 11:05:17');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen`
--

DROP TABLE IF EXISTS `kitchen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitchen` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `title_h2` text COLLATE utf8mb4_unicode_ci,
  `image_slider` json DEFAULT NULL,
  `category_title` text COLLATE utf8mb4_unicode_ci,
  `category` json DEFAULT NULL,
  `category_slide_color` json DEFAULT NULL,
  `call_action_title` text COLLATE utf8mb4_unicode_ci,
  `call_to_action_img` text COLLATE utf8mb4_unicode_ci,
  `description_slider` json DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `description_text` text COLLATE utf8mb4_unicode_ci,
  `icons` json DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `video_url_m` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen`
--

LOCK TABLES `kitchen` WRITE;
/*!40000 ALTER TABLE `kitchen` DISABLE KEYS */;
INSERT INTO `kitchen` VALUES (1,'kitchen/GarderobnyeN3.mp4','Кухня, которая уникальна, как и вы!','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner3.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner4.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner5.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Идеи для вашей кухни на заказ','[{\"url\": \"emerald-kitchen\", \"image\": \"https://l.okdeal.ru/storage/kitchen/resopal-pro_31006_p4_88718.jpg\", \"title\": \"Изумруд\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"viva\", \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_p1_150458-4.jpg\", \"title\": \"Кухня Вива\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"smart\", \"image\": \"https://l.okdeal.ru/storage/kitchen/smart2.jpeg\", \"title\": \"Кухня Смарт\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"top\", \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_m1_9.jpg\", \"title\": \"Кухня Топ\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"arizona\", \"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_MK02_A01_content2__1200_cda966064a.jpg\", \"title\": \"Кухня Аризона\", \"video\": null, \"category\": \"kitchens\"}]','[{\"color\": \"7eb0eb\", \"image\": \"https://l.okdeal.ru/storage/kitchen/blue.jpg\", \"video\": null}, {\"color\": \"a1c192\", \"image\": \"https://l.okdeal.ru/storage/kitchen/green.jpg\", \"video\": null}, {\"color\": \"ad796f\", \"image\": \"https://l.okdeal.ru/storage/kitchen/orange.jpg\", \"video\": null}, {\"color\": \"da969f\", \"image\": \"https://l.okdeal.ru/storage/kitchen/urban.jpg\", \"video\": null}]','Любые воплощения ваших идей',NULL,'[{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/get.aspx.jpeg\", \"title\": \"Место, в котором вам понравится жить\", \"video\": null, \"description\": \"<p>Кухня - это место, где семьи собираются по утрам и где простой ужин может превратиться в праздник. Кухня является сердцем дома, и мы разрабатываем их в соответствии с вашими личными потребностями</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/image1.png\", \"title\": \"Как выбрать кухню?\", \"video\": null, \"description\": \"<p>Ваши потребности и образ жизни окажут значительное влияние на выбор дизайнерской кухни, которая лучше всего подходит для Вас. Какую технику вы предпочитаете, как часто приглашаете семью и друзей на ужин, какой у вас бюджет? На основе данных вопросов у Вас сформируется список</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/image3.png\", \"title\": \"Функциональность на высшем уровне\", \"video\": null, \"description\": \"<p>Увеличьте полезное пространство с помощью отсеков и продуманных систем хранения. Каждая деталь будет организована так, чтобы вам было удобно и приятно.</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/01_urban_green.1280x0-srcset.jpg\", \"title\": \"Идеальная планировка\", \"video\": null, \"description\": \"<p>Кухня, выполненная под индивидуальные размеры, идеально подходит именно для вашего пространства. Вам больше не нужно жертвовать удобством ради стиля &mdash; каждое движение будет естественным и свободным.</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/image323.png\", \"title\": \"Эксклюзивный дизайн \", \"video\": null, \"description\": \"<p>Забудьте о стандартных решениях! Вы сами выбираете материалы, цветовые схемы и отделку, создавая уникальную атмосферу, отражающую ваш характер и предпочтения.</p>\"}]','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"dressing_rooms\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"cabinets\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"work_areas\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"cabinets\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}]','2024-12-23 07:39:00','2025-05-07 09:16:39','kitchen','<p>Кухня на заказ - возможность совместить функциональность и дизайн со стилистикой вашего дома, раскрыть свою индивидуальность, учесть личные характеристики, черты и привычки. Такая кухня будет отражать именно вас</p>\r\n<p>&nbsp;</p>\r\n<p>Наши лучшие мастера будут рады бесплатно проконсультировать  вас и помочь создать проект вашей мечты.</p>','[{\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/garant-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/rassrocka-b.svg\", \"title\": \"Рассрочка\", \"video\": null, \"category\": \"kitchens\"}]','Кухни','kitchen/kuhMob.mp4',NULL);
/*!40000 ALTER TABLE `kitchen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen_template`
--

DROP TABLE IF EXISTS `kitchen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitchen_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `text_description` text COLLATE utf8mb4_unicode_ci,
  `image_galledy` json DEFAULT NULL,
  `video_title` text COLLATE utf8mb4_unicode_ci,
  `video_back` text COLLATE utf8mb4_unicode_ci,
  `image_galledy_2` json DEFAULT NULL,
  `image_galledy_description` text COLLATE utf8mb4_unicode_ci,
  `image_galledy_3` json DEFAULT NULL,
  `text_desccription` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `template` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `text_color` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_template`
--

LOCK TABLES `kitchen_template` WRITE;
/*!40000 ALTER TABLE `kitchen_template` DISABLE KEYS */;
INSERT INTO `kitchen_template` VALUES (1,'kitchen-template/z1.mp4','<p>Погрузитесь в атмосферу стиля с зелено-черной кухней, украшенной деревянными элементами. Создайте пространство, где каждая деталь радует глаз и вдохновляет на кулинарные шедевры!</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen1.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchenBox.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','МЕЧТЫ СБЫВАЮТСЯ','kitchen-template/zVideo.mp4','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm1.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelWarm2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm3.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm4.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm5.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/zimage1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Почувствуйте тепло общения и вкус каждого мгновения','[{\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen1.jpeg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen2.png\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen3.png\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm4.jpeg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchenBox_1.jpeg\", \"title\": \"    Преимущества зеленой кухни\", \"video\": null, \"description\": \"<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Природная гармония: Зелёный цвет в интерьере создает чувство спокойствия и умиротворения, способствуя повышению креативности и свободе мысли</li>\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Натуральные материалы и экологически чистые решения создают здоровую атмосферу для всей семьи</li>\\r\\n</ul>\\r\\n</ul>\\r\\n<p><img class=\\\"genn-AdvantageskitchenBox-listImage\\\" src=\\\"../../../src/assets/images/bg-image/bgadvantageskitchenBox.jpeg\\\" alt=\\\"Decorative\\\"></p>\\r\\n<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Зелёная кухня &mdash; это стиль и функциональность. Уникальный дизайн с гармоничными формами и текстурами превратит каждый прием пищи в настоящий праздник для глаз</li>\\r\\n</ul>\"}]','Каждый элемент радует глаз и удобен в использовании','emerald-kitchen','EmeraldKitchen','2024-12-25 10:36:00','2025-05-19 10:32:03','Кухня Изумруд','#000000'),(2,'kitchen-template/viva_3550_p1_150458-4.jpg','<p>БЕЛЫЕ КУХНИ ВСЕГДА АКТУАЛЬНЫ</p>\r\n<p>Это классический вариант, подходящий для любого дома. Белый цвет нейтральный и универсальный.</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_p1_150458-4.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_d5_20671.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]',NULL,'kitchen-template/vivabg.png','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_m2_20775.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_d1_20585.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_mood_20912.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_mood_20973.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_d2_20607.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_d7_21041.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Почувствуйте тепло общения и вкус каждого мгновения','[{\"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_mood_20895.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_mood_20857.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_d4_20660.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/viva/viva_3550_d7_21041.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/viva2.jpeg\", \"title\": null, \"video\": null, \"description\": \"<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Природная гармония: Зелёный цвет в интерьере создает чувство спокойствия и умиротворения, способствуя повышению креативности и свободе мысли</li>\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Натуральные материалы и экологически чистые решения создают здоровую атмосферу для всей семьи</li>\\r\\n</ul>\\r\\n</ul>\\r\\n<p><img class=\\\"genn-AdvantageskitchenBox-listImage\\\" src=\\\"../../../src/assets/images/bg-image/bgadvantageskitchenBox.jpeg\\\" alt=\\\"Decorative\\\"></p>\\r\\n<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Зелёная кухня &mdash; это стиль и функциональность. Уникальный дизайн с гармоничными формами и текстурами превратит каждый прием пищи в настоящий праздник для глаз</li>\\r\\n</ul>\"}]','Каждый элемент радует глаз и удобен в использовании','viva','EmeraldKitchen','2024-12-27 05:13:00','2025-03-03 07:43:12','Кухня Вива',NULL),(3,'kitchen-template/xl_smart-m_4641_riva_2111_p1-3.jpg','<p>Погрузитесь в атмосферу стиля с зелено-черной кухней, украшенной деревянными элементами. Создайте пространство, где каждая деталь радует глаз и вдохновляет на кулинарные шедевры!</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/smart1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/smart2.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]',NULL,'kitchen-template/переписка.png','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm1.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelWarm2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm3.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm4.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen-template/feelwarm5.jpeg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Почувствуйте тепло общения и вкус каждого мгновения','[{\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen1.jpeg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen2.png\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen3.png\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchen4.jpeg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen-template/bgadvantageskitchenBox_1.jpeg\", \"title\": \"Преимущества зеленой кухни\", \"video\": null, \"description\": \"<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Природная гармония: Зелёный цвет в интерьере создает чувство спокойствия и умиротворения, способствуя повышению креативности и свободе мысли</li>\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Натуральные материалы и экологически чистые решения создают здоровую атмосферу для всей семьи</li>\\r\\n</ul>\\r\\n</ul>\\r\\n<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Зелёная кухня &mdash; это стиль и функциональность. Уникальный дизайн с гармоничными формами и текстурами превратит каждый прием пищи в настоящий праздник для глаз</li>\\r\\n</ul>\"}]','Каждый элемент радует глаз и удобен в использовании','smart','EmeraldKitchen','2025-01-10 08:02:00','2025-07-12 06:47:10','Кухня Смарт',NULL),(4,'kitchen-template/top_1626_p1_0167.jpg','<p>ТАК ЖЕ ПРАКТИЧНО, КАК И ЭСТЕТИЧНО</p>\r\n<p>Акцентом кухни являются стеллажи с местом для личных вещей. Настенный блок имеет максимальное пространство для хранения</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_m3_0654.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_m1_0228.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Кухня в объятиях природы','kitchen-template/downloadedImage - 2024-10-23T182645_960-no-bg-preview (carve.photos).png','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_m3_0396.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d10_02722.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d10_0272.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d5_21573.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d16_0683.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_p2_0545.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Продуманная система хранения позволяет создать уютную и функциональную кухню, которая будет радовать вас каждый день','[{\"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d2_0588.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_p1_0492.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d5_0158.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_p1_0167.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/top/top_1626_d16_0698.jpg\", \"title\": null, \"video\": null, \"description\": \"<p>Преимущества серой кухни Эстетика: дерево придает кухне натуральный и уютный вид, создавая атмосферу комфорта и тепла Прочная и долговечная поверхность, устойчивая к царапинам, влаге и температурным изменениям, что обеспечивает длительный срок службы и сохранение первоначального внешнего вида кухонной мебели Психологическое воздействие: Сочетание деревянных текстур и серого цвета на кухне способствует созданию гармоничного и уравновешенного интерьера</p>\"}]','Каждый элемент радует глаз и удобен в использовании','top','EmeraldKitchen','2025-02-08 09:40:00','2025-03-03 07:59:35','Кухня Топ',NULL),(5,'kitchen-template/mainiim.jpg','<p>Эта современная кухня отличается стильным дизайном и высоким уровнем функциональности. Бежевый цвет фасадов впишется в любой дом и будет создавать спокойную и уютную атмосферу</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_MK02_A01_content2__1200_cda966064a.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/sdafsd.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Бежевый – цвет домашнего уюта','kitchen-template/Remove-bg.ai_1727906607891.png','{\"0\": {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_MK02_A01_content__1000_36e6e26231.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, \"1\": {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_iStock-869773514__1200_a4ddd5901d.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, \"2\": {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/kitchen3.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, \"4\": {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/kitchen2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, \"5\": {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/kitchen/kitchen5.jpg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}}','Заказывая бежевую кухню, вы выбираете атмосферу для своей жизни!','[{\"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_MK02_A01_content2__1200_cda966064a.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/mainiim55.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_MK02_A01_content2__1200_cda966064a_1.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/csm_MK02_A01_content2__1200_cda966064ahj.jpg\", \"title\": null, \"video\": null, \"description\": null}, {\"image\": \"https://l.okdeal.ru/storage/kitchen/arizona/mainiimfgh.jpg\", \"title\": \"Преимущества бежевой кухни\", \"video\": null, \"description\": \"<ul class=\\\"genn-AdvantageskitchenBox-ul\\\">\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Тепло и уют: Бежевый цвет создает атмосферу домашнего уюта, привлекая внимание и вызывая положительные эмоции</li>\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Легкость в оформлении: Бежевые оттенки прекрасно сочетаются с различными декорами и стилизациями, позволяя вам легко менять акценты и добавлять яркие элементы в интерьер без лишних затрат </li>\\r\\n<li class=\\\"genn-AdvantageskitchenBox-des\\\">Бежевый &mdash; это элегантный и достаточно нейтральный цвет, который не выходит из моды</li>\\r\\n</ul>\\r\\n<p>&nbsp;</p>\"}]','Каждый элемент радует глаз и удобен в использовании','arizona','EmeraldKitchen','2025-03-03 08:07:00','2025-03-03 08:46:47','Кухня Аризона',NULL);
/*!40000 ALTER TABLE `kitchen_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_page`
--

DROP TABLE IF EXISTS `main_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_page` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `text_description` text COLLATE utf8mb4_unicode_ci,
  `image_slider` json DEFAULT NULL,
  `category_title` text COLLATE utf8mb4_unicode_ci,
  `category` json DEFAULT NULL,
  `video_slider` json DEFAULT NULL,
  `section_img` text COLLATE utf8mb4_unicode_ci,
  `section_img_mobile` text COLLATE utf8mb4_unicode_ci,
  `icons` json DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` int DEFAULT NULL,
  `video_url_m` text COLLATE utf8mb4_unicode_ci,
  `text_description_2` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_page`
--

LOCK TABLES `main_page` WRITE;
/*!40000 ALTER TABLE `main_page` DISABLE KEYS */;
INSERT INTO `main_page` VALUES (2,'main-page/main_pc.mp4','Добро пожаловать на фабрику Дарина','[{\"url\": \"modalCall\", \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"2\", \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"0\", \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner3.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"modalCall\", \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner4.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"modalCall\", \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner5.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Вдохновение','[{\"url\": \"/kitchen\", \"image\": \"https://l.okdeal.ru/storage/main-page/Categoryes1.png\", \"title\": \"Кухни\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/prikhozhie\", \"image\": \"https://l.okdeal.ru/storage/main-page/Categoryes2.png\", \"title\": \" Прихожие\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/shkaf\", \"image\": \"https://l.okdeal.ru/storage/main-page/Categoryes3.png\", \"title\": \"Шкафы\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/garderobnye\", \"image\": \"https://l.okdeal.ru/storage/main-page/Categoryes4.png\", \"title\": \"Гардеробные\", \"video\": null, \"category\": \"kitchens\"}]','[{\"image\": \"https://l.okdeal.ru/storage/main-page/videotabs/2024-10-18_17-59-32%202.png\", \"title\": null, \"video\": \"https://l.okdeal.ru/storage/Video/SliderVideo1.mp4\", \"description\": \"<h2>Этапы работы</h2>\\r\\n<p>Забота и внимание &mdash; наши главные приоритеты.&nbsp;Мы с удовольствием ответим на все ваши вопросы, поможем выбрать идеальный вариант и создадим мебель, которая будет радовать вас каждый день!</p>\\r\\n<p><img src=\\\"../../../storage/main-page/videotabs/how.jpg\\\" alt=\\\"\\\" width=\\\"914\\\" height=\\\"854\\\"></p>\"}, {\"image\": \"https://l.okdeal.ru/storage/main-page/videotabs/garant5.png\", \"title\": \"Гарантия 5 лет\", \"video\": \"https://l.okdeal.ru/storage/advantages/garant.mp4\", \"description\": \"<h2><strong>Гарантия 5 лет</strong></h2>\\r\\n<p>Мы уверены в качестве наших изделий и готовы дать вам 5-летнюю гарантию на комплектующие кухонь и шкафов DARINA. Мы используем только лучшие материалы и самые современные технологии производства, чтобы обеспечить вам долговечное и надежное изделие.<br><br>5 лет гарантии - это не просто цифра, это наше обещание сделать вашу жизнь лучше и красивее. Доверьте нам свои мечты, и мы сделаем их реальностью!<br><br>Гарантийные обязательства не распространяются в случаях: <br>деформаций основных конструктивных элементов помещения Покупателя;<br>механического, химического, термического повреждения товара;&nbsp;<br>несоблюдения Покупателем правил эксплуатации.<br><br><br> Darina предоставляет гарантию:&nbsp;  Гарантия распространяется на фурнитуру Hettich, Blum, Boyard (петли, выдвижные ящики) столешницы из камня, массива <br>&nbsp;&bull; 5 лет на кухни и шкафы Darina&nbsp;(каркасы Egger &laquo;Амика&raquo;,&nbsp;фасады &laquo;Амика&raquo;, &laquo;Николь&raquo;, &laquo;Деми&raquo;, &laquo;Аврора&raquo;, &laquo;Хлоя&raquo;, &laquo;Сити&raquo;, &laquo;Маренго&raquo;, &laquo;Оливия&raquo;, &laquo;Белла&raquo;, &laquo;Мишель&raquo;,&nbsp;цоколи)<br>&nbsp;&bull; 7 лет на фурнитуру Hettich, Blum&nbsp;(петли, выдвижные ящики)<br><br>В гарантию включена:&nbsp;<br>Бесплатная замена товара на такой же или аналогичный в случае выявления в ходе эксплуатации скрытых производственных дефектов конструкции и/или производственного брака материала при соблюдении инструкции по эксплуатации и уходу. Если товар вышел из ассортимента, компания по своему усмотрению предложит подходящую замену.<br><br>Гарантия не распространяется на случаи:<br><br>&nbsp;&bull; Механических повреждений, приобретенных в ходе ненадлежащей сборки и эксплуатации.<br>&nbsp;&bull; Повреждений, возникших вследствие превышения максимальных нагрузок на элементы конструкции.<br>&nbsp;&bull; Использования товаров в коммерческих и иных целях, не связанных с реализацией прав потребителя.<br>&nbsp;&bull; Нарушения инструкции по эксплуатации и уходу, влажностного и/или температурного режимов с&nbsp; попаданием влаги или горячего пара, которое привело к разбуханию изделия.<br>&nbsp;&bull; Естественного износа материала, изменения цвета, в том числе под воздействием прямых солнечных лучей.<br>&nbsp;&bull; Использования товара на открытом воздухе, а также в неотапливаемых помещениях.<br>&nbsp;&bull; Оцененные компанией Darina как негарантийные.<br><br><br>Как воспользоваться гарантией<br><br>В случае возникновения дефекта, выявленного в процессе сборки и/или эксплуатации, просим вас оставить обращение:<br>&nbsp;&bull; На почту darinameb@mail.ru  &bull; В WhatsApp +7 (958) 500-85-56<br>&nbsp;&bull; По телефону 8-800-300-85-56<br>Наши специалисты в кратчайшие сроки проведут проверку качества товара с целью установления причин возникновения дефекта/неисправности.<br>Чтобы воспользоваться гарантией, необходимо предоставить кассовый чек либо иной документ, подтверждающий факт и дату приобретения товара, а также фотографии дефектов.<br><br>  </p>\"}, {\"image\": \"https://l.okdeal.ru/storage/main-page/videotabs/leica_disto_d1%201.jpg\", \"title\": \"Заказ на дому\", \"video\": \"https://l.okdeal.ru/storage/advantages/office.mp4\", \"description\": \"<h2>Заказ на дому</h2>\\r\\n<p>Для вашего удобства мы предлагаем выезд дизайнера-замерщика в кратчайшие сроки. Дата и стоимость выезда зависит от адреса вашего местонахождения.<br><br>Наш профессиональный дизайнер выедет к вам на дом, чтобы воплотить в жизнь все ваши идеи и желания.<br>С тщательным вниманием к деталям, мы учтем кривизну ваших стен, предложим лучшие решения для оптимального использования пространства, подберем для вас лучшие материалы, сочетающие в себе качество и стиль.<br><br>Чтобы замер прошёл быстро и без проблем, заранее подготовьте место, куда планируется установка мебели:<br>- уберите посторонние предметы и обеспечьте полный доступ к месту;<br>- материал пола, стен, потолка, расположение обналичек, розеток, выступов и других ориентиров должны быть сохранены после замера.</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/main-page/videotabs/image%2094.png\", \"title\": \"Современное производство\", \"video\": \"https://l.okdeal.ru/storage/Video/SliderVideo4.mp4\", \"description\": \"<h2><strong>Современное производство</strong></h2>\\r\\n<p>Качество и соответствие - наши приоритеты! <br><br>Все материалы для вашей мебели проходят строгий контроль перед началом производства. <br>Наше инновационное производственное оборудование гарантирует высочайшее качество и максимальную гибкость.&nbsp;Наряду с техническим прогрессом, креативность и мотивация нашего квалифицированного персонала имеют решающее значение для достижения наилучших результатов.&nbsp;<br><br></p>\\r\\n<p><strong>Запишитесь </strong><br><strong>на экскурсию производства</strong></p>\\r\\n<p>Посетите фабрику с которой мы работаем - посмотрите как Darina делает мебель и получите скидку 5%</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/main-page/videotabs/image%20244.png\", \"title\": \"Качественные материалы и фурнитура\", \"video\": \"https://l.okdeal.ru/storage/advantages/kach.mp4\", \"description\": \"<h2><strong>Качественные&nbsp;</strong><br><strong>материалы и фурнитура</strong></h2>\\r\\n<p>Мы предлагаем качественные материалы широкой цветовой гаммы ЛДСП, МДФ, плёнки, эмали, пластика, камня и массива, начиная от лучших отечественных до австрийских производителей, учитывая требования качества, дизайна и функциональности, а также вашего бюджета.<br><br>Работаем с ведущими производителями алюминиевого профиля, фурнитуры и комплектующих на российском рынке.<br>Наши изделия повышают комфорт использования мебели во всех жилых помещениях и превращают открывание и закрывание шкафов в настоящее удовольствие.<br><br>Системы выдвижных ящиков подходят для любых решений, а хорошая фурнитура для функциональности и удобства в доме.</p>\\r\\n<p>&nbsp;</p>\"}]',NULL,NULL,'[{\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/production\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/garant-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/production\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/production\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/production\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/production\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/rassrocka-b.svg\", \"title\": \"Рассрочка\", \"video\": null, \"category\": \"kitchens\"}]','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую 2\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую 3\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую 4\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую 5\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую 6\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую 7\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}]','2024-12-19 11:43:00','2025-07-12 06:42:08','Мебельная фабрика \"Дарина\"',NULL,'main-page/main_mob.mp4','Мебель на заказ стала доступнее');
/*!40000 ALTER TABLE `main_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_settings`
--

DROP TABLE IF EXISTS `main_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `social` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `social_white` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_settings`
--

LOCK TABLES `main_settings` WRITE;
/*!40000 ALTER TABLE `main_settings` DISABLE KEYS */;
INSERT INTO `main_settings` VALUES (1,'8 (800) 300-85-56','darinameb@mail.ru','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/tg-b.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/YouTube.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/vk-b.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/whatsapp-b.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','2025-01-10 08:15:00','2025-01-10 09:09:38','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/YouTube-w.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/tg-w.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/vk-w.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/icons/whatsapp-w.svg\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]');
/*!40000 ALTER TABLE `main_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (2,1,'Медиа менеджер','','_self','voyager-images','#000000',NULL,7,'2024-12-13 06:55:03','2024-12-23 07:13:22','voyager.media.index','null'),(3,1,'Пользователи','','_self','voyager-person','#000000',NULL,6,'2024-12-13 06:55:03','2024-12-23 07:13:22','voyager.users.index','null'),(4,1,'Права пользователей','','_self','voyager-lock','#000000',NULL,5,'2024-12-13 06:55:03','2024-12-23 07:13:22','voyager.roles.index','null'),(5,1,'Инструменты','','_self','voyager-tools','#000000',NULL,8,'2024-12-13 06:55:03','2024-12-23 07:13:22',NULL,''),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2024-12-13 06:55:03','2024-12-13 08:11:38','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2024-12-13 06:55:03','2024-12-13 08:11:38','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2024-12-13 06:55:03','2024-12-13 08:11:38','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2024-12-13 06:55:03','2024-12-13 08:11:38','voyager.bread.index',NULL),(10,1,'Настройки','','_self','voyager-settings','#000000',NULL,9,'2024-12-13 06:55:03','2024-12-23 07:13:22','voyager.settings.index','null'),(11,3,'Страницы','pages','_self','voyager-categories','#000000',NULL,1,'2024-12-13 08:00:17','2024-12-13 12:49:48',NULL,''),(13,1,'Хедер (Верхняя часть страницы)','','_self','voyager-list','#000000',NULL,3,'2024-12-13 10:09:59','2024-12-23 07:13:22','voyager.header.index','null'),(14,1,'Все страницы','','_self',NULL,'#000000',15,3,'2024-12-17 10:38:30','2025-01-10 09:22:50','voyager.pages.index','null'),(15,1,'Страницы','','_self','voyager-list','#000000',NULL,1,'2024-12-19 10:10:44','2024-12-20 10:21:34',NULL,''),(16,1,'Главная','','_self','voyager-home','#000000',15,1,'2024-12-19 10:32:02','2024-12-20 10:21:08','voyager.main-page.index','null'),(18,1,'Гардеробные','','_self',NULL,'#000000',19,3,'2024-12-23 07:12:32','2024-12-25 10:29:38','voyager.garderobnye.index','null'),(19,1,'Категории','','_self',NULL,'#000000',NULL,2,'2024-12-23 07:13:03','2024-12-23 07:13:22',NULL,''),(20,1,'Кухни','','_self',NULL,'#000000',19,1,'2024-12-23 07:16:14','2024-12-23 07:25:55','voyager.kitchen.index','null'),(21,1,'Прихожие','','_self',NULL,'#000000',19,4,'2024-12-23 07:19:13','2024-12-25 10:29:38','voyager.prikhozhie.index','null'),(22,1,'Шкафы','','_self',NULL,'#000000',19,2,'2024-12-23 07:24:37','2024-12-25 10:29:38','voyager.shkaf.index','null'),(23,1,'Кухни','','_self',NULL,'#000000',15,4,'2024-12-25 10:29:11','2025-01-10 09:22:50','voyager.kitchen-template.index','null'),(24,1,'Main Settings','','_self',NULL,NULL,NULL,10,'2025-01-09 06:04:23','2025-01-10 09:22:50','voyager.main-settings.index',NULL),(25,1,'Контакты','','_self',NULL,'#000000',15,2,'2025-01-10 09:22:20','2025-01-10 09:23:00','voyager.contacts.index','null'),(26,1,'Reviews Icons','','_self',NULL,NULL,NULL,11,'2025-01-23 08:51:41','2025-01-23 08:51:41','voyager.reviews-icons.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2024-12-13 06:55:03','2024-12-13 06:55:03'),(3,'User','2024-12-13 07:58:41','2024-12-13 07:58:41');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2016_01_01_000000_add_voyager_user_fields',2),(5,'2016_01_01_000000_create_data_types_table',2),(6,'2016_05_19_173453_create_menu_table',2),(7,'2016_10_21_190000_create_roles_table',2),(8,'2016_10_21_190000_create_settings_table',2),(9,'2016_11_30_135954_create_permission_table',2),(10,'2016_11_30_141208_create_permission_role_table',2),(11,'2016_12_26_201236_data_types__add__server_side',2),(12,'2017_01_13_000000_add_route_to_menu_items_table',2),(13,'2017_01_14_005015_create_translations_table',2),(14,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(15,'2017_03_06_000000_add_controller_to_data_types_table',2),(16,'2017_04_21_000000_add_order_to_data_rows_table',2),(17,'2017_07_05_210000_add_policyname_to_data_types_table',2),(18,'2017_08_05_000000_add_group_to_settings_table',2),(19,'2017_11_26_013050_add_user_role_relationship',2),(20,'2017_11_26_015000_create_user_roles_table',2),(21,'2018_03_11_000000_add_user_settings',2),(22,'2018_03_14_000000_add_details_to_data_types_table',2),(23,'2018_03_16_000000_make_settings_value_nullable',2),(24,'2019_08_19_000000_create_failed_jobs_table',3),(25,'2019_12_14_000001_create_personal_access_tokens_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_images` json DEFAULT NULL,
  `category_links` json DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_descr` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Кухни',NULL,NULL,NULL,NULL,NULL,'2024-12-20 10:35:10','2024-12-20 10:35:10',NULL,NULL,NULL),(2,'Шкафы',NULL,NULL,NULL,'[{\"url\": null, \"image\": null, \"title\": null, \"video\": null}]',NULL,'2024-12-20 10:35:25','2024-12-20 10:35:25',NULL,NULL,NULL),(3,'Прихожие',NULL,NULL,NULL,NULL,NULL,'2024-12-20 10:35:32','2024-12-20 10:35:32',NULL,NULL,NULL),(4,'Гардеробные',NULL,NULL,NULL,NULL,NULL,'2024-12-20 10:35:46','2024-12-20 10:35:46',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(2,'browse_bread',NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(3,'browse_database',NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(4,'browse_media',NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(5,'browse_compass',NULL,'2024-12-13 06:55:03','2024-12-13 06:55:03'),(6,'browse_menus','menus','2024-12-13 06:55:03','2024-12-13 06:55:03'),(7,'read_menus','menus','2024-12-13 06:55:03','2024-12-13 06:55:03'),(8,'edit_menus','menus','2024-12-13 06:55:03','2024-12-13 06:55:03'),(9,'add_menus','menus','2024-12-13 06:55:03','2024-12-13 06:55:03'),(10,'delete_menus','menus','2024-12-13 06:55:03','2024-12-13 06:55:03'),(11,'browse_roles','roles','2024-12-13 06:55:03','2024-12-13 06:55:03'),(12,'read_roles','roles','2024-12-13 06:55:03','2024-12-13 06:55:03'),(13,'edit_roles','roles','2024-12-13 06:55:03','2024-12-13 06:55:03'),(14,'add_roles','roles','2024-12-13 06:55:03','2024-12-13 06:55:03'),(15,'delete_roles','roles','2024-12-13 06:55:03','2024-12-13 06:55:03'),(16,'browse_users','users','2024-12-13 06:55:03','2024-12-13 06:55:03'),(17,'read_users','users','2024-12-13 06:55:03','2024-12-13 06:55:03'),(18,'edit_users','users','2024-12-13 06:55:03','2024-12-13 06:55:03'),(19,'add_users','users','2024-12-13 06:55:03','2024-12-13 06:55:03'),(20,'delete_users','users','2024-12-13 06:55:03','2024-12-13 06:55:03'),(21,'browse_settings','settings','2024-12-13 06:55:03','2024-12-13 06:55:03'),(22,'read_settings','settings','2024-12-13 06:55:03','2024-12-13 06:55:03'),(23,'edit_settings','settings','2024-12-13 06:55:03','2024-12-13 06:55:03'),(24,'add_settings','settings','2024-12-13 06:55:03','2024-12-13 06:55:03'),(25,'delete_settings','settings','2024-12-13 06:55:03','2024-12-13 06:55:03'),(26,'browse_header','header','2024-12-13 10:09:59','2024-12-13 10:09:59'),(27,'read_header','header','2024-12-13 10:09:59','2024-12-13 10:09:59'),(28,'edit_header','header','2024-12-13 10:09:59','2024-12-13 10:09:59'),(29,'add_header','header','2024-12-13 10:09:59','2024-12-13 10:09:59'),(30,'delete_header','header','2024-12-13 10:09:59','2024-12-13 10:09:59'),(31,'browse_pages','pages','2024-12-17 10:38:30','2024-12-17 10:38:30'),(32,'read_pages','pages','2024-12-17 10:38:30','2024-12-17 10:38:30'),(33,'edit_pages','pages','2024-12-17 10:38:30','2024-12-17 10:38:30'),(34,'add_pages','pages','2024-12-17 10:38:30','2024-12-17 10:38:30'),(35,'delete_pages','pages','2024-12-17 10:38:30','2024-12-17 10:38:30'),(36,'browse_main_page','main_page','2024-12-19 10:32:02','2024-12-19 10:32:02'),(37,'read_main_page','main_page','2024-12-19 10:32:02','2024-12-19 10:32:02'),(38,'edit_main_page','main_page','2024-12-19 10:32:02','2024-12-19 10:32:02'),(39,'add_main_page','main_page','2024-12-19 10:32:02','2024-12-19 10:32:02'),(40,'delete_main_page','main_page','2024-12-19 10:32:02','2024-12-19 10:32:02'),(41,'browse_categories','categories','2024-12-21 08:20:38','2024-12-21 08:20:38'),(42,'read_categories','categories','2024-12-21 08:20:38','2024-12-21 08:20:38'),(43,'edit_categories','categories','2024-12-21 08:20:38','2024-12-21 08:20:38'),(44,'add_categories','categories','2024-12-21 08:20:38','2024-12-21 08:20:38'),(45,'delete_categories','categories','2024-12-21 08:20:38','2024-12-21 08:20:38'),(46,'browse_garderobnye','garderobnye','2024-12-23 07:12:32','2024-12-23 07:12:32'),(47,'read_garderobnye','garderobnye','2024-12-23 07:12:32','2024-12-23 07:12:32'),(48,'edit_garderobnye','garderobnye','2024-12-23 07:12:32','2024-12-23 07:12:32'),(49,'add_garderobnye','garderobnye','2024-12-23 07:12:32','2024-12-23 07:12:32'),(50,'delete_garderobnye','garderobnye','2024-12-23 07:12:32','2024-12-23 07:12:32'),(51,'browse_kitchen','kitchen','2024-12-23 07:16:14','2024-12-23 07:16:14'),(52,'read_kitchen','kitchen','2024-12-23 07:16:14','2024-12-23 07:16:14'),(53,'edit_kitchen','kitchen','2024-12-23 07:16:14','2024-12-23 07:16:14'),(54,'add_kitchen','kitchen','2024-12-23 07:16:14','2024-12-23 07:16:14'),(55,'delete_kitchen','kitchen','2024-12-23 07:16:14','2024-12-23 07:16:14'),(56,'browse_prikhozhie','prikhozhie','2024-12-23 07:19:13','2024-12-23 07:19:13'),(57,'read_prikhozhie','prikhozhie','2024-12-23 07:19:13','2024-12-23 07:19:13'),(58,'edit_prikhozhie','prikhozhie','2024-12-23 07:19:13','2024-12-23 07:19:13'),(59,'add_prikhozhie','prikhozhie','2024-12-23 07:19:13','2024-12-23 07:19:13'),(60,'delete_prikhozhie','prikhozhie','2024-12-23 07:19:13','2024-12-23 07:19:13'),(61,'browse_shkaf','shkaf','2024-12-23 07:24:37','2024-12-23 07:24:37'),(62,'read_shkaf','shkaf','2024-12-23 07:24:37','2024-12-23 07:24:37'),(63,'edit_shkaf','shkaf','2024-12-23 07:24:37','2024-12-23 07:24:37'),(64,'add_shkaf','shkaf','2024-12-23 07:24:37','2024-12-23 07:24:37'),(65,'delete_shkaf','shkaf','2024-12-23 07:24:37','2024-12-23 07:24:37'),(66,'browse_kitchen_template','kitchen_template','2024-12-25 10:29:11','2024-12-25 10:29:11'),(67,'read_kitchen_template','kitchen_template','2024-12-25 10:29:11','2024-12-25 10:29:11'),(68,'edit_kitchen_template','kitchen_template','2024-12-25 10:29:11','2024-12-25 10:29:11'),(69,'add_kitchen_template','kitchen_template','2024-12-25 10:29:11','2024-12-25 10:29:11'),(70,'delete_kitchen_template','kitchen_template','2024-12-25 10:29:11','2024-12-25 10:29:11'),(71,'browse_main_settings','main_settings','2025-01-09 06:04:23','2025-01-09 06:04:23'),(72,'read_main_settings','main_settings','2025-01-09 06:04:23','2025-01-09 06:04:23'),(73,'edit_main_settings','main_settings','2025-01-09 06:04:23','2025-01-09 06:04:23'),(74,'add_main_settings','main_settings','2025-01-09 06:04:23','2025-01-09 06:04:23'),(75,'delete_main_settings','main_settings','2025-01-09 06:04:23','2025-01-09 06:04:23'),(76,'browse_contacts','contacts','2025-01-10 09:22:20','2025-01-10 09:22:20'),(77,'read_contacts','contacts','2025-01-10 09:22:20','2025-01-10 09:22:20'),(78,'edit_contacts','contacts','2025-01-10 09:22:20','2025-01-10 09:22:20'),(79,'add_contacts','contacts','2025-01-10 09:22:20','2025-01-10 09:22:20'),(80,'delete_contacts','contacts','2025-01-10 09:22:20','2025-01-10 09:22:20'),(81,'browse_reviews_icons','reviews_icons','2025-01-23 08:51:41','2025-01-23 08:51:41'),(82,'read_reviews_icons','reviews_icons','2025-01-23 08:51:41','2025-01-23 08:51:41'),(83,'edit_reviews_icons','reviews_icons','2025-01-23 08:51:41','2025-01-23 08:51:41'),(84,'add_reviews_icons','reviews_icons','2025-01-23 08:51:41','2025-01-23 08:51:41'),(85,'delete_reviews_icons','reviews_icons','2025-01-23 08:51:41','2025-01-23 08:51:41');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prikhozhie`
--

DROP TABLE IF EXISTS `prikhozhie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prikhozhie` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `text_description` text COLLATE utf8mb4_unicode_ci,
  `image_slider` json DEFAULT NULL,
  `category_title` text COLLATE utf8mb4_unicode_ci,
  `category` json DEFAULT NULL,
  `title_h2` text COLLATE utf8mb4_unicode_ci,
  `video_url_2` text COLLATE utf8mb4_unicode_ci,
  `text_description_2` text COLLATE utf8mb4_unicode_ci,
  `icons` json DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `title_description` text COLLATE utf8mb4_unicode_ci,
  `title_description_2` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prikhozhie`
--

LOCK TABLES `prikhozhie` WRITE;
/*!40000 ALTER TABLE `prikhozhie` DISABLE KEYS */;
INSERT INTO `prikhozhie` VALUES (1,'prikhozhie/Prikhozhie.mp4','<p>Мы создадим шкаф по индивидуальным размерам, который идеально впишется <br>в вашу прихожую</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Наши лучшие мастера будут рады бесплатно проконсультировать вас и помочь создать проект вашей мечты</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner3.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner4.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner5.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Идеи для вашей прихожей на заказ','[{\"title\": \"Блэк\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/4-2-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/4%D0%B0-2.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/4%D0%B1-2.jpg\"}], \"description\": \"<p>Встроенный зеркальный шкаф-купе для прихожей с двумя раздвижными дверями. В левой части шкафа расположено вешало для одежды и три полки для вещей. В правой &ndash; крючки и два закрытых ящика (нижний для обуви). Вход в комнату слева отделен подвесными дверьми. Шкаф достаточно вместителен для своего размера за счет исполнения от пола до потолка.</p>\"}, {\"title\": \"Вуд\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/wood/7-1-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/wood/7%D0%B0-1.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/wood/7%D0%B1-1.jpg\"}], \"description\": \"<p>Композиция для прихожей белого цвета со вставками под &laquo;дерево&raquo; и зеркалами. Состоит из двух модулей: большого шкафа с распашными дверями и зеркалами и шкафа поменьше с вешалом. Оба изделия выполнены из пола до потолка и оборудованы антресольными ящиками, что делает их очень вместительными.</p>\"}, {\"title\": \"Струд\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/strud/5%D0%B0-3.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/4%D0%B0-2.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/strud/anderstood.jpg\"}], \"description\": \"<p><strong>Прихожая Струд одновременно красивая, практичная и удобная.</strong> <br><br>Конструкция идеально подходит для создания безупречного интерьера современного дома или квартиры. Мягкие тона декоративных покрытий, эффектная подсветка и изящные линии создадут особое настроение в вашем доме.</p>\"}, {\"title\": \"Бэлир\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/white/8-1-scaled.png\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/white/8%D0%B0-1.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/white/8%D0%B1-1.png\"}], \"description\": \"<p><strong>В прихожей Бэлир в стиле </strong><span style=\\\"color: rgb(212, 96, 59);\\\">&ldquo;Скандинавское бохо&rdquo;</span><strong> выбрана белая мебель с использованием зеркал, что визуально расширяет помещение, делает его более светлым. </strong><br><br><strong>Она имеет большое количество модулей для хранения вещей.</strong> Два вместительных распашных шкафа, один из которых с антресольными полками позволят разместить все, что необходимо.</p>\"}, {\"title\": \"Лиома\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/green/15-1.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/green/15%D0%B0-1.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/green/15%D0%B1-1.jpg\"}], \"description\": \"<p>Элегантная мебель для прихожей в зеленых тонах. Изделие представляет собой комбинацию из распашных шкафов, полок и открытой ниши для обуви. Два фасада имеют вставки из зеркала для удобства переодевания. Шкафы достаточно вместительны, их наполнение можно изменить по желанию заказчика. Зеленые фасады смотрятся очень органично.</p>\"}, {\"title\": \"Классик\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/clasic/13-1-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/clasic/13%D0%B0-1-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/clasic/13%D0%B1-1-scaled.jpg\"}], \"description\": \"<p>Вместительная прихожая с трехстворчатым распашным шкафом, вешалкой и зеркалом для переодевания. Два из трех фасадов шкафа имеют зеркальную вставку во всю высоту. Над всем изделием расположились антресольные полки. Грамотное расположение элементов в выбранной нише позволило максимально полезно использовать площадь прихожей.</p>\"}, {\"title\": \"Пинк\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/pink/3-2-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/pink/3%D0%B0-2-scaled.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/pink/3%D0%B1-2.jpg\"}], \"description\": \"<p>Эта необычная и эффектная модель удовлетворит самый взыскательный вкус ценителей изящных решений в интерьерном дизайне. Интересный дизайн &ndash; визитная карточка изделий компании &ndash; сочетается в этой конструкции с высокой функциональностью и надежностью.</p>\"}, {\"title\": \"Ферит\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/aprihozh/grey/12-1-scaled.png\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/grey/12%D0%B0-1-scaled-600x391.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/aprihozh/grey/12%D0%B1-1-600x553.jpg\"}], \"description\": \"<p><strong>Входная группа в классическом стиле включает в себя:</strong></p>\\r\\n<ol>\\r\\n<li>комбинированный шкаф для одежды с одной раздвижной дверью, которая имеет вставку из зеркала для удобства примерки;</li>\\r\\n<li>подвесную полку с зеркалом и нишей для обуви;</li>\\r\\n<li>систему хранения с вешалкой, оборудованной крючками.</li>\\r\\n</ol>\"}]','Идеальная планировка','prikhozhie/prihRast.mp4','<p>Прихожая на заказ позволяет создать идеальные внутренние решения, от выдвижных систем до специализированных отсеков.</p>','[{\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/garant-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/rassrocka-b.svg\", \"title\": \"Рассрочка\", \"video\": null, \"category\": \"kitchens\"}]','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": null, \"category\": \"hallways\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"dressing_rooms\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"cabinets\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": null, \"category\": \"work_areas\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": null, \"video\": null, \"category\": \"dressing_rooms\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','2024-12-25 08:52:00','2025-02-12 10:09:58',NULL,'Добро пожаловать домой!','Оптимизация функциональности. ');
/*!40000 ALTER TABLE `prikhozhie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_icons`
--

DROP TABLE IF EXISTS `reviews_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews_icons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reviews` json DEFAULT NULL,
  `icons` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_icons`
--

LOCK TABLES `reviews_icons` WRITE;
/*!40000 ALTER TABLE `reviews_icons` DISABLE KEYS */;
INSERT INTO `reviews_icons` VALUES (1,'[{\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/garderob/IMG_1887.mp4\", \"category\": \"dressing_rooms\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/garderob/IMG_6950.MP4\", \"category\": \"dressing_rooms\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/kitchen/A27DD045-F0CC-4391-BD64-6893B92FE5DB.MP4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/kitchen/IMG_6870.MP4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/kitchen/IMG_6926.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/kitchen/IMG_6930.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/kitchen/IMG_6931.MP4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/kitchen/IMG_6937.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/3DF6DF0F-582C-4B55-AC2D-5F8736690B75.MP4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/96A3D00B-5D13-4995-A6AD-1DF0219C3820.mp4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/AF98195B-942D-4FF9-8C91-9E16A9349381.MP4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/C1E9BF54-549E-46C9-BD42-554FA36DC4DC.mp4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/IMG_1165.mp4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/IMG_1418.mp4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/prihozh/IMG_6747.mp4\", \"category\": \"hallways\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/shkaf/3EBDD992-E3BE-4908-B28D-1B5EB22E5593.MP4\", \"category\": \"cabinets\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/shkaf/8C7B193C-B54A-47FD-9FCB-BF8ECBF43D16.MP4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/shkaf/96A3D00B-5D13-4995-A6AD-1DF0219C3820 (1).mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/shkaf/AF94AD9A-143E-47FE-962D-E41ECDA0CAA5.MP4\", \"category\": \"cabinets\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/shkaf/IMG_1232.mp4\", \"category\": \"cabinets\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/shkaf/IMG_6749 (1).mp4\", \"category\": \"cabinets\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/rabzone/D47BD620-6BC1-421A-80EF-F0D008DD6A87.MP4\", \"category\": \"work_areas\"}, {\"url\": null, \"image\": null, \"title\": null, \"video\": \"https://l.okdeal.ru/storage/otziv/rabzone/IMG_6862.MP4\", \"category\": \"work_areas\"}]','[{\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/garant-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/rassrocka-b.svg\", \"title\": \"Рассрочка\", \"video\": null, \"category\": \"kitchens\"}]','2025-01-23 09:02:00','2025-04-14 12:14:52');
/*!40000 ALTER TABLE `reviews_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2024-12-13 06:55:03','2024-12-13 06:55:03'),(2,'user','Normal User','2024-12-13 06:55:03','2024-12-13 06:55:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('203IizpfKrKg3cEZqCchiLML8fBS2P1hmhiNqLO9',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1FWYlBsOFZrc0pLQU5jbmYyNzJxMU56SlRhVXAweUhUTFZBZms3QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733801318),('29VrOvQX0GuXvsFsW8j8LbdzNFXeGupyMtYEV0eR',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnJpQTBlbmpkdmppYzNCN0N1WTZqUTNqcXNpakY3WXBEY0JESFBueSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733800480),('31v4pSE1FegcFyrJav8W22DgljnnxgFJXchD1ijF',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlNrdlZ3MnpSajdTS09DTUhOSGRRVnREeWdZaDBQajVkUlYxMm1OMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733781407),('3gEniRmMKj5MBH7h1aBxPZMKiv1CAQIr2s2SO2rA',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGtRRGFkUlg1bWVBWUR2ZzZiWHJMTFVBR1ZITkNPR2F1MkFnNXM4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733817650),('5jmZSPlOzRUeMMrMBaAnNmtswsxotIlMZpStL8Xg',NULL,'195.201.111.82','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1F1bGh4SW1POGtseWI4R2VHMjNrd0ZkTUkyWVVMODNFT2daWjBrTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733801943),('7Lxty7OgCjwhwbwGOJvpZGPp05RMCkWuigKle6gZ',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmxiRTRqTk12M1c1emRpcG5VWlN6RXlxekhWbVI3Y3NNQWZ1VzZBdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733780562),('8zV6M0PnG9yl4QF7znwgHv6vOBU6pq9auP8H8Bdg',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiam5HbEdUd1pQZFlubkZYeW1CTzE4QUxOVTB3MjdlYXJ0MURJdTk5MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733814885),('akuJmxhPkho71lah4UU2vjS4GCef7Hpg1vfKgokA',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFU3VTh1QWFJNHVHR0lST3hNckV0WHhocFhqRDJudFJTZG1WaHBFSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733792199),('Aq3E695nTlABJLt2g3uM9N2pZ4mYxc9Cvh9jfMNe',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicUJMd3c3SEdiUW1BMno5bU1RbE04WUpuRllQeVhuNmpIbjRreEZjbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733807682),('bciWH1O34wMJWRWnfaJ2ne5voJPr0oBpxcFsNCcp',NULL,'176.9.158.217','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieEh4RlRucHlPZ1owV1RROThibnVFRkZLT045R1FUcTVadDVxZEthTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733802155),('c2GvURKQGKQyRcdhD6CRh6leDMRmPXpZKtuXAyEN',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib01VdTZiRERyNk9ONmxweWdXa3RoTkFsbUV2YW53UXp0Q3JLM1BvMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733783321),('CvreUTaZADtpM1oLdJqNykNHQHEe4xRI5lWkqdoM',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFV6OTJVOG5DVHN4RVY0TlBCS0tCbUJ3VWJSVmxZUnNZQTNneDJKciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733795802),('DTz29onb5pmFALDq11c6BuW1Z18Nrm99132A9znm',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzRKYUxFVW1CZkJQOG50VlpKY3J3T0M4Y3hmN1VKT1JMdWJ4ekprTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733817404),('dzglArE4ikTs0Gi3JQl1TCmYMturTlywoEIhG9lQ',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWFoRE9WM2xxekh3Z05iWEdvdERGZlhXSXo2d0hzWnhrekNBaVRMQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733785244),('e0esoeSnP2jt2ZehwWOsG7L8l8dsCAprYuMB7dbU',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidGZDcE14TVJhWXQyYVlCNnpNR3VWblo3UnVTQ01aemtWTGZaZ3VUMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733799398),('E4HnMLkWTREhTgUiQ795NPJnPQoMCi49vXWz4mTn',NULL,'176.53.222.206','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU9iZ1h5R2dyTDdGWlNPTEJGMzNuZm8zTUhXaDcxOERNRDhVVktpZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733792483),('g5sVPMSr6bKZGznuimlHba8jLOkB3Eti5F1Hh4YF',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmhZSXF1V3diS0lHNUZscERhMmZqZXhZeHlTZXl4a2FGNUtFV0xVWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733785003),('GaPgPrWDVUOKk9BGN1KQHPY2cgf2PH83SKMtCDLz',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWlrZ3VtYXFOTEh6bDVod0dMbFFzYTNDRjdGVjdTcEVVT1Z6MlVuSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733821005),('gJ1JtqyhyeCFx1ZGCVyN7d6WS9mDPzl0mAeDfBQQ',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidXlXblhEVlc4am45R3RNQVdBalhRNFZSckk1S2lsWTBDR0RXNlA5VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733810206),('hxqQwiOOi4P1hgjKL5xCu5B8rzGG0b47DoJ2dyoH',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWtBQmd5b2VKb0N1Vm9lMzVSVFViS2NrWnp1N0tvbHVBdTY3UWNGNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733792443),('IT7BG58hhG0vHzHiJSkGLA2NJdPoq0YpwkSrxSN8',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWl1U2FiRnRuUGtCak83RENjMVpleEcxemg1Z1I5SGxDVkhQdk1KQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733806846),('IXExTFR7vuRtnPDpzHe4MDqIbOqdqdDWILO1ziVu',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiemZ6c1RmOTJySzh3aUpwck5ZSTZZWElnRUx6Vzdwcm9KVGk3RkIxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733794962),('jLvv2YgrIn3mVxsAojqkYPX0UXETT8n9ohObs83T',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFlGakdzTUNsMHgyVk1GR3VjMklzbVYzQ0dNdVV2NGFZRTFocTFIUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733786082),('jM3Zj9aOmDpmBEO5oIoBDDdQFgCHL2YeQmw29dWo',NULL,'171.244.43.14','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFVsN1pWY0o3S2phQmU1R21ENllYMUU3UDQ5MExKcmN5M2NJd2I0eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733806041),('jW0oYyBhxZqjWBGIpGL9nXu3BIkX1X9FVn3FYi4y',NULL,'89.104.100.70','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXNLY2RwTkUyZFgyM01MNWtRakxwWUx6enZQbkw0dUhZWk5nMFptVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3Lmwub2tkZWFsLnJ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733807176),('jw9JBXwVQfpswpb8CpYHFpS6Wy7fdvNzBagRm5BS',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWpxQnFZNTduck9nZzlRenlLTUVlYzVxT2MwWmEwOTA3QTZtT2VHMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733818482),('kFWIxgqhD8fmF6zuFxZDii9KxWqBSFV9m6XtgmLz',NULL,'38.180.139.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibTNNc3hhVU5RZks1Vmx6Nk83QUxlVkdabEFMRVR2dzlSNGN3cmZuOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733820318),('l3KY8IhADTDffMcVUMawhjPQARhr31ZAsIyiDD7d',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjBOSG93aXJ3RUdxbzJaUnBybnNyUU1TcDRYZkk4cUR6TjQyUjZtRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733809364),('LWv56Akz4ogRidS4O1QCnPy27iowBFaaIoF0m3EO',NULL,'147.45.185.25','Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11B554a','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0thckFpUzU3SEFibGlNV2hlcTlqNEhNWVRsazh2T29DNW9BVkRWNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733789818),('MEGOn3NE6ZTIS1VVU5tWTyPoQfWzeWMl2Z1ZBpcp',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmtMdVBFNGNHN1h3UUJacTNRRFdxbmhDOGZ6YXpFQlVmaHV3THZuYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733816564),('NLJXG2DyxTx2Spj76PoD0GRNafwHClMsPxDdl6CH',NULL,'5.9.50.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieGo1dHJSbXUzbzVneUFyd3dBNmdsaXFaN1l3alNCQ000eloxVnhaciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733802160),('o4ZhUacTrBBkW7R370uBCUDs4buVes7V8MLe6DTk',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXA2cW5pUjVIeHl0MXJFVUNPWE1tMVFReUpwR0J0a3BhTmh6b1BWSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733798559),('ooZXpmkHzvA3h5JnFyV5Ab024kPtHmUelXgNu1cO',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVd6RHJIWFREcEllZlUyejJqOGh4VENFbFVzWXp4UG5MdmJhRlhzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733786923),('OPEa1uePWPhd5OvGqHBX4NWi3LjRGuvQuIQ07vxA',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1BJT0I0SFZQWmtlRzhHNFlYWGppVFFOeW02NzFqQjNlemgxcVh4ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733802161),('oxsd0mroNzIiq4B33YeslmvUa00UWaVEu43Di2a2',NULL,'176.9.158.217','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiemM0eUlNYWM1TVA2b0NIa2YxNWE0UEo0WGZURXk4QTJnNnFQMWswUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733802155),('PKyr1Mtal3apvWYilfQabLhA3wJNrNGKt3O1PNAj',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlg4TDdYU3hYaWxhS0l4VlR4QUpyb2ZqeW54VDRvbHVXQXdxcHFHViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733805762),('PNalfofijs3DMyAzWpirsTgzfu7q05LwBV6541vg',NULL,'38.180.139.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHRqanJwQ0RQSTBnaFF2YXVWY1k4dlBaYVZOTExadDNqV3FQTHJIViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733818409),('PspLmCJ11DuZWTg1C9Ku1AYNPTz2BuTkrEvqszV6',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1NBdlFTaXdCSUFsbndobkxZZ2h1NlhUd3lrbE9ERUlOYVM3djVSayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733791359),('PXf0WUCYlxcdQL7W710XuIcGI9Uz4aPVRMrCEZH1',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNElxZUxXM25iUkpOSnljUTh5eE9NZHQxSVNTYmV6OW9OOEZxMkcxSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733803245),('PXGp4EtvOimW2JwSpiDrHgQz5hZZ6HIVS5tkF0lW',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGhIZWtoc3UydXVPNWNqcm9aWVVhVERZWnh5MVZxRzhqUEVsWG84YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733782479),('Q7ac4vyDUrN4qdOR37X7IZJbifPR3SE0lrsBHE7c',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEJpRTd3YmpDUXBXOWl4cE5pbHlwRHR6ZFl5WGllSW5xczZoUjhpaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733812131),('qkrh8HsiS0MwnbA0tE999FM2L7s0a3LN12BYPz5S',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoic1VVODc3bGhBZU9WQnppeElkeXZXTGZEUlRUeDdhMERLbzdWVkZwSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733781643),('QOJkC6AFfpbjYkJz5sUmQ6jftYVmyOwO5tM5nP1n',NULL,'176.53.219.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXpYUFdFTmU2aENRejFiSU1HOE5GazNZaUlFTkZ4TFBUZEw3aWo0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3Lmwub2tkZWFsLnJ1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733792571),('QpB0Dt3p8Je1RcjEMyBkSMI1OnIPVtr8LSHhnWaq',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidDlpS3pIQW1yMkF6cFpZRjZwQm9PbGFzWk5oc0JsT3ZtSjR5b3A1UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733787760),('QqivFRJbXMvGhYvGbO2xUCCwklgcvNfqbMfDCS5j',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid3ljU3RrV0pucWtMMGxsMzFkWDBuTFF5THFQWElzVTdTOEdFZTZjQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733799642),('QzhPTrw8JE1R8KFtnBosVZQvDCFnrNlZXZR4kq6s',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoia2oxWWhxU0ttcW93Wk9ycnh3MERobWFVOHNPTFZwaVdmYnIyWkNlbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733813804),('RDh85TvBr8qpI2YzrvgmzcNH2ukGpjd2Ray3KTAu',NULL,'167.94.145.111','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlg2dzI5a3pCNW1FVkJjNEg4RVNtOEIwWDl3dkZDdnY4aW9wb0wySCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733793879),('riaQh3niAOPVQROL7vLksCTEKlFv4slIgXk7E6JL',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG1lR2RBaWZSZ3cxZlI5R1RQVFlhMDlTUzl6UnI2WFh2bEg5V2loQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733784167),('rWp5G37N9hRuURbyoco3WWWmtGp1AQEAPDFpIje6',NULL,'176.53.222.215','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidkNPdWVjbHFGZHB1NTQ3aGY3MmFrN1hHaDZWbXdZY3BKMW5Ob2tURiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733807029),('S8tXgudV05IPfGJFmOG3f2bd8rggVEVH3AFeSKaP',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWdIZ0w5R3FYNHBuMUxBMGs1RjY4YzhyaUV2OHYxYjlEMzE5TjZqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733789685),('sFYhw4R27W8hXNsGeBNVeSiyw0EcSIVnXQuY0teo',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib0xIMUJxOFprV3dPRnVtdGhQUEw2M1FuQ0xyZmhWZk9xWGt2clJSOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733796044),('srP6q6CSPBNnVkIAhBFJXOEiP8NIMHkMacAAPW6P',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2ZGMzhOS0EyRHA5OGI3WVR5RHRxeFBsNWFoRUFOZXNsTmtBMFVoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733803003),('ssvpCDyZyLTseDpYo0NOU8GbWJ8pouIA5zyWiBUe',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUs5UkpWWHZsQmM2dWk1Ymx5akFvbng0Wko1aUxxVUxna1ptUzZ5bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733811289),('STfAFInks4GbPSmUxfNdueRCnqKuO6BtfBY3JmRq',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW42T3RKaVZuM0x3YWdBZTIwd0I2SU5IeEhSRkdadHpobmVjUkRYaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733796884),('tzsBVhwbgbv85f3JaDON5LDtwvrpiw5sBWC4YGND',NULL,'167.94.145.110','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3ZNT29SdlE0SHJJUURzaEJNVklrR0RIVEVCeWxDOTJsUUFEa0xwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733798860),('U58vcip2W23dJjDbais6bx66Uzpyc9AVmlbTOQ4r',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHZ5a1QxU2FqS0VsTFRXblpPNUNMejZPcGZJMHRuYk9qTHI5d2hkbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733804923),('upyUgMz6S5QGTHkgOco2m1M7EBqhkYe4seQ83K8u',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid0U5Sm85N0FMRlFTOTBrb3VmaVdhdnViaUx6RWs0dDcwbmlwdzBSUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733797721),('uRjJdFlojdohWpXtjKg9BIFYvLnvs8dYuVWnAwAB',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlIxWG44dngzSWx6aDNmNWtPODVpaUhHaHhQTVI1ajVlcUpCZnNqOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733794124),('vK1BfA7boqevIYgQuQA9ikcoYWPhjZjpGmS3qS08',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXRUeldLZ0Rxb09hTkRYT2YxZEtMeWZRYTY3c2w4cDQ4T2c5QXV0aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733788600),('wamlRwvN69Zj3fLn0bMUd3lkBRmCPsB7g3JPakyh',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkFaMzNLTTQyYTB4NGp6d2N2ZW9UcElIbFM2REFrMTIxaWQyc2E4aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733793282),('wL4jGI2Z8kT02iVuSChP9L7ZyKfoOfbMDvrIKcu1',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid2xZelRFNDZmcnVhRVJWY3lmQ0w5dXU1djRKSFdUNGhjWUZkQ1ZaSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733788846),('WvGNMlnusPnS8tQqBWz9rjIxqdIQqkFhs7l6EBsq',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUh5S1JFSUQ2ZG5BdDUxTXpPMzhaREZjOXRrc0FiTkt4akNPdUZKNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733790521),('wyEG5Jj1MU2HatEbLZ0KsZRnKqAARTwceJc8D2Qq',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVROd2g4ZXQ2dWE3TjRiNmJPZzZRSW15ekdmTUZVNFc1Wk1zUzJaWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733812967),('X4gujcYNY76TvJy8YELnCIQ3HNI3HEXAdnOVjIol',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzd1TTF6elRCb2F2NEZxYnV2YVllWmt2R3ZPWGVRZ09yNUtWaHRGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733815725),('x8M6Yxq8hvFUOa5LQrnJCrRbfGm7jCHrheEpKjT1',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFU2bDBuWnI1TWliN1J6Y2t1RlowdVdCZEl0RFNINTEwNGVHbDBtTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733806603),('xPPif9Ktwae2HhZtPKw6lT4IfmqO3PMy8COxQoTY',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1JsN25Ud201TTFSS2tCWm8ySXFnTFBHM29XUEFXbnQyYklFbnVOMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733810449),('Xqo6rfTQzRHR28PEgeePk6G9HnkWwar8poiG4naf',NULL,'38.180.139.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicWxZS0xtZDhlVDExVzRmR0xKOXR2SEpwQlRGeGRWWDIxaFNidFM4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733821281),('YFbsb0hF8gSJvO67KzlA2c9lI8VffqEYNg7arcEW',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnRTeVY2ZjZ3bTJEV3J6ZGFXWDY3Qm1xRUt1cmhXR1pzamxBSnBkZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733808523),('Ypto10G89PRLXp0Wx3b20wZ5ldZhp8fcK0zlgMcr',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoick9nTlllZDAxejFVTGZzaFl0bDJCaXBHSjRGVks1VGh3aG1HT2FrUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733814047),('Yvf5TeJfxfScNpfAImG0TPdlMeQVw7e2fQ69xbt5',NULL,'151.248.112.175','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW92TmoyTDhmem8xeVlrTlFKYVp3TWNSRUVtVDZaektuMDBtTFhlbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbC5va2RlYWwucnUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1733804080);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/December2024/C0wgrRmanIKoNXgKBRo4.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','Darina','','text',1,'Admin'),(7,'admin.description','Admin Description','Darina admin panel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/December2024/cR5eXao87oJ2jzfPnxUb.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shkaf`
--

DROP TABLE IF EXISTS `shkaf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shkaf` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `text_description` text COLLATE utf8mb4_unicode_ci,
  `image_slider` json DEFAULT NULL,
  `title_h2` text COLLATE utf8mb4_unicode_ci,
  `category_slide` json DEFAULT NULL,
  `title_h2_2` text COLLATE utf8mb4_unicode_ci,
  `video_url_2` text COLLATE utf8mb4_unicode_ci,
  `text_description_2` text COLLATE utf8mb4_unicode_ci,
  `description_slider` json DEFAULT NULL,
  `title_h2_3` text COLLATE utf8mb4_unicode_ci,
  `video_url_3` text COLLATE utf8mb4_unicode_ci,
  `text_description_3` text COLLATE utf8mb4_unicode_ci,
  `call_tocation` text COLLATE utf8mb4_unicode_ci,
  `call_tocation_2` text COLLATE utf8mb4_unicode_ci,
  `video_url_4` text COLLATE utf8mb4_unicode_ci,
  `icons` json DEFAULT NULL,
  `video_reviews` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `video_url_m` text COLLATE utf8mb4_unicode_ci,
  `video_url_2_m` text COLLATE utf8mb4_unicode_ci,
  `video_url_4_m` text COLLATE utf8mb4_unicode_ci,
  `video_url_3_m` text COLLATE utf8mb4_unicode_ci,
  `text_description_top` text COLLATE utf8mb4_unicode_ci,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shkaf`
--

LOCK TABLES `shkaf` WRITE;
/*!40000 ALTER TABLE `shkaf` DISABLE KEYS */;
INSERT INTO `shkaf` VALUES (1,'shkaf/shkafPc.mp4','<p>Наши шкафы сочетают в себе красоту <br>и функциональность, чтобы идеально соответствовать Вашим потребностям, желаниям и образу жизни</p>\r\n<p>&nbsp;</p>\r\n<p>Наши лучшие мастера будут рады бесплатно проконсультировать вас и помочь создать проект вашей мечты</p>','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner2.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner1.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner3.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner5.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/SliderBaner4.png\", \"title\": null, \"video\": null, \"category\": \"kitchens\"}]','Идеи для вашего шкафа на заказ','{\"0\": {\"title\": \"Ред\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/IMG_20241013_055226_382.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/IMG_20241013_055358_492.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/IMG_20241013_055401_774.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/IMG_20241013_055405_323.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Порядок и стиль в одном</span></p>\\r\\n<ul>\\r\\n<li>Максимальная функциональность.</li>\\r\\n<li>Стильный дизайн: Белые и стеклянные двери придают элегантность и легкость.&nbsp;</li>\\r\\n<li>Простор и порядок: Вместительный шкаф поможет упорядочить вещи.</li>\\r\\n<li>Возможность выбора материалов, дизайна и размеров под ваши потребности</li>\\r\\n</ul>\"}, \"1\": {\"title\": \"Перо\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787903121.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787905726.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787907608.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787909856.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787911900.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787914931.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/pero/behance_download_1728787916713.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Белый шкаф - классика с изюминкой</span><br><br></p>\\r\\n<ul>\\r\\n<li><strong>Индивидуальный дизайн:</strong> под ваши размеры и стиль.</li>\\r\\n<li><strong>Высокое качество:</strong> прочные материалы и надежная фурнитура.&nbsp;</li>\\r\\n<li style=\\\"font-weight: bold;\\\"><strong>Функциональность.</strong></li>\\r\\n<li><strong>Чистота и тепло:</strong> Сочетание белого и дерева создает атмосферу спокойствия и уюта.</li>\\r\\n</ul>\"}, \"3\": {\"title\": \"Деко\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/deko/IMG_20241013_134339_935.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/deko/IMG_20241013_134342_542.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/deko/IMG_20241013_134345_580.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Деревянный шкаф, сочетающий в себе изысканность серо-розового оттенка и роскошь стеклянных дверей с черной окантовкой.</span></p>\\r\\n<ul>\\r\\n<li><strong>Стиль арт-деко:</strong> элегантность</li>\\r\\n<li style=\\\"font-weight: bold;\\\"><strong>Функциональность</strong></li>\\r\\n<li><strong>Визуальная легкость:</strong> стеклянные двери с черной окантовкой создают ощущение простора и воздушности.</li>\\r\\n</ul>\"}, \"4\": {\"title\": \"Гала\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/gala/IMG_20241013_134611_986.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/gala/IMG_20241013_134348_964.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/gala/IMG_20241013_134615_845.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/gala/IMG_20241013_134618_511.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Светлый стиль в сочетании с черным профилем и подсветкой</span>.&nbsp;</p>\\r\\n<ul>\\r\\n<li><strong>Чистота и тепло:</strong> Сочетание белого и дерева создает атмосферу спокойствия и уюта.</li>\\r\\n<li><strong>Стиль и функциональность. </strong></li>\\r\\n<li><strong>Белый холст и черные акценты -</strong> идеальная основа для создания вашего стиля.</li>\\r\\n</ul>\\r\\n<p>&nbsp;</p>\"}, \"5\": {\"title\": \"Грей\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/grey/IMG_20241013_133638_182.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/grey/IMG_20241013_133641_201.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/grey/IMG_20241013_133644_256.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/grey/IMG_20241013_133647_021.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Светлый стиль в сочетании с деревянной основой.</span></p>\\r\\n<ul>\\r\\n<li><strong>Чистота и тепло: </strong>Сочетание белого и дерева создает атмосферу спокойствия и уюта.</li>\\r\\n<li><strong>Стиль и функциональность. </strong>Использованы раздвижные двери.</li>\\r\\n<li><strong>Белый холст и деревянные акценты -</strong> идеальная основа для создания вашего стиля.</li>\\r\\n</ul>\"}, \"6\": {\"title\": \"Лайн\", \"video\": null, \"gallery\": {\"1\": {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/line/1.png\"}, \"2\": {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/line/2.png\"}, \"3\": {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/line/3.png\"}}, \"description\": \"<p>Большой четырехдверный шкаф, вместительный и удобный для систематизации гардероба всей семьи. Лаконичный дизайн с контрастной отделкой фасадов легко впишется в современный интерьер. Надежная дверная система &laquo;Версаль&raquo; обеспечит длительный срок службы шкафа, а продуманное наполнение поможет организовать хранение одежды и обуви.</p>\"}, \"7\": {\"title\": \"Латте\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/latte/1.png\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/latte/2.png\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/latte/3.png\"}], \"description\": \"<p>Шкаф универсальный и полезный. В нем есть место для хранения вещей в сложенном виде, а также возможность вешать одежду. Эргономичный шкаф купе удобен в использовании &ndash; не требует дополнительного места для открывания дверей. Свободное пространство слишком важно, чтобы его лишаться!</p>\"}, \"8\": {\"title\": \"Норд\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/nord/IMG_20241013_134212_909.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/nord/IMG_20241013_134238_482.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/nord/IMG_20241013_134242_139.jpg\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Шкаф, который сочетает черты скандинавского стиля и японской философии простоты и гармонии.</span><br><br></p>\\r\\n<ul>\\r\\n<li>Универсальный дизайн, лаконичный вид</li>\\r\\n<li>Функциональность</li>\\r\\n<li>Визуальная легкость: стеклянные двери с черной окантовкой создают ощущение простора и воздушности.</li>\\r\\n</ul>\"}, \"9\": {\"title\": \"Тапи\", \"video\": null, \"gallery\": [{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/tapi/10-2.jpg\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/tapi/m.png\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/tapi/1.png\"}], \"description\": \"<p><span style=\\\"color: rgb(212, 96, 59);\\\">Шкаф-купе &ndash; это вместительная система для хранения одежды, обуви, предметов гардероба и других, самых разных вещей.</span> <br><br>Массивное основание с текстурой дерева и большие зеркальные фасады станут прекрасным дополнением любого интерьера. За дверцами вас ждет продуманное внутреннее наполнение: глубокие полки и отдельный отсек со штангой для вешалок.</p>\"}}','Встроенный шкаф - скрытый порядок','shkaf/ShkafVideoButton.mp4','<p>Шкаф, изготовленный по индивидуальным размерам, прекрасно вписывается даже в самые нестандартные уголки вашего дома. Вы можете использовать все пространство, от стены до стены, от пола до потолка</p>','[{\"image\": \"https://l.okdeal.ru/storage/Ashkaf/get.aspx.jpeg\", \"title\": \"Место, в котором вам понравится жить\", \"video\": null, \"description\": \"<p>Кухня - это место, где семьи собираются по утрам и где простой ужин может превратиться в праздник. Кухня является сердцем дома, и мы разрабатываем их в соответствии с вашими личными потребностями</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/image1.png\", \"title\": \"Как выбрать кухню?\", \"video\": null, \"description\": \"<p>Ваши потребности и образ жизни окажут значительное влияние на выбор дизайнерской кухни, которая лучше всего подходит для Вас. Какую технику вы предпочитаете, как часто приглашаете семью и друзей на ужин, какой у вас бюджет? На основе данных вопросов у Вас сформируется список</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/image3.png\", \"title\": \"Функциональность на высшем уровне\", \"video\": null, \"description\": \"<p>Увеличьте полезное пространство с помощью отсеков и продуманных систем хранения. Каждая деталь будет организована так, чтобы вам было удобно и приятно.</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/01_urban_green.1280x0-srcset.jpg\", \"title\": \"Идеальная планировка\", \"video\": null, \"description\": \"<p>Забудьте о стандартных решениях! Вы сами выбираете материалы, цветовые схемы и отделку, создавая уникальную атмосферу, отражающую ваш характер и предпочтения.</p>\"}, {\"image\": \"https://l.okdeal.ru/storage/Ashkaf/image323.png\", \"title\": \"Эксклюзивный дизайн \", \"video\": null, \"description\": \"<p>Кухня, выполненная под индивидуальные размеры, идеально подходит именно для вашего пространства. Вам больше не нужно жертвовать удобством ради стиля &mdash; каждое движение будет естественным и свободным.</p>\"}]','Идеальная планировка','shkaf/shkaf3.mp4','<p><strong>Эксклюзивность и уникальность. </strong></p>\r\n<p>Воплотим любые решения, учитывая все потребности. Вы можете выбрать дизайн, материалы и детали, которые подходят именно вам. Каждый шкаф - выражение вашего вкуса.</p>','Шкаф на заказ позволяет создать идеальные внутренние решения, от выдвижных систем до специализированных отсеков.','<p>Красивый и функциональный мир, где ваша душа расцветает</p>','shkaf/shkaf7.mp4','[{\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/kac-b.svg\", \"title\": \"Качественные материалы и фурнитура\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/proiz-b.svg\", \"title\": \"Собственное производство\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/garant-b.svg\", \"title\": \"Гарантия 5 лет\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": \"/\", \"image\": \"https://l.okdeal.ru/storage/main-page/icons/home-b.svg\", \"title\": \"Заказ на дому\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/dost-b.svg\", \"title\": \"Доставка по всей России\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/pod-b.svg\", \"title\": \"Бесплатный проект\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/time-b.svg\", \"title\": \"Срок изготовления от 14 дней\", \"video\": null, \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/icons/rassrocka-b.svg\", \"title\": \"Рассрочка\", \"video\": null, \"category\": \"kitchens\"}]','[{\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую 4\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую 5\", \"video\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo2.png\", \"title\": \"Шкаф в прихожую 6\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido2.mp4\", \"category\": \"kitchens\"}, {\"url\": null, \"image\": \"https://l.okdeal.ru/storage/main-page/commentVideo1.png\", \"title\": \"Шкаф в прихожую 7\", \"video\": \"https://l.okdeal.ru/storage/Video/commentVido1.mp4\", \"category\": \"kitchens\"}]','2024-12-25 05:50:00','2025-05-07 09:19:18',NULL,'shkaf/mobshkaf.mp4',NULL,'shkaf/shkaf7.mp4','shkaf/shkaf3.mp4',NULL,'Шкафы',NULL);
/*!40000 ALTER TABLE `shkaf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Adman','777itgen@gmail.com','users/default.png',NULL,'$2y$12$MmyvoVmxmXm9ERcNBRFu0.WPV/AbRU9Zo75I7JTVlLQLS2gG6kary',NULL,NULL,'2024-12-13 06:56:40','2024-12-13 06:56:40');
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

-- Dump completed on 2025-07-12 12:51:18

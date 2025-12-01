-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 01 déc. 2025 à 10:14
-- Version du serveur : 10.3.39-MariaDB-cll-lve
-- Version de PHP : 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pennygul_25_bftfed_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `DB_cooking_open_data`
--

CREATE TABLE `DB_cooking_open_data` (
  `concept_id` int(11) NOT NULL,
  `type_fr` varchar(50) NOT NULL COMMENT 'Type principal FR',
  `type_nl` varchar(50) DEFAULT NULL COMMENT 'Type principal NL',
  `type_en` varchar(50) DEFAULT NULL COMMENT 'Type principal EN',
  `category_fr` varchar(100) DEFAULT NULL COMMENT 'Catégorie FR',
  `category_nl` varchar(100) DEFAULT NULL COMMENT 'Catégorie NL',
  `category_en` varchar(100) DEFAULT NULL COMMENT 'Catégorie EN',
  `subcategory1_fr` varchar(100) DEFAULT NULL COMMENT 'Sous-catégorie 1 FR',
  `subcategory1_nl` varchar(100) DEFAULT NULL COMMENT 'Sous-catégorie 1 NL',
  `subcategory1_en` varchar(100) DEFAULT NULL COMMENT 'Sous-catégorie 1 EN',
  `subcategory2_fr` varchar(100) DEFAULT NULL COMMENT 'Sous-catégorie 2 FR',
  `subcategory2_nl` varchar(100) DEFAULT NULL COMMENT 'Sous-catégorie 2 NL',
  `subcategory2_en` varchar(100) DEFAULT NULL COMMENT 'Sous-catégorie 2 EN',
  `keywords_fr` varchar(255) DEFAULT NULL COMMENT 'Mots-clés FR',
  `keywords_nl` varchar(255) DEFAULT NULL COMMENT 'Mots-clés NL',
  `keywords_en` varchar(255) DEFAULT NULL COMMENT 'Mots-clés EN',
  `dietary_tags` varchar(255) DEFAULT NULL COMMENT 'Tags diététiques',
  `source` varchar(100) NOT NULL DEFAULT 'BFTFED' COMMENT 'Source',
  `date_added` date NOT NULL COMMENT 'Date d''ajout',
  `last_modified` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Dernière modification',
  `status` enum('validated','pending','rejected') NOT NULL DEFAULT 'pending' COMMENT 'Statut'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `DB_cooking_open_data`
--

INSERT INTO `DB_cooking_open_data` (`concept_id`, `type_fr`, `type_nl`, `type_en`, `category_fr`, `category_nl`, `category_en`, `subcategory1_fr`, `subcategory1_nl`, `subcategory1_en`, `subcategory2_fr`, `subcategory2_nl`, `subcategory2_en`, `keywords_fr`, `keywords_nl`, `keywords_en`, `dietary_tags`, `source`, `date_added`, `last_modified`, `status`) VALUES
(2, 'Boissons', 'Dranken', 'drinks', 'Alcool divers', 'Diverse alcoholische dranken', 'alcohol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(3, 'Boissons', 'Dranken', 'drinks', 'Bières', 'Bieren', 'beers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(4, 'Boissons', 'Dranken', 'drinks', 'Cafés', 'Koffie', 'coffee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(5, 'Boissons', 'Dranken', 'drinks', 'Cocktails', 'Cocktails', 'Cocktails', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(6, 'Boissons', 'Dranken', 'drinks', 'Boissons chaudes', 'Warme dranken', 'Hot drinks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(7, 'Boissons', 'Dranken', 'drinks', 'Jus de fruits', 'Vruchtensappen', 'juice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(8, 'Boissons', 'Dranken', 'drinks', 'Smoothies', 'Smoothies', 'Smoothies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(9, 'Boissons', 'Dranken', 'drinks', 'Thés', 'Thee', 'teas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(10, 'Boissons', 'Dranken', 'drinks', 'Vins', 'Wijnen', 'wines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(11, 'Boissons', 'Dranken', 'drinks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(12, 'Concept', NULL, 'Concept', 'Dim Sum', 'Dim Sum', 'Dim Sum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(13, 'Concept', NULL, 'Concept', 'Sushi', 'Sushi', 'Sushi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(14, 'Concept', NULL, 'Concept', 'Tapas', 'Tapas', 'Tapas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(15, 'Concept', NULL, 'Concept', 'Durum', 'Durum', 'Durum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(16, 'Concept', NULL, 'Concept', 'Viandes', 'Vlees', 'Meats', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(17, 'Concept', NULL, 'Concept', 'Fruits de mer', 'Zeevruchten', 'Seafood', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(18, 'Concept', NULL, 'Concept', 'Bagels', 'Bagels', 'Bagels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(19, 'Concept', NULL, 'Concept', 'insectes', 'Insecten', 'bugs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(20, 'Concept', NULL, 'Concept', 'Hamburger', 'Hamburger', 'Hamburger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(21, 'Concept', NULL, 'Concept', 'Fromages', 'Kaas', 'Cheeses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(22, 'Concept', NULL, 'Concept', 'Poissons', 'Vis', 'fish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(23, 'Concept', NULL, 'Concept', 'Fish and chips', 'Fish and chips', 'Fish and chips', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(24, 'Concept', NULL, 'Concept', 'Frites', 'Frieten', 'fries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(25, 'Concept', NULL, 'Concept', 'Grillade et barbecue', 'Grillen en barbecue', 'Grilling and barbecue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(26, 'Concept', NULL, 'Concept', 'Croques / Grilled cheese', 'Croques / Grilled cheese', 'Croques / Grilled cheese', NULL, NULL, NULL, NULL, NULL, NULL, 'croque monsieur, croque madame, grilled cheese, sandwich chaud, fromage fondu', 'croque monsieur, croque madame, grilled cheese, warme sandwich, gesmolten kaas', 'croque monsieur, croque madame, grilled cheese, hot sandwich, melted cheese', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:55:40', 'validated'),
(27, 'Concept', NULL, 'Concept', 'Kasher', 'Koosjer', 'kosher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kosher', 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(28, 'Concept', NULL, 'Concept', 'Halal', 'Halal', 'Halal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'halal', 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(29, 'Concept', NULL, 'Concept', 'Hot dog', 'Hot dog', 'Hot dog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(30, 'Concept', NULL, 'Concept', 'Kebab', 'Kebab', 'Kebab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(31, 'Concept', NULL, 'Concept', 'Bio', 'Biologisch', 'Organic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'organic', 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(32, 'Concept', NULL, 'Concept', 'Paella', 'Paella', 'Paella', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(33, 'Concept', NULL, 'Concept', 'Pâtes', 'Pasta', 'Pasta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(34, 'Concept', NULL, 'Concept', 'Tartes / Quiches', 'Taarten / Quiches', 'pies / quiches', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(35, 'Concept', NULL, 'Concept', 'Pizza', 'Pizza', 'Pizza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(36, 'Concept', NULL, 'Concept', 'Locale', 'Lokaal', 'Local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(37, 'Concept', NULL, 'Concept', 'Bistronomie', 'Bistronomie', 'Bistronomy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(38, 'Concept', NULL, 'Concept', 'Slow food', 'Slow food', 'Slow food', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(39, 'Concept', NULL, 'Concept', 'Soupes', 'Soepen', 'soups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(40, 'Concept', NULL, 'Concept', 'Végane', 'Veganistisch', 'vegan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vegan,vegetarian,dairy-free,egg-free', 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(41, 'Concept', NULL, 'Concept', 'Végétarienne', 'Vegetarisch', 'Vegetarian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(42, 'Concept', NULL, 'Concept', 'Crêpes / galettes', 'Pannenkoeken', 'Pancakes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(43, 'Concept', NULL, 'Concept', 'Gaufres', 'Wafels', 'Waffles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(44, 'Concept', NULL, 'Concept', 'Pomme de terre', 'Aardappel', 'potato', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(45, 'Concept', NULL, 'Concept', 'Wrap', 'Wrap', 'Wrap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:41:34', 'validated'),
(46, 'Desserts', 'Nagerechten', 'Desserts', 'yaourt', 'Yoghurt', 'yogurt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(47, 'Desserts', 'Nagerechten', 'Desserts', 'Glace', 'IJs', 'ice cream', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(48, 'Desserts', 'Nagerechten', 'Desserts', 'Crêpes / galettes', 'Pannenkoeken', 'Pancakes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(49, 'Desserts', 'Nagerechten', 'Desserts', 'Gaufres', 'Wafels', 'Waffles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(50, 'Desserts', 'Nagerechten', 'Desserts', 'Churros', 'Churros', 'Churros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(51, 'Desserts', 'Nagerechten', 'Desserts', 'Autres', 'Andere', 'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(52, 'Ethnique', 'Etnisch', 'Ethnic', 'Africaine', 'Afrikaans', 'african', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(53, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Acadienne', 'Acadisch', 'Acadian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(54, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Amish', 'Amish', 'Amish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(55, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Californienne', 'Californisch', 'Californian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(56, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Canadienne', 'Canadees', 'Canadian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(57, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Amérindienne', 'Inheems-Amerikaans', 'Native American', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(58, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Texane', 'Texaans', 'Texan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(59, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(60, 'Ethnique', 'Etnisch', 'Ethnic', 'Asiatique', 'Aziatisch', 'Asian', 'Chinoise', 'Chinees', 'Chinese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(61, 'Ethnique', 'Etnisch', 'Ethnic', 'Asiatique', 'Aziatisch', 'Asian', 'Japonaise', 'Japans', 'Japanese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(62, 'Ethnique', 'Etnisch', 'Ethnic', 'Asiatique', 'Aziatisch', 'Asian', 'Thaïlandaise', 'Thais', 'Thai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(63, 'Ethnique', 'Etnisch', 'Ethnic', 'Asiatique', 'Aziatisch', 'Asian', 'Vietnamienne', 'Vietnamees', 'Vietnamese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(64, 'Ethnique', 'Etnisch', 'Ethnic', 'Asiatique', 'Aziatisch', 'Asian', 'Coréenne', 'Koreaans', 'Korean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(65, 'Ethnique', 'Etnisch', 'Ethnic', 'Asiatique', 'Aziatisch', 'Asian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(66, 'Ethnique', 'Etnisch', 'Ethnic', 'Caribéenne', 'Caribisch', 'Caribbean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(67, 'Ethnique', 'Etnisch', 'Ethnic', 'Créole', 'Creools', 'Creole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(68, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Autrichienne', 'Oostenrijks', 'Austrian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(69, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Basque', 'Baskisch', 'Basque', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(70, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Belge', 'Belgisch', 'Belgian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(71, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'British', 'Brits', 'British', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(72, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Bulgare', 'Bulgaars', 'Bulgarian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(73, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Italienne', 'Italiaans', 'Italian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(74, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Espagnole', 'Spaans', 'Spanish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(75, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Allemande', 'Duits', 'German', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(76, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(77, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(78, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', 'Alsacienne', 'Elzasser', 'Alsatian', NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(79, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', 'Bourguignonne', 'Bourgondisch', 'Burgundian', NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(80, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', 'Bretonne', 'Bretons', 'Breton', NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(81, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', 'Chti', 'Chti', 'Chti', NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(82, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', 'Camarguaise', 'Camargue', 'Camargue', NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(83, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Française', 'Frans', 'French', 'Savoyarde', 'Savoyard', 'Savoyard', NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(85, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Hongroise', 'Hongaars', 'Hungarian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(87, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Polonaise', 'Pools', 'Polish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(88, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Portugaise', 'Portugees', 'Portuguese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(89, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Provençale', 'Provençaals', 'Provençal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(90, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Roumaine', 'Roemeens', 'Romanian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(91, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Russe', 'Russisch', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(92, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Scottish', 'Schots', 'Scottish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(93, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Slovaque', 'Slowaaks', 'Slovak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(95, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Suisse', 'Zwitsers', 'Swiss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(96, 'Ethnique', 'Etnisch', 'Ethnic', 'Indienne', 'Indiaas', 'indian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(97, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(98, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Bolivienne', 'Boliviaans', 'Bolivian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(99, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Brésilienne', 'Braziliaans', 'Brazilian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(100, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Chilienne', 'Chileens', 'Chilean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(101, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Colombienne', 'Colombiaans', 'Colombian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(102, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Équatorienne', 'Ecuadoraans', 'Ecuadorian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(103, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Mexicaine', 'Mexicaans', 'Mexican', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(104, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Péruvienne', 'Peruaans', 'Peruvian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(105, 'Ethnique', 'Etnisch', 'Ethnic', 'Latino', 'Latijns-Amerikaans', 'Latino', 'Vénézuélienne', 'Venezolaans', 'Venezuelan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(106, 'Ethnique', 'Etnisch', 'Ethnic', 'Méditerranéenne', 'Mediterraans', 'Mediterranean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(107, 'Ethnique', 'Etnisch', 'Ethnic', 'Méditerranéenne', 'Mediterraans', 'Mediterranean', 'Chypriote', 'Cypriotisch', 'Cypriot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(108, 'Ethnique', 'Etnisch', 'Ethnic', 'Méditerranéenne', 'Mediterraans', 'Mediterranean', 'Grecque', 'Grieks', 'Greek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(109, 'Ethnique', 'Etnisch', 'Ethnic', 'Méditerranéenne', 'Mediterraans', 'Mediterranean', 'Corse', 'Corsicaans', 'Corsican', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(110, 'Ethnique', 'Etnisch', 'Ethnic', 'Orientale', 'Oriëntaals', 'Oriental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(111, 'Ethnique', 'Etnisch', 'Ethnic', 'Orientale', 'Oriëntaals', 'Oriental', 'Albanaise', 'Albanees', 'Albanian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(112, 'Ethnique', 'Etnisch', 'Ethnic', 'Orientale', 'Oriëntaals', 'Oriental', 'Arménienne', 'Armeens', 'Armenian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(113, 'Ethnique', 'Etnisch', 'Ethnic', 'Orientale', 'Oriëntaals', 'Oriental', 'Égyptienne', 'Egyptisch', 'Egyptian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(114, 'Ethnique', 'Etnisch', 'Ethnic', 'Orientale', 'Oriëntaals', 'Oriental', 'Libanaise', 'Libanees', 'Lebanese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(115, 'Ethnique', 'Etnisch', 'Ethnic', 'Orientale', 'Oriëntaals', 'Oriental', 'Maghrébine', 'Maghrebijns', 'Maghrebian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(116, 'Ethnique', 'Etnisch', 'Ethnic', 'Scandinave', 'Scandinavisch', 'Scandinavian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(117, 'Ethnique', 'Etnisch', 'Ethnic', 'du monde', 'Internationaal', 'international', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(118, 'Ethnique', 'Etnisch', 'Ethnic', 'Indonésienne', 'Indonesisch', 'indonesian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(120, 'Ethnique', 'Etnisch', 'Ethnic', 'Américaine', 'Amerikaans', 'american', 'Tex-mex', 'Tex-Mex', 'Tex-Mex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(121, 'Ethnique', 'Etnisch', 'Ethnic', 'Européenne', 'Europees', 'european', 'Turque', 'Turks', 'Turkish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(122, 'Ethnique', 'Etnisch', 'Ethnic', 'Australienne', 'Australisch', 'Australian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:47:28', 'validated'),
(123, 'Concept', 'Concept', 'Concept', 'Corn dog', 'Corn dog', 'Corn dog', NULL, NULL, NULL, NULL, NULL, NULL, 'saucisse panée, pâte à frire, bâtonnet', 'gepaneerde worst, frituurdeeg, stokje', 'battered sausage, corn batter, stick', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(124, 'Concept', 'Concept', 'Concept', 'Nachos', 'Nachos', 'Nachos', NULL, NULL, NULL, NULL, NULL, NULL, 'chips tortilla, fromage, jalapeños', 'tortillachips, kaas, jalapeños', 'tortilla chips, cheese, jalapeños', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(125, 'Concept', 'Concept', 'Concept', 'Quesadilla', 'Quesadilla', 'Quesadilla', NULL, NULL, NULL, NULL, NULL, NULL, 'tortilla, fromage fondu, garniture', 'tortilla, gesmolten kaas, vulling', 'tortilla, melted cheese, filling', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(126, 'Concept', 'Concept', 'Concept', 'Burritos', 'Burritos', 'Burritos', NULL, NULL, NULL, NULL, NULL, NULL, 'tortilla enroulée, riz, haricots, viande', 'opgerolde tortilla, rijst, bonen, vlees', 'wrapped tortilla, rice, beans, meat', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(127, 'Concept', 'Concept', 'Concept', 'Onigiri', 'Onigiri', 'Onigiri', NULL, NULL, NULL, NULL, NULL, NULL, 'boulette de riz, algue nori, fourrage', 'rijstbal, nori zeewier, vulling', 'rice ball, nori seaweed, filling', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(128, 'Concept', 'Concept', 'Concept', 'Ramen', 'Ramen', 'Ramen', NULL, NULL, NULL, NULL, NULL, NULL, 'nouilles japonaises, bouillon, garnitures', 'Japanse noedels, bouillon, toppings', 'Japanese noodles, broth, toppings', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(129, 'Concept', 'Concept', 'Concept', 'Banh Mi', 'Banh Mi', 'Banh Mi', NULL, NULL, NULL, NULL, NULL, NULL, 'sandwich vietnamien, baguette, coriandre', 'Vietnamees broodje, stokbrood, koriander', 'Vietnamese sandwich, baguette, cilantro', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(130, 'Concept', 'Concept', 'Concept', 'Bao buns', 'Bao buns', 'Bao buns', NULL, NULL, NULL, NULL, NULL, NULL, 'pain vapeur, garniture asiatique', 'gestoomde broodjes, Aziatische vulling', 'steamed buns, Asian filling', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(131, 'Concept', 'Concept', 'Concept', 'Gyoza', 'Gyoza', 'Gyoza', NULL, NULL, NULL, NULL, NULL, NULL, 'raviolis japonais, poêlés, vapeur', 'Japanse dumplings, gebakken, gestoomd', 'Japanese dumplings, pan-fried, steamed', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(132, 'Concept', 'Concept', 'Concept', 'Takoyaki', 'Takoyaki', 'Takoyaki', NULL, NULL, NULL, NULL, NULL, NULL, 'boulettes de poulpe, sauce, bonite', 'octopusballetjes, saus, bonito', 'octopus balls, sauce, bonito flakes', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(133, 'Concept', 'Concept', 'Concept', 'Pad Thai', 'Pad Thai', 'Pad Thai', NULL, NULL, NULL, NULL, NULL, NULL, 'nouilles sautées, cacahuètes, citron', 'gebakken noedels, pindas, limoen', 'stir-fried noodles, peanuts, lime', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(134, 'Concept', 'Concept', 'Concept', 'Poke Bowl', 'Poke Bowl', 'Poke Bowl', NULL, NULL, NULL, NULL, NULL, NULL, 'bol hawaïen, poisson cru, riz, légumes', 'Hawaiiaanse bowl, rauwe vis, rijst, groenten', 'Hawaiian bowl, raw fish, rice, vegetables', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(135, 'Concept', 'Concept', 'Concept', 'Nems', 'Loempia', 'Spring rolls', NULL, NULL, NULL, NULL, NULL, NULL, 'rouleau de printemps, frits, crudités', 'loempia, gefrituurd, groenten', 'spring rolls, fried, vegetables', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(136, 'Concept', 'Concept', 'Concept', 'Falafel', 'Falafel', 'Falafel', NULL, NULL, NULL, NULL, NULL, NULL, 'boulettes pois chiches, frits, épices', 'kikkererwtenballetjes, gefrituurd, kruiden', 'chickpea balls, fried, spices', 'vegan,vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(137, 'Concept', 'Concept', 'Concept', 'Shawarma', 'Shawarma', 'Shawarma', NULL, NULL, NULL, NULL, NULL, NULL, 'viande grillée, broche verticale, pita', 'gegrild vlees, verticale spit, pita', 'grilled meat, vertical spit, pita', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(138, 'Concept', 'Concept', 'Concept', 'Houmous', 'Hummus', 'Hummus', NULL, NULL, NULL, NULL, NULL, NULL, 'purée pois chiches, tahini, citron', 'kikkererwtenpuree, tahini, citroen', 'chickpea puree, tahini, lemon', 'vegan,vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(139, 'Concept', 'Concept', 'Concept', 'Panini', 'Panini', 'Panini', NULL, NULL, NULL, NULL, NULL, NULL, 'sandwich grillé, pressé, italien', 'gegrilde sandwich, geperst, Italiaans', 'grilled sandwich, pressed, Italian', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(140, 'Concept', 'Concept', 'Concept', 'Arancini', 'Arancini', 'Arancini', NULL, NULL, NULL, NULL, NULL, NULL, 'boulettes de riz, frites, siciliennes', 'rijstballetjes, gefrituurd, Siciliaans', 'rice balls, fried, Sicilian', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(141, 'Concept', 'Concept', 'Concept', 'Empanadas', 'Empanadas', 'Empanadas', NULL, NULL, NULL, NULL, NULL, NULL, 'chaussons farcis, viande, légumes', 'gevulde pasteitjes, vlees, groenten', 'stuffed pastries, meat, vegetables', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(142, 'Concept', 'Concept', 'Concept', 'Bretzel', 'Pretzel', 'Pretzel', NULL, NULL, NULL, NULL, NULL, NULL, 'pain torsadé, sel, bicarbonate', 'gedraaid brood, zout, natriumbicarbonaat', 'twisted bread, salt, baking soda', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(143, 'Concept', 'Concept', 'Concept', 'Currywurst', 'Currywurst', 'Currywurst', NULL, NULL, NULL, NULL, NULL, NULL, 'saucisse, sauce curry, frites', 'worst, kerriesaus, friet', 'sausage, curry sauce, fries', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(144, 'Concept', 'Concept', 'Concept', 'Beignets', 'Beignets', 'Donuts', NULL, NULL, NULL, NULL, NULL, NULL, 'pâte frite sucrée, glaçage', 'gefrituurd zoet deeg, glazuur', 'fried sweet dough, glaze', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(145, 'Concept', 'Concept', 'Concept', 'Popcorn', 'Popcorn', 'Popcorn', NULL, NULL, NULL, NULL, NULL, NULL, 'maïs soufflé, salé, sucré', 'gepofte maïs, gezouten, zoet', 'popped corn, salted, sweet', 'vegan,vegetarian,gluten-free', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(146, 'Concept', 'Concept', 'Concept', 'Nuggets', 'Nuggets', 'Nuggets', NULL, NULL, NULL, NULL, NULL, NULL, 'bouchées de poulet panées, frits', 'gepaneerde kiphapjes, gefrituurd', 'breaded chicken bites, fried', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(147, 'Concept', 'Concept', 'Concept', 'Ailes de poulet', 'Kippenvleugels', 'Chicken wings', NULL, NULL, NULL, NULL, NULL, NULL, 'ailes frites, sauce piquante, BBQ', 'gefrituurde vleugels, pittige saus, BBQ', 'fried wings, hot sauce, BBQ', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(149, 'Concept', 'Concept', 'Concept', 'Buddha Bowl', 'Buddha Bowl', 'Buddha Bowl', NULL, NULL, NULL, NULL, NULL, NULL, 'bol végétarien, céréales, légumes', 'vegetarische bowl, granen, groenten', 'vegetarian bowl, grains, vegetables', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(150, 'Concept', 'Concept', 'Concept', 'Salades', 'Salades', 'Salads', NULL, NULL, NULL, NULL, NULL, NULL, 'salades composées, crudités, vinaigrette', 'samengestelde salades, rauwe groenten, vinaigrette', 'mixed salads, raw vegetables, dressing', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(151, 'Desserts', 'Nagerechten', 'Desserts', 'Crème glacée', 'IJsroom', 'Soft serve ice cream', NULL, NULL, NULL, NULL, NULL, NULL, 'glace à l\'italienne, cornet, toppings', 'zachte ijsroom, horentje, toppings', 'soft serve, cone, toppings', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(152, 'Desserts', 'Nagerechten', 'Desserts', 'Donuts', 'Donuts', 'Donuts', NULL, NULL, NULL, NULL, NULL, NULL, 'beignets américains, glaçage sucré', 'Amerikaanse donuts, zoete glazuur', 'American donuts, sweet glaze', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(153, 'Desserts', 'Nagerechten', 'Desserts', 'Brownies', 'Brownies', 'Brownies', NULL, NULL, NULL, NULL, NULL, NULL, 'gâteau chocolat, dense, américain', 'chocoladecake, dicht, Amerikaans', 'chocolate cake, dense, American', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(154, 'Desserts', 'Nagerechten', 'Desserts', 'Cookies', 'Koekjes', 'Cookies', NULL, NULL, NULL, NULL, NULL, NULL, 'biscuits américains, pépites chocolat', 'Amerikaanse koekjes, chocoladeschilfers', 'American cookies, chocolate chips', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(155, 'Desserts', 'Nagerechten', 'Desserts', 'Mochi', 'Mochi', 'Mochi', NULL, NULL, NULL, NULL, NULL, NULL, 'pâtisserie japonaise, riz gluant, glace', 'Japans gebak, kleefrijst, ijs', 'Japanese pastry, sticky rice, ice cream', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(156, 'Desserts', 'Nagerechten', 'Desserts', 'Bubble tea', 'Bubble tea', 'Bubble tea', NULL, NULL, NULL, NULL, NULL, NULL, 'thé aux perles, tapioca, aromatisé', 'thee met parels, tapioca, gearomatiseerd', 'tea with pearls, tapioca, flavored', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(157, 'Boissons', 'Dranken', 'drinks', 'Milkshakes', 'Milkshakes', 'Milkshakes', NULL, NULL, NULL, NULL, NULL, NULL, 'boisson lactée, glace, sirop', 'melkdrank, ijs, siroop', 'milk drink, ice cream, syrup', 'vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(158, 'Boissons', 'Dranken', 'drinks', 'Limonades', 'Limonades', 'Lemonades', NULL, NULL, NULL, NULL, NULL, NULL, 'boissons rafraîchissantes, maison', 'verfrissende dranken, huisgemaakt', 'refreshing drinks, homemade', 'vegan,vegetarian', 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(159, 'Boissons', 'Dranken', 'drinks', 'Bières artisanales', 'Ambachtelijke bieren', 'Craft beers', NULL, NULL, NULL, NULL, NULL, NULL, 'bières locales, microbrasseries', 'lokale bieren, microbrouwerijen', 'local beers, microbreweries', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(160, 'Concept', 'Concept', 'Concept', 'Smash burger', 'Smash burger', 'Smash burger', NULL, NULL, NULL, NULL, NULL, NULL, 'burger écrasé, croûte caramélisée', 'geplet burger, gekarameliseerde korst', 'smashed burger, caramelized crust', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(161, 'Concept', 'Concept', 'Concept', 'Tacos', 'Tacos', 'Tacos', NULL, NULL, NULL, NULL, NULL, NULL, 'tortilla pliée, garniture mexicaine', 'gevouwen tortilla, Mexicaanse vulling', 'folded tortilla, Mexican filling', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(162, 'Concept', 'Concept', 'Concept', 'Pulled pork', 'Pulled pork', 'Pulled pork', NULL, NULL, NULL, NULL, NULL, NULL, 'porc effiloché, BBQ, fumé', 'getrokken varkensvlees, BBQ, gerookt', 'shredded pork, BBQ, smoked', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(163, 'Concept', 'Concept', 'Concept', 'Lobster roll', 'Lobster roll', 'Lobster roll', NULL, NULL, NULL, NULL, NULL, NULL, 'sandwich homard, pain brioché', 'kreeftsandwich, briochebrood', 'lobster sandwich, brioche bun', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated'),
(164, 'Concept', 'Concept', 'Concept', 'Sandwichs', 'Sandwiches', 'Sandwiches', NULL, NULL, NULL, NULL, NULL, NULL, 'sandwichs variés, pain artisanal', 'gevarieerde broodjes, ambachtelijk brood', 'varied sandwiches, artisan bread', NULL, 'BFTFED', '2025-11-30', '2025-11-30 17:53:34', 'validated');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `DB_cooking_open_data`
--
ALTER TABLE `DB_cooking_open_data`
  ADD PRIMARY KEY (`concept_id`),
  ADD KEY `idx_type_fr` (`type_fr`),
  ADD KEY `idx_type_en` (`type_en`),
  ADD KEY `idx_category_fr` (`category_fr`),
  ADD KEY `idx_category_en` (`category_en`),
  ADD KEY `idx_subcategory1_fr` (`subcategory1_fr`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_date_added` (`date_added`),
  ADD KEY `idx_dietary_tags` (`dietary_tags`(50)),
  ADD KEY `idx_type_category_status` (`type_en`,`category_en`,`status`),
  ADD KEY `idx_date_status` (`date_added`,`status`);
ALTER TABLE `DB_cooking_open_data` ADD FULLTEXT KEY `idx_fulltext_keywords_fr` (`keywords_fr`);
ALTER TABLE `DB_cooking_open_data` ADD FULLTEXT KEY `idx_fulltext_keywords_en` (`keywords_en`);
ALTER TABLE `DB_cooking_open_data` ADD FULLTEXT KEY `idx_fulltext_keywords_nl` (`keywords_nl`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `DB_cooking_open_data`
--
ALTER TABLE `DB_cooking_open_data`
  MODIFY `concept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

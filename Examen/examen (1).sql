-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 27 avr. 2025 à 19:07
-- Version du serveur : 8.2.0
-- Version de PHP : 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `examen`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

DROP TABLE IF EXISTS `eleves`;
CREATE TABLE IF NOT EXISTS `eleves` (
  `idEleve` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dateNaissance` date NOT NULL,
  `classe` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idEleve`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `eleves`
--

INSERT INTO `eleves` (`idEleve`, `nom`, `prenom`, `dateNaissance`, `classe`) VALUES
(14, 'ded', 'dede', '2025-01-23', '1'),
(16, 'Andria', 'Andy', '2000-02-11', '2nd'),
(15, 'R', 'SR', '2025-06-18', '1'),
(13, 'test1', 'test2', '2000-03-09', '3');

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE IF NOT EXISTS `matieres` (
  `idMatiere` int NOT NULL AUTO_INCREMENT,
  `matiere` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `coef` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idMatiere`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`idMatiere`, `matiere`, `coef`) VALUES
(9, 'MATH', 3.00),
(5, 'droit', 20.00),
(10, 'SVT', 13.00);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `idNote` int NOT NULL AUTO_INCREMENT,
  `idEleve` int NOT NULL,
  `nomMatiere` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` decimal(10,2) NOT NULL,
  `trimestre` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idNote`),
  KEY `idEleve` (`idEleve`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`idNote`, `idEleve`, `nomMatiere`, `note`, `trimestre`) VALUES
(5, 14, 'Math', 12.00, '3'),
(3, 13, 'droit', 2.00, '2'),
(6, 14, 'Math', 12.00, '2'),
(7, 14, 'Math', 15.00, '1'),
(8, 14, 'SVT', 15.00, '3'),
(9, 14, 'Chimi', 20.00, '3'),
(10, 16, 'SVT', 16.00, '3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

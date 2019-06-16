-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 16 juin 2019 à 00:08
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `appweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `matricule` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `datenaiss` varchar(11) NOT NULL,
  `lieunaiss` varchar(60) NOT NULL,
  `sexe` varchar(60) NOT NULL,
  `nationalite` varchar(255) NOT NULL,
  `niveau` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdpass` varchar(255) NOT NULL,
  `tel` int(30) NOT NULL,
  `correspondant` varchar(30) NOT NULL,
  `lienphoto` varchar(255) NOT NULL,
  PRIMARY KEY (`matricule`),
  UNIQUE KEY `matricule_3` (`matricule`),
  KEY `matricule` (`matricule`),
  KEY `matricule_2` (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`matricule`, `nom`, `prenom`, `datenaiss`, `lieunaiss`, `sexe`, `nationalite`, `niveau`, `email`, `mdpass`, `tel`, `correspondant`, `lienphoto`) VALUES
('\'kakadi01\'', 'Bancouly', 'emmanuelle', '01/07/1997', 'oakland', 'Homme', 'malien', 'Licence2', 'banc@yahoo.fr', '147485936ebf26b4501943286d27d226813012fb', 87781952, 'pere', 'IMG_0876.JPG'),
('\'mimi789\'', 'marlene', 'emmanuelle', '03/12/1999', 'oakland', 'Femme', 'burkinabaise', 'Licence2', 'dro@yahoo.fr', 'e0c642cdc0d4e24ec58a5f217cde823c046035d2', 78956300, 'mere', 'IMG_0870.JPG'),
('babyboon', 'amichia', 'paulemma', '01/02/1999', 'cocody', 'homme', 'ivoirien', 'Licence1', 'agnogan@gmail.com', 'jetaimep100', 87781954, 'durand', 'imgaesf');

-- --------------------------------------------------------

--
-- Structure de la table `operations`
--

DROP TABLE IF EXISTS `operations`;
CREATE TABLE IF NOT EXISTS `operations` (
  `id_operation` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(255) NOT NULL,
  `date_op` varchar(255) NOT NULL,
  `montant_op` int(250) NOT NULL,
  `typeversement` varchar(11) NOT NULL,
  `visa` varchar(70) NOT NULL,
  `rap` int(255) NOT NULL,
  PRIMARY KEY (`id_operation`),
  KEY `matricule` (`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `operations`
--

INSERT INTO `operations` (`id_operation`, `matricule`, `date_op`, `montant_op`, `typeversement`, `visa`, `rap`) VALUES
(1, '\'kakadi01\'', '2019-06-15 14:39:28', 480000, 'cheque', 'durand', -405000),
(2, '\'kakadi01\'', '2019-06-15 14:47:22', 400000, 'cheque', 'YAh', 350000);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `etudiant` (`matricule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

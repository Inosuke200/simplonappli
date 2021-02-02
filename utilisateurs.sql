-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 fév. 2021 à 20:48
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `simplon`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_repeat` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `password`, `password_repeat`) VALUES
(1, 'GUIGMA', 'alain', 'guigmaalain@gmail.com', '926b4b8a00cfab44b758', '0000-00-00 00:00:00'),
(2, 'TAPSOBA', 'Nafissatou', 'nafissatoutapsoba08@gmail.com', '926b4b8a00cfab44b758', '0000-00-00 00:00:00'),
(3, 'OUIYA', 'Ismael', 'ismaelouiya@gmail.com', '34d1283dd5ddc95c54f8', '0000-00-00 00:00:00'),
(4, 'MIHIN', 'Aimé', 'aimemihin@gmail.com', '34d1283dd5ddc95c54f8', '::1'),
(5, 'OUIYA', 'Ismael', 'mihinaime@gmail.com', '926b4b8a00cfab44b758', '::1'),
(6, 'BASSINA', 'Rebecca', 'bassina@gmail.com', '926b4b8a00cfab44b758', '::1'),
(7, 'ZAONGA', 'Rafihatou', 'nafi@gmail.com', '926b4b8a00cfab44b758', '::1'),
(8, 'MOHAMED ', 'OUÉDRAOGO', 'mohamed@gmail.com', 'ef797c8118f02dfb6496', '::1'),
(9, 'OUIYA', 'ismael', 'ariane@gmail.com', 'c6a3f8373fd58f6bb012', '::1'),
(10, 'TIENDREBEOGO', 'Leïla', 'leila@gmail.com', '926b4b8a00cfab44b758', '::1'),
(11, 'ZANGO', 'adja', 'adja@gmail.com', 'cc86af11989d76959b2d', '::1'),
(12, 'OUIYA', 'Mahamadi', 'ismael@gmail.com', '926b4b8a00cfab44b758', '::1'),
(13, 'OUIYA', 'mahamadi', 'ismael@gmail.com', '03f9e5634432c0fd96f2', '::1'),
(14, 'DAO', 'isma', 'isma@gmail.com', '34d1283dd5ddc95c54f8', '::1'),
(15, 'DAO', 'kari', 'kari@gmail.com', '0642b10583fd20f76501', '::1'),
(16, 'DA', 'Issou', 'samuel@gmail.com', '961edd5adc0eaf044f68', '::1'),
(17, 'DAO', 'Boukari', 'dao@gmail.com', '926b4b8a00cfab44b758', '::1'),
(18, 'DAA', 'mari', 'mari@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '::1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

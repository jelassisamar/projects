-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 21 mai 2024 à 16:09
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `php-address-book-db`
--

-- --------------------------------------------------------

--
-- Structure de la table `-contact-`
--

CREATE TABLE `-contact-` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `-contact-`
--

INSERT INTO `-contact-` (`id`, `name`, `email`, `phone`, `address`, `group_id`, `user_id`) VALUES
(5, 'samar jelassi', 'samar.jelassi@issatso.u-sousse.tn', '58774325', 'medjez el beb', 19, 18),
(6, 'samar jelassi', 'samar.jelassi@issatso.u-sousse.tn', '58774325', 'medjez el beb', 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `-group-`
--

CREATE TABLE `-group-` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `-group-`
--

INSERT INTO `-group-` (`id`, `name`, `user_id`) VALUES
(13, 'loosers', 1),
(18, 'Work1', 17),
(19, 'Work', 18);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'samar jelassi', 'samar.jelassi@issatso.u-sousse.tn', '$2y$10$u8mvqA/hKpItD/anpWsZ0.Nm9YINXtWq1Y.N0/SBsUuAszmt8FDLu'),
(14, 'samar jelassi', 'samar.jelassi@gmail.com', '$2y$10$9vK.TQpalHfRoitGYCPSx.U3AUinlReUlNBUxy.7VS7uKEPd5aBZG'),
(15, 'samar jelassi', 'jlassisussngkuu@gmail.com', '$2y$10$qHF42v.e1z5DagY1FKWpKumsRE58CthrxMa8KTYBN/U4wbdEbnzxG'),
(16, 'yassine agrebi', 'yassineagerbi@gmail.com', '$2y$10$r996Vr9J0ZcnbGdktkXXcONfJYH4Y1Jqy3hvgjCT7FiAG49exRT22'),
(17, 'samar', 'samar@gmail.com', '$2y$10$2RRQkvlPtV.DWqNg9BQeO.E3pLSQ4fJgdUkOBjeIfg0EKfdLVQpUS'),
(18, 'samar', 'samar.jelassi@sousse.tn', '$2y$10$kPCT5z4l4accXG3nt18bhOraeamqCfnGcNtFq6ws6svBEgELksBSG');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `-contact-`
--
ALTER TABLE `-contact-`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `-group-`
--
ALTER TABLE `-group-`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `-contact-`
--
ALTER TABLE `-contact-`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `-group-`
--
ALTER TABLE `-group-`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

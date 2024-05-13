-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 12, 2024 at 06:24 PM
-- Server version: 5.7.39
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m2l`
--

-- --------------------------------------------------------

--
-- Table structure for table `annonce_global`
--

CREATE TABLE `annonce_global` (
  `id` int(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `id_utilisateur` int(255) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `texte` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `titre`, `image`, `texte`, `auteur`, `date`) VALUES
(1, 'Les secrets de l\'entraînement des athlètes olympiques', 'https://source.unsplash.com/featured/?olympics&sig=101', 'Une plongée dans les routines d\'entraînement rigoureuses des athlètes olympiques...', 'Lucie Bernard', '2023-01-01 00:00:00.000000'),
(2, 'Le football féminin gagne en popularité mondiale', 'https://source.unsplash.com/featured/?womens-football&sig=102', 'Le football féminin attire de plus en plus de fans et de jeunes joueuses...', 'Amir Khan', '2023-01-05 00:00:00.000000'),
(3, 'Nutrition sportive : Manger pour la performance', 'https://source.unsplash.com/featured/?sports-nutrition&sig=103', 'L\'importance d\'une alimentation équilibrée pour les athlètes de haut niveau...', 'Emily Johnson', '2023-01-10 00:00:00.000000'),
(4, 'L\'évolution des équipements de sport', 'https://source.unsplash.com/featured/?sports-equipment&sig=104', 'Comment la technologie change-t-elle les équipements sportifs utilisés par les athlètes...', 'Carlos Diaz', '2023-01-15 00:00:00.000000'),
(5, 'Yoga pour athlètes : Bénéfices et pratiques', 'https://source.unsplash.com/featured/?yoga&sig=105', 'Le yoga comme complément essentiel à l\'entraînement des athlètes...', 'Sophie Martin', '2023-01-20 00:00:00.000000'),
(6, 'Les marathons les plus difficiles du monde', 'https://source.unsplash.com/featured/?marathon&sig=106', 'Découvrez les marathons qui défient les limites de l\'endurance humaine...', 'Mohamed El Fassi', '2023-01-25 00:00:00.000000'),
(7, 'Le boom du fitness en ligne', 'https://source.unsplash.com/featured/?online-fitness&sig=107', 'Comment le fitness en ligne révolutionne-t-il nos routines d\'exercices...', 'Lisa Wong', '2023-01-30 00:00:00.000000'),
(8, 'Psychologie du sport : la mentalité de la victoire', 'https://source.unsplash.com/featured/?sports-psychology&sig=108', 'Explorer l\'impact de la psychologie sur les performances sportives...', 'David Smith', '2023-02-03 00:00:00.000000'),
(9, 'Les femmes qui changent le visage du sport', 'https://source.unsplash.com/featured/?women-in-sports&sig=109', 'Portrait de femmes influentes dans le monde du sport...', 'Amina Khatib', '2023-02-07 00:00:00.000000'),
(10, 'L\'essor du sport électronique dans le monde', 'https://source.unsplash.com/featured/?esports&sig=110', 'Le sport électronique, un phénomène mondial en pleine expansion...', 'Julien Moreau', '2023-02-11 00:00:00.000000'),
(11, 'La montée des arts martiaux mixtes', 'https://source.unsplash.com/featured/?mma&sig=111', 'Un regard sur la popularité croissante des arts martiaux mixtes...', 'Alex Durand', '2023-02-15 00:00:00.000000'),
(12, 'Les défis du cyclisme professionnel', 'https://source.unsplash.com/featured/?cycling&sig=112', 'Exploration des épreuves et des victoires du cyclisme professionnel...', 'Chloé Dubois', '2023-02-18 00:00:00.000000'),
(13, 'Le tennis moderne : Entre tradition et innovation', 'https://source.unsplash.com/featured/?tennis&sig=113', 'Analyse de l\'évolution du tennis au fil des ans...', 'Rafael Nunez', '2023-02-21 00:00:00.000000'),
(14, 'L\'équipe de basketball qui a changé le jeu', 'https://source.unsplash.com/featured/?basketball&sig=114', 'Retour sur une équipe de basketball qui a marqué l\'histoire...', 'Michael Jordan', '2023-02-25 00:00:00.000000'),
(15, 'Les plus grands moments des Jeux Olympiques', 'https://source.unsplash.com/featured/?olympics&sig=115', 'Un récapitulatif des moments les plus mémorables des Jeux Olympiques...', 'Olivia Martin', '2023-03-01 00:00:00.000000'),
(16, 'La natation compétitive : Techniques et entraînements', 'https://source.unsplash.com/featured/?swimming&sig=116', 'Découverte des techniques d\'entraînement en natation compétitive...', 'Nathan Phelps', '2023-03-05 00:00:00.000000'),
(17, 'Le golf : Plus qu\'un sport, un art de vivre', 'https://source.unsplash.com/featured/?golf&sig=117', 'Exploration de la culture et de l\'influence du golf...', 'Tiger Woods', '2023-03-10 00:00:00.000000'),
(18, 'L\'ascension du skateboard comme sport olympique', 'https://source.unsplash.com/featured/?skateboarding&sig=118', 'Analyse de la popularité croissante du skateboard...', 'Tony Hawk', '2023-03-15 00:00:00.000000'),
(19, 'Le badminton : un sport rapide et stratégique', 'https://source.unsplash.com/featured/?badminton&sig=119', 'Découverte du badminton, un sport à la fois rapide et tactique...', 'Lin Dan', '2023-03-20 00:00:00.000000'),
(20, 'La révolution du parkour en milieu urbain', 'https://source.unsplash.com/featured/?parkour&sig=120', 'Exploration de la montée du parkour dans les environnements urbains...', 'David Belle', '2023-03-25 00:00:00.000000'),
(21, 'Le surf : Surfer sur la vague de l\'extrême', 'https://source.unsplash.com/featured/?surfing&sig=121', 'Plongée dans le monde excitant du surf...', 'Kelly Slater', '2023-03-30 00:00:00.000000'),
(22, 'L\'escalade sportive : Défier les hauteurs', 'https://source.unsplash.com/featured/?climbing&sig=122', 'Un aperçu du monde de l\'escalade sportive...', 'Adam Ondra', '2023-04-04 00:00:00.000000'),
(23, 'L\'aviron : Synchronisation et endurance', 'https://source.unsplash.com/featured/?rowing&sig=123', 'Exploration des défis et de la beauté de l\'aviron...', 'Mahe Drysdale', '2023-04-08 00:00:00.000000'),
(24, 'Le cricket : un sport avec une histoire riche', 'https://source.unsplash.com/featured/?cricket&sig=124', 'Découverte de l\'histoire et des traditions du cricket...', 'Sachin Tendulkar', '2023-04-12 00:00:00.000000'),
(25, 'La boxe : Un sport de combat et de stratégie', 'https://source.unsplash.com/featured/?boxing&sig=125', 'Une analyse de la boxe en tant que sport de combat stratégique...', 'Muhammad Ali', '2023-04-16 00:00:00.000000'),
(26, 'Le handball : Un sport d\'équipe dynamique', 'https://source.unsplash.com/featured/?handball&sig=126', 'Examen du handball, un sport d\'équipe rapide et passionnant...', 'Nikola Karabatic', '2023-04-20 00:00:00.000000'),
(27, 'L\'athlétisme : Le fondement du sport compétitif', 'https://source.unsplash.com/featured/?athletics&sig=127', 'Exploration des différentes disciplines de l\'athlétisme...', 'Usain Bolt', '2023-04-24 00:00:00.000000'),
(28, 'Le hockey sur glace : Rapidité et adresse', 'https://source.unsplash.com/featured/?ice-hockey&sig=128', 'Découverte du hockey sur glace, un sport rapide et technique...', 'Wayne Gretzky', '2023-04-28 00:00:00.000000'),
(29, 'Le ski alpin : Descente à haute vitesse', 'https://source.unsplash.com/featured/?skiing&sig=129', 'Un aperçu du monde exaltant du ski alpin...', 'Lindsey Vonn', '2023-05-02 00:00:00.000000'),
(30, 'La plongée sous-marine : Explorer les profondeurs', 'https://source.unsplash.com/featured/?scubadiving&sig=130', 'Exploration du monde fascinant de la plongée sous-marine...', 'Jacques Cousteau', '2023-05-06 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id` varchar(64) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `produits` varchar(256) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `id_utilisateur`, `produits`, `date`) VALUES
('2de72855-d4a8-479c-be5a-ab8e83310ea0', 19, '[{\"id\":29,\"quantity\":1}]', '2024-05-10 18:06:03'),
('6b3eb661-a0c5-4032-ae42-16c4373da00f', 19, '[{\"id\":24,\"quantity\":1}]', '2024-05-10 14:14:54'),
('8b84dfe4-f718-4c2a-ab66-8fe6b16fb67b', 19, '[{\"id\":20,\"quantity\":1}]', '2024-05-10 11:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `contenu` int(255) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `quantite` int(10) NOT NULL,
  `prix` int(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `nom`, `quantite`, `prix`, `description`, `image`) VALUES
(29, 'Équipement d\'entraînement', 80, 147, 'Équipement varié pour améliorer les performances et la condition physique.', 'https://source.unsplash.com/featured/?training,gear'),
(32, 'Protège-tibias', 91, 20, 'Protège-tibias robustes et légers, assurant une protection efficace.', 'https://source.unsplash.com/featured/?shin,guards'),
(33, 'Équipement d\'entraînementee', 85, 139, 'Équipement varié pour améliorer les performances et la condition physique.//', 'https://source.unsplash.com/featured/?training,gear'),
(34, 'Short de football', 92, 43, 'Short léger et confortable, permet une grande liberté de mouvement.', 'https://source.unsplash.com/featured/?soccer,shorts'),
(35, 'Chaussettes de football', 4, 179, 'Chaussettes hautes et élastiques, offrant un bon soutien.', 'https://source.unsplash.com/featured/?soccer,socks'),
(36, 'Maillot de football', 40, 94, 'Maillot confortable et respirant, idéal pour les matchs et l\'entraînement.', 'https://source.unsplash.com/featured/?soccer,jersey'),
(37, 'Veste de football', 80, 193, 'Veste résistante, idéale pour les entraînements par temps froid.', 'https://source.unsplash.com/featured/?soccer,jacket'),
(38, 'Short de football', 60, 85, 'Short léger et confortable, permet une grande liberté de mouvement.', 'https://source.unsplash.com/featured/?soccer,shorts'),
(39, 'Veste de football', 22, 77, 'Veste résistante, idéale pour les entraînements par temps froid.', 'https://source.unsplash.com/featured/?soccer,jacket'),
(40, 'Chaussettes de football', 14, 11, 'Chaussettes hautes et élastiques, offrant un bon soutien.', 'https://source.unsplash.com/featured/?soccer,socks'),
(41, 'Protège-tibias', 66, 184, 'Protège-tibias robustes et légers, assurant une protection efficace.', 'https://source.unsplash.com/featured/?shin,guards'),
(42, 'Gants de gardien', 48, 197, 'Gants rembourrés pour une protection maximale et une bonne prise du ballon.', 'https://source.unsplash.com/featured/?goalkeeper,gloves'),
(43, 'Équipement d\'entraînement', 9, 187, 'Équipement varié pour améliorer les performances et la condition physique.', 'https://source.unsplash.com/featured/?training,gear'),
(44, 'Chaussures de football', 15, 35, 'Chaussures offrant une bonne adhérence et un contrôle optimal du ballon.', 'https://source.unsplash.com/featured/?soccer,shoes'),
(45, 'Chaussettes de football', 54, 109, 'Chaussettes hautes et élastiques, offrant un bon soutien.', 'https://source.unsplash.com/featured/?soccer,socks'),
(46, 'Maillot de football', 51, 56, 'Maillot confortable et respirant, idéal pour les matchs et l\'entraînement.', 'https://source.unsplash.com/featured/?soccer,jersey'),
(47, 'Protège-tibias', 43, 134, 'Protège-tibias robustes et légers, assurant une protection efficace.', 'https://source.unsplash.com/featured/?shin,guards'),
(48, 'Chaussettes de football', 35, 46, 'Chaussettes hautes et élastiques, offrant un bon soutien.', 'https://source.unsplash.com/featured/?soccer,socks'),
(49, 'Chaussures de football', 99, 190, 'Chaussures offrant une bonne adhérence et un contrôle optimal du ballon.', 'https://source.unsplash.com/featured/?soccer,shoes'),
(50, 'Gants de gardien', 71, 174, 'Gants rembourrés pour une protection maximale et une bonne prise du ballon.', 'https://source.unsplash.com/featured/?goalkeeper,gloves'),
(51, 'Chaussures de football', 68, 43, 'Chaussures offrant une bonne adhérence et un contrôle optimal du ballon.', 'https://source.unsplash.com/featured/?soccer,shoes'),
(52, 'Équipement d\'entraînement', 90, 20, 'Équipement varié pour améliorer les performances et la condition physique.', 'https://source.unsplash.com/featured/?training,gear'),
(53, 'Short de football', 37, 149, 'Short léger et confortable, permet une grande liberté de mouvement.', 'https://source.unsplash.com/featured/?soccer,shorts'),
(54, 'Sac de sport', 44, 34, 'Sac spacieux, parfait pour transporter tout l\'équipement de football.', 'https://source.unsplash.com/featured/?sports,bag'),
(55, 'Sac de sport', 97, 21, 'Sac spacieux, parfait pour transporter tout l\'équipement de football.', 'https://source.unsplash.com/featured/?sports,bag'),
(56, 'Short de football', 40, 77, 'Short léger et confortable, permet une grande liberté de mouvement.', 'https://source.unsplash.com/featured/?soccer,shorts'),
(57, 'Veste de football', 8, 21, 'Veste résistante, idéale pour les entraînements par temps froid.', 'https://source.unsplash.com/featured/?soccer,jacket'),
(58, 'Gants de gardien', 8, 83, 'Gants rembourrés pour une protection maximale et une bonne prise du ballon.', 'https://source.unsplash.com/featured/?goalkeeper,gloves'),
(59, 'Équipement d\'entraînement', 87, 163, 'Équipement varié pour améliorer les performances et la condition physique.', 'https://source.unsplash.com/featured/?training,gear'),
(60, 'Chaussures de football', 58, 132, 'Chaussures offrant une bonne adhérence et un contrôle optimal du ballon.', 'https://source.unsplash.com/featured/?soccer,shoes'),
(61, 'Short de football', 58, 105, 'Short léger et confortable, permet une grande liberté de mouvement.', 'https://source.unsplash.com/featured/?soccer,shorts'),
(62, 'Gants de gardien', 94, 107, 'Gants rembourrés pour une protection maximale et une bonne prise du ballon.', 'https://source.unsplash.com/featured/?goalkeeper,gloves'),
(63, 'Veste de football', 7, 84, 'Veste résistante, idéale pour les entraînements par temps froid.', 'https://source.unsplash.com/featured/?soccer,jacket'),
(64, 'Veste de football', 3, 70, 'Veste résistante, idéale pour les entraînements par temps froid.', 'https://source.unsplash.com/featured/?soccer,jacket'),
(65, 'Ballon de football', 86, 80, 'Ballon durable, adapté pour tous les types de terrains.', 'https://source.unsplash.com/featured/?soccer,ball'),
(66, 'Chaussures de football', 82, 175, 'Chaussures offrant une bonne adhérence et un contrôle optimal du ballon.', 'https://source.unsplash.com/featured/?soccer,shoes'),
(67, 'Protège-tibias', 45, 193, 'Protège-tibias robustes et légers, assurant une protection efficace.', 'https://source.unsplash.com/featured/?shin,guards'),
(68, 'Gants de gardien', 22, 72, 'Gants rembourrés pour une protection maximale et une bonne prise du ballon.', 'https://source.unsplash.com/featured/?goalkeeper,gloves'),
(69, 'Maillot de football', 30, 64, 'Maillot confortable et respirant, idéal pour les matchs et l\'entraînement.', 'https://source.unsplash.com/featured/?soccer,jersey'),
(70, 'Maillot de football', 88, 15, 'Maillot confortable et respirant, idéal pour les matchs et l\'entraînement.', 'https://source.unsplash.com/featured/?soccer,jersey'),
(71, 'Protège-tibias', 94, 10, 'Protège-tibias robustes et légers, assurant une protection efficace.', 'https://source.unsplash.com/featured/?shin,guards'),
(72, 'Ballon de football', 68, 39, 'Ballon durable, adapté pour tous les types de terrains.', 'https://source.unsplash.com/featured/?soccer,ball'),
(73, 'Sac de sport', 70, 38, 'Sac spacieux, parfait pour transporter tout l\'équipement de football.', 'https://source.unsplash.com/featured/?sports,bag'),
(74, 'Sac de sport', 77, 154, 'Sac spacieux, parfait pour transporter tout l\'équipement de football.', 'https://source.unsplash.com/featured/?sports,bag'),
(75, 'Ballon de football', 8, 161, 'Ballon durable, adapté pour tous les types de terrains.', 'https://source.unsplash.com/featured/?soccer,ball'),
(76, 'Ballon de football', 53, 10, 'Ballon durable, adapté pour tous les types de terrains.', 'https://source.unsplash.com/featured/?soccer,ball'),
(77, 'Ballon de football', 73, 158, 'Ballon durable, adapté pour tous les types de terrains.', 'https://source.unsplash.com/featured/?soccer,ball'),
(78, 'Sac de sport', 76, 200, 'Sac spacieux, parfait pour transporter tout l\'équipement de football.', 'https://source.unsplash.com/featured/?sports,bag'),
(79, 'test', 88, 18, 'tes tes test etst', 'http://localhost:3000//public/image-1715186181745.png'),
(80, 'elidrissi', 123, 23, 'adsasdas', 'http://localhost:3000//public/image-1715192111579.png'),
(81, 'testdasd', 3, 233, 'dasdas', 'http://localhost:3000//public/image-1715192329033.png'),
(82, 'Équipement d\'entraînement', 21, 22, 'dasdasdasds', 'http://localhost:3000//public/image-1715193272578.png'),
(83, 'Équipement d\'entraînement', 2, 22, 'sadasdasdas', 'http://localhost:3000//public/image-1715193342321.png'),
(84, 'Équipement d\'entraînement.', 118, 123, 'asdasdas', 'http://localhost:3000//public/image-1715193622373.png'),
(85, 'test......', 55, 555, 'ugiuo', 'http://localhost:3000//public/image-1715194272035.png'),
(86, 'elidrissiad', 12, 123, 'adasdas', 'http://localhost:3000//public/image-1715200424130.png'),
(87, 'dsfasd', 33, 22, 'sdfsdaf', 'http://localhost:3000//public/image-1715302560987.png'),
(88, 'Chaussures de football..', 32, 44, 'fsdfsd', 'http://localhost:3000//public/image-1715302829410.png'),
(89, 'testccc', 22, 33, 'dasdasd', 'http://localhost:3000//public/image-1715338934126.png'),
(90, 'vvv', 22, 22, 'dasdasdas', 'http://localhost:3000//public/image-1715341191744.png'),
(91, 'Équipement d\'entraînementccc', 324, 23, 'dasdas', 'http://localhost:3000//public/image-1715351639845.png'),
(92, 'adasda', 312, 32, 'asdasd', 'http://localhost:3000//public/image-1715354721797.png'),
(93, 'testttttttttt', 99, 66, 'uyguiobuiob', 'http://localhost:3000/public/images/produits/image-1715364402656.png');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `fonction` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `mdp`, `fonction`) VALUES
(16, 'elidrissi', 'ossama', 'elidrissiossama31@gmail.com', '$2b$10$rnAYryVqk2T3Wehy8zyNvODWPdNOddoSUub/TPyioezsJY4TQ4VOa', 'admin'),
(18, 'elidrissi', 'ossama', 'admin@mindevs.top', '$2b$10$8ga8Yns914srxA66JVyMI.AaNozEkXB5vRcjoP1JafmthAug917MK', 'joueur'),
(19, 'test', 'ossama', 'me@gmail.com', '$2b$10$5DZQ5hxFyRZSMz7fe0cKtejdz0uEMkWERd2YubhDTb3TLoN/wGsAm', 'joueur'),
(20, 'asfs', 'sadf', 'fsa@gmail.com', '$2b$10$Hef03iNvLaeh01OwUqwMzOKqkvFBpeLA78lh1avBUnQA3UECMZsL.', 'joueur'),
(21, 'test', 'ossama', 'dscc@c.com', '$2b$10$ZjnBQ/7oK0yZ.Z7FJoLymOyJeCYEgq0rMywWnSd6PrsMRROKeEjVC', 'joueur'),
(22, 'adas', 'dasda', 'asdas@g.comcc', '$2b$10$/XYzNe3Jy50cnpAAWzOj2eMKrF.BTOfwE4IxXkYcS9gXvUgef9jHG', 'joueur'),
(23, 'dasd', 'asdas', 'dasdasd@c.com', '$2b$10$paAG7yXpCHnz9kSj3ELKLe7c34hc2XoFsoj39vJnAe7WFcXMt33Pq', 'joueur'),
(24, 'adas', 'dasdas', 'asdasdas@cc.com', '$2b$10$MLk1d/qANbqnpwTF9znOtOSPrQXdlFWiUISdu7QkZ2dX6eRG.RDe.', 'joueur'),
(25, 'asdd', 'asda', 'adasd@cc.com', '$2b$10$iFACLzoeizGDUGd6nGaxluifpLi4mP.MUYmljEXWI0aktXDl1pH0y', 'joueur'),
(26, 'adas', 'dasd', 'asdas@ss.com', '$2b$10$o2X23lGXjZ8aw4r3WpzTDeeOfyRGH8oYOBdIA14p3hAqxCGursvPq', 'joueur'),
(27, 'adas', 'dasd', 'asdas@ss.com', '$2b$10$IDA6sRavg8Qb9Q.Re3qDxOmB4WiRG0RXeQUP.UpopwSsCnspzrdlS', 'joueur'),
(28, 'nom', 'prenom', 'email@cc.com', '$2b$10$2kOzpX6lV5F94CBXzgVegeQIsOPM9Xl.2NyADyu3dJO48QG.QzS2K', 'admin'),
(32, 'Équipement d\'entraînement', 'Testsss', 'admin@mindevs.top', '$2b$10$5io5/Fgup00QHbZQRPe.rurXalDnI.Jpk94hve2lJbUTNCmwqHPBK', 'admin'),
(33, 'Équipement d\'entraînement', 'Testsss', 'admin@mindevs.top', '$2b$10$Z9xVVxxjDxO6MnotsuamqOegUSpeY5ZxBcf8eYJ0fokzcVBVsbz9i', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annonce_global`
--
ALTER TABLE `annonce_global`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annonce_global`
--
ALTER TABLE `annonce_global`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annonce_global`
--
ALTER TABLE `annonce_global`
  ADD CONSTRAINT `annonce_global_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 15 مارس 2024 الساعة 23:36
-- إصدار الخادم: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u418291340_elandalousi`
--

-- --------------------------------------------------------

--
-- بنية الجدول `commandeniche`
--

CREATE TABLE `commandeniche` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `wilaya` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `marque` varchar(255) NOT NULL,
  `capacite` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_04_08_130818_orientale', 1),
(2, '2023_04_08_131422_commande_niche', 2),
(3, '2014_10_12_000000_create_users_table', 3),
(4, '2014_10_12_100000_create_password_resets_table', 3),
(5, '2019_08_19_000000_create_failed_jobs_table', 3),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(7, '2023_04_04_215954_create_perfumes_table', 3);

-- --------------------------------------------------------

--
-- بنية الجدول `orientale`
--

CREATE TABLE `orientale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `tete` varchar(255) NOT NULL,
  `coeur` varchar(255) NOT NULL,
  `fond` varchar(255) NOT NULL,
  `capacite` varchar(255) NOT NULL,
  `decantage` varchar(255) NOT NULL,
  `decantagePrice` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `orientale`
--

INSERT INTO `orientale` (`id`, `title`, `price`, `marque`, `note`, `lien`, `description`, `categorie`, `sexe`, `type`, `tete`, `coeur`, `fond`, `capacite`, `decantage`, `decantagePrice`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Boss', 1500.00, 'balak', 'orientale , boisé', 'https://www.youtube.com/watch?v=k0koznSLBtw&ab_channel=PopSongsPlaylist', '1235479', 'flacon entier', 'Homme', 'testeur original', 'vanille', 'banane', 'love', '50', 'sans', '200.00', '1680962309.jpg', '2023-04-08 12:58:29', '2023-04-08 12:58:29');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kreno11@outlook.com', '$2y$10$HR91uER/br0cyF9ndKVxJ.pZPYvF3p4vjfNjXAJ0tEszqKhFDz42K', '2023-11-13 05:37:27'),
('lakerluver88@yahoo.com', '$2y$10$p4Cr9yy360cC5afYzZb5delgZBKBnKJ0eIauv.0wUjZzaniaKKEoe', '2023-11-16 23:42:42');

-- --------------------------------------------------------

--
-- بنية الجدول `perfumes`
--

CREATE TABLE `perfumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `categorie` varchar(255) NOT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `tete` varchar(255) DEFAULT NULL,
  `coeur` varchar(255) DEFAULT NULL,
  `fond` varchar(255) DEFAULT NULL,
  `capacite` varchar(255) NOT NULL,
  `decantage` varchar(255) DEFAULT NULL,
  `decantagePrice` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `perfumes`
--

INSERT INTO `perfumes` (`id`, `title`, `price`, `marque`, `note`, `lien`, `description`, `categorie`, `sexe`, `type`, `tete`, `coeur`, `fond`, `capacite`, `decantage`, `decantagePrice`, `image`, `created_at`, `updated_at`) VALUES
(14, 'دهن عود صافيدا', 35000.00, 'ASQ', 'boise,oud,smoky', 'https://www.parfumo.com/Perfumes/Abdul_Samad_Al_Qurashi/Sapheda_White_Oud', 'عطر فاخر ومميز, كل قطرة منه تُلخّص حكاية وأصالة دار عطري عُرف بتخصّصه بالعود, لصافيدا عود رائحة ساحرة وجميلة تبدأ بنفحات دهن العود المعتق لفترات طويلة و تنتهي بعطر الياسمن و الزنبق الأبيض. عبير شرقي أصيل من إنتاج عبد الصمد القرشي.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Fresh notes Jasmine White lily', 'Amber Vanilla White orchid Woody notes', 'Musk Oud', '100', 'avec', '4000', '1691428740.jpg', '2023-08-07 17:19:00', '2023-08-07 17:46:35'),
(19, 'Mashumaro', 56000.00, 'Unique\'e luxury', 'sucre,poudre,ambre', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Mashumaro-79281.html', '.', 'flacon entier', 'Unisexe femme homme', 'fruité,notes', 'Marshmallows', 'Caramel', 'Bois de cachemire', '100', 'avec', '6000', '1694109621.png', '2023-09-07 18:00:21', '2023-09-07 18:00:21'),
(22, 'Beverly hills exclusive', 45000.00, 'Unique\'e luxury', 'gourmand,tabac', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Beverly-Hills-Exclusive-66081.html', '.', 'flacon entier', 'Unisexe femme homme', 'fruité,notes', 'Miel', 'Tabac', 'Fève de Tonka', '100', 'avec', '4500', '1694110289.png', '2023-09-07 18:11:29', '2023-09-07 18:11:29'),
(27, 'Beril', 34000.00, 'Unique\'e luxury', 'epice,agrume,rose', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Beril-58503.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Agrumes', 'Roses', 'Patchouli', '100', 'sans', '4000', '1694114367.png', '2023-09-07 19:19:27', '2023-09-07 19:19:27'),
(29, 'Wood & mood', 36000.00, 'Unique\'e luxury', 'boise,oud,rose', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Woud-And-Mood-50398.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Safran', 'Rose', 'Oud', '100', 'avec', '4000', '1694114982.png', '2023-09-07 19:29:42', '2023-09-07 19:29:42'),
(31, 'chocolate makes me happy', 36000.00, 'Unique\'e luxury', 'sucre,gourmand,ambre', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Chocolate-Makes-Me-Happy-58006.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Chocolat noire', 'Cannelle', 'Caramel', '100', 'sans', '4000', '1694115381.png', '2023-09-07 19:36:22', '2023-09-07 19:36:22'),
(32, 'Aphrodisiac touch', 36000.00, 'Unique\'e luxury', 'epice,vanille,poudre', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Aphrodisiac-Touch-50397.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Safran', 'Rose', 'Musc', '100', 'sans', '4000', '1694117367.png', '2023-09-07 20:09:27', '2023-09-07 20:09:27'),
(33, 'Istanbul', 36000.00, 'Unique\'e luxury', 'sucre,vanille,fruité', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Istanbul-50403.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Raisin', 'Jasmin', 'Toffee', '100', 'sans', '4000', '1694117627.png', '2023-09-07 20:13:47', '2023-09-07 20:13:47'),
(36, 'Hacivat 50ml', 28000.00, 'Nishane', 'boise,agrume,fruité', 'https://www.fragrantica.fr/parfum/Nishane/Hacivat-44174.html', '.', 'flacon entier', 'Unisexe femme homme', 'fruité,notes', 'Ananas', 'Agrumes', 'Notes boisées', '50', 'avec', '4000', '1694162883.png', '2023-09-08 08:48:03', '2023-09-08 08:48:03'),
(38, 'Wulong cha', 28000.00, 'Nishane', 'epice,agrume,notes', 'https://www.fragrantica.fr/parfum/Nishane/Wulong-Cha-30567.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Agrumes', 'Noix demuscade', 'Figue', '50', 'sans', '6000', '1694163264.png', '2023-09-08 08:54:24', '2023-09-08 08:54:24'),
(41, 'Peregrina - testeur original', 29000.00, 'Thameen', 'gourmand,oud,rose', 'https://www.fragrantica.fr/parfum/Thameen/Peregrina-59756.html', '.', 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Roses', 'Caramel', 'Ambre', '50', 'sans', '8000', '1703697583.png', '2023-09-08 09:05:47', '2023-12-27 17:19:43'),
(42, 'Rivière - testeur original', 29000.00, 'Thameen', 'epice,oriental', 'https://www.fragrantica.fr/parfum/Thameen/Riviere-43202.html', '.', 'testeur original', 'Unisexe femme homme', 'testeur original', 'Safran', 'Rose', 'Cuir', '50', 'sans', '8000', '1694164382.png', '2023-09-08 09:13:02', '2023-09-08 09:20:56'),
(43, 'The cora', 29000.00, 'Thameen', 'epice,oriental', 'https://www.fragrantica.fr/parfum/Thameen/The-Cora-47282.html', '.', 'testeur original', 'Unisexe femme homme', 'testeur original', 'Roses', 'Fleurs', 'Musc', '50', 'sans', '8000', '1694164539.png', '2023-09-08 09:15:39', '2023-09-08 09:21:22'),
(44, 'Noorolain taif - testeur original', 29000.00, 'Thameen', 'epice,rose', 'https://www.fragrantica.fr/parfum/Thameen/Noorolain-Taif-20507.html', '.', 'testeur original', 'Unisexe femme homme', 'testeur original', 'Poivre noire', 'Rose de taïf', 'Oud', '50', 'sans', '8000', '1694164747.png', '2023-09-08 09:19:07', '2023-09-08 09:19:53'),
(45, 'L private collection', 58000.00, 'Clive Christian', 'boise,epice,aromatique', 'https://www.fragrantica.fr/parfum/Clive-Christian/L-for-Men-26134.html', '.', 'produuit cacheté', 'Homme', 'notes', 'Pamplemousse', 'Oud', 'Vétiver', '50', 'sans', '12000', '1694165031.png', '2023-09-08 09:23:51', '2023-09-08 09:23:51'),
(47, 'E private collection', 58000.00, 'Clive Christian', 'boise,gourmand,epice', 'https://www.fragrantica.fr/parfum/Clive-Christian/E-for-Men-Gourmand-Oriental-With-Sweet-Clove-47346.html', '.', 'produuit cacheté', 'Homme', 'notes', 'Rhum', 'Ciste', 'Caramel', '50', 'sans', '12000', '1694165341.png', '2023-09-08 09:29:01', '2023-09-08 09:29:01'),
(49, 'Enigma parfum cologne', 52000.00, 'Roja parfums', 'epice,vanille,ambre', 'https://www.fragrantica.fr/parfum/Roja-Dove/Enigma-Pour-Homme-Parfum-Cologne-57876.html', '.', 'flacon entier', 'Homme', 'cuir', 'Bergamote', 'Vanille', 'Ambre gris', '100', 'sans', '5500', '1694165702.png', '2023-09-08 09:35:02', '2023-09-08 09:35:02'),
(50, 'Scandal parfum cologne', 52000.00, 'Roja parfums', 'boise,aromatique,agrume', 'https://www.fragrantica.fr/parfum/Roja-Dove/Scandal-Pour-Homme-Parfum-Cologne-57874.html', '.', 'flacon entier', 'Homme', 'notes', 'Agrumes', 'Notes vertes', 'Notes boisées', '100', 'sans', '5500', '1694166003.png', '2023-09-08 09:40:03', '2023-09-08 09:40:03'),
(51, 'Danger parfum cologne', 52000.00, 'Roja parfums', 'boise,epice,aromatique', 'https://www.fragrantica.fr/parfum/Roja-Dove/Danger-Pour-Homme-Parfum-Cologne-57875.html', '.', 'flacon entier', 'Homme', 'notes', 'Agrumes', 'Lavande', 'Notes boisées', '100', 'sans', '5500', '1694166138.png', '2023-09-08 09:42:18', '2023-09-08 09:42:18'),
(52, 'Elixir essence de parfum', 58000.00, 'Roja parfums', 'sucre,gourmand,poudre,fruité', 'https://www.fragrantica.fr/parfum/Roja-Dove/Elixir-Pour-Femme-Essence-De-Parfum-53131.html', '.', 'produuit cacheté', 'Femme', 'cuir', 'Roses', 'Framboise', 'Vanille', '100', 'sans', '6000', '1694166267.png', '2023-09-08 09:44:27', '2023-09-08 09:44:27'),
(54, 'Aventus', 55000.00, 'Creed', 'boise,agrume,fruité', 'https://www.fragrantica.fr/parfum/Creed/Aventus-9828.html', '.', 'produuit cacheté', 'Homme', 'cuir', 'Ananas', 'Bouleau', 'Ambre gris', '100', 'sans', '5500', '1694169474.png', '2023-09-08 10:37:54', '2023-09-08 10:37:54'),
(55, 'Original santal', 53000.00, 'Creed', 'boise,epice,aromatique', 'https://www.fragrantica.fr/parfum/Creed/Original-Santal-473.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Baies de genévrier', 'Bois de santal', 'Fève de Tonka', '100', 'sans', '5500', '1694169641.png', '2023-09-08 10:40:41', '2023-09-08 10:40:41'),
(56, 'Royal oud', 53000.00, 'Creed', 'boise,oud', 'https://www.fragrantica.fr/parfum/Creed/Royal-Oud-12317.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Citron', 'cèdre', 'Oud', '100', 'avec', '5500', '1694169763.png', '2023-09-08 10:42:43', '2023-09-08 10:42:43'),
(57, 'Bois du Portugal', 53000.00, 'Creed', 'boise,epice,aromatique', 'https://www.fragrantica.fr/parfum/Creed/Bois-du-Portugal-3805.html', '.', 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Bergamote', 'Lavande', 'Notes boisées', '100', 'sans', '5500', '1703615726.png', '2023-09-08 10:44:50', '2023-12-26 18:35:26'),
(59, 'Azrak - testeur original', 45000.00, 'Boadicea the victorious', 'boise,agrume,fruité', 'https://www.fragrantica.fr/parfum/Boadicea-the-Victorious/Azrak-18520.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Anan', 'Citron', 'Oud', '100', 'sans', '4500', '1694171141.png', '2023-09-08 11:05:41', '2023-09-08 11:05:41'),
(60, '2. Nawab of Oudh parfum - testeur original', 52000.00, 'Ormande Jayne', 'boise,epice,agrume', 'https://www.fragrantica.fr/parfum/Ormonde-Jayne/2-Nawab-of-Oudh-Intensivo-60339.html', '.', 'testeur original', 'Unisexe femme homme', 'smoky', 'Piment', 'Bergamote', 'Orchidée', '120', 'sans', '4500', '1694182498.png', '2023-09-08 14:14:58', '2023-09-08 14:14:58'),
(61, 'Montabaco verano- testeur original', 29000.00, 'Ormande Jayne', 'boise,agrume,cuir', 'https://www.fragrantica.fr/parfum/Ormonde-Jayne/Montabaco-Verano-60087.html', '.', 'testeur original', 'Unisexe femme homme', 'smoky', 'Pamplemousse', 'Bois de cachemire', 'Notes boisées', '50', 'sans', '6000', '1694188201.png', '2023-09-08 15:50:01', '2023-09-08 15:50:01'),
(65, 'Found at dusk', 24000.00, 'Miller Harris', 'epice,aromatique,frais', 'https://www.fragrantica.fr/parfum/Miller-Harris/Found-at-Dusk-67756.html', '.', 'flacon entier', 'Femme', 'notes', 'Agrumes', 'Fruits de bois', 'Ambre gris', '100', 'sans', '2500', '1694236251.png', '2023-09-09 05:10:51', '2023-09-09 05:10:51'),
(66, 'Santal carmin', 37000.00, 'Atelier cologne', 'boise,epice,poudre', 'https://www.fragrantica.fr/parfum/Atelier-Cologne/Santal-Carmin-25292.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Safran', 'Bois de santal', 'Vanille', '100', 'sans', '4000', '1694236388.png', '2023-09-09 05:13:08', '2023-09-09 05:13:08'),
(67, 'Oud saphir', 37000.00, 'Atelier cologne', 'oud,oriental,cuir', 'https://www.fragrantica.fr/parfum/Atelier-Cologne/Oud-Saphir-30817.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Épices', 'Vanille', 'Notes boisées', '100', 'sans', '4000', '1694236483.png', '2023-09-09 05:14:43', '2023-09-09 05:14:43'),
(68, 'The tragedy of Lord George', 52000.00, 'Penhaligons', 'boise,poudre,ambre', 'https://www.fragrantica.fr/parfum/Penhaligon-s/The-Tragedy-of-Lord-George-40716.html', '.', 'flacon entier', 'Homme', 'notes', 'Notes boisées', 'Ambre', 'Fève de Tonka', '75', 'sans', '7000', '1694544872.png', '2023-09-12 18:54:32', '2023-09-12 18:54:32'),
(69, 'Duchess rose - testeur original', 32000.00, 'Penhaligons', 'boise,rose', 'https://www.fragrantica.fr/parfum/Penhaligon-s/The-Coveted-Duchess-Rose-40714.html', '.', 'flacon entier', 'Femme', 'smoky', 'Mandarine', 'Rose', 'Notes boisées', '75', 'sans', '6000', '1694545064.png', '2023-09-12 18:57:44', '2023-09-12 18:57:44'),
(70, 'Helen', 32000.00, 'Penhaligons', 'boise,floral', 'https://www.fragrantica.fr/parfum/Penhaligon-s/Heartless-Helen-55442.html', '.', 'flacon entier', 'Femme', 'smoky', 'Mandarine', 'Tubéreuse', 'Notes boisées', '75', 'sans', '6000', '1694545150.png', '2023-09-12 18:59:10', '2023-09-12 18:59:10'),
(73, 'Lady blanche', 32000.00, 'Penhaligons', 'poudre,floral,notes', 'https://www.fragrantica.fr/parfum/Penhaligon-s/The-Revenge-Of-Lady-Blanche-40715.html', '.', 'flacon entier', 'Femme', 'smoky', 'Jacinthe', 'Fleur d\'iris', 'Narcissus', '75', 'sans', '6000', '1694545912.png', '2023-09-12 19:11:52', '2023-09-12 19:11:52'),
(74, 'Arthur', 32000.00, 'Penhaligons', 'vanille,smoky,ambre', 'https://www.fragrantica.fr/parfum/Penhaligon-s/The-World-According-to-Arthur-71646.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Vanille', 'Fève de Tonka', 'Encens', '75', 'sans', '6000', '1694546203.png', '2023-09-12 19:16:43', '2023-09-12 19:16:43'),
(76, 'Italica', 52000.00, 'Casamorati', 'sucre,vanille,poudre', 'https://www.fragrantica.fr/parfum/Xerjoff/Italica-41149.html', '.', 'flacon entier', 'Unisexe femme homme', 'fruité,notes', 'Lait', 'Toffee', 'Bois de santal', '100', 'avec', '5500', '1694546634.png', '2023-09-12 19:23:54', '2023-09-12 19:23:54'),
(78, 'Lira', 41000.00, 'Casamorati', 'sucre,gourmand,vanille,agrume', 'https://www.fragrantica.fr/parfum/Xerjoff/Lira-11801.html', '.', 'flacon entier', 'Femme', 'notes', 'Orange sanguine', 'Caramel', 'Vanille', '100', 'sans', '4500', '1694546900.png', '2023-09-12 19:28:20', '2023-09-12 19:28:20'),
(80, 'Stercus', 32000.00, 'Orto Parisi', 'boise,poudre', 'https://www.fragrantica.fr/parfum/Orto-Parisi/Stercus-24192.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Amande', 'Rose', 'Oud', '50', 'sans', '7000', '1694621480.png', '2023-09-13 16:11:20', '2023-09-13 16:12:07'),
(81, 'Bergamask', 32000.00, 'Orto Parisi', 'poudre,aromatique,agrume', 'https://www.fragrantica.fr/parfum/Orto-Parisi/Bergamask-24191.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Bergamote', 'Bergamote', 'Musc', '50', 'sans', '7000', '1694621612.png', '2023-09-13 16:13:32', '2023-09-13 16:13:32'),
(82, 'Seminalis- testeur original', 28000.00, 'Orto Parisi', 'boise,oriental', 'https://www.fragrantica.fr/parfum/Orto-Parisi/Seminalis-38293.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Lactone', 'Framboise', 'Patchouli', '50', 'avec', '7000', '1694621784.png', '2023-09-13 16:16:24', '2023-09-13 16:16:24'),
(83, 'Cuoium- testeur original', 28000.00, 'Orto Parisi', 'boise,cuir,ambre', 'https://www.fragrantica.fr/parfum/Orto-Parisi/Cuoium-69923.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir,fruité', 'Cuir', 'Encens', 'Cèdre', '50', 'avec', '7000', '1694621873.png', '2023-09-13 16:17:53', '2023-09-13 16:17:53'),
(85, 'Black afgano', 32000.00, 'Nasomatto', 'oud,smoky,ambre', 'https://www.fragrantica.fr/parfum/Nasomatto/Black-Afgano-6472.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Cannabis', 'Tabac', 'Oud', '30', 'sans', '11000', '1694626571.png', '2023-09-13 17:36:11', '2023-09-13 17:36:11'),
(86, 'Duro', 32000.00, 'Nasomatto', 'boise,epice,oriental,cuir', 'https://www.fragrantica.fr/parfum/Nasomatto/Duro-4291.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Épices', 'Cuir', 'Notes boisées', '30', 'sans', '11000', '1694626974.png', '2023-09-13 17:42:54', '2023-09-13 17:42:54'),
(88, 'Ambra aurea', 55000.00, 'Profumum Roma', 'epice,ambre', 'https://www.fragrantica.fr/parfum/Profumum-Roma/Ambra-Aurea-6968.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Ambre', 'Murrhe', 'Encens', '100', 'sans', '5500', '1694627249.png', '2023-09-13 17:47:29', '2023-09-13 17:47:29'),
(90, 'دهن عود مانابان', 60000.00, 'ASQ', 'boise,oud', 'https://store.asqgrp.com/sa_ar//manaban-oud.html#description', 'رائحة دهن عود مطعّم بالورد والعنبر والباتشولي والبهارات المنعشة مع قطرات البرغموت الحامض على قاعدة من دهن العود الهندي المعتق.', 'orientale', 'Homme', 'produuit cacheté', 'Star Anise Taif Rose Fruity Ylang Ylang', 'Sandalwood Cedar_wood', 'Pure_old_oud', '100', 'avec', '6000', '1694678310.webp', '2023-09-14 07:58:30', '2023-09-14 07:58:30'),
(91, 'دهن عود ميان', 60000.00, 'ASQ', 'boise,epice,oud', 'https://store.asqgrp.com/sa_ar//myan-oud.html', 'يحتوي هذا العطر على عود ميان النادر المُختار يدوياً بعناية. خلطة ساحرة ومميزة تنقلك إلى عالم الشرق الأصيل المليئ بأسرار الطبيعة, يمنحك شعوراً مُثيراً ويزيد إطلالتك إشراقاً.', 'orientale', 'Homme', 'produuit cacheté', 'black-pepper Fruity Star_Anise  Herbal Herbal', 'Cedar_wood  Agarwood  RoseWood', 'Pure_old_oud  Almond', '100', 'avec', '6000', '1694678639.webp', '2023-09-14 08:03:59', '2023-09-14 08:03:59'),
(92, 'دهن عود كلاكاسي', 220000.00, 'ASQ', 'boise,oud', 'https://sa.abdulsamadalqurashi.com/ar/kalakasi-oud/p1349521869?source=search&lang=ar', 'دهن عود معتق 80 عاماً, من أرقى وأقدم أنواع دهن العود. يوجد فقط لدى سادة العطر الملكي. من أندر أنواع أشجار العود في جبال الكلاكا. مُقدم خصّيصاً للراغبين بالتفرد والتميّز. إرث عطري لم يشهد مثيلاً تناقله الأبناء من الأجداد، من إنتاج عبد الصمد القرشي.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Blackcurrant, Fruity notes', 'Indian oud, Orris root, Oud', 'Indian oud', '80', 'sans', '22000', '1694688369.jpg', '2023-09-14 10:46:09', '2023-09-14 10:46:09'),
(93, 'دهن عود مبخر', 48000.00, 'ASQ', 'oud', 'https://sa.abdulsamadalqurashi.com/ar/%D8%B9%D8%B7%D8%B1-%D8%AF%D9%87%D9%86-%D8%B9%D9%88%D8%AF-%D9%85%D8%A8%D8%AE%D8%B1-80-%D9%85%D9%84/p885969859?source=search', 'تركيبة عطرية شرقية عربية من دهن العود المبخر القديم مع قطرات الصندل.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Arabian spices, Blackcurrant, Herbaceous notes.', 'Oud', 'Oud', '80', 'avec', '6000', '1694688694.jpg', '2023-09-14 10:51:34', '2023-09-14 10:51:34'),
(94, 'خلطة القرشي إصدار خاص', 38000.00, 'ASQ', 'boise,floral', 'https://sa.abdulsamadalqurashi.com/ar/%D8%B9%D8%B7%D8%B1-%D8%AE%D9%84%D8%B7%D8%A9-%D8%A7%D9%84%D9%82%D8%B1%D8%B4%D9%8A-%D8%A5%D8%B5%D8%AF%D8%A7%D8%B1-%D8%AE%D8%A7%D8%B5-90-%D9%85%D9%84/p1773735982?source=search', 'خلطة فريدة باسمها البارز المتلألئ. تركيبة تضفي المعاني الخفيّة لمزيج مكوّن من أفخر وأنقى وأبرز أنواع العود والصّندل، أضيفت عليها بعناية ودقّة قطرات من اللّيمون الهندي، رحيق زهور اللّيلي الفاتنة ولمسات من العنبر والمسك. عطر يأخذك بسحره إلى أروع المناطق الصّافية الخلّابة في العالم. عطر يميّز شخصيّتك المتقنة، الشّامخة والمتألّقة. عطر مميّز من إنتاج عبد الصمد القرشي.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Sandalwood', 'Indian lemon, Lily of the valley', 'Oud, Musk', '90', 'avec', '5000', '1694695168.jpg', '2023-09-14 12:39:28', '2023-09-14 12:39:28'),
(95, 'Safari Extreme', 32000.00, 'ASQ', 'boise,sucre,oriental', 'https://sa.abdulsamadalqurashi.com/ar/%D8%B9%D8%B7%D8%B1-%D8%B3%D9%81%D8%A7%D8%B1%D9%8A-%D8%A5%D9%83%D8%B3%D8%AA%D8%B1%D9%8A%D9%85-75-%D9%85%D9%84/p1135044599?source=search', 'خلطة فريدة باسمها البارز المتلألئ. تركيبة تضفي المعاني الخفيّة لمزيج مكوّن من أفخر وأنقى وأبرز أنواع العود والصّندل، أضيفت عليها بعناية ودقّة قطرات من اللّيمون الهندي، رحيق زهور اللّيلي الفاتنة ولمسات من العنبر والمسك. عطر يأخذك بسحره إلى أروع المناطق الصّافية الخلّابة في العالم. عطر يميّز شخصيّتك المتقنة، الشّامخة والمتألّقة. عطر مميّز من إنتاج عبد الصمد القرشي.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Bergamot, Mango, French orange blossom, Mandarin orange', 'Cedarwood, Jasmine, Orange Blossom, Rose', 'Oud, Sandalwood, Amber, Musk, Vanilla', '75', 'avec', '4500', '1694695605.jpg', '2023-09-14 12:46:45', '2023-09-14 12:46:45'),
(98, 'Halfeti', 42000.00, 'Penhaligons', 'boise,epice', 'https://www.fragrantica.fr/parfum/Penhaligon-s/Halfeti-31396.html', NULL, 'flacon entier', 'Unisexe femme homme', 'notes', 'Safran', 'Jasmin', 'Oud', '100', 'sans', '4500', '1694716947.png', '2023-09-14 18:42:27', '2023-09-14 18:42:27'),
(100, 'Oud de nil', 45000.00, 'Penhaligons', 'boise,oud,rose', 'https://www.fragrantica.fr/parfum/Penhaligon-s/Oud-de-Nil-40195.html', '.', 'flacon entier', 'Femme', 'notes', 'Bergamote', 'Rose', 'Oud', '100', 'sans', '4500', '1694717212.png', '2023-09-14 18:46:52', '2023-09-14 18:46:52'),
(102, 'Empressa- testeur original', 29000.00, 'Penhaligons', 'boise,agrume,fruité', 'https://www.fragrantica.fr/parfum/Penhaligon-s/Empressa-27037.html', '.', 'testeur original', 'Femme', 'cuir', 'Pêche', 'Mûron', 'Cacao', '100', 'sans', '3000', '1694718036.png', '2023-09-14 19:00:36', '2023-09-14 19:00:36'),
(103, 'Babylon - testeur original', 29000.00, 'Penhaligons', 'boise,vanille,poudre', 'https://www.fragrantica.fr/parfum/Penhaligon-s/Babylon-57835.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Noix de muscade', 'Vanille', 'Notes boisées', '100', 'sans', '3000', '1694718408.png', '2023-09-14 19:06:48', '2023-09-14 19:06:48'),
(108, 'Rose d\'arabie', 55000.00, 'Armani', 'oud,rose', 'https://www.fragrantica.fr/parfum/Giorgio-Armani/Armani-Prive-Rose-d-Arabie-10886.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Rose', 'Patchouli', 'Oud', '100', 'sans', '5500', '1694719609.png', '2023-09-14 19:26:49', '2023-09-14 19:26:49'),
(109, 'Bois d\'encens', 45000.00, 'Armani', 'boise,epice,ambre', 'https://www.fragrantica.fr/parfum/Giorgio-Armani/Bois-d-Encens-406.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Épices', 'cèdre', 'Vétiver', '100', 'sans', '4500', '1694719733.png', '2023-09-14 19:28:53', '2023-09-14 19:28:53'),
(110, 'Bois d\'encens- testeur original', 38000.00, 'Armani', 'boise,epice,ambre', 'https://www.fragrantica.fr/parfum/Giorgio-Armani/Bois-d-Encens-406.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Épices', 'cèdre', 'Vétiver', '100', 'sans', '4000', '1694719825.png', '2023-09-14 19:30:25', '2023-09-14 19:30:25'),
(112, 'Sable nuit - testeur original', 38000.00, 'Armani', 'boise,epice,ambre', 'https://www.fragrantica.fr/parfum/Giorgio-Armani/Sable-Nuit-64787.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Poivre rose', 'Benjoin', 'Résine oliban', '100', 'sans', '4000', '1694720144.png', '2023-09-14 19:35:44', '2023-09-14 19:35:44'),
(113, 'Sultan leather', 36000.00, 'The merchant of Venice', 'boise,epice,cuir', 'https://www.fragrantica.fr/parfum/The-Merchant-of-Venice/Sultan-Leather-32669.html', '.', 'produuit cacheté', 'Homme', 'cuir', 'Noix de muscade', 'cèdre', 'Cuir', '100', 'sans', '4000', '1694720283.png', '2023-09-14 19:38:04', '2023-09-14 19:38:04'),
(114, 'Encke - testeur original', 45000.00, 'Tiziana Terenzi', 'boise,epice,cuir', 'https://www.fragrantica.fr/parfum/Tiziana-Terenzi/Encke-Selfridges-Exclusive-55008.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Cardamome', 'Cuir', 'Notes animales', '100', 'sans', '4500', '1694720423.png', '2023-09-14 19:40:23', '2023-09-14 19:40:23'),
(117, 'Velvet desire - testeur original', 27500.00, 'Dolce & Gabbana', 'floral', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Desire-13746.html', '.', 'flacon entier', 'Femme', 'smoky', 'Tubéreuse', 'Frangipanier', 'Gardénia', '50', 'sans', '6000', '1694721093.png', '2023-09-14 19:51:33', '2023-09-14 19:51:33'),
(118, 'Velvet cypress- testeur original', 27500.00, 'Dolce & Gabbana', 'boise,aromatique,agrume', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Cypress-42825.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Citron', 'Cyprès', 'Cèdre', '50', 'sans', '6000', '1694769093.png', '2023-09-15 09:11:33', '2023-09-15 09:11:33'),
(120, 'Velvet sicily - testeur original', 27500.00, 'Dolce & Gabbana', 'poudre,aromatique,floral', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Sicily-51464.html', '.', 'flacon entier', 'Femme', 'testeur original', 'Bergamote', 'Jasmin', 'Musc', '50', 'sans', '6000', '1694769790.png', '2023-09-15 09:18:41', '2023-09-15 09:23:10'),
(121, 'Velvet mimosa bloom- testeur original', 27500.00, 'Dolce & Gabbana', 'poudre,floral,notes', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Mimosa-Bloom-31356.html', '.', 'flacon entier', 'Femme', 'smoky', 'Absolu de mimosa', 'Mandarine', 'Néroli', '50', 'sans', '6000', '1694769657.png', '2023-09-15 09:20:57', '2023-09-15 09:20:57'),
(122, 'velvet exotic leather - testeur original', 27500.00, 'Dolce & Gabbana', 'boise,cuir,smoky', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Exotic-Leather-31355.html', '.', 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Rhum', 'Encens', 'Cuir', '50', 'sans', '6000', '1694769988.png', '2023-09-15 09:25:04', '2023-09-15 09:26:28'),
(123, 'velvet vetiver - testeur original', 27500.00, 'Dolce & Gabbana', 'boise,aromatique,fruité', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Vetiver-13745.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Figue', 'Férule gommeuse', 'Vétiver', '50', 'sans', '6000', '1694770113.png', '2023-09-15 09:28:33', '2023-09-15 09:28:33'),
(124, 'velvet ginestra - testeur original', 27500.00, 'Dolce & Gabbana', 'sucre,floral', 'https://www.fragrantica.fr/parfum/Dolce-Gabbana/Velvet-Ginestra-36811.html', '.', 'flacon entier', 'Femme', 'smoky', 'Fleurs', 'Miel', 'Benjoin', '50', 'sans', '6000', '1694770228.png', '2023-09-15 09:30:28', '2023-09-15 09:30:28'),
(126, 'Day for night- testeur original', 42000.00, 'Prada', 'gourmand,vanille,poudre,ambre', 'https://www.fragrantica.fr/parfum/Prada/Day-For-Night-32199.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Ambre', 'Caramel', 'Vanille', '100', 'sans', '4500', '1694771152.png', '2023-09-15 09:45:52', '2023-09-15 09:45:52'),
(129, 'Double dare - testeur original', 42000.00, 'Prada', 'poudre,cuir,ambre', 'https://www.fragrantica.fr/parfum/Prada/Double-Dare-32201.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Poivre', 'Racine d\'iris', 'Cuir', '100', 'sans', '4500', '1694771736.png', '2023-09-15 09:55:36', '2023-09-15 09:55:36'),
(132, 'A song of the rose - testeur original', 35000.00, 'Gucci', 'boise,poudre,rose', 'https://www.fragrantica.fr/parfum/Gucci/A-Song-For-The-Rose-Eau-de-Parfum-53087.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Rose de  Bulgarie', 'Musc', 'Notes boisées', '100', 'sans', '3500', '1694772236.png', '2023-09-15 10:03:56', '2023-09-15 10:03:56'),
(133, 'A reason to love', 52000.00, 'Gucci', 'oud,rose,floral', 'https://www.fragrantica.fr/parfum/Gucci/A-Reason-To-Love-76692.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Cardamome', 'Rose de Damas', 'Oud', '100', 'avec', '5500', '1694772512.png', '2023-09-15 10:08:32', '2023-09-15 10:08:32'),
(135, 'Iris d\'élite- testeur original', 46000.00, 'Versace', 'gourmand,poudre,ambre', 'https://www.fragrantica.fr/parfum/Versace/Iris-d-Elite-70885.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Iris', 'Ambre', 'Fève de Tonka', '100', 'sans', '5000', '1694773030.png', '2023-09-15 10:17:10', '2023-09-15 10:17:10'),
(137, 'Encens suprême - testeur original', 46000.00, 'Versace', 'boise,epice,oriental', 'https://www.fragrantica.fr/parfum/Versace/Encens-Supreme-70882.html', '.', 'testeur original', 'Unisexe femme homme', 'flacon entier', 'Résine oliban', 'Ciste', 'Bois de cachemire', '100', 'sans', '5000', '1694773322.png', '2023-09-15 10:20:48', '2023-09-15 10:22:02'),
(138, 'Fleur de maté - testeur original', 46000.00, 'Versace', 'boise,epice,floral,oriental', 'https://www.fragrantica.fr/parfum/Versace/Fleur-de-Mate-70883.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Patchouli', 'Maté', 'Cèdre Atlas', '100', 'sans', '5000', '1694773436.png', '2023-09-15 10:23:56', '2023-09-15 10:23:56'),
(139, 'Aprés l\'amour n⁰4', 32000.00, 'Thomas Kosmala', 'boise,poudre,ambre', 'https://www.fragrantica.fr/parfum/Thomas-Kosmala/Apres-l-Amour-53742.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Fleur d\'oranger amère', 'Épices aromatiques', 'Notes boisées', '100', 'sans', '3500', '1694773631.png', '2023-09-15 10:27:11', '2023-09-15 10:27:11'),
(143, 'Kalan', 42000.00, 'Parfums de Marly', 'epice,aromatique,agrume', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Kalan-56036.html', '.', 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Épices', 'Orange sanguine', 'Notes boisées', '125', 'avec', '4000', '1703613487.png', '2023-09-15 10:38:47', '2023-12-26 17:58:07'),
(144, 'Percival', 44000.00, 'Parfums de Marly', 'boise,aromatique,ambre', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Percival-51037.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Lavande', 'Mandarine', 'Notes boisées', '125', 'sans', '4000', '1694774578.png', '2023-09-15 10:42:58', '2023-09-15 10:42:58'),
(146, 'Greenly', 39500.00, 'Parfums de Marly', 'boise,agrume,fruité', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Greenley-62101.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Pomme verte', 'Bergamote de Calabria', 'Cèdre', '125', 'sans', '4000', '1694774784.png', '2023-09-15 10:46:24', '2023-09-15 10:46:24'),
(147, 'Shagya', 38000.00, 'Parfums de Marly', 'boise,oud,aromatique', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Shagya-11767.html', '.', 'flacon entier', 'Homme', 'notes', 'Citron vert', 'Oud', 'Vétiver', '125', 'sans', '4000', '1694774885.png', '2023-09-15 10:48:05', '2023-09-15 10:48:05'),
(151, 'Eau noire - testeur original', 38000.00, 'Dior privé', 'sucre,epice,vanille,aromatique', 'https://www.fragrantica.fr/parfum/Dior/Eau-Noire-1378.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Lavande', 'Café', 'Réglisse', '125', 'sans', '3500', '1694775639.png', '2023-09-15 11:00:39', '2023-09-15 11:00:39'),
(152, 'Oud isphahan travel spray case 3 × 15ml', 26000.00, 'Dior privé', 'boise,epice,oud,rose,oriental,ambre', 'https://www.fragrantica.fr/parfum/Dior/Oud-Ispahan-15231.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Safran', 'Rose', 'Oud', '45', 'sans', '3500', '1694775800.png', '2023-09-15 11:03:20', '2023-09-15 11:03:20'),
(153, 'Ambre nuit travel spray case 3 × 15ml', 26000.00, 'Dior privé', 'agrume,rose,ambre', 'https://www.fragrantica.fr/parfum/Dior/Ambre-Nuit-7092.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Bergamote', 'Rose', 'Ambre gris', '45', 'sans', '3500', '1694775902.png', '2023-09-15 11:05:02', '2023-09-15 11:05:02'),
(154, 'Ambre nuit 250ml - testeur original', 62000.00, 'Dior', 'poudre,oriental', 'https://www.fragrantica.fr/parfum/Dior/Ambre-Nuit-7092.html', '.', 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Bergamote', 'Rose', 'Ambre gris', '250', 'avec', '3500', '1703613322.png', '2023-09-15 11:06:22', '2023-12-26 17:55:22'),
(166, 'Intoxicated', 49000.00, 'by Kilianl', 'epice', 'https://www.fragrantica.fr/parfum/By-Kilian/Intoxicated-25991.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Cardamome', 'Noix de muscade', 'Café', '50', 'sans', '10000', '1694777984.png', '2023-09-15 11:39:44', '2023-09-15 11:39:44'),
(168, 'Woman in gold- testeur original', 29000.00, 'by Kilianl', 'boise,vanille,agrume,rose', 'https://www.fragrantica.com/perfume/By-Kilian/Woman-in-Gold-46469.html', '.', 'testeur original', 'Femme', 'cuir', 'Mandarine', 'Vanille', 'Fève de Tonka', '50', 'sans', '7000', '1694781579.png', '2023-09-15 12:39:39', '2023-09-15 12:39:39'),
(170, 'By the fireplace', 30000.00, 'Maison Margiela', 'boise,vanille,ambre', 'https://www.fragrantica.fr/parfum/Maison-Martin-Margiela/By-the-Fireplace-31623.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Clou de girofle', 'Châtaigne', 'Baumier du Pérou', '100', 'avec', '3000', '1694781890.png', '2023-09-15 12:44:50', '2023-09-15 12:44:50'),
(171, 'Jazz club', 29000.00, 'Maison Margiela', 'boise,agrume,smoky', 'https://www.fragrantica.fr/parfum/Maison-Martin-Margiela/Jazz-Club-20541.html', '.', 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Néroli', 'Rhum', 'Feuilles de tabac', '100', 'sans', '3000', '1703612824.png', '2023-09-15 12:46:40', '2023-12-26 17:47:04'),
(172, 'Fleur narcotique', 64000.00, 'Ex Nihilo', 'aromatique,frais,agrume,floral,fruité', 'https://www.fragrantica.fr/parfum/Ex-Nihilo/Fleur-Narcotique-27571.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Litchi', 'Pivoine', 'Mousse', '100', 'sans', '7000', '1694782152.png', '2023-09-15 12:49:12', '2023-09-15 12:49:12'),
(173, 'french affair', 53000.00, 'Ex Nihilo', 'boise,rose,floral,fruité', 'https://www.fragrantica.fr/parfum/Ex-Nihilo/French-Affair-47569.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Litchi', 'Huile essentielle de rose', 'Cèdre', '100', 'sans', '6000', '1694783827.png', '2023-09-15 13:17:07', '2023-09-15 13:17:07'),
(176, 'Emperor tiberius', 35000.00, 'parfums vintage', 'boise,epice,aromatique,frais,agrume,fruité', 'https://www.parfumo.com/Perfumes/Parfums_Vintage/emperor-tiberius', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Ananas', 'Bergamote', 'Ambre gris', '100', 'sans', '3500', '1694784153.png', '2023-09-15 13:22:33', '2023-09-15 13:22:33'),
(177, 'intrigo devastante', 35000.00, 'parfums vintage', 'sucre,frais,floral', 'https://www.parfumo.com/Perfumes/Parfums_Vintage/Intrigo_Devastante', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Citron', 'Lavande', 'Ambre', '100', 'sans', '3500', '1694784270.png', '2023-09-15 13:24:30', '2023-09-15 13:24:30'),
(179, 'Fougère d\'argent- testeur original', 29000.00, 'Tom Ford', 'boise,epice,poudre', 'https://www.fragrantica.fr/parfum/Tom-Ford/Fougere-d-Argent-50458.html', '.', 'flacon entier', 'Unisexe femme homme', 'smoky', 'Lavande', 'Notes boisées', 'Coumarine', '50', 'sans', '6000', '1694796807.png', '2023-09-15 16:53:27', '2023-09-15 16:53:27'),
(181, 'Tuscan leather- testeur original', 29000.00, 'Tom Ford', 'boise,cuir,fruité', 'https://www.fragrantica.fr/parfum/Tom-Ford/Tuscan-Leather-1849.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Framboise', 'Notes boisées', 'Cuir', '50', 'sans', '6000', '1694797104.png', '2023-09-15 16:58:24', '2023-09-15 16:58:24'),
(182, 'Rose de chine', 45000.00, 'Tom Ford', 'frais,rose,floral,ambre', 'https://www.fragrantica.fr/parfum/Tom-Ford/Rose-de-Chine-71539.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Pivoine de chine', 'Rose', 'Ciste', '50', 'sans', '9000', '1694797224.png', '2023-09-15 17:00:24', '2023-09-15 17:00:24'),
(185, 'Fabulous', 45000.00, 'Tom Ford', 'epice,vanille,aromatique,cuir', 'https://www.fragrantica.fr/parfum/Tom-Ford/Fucking-Fabulous-46513.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Sauge aclaré', 'Racine d\'iris', 'Cuir', '50', 'sans', '9000', '1694797626.png', '2023-09-15 17:07:06', '2023-09-15 17:07:06'),
(187, 'Soleil blanc', 39000.00, 'Tom Ford', 'sucre,floral,ambre', 'https://www.fragrantica.fr/parfum/Tom-Ford/Soleil-Blanc-34893.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Pistache', 'Jasmin', 'Noix de Coco', '50', 'sans', '8000', '1694797959.png', '2023-09-15 17:12:39', '2023-09-15 17:12:39'),
(189, 'White Suede', 39000.00, 'Tom Ford', 'boise,poudre,floral', 'https://www.fragrantica.fr/parfum/Tom-Ford/White-Suede-6386.html', '.', 'flacon entier', 'Femme', 'notes', 'Thé', 'Muguet', 'Musc', '50', 'sans', '8000', '1694798186.png', '2023-09-15 17:16:26', '2023-09-15 17:16:26'),
(191, 'Jasmin rouge', 39000.00, 'Tom Ford', 'boise,epice,agrume,floral', 'https://www.fragrantica.fr/parfum/Tom-Ford/Jasmin-Rouge-12765.html', '.', 'produuit cacheté', 'Femme', 'cuir', 'Gingembre', 'Jasmin', 'Notes boisées', '50', 'sans', '8000', '1694798426.png', '2023-09-15 17:20:26', '2023-09-15 17:20:26'),
(193, 'Bois marocain', 39000.00, 'Tom Ford', 'boise,epice,aromatique', 'https://www.fragrantica.fr/parfum/Tom-Ford/Bois-Marocain-7942.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Cypès', 'Patchouli', 'Notes boisées', '50', 'sans', '8000', '1694798644.png', '2023-09-15 17:24:04', '2023-09-15 17:24:04'),
(194, 'Santal blush', 39000.00, 'Tom Ford', 'boise,epice,poudre', 'https://www.fragrantica.fr/parfum/Tom-Ford/Santal-Blush-12766.html', '.', 'flacon entier', 'Femme', 'notes', 'Épices', 'Ylang-Ylang', 'Benjoin', '50', 'sans', '8000', '1694798796.png', '2023-09-15 17:26:36', '2023-09-15 17:26:36'),
(197, 'Rose prick 100ml', 68000.00, 'Tom Ford', 'boise,epice,rose,floral', 'https://www.fragrantica.fr/parfum/Tom-Ford/Rose-Prick-58781.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Épices', 'Roses', 'Fève de Tonka', '100', 'sans', '7000', '1694799205.png', '2023-09-15 17:33:25', '2023-09-15 17:33:25'),
(198, 'Lost cherry 100ml', 68000.00, 'Tom Ford', 'sucre,gourmand,fruité', 'https://www.fragrantica.com/perfume/Tom-Ford/Lost-Cherry-51411.html', '.', 'flacon entier', 'Unisexe femme homme', 'fruité,notes', 'Amande amère', 'Cerise noire', 'Fève de Tonka', '100', 'avec', '6000', '1694799474.png', '2023-09-15 17:37:54', '2023-09-15 17:37:54'),
(200, 'Amabile', 48000.00, 'Xerjoff', 'boise,aromatique,agrume', 'https://www.fragrantica.fr/parfum/Xerjoff/Amabile-63876.html', '.', 'flacon entier', 'Unisexe femme homme', 'fruité,notes', 'Pomme verte', 'Limone costa d\'Amalfie', 'Vanille de Mexique', '100', 'avec', '5000', '1695025537.png', '2023-09-18 08:25:37', '2023-09-18 08:25:37'),
(202, 'Nio', 39000.00, 'Xerjoff', 'aromatique,frais,agrume', 'https://www.fragrantica.fr/parfum/Xerjoff/Nio-10244.html', '.', 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Bergamote', 'Cardamome', 'Vétiver', '50', 'sans', '8000', '1695026040.png', '2023-09-18 08:30:27', '2023-09-18 08:34:00'),
(203, 'Uden', 40000.00, 'Xerjoff', 'boise,vanille,poudre,agrume', 'https://www.fragrantica.fr/parfum/Xerjoff/Uden-6306.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Agrumes', 'Rhum', 'Café', '50', 'sans', '8000', '1695025988.png', '2023-09-18 08:33:08', '2023-09-18 08:33:08'),
(205, 'Accento', 44000.00, 'Xerjoff', 'sucre,gourmand,poudre,floral', 'https://www.fragrantica.fr/parfum/Xerjoff/Accento-55156.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Ananas', 'Iris', 'Musc', '100', 'sans', '4500', '1695026260.png', '2023-09-18 08:37:40', '2023-09-18 08:37:40'),
(211, 'Bal d\'Afrique', 50000.00, 'Byredo', 'aromatique,frais,agrume,floral', 'https://www.fragrantica.fr/parfum/Byredo/Bal-d-Afrique-6458.html', '.', 'flacon entier', 'Unisexe femme homme', 'notes', 'Cassis', 'Viloette', 'Vétiver', '100', 'sans', '5000', '1695027706.png', '2023-09-18 09:01:46', '2023-09-18 09:01:46'),
(212, 'Black saffron - testeur original', 42000.00, 'Byredo', 'boise,cuir,fruité', 'https://www.fragrantica.fr/parfum/Byredo/Black-Saffron-16220.html', '.', 'testeur original', 'Unisexe femme homme', 'cuir', 'Baies de genévrier', 'Cuir', 'Framboise', '100', 'sans', '4500', '1695027918.png', '2023-09-18 09:05:18', '2023-09-18 09:05:18'),
(213, 'Rose of no man\'s land- testeur original', 42000.00, 'Byredo', 'epice,rose', 'https://www.fragrantica.com/perfume/Byredo/Rose-Of-No-Man-s-Land-31931.html', '.', 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Roses', 'Poivre rose', 'Ambre', '100', 'avec', '4500', '1703613126.png', '2023-09-18 09:08:31', '2023-12-26 17:52:06'),
(219, 'Versace pour homme', 18000.00, 'Versace', 'epice,aromatique,agrume', 'https://www.fragrantica.fr/parfum/Versace/Versace-Pour-Homme-2318.html', '.', 'produuit cacheté', 'Homme', 'cuir', 'Citron', 'cèdre', 'Fève de Tonka', '100', 'sans', '2000', '1695029136.png', '2023-09-18 09:25:36', '2023-09-18 09:25:36'),
(222, 'Amber Touch', 25000.00, 'ASQ', NULL, 'https://store.asqgrp.com/sa_ar//amber-touch-100-ml.html', 'عطر مميز بتصميم أنيق, كرسالة عطرية غامضة في زجاجة فريدة مُحكمة الإغلاق لتحفظ نقاء رائحة العنبر بداخلها, تنقله لك أمواج البحر المُتلاطمة.. لا يخضع لوصف أو تصنيف بأي شكل أو طريقة, في واقع الأمر لا توجد له رائحة مُماثلة.. فهي مائلة في بدايتها الباهرة بالحُبيبات الصغيرة التي تنبعث منها رائحة أزهار البرتقال, مع مرير حمضيات الليمون والجيرانيوم.. عِطرٌ يأسرك في قلبه بخليط رائحة خشب الأرز والباتشولي.. ووصولاً إلى قاعدته المُكونة من الفيتفير والعود والباتشولي.. كمزيج لغز ساحر يتغلغل في أعماقك.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Geranium Lemon Petitgrain', 'Cedarwood Frankincense Patchouli', 'Benzoin Oud Patchouli Vetiver', '100', 'sans', '0', '1695131509.webp', '2023-09-19 13:51:49', '2023-09-19 13:51:49'),
(223, 'Amber Vintage', 25000.00, 'ASQ', 'boise,oud', NULL, 'عطرٌ مُميز بتصميم أنيق, كرسالة عطرية غامضة في زجاجة فريدة مُحكمة الإغلاق, تنقله لك أمواج البحر المُتلاطمة.. لتحفظ نقاء رائحة العنبر المُعتقة الممزوجة برائحة الحمضيات ومزيج اليلانغ المُطعّمة بالمسك والعود., فتُصبح الرائحة أكثر قوة وجاذبية.. كمزيج لغز ساحر يتغلغل في أعماقك.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Amber Mandarin orange', 'Musk Oud', 'Patchouli Plants', '100', 'sans', '0', '1695131719.webp', '2023-09-19 13:55:19', '2023-09-19 13:55:19'),
(224, 'Blue Kenam - Extrait de parfum', 32000.00, 'ASQ', 'epice,oud', NULL, 'خلطة عطرية شرقية ساحرة آخاذة أهم مكوناتها دهن العود الأزرق النادر.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Agarwood (Oud)', 'Agarwood (Oud)', 'Agarwood (Oud)', '80', 'sans', '0', '1695133433.webp', '2023-09-19 14:23:53', '2023-09-19 14:23:53'),
(225, 'ASQ INTENSE FOR HIM', 24000.00, 'ASQ', 'boise,ambre', 'https://store.asqgrp.com/sa_ar//asq-intense.html', 'اكشف عن ذوقك الفائق في عصريّته عبر اختيار بخّاخ عطريّ ذو تركيبة رفيعة ومنتقاة جداً, تجمع بين خُلاصات العطور الراقية والنادرة. في بداياته المُكونة من التوت البري وأشجار السرو, لتأسركَ في قلبها بخليط رائحة الورود والياسمين, ووصولاً إلى قاعدته المكونة من دفء خشب الصندل والفانيليا والمسك والعود. خلطة عطرية غنية صممت خصيصاً للرجال الباحثين عن الفخامة والتميز.', 'orientale', 'Homme', 'produuit cacheté', 'Safron  Star_Anise  Flowery', 'Jasmine  Vanilla  Taif_Rose', 'Agarwood  Musk   Sandalwood', '100', 'sans', '0', '1695133927.webp', '2023-09-19 14:32:07', '2023-09-19 14:32:07'),
(226, 'BLUEBERRY MUSK SPRAY', 9500.00, 'ASQ', 'floral,fruité', NULL, 'خلطة غنية منعشة من المسك والتوت والليمون الأخضر والزهور والأوركيد.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Blueberry Taif_Rose   Raspberries bergamot', 'Flowery  Berries WhiteOrchid', 'Musk  Patchouli', '100', 'sans', '0', '1695134231.webp', '2023-09-19 14:37:11', '2023-09-19 14:37:11'),
(227, 'Charme D\'orient', 38000.00, 'ASQ', 'oud,floral,oriental', 'https://store.asqgrp.com/us_en/al-qurashi-blend.html', NULL, 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '90', 'sans', '0', '1695134936.webp', '2023-09-19 14:48:56', '2023-09-19 14:48:56'),
(228, 'Crassna Siyoufi', 55000.00, 'ASQ', 'oud', 'https://sa.abdulsamadalqurashi.com/en/crassna-sioufi-agarwood-oil-12-ml/p571548984?source=search', 'عطر مميز من أرقى أنواع العود الهندي القديم. دهن عود كرسنا (سيوفي) مُستخلص من أشجار الكرسنا, معتق خمسة وعشرون عاماً. أحد أروع أنواع العود المعتق. عطر يغمرك سحر الإثارة الشرقية الأصيلة لتُجسّد جاذبية تلفت من حولك الأنظار والحواس.', 'orientale', 'Homme', 'produuit cacheté', NULL, NULL, NULL, '50', 'sans', '0', '1695135278.jpg', '2023-09-19 14:54:38', '2023-09-19 14:54:38'),
(229, 'OUD ROSE', 25000.00, 'ASQ', 'oud,floral', 'https://store.asqgrp.com/us_en/oud-rose.html', 'استمتع بتجربة الملوكية مع هذا المزيج الفاخر الذي يأخذك إلى رحلة مذهلة مع النوتة المنعشة الرائعة من ورد الطائف من الدرجة الأولى الممزوجة بقطرات من الورد الدمشقي وزيت العود.', 'orientale', 'Femme', 'produuit cacheté', 'Taif_Rose  Rose stanbul-Rose Damascene-rose', 'Flowery  VelvetRose  RoseWood', 'Pure_old_oud  Balsamic Cedar_wood', '50', 'sans', '0', '1695136120.webp', '2023-09-19 15:08:40', '2023-09-19 15:08:40'),
(233, 'Interlude black iris', 49000.00, 'Amouage', 'boise,oud,vanille,poudre,oriental', 'https://www.fragrantica.fr/parfum/Amouage/Interlude-Black-Iris-60929.html', '.', 'produuit cacheté', 'Homme', 'produuit cacheté', 'Feuilles de violette', 'Ambre', 'Oud', '100', 'avec', '5000', '1703612974.png', '2023-09-22 17:54:26', '2023-12-26 17:49:34'),
(235, 'Interlude special edition', 68000.00, 'Amouage', 'boise,smoky,ambre', 'https://www.fragrantica.fr/parfum/Amouage/Interlude-Man-15294.html', '.', 'produuit cacheté', 'Homme', 'cuir', 'Poivre', 'Encens', 'Oud', '100', 'sans', '7000', '1695405471.png', '2023-09-22 17:57:51', '2023-09-22 17:57:51'),
(236, 'Myths for women', 42000.00, 'Amouage', 'aromatique,cuir', 'https://www.fragrantica.fr/parfum/Amouage/Myths-Woman-38260.html', '.', 'flacon entier', 'Femme', 'notes', 'Ciste', 'Ambre gris', 'Cuir', '100', 'avec', '4500', '1695405589.png', '2023-09-22 17:59:49', '2023-09-22 17:59:49'),
(237, 'Honour', 45000.00, 'Amouage', 'boise,epice,aromatique', 'https://www.fragrantica.fr/parfum/Amouage/Honour-Man-12763.html', '.', 'produuit cacheté', 'Homme', 'cuir', 'Poivre', 'Noix de muscade', 'Vétiver', '100', 'sans', '4500', '1695405675.png', '2023-09-22 18:01:15', '2023-09-22 18:01:15'),
(247, 'La colle noire', 55000.00, 'Dior privé', 'poudre,rose,floral,fruité', 'https://www.fragrantica.fr/parfum/Dior/La-Colle-Noire-38153.html', '.', 'produuit cacheté', 'Unisexe femme homme', 'cuir', 'Citron', 'Roses', 'Bois de santal', '125', 'sans', '4500', '1695625058.png', '2023-09-25 06:57:38', '2023-09-25 06:57:38'),
(249, 'Sauvage elixir 100ml', 38000.00, 'Dior', 'epice,poudre,aromatique', 'https://www.fragrantica.fr/parfum/Dior/Sauvage-Elixir-68415.html', '.', 'flacon entier', 'Homme', 'produuit cacheté', 'Noix de muscade', 'Lavande', 'Réglisse', '100', 'avec', '4000', '1703612897.png', '2023-09-27 06:54:26', '2023-12-26 17:48:17'),
(250, 'مسك االختام 1 تولة + بخاخ 30 مل', 24000.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D8%A7%D9%84%D8%AE%D8%AA%D8%A7%D9%85-1-%D8%AA%D9%88%D9%84%D8%A9-%D8%A8%D8%AE%D8%A7%D8%AE-30-%D9%85%D9%84/p484687390?source=search', 'استمتع بلحظات الفخامة والجمال مع مجموعة مسك الختام، حيث تلتقي الأناقة بالجاذبية في تجربة فريدة من نوعها. يحتضن قلب المجموعة تولة من مسك الختام، مستخلص بعناية فائقة من المكونات الطبيعية النادرة، ليترك لمسة مغرية ومنعشة على بشرتك. ولإضفاء لمسة ساحرة على أناقتك، يرافقة عطر مسك الختام بسعة 30 مل، ينبعث منه سحر لا يقاوم في كل رشة. ولتكتمل تجربتك العطرية المتفردة، تتضمن المجموعة علبة صغيرة مميزة تحتضن أسرارك العطرية المفضلة وترافقك في كل رحلة.\r\n\r\nاغمر نفسك بالتجربة الفاخرة والمترفة مع مجموعة مسك الختام، المصمم خصيصًا لإبراز أناقتك الأبدية وإضفاء لمسة سحرية على حياتك.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '30', NULL, NULL, '1696162805.jpg', '2023-10-01 12:20:05', '2023-10-01 12:20:05'),
(251, 'مسك الجسم 1 تولة + بخاخ 30 مل', 19500.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D8%AC%D8%B3%D9%85-1-%D8%AA%D9%88%D9%84%D8%A9-%D8%A8%D8%AE%D8%A7%D8%AE-30-%D9%85%D9%84/p917535706', 'مجموعة تتلاقى فيها الفخامة والعبير الفريد ليشكلا تجربة استثنائية. تحتضن في قلبها تولة من أرقى أنواع مسك الجسم، مستخلصة بعناية فائقة من صخور الجرانيت وأجبال أوروبا الرائعة، لتترك بصمة منعشة ومغرية على بشرتك. ولإضفاء لمسة ساحرة على أناقتك، يرافقة عطر مسك الجسم ذو سعة 30 مل، ينبعث منه سحر لا يقاوم في كل رشة. وليكتمل تجميلك المتفرد، تتضمن المجموعة علبة صغيرة مميزة لتحتضن أسرارك العطرية المفضلة وترافقك في كل رحلة.\r\n\r\nاستعد لتعيش تجربة فاخرة ومترفة مع مجموعة مسك الجسم، المصممة خصيصًا لتبرز أناقتك الأبدية وتضفي لمسة من السحر على حياتك.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '30', NULL, NULL, '1696162930.jpg', '2023-10-01 12:22:10', '2023-10-01 12:22:10'),
(252, 'مسك الجسم الأبيض', 3800.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D8%AC%D8%B3%D9%85-%D8%A7%D9%84%D8%A3%D8%A8%D9%8A%D8%B6-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D8%B5%D9%85%D8%AF-%D8%A7%D9%84%D9%82%D8%B1%D8%B4%D9%8A/p1493022486?source=search', 'مسك الجسم هو تعبير معطر عن الرقي ليحيط بك كهالة من الجمال التي تضمن نشوة الحواس مع لمسات المسك وكأن جمال الكون قد اختزل في زجاجة صنعت خصيصاً لك من خبرات عبد الصمد القرشي المعتقة في ثمانين عاماً من الشغف فهو يتميز برائحته العذبة التي تدوم معك طويلاً حيث يمنحك رائحة الزهور والياسمين والورد والبنفسج الآخاذة التي يتميز بها المسك لتتركي شذى جميل ونضر في كل مكان تذهبي اليه ، بفضل حجمه يمكنك حمله في أي مكان وأي وقت الاستعمالات : لنتائج أفضل استخدمه بعد الاستحمام يعمل على تثبيت العطور والبخور يمكنك خلطه مع الكريمات واللوشن التعطير الشخصي بوضعه على مناطق النبض فضلا عن استعماله كبخاخ لتعطير الملابس.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163046.jpg', '2023-10-01 12:24:06', '2023-10-01 12:24:06'),
(253, 'مسك الجسم المركز', 4500.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D8%AC%D8%B3%D9%85-%D8%A7%D9%84%D9%85%D8%B1%D9%83%D8%B2-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D8%B5%D9%85%D8%AF-%D8%A7%D9%84%D9%82%D8%B1%D8%B4%D9%8A/p718984727?source=search', 'مسك الجسم المركز من عبد الصمد القرشي يجسد تحفة فنية وأسطورة وشهادة على فن صناعة العطور الذي يمتد لثمانية عقود مجيدة، قام عبد الصمد القرشي باستخلاص جوهرها في هذا الإبداع الأسطوري الأمر لا يتعلق فقط بالرائحة بل بالتجربة والشعور الذي يتجاوز الزمن.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163138.jpg', '2023-10-01 12:25:38', '2023-10-01 12:25:38'),
(254, 'مسك العود', 5900.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D8%B9%D9%88%D8%AF-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D8%B5%D9%85%D8%AF-%D8%A7%D9%84%D9%82%D8%B1%D8%B4%D9%8A/p1668114955?source=search', 'زيت عطري فريد، يتألقُ بمكوناتٍ فريدةٍ وبتناغمٍ رائع حيث يجمع بين العود الفاخر والمسك الغنيِّ والعنبر الدافئِ، وزهورٍ فاخرة، ودهن عود كالاكاسي الفاخر مما يجعله خيارًا مثاليًا لمن يبحث عن الأناقة والتميز.\r\n\r\nيتوفر بكرستالات مزينة بشعار عبد الصمد القرشي بحجمين 12 مل و 6 مل.\r\n\r\n\r\n\r\nالنوتات العليا: ورد جوري – زهرة ابرة الراعي – زهرة الشاي\r\n\r\nنوتات الوسط: خشب الأرز – خشب الصندل – وودي(خشبي)\r\n\r\nنوتات القاعدة: دهن عود كلاكاسي – عنبر – مسك', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163241.jpg', '2023-10-01 12:27:21', '2023-10-01 12:27:21'),
(255, 'مسك التوت الفاخر', 3800.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D8%AA%D9%88%D8%AA-%D8%A7%D9%84%D9%81%D8%A7%D8%AE%D8%B1-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D8%B5%D9%85%D8%AF-%D8%A7%D9%84%D9%82%D8%B1%D8%B4%D9%8A/p220158491?source=search', 'مسك التوت الفاخر يجمع بين الأناقة والجاذبية في تركيبةٍ مميزة وفريدة. تتكون تركيبة مسك التوت من مزيجٍ رائعٍ من الفواكه والورود والمسك الجذاب. تبدأ الرحلة العطرية بمزيجٍ مثيرٍ من التوت الطازج والليمون الأخضر والبرغموت الحلو. يتبعها قلبٌ زهريٌ متألقٌ ينبض بالحياة بمزيجٍ من زهر البرتقال وزهر الياسمين والورد والأوركيد الناعم. وتستقر في قاعدةٍ دافئةٍ من المسك وخشب الصندل والفانيليا الحلوة، مما يضفي لمسةً من الدفء والرقي. يضفي هذا المزيج الفريد من الروائح جاذبيةً لا تُقاوَم ويجعل من مسك التوت عطراً مثالياً للمناسبات الخاصة والاحتفالات.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163359.jpg', '2023-10-01 12:29:19', '2023-10-01 12:29:19'),
(256, 'مسك العنب', 3800.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D8%B9%D9%86%D8%A8/p394853656?source=search', 'مسك العنب الفاخر', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163477.jpg', '2023-10-01 12:31:17', '2023-10-01 12:31:17');
INSERT INTO `perfumes` (`id`, `title`, `price`, `marque`, `note`, `lien`, `description`, `categorie`, `sexe`, `type`, `tete`, `coeur`, `fond`, `capacite`, `decantage`, `decantagePrice`, `image`, `created_at`, `updated_at`) VALUES
(257, 'مسك المندرين', 3800.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D9%85%D8%B3%D9%83-%D8%A7%D9%84%D9%85%D9%86%D8%AF%D8%B1%D9%8A%D9%86/p858929946?source=search', 'خلطة منعشة من المسك وفاكهة المندرين وأزهار البرتقال والفيتيفر', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163541.jpg', '2023-10-01 12:32:21', '2023-10-01 12:32:21'),
(259, 'دهن عود ممتاز', 9500.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D8%AF%D9%87%D9%86-%D8%B9%D9%88%D8%AF-%D9%85%D9%85%D8%AA%D8%A7%D8%B2/p784943723?source=search', NULL, 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '3', NULL, NULL, '1696163692.jpg', '2023-10-01 12:34:52', '2023-10-01 12:34:52'),
(260, 'دهن عود كلاكاسي قديم جداً 12 مل', 55000.00, 'ASQ', 'oud', 'https://sa.abdulsamadalqurashi.com/ar/old-aged-kalakasi-agarwood-oil-12-ml/p574400987?source=search&lang=ar', 'دهن عود معتّق 150 عاماً، يوجد فقط في دار عبد الصمد القرشي، دهن عود صافي يتخطّى الخيال بأصول وقواعد التي لا يُتقنها إلا ذوي الخبرة المميزة بالأصالة، من إنتاج عبد الصمد القرشي', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Oud', 'Dehn Oud', 'Old Oud', '50', 'sans', '0', '1696514026.jpg', '2023-10-05 13:53:46', '2023-10-05 13:53:46'),
(261, 'ورد طائفي 6مل +  بخاخ 30 مل', 24000.00, 'ASQ', 'bkhor,musk', 'https://sa.abdulsamadalqurashi.com/ar/%D9%88%D8%B1%D8%AF-%D8%B7%D8%A7%D8%A6%D9%81%D9%8A-%D8%AF%D8%B1%D8%AC%D8%A9-%D8%A3%D9%88%D9%84%D9%89-6-%D9%85%D9%84/p485090517?source=search', 'من أرضٍ تُشرق فيها شمس الحب معانقةً وردها الطائفي، أُخذت أكثر من ثمانية آلاف وردة، جسّدها عطرٌ يبعث الروح أينما هلَّ عبيره، من إنتاج عبد الصمد القرشي.', 'bkhor', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '12', 'sans', '0', '1696514661.jpg', '2023-10-05 13:57:57', '2023-10-05 14:04:21'),
(262, 'أرزة لبنان 1 تولة + بخاخ 30 مل', 19500.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/%D8%A3%D8%B1%D8%B2%D8%A9-%D9%84%D8%A8%D9%86%D8%A7%D9%86-1-%D8%AA%D9%88%D9%84%D8%A9-%D8%A8%D8%AE%D8%A7%D8%AE-30-%D9%85%D9%84/p1091254692?source=search', 'اكتشف سر جمال لبنان المترف والفريد مع مجموعة أرزة لبنان. تحتوي هذه المجموعة الساحرة على تولة من خلطة أرزة لبنان، تجمع بين أنقى أنواع خشب الأرز والمسك، بالإضافة إلى لمسات من الياسمين الملكي والفانيليا والفواكه المشرقة. ولإضفاء المزيد من الجمال والتميز، يرافقه عطر أرزة لبنان بسعة 30 مل، لتستمتع بلمسة من العطر الفاخر في أي وقت تشاء. بالإضافة إلى ذلك، تحتوي المجموعة على علبة صغيرة لتعبئة العطر وحملها معك بكل سهولة وأناقة.\r\n\r\n استعد لتجربة لا مثيل لها مع مجموعة أرزة لبنان، ودعها تضفي لمسة من الجمال والسحر على حياتك اليومية.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '12', NULL, NULL, '1696514431.jpg', '2023-10-05 14:00:31', '2023-10-05 14:00:31'),
(263, 'White Incense', 23000.00, 'ASQ', 'rose,oriental', 'https://store.asqgrp.com/ar/offers/white-incense.html', 'عطرٌ مميّزٌ يلقي الضوء على شخصية قوية مثيرة للجدل والإهتمام بتركيبته الغنية بالتفاح، البرغموت، زهرة البرتقال، الياسمين، المسك والعنبر. تعطي عبيرًا يملأ الأجواء بالتعجّب والإنبهار، من عبد الصمد القرشي.', 'orientale', 'Femme', 'produuit cacheté', 'Fensh orange, bergamote , white lily', 'Orangeblossom, jasmine, white orchid', 'Amber, vanilla, musk, pure old oud', '80', 'sans', '0', '1697281397.jpg', '2023-10-14 11:03:17', '2023-10-14 11:03:17'),
(264, 'The Black', 7900.00, 'ASQ', 'rose,oriental', 'https://store.asqgrp.com/ar//the-black.html', 'للأناقة والفخامة لون يمثله عطر ذا بلاك من عبد الصمد القرشي، لتُسكن كثمار العنب الأسود وأزهار السوسن والزعرور قصراً من الإثارة، يُزيّنها دهن العود الخالص وخشب الصندل ومستخلص خشب النخيل بتحفٍ مِلؤها الشغف.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697281576.jpg', '2023-10-14 11:06:16', '2023-10-14 11:06:16'),
(265, 'Cuban Tobacco', 18000.00, 'Ibrahim alqurashi', 'boise,sucre,tabac', 'https://saudi.ibrahimalqurashi.com/en/6287020281044-cuban-tobacco', 'عندما تصبح الطبيعة فنًا بمزيج من الروائح الشرقية المذهلة وقوة الروائح الغربية. بمقدمة دافئة تُغلف فيه نغمات الكاكاو قوة التبغ الكوبي، وينبض قلبه بنغمات دفينة انطلقت منها روائح الفانيلا ممزوجة بحلاوة العسل وجوز الهند مجسدةً روعة التوباكو الكوبي.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Cocoa, Cuban tobacco', 'Sandalwood, Leather, Vanilla', 'Honey, coconut', '100', 'sans', '0', '1697282355.jpg', '2023-10-14 11:19:15', '2023-10-14 11:19:15'),
(266, 'Jamaican Tobacco', 18000.00, 'Ibrahim alqurashi', 'boise,tabac', 'https://saudi.ibrahimalqurashi.com/en/6287020281044-jamaican-tobacco', 'بتركيبة جريئة وعصرية ينضح العنبر بجرأة زائدة قبل أن يهدأ بلمسات من التبغ وخشب الأرز ممزوجة بتوليفة نجيل الهند وانتعاش أوراق الياسمين ليكشف عن أناقته وجماله المثير.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Amber, Patchouli', 'Cedar, Oud, Jamaican tobacco', 'Vetiver, Jasmine', '100', 'sans', '0', '1697282567.jpg', '2023-10-14 11:22:47', '2023-10-14 11:22:47'),
(267, 'Blue Oud', 10500.00, 'Ibrahim alqurashi', 'boise,oud,cuir', 'https://saudi.ibrahimalqurashi.com/en/6287020280245-blue-oud', 'خيَم السكون قبل بداية تراقص النغمات ، بدأت نوتات العود بجرأة وثبات و تدخل الزنبق بنوتاتٍ زرقاء رقيقة ذات فوحان وانتعاش أخاذ. فيهدأ المكان ويحل الغموض بمعزوفة ساحرة من الباتشولي وتعم رائحة الجلود الفاخرة وفجأة تجتمع النوتات على نغم واحد ممزوجا بالعنبر والتبغ ليكشف عن عطر رائع بمزيج مثالي', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Blue Lilies, Oud', 'Patchouli, Leather', 'Tobacco and Amber', '100', 'sans', '0', '1697282962.jpg', '2023-10-14 11:29:22', '2023-10-14 11:29:22'),
(268, 'Al Wafia Sandalwood', 18000.00, 'Ibrahim alqurashi', 'boise,oriental', 'https://saudi.ibrahimalqurashi.com/en/1010292260-al-wafia-sandalwood', 'ليلة شتوية رقيقة ، تنتشر رائحة منعشة من الورد الدمشقي حلو الرائحة  ترافقها ظلال فاكهية وتتسلل من فتحات النافذة رائحة الخشب العميقة الرطبة تثير الحنين وتشعل الذكريات ويتصاعد من زوايا العتمة ضباباً من خشب الصندل ذو رائحة مذهلة ودافئة ويضفي عليه العنبر لمسة من الهدوء والمثالية', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Damask Rose, Raspberry', 'Powder, Cedarwood', 'Amber and Sandalwood', '100', 'sans', '0', '1697283188.jpg', '2023-10-14 11:33:08', '2023-10-14 11:33:08'),
(269, 'Amethyst Khozam', 9500.00, 'Ibrahim alqurashi', 'frais,rose,cuir', 'https://saudi.ibrahimalqurashi.com/en/6287020280252-amethyst-khozam', 'عطر منعش حيوي يتحدى الجاذبية كقطرة ندى باردة تكونت في ساعات الصباح الأولى على أزهار الخزامى لتنشرعبقها على كل من مر بها لتملأ المكان بهجة وانتعاشا. فتراقصها نسمة هواء محملة بعبير الأزهار النقية تجعلك تذوب انتعاشًا كمكعب ثلج صغير. لتستقر أخيرا على يديك كعبق غني بروائح النعناع والجلد الأنيق التي تذهب بحواسك بعيدا إلى عالم مليء بالجمال لتجلب لك سلاما داخليا وفرحا منعشا للروح .\r\n\r\nعش تجربة عطر اميشت خزام', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Lavender, floral', 'Mint, leather', 'Lemon and Bergamot', '75', 'sans', '0', '1697283533.jpg', '2023-10-14 11:38:53', '2023-10-14 11:38:53'),
(270, 'Emerald Oud', 9500.00, 'Ibrahim alqurashi', 'boise,epice,oud', 'https://saudi.ibrahimalqurashi.com/en/1010011152-emerald-oud', 'بركة ماء صغيرة تتوسطها مزهرية من عيدان خشب الأرز وزهور المسك لتؤلف عبقا فريدًا  عبر ممر تناثرت على جانبيه طحالب السنديان والزعفران كرائحة خريف منعشة وقليلٍ من رائحة الجلد الأنيق لتلتف حولك كهالةٍ من الطاقة والأناقة. وفي الأعلى قليلا منزل صغير تتسلل عبر نوافذه رائحة الباتشولي والعود مبدِدة بعض ماعلق في الأجواء من ضباب الليلة الفائتة لتغمرك بإحساس مذهل وحالة من الغموض.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Saffron, Oakmoss, Wood, Suede', 'Cedar, Musk, Vanilla', 'Patchouli, Oud', '75', 'sans', '0', '1697283769.jpg', '2023-10-14 11:42:49', '2023-10-14 11:42:49'),
(271, 'Balas Rose', 9500.00, 'Ibrahim alqurashi', 'boise,sucre,rose', 'https://saudi.ibrahimalqurashi.com/en/1010011150-balas-rose', 'قاعة ملكيَة فاخرة تستقبلك رائحة الورد الملكي النقي منذ اللحظة الأولى التي تخطو فيها أقدامك أروقة المكان فتبدأ رائحة الزعفران في الإلتفاف حولك كعباةٍ ملكية مطرزة لتتبعها نفحات من فاكهة حمراء مُنعشة وباردة تتمسك بلجام العطر، وبينما تتنقل عيناك مستكشفة المكان تمدُ جدران الشمواه الفاخر يديها للترحيب بك  لتكشف لك مابداخلها من عبق أزهار الياسمين. وما أن تلبث قليلا حتى تتصدر نفحات قوية من خشب البتولا المشبع بالمسك الذي يزين المكان فيحتضنك ليترك بداخلك شعور القوة والسُلطة ضمن أجواء ارستقراطية فاخرة.\r\n\r\nعطر الملوك و أثمن العطور لتجربة فريدة', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Rose, Saffron, Raspberry', 'Suede, Jasmine and Vanilla', 'Cedar wood, Musk and Birch wood', '75', 'sans', '0', '1697283923.jpg', '2023-10-14 11:45:23', '2023-10-14 11:45:23'),
(272, 'Proud Dose - Spicy Oud', 8500.00, 'Ibrahim alqurashi', 'epice,oud', 'https://saudi.ibrahimalqurashi.com/en/1010011146-proud-dose-spicy-oud', 'من عبق العود الشرقي الأصيل مع قطرات من التوابل العطرية ممزوجة بحلاوة الكراميل تم تصميم العطر الشرقي الفاخر والأنيق. معزز بنفحات حارة من التوابل التي تجعل رائحته متوهجة للغاية وتنتشر في الأجواء سريعاً  لتخترق قلوب كل من حولك ويضيف نجيل الهند الممزوج بنفحات رقيقة من الياسمين نغمة عطرية مغناطيسية مميزة', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Oud, White flowers', 'Caramel, Amber, Spices', 'Jasmine, Vetiver, Musk and Agarwood', '75', 'sans', '0', '1697284411.jpg', '2023-10-14 11:53:31', '2023-10-14 11:53:31'),
(273, 'Ibraheem Al Qurashi Special Musk', 11500.00, 'Ibrahim alqurashi', 'gourmand,floral,ambre', 'https://saudi.ibrahimalqurashi.com/en/1010221770-ibraheem-al-qurashi-special-musk', 'يلائم جميع اللحظات وينعش سخونة الصيف تتناثر فيه روائح المسك والعنبر لإحساس فوري بالنظافة والإنتعاش وتفيض في قلبه رائحة مسك الغزال الممزوجة مع الزنبق الفاخر ويغزل المسك المثير سحره نحو قاعدة من التونكا والورود لتغمر من يشمها بجمالية الشعور. اخلطه مع عطرك المفضل بعد اللإستحمام لثبات وفوحان ساحر.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Musk, Amber, Birch Flower', 'Suede, Lily', 'Rose, Tonka Bean', '75', 'sans', '0', '1697285802.jpg', '2023-10-14 12:16:42', '2023-10-14 12:16:42'),
(274, 'Raspberry Musk', 11500.00, 'Ibrahim alqurashi', 'frais,fruité', 'https://saudi.ibrahimalqurashi.com/en/6287020280771-raspberry-musk', 'ابتعد عن المألوف واشعر بالتميز مع هذا المزيج المذهل من التوت البري الأحمر وتوت العليق المنعش في عطر واحد. مزيج منعش وقوي من الفانيلا وأزهار السوسن تفوح برائحة المسك الهادئة ونغمات الفاكهة المنعشة ليخلق انطباعًا لا يُنسى مع كل لحظة.\r\n\r\nالنوتة العطرية:', 'orientale', 'Femme', 'produuit cacheté', 'Raspberry, Iris flowers', 'Vanilla, Red berries', 'Musk, Fruity Notes', '75', 'sans', '0', '1697288226.jpg', '2023-10-14 12:57:06', '2023-10-14 12:57:06'),
(275, 'Blueberry Musk', 11500.00, 'Ibrahim alqurashi', 'boise,fruité', 'https://saudi.ibrahimalqurashi.com/en/6287020280764-blueberry-musk', 'جرِب الرحلة الحسية الفريدة لعطر لا مثيل له! واسمح لنفسك بالانتقال إلى مكان يمكنك فيه تجربة عجائب المكونات لمزيج رائع من التوت الأزرق والمسك وخشب الكشمير الذي يخلق رائحة فاكهية ناعمة ومنعشة تستمر لساعات.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Blueberries, Jasmine', 'Fruity tones, Cedarwood', 'Musk, Cashmere wood', '75', 'sans', '0', '1697288561.jpg', '2023-10-14 13:02:41', '2023-10-14 13:02:41'),
(276, 'Vanilla Musk', 11500.00, 'Ibrahim alqurashi', 'gourmand,vanille,floral', 'https://saudi.ibrahimalqurashi.com/en/1010362306-vanilla-musk', 'عطرٌ يصرخ بمكوناته القوية والمتناغمة يلفت الأنظار من أول رشة ، فهو يجمع بين إحساسين مختلفين. القوة المفرطة،و النعومة الطاغية . يفتتح نفحاته بلمسة مخملية من الورد و انتعاش أزهار الياسمين و تتدافع نفحات السوسن والعنبر لتكشف عن شخصية قوية مستقلة من الفانيليا المغمورة بسائل المسك لتُنعش صيفك الملتهب وتغمرك بإحساس النظافة.', 'orientale', 'Femme', 'produuit cacheté', 'Rose, Jasmine, Birch', 'Amber, Iris, Cedar', 'Musk, Vanilla and Tonka Bean', '75', 'sans', '0', '1697289002.jpg', '2023-10-14 13:07:55', '2023-10-14 13:10:02'),
(277, 'Cardamom Musk', 11500.00, 'Ibrahim alqurashi', 'epice,vanille', 'https://saudi.ibrahimalqurashi.com/en/1010372331-cardamom-musk', 'رائحة طابعها الأناقة والفخامة تعكس المعنى الحقيقي للطقوس العربية الأصيلة  تتميز بخلطة مميزة من المسك الأبيض وخلاصة حبات الهيل المنتقاة بعناية  تبدأ بطبقات رائعة من العنبر وانتعاش الفانيليا بالإضافة إلى نكهات خفيفة لاذعة من البرغموت  لرائحة تُحاكي رائحة النظافة وتمنحك أحساس بالإنتعاش يدوم طوال اليوم.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Vanilla and Amber', 'Spicy, Bergamot', 'Musk and Cardamom', '75', 'sans', '0', '1697289333.jpg', '2023-10-14 13:15:33', '2023-10-14 13:15:33'),
(278, 'Abaq Pomegranate Musk', 11500.00, 'Ibrahim alqurashi', 'boise,patchoulli,fruité', 'https://saudi.ibrahimalqurashi.com/en/1010372309-abaq-pomegranate-musk', 'الوصف:رائحة ناعمة وأنيقة مليئة بالخفة و الإنتعاش تجمع بين المسك الصافي و نكهة الرمان الخالصة و يتردد فيه صدى نغمات الفاكهة اللذيذة والزهور وعبير الكشمش. ستأخذك الرائحة إلى عالم من الجمال والأناقة اللانهائية وتنعش حواسك فور ظهورها الأول. استخدمه بعد الإستحمام مباشرة و امزجه مع عطرك المفضل لفوحان أقوى وثبات أطول.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Bergamot, Black Currant, Apple', 'Cedarwood, Patchouli, Caramel', 'Musk, Amber, Pomegranate', '75', 'avec', '1500', '1697289512.jpg', '2023-10-14 13:18:32', '2023-10-14 13:18:32'),
(279, 'Ghuroor Musk Oud', 10500.00, 'Ibrahim alqurashi', 'oud,rose', 'https://saudi.ibrahimalqurashi.com/en/1010262227-ghuroor-musk-oud', 'أسرابٌ من الطيور المحلقة في سماء يوم صافٍ تحمل في قلبها عبق الأزهار و حِدَة القرنفل و تًخبئ بين جناحيها شموخ العود الأصيل ممزوجًا بورود الطائف ببتلاتها الخضراء ولذوعيتها التابلية وسكريتها المقننة فتهبط إليك بشذى رزين من المسك النقي مغمورًا بزيت العود ليضيف لمظهرك لمسة جمال خاصة', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Floral, Carnation', 'Oud, Taif Rose', 'Musk and Oud Oil', '100', 'sans', '0', '1697289844.jpg', '2023-10-14 13:24:04', '2023-10-14 13:24:04'),
(280, 'Ezz Al Hail', 9000.00, 'Ibrahim alqurashi', NULL, 'https://saudi.ibrahimalqurashi.com/en/1010282237-ezz-alhail', 'نار تتوقد ورائحة الهيل الفاخر في القهوة العربية الفاخرة تتوسط المكان بكل دفء وقوة. وتعلو نغمات العود الثمين برائحة تغمر حواسك كما يغمر الهواء رئتيك. فيقدم العنبر والقرنفل نفسه كرسالة غرامية تكشف لك مابداخلها من كلمات مزخرفة بزيوت العود والمسك تُشعل الأحاسيس.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Carnation, Amber', 'Cardamom and Oud', 'Musk and Oud Oil', '100', 'sans', '0', '1697290696.jpg', '2023-10-14 13:38:16', '2023-10-14 19:53:37'),
(281, 'Kasar Al Oud', 11000.00, 'Ibrahim alqurashi', NULL, 'https://saudi.ibrahimalqurashi.com/en/1010091632-kasar-al-oud', 'على حافة يخت صنع من أخشاب الورد تتأمل شفق الغروب والتي بدت  فيه ألوان الزعفران تختلط بألوان زهور البرتقال ممسكا كتابٍ ذي غلاف جلدي عتيق اكتسى بعبير ورود الطائف ورائحة خشب الأرز لتنشر هالة منعشة وردافئة يرق لها الفؤاد . في تلك اللحظات قذفت كسرات العود نفسها في البحر مخترقةً سحب بخور زيت العود لتدخل في سباتٍ عميق !', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Leather, Saffron, Orange Flower', 'Taif Rose, Rosewood, Cedar', 'Sandalwood, Agarwood, Agarwood Oil', '100', 'sans', '0', '1697290888.jpg', '2023-10-14 13:41:28', '2023-10-14 19:54:41'),
(282, 'الفخامة', 9500.00, 'Al-Dakheel Oud', NULL, 'https://shop.aldakheeloud.com/الفخامة', 'من قلب الباتشولي و زهرة الأسمانثوس والقليل من الحمضيات استخلصلنا 50 مل وسميناه عطر الفخامة حتى يضيف الفخامة على من يقتينه وبالتالي ينف كواحد من افخم العطور في المملكة العربية السعودية والتي انفردت به شركة الدخيل للعود احد اكبر مصانع العطور والعود في الشرق الاوسط', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'الورد و زهرتي الجيرانيوم و الفاوانيا', 'الباتشولي و زهرة الأسمانثوس مع الحمضيات', 'العود و خشب الصندل', '50', 'sans', '0', '1697291440.jpg', '2023-10-14 13:50:40', '2023-10-14 19:55:42'),
(283, 'TURATHY', 9500.00, 'Al-Dakheel Oud', 'bkhor,musk', 'https://store.asqgrp.com/ar/offers/white-incense.html', 'دهن تراثي يمثل 18 مل من أغلى المكونات العطرية كالزعفران و الزنجبيل مع البرتقال و الجوز في مقدمة الهرم العطري و إبرة الراعي والتي تسمى ايضا زهرة الجيرانيوم و القرنفل مع الورد و العنبر في قلب الهرم العطري بقاعدة من الباتشولي و زهرة الأميريس مع المسك و المرّة و العود.', 'bkhor', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '18', 'sans', '0', '1697291626.jpeg', '2023-10-14 13:53:46', '2023-10-14 19:52:12'),
(284, 'عود بخور معطر ملكي', 19500.00, 'ASQ', NULL, 'https://store.asqgrp.com/sa_ar/catalog/product/view/id/5704/s/aoud-boukhour-mouatar-malaki/category/14/', 'تكتمل صورة الشرق وأصالته دون عود البخور, فأكملها عبد الصمد القرشي بعود بخور معطر ملكي, فيُثقِل قطع العود بنسمات عطريّة خاصة, مُضفية جوًّا يعجز التعبير عن وصفه. من إنتاج عبد الصمد القرشي.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '70', NULL, NULL, '1697291974.jpg', '2023-10-14 13:59:34', '2023-10-14 13:59:34'),
(285, 'معمول بخور القرشي الفاخر', 12000.00, 'ASQ', NULL, 'https://store.asqgrp.com/sa_ar/offers/maamoul-al-qurashi.html', 'معمول بخور القرشي الفاخر عالي الجودة رائع بمعنى الكلمة ، صنع وفق أعلى المواصفات وتم تعبئته بشكل يدوي ليبقى محافظ على جميع خواصه وميزاته تم مزجه من أروع أنواع البخور بدهن العود الأصيل، الورد الجوري، الياسمين والنرجس يعبر عن مدى اهتمامنا وحرصنا على تقديم الأفضل ليظهر فخامة ذوقك بأبهى صورها ، من أهم ميزاته فوحانه و ثباته سينتشر بسرعة ويدوم طويلا ، إنه يعكس الهوية التراثية والأصالة الخليجية ، مع معمول عبد الصمد انشر الرائحة العطرة بالمكونات الطبيعية .للكرم والضيافة أساليب كثيرة فاجعلها مبهرة مع معمول البخور المميز', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '70', NULL, NULL, '1697292084.jpg', '2023-10-14 14:01:24', '2023-10-14 14:01:24'),
(286, 'عود الفضة - عود بخور معطر', 15000.00, 'ASQ', NULL, 'https://store.asqgrp.com/ar/offers/white-incense.html', 'عود بخور معطّر بتركيبة مميّزة، مكسو بالفضّة ومُختار بعناية ليملأ الأجواء رُقيّاً وأناقةً لامتناهية.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '70', NULL, NULL, '1697292216.jpg', '2023-10-14 14:03:36', '2023-10-14 14:03:36'),
(287, 'عود الذهب - عود بخور معطر', 1500.00, 'ASQ', NULL, NULL, 'عود بخور يحمل معالِم الأناقة في تركيبته المكسوة بالذهب، ومُختار بعناية ليُغني الأجواء برائحة فريدة ومميّزة، تملأ دياركم بالفخامة.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '70', NULL, NULL, '1697292300.jpg', '2023-10-14 14:05:00', '2023-10-14 14:05:00'),
(288, 'معمول عود العود', 25000.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/معمول-عود-العود/p119093800', 'تمتزج في معمول عود العود أجود أنواع دهن العود المعتق بخشب العود المختار بأسلوبٍ فريدٍ وعصري، لتخلق تجربةً عطريةً ساحرةً وفاخرةً تملأ منزلك برائحةٍ ناعمةٍ وجذابةٍ.\r\n\r\nيتميز هذا البخور الفاخر بجودةٍ عاليةٍ وتركيبةٍ متقنةٍ تعكس الرقي والأناقة.\r\n\r\n﻿إنه يخلق جواً هادئاً ومميزاً يمنحك شعوراً بالاسترخاء والهدوء، كما يضفي لمسةً فاخرةً ومميزةً على أيٍّ مناسبةٍ.', 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '70', NULL, NULL, '1697292568.jpg', '2023-10-14 14:09:28', '2023-10-14 14:09:28'),
(289, 'عود بخور معطر - الهيل', 15000.00, 'ASQ', 'bkhor,musk', NULL, NULL, 'bkhor', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '70', 'sans', '0', '1697292951.jpg', '2023-10-14 14:15:09', '2023-10-14 14:15:51'),
(290, 'عود بخور معكر - العنبر', 15000.00, 'ASQ', NULL, NULL, NULL, 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '70', NULL, NULL, '1697293154.jpg', '2023-10-14 14:19:14', '2023-10-14 14:19:14'),
(291, 'جهاز تعطير نانو سنت لون بنفسجي', 21000.00, 'ASQ', NULL, 'https://sa.abdulsamadalqurashi.com/ar/جهاز-تعطير-نانو-سنت-لون-بنفسجي/p2098622980', NULL, 'bkhor', NULL, 'produuit cacheté', NULL, NULL, NULL, '0', NULL, NULL, '1697293397.jpg', '2023-10-14 14:23:17', '2023-10-14 14:23:17'),
(292, 'Hakem', 8200.00, 'Al-Madjed Oud', 'epice,frais', 'https://almajed4oud.com/ar-sa/100-02737', 'ثبات يسيطر على الأجواء عطر فاخر من مكونات منتقاة بعناية، تجمع فخامة العطور الشرقية وانتعاش العطور الفرنسية في زجاجة فريدة، ليتألق الرجلٍ الأنيق كل يوم بعبق يدمج أصالة الزعفران والمسك والأخشاب البيضاء مع الفواكه والحمضيات الحيوية. عطر ثابت يسيطر على المشاعر ويخطف الأنفاس طويلًا.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697293672.jpg', '2023-10-14 14:27:52', '2023-10-14 14:27:52'),
(293, 'Reetaj', 7800.00, 'Al-Madjed Oud', 'frais,rose', 'https://almajed4oud.com/ar-sa/100-02738', 'إبداع عطري بالغ الجمال في موسم من الربيع الزاهي انتقينا أرقى الأزهار الفرنسية لتهب لك نسمة عطرية فواحة امتزجت بنفحات من أشجار الحمضيات لتنسجم بكل سلاسة على الجلد حتى تضيف لمسة دافئة إلى إطلالتك.', 'orientale', 'Femme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697294306.jpg', '2023-10-14 14:38:26', '2023-10-14 14:38:26'),
(294, 'Black Secret', 7800.00, 'Al-Madjed Oud', 'gourmand,floral', 'https://almajed4oud.com/ar-sa/100-02731', 'تركيبة لها سحرها الخاص من التوت والياسمين ونعومة الفانيليا', 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697294509.jpg', '2023-10-14 14:41:49', '2023-10-14 14:41:49'),
(295, 'El Brince', 8500.00, 'Al-Madjed Oud', 'frais,floral', 'https://almajed4oud.com/ar-sa/100-02732', NULL, 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697294687.jpg', '2023-10-14 14:44:47', '2023-10-14 14:44:47'),
(296, 'Aris', 7800.00, 'Al-Madjed Oud', 'vanille,aromatique,floral', 'https://almajed4oud.com/ar-sa/100-02730', 'نوتة مدروسة بدايةً من البرغموت والياسمين انتهاءً بالفانيليا', 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697294794.jpg', '2023-10-14 14:46:34', '2023-10-14 14:46:34'),
(297, 'Jawharat El Oud', 8800.00, 'Al-Madjed Oud', 'oud,Smoky', 'https://almajed4oud.com/ar-sa/100-02739', NULL, 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '100', 'sans', '0', '1697295152.jpg', '2023-10-14 14:52:32', '2023-10-14 14:52:32'),
(298, 'Dark Lavender', 10500.00, 'Ibrahim alqurashi', 'vanille,oriental,cuir', 'https://saudi.ibrahimalqurashi.com/en/6287020280238-dark-lavender', NULL, 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Lavender, Musk', 'Vanilla and Leather', 'Floral, Orris', '100', 'sans', '0', '1697299490.jpg', '2023-10-14 16:04:50', '2023-10-14 16:04:50'),
(299, 'Golden Amber', 10500.00, 'Ibrahim alqurashi', 'boise,ambre', 'https://saudi.ibrahimalqurashi.com/en/6287020280221-golden-amber', 'تطفو رائحة مسكية وخشبية ساحرة من أجود أنواع العنبر فوق جبال الألب ، ويتردد صداها برائحة منعشة غنية من التوابل الهادئة . تتبعها  رائحة حلاوة قلب الورود والجلود الطبيعية كالكنز الثمين في بطن الوادي ، وتُضفي النفحات الخشبية من أشجار البتولا الشاهقة لمسة من الإنغماس والقوة مصحوبة بنوتات حمضية  ذات فوحان قوي ، توقظ الشباب في القلب لتمضي بحُسنها المعهود', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Amber, Carnation', 'Rose, Leather', 'Citrus, Birch', '100', 'sans', '0', '1697299715.jpg', '2023-10-14 16:08:35', '2023-10-14 16:08:35'),
(300, 'Musk Cubes Powder', 1000.00, 'Ibrahim alqurashi', NULL, 'https://saudi.ibrahimalqurashi.com/en/1030041264-musk-cubes-powder?search=مكعبات', NULL, 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '0', 'sans', '0', '1697299953.jpg', '2023-10-14 16:12:33', '2023-10-14 16:12:33'),
(301, 'Musk Cubes Special', 1000.00, 'Ibrahim alqurashi', NULL, 'https://saudi.ibrahimalqurashi.com/en/1030041262-musk-cubes-special', 'مكعبات المسك الجامد من إبراهيم القرشي له إستخدامات عديدة , يوجد 8 مكعبات داخل الصندوق', 'orientale', 'Unisexe femme homme', 'produuit cacheté', NULL, NULL, NULL, '0', 'sans', '0', '1697300192.jpg', '2023-10-14 16:16:32', '2023-10-14 16:16:32'),
(302, 'Powder Musk', 9800.00, 'Ibrahim alqurashi', 'poudre,floral', 'https://saudi.ibrahimalqurashi.com/ar/1010352305-powder-musk', 'ثنائي مدهش من المسك وذرات البودرة الناعمة تعزف لك أجمل الألحان في توليفة عطرية تحاكي رائحة النظافة وتمنحك انتعاش يدوم، و تتخلل بين طبقاته رائحة الفانيليا والعنبر وأخشاب الأرز الساحرة لتمنحك لمسة ناعمة تبقى برفقتك طوال اليوم وتمنحك أحساس الانتعاش', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Jasmine, Ylang-Ylang, Rose.', 'Cedar Wood, Orris, Amber.', 'Musk, Vanilla, Tonka Bean and Powder.', '75', 'avec', '0', '1697300538.jpg', '2023-10-14 16:22:18', '2023-10-14 16:22:18'),
(303, 'Diwan - Arabian Oud', 26500.00, 'Arabian Oud', 'epice,oriental', 'https://sa.arabianoud.com/ar/0301020472-diwan.html', 'من أصل الفخامة العربية بدواوين شعرها الأصيل التي تحكي تراثا وعبقا تاريخيا امتزجت آفاق ماضينا بحاضرنا المعاصر وتوج عنها عطر يحكي بديوانه قصائد عطرك الفواح \"ديوان\" للمكان حكاية يجسدها عطرك', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'بتلات البنفسج  رائحة عشبية هادئة مع لمسة مائية', 'هيل  رائحة توابل الهيل القوية والفواحة', 'عود  رائحة دافئة غنية وأصيلة', '100', 'avec', '3500', '1697301117.jpg', '2023-10-14 16:31:57', '2023-10-14 16:31:57'),
(304, 'Kalemat', 17800.00, 'Arabian Oud', 'boise,sucre,epice', 'https://sa.arabianoud.com/ar/0301020146-kalemat-for-unisex-100-ml.html', 'رائحة التوابل الفواحة من الزعفران والقرفة على قاعدة دافئة من الفانيلا وخشب الصندل الشرقي الناعم\r\nخبرة طويلة وذوق رفيع ننثره بـ (كلمات ) من العربية للعود ، ليفوح حضورك بأبهى الكلمات، عطر فاخر يمنحك حضوراً مختلفاً ورائحة سلسة أنيقة لتغمر كل من حولك برائحة هذا العطر المذهل الجذاب.', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Bilberry, Anise.', 'Rosemary, Honey.', 'Musk, Sweet Amber and Kashmir Wood.', '100', 'sans', '0', '1697301769.jpg', '2023-10-14 16:42:49', '2023-10-14 16:42:49'),
(305, 'Madawi Gold', 31000.00, 'Arabian Oud', 'sucre,epice,floral', 'https://sa.arabianoud.com/ar/0301020495-madawi-50-ml.html', 'عبير ساحر من زهرة البرتقال المنعشة على قاعدة من الباتشولي الطبيعي وفخامة العنبر الدافئ يتوجها مزيج نادر من الفواكة الاستوائية', 'orientale', 'Femme', 'produuit cacheté', 'Apple Blossom, Peach.', 'Pineapple Blossom.', 'Wild Rose, Musk and Patchouli.', '90', 'sans', '0', '1697302028.jpg', '2023-10-14 16:47:08', '2023-10-14 16:47:08'),
(306, 'Bussma - بصمة', 24000.00, 'Arabian Oud', 'epice,vanille,ambre', 'https://sa.arabianoud.com/ar/0301020494-bussma-50-ml.html', 'نوتات منعشة من فاكهة الأناناس الاستوائية الممزوجة برقة الياسمين وخشب السيدار الشرقي\r\n\r\n\r\nعندما تجتمع الأناقة وروعة المحتوى ستنثر بصمة حضورك في جميع الارجاء بطبقات جمعت أروع المكونات ليترك المزيج أثره وتاثر فيمن حولك ببصمة', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'bergamote, ambre', 'jasmin, safran, vanille', 'bois de cèdre, fève de Tonka, musc, praline', '95', 'sans', '0', '1697302402.png', '2023-10-14 16:53:22', '2023-10-14 16:53:22'),
(307, 'Resala', 24000.00, 'Arabian Oud', 'epice,vanille,rose', 'https://sa.arabianoud.com/ar/0301020426-resala-for-unisex-100-ml.html', 'رسالة تنقل باريجها الدافئ عمق الاصالة الشرقية بحلتها الجديدة، رسالة اصدق تعبير لاجمل حب', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Saffron.', 'Rose, Vanilla.', 'Oud, Chocolate.', '100', 'sans', '0', '1697302769.jpg', '2023-10-14 16:59:29', '2023-10-14 16:59:29'),
(309, 'Oligarch', 72000.00, 'Roja parfums', 'boise,aromatique,agrume,fruité', 'https://www.fragrantica.fr/parfum/Roja-Dove/Oligarch-40687.html', '.', 'produuit cacheté', 'Homme', 'cuir', 'Agrumes', 'Cassis', 'Matté', '50', 'sans', '15000', '1697611033.png', '2023-10-18 06:37:13', '2023-10-18 06:37:13'),
(312, 'Arabian Knight', 18500.00, 'Arabian Oud', 'agrume,ambre', 'https://sa.arabianoud.com/ar/0301020376-arabian-knight-100-ml.html', 'عبق الاخشاب الشرقي الأنيق مع المسك النقي يتوجه انتعاش البرغموت ويعزز قلبة رائحة دافئة من حبوب التونكا\r\nطريقك للتجدد، التألق، البهجة والانتعاش', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'Citronella, Jasmine', 'Cinnamon, Rose', 'Cedarwood, Vanilla, Amber', '100', 'sans', '0', '1698144824.png', '2023-10-24 10:53:44', '2023-10-24 10:53:44'),
(313, 'دهن عود عتيق', 29000.00, 'ASQ', 'oud', 'https://sa.abdulsamadalqurashi.com/ar/dehen-oud-ateeque/p779017450', 'بعد أعوام من الحفظ والعناية أطلق عبد الصمد القرشي دهن العود المعتق. عطر مكون فقط من دهن العود الهندي المعتّق، الذي يجمع بعبيره بين الحاضر وسحر أصالة الماضي', 'orientale', 'Unisexe femme homme', 'produuit cacheté', 'عود هندي', 'عود هندي', 'عود هندي', '90', 'sans', '0', '1698393527.jpg', '2023-10-27 07:58:47', '2023-10-27 07:58:47'),
(315, 'Zen\'gi', 56000.00, 'Unique\'e luxury', 'agrume', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Zen-gi-86869.html', NULL, 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Agrumes', 'Vin rouge', 'Ambre', '100', 'avec', '6000', '1703792422.png', '2023-12-28 19:05:04', '2023-12-28 19:40:22'),
(317, 'Crush on me', 54000.00, 'Unique\'e luxury', 'sucre,gourmand,patchoulli,agrume', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Crush-On-Me-66082.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Citron vert', 'Patchouli', 'Caramel', '100', 'avec', '5500', '1703792546.jpg', '2023-12-28 19:08:06', '2023-12-28 19:42:26'),
(319, 'Chypre toscano', 33000.00, 'Unique\'e luxury', 'boise,cuir', 'https://www.fragrantica.fr/parfum/Unique-e-Luxury/Chypre-Toscano-50399.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Lavande', 'Cuir', 'Notes  boisées', '100', 'avec', '4000', '1703792685.jpg', '2023-12-28 19:11:35', '2023-12-28 19:44:45'),
(320, 'Hacivat x', 48500.00, 'Nishane', 'boise,epice,aromatique,frais,agrume', 'https://www.fragrantica.fr/parfum/Nishane/Hacivat-X-80462.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Ananas', 'Citron vert', 'Vétiver', '100', 'avec', '5000', '1703792736.png', '2023-12-28 19:16:02', '2023-12-28 19:45:36'),
(321, 'Absolu aventus', 67000.00, 'Creed', 'boise,frais,agrume', 'https://www.fragrantica.fr/parfum/Creed/Absolu-Aventus-84112.html', NULL, 'produuit cacheté', 'Homme', 'flacon entier', 'Cassis', 'Cédrat', 'Vétiver', '75', 'avec', '9000', '1703792826.png', '2023-12-28 19:20:00', '2023-12-28 19:47:06'),
(322, 'Ta\'if elixir', 50.00, 'Ormande Jayne', 'boise,sucre,oud,oriental', 'https://www.fragrantica.fr/parfum/Ormonde-Jayne/Ta-if-Elixir-56146.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Dates', 'Roses', 'Oud du Cambodge', '9000', 'sans', '43000', '1703792868.png', '2023-12-28 19:23:27', '2023-12-28 19:47:48'),
(323, 'Seminalis', 32000.00, 'Orto Parisi', 'boise,patchoulli', 'https://www.fragrantica.fr/parfum/Orto-Parisi/Seminalis-38293.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Framboise', 'Muguet', 'Patchouli', '50', 'avec', '7000', '1703792920.png', '2023-12-28 19:27:41', '2023-12-28 19:48:40'),
(325, 'Absinth- testeur original', 19000.00, 'Unique\'e luxury', 'boise,aromatique,notes', 'https://www.fragrantica.fr/parfum/Nasomatto/Absinth-4293.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Absinth', 'Notes vertes', 'Vétiver', '30', 'sans', '11000', '1703792361.png', '2023-12-28 19:36:03', '2023-12-28 19:39:21'),
(326, 'Rose d\'arabie- testeur original', 42000.00, 'Armani', 'boise,oud,patchoulli,rose,oriental', 'https://www.fragrantica.fr/parfum/Giorgio-Armani/Armani-Prive-Rose-d-Arabie-10886.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Rose', 'Patchouli', 'Oud', '100', 'sans', '5000', '1703793258.png', '2023-12-28 19:53:17', '2023-12-28 19:54:18'),
(328, 'Oud silk mood - testeur original', 42000.00, 'Maison Francis Kurkdjian', 'boise,oud,agrume,rose', 'https://www.fragrantica.fr/parfum/Maison-Francis-Kurkdjian/Oud-Silk-Mood-48456.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Bergamote', 'Rose', 'Oud', '70', 'sans', '6500', '1703793741.png', '2023-12-28 20:01:15', '2023-12-28 20:02:21'),
(329, 'Eden-rock 250ml', 68000.00, 'Dior', 'aromatique,frais,agrume', 'https://www.fragrantica.fr/parfum/Dior/Eden-Roc-66856.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Sel de mer', 'Agrumes', 'Noix de Coco', '250', 'sans', '3500', '1703793940.avif', '2023-12-28 20:05:07', '2023-12-28 20:05:40'),
(330, 'Silver musk - testeur original', 19000.00, 'Nasomatto', 'poudre', 'https://www.fragrantica.fr/parfum/Nasomatto/Silver-Musk-4295.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Musc', 'Musc', 'Musc', '30', 'sans', '11000', '1703843315.png', '2023-12-29 09:48:12', '2023-12-29 09:48:35'),
(331, 'Tabac imperial- testeur original', 46000.00, 'Versace', 'boise,tabac,smoky', 'https://www.fragrantica.fr/parfum/Versace/Tabac-Imperial-70887.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Miel', 'Tabac', 'Notes boisées', '100', 'sans', '5000', '1703843557.png', '2023-12-29 09:52:16', '2023-12-29 09:52:37'),
(332, 'Purple rain - testeur original', 42000.00, 'Prada', 'boise,poudre,agrume', 'https://www.fragrantica.fr/parfum/Prada/Purple-Rain-32194.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Bergamote', 'Iris', 'Cèdre', '100', 'sans', '4500', '1703843733.png', '2023-12-29 09:55:00', '2023-12-29 09:55:33'),
(339, 'Tuxeo - testeur original', 44000.00, 'Yves Saint Laurent', 'epice,patchoulli', 'https://www.fragrantica.fr/parfum/Yves-Saint-Laurent/Tuxedo-32269.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Épices', 'Patchouli', 'Ambre gris', '125', 'avec', '4500', '1703845679.png', '2023-12-29 10:26:42', '2023-12-29 10:27:59'),
(340, 'Tuxedo', 55000.00, 'Yves Saint Laurent', 'epice,patchoulli', 'https://www.fragrantica.fr/parfum/Yves-Saint-Laurent/Tuxedo-32269.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Épices', 'Patchouli', 'Ambre gris', '125', 'avec', '4500', '1703845705.png', '2023-12-29 10:27:23', '2023-12-29 10:28:25'),
(341, 'Atlas garden- testeur original', 44000.00, 'Yves Saint Laurent', 'sucre,agrume,floral', 'https://www.fragrantica.fr/parfum/Yves-Saint-Laurent/Atlas-Garden-58274.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Néroli', 'Dates', 'Fève de Tonka', '125', 'sans', '4500', '1703845834.png', '2023-12-29 10:29:52', '2023-12-29 10:30:34'),
(342, 'Capeline- testeur original', 44000.00, 'Yves Saint Laurent', 'sucre,vanille,floral', 'https://www.fragrantica.fr/parfum/Yves-Saint-Laurent/Capeline-60081.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Bergamote', 'Eau de mer', 'Absolu de vanille', '125', 'sans', '4500', '1703845945.png', '2023-12-29 10:31:53', '2023-12-29 10:32:25'),
(343, 'Cuir', 55000.00, 'Yves Saint Laurent', 'boise,cuir', 'https://www.fragrantica.fr/parfum/Yves-Saint-Laurent/Cuir-2023-80344.html', NULL, 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Feuilles de violette', 'Cuir', 'Cuir', '125', 'sans', '4500', '1703846047.png', '2023-12-29 10:33:36', '2023-12-29 10:34:07'),
(344, 'Rouge velours', 55000.00, 'Yves Saint Laurent', 'boise,patchoulli,rose', 'https://www.fragrantica.fr/parfum/Yves-Saint-Laurent/Rouge-Velours-68213.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Thé blanc', 'Iris', 'Patchouli', '125', 'sans', '4500', '1703846191.png', '2023-12-29 10:36:02', '2023-12-29 10:36:31'),
(345, 'Métalique- testeur original', 25000.00, 'Tom Ford', 'vanille,poudre,floral', 'https://www.fragrantica.fr/parfum/Tom-Ford/Metallique-55766.html', NULL, 'flacon entier', 'Femme', 'testeur original', 'Bergamote', 'Muguet', 'Vanille', '100', 'sans', '2500', '1703863524.png', '2023-12-29 15:24:27', '2023-12-29 15:25:24'),
(346, 'mandarino di amalfi - testeur original', 31000.00, 'Tom Ford', 'boise,aromatique,frais,agrume,floral,notes', 'https://www.fragrantica.fr/parfum/Tom-Ford/Mandarino-di-Amalfi-25481.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Citron', 'Menthe', 'Vétiver', '50', 'sans', '6000', '1703864599.png', '2023-12-29 15:41:30', '2023-12-29 15:43:19'),
(347, 'oud wood - testeur original', 31000.00, 'Tom Ford', 'boise,oud,vanille,poudre', 'https://www.fragrantica.fr/parfum/Tom-Ford/Oud-Wood-1826.html', NULL, 'testeur original', 'Unisexe femme homme', 'flacon entier', 'Oud', 'Bois de santal', 'Fève de Tonka', '50', 'sans', '6000', '1703864819.png', '2023-12-29 15:46:23', '2023-12-29 15:46:59'),
(348, 'rose prick - testeur original', 31000.00, 'Tom Ford', 'epice,patchoulli,rose,floral', 'https://www.fragrantica.fr/parfum/Tom-Ford/Rose-Prick-58781.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Poivre', 'Roses', 'Patchouli', '50', 'sans', '6000', '1703865013.png', '2023-12-29 15:49:30', '2023-12-29 15:50:13'),
(349, 'myrrhe mistère - testeur original', 31000.00, 'Tom Ford', 'boise,poudre,oriental', 'https://www.fragrantica.fr/parfum/Tom-Ford/Myrrhe-Mystere-83981.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Myrrhe', 'Musc', 'Bois de santal', '50', 'sans', '6000', '1703865346.png', '2023-12-29 15:55:01', '2023-12-29 15:55:46'),
(352, 'bitter peach - testeur original', 31000.00, 'Tom Ford', 'boise,floral,fruité', 'https://www.fragrantica.fr/parfum/Tom-Ford/Bitter-Peach-62707.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Pêche', 'Cognac', 'Bois de santal', '50', 'sans', '6000', '1703866130.png', '2023-12-29 16:07:47', '2023-12-29 16:08:50'),
(355, 'Noir', 32000.00, 'Tom Ford', 'boise,epice,poudre,patchoulli', 'https://www.fragrantica.fr/parfum/Tom-Ford/Noir-15727.html', NULL, 'flacon entier', 'Homme', 'produuit cacheté', 'Épices', 'Roses', 'Vanille', '100', 'sans', '3500', '1703866635.png', '2023-12-29 16:16:27', '2023-12-29 16:17:15'),
(357, 'uomo intense', 24000.00, 'Valentino', 'vanille,poudre,cuir', 'https://www.fragrantica.fr/parfum/Valentino/Valentino-Uomo-Intense-38254.html', NULL, 'flacon entier', 'Homme', 'décantage', 'Mandarine', 'Iris', 'Vanille', '100', 'avec', '2500', '1704021481.png', '2023-12-31 11:13:26', '2023-12-31 11:18:01'),
(358, 'Oud for greatness', 48000.00, 'Initio', 'boise,epice,oud,patchoulli', 'https://www.fragrantica.com/perfume/Initio-Parfums-Prives/Oud-for-Greatness-53641.html', NULL, 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Safran', 'Oud', 'Patchouli', '90', 'sans', '6000', '1704023161.png', '2023-12-31 11:44:52', '2023-12-31 11:46:01'),
(361, 'Gyan - testeur original', 48000.00, 'BVLGARI', 'patchoulli,floral', 'https://www.fragrantica.fr/parfum/Bvlgari/Gyan-41221.html', NULL, 'testeur original', 'Homme', 'flacon entier', 'Jasmin', 'Patchouli', 'Encens', '100', 'sans', '5000', '1704025138.png', '2023-12-31 12:08:09', '2023-12-31 12:18:58'),
(362, 'Garanat - testeur original', 48000.00, 'BVLGARI', 'rose,smoky', 'https://www.fragrantica.fr/parfum/Bvlgari/Garanat-41219.html', NULL, 'flacon entier', 'Homme', 'testeur original', 'Rose', 'Rose de Damas', 'Encens', '100', 'sans', '5000', '1704025341.png', '2023-12-31 12:21:04', '2023-12-31 12:22:21'),
(364, 'Ambero - testeur original', 48000.00, 'BVLGARI', 'boise,epice,poudre', 'https://www.fragrantica.fr/parfum/Bvlgari/Ambero-41224.html', NULL, 'flacon entier', 'Homme', 'testeur original', 'Poivre rose', 'Gingembre', 'Safran', '100', 'sans', '5000', '1704036127.png', '2023-12-31 15:21:25', '2023-12-31 15:22:07'),
(365, 'Onekh - testeur original', 48000.00, 'BVLGARI', 'boise,epice,cuir', 'https://www.fragrantica.fr/parfum/Bvlgari/Onekh-41220.html', NULL, 'testeur original', 'Homme', 'flacon entier', 'Ciste', 'Épices', 'Cuir', '100', 'avec', '5000', '1704036217.png', '2023-12-31 15:23:07', '2023-12-31 15:23:37'),
(369, 'Flam - testeur original', 32000.00, 'Memo Paris', 'boise,agrume,floral', 'https://www.fragrantica.fr/parfum/Memo-Paris/Flam-69613.html', NULL, 'flacon entier', 'Unisexe femme homme', 'testeur original', 'Bergamote', 'Vanille de Madagascar', 'Cèdre', '75', 'sans', '4500', '1704540444.png', '2024-01-06 11:25:43', '2024-01-06 11:27:24'),
(370, 'Marfa spices', 72000.00, 'Memo Paris', 'boise,epice,floral', 'https://www.fragrantica.fr/parfum/Memo-Paris/Marfa-Spices-48077.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Cardamome', 'Tubéreuse', 'Bois de santal', '75', 'sans', '9500', '1704540628.png', '2024-01-06 11:29:18', '2024-01-06 11:30:28'),
(372, 'Kirke', 23000.00, 'Tiziana Terenzi', 'poudre,fruité', 'https://www.fragrantica.fr/parfum/Tiziana-Terenzi/Kirke-32172.html', NULL, 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Fruits', 'Muguet', 'Musc', '100', 'sans', '2500', '1709540294.png', '2024-03-04 08:16:14', '2024-03-04 08:18:14'),
(374, 'Cherry smoke- testeur original', 31000.00, 'Tom Ford', 'boise,sucre,gourmand,fruité,smoky', 'https://www.fragrantica.fr/parfum/Tom-Ford/Cherry-Smoke-78578.html', NULL, 'testeur original', 'Unisexe femme homme', 'flacon entier', 'Cerise', 'Olive', 'Fumé', '50', 'sans', '6000', '1710404997.png', '2024-03-14 08:28:51', '2024-03-14 08:29:57'),
(375, 'Nefs', 62000.00, 'Nishane', 'boise,oud,rose', 'https://www.fragrantica.fr/parfum/Nishane/Nefs-54786.html', NULL, 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Miel', 'Safran', 'Oud', '50', 'avec', '13000', '1710405198.png', '2024-03-14 08:32:12', '2024-03-14 08:33:18'),
(376, 'Philosykos - tester original', 29000.00, 'Diptyque', 'boise,aromatique,fruité', 'https://www.fragrantica.fr/parfum/Diptyque/Philosykos-Eau-de-Parfum-3865.html', NULL, 'testeur original', 'Unisexe femme homme', 'flacon entier', 'Feuilles de figuier', 'Figue', 'Notes vertes', '75', 'sans', '4000', '1710405392.png', '2024-03-14 08:35:17', '2024-03-14 08:36:32'),
(377, 'Rouge malachite', 58000.00, 'Armani', 'floral,fruité', 'https://www.fragrantica.fr/parfum/Giorgio-Armani/Armani-Prive-Rouge-Malachite-34589.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Poivre rose', 'Ylang-Ylang', 'Tubéreuse', '100', 'sans', '6000', '1710405719.png', '2024-03-14 08:40:39', '2024-03-14 08:41:59'),
(378, 'Megamare', 33000.00, 'Orto Parisi', 'boise,marine,agrume', 'https://www.fragrantica.fr/parfum/Orto-Parisi/Megamare-53471.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Agr', 'Algue', 'Notes boisées', '50', 'avec', '7000', '1710406067.png', '2024-03-14 08:46:59', '2024-03-14 08:47:47'),
(379, 'Herod', 44000.00, 'Parfums de Marly', 'vanille,tabac', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Herod-16939.html', NULL, 'flacon entier', 'Unisexe femme homme', 'produuit cacheté', 'Cannelle', 'Feuilles de tabac', 'Vanille', '125', 'sans', '4000', '1710406359.png', '2024-03-14 08:51:29', '2024-03-14 08:52:39'),
(380, 'Delina', 52000.00, 'Parfums de Marly', 'floral,fruité', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Delina-43871.html', NULL, 'produuit cacheté', 'Femme', 'flacon entier', 'Litchi', 'Rose de turquie', 'Petalia', '75', 'sans', '7000', '1710406485.jpg', '2024-03-14 08:54:02', '2024-03-14 08:54:45'),
(381, 'Pegasus exclusif', 46000.00, 'Parfums de Marly', 'boise', 'https://www.fragrantica.fr/parfum/Parfums-de-Marly/Pegasus-Exclusif-63100.html', NULL, 'produuit cacheté', 'Unisexe femme homme', 'flacon entier', 'Cardamome', 'Amande amère', 'Oud', '125', 'sans', '4000', '1710406654.jpg', '2024-03-14 08:57:09', '2024-03-14 08:57:34');

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mouhamed', 'zakariahouamzakaria@gmail.com', '+213656569260', NULL, '$2y$10$eczr8G/fox/G.cklpY4ahe6A71KY330b.jfSKOXBppqKzVKe93/uu', NULL, '2023-04-08 12:59:37', '2023-04-08 12:59:37'),
(2, 'mouhamed', 'mouhamed@gmail.com', '+213656569260', NULL, '$2y$10$0JE61NnXkupzGAljrTD4aOdzFyQH8w7Mk89islW8IocUo/mLql0Hm', NULL, '2023-04-08 13:00:27', '2023-04-08 13:00:27'),
(3, 'lhomo', 'homo@gmail.com', '+213656569260', NULL, '$2y$10$GJaOfoRmDwUHlHuJO.HMY.1PKR8OSvSVJFjUPBNl16l1jQduiAGsi', NULL, '2023-04-08 13:17:39', '2023-04-08 13:17:39'),
(4, 'khaled', 'khaled@gmail.com', '+213656569260', NULL, '$2y$10$M4U3R.OKo0d6d1YvfhkCle23fnyHMh2lD8mLCkvV8GbKHRodP59b2', NULL, '2023-04-08 20:51:52', '2023-04-08 20:51:52'),
(5, 'khiro khiro', 'kheiredine@gmail.com', '0551112540', NULL, '$2y$10$EZuATnXbeXT63DjMRKKEX.2LTzkXZab28XRAsVsI84zKmTy4Y/qIu', 'Ct35OMMftDpfZLcACNUzsXGPpUT1ZxYvFCoVOvHPzaAnbamRhRglI9ok3vMO', '2023-08-23 12:26:20', '2023-09-06 06:52:56'),
(6, 'Nassim', 'nassim@gmail.com', '0728651728', NULL, '$2y$10$zrFu5fTAS9iGMDZ26MOOcuNHGhJIIJlVi8ttGt4v8qW.DMpL/eEOS', NULL, '2023-09-08 13:19:42', '2023-09-08 13:19:42'),
(7, 'DSmmwIddIeYh', 'OIBXLS.hmhhqc@gemination.hair', '746-844-74-33', NULL, '$2y$10$MR19ZsKkY5UCB/q5MmXSN.yGZ7meKwkwKZgrwHin1Sw1XpRN4UiKm', NULL, '2023-10-21 20:40:36', '2023-10-21 20:40:36'),
(8, 'CDUalhPEnm', 'ijFUbK.qhdwddb@gemination.hair', '204-944-09-56', NULL, '$2y$10$5pRWPkwgjlKneFRsnWyIOOpy3tra6h9q/jXvIFrmj8Pl67xrNza7W', NULL, '2023-10-24 16:16:39', '2023-10-24 16:16:39'),
(9, 'aTFsLmcotJtPuN', 'yPavrW.qwphqph@gemination.hair', '173-069-17-59', NULL, '$2y$10$pK8e3jNV1UwQUnO0CSu/Rem.un6s2nQEV3u..iPgU6wI/7C8gcMjy', NULL, '2023-10-26 11:24:49', '2023-10-26 11:24:49'),
(10, 'FUvjIoDINqjJE', 'kreno11@outlook.com', '185-211-82-28', NULL, '$2y$10$b20tUY1b5G.56o.1BNenJ.P63Zze26JbgYFMRlHWYNHFDHv4DeX8G', NULL, '2023-11-13 05:37:23', '2023-11-13 05:37:23'),
(11, 'xynWXXuDyNzWA', 'lakerluver88@yahoo.com', '669-271-21-99', NULL, '$2y$10$D3CjF8.OCjEJMrKnDD294uaorjpMM2hkosOPWY6xWikzsL9wywZvi', NULL, '2023-11-16 23:42:32', '2023-11-16 23:42:32'),
(12, 'Eliana', 'rJAAwq.bttddmm@lustrum.cfd', '936-583-96-98', NULL, '$2y$10$ReL3J6KhdCDoBGU9Pwh0nuGLheLpHyAgXWP47FJdUJJFkusd3Yfvy', NULL, '2023-11-20 05:04:53', '2023-11-20 05:04:53'),
(13, 'Cxnveterkc', 'tSzXJE.qjwwwmc@spectrail.world', '129-454-97-44', NULL, '$2y$10$5Vu/mn2GhGRuMN.yLuQrhOQ.uBf4bkWb9edUYZsG05EtxsxtxbyLe', NULL, '2023-11-24 20:54:28', '2023-11-24 20:54:28'),
(14, 'Niklaus', 'sJjfoU.bcmtdd@tonetics.biz', '340-709-97-53', NULL, '$2y$10$pXeCPMUoCCCa.9ohBjqeQeawjvfYNfrfvOTzx9kKrpVuBVcJSsIt6', NULL, '2023-11-27 14:24:15', '2023-11-27 14:24:15'),
(15, 'LJfIhkuhsArq', 'eLkMmi.twjbhwj@silesia.life', '922-050-19-65', NULL, '$2y$10$Yy4KWqnCE7KYvh8GyGs5heO5rIvkxaUm1kE5.goV3W0tEt0KID6U.', NULL, '2023-12-04 14:44:47', '2023-12-04 14:44:47'),
(16, 'Justice', 'rskQAw.pqcdmb@wisefoot.club', '106-933-49-07', NULL, '$2y$10$Nk1Be2w5q62ais.MVwnfqesrxtodlyFqCq7dw8khAkR4iKV7YDkYK', NULL, '2023-12-18 18:42:13', '2023-12-18 18:42:13'),
(17, 'Damari', 'HclIqw.tmbmqwd@anaphora.team', '822-312-81-47', NULL, '$2y$10$Z1VnCJheyAWBIfuxfeu3..MhSLmCfVacoTKH0Viy/c9p4ulU7Uw.C', NULL, '2023-12-26 08:53:21', '2023-12-26 08:53:21'),
(18, 'Vienna', 'CuHneQ.wjwtjmb@spinapp.bar', '531-634-61-79', NULL, '$2y$10$X7ikC1x1Pd4mWQi1IYKdVeEc2OnIjzUzSzC9vryQ8vw2EP62s7TtC', NULL, '2023-12-27 21:21:33', '2023-12-27 21:21:33'),
(19, 'Kendall', 'RUwcSj.wpqmjbb@spinapp.bar', '312-061-83-25', NULL, '$2y$10$Dm4q/0tDFfg/ouLYo1.Tlu.Byp5mrpmmp6sGs6l0fNL76dQTDG9fm', NULL, '2023-12-30 15:07:08', '2023-12-30 15:07:08'),
(20, 'Camilla', 'jiCMLU.qbtcqhp@wheelry.boats', '570-143-47-47', NULL, '$2y$10$xxl8usNpHotfPcwvxGEolepIEL4cwEKHFkGOQaEJx7xa24Bi7IUeC', NULL, '2024-01-16 18:06:07', '2024-01-16 18:06:07'),
(21, 'Ramon', 'CpvIHu.qjqmpp@chilgoza.buzz', '066-873-77-72', NULL, '$2y$10$0djzgQ5c9tXIKnzXNY1zVOnqoTbPG2mAuZQTyX7ZFAwdsqSFZ2cBW', NULL, '2024-01-28 00:45:07', '2024-01-28 00:45:07'),
(22, 'Vienna', 'OCjOzj.qdwmddmb@anaphora.team', '741-455-86-62', NULL, '$2y$10$0FKNhjKFMBcRtLgvejdTPOOVZYmjAgDjA0NZfAJV4STkyx0q4Ywj6', NULL, '2024-02-03 22:27:57', '2024-02-03 22:27:57'),
(23, 'Yebda kamelia', 'sebtikami@gmail.com', '0549594050', NULL, '$2y$10$u3TErk3oC6q.Kfb4dgl8BOOK0K6D06Uadby66cPZRPz4F6NJUBCMa', NULL, '2024-02-08 21:03:54', '2024-02-08 21:03:54'),
(24, 'Waylen', 'BAJzvb.hbbjdwd@zetetic.sbs', '387-779-41-08', NULL, '$2y$10$fvgZlvI3q4rd7duD6dVyuekCptlMJloJDqrxjxH/sAyI.cpUqYo4u', NULL, '2024-03-01 15:42:00', '2024-03-01 15:42:00'),
(25, 'Promise', 'TrInUm.bcmbct@flexduck.click', '381-619-14-03', NULL, '$2y$10$PBB/6b6gPnnJeb5Y/9NkfeHOw2gpgZTPgYp9hPJ7J5pM1AmHDaeS6', NULL, '2024-03-02 17:11:59', '2024-03-02 17:11:59'),
(26, 'Noah', 'nIyAYv.whmwqmc@kerfuffle.asia', '535-249-55-36', NULL, '$2y$10$YLsqcuMMJQCphzn.0QghpuftH9qtr2sysfc9pVOSjSKL9IUwWE.n6', NULL, '2024-03-07 11:25:37', '2024-03-07 11:25:37'),
(27, 'renata', 'qchhhbjcc.m@monochord.xyz', '596-117-89-35', NULL, '$2y$10$ggWDon8X0dQ6GDnHnzw87OsIgaItd04/kKGhVqpVPoblpZnHNf7Uq', NULL, '2024-03-15 15:46:28', '2024-03-15 15:46:28');

-- --------------------------------------------------------

--
-- بنية الجدول `user_product`
--

CREATE TABLE `user_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perfume_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user_product`
--

INSERT INTO `user_product` (`id`, `perfume_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 1, NULL, NULL),
(3, 1, 2, 1, NULL, NULL),
(4, 1, 2, 1, NULL, NULL),
(6, 3, 3, 3, NULL, NULL),
(14, 4, 1, 1, NULL, NULL),
(20, 11, 1, 1, NULL, NULL),
(21, 8, 1, 1, NULL, NULL),
(22, 14, 5, 1, NULL, NULL),
(23, 59, 6, 1, NULL, NULL),
(24, 55, 6, 1, NULL, NULL),
(25, 312, 1, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commandeniche`
--
ALTER TABLE `commandeniche`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orientale`
--
ALTER TABLE `orientale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `perfumes`
--
ALTER TABLE `perfumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_product`
--
ALTER TABLE `user_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_product_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commandeniche`
--
ALTER TABLE `commandeniche`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orientale`
--
ALTER TABLE `orientale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perfumes`
--
ALTER TABLE `perfumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_product`
--
ALTER TABLE `user_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `user_product`
--
ALTER TABLE `user_product`
  ADD CONSTRAINT `user_product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 20 jan. 2022 à 00:57
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfa_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `affect_articales`
--

CREATE TABLE `affect_articales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_articale` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `affect_articales`
--

INSERT INTO `affect_articales` (`id`, `id_user`, `id_articale`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-06-22 07:42:33', '2021-06-22 07:42:33');

-- --------------------------------------------------------

--
-- Structure de la table `articales`
--

CREATE TABLE `articales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articales`
--

INSERT INTO `articales` (`id`, `file_name_id`, `title`, `description`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(1, '3_1_2.1 components-learning-card.pdf.pdf', 'react components', 'react components  with max', 3, 1, '2021-06-18 08:17:03', '2021-06-18 08:40:44'),
(2, '3_2_12.1 next-gen-js-summary.pdf.pdf', 'next gen js', 'next gen js with max', 3, 1, '2021-06-18 08:33:11', '2021-06-18 08:40:45'),
(3, '3_3_9.1 components.pdf.pdf', 'react components v2', 'react components v2 with max', 3, 1, '2021-06-18 08:35:13', '2021-06-18 08:40:47'),
(4, '3_4_Laravel.pdf', 'Laravel 8 tuto', 'Laravel 8  avec ayoub mansouri', 3, 0, '2021-06-22 07:39:44', '2021-06-22 07:39:44');

-- --------------------------------------------------------

--
-- Structure de la table `criteria`
--

CREATE TABLE `criteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `criteria_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `criteria`
--

INSERT INTO `criteria` (`id`, `id_user`, `criteria_desc`, `created_at`, `updated_at`) VALUES
(5, 2, 'critère 1', '2021-06-18 09:19:05', '2021-06-18 09:19:05'),
(6, 2, '-critère 2', '2021-06-18 09:19:11', '2021-06-18 09:19:11'),
(7, 2, '-critère 3', '2021-06-18 09:19:19', '2021-06-18 09:19:19');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_21_135618_create_articales_table', 1),
(5, '2021_05_24_001136_create_criteria_table', 1),
(6, '2021_05_26_223805_create_affect_articales_table', 1),
(7, '2021_05_27_002919_create_plannings_table', 1),
(8, '2021_06_07_160915_create_status_reviewers_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plannings`
--

CREATE TABLE `plannings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_doc` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date_palnning` date NOT NULL,
  `time_palnning` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plannings`
--

INSERT INTO `plannings` (`id`, `id_user`, `id_doc`, `title`, `desc`, `link`, `Date_palnning`, `time_palnning`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'workshop git/github', 'demain  il y aura un workshop à 6h', 'https://meet.google.com/sju-kytd-nqf', '2021-02-07', '18:00:00', '2021-06-22 07:45:38', '2021-06-22 07:45:38');

-- --------------------------------------------------------

--
-- Structure de la table `status_reviewers`
--

CREATE TABLE `status_reviewers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Rev` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Reviewer',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `First_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `First_name`, `Last_name`, `email`, `email_verified_at`, `date_of_birth`, `option`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rev', 'rev', 'pedivo2844@moxkid.com', '2021-06-17 07:57:21', '2000-02-08', 'Reviewer', '$2y$10$ryhpPiz.QKPc/.l0/rZvnugvf93wVqugvNPEbMtgUb5jNz8VdjavG', NULL, '2021-06-17 07:57:05', '2021-06-17 07:57:21'),
(2, 'editor', 'ic', 'pedivo2841@moxkid.com', '2021-06-18 07:50:16', '2000-02-08', 'Editor_in_Chief', '$2y$10$LJvSiq5vdQUoRneQNzLcZOjcBTOItlQFM/rMVRE1G6rrpxYe.2QzK', NULL, '2021-06-18 07:49:28', '2021-06-18 07:50:16'),
(3, 'ayoub', 'mansouri', 'pedivo2842@moxkid.com', '2021-06-18 08:16:00', '2000-02-08', 'Doctorant', '$2y$10$rzx/H3EiUFGp9ZcHpbPowuUGFyZAEvHBg26EqWJ/DKcxSSGbfi5Y2', NULL, '2021-06-18 08:15:39', '2021-06-18 08:16:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affect_articales`
--
ALTER TABLE `affect_articales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affect_articales_id_user_foreign` (`id_user`),
  ADD KEY `affect_articales_id_articale_foreign` (`id_articale`);

--
-- Index pour la table `articales`
--
ALTER TABLE `articales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articales_file_name_id_unique` (`file_name_id`),
  ADD KEY `articales_id_user_foreign` (`id_user`);

--
-- Index pour la table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_id_user_foreign` (`id_user`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `plannings`
--
ALTER TABLE `plannings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plannings_id_user_foreign` (`id_user`),
  ADD KEY `plannings_id_doc_foreign` (`id_doc`);

--
-- Index pour la table `status_reviewers`
--
ALTER TABLE `status_reviewers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_reviewers_id_rev_foreign` (`id_Rev`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `affect_articales`
--
ALTER TABLE `affect_articales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `articales`
--
ALTER TABLE `articales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `plannings`
--
ALTER TABLE `plannings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `status_reviewers`
--
ALTER TABLE `status_reviewers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affect_articales`
--
ALTER TABLE `affect_articales`
  ADD CONSTRAINT `affect_articales_id_articale_foreign` FOREIGN KEY (`id_articale`) REFERENCES `articales` (`id`),
  ADD CONSTRAINT `affect_articales_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `articales`
--
ALTER TABLE `articales`
  ADD CONSTRAINT `articales_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `plannings`
--
ALTER TABLE `plannings`
  ADD CONSTRAINT `plannings_id_doc_foreign` FOREIGN KEY (`id_doc`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `plannings_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `status_reviewers`
--
ALTER TABLE `status_reviewers`
  ADD CONSTRAINT `status_reviewers_id_rev_foreign` FOREIGN KEY (`id_Rev`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 10, 2023 at 05:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_blog_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2023_07_10_043828_create_posts', 1),
(18, '2023_07_10_043908_create_post_details', 1),
(19, '2023_07_10_043948_create_post_comments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `short_des` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `short_des`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Dignissimos expedita fuga ut vel quae velit et.', 'Corporis quia consequuntur enim incidunt eveniet aliquid aliquam quo. Perspiciatis et sequi deserunt sit aut.', 'blog3.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(2, 4, 'Repudiandae provident dolorem qui soluta et.', 'Eligendi autem sit molestiae nostrum dolore. Consectetur provident aliquam natus quos. Hic est blanditiis nesciunt fugit.', 'blog2.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(3, 4, 'Quam delectus doloremque dolor qui omnis enim ipsum.', 'Qui asperiores unde esse ratione sed cupiditate. Ratione sed vero corrupti rem consequuntur. Doloribus est hic aspernatur vero earum. Omnis quod quia sed omnis.', 'blog1.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(4, 4, 'Fugiat est at ut accusamus temporibus magnam maxime.', 'Omnis est quis maxime. Perspiciatis ratione aut dicta debitis doloremque qui quasi. Autem est ab aliquam dolores eos quis sunt. Sequi similique qui cupiditate cum.', 'blog3.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(5, 4, 'Aut vero et dolor quam odio quas.', 'Omnis exercitationem accusantium officiis tempora. Aut eum illum quos et doloremque ullam nobis. Tempora facere quas repudiandae occaecati sapiente.', 'blog3.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(6, 4, 'Consequatur dolores recusandae dolore.', 'Sint et et voluptatem. Laborum modi eaque quas ut esse eum est est. Et qui sapiente voluptatem.', 'blog3.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(7, 4, 'Quaerat et eaque sint illum et quis.', 'Sed cum ratione in et alias totam quas magnam. Architecto iusto ut alias magni quam magnam. Quisquam maxime numquam eum minima dolorem. Repellat error autem omnis molestiae quod excepturi dolores ducimus.', 'blog3.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(8, 4, 'Esse officia corporis id impedit.', 'In qui ut impedit. Exercitationem et quia eligendi assumenda. Possimus eaque nemo enim id. In autem eveniet quia itaque saepe dolorem aliquid odit.', 'blog1.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(9, 4, 'Sapiente temporibus fuga beatae porro sunt.', 'Quasi facere aspernatur distinctio ut dolorem tempore voluptas. Quia repudiandae quam rerum omnis et hic. Similique autem vel incidunt est veritatis. Voluptas ab repellat adipisci magnam odio similique dignissimos. Aliquid ducimus ut et quo.', 'blog2.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53'),
(10, 4, 'Quis voluptatem sequi quasi.', 'Ipsum adipisci consequatur voluptatem consequatur dolore doloribus voluptatem. Ipsa quae omnis minus esse ut minima aut. Eveniet quo reprehenderit quia consequatur vitae.', 'blog3.jpg', '2023-07-10 03:24:53', '2023-07-10 03:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_detail_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `post_detail_id`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 10, 10, 'Bart Bernhard', 'Sed deleniti minima magni deserunt maxime sed.', '2023-07-10 03:36:28', '2023-07-10 03:36:28'),
(2, 10, 10, 'Dr. Hilbert Huel III', 'Officia aut voluptatem sunt et dolores.', '2023-07-10 03:36:28', '2023-07-10 03:36:28'),
(3, 10, 10, 'Tamia Hayes', 'Et voluptatem a iure rerum id odit necessitatibus fuga.', '2023-07-10 03:36:28', '2023-07-10 03:36:28'),
(4, 10, 10, 'Lauren Parker IV', 'Ea magni et non sed qui eveniet nobis tenetur.', '2023-07-10 03:36:28', '2023-07-10 03:36:28'),
(5, 9, 9, 'Mrs. Julianne Konopelski', 'Provident voluptatem dolores amet hic exercitationem.', '2023-07-10 03:36:28', '2023-07-10 03:36:28'),
(6, 9, 9, 'saif', 'comment', '2023-07-10 04:11:51', '2023-07-10 04:11:51'),
(7, 3, 3, 'MD. Kader', 'Elementum nec laoreet fames maecenas rutrum gravida. Curabitur vulputate fringilla arcu taciti euismod.', '2023-07-10 08:06:00', '2023-07-10 08:06:00'),
(8, 3, 3, 'MD. Anwar', 'Elementum nec laoreet fames maecenas rutrum gravida. Curabitur vulputate fringilla arcu taciti euismod.', '2023-07-10 08:08:12', '2023-07-10 08:08:12'),
(9, 1, 1, 'MD. Anwar Sayeed', 'Imperdiet dictum mus nec montes sollicitudin natoque. Arcu efficitur aenean euismod mus venenatis ut convallis morbi sagittis.', '2023-07-10 09:30:45', '2023-07-10 09:30:45'),
(10, 1, 1, 'MD. Sayeed', 'Diam sem ultricies dictumst mattis dui est sagittis nunc.', '2023-07-10 09:35:37', '2023-07-10 09:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `post_details`
--

CREATE TABLE `post_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `des` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_details`
--

INSERT INTO `post_details` (`id`, `post_id`, `des`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(2, 2, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(3, 3, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(4, 4, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(5, 5, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(6, 6, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(7, 7, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(8, 8, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(9, 9, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00'),
(10, 10, 'Mattis class sollicitudin nunc si praesent torquent sodales commodo. A pretium eleifend maximus mi primis ex. Id a nullam consectetuer cursus ligula blandit eget risus nunc feugiat. Sem ex mauris nascetur efficitur senectus nec libero bibendum orci ut.\r\n\r\nFusce proin etiam dictumst facilisis aliquet pharetra senectus magnis. Dictumst nunc facilisis etiam himenaeos phasellus rhoncus facilisi. Pede dictumst mauris tellus lacus erat viverra ullamcorper rhoncus accumsan inceptos phasellus. Posuere natoque sed libero justo aliquet semper. Aenean proin fermentum penatibus eget sed. Est ad lobortis ac semper netus. Dignissim maecenas sollicitudin vulputate nibh augue montes.\r\n\r\nFaucibus tristique hendrerit cubilia quisque pede. Dictum dapibus nibh habitasse consectetuer facilisis turpis ante primis suscipit fames. Sollicitudin mus lacus natoque vivamus dis libero class turpis. Quam massa suscipit ad amet nam. Letius hac curabitur feugiat sollicitudin urna tortor facilisi leo. Venenatis potenti diam sodales magna tristique libero quis.\r\n\r\nSociosqu sed id condimentum massa senectus nisl. Condimentum placerat pede nisl ex rhoncus mus congue felis. Facilisi etiam tortor pharetra metus fermentum class senectus nisl lacus arcu. Habitasse nulla est euismod hendrerit vitae nostra non. Taciti eleifend nam eu lacus orci porta. Ultricies placerat sapien non vehicula platea lacus orci ante aliquet. Inceptos leo odio neque ligula volutpat.', '2023-07-10 03:33:00', '2023-07-10 03:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_role` enum('admin','user') NOT NULL DEFAULT 'user',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Shawn Gerhold I', 'user', 'aurelia.lind@example.net', '2023-07-10 02:08:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AWFDpR5HuX', '2023-07-10 02:08:09', '2023-07-10 02:08:09'),
(2, 'Jolie Bradtke', 'user', 'paucek.breana@example.org', '2023-07-10 02:08:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VIZtN9R6PJ', '2023-07-10 02:08:09', '2023-07-10 02:08:09'),
(3, 'Prof. Verner Thiel', 'user', 'milo50@example.com', '2023-07-10 02:08:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pfd6akwp86', '2023-07-10 02:08:09', '2023-07-10 02:08:09'),
(4, 'MD Anwar', 'admin', 'anwar.saeed656@gmail.com', '2023-07-10 02:08:10', '$2y$10$4uT44dmOsDrDv3ErOqsanuropz/GJKpceOA44i9MiA6xVzdSW6mGK', 'Rxk4Ydv8jA', '2023-07-10 02:08:10', '2023-07-10 02:08:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_post_detail_id_foreign` (`post_detail_id`);

--
-- Indexes for table `post_details`
--
ALTER TABLE `post_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_details_post_id_foreign` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_details`
--
ALTER TABLE `post_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_detail_id_foreign` FOREIGN KEY (`post_detail_id`) REFERENCES `post_details` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `post_details`
--
ALTER TABLE `post_details`
  ADD CONSTRAINT `post_details_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

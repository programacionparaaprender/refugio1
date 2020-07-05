-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-03-2018 a las 05:11:48
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `refugio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion_persona`
--

CREATE TABLE `adopcion_persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `email` varchar(254) NOT NULL,
  `domicilio` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adopcion_persona`
--

INSERT INTO `adopcion_persona` (`id`, `nombre`, `apellido`, `edad`, `telefono`, `email`, `domicilio`) VALUES
(1, 'percy', 'correa', 67, '02813456879', 'percy@gmail.com', 'Barcelona'),
(2, 'luis', 'correa', 27, '02811256789', 'alberto13711@gmail.com', 'Barcelona, Venezuela'),
(3, 'percy', 'correa', 67, '02813456897', 'percy@gmail.com', 'Barcelona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion_solicitud`
--

CREATE TABLE `adopcion_solicitud` (
  `id` int(11) NOT NULL,
  `numero_mascotas` int(11) NOT NULL,
  `razones` longtext NOT NULL,
  `persona_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `adopcion_solicitud`
--

INSERT INTO `adopcion_solicitud` (`id`, `numero_mascotas`, `razones`, `persona_id`) VALUES
(1, 2, 'Muchas razones', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add persona', 7, 'add_persona'),
(20, 'Can change persona', 7, 'change_persona'),
(21, 'Can delete persona', 7, 'delete_persona'),
(22, 'Can add mascota', 8, 'add_mascota'),
(23, 'Can change mascota', 8, 'change_mascota'),
(24, 'Can delete mascota', 8, 'delete_mascota'),
(25, 'Can add vacuna', 9, 'add_vacuna'),
(26, 'Can change vacuna', 9, 'change_vacuna'),
(27, 'Can delete vacuna', 9, 'delete_vacuna'),
(28, 'Can add solicitud', 10, 'add_solicitud'),
(29, 'Can change solicitud', 10, 'change_solicitud'),
(30, 'Can delete solicitud', 10, 'delete_solicitud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$1THBZfbVUASf$3QXA8+kODE/RuihS7e9Y2qauU6+eeMVppD39xrkY8BI=', '2018-03-05 21:20:23.433702', 1, 'admin', '', '', 'alberto13711@gmail.com', 1, 1, '2018-03-04 14:47:04.644370'),
(2, 'pbkdf2_sha256$36000$imGH89qlNEs4$x+PHhbQUEWGPVd3pOiOVcijZYnS7mDG5/isBkP/wpPM=', '2018-03-05 16:37:40.427579', 0, 'mario', 'mario', 'mantilla', 'mario@gmail.com', 0, 1, '2018-03-05 14:45:33.189650'),
(3, 'pbkdf2_sha256$36000$tpcXsQtUNUue$uDkkonMwelZG0a4e++0r8hOJM0aJ7eCwMk39PITUNJc=', NULL, 0, 'maria', 'maria', 'virginia', 'maria@gmail.com', 0, 1, '2018-03-05 14:55:52.357800'),
(4, 'pbkdf2_sha256$36000$2tkxnzslmZOe$o9mJfE3QXW95ZDNMMDHM2Hx+cD91ZmAsozEvVvnP/HM=', NULL, 0, 'libreria', 'Libreria', 'Omega', 'libreriaomega3@gmail.com', 0, 1, '2018-03-05 19:15:25.097839');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-03-04 14:48:17.200648', '1', 'percy correa', 1, '[{"added": {}}]', 7, 1),
(2, '2018-03-04 14:48:54.237681', '2', 'luis correa', 1, '[{"added": {}}]', 7, 1),
(3, '2018-03-04 14:49:12.649474', '1', 'Vacuna 1', 1, '[{"added": {}}]', 9, 1),
(4, '2018-03-04 14:49:17.983435', '2', 'Vacuna 2', 1, '[{"added": {}}]', 9, 1),
(5, '2018-03-04 14:49:24.473087', '3', 'Vacuna 3', 1, '[{"added": {}}]', 9, 1),
(6, '2018-03-04 14:50:00.549239', '1', 'Maria su dueño es: luis correa', 1, '[{"added": {}}]', 8, 1),
(7, '2018-03-04 14:50:29.094686', '2', 'Jose su dueño es: percy correa', 1, '[{"added": {}}]', 8, 1),
(8, '2018-03-04 17:00:59.721069', '4', 'Pepe su dueño es: percy correa', 1, '[{"added": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adopcion', 'persona'),
(10, 'adopcion', 'solicitud'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'mascota', 'mascota'),
(9, 'mascota', 'vacuna'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-03-04 14:43:20.538873'),
(2, 'auth', '0001_initial', '2018-03-04 14:43:40.966296'),
(3, 'admin', '0001_initial', '2018-03-04 14:43:53.764209'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-03-04 14:43:54.217180'),
(5, 'adopcion', '0001_initial', '2018-03-04 14:43:55.691873'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-03-04 14:44:00.652556'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-03-04 14:44:05.098156'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-03-04 14:44:07.116559'),
(9, 'auth', '0004_alter_user_username_opts', '2018-03-04 14:44:07.256934'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-03-04 14:44:08.466499'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-03-04 14:44:08.531419'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-03-04 14:44:08.637832'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-03-04 14:44:18.183676'),
(14, 'mascota', '0001_initial', '2018-03-04 14:44:27.754185'),
(15, 'sessions', '0001_initial', '2018-03-04 14:44:29.595281'),
(16, 'adopcion', '0002_solicitud', '2018-03-04 20:33:59.536277');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2wno03ceuesd30rb5w0lm62116nys4d6', 'NjkwZmExNWZkYWM5ZjU5ODAzNDRmZTBlY2NhNjRkMGYwMTRkNzE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDFhMjQ1MGYzMmM1NzkzNTcwMjA3YWVkMTE5YjNjNDQzNjJjM2QyIn0=', '2018-03-18 14:47:27.546088'),
('6ampqufe7cqsqvyvckmz3kcy52b5thy8', 'NjkwZmExNWZkYWM5ZjU5ODAzNDRmZTBlY2NhNjRkMGYwMTRkNzE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDFhMjQ1MGYzMmM1NzkzNTcwMjA3YWVkMTE5YjNjNDQzNjJjM2QyIn0=', '2018-03-19 19:26:03.191649'),
('vskd6816rg5mozkxm0pl58pih51v7hub', 'NjkwZmExNWZkYWM5ZjU5ODAzNDRmZTBlY2NhNjRkMGYwMTRkNzE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDFhMjQ1MGYzMmM1NzkzNTcwMjA3YWVkMTE5YjNjNDQzNjJjM2QyIn0=', '2018-03-18 16:23:53.426812'),
('xh4aarewjx1n5nbrgs58jfza414qcmu5', 'NjkwZmExNWZkYWM5ZjU5ODAzNDRmZTBlY2NhNjRkMGYwMTRkNzE2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDFhMjQ1MGYzMmM1NzkzNTcwMjA3YWVkMTE5YjNjNDQzNjJjM2QyIn0=', '2018-03-19 21:20:23.699454');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota_mascota`
--

CREATE TABLE `mascota_mascota` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `edad_aproximada` int(11) NOT NULL,
  `fecha_rescate` date NOT NULL,
  `persona_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mascota_mascota`
--

INSERT INTO `mascota_mascota` (`id`, `nombre`, `sexo`, `edad_aproximada`, `fecha_rescate`, `persona_id`) VALUES
(1, 'Maria', 'hembra', 2, '2018-02-16', 2),
(2, 'Jose', 'macho', 6, '2018-02-23', 1),
(4, 'Pepe', 'macho', 5, '2018-02-13', 1),
(5, 'Mario', 'macho', 3, '2017-02-03', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota_mascota_vacuna`
--

CREATE TABLE `mascota_mascota_vacuna` (
  `id` int(11) NOT NULL,
  `mascota_id` int(11) NOT NULL,
  `vacuna_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mascota_mascota_vacuna`
--

INSERT INTO `mascota_mascota_vacuna` (`id`, `mascota_id`, `vacuna_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(8, 4, 1),
(9, 4, 2),
(10, 4, 3),
(11, 5, 1),
(12, 5, 2),
(13, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota_vacuna`
--

CREATE TABLE `mascota_vacuna` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mascota_vacuna`
--

INSERT INTO `mascota_vacuna` (`id`, `nombre`) VALUES
(1, 'Vacuna 1'),
(2, 'Vacuna 2'),
(3, 'Vacuna 3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adopcion_persona`
--
ALTER TABLE `adopcion_persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `adopcion_solicitud`
--
ALTER TABLE `adopcion_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adopcion_solicitud_persona_id_3618c7a5_fk_adopcion_persona_id` (`persona_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `mascota_mascota`
--
ALTER TABLE `mascota_mascota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mascota_mascota_persona_id_b662f6c9_fk_adopcion_persona_id` (`persona_id`);

--
-- Indices de la tabla `mascota_mascota_vacuna`
--
ALTER TABLE `mascota_mascota_vacuna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mascota_mascota_vacuna_mascota_id_vacuna_id_346591c7_uniq` (`mascota_id`,`vacuna_id`),
  ADD KEY `mascota_mascota_vacuna_vacuna_id_a8a1dd12_fk_mascota_vacuna_id` (`vacuna_id`);

--
-- Indices de la tabla `mascota_vacuna`
--
ALTER TABLE `mascota_vacuna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adopcion_persona`
--
ALTER TABLE `adopcion_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `adopcion_solicitud`
--
ALTER TABLE `adopcion_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `mascota_mascota`
--
ALTER TABLE `mascota_mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `mascota_mascota_vacuna`
--
ALTER TABLE `mascota_mascota_vacuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `mascota_vacuna`
--
ALTER TABLE `mascota_vacuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adopcion_solicitud`
--
ALTER TABLE `adopcion_solicitud`
  ADD CONSTRAINT `adopcion_solicitud_persona_id_3618c7a5_fk_adopcion_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `adopcion_persona` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `mascota_mascota`
--
ALTER TABLE `mascota_mascota`
  ADD CONSTRAINT `mascota_mascota_persona_id_b662f6c9_fk_adopcion_persona_id` FOREIGN KEY (`persona_id`) REFERENCES `adopcion_persona` (`id`);

--
-- Filtros para la tabla `mascota_mascota_vacuna`
--
ALTER TABLE `mascota_mascota_vacuna`
  ADD CONSTRAINT `mascota_mascota_vacuna_mascota_id_b0fc0568_fk_mascota_mascota_id` FOREIGN KEY (`mascota_id`) REFERENCES `mascota_mascota` (`id`),
  ADD CONSTRAINT `mascota_mascota_vacuna_vacuna_id_a8a1dd12_fk_mascota_vacuna_id` FOREIGN KEY (`vacuna_id`) REFERENCES `mascota_vacuna` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

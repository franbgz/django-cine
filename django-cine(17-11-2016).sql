-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.18-MariaDB-1~jessie - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             9.4.0.5127
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para django-cine
DROP DATABASE IF EXISTS `django-cine`;
CREATE DATABASE IF NOT EXISTS `django-cine` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `django-cine`;

-- Volcando estructura para tabla django-cine.auth_group
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.auth_group: ~0 rows (aproximadamente)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.auth_group_permissions
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.auth_group_permissions: ~0 rows (aproximadamente)
DELETE FROM `auth_group_permissions`;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.auth_permission
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.auth_permission: ~30 rows (aproximadamente)
DELETE FROM `auth_permission`;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add group', 2, 'add_group'),
	(5, 'Can change group', 2, 'change_group'),
	(6, 'Can delete group', 2, 'delete_group'),
	(7, 'Can add permission', 3, 'add_permission'),
	(8, 'Can change permission', 3, 'change_permission'),
	(9, 'Can delete permission', 3, 'delete_permission'),
	(10, 'Can add user', 4, 'add_user'),
	(11, 'Can change user', 4, 'change_user'),
	(12, 'Can delete user', 4, 'delete_user'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add actor', 7, 'add_actor'),
	(20, 'Can change actor', 7, 'change_actor'),
	(21, 'Can delete actor', 7, 'delete_actor'),
	(22, 'Can add pelicula', 8, 'add_pelicula'),
	(23, 'Can change pelicula', 8, 'change_pelicula'),
	(24, 'Can delete pelicula', 8, 'delete_pelicula'),
	(25, 'Can add proyeccion', 9, 'add_proyeccion'),
	(26, 'Can change proyeccion', 9, 'change_proyeccion'),
	(27, 'Can delete proyeccion', 9, 'delete_proyeccion'),
	(28, 'Can add sala', 10, 'add_sala'),
	(29, 'Can change sala', 10, 'change_sala'),
	(30, 'Can delete sala', 10, 'delete_sala');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.auth_user
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.auth_user: ~0 rows (aproximadamente)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$30000$vnqtBkZC9lnd$57+kEm0cTjczQA8EdtD+ooZW9QHPSqw7Dq+QjbX+eJs=', '2016-11-06 14:21:39.359316', 1, 'admin', '', '', '', 1, 1, '2016-10-30 12:19:51.727309');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.auth_user_groups
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.auth_user_groups: ~0 rows (aproximadamente)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.auth_user_user_permissions
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.auth_user_user_permissions: ~0 rows (aproximadamente)
DELETE FROM `auth_user_user_permissions`;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.cine_actor
DROP TABLE IF EXISTS `cine_actor`;
CREATE TABLE IF NOT EXISTS `cine_actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cine_actor_nombre_13c3784f_uniq` (`nombre`,`apellidos`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.cine_actor: ~30 rows (aproximadamente)
DELETE FROM `cine_actor`;
/*!40000 ALTER TABLE `cine_actor` DISABLE KEYS */;
INSERT INTO `cine_actor` (`id`, `nombre`, `apellidos`) VALUES
	(14, 'Aaron', 'Eckhart'),
	(16, 'Anna', 'Gunn'),
	(7, 'Antonio', 'de la Torre'),
	(3, 'Ben', 'Foster'),
	(27, 'Benedict', 'Cumberbatch'),
	(25, 'Brenton', 'Thwaites'),
	(28, 'Chiwetel', 'Ejiofor'),
	(6, 'Daniel', 'Wu'),
	(4, 'Dominic', 'Cooper'),
	(24, 'Geoffrey', 'Rush'),
	(20, 'Hiroyuki', 'Sanada'),
	(17, 'Jake', 'Gyllenhaal'),
	(22, 'Javier', 'Bardem'),
	(9, 'Javier', 'Pereira'),
	(21, 'Johnny', 'Depp'),
	(26, 'Kaya', 'Scodelario'),
	(15, 'Laura', 'Linney'),
	(10, 'Luis', 'Zahera'),
	(30, 'Mads', 'Mikkelsen'),
	(12, 'Maria', 'Ballesteros'),
	(11, 'Mónica', 'López'),
	(23, 'Orlando', 'Bloom'),
	(2, 'Paula', 'Patton'),
	(29, 'Rachel', 'McAdams'),
	(18, 'Rebecca', 'Ferguson'),
	(8, 'Roberto', 'Álamo'),
	(19, 'Ryan', 'Reynolds'),
	(31, 'Tilda', 'Swinton'),
	(5, 'Toby', 'Kebbel'),
	(13, 'Tom', 'Hanks'),
	(1, 'Travis', 'Fimmel');
/*!40000 ALTER TABLE `cine_actor` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.cine_pelicula
DROP TABLE IF EXISTS `cine_pelicula`;
CREATE TABLE IF NOT EXISTS `cine_pelicula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(75) NOT NULL,
  `nombre_interno` varchar(75) NOT NULL,
  `fecha_estreno` date NOT NULL,
  `genero` varchar(150) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `cartel` varchar(100) NOT NULL,
  `enlace` varchar(200) NOT NULL,
  `director` varchar(75),
  `desarrolladora` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.cine_pelicula: ~5 rows (aproximadamente)
DELETE FROM `cine_pelicula`;
/*!40000 ALTER TABLE `cine_pelicula` DISABLE KEYS */;
INSERT INTO `cine_pelicula` (`id`, `titulo`, `nombre_interno`, `fecha_estreno`, `genero`, `sinopsis`, `cartel`, `enlace`, `director`, `desarrolladora`) VALUES
	(2, 'Warcraft: El Origen', 'warcraft', '2016-06-03', 'Fantasia, Aventuras', 'El pacífico reino de Azeroth, compuesto en su mayoría por humanos, pero también por enanos, elfos y otras criaturas míticas, está a punto de entrar en guerra. La estabilidad de este reino está sacudida por la llegada repentina de unos terribles invasores: orcos guerreros del mundo de Draenor, que han dejado su destruido mundo para colonizar otro. Al abrirse un portal que conecta ambos mundos, un ejército se enfrenta a la destrucción, y el otro, a la extinción. Dos héroes, uno en cada bando, están a punto de chocar en un enfrentamiento que cambiará el destino de su familia, su pueblo y su hogar.', 'images/warcraft_3WjQvoB.jpg', 'https://www.youtube.com/embed/fuGRN3dYHKg', 'Duncan Jones', 'Universal Pictures'),
	(3, 'Que Dios nos perdone', 'dios_nos_perdone', '2016-10-28', 'Thriller, Policíaco', 'Madrid, verano de 2011. Crisis económica, Movimiento 15-M y millón y medio de peregrinos que esperan la llegada del Papa conviven en un Madrid más caluroso, violento y caótico que nunca. En este contexto, los inspectores de policía Alfaro (Roberto Álamo) y Velarde (Antonio de la Torre) deben encontrar al que parece ser un asesino en serie cuanto antes y sin hacer ruido. Esta caza contrarreloj les hará darse cuenta de algo que nunca habían pensado: ninguno de los dos es tan diferente del asesino.', 'images/que_dios_nos_perdone-230971747-large.jpg', 'https://www.youtube.com/embed/4IjSSM8cg6I', 'Rodrigo Sorogoyen', 'Tornasol Films, Atresmedia Cine'),
	(4, 'Sully', 'sully', '2016-11-04', 'Drama', 'Chesley “Sully” Sullenberger es un piloto comercial que en 2009 se convirtió en un héroe cuando, al poco de despegar, su avión se averió y el comandante logró realizar un aterrizaje forzoso del aparato en pleno río Hudson, en Nueva York, con 155 pasajeros a bordo.', 'images/sully-547205478-large.jpg', 'https://www.youtube.com/embed/w9bSO1hPq7w', 'Clint Eastwood', 'Warner Bros. Pictures'),
	(5, 'Life (Vida)', 'life', '2017-05-19', 'Ciencia ficcón Thriller', 'Life narra la historia de los seis miembros de la tripulación de la Estación Espacial Internacional que están a punto de lograr uno de los descubrimientos más importantes en la historia humana: la primera evidencia de vida extraterrestre en Marte. A medida que el equipo comienza a investigar y sus métodos tienen consecuencias inesperadas, la forma viviente demostrará ser más inteligente de lo que cualquiera esperaba.', 'images/life.jpg', 'https://www.youtube.com/embed/y9hrcbwmYKI', 'Daniel Espinosa', 'Skydance Productions'),
	(6, 'Piratas del Caribe: La venganza de Salazar', 'piratas_caribe_venganza_salazar', '2017-05-26', 'Aventuras, fantasia', 'El capitán Jack Sparrow se enfrentará a un grupo de piratas-fantasma comandados por una de sus viejas némesis, el terrorífico capitán Salazar, recién escapado del Triángulo de las Bermudas. La única posibilidad de Sparrow para salir con vida es encontrar el legendario Tridente de Poseidón, un poderoso artefacto que le da a su poseedor el control de los mares.', 'images/piratas.jpg', 'https://www.youtube.com/embed/WLgYWyOpkDc', 'Joachim Rønning, Espen Sandberg', 'Walt Disney Pictures'),
	(7, 'Dr. Strange (Doctor Extraño)', 'dr_strange', '2016-10-28', 'Fantasia, accion, comedia', 'La vida del Dr. Stephen Strange cambia para siempre tras un accidente automovilístico que le deja muy malheridas sus manos. Cuando la medicina tradicional falla, se ve obligado a buscar esperanza y una cura en un lugar impensable: una comunidad aislada en Nepal llamada Kamar-Taj. Rápidamente descubre que éste no es sólo un centro de recuperación, sino también la primera línea de una batalla en contra de fuerzas oscuras y ocultas empeñadas en destruir nuestra realidad. En poco tiempo, Strange, armado con sus poderes mágicos recientemente adquiridos, se ve obligado a elegir entre volver a su antigua vida de riqueza y prestigio o dejarlo todo, para defender el mundo como el mago más poderoso del planeta. Adaptación del cómic creado por Stan Lee y Steve Ditko.', 'images/doctor_strange.jpg', 'https://www.youtube.com/embed/uM5_HSsYadE', 'Scott Derrickson', 'Marvel Studios');
/*!40000 ALTER TABLE `cine_pelicula` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.cine_pelicula_actores
DROP TABLE IF EXISTS `cine_pelicula_actores`;
CREATE TABLE IF NOT EXISTS `cine_pelicula_actores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelicula_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cine_pelicula_actores_pelicula_id_a996e267_uniq` (`pelicula_id`,`actor_id`),
  KEY `cine_pelicula_actores_actor_id_b4096c02_fk_cine_actor_id` (`actor_id`),
  CONSTRAINT `cine_pelicula_actores_actor_id_b4096c02_fk_cine_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `cine_actor` (`id`),
  CONSTRAINT `cine_pelicula_actores_pelicula_id_1a0bdf0a_fk_cine_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `cine_pelicula` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.cine_pelicula_actores: ~31 rows (aproximadamente)
DELETE FROM `cine_pelicula_actores`;
/*!40000 ALTER TABLE `cine_pelicula_actores` DISABLE KEYS */;
INSERT INTO `cine_pelicula_actores` (`id`, `pelicula_id`, `actor_id`) VALUES
	(7, 2, 1),
	(8, 2, 2),
	(9, 2, 3),
	(10, 2, 4),
	(11, 2, 5),
	(12, 2, 6),
	(13, 3, 7),
	(14, 3, 8),
	(15, 3, 9),
	(16, 3, 10),
	(17, 3, 11),
	(18, 3, 12),
	(20, 4, 13),
	(21, 4, 14),
	(22, 4, 15),
	(19, 4, 16),
	(23, 5, 17),
	(24, 5, 18),
	(25, 5, 19),
	(26, 5, 20),
	(27, 6, 21),
	(28, 6, 22),
	(29, 6, 23),
	(30, 6, 24),
	(31, 6, 25),
	(32, 6, 26),
	(33, 7, 27),
	(34, 7, 28),
	(35, 7, 29),
	(36, 7, 30),
	(37, 7, 31);
/*!40000 ALTER TABLE `cine_pelicula_actores` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.cine_proyeccion
DROP TABLE IF EXISTS `cine_proyeccion`;
CREATE TABLE IF NOT EXISTS `cine_proyeccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time(6) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `sala_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cine_proyeccion_pelicula_id_4c557afc_fk_cine_pelicula_id` (`pelicula_id`),
  KEY `cine_proyeccion_cc2cf539` (`sala_id`),
  CONSTRAINT `cine_proyeccion_pelicula_id_4c557afc_fk_cine_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `cine_pelicula` (`id`),
  CONSTRAINT `cine_proyeccion_sala_id_b6bc4316_fk_cine_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `cine_sala` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.cine_proyeccion: ~4 rows (aproximadamente)
DELETE FROM `cine_proyeccion`;
/*!40000 ALTER TABLE `cine_proyeccion` DISABLE KEYS */;
INSERT INTO `cine_proyeccion` (`id`, `hora`, `pelicula_id`, `sala_id`) VALUES
	(1, '18:00:00.000000', 3, 1),
	(2, '20:35:00.000000', 4, 1),
	(3, '22:50:00.000000', 7, 1),
	(4, '18:15:00.000000', 7, 2),
	(5, '20:50:00.000000', 3, 2);
/*!40000 ALTER TABLE `cine_proyeccion` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.cine_sala
DROP TABLE IF EXISTS `cine_sala`;
CREATE TABLE IF NOT EXISTS `cine_sala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `aforo_max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.cine_sala: ~0 rows (aproximadamente)
DELETE FROM `cine_sala`;
/*!40000 ALTER TABLE `cine_sala` DISABLE KEYS */;
INSERT INTO `cine_sala` (`id`, `numero`, `tipo`, `aforo_max`) VALUES
	(1, 1, '3D', 150),
	(2, 2, 'IMAX', 120);
/*!40000 ALTER TABLE `cine_sala` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.django_admin_log
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.django_admin_log: ~46 rows (aproximadamente)
DELETE FROM `django_admin_log`;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2016-10-30 14:26:56.885055', '1', 'Travis Fimmel', 1, '[{"added": {}}]', 7, 1),
	(2, '2016-10-30 14:27:06.598881', '2', 'Paula Patton', 1, '[{"added": {}}]', 7, 1),
	(3, '2016-10-30 14:27:54.538463', '3', 'Ben Foster', 1, '[{"added": {}}]', 7, 1),
	(4, '2016-10-30 14:28:05.298995', '4', 'Dominic Cooper', 1, '[{"added": {}}]', 7, 1),
	(5, '2016-10-30 14:32:30.938827', '5', 'Toby Kebbel', 1, '[{"added": {}}]', 7, 1),
	(6, '2016-10-30 14:32:45.971775', '6', 'Daniel Wu', 1, '[{"added": {}}]', 7, 1),
	(7, '2016-10-30 14:36:18.471619', '1', 'Warcraft: El Origen', 1, '[{"added": {}}]', 8, 1),
	(8, '2016-10-30 14:56:36.172210', '1', '1', 1, '[{"added": {}}]', 10, 1),
	(9, '2016-10-30 14:57:07.268334', '1', '1 - Warcraft: El Origen (17:30:00)', 1, '[{"added": {}}]', 9, 1),
	(10, '2016-10-30 14:58:28.341800', '1', 'Warcraft: El Origen', 3, '', 8, 1),
	(11, '2016-10-30 15:00:26.563509', '2', 'Warcraft: El Origen', 1, '[{"added": {}}]', 8, 1),
	(12, '2016-10-30 18:13:32.755259', '2', 'Warcraft: El Origen', 2, '[{"changed": {"fields": ["desarrolladora"]}}]', 8, 1),
	(13, '2016-10-30 19:31:34.553471', '2', 'Warcraft: El Origen', 2, '[{"changed": {"fields": ["enlace"]}}]', 8, 1),
	(14, '2016-10-31 12:38:04.586033', '7', 'Antonio de la Torre', 1, '[{"added": {}}]', 7, 1),
	(15, '2016-10-31 12:38:18.702084', '8', 'Roberto Álamo', 1, '[{"added": {}}]', 7, 1),
	(16, '2016-10-31 12:38:27.150340', '9', 'Javier Pereira', 1, '[{"added": {}}]', 7, 1),
	(17, '2016-10-31 12:38:42.113493', '10', 'Luis Zahera', 1, '[{"added": {}}]', 7, 1),
	(18, '2016-10-31 12:38:55.394939', '11', 'Mónica López', 1, '[{"added": {}}]', 7, 1),
	(19, '2016-10-31 12:39:08.274093', '12', 'Maria Ballesteros', 1, '[{"added": {}}]', 7, 1),
	(20, '2016-10-31 12:43:33.907325', '3', 'Que Dios nos perdone', 1, '[{"added": {}}]', 8, 1),
	(21, '2016-10-31 12:44:34.174209', '13', 'Tom Hanks', 1, '[{"added": {}}]', 7, 1),
	(22, '2016-10-31 12:44:48.448038', '14', 'Aaron Eckhart', 1, '[{"added": {}}]', 7, 1),
	(23, '2016-10-31 12:45:01.501589', '15', 'Laura Linney', 1, '[{"added": {}}]', 7, 1),
	(24, '2016-10-31 12:45:09.876968', '16', 'Anna Gunn', 1, '[{"added": {}}]', 7, 1),
	(25, '2016-10-31 12:47:31.706835', '4', 'Sully', 1, '[{"added": {}}]', 8, 1),
	(26, '2016-11-05 17:17:48.628812', '17', 'Jake Gyllenhaal', 1, '[{"added": {}}]', 7, 1),
	(27, '2016-11-05 17:18:00.390907', '18', 'Rebecca Ferguson', 1, '[{"added": {}}]', 7, 1),
	(28, '2016-11-05 17:18:19.792850', '19', 'Ryan Reynolds', 1, '[{"added": {}}]', 7, 1),
	(29, '2016-11-05 17:18:32.248616', '20', 'Hiroyuki Sanada', 1, '[{"added": {}}]', 7, 1),
	(30, '2016-11-05 17:27:05.149873', '5', 'Life', 1, '[{"added": {}}]', 8, 1),
	(31, '2016-11-05 17:30:55.211552', '5', 'Life (Vida)', 2, '[{"changed": {"fields": ["titulo", "enlace"]}}]', 8, 1),
	(32, '2016-11-05 17:33:29.376193', '21', 'Johnny Depp', 1, '[{"added": {}}]', 7, 1),
	(33, '2016-11-05 17:33:42.763773', '22', 'Javier Bardem', 1, '[{"added": {}}]', 7, 1),
	(34, '2016-11-05 17:34:06.449020', '23', 'Orlando Bloom', 1, '[{"added": {}}]', 7, 1),
	(35, '2016-11-05 17:34:26.237049', '24', 'Geoffrey Rush', 1, '[{"added": {}}]', 7, 1),
	(36, '2016-11-05 17:34:45.403766', '25', 'Brenton Thwaites', 1, '[{"added": {}}]', 7, 1),
	(37, '2016-11-05 17:34:57.482149', '26', 'Kaya Scodelario', 1, '[{"added": {}}]', 7, 1),
	(38, '2016-11-05 17:40:06.959931', '6', 'Piratas del Caribe: La venganza de Salazar', 1, '[{"added": {}}]', 8, 1),
	(39, '2016-11-05 17:59:40.533178', '1', '1 - Que Dios nos perdone (16:00:00)', 1, '[{"added": {}}]', 9, 1),
	(40, '2016-11-05 18:00:08.774399', '2', '1 - Sully (20:35:00)', 1, '[{"added": {}}]', 9, 1),
	(41, '2016-11-05 22:25:48.758677', '27', 'Benedict Cumberbatch', 1, '[{"added": {}}]', 7, 1),
	(42, '2016-11-05 22:26:00.124283', '28', 'Chiwetel Ejiofor', 1, '[{"added": {}}]', 7, 1),
	(43, '2016-11-05 22:26:16.790268', '29', 'Rachel McAdams', 1, '[{"added": {}}]', 7, 1),
	(44, '2016-11-05 22:26:29.230575', '30', 'Mads Mikkelsen', 1, '[{"added": {}}]', 7, 1),
	(45, '2016-11-05 22:26:44.212764', '31', 'Tilda Swinton', 1, '[{"added": {}}]', 7, 1),
	(46, '2016-11-05 22:32:27.946937', '7', 'Dr. Strange (Doctor Extraño)', 1, '[{"added": {}}]', 8, 1),
	(47, '2016-11-05 22:33:35.328455', '3', '1 - Dr. Strange (Doctor Extraño) (22:50:00)', 1, '[{"added": {}}]', 9, 1),
	(48, '2016-11-05 22:34:09.473352', '2', '2', 1, '[{"added": {}}]', 10, 1),
	(49, '2016-11-05 22:34:52.486053', '4', '2 - Dr. Strange (Doctor Extraño) (18:15:00)', 1, '[{"added": {}}]', 9, 1),
	(50, '2016-11-05 22:35:32.151618', '5', '2 - Que Dios nos perdone (20:50:00)', 1, '[{"added": {}}]', 9, 1),
	(51, '2016-11-05 22:35:44.290406', '1', '1 - Que Dios nos perdone (18:00:00)', 2, '[{"changed": {"fields": ["hora"]}}]', 9, 1),
	(52, '2016-11-06 15:10:51.603652', '1', '1 - Que Dios nos perdone (18:00:00)', 2, '[]', 9, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.django_content_type
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.django_content_type: ~10 rows (aproximadamente)
DELETE FROM `django_content_type`;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(2, 'auth', 'group'),
	(3, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'cine', 'actor'),
	(8, 'cine', 'pelicula'),
	(9, 'cine', 'proyeccion'),
	(10, 'cine', 'sala'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.django_migrations
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.django_migrations: ~14 rows (aproximadamente)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2016-10-30 12:16:48.000643'),
	(2, 'auth', '0001_initial', '2016-10-30 12:16:55.869181'),
	(3, 'admin', '0001_initial', '2016-10-30 12:16:57.444651'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2016-10-30 12:16:57.486854'),
	(5, 'contenttypes', '0002_remove_content_type_name', '2016-10-30 12:16:58.327834'),
	(6, 'auth', '0002_alter_permission_name_max_length', '2016-10-30 12:16:59.067972'),
	(7, 'auth', '0003_alter_user_email_max_length', '2016-10-30 12:16:59.745638'),
	(8, 'auth', '0004_alter_user_username_opts', '2016-10-30 12:16:59.787251'),
	(9, 'auth', '0005_alter_user_last_login_null', '2016-10-30 12:17:00.247826'),
	(10, 'auth', '0006_require_contenttypes_0002', '2016-10-30 12:17:00.281666'),
	(11, 'auth', '0007_alter_validators_add_error_messages', '2016-10-30 12:17:00.323063'),
	(12, 'auth', '0008_alter_user_username_max_length', '2016-10-30 12:17:01.019425'),
	(13, 'cine', '0001_initial', '2016-10-30 12:17:05.523395'),
	(14, 'sessions', '0001_initial', '2016-10-30 12:17:05.980304'),
	(15, 'cine', '0002_pelicula_director', '2016-10-30 14:22:04.334397'),
	(16, 'cine', '0003_auto_20161030_1431', '2016-10-30 14:31:41.085462'),
	(17, 'cine', '0004_pelicula_desarrolladora', '2016-10-30 18:12:09.642828');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla django-cine.django_session
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla django-cine.django_session: ~4 rows (aproximadamente)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('9qxh95rogoknqt2dsrcsbltypzwtehba', 'MmQ5ODlkYzlhODMzYzBmMjMwNTUyNTFjNjY3OGQ2OWZjOWE3Y2I5YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNlMGRlYzI4MTdiMjQzMmM0NzQ0OGYzMDkzOTVlMDRkZGRhMmRmODUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-11-13 14:11:06.613721'),
	('i0e42gcrcajewituoh0rqza9tbgyfrfi', 'MjUxYWExYTVkYjk1MjhiNTdkMzc4OWUwMzJhMDAzYTk3ZGY4ODJjYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNlMGRlYzI4MTdiMjQzMmM0NzQ0OGYzMDkzOTVlMDRkZGRhMmRmODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-19 17:53:50.002177'),
	('jys852upjx094i5d1tnxqdpyxls9o945', 'MTdmNzNmZjI1YWRjZjdjZTc4YzQ5OWZjMmFiMDRmNzg5NWUxYjM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIzZTBkZWMyODE3YjI0MzJjNDc0NDhmMzA5Mzk1ZTA0ZGRkYTJkZjg1In0=', '2016-11-13 12:20:06.781957');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

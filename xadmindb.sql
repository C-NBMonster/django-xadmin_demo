/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : xadmindb

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-02-25 16:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('15', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add Bookmark', '7', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('26', 'Can change Bookmark', '7', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete Bookmark', '7', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('28', 'Can add User Setting', '8', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('29', 'Can change User Setting', '8', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete User Setting', '8', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('31', 'Can add User Widget', '9', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('32', 'Can change User Widget', '9', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete User Widget', '9', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('34', 'Can add log entry', '10', 'add_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can change log entry', '10', 'change_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete log entry', '10', 'delete_log');
INSERT INTO `auth_permission` VALUES ('37', 'Can view Bookmark', '7', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('38', 'Can view log entry', '10', 'view_log');
INSERT INTO `auth_permission` VALUES ('39', 'Can view User Setting', '8', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('40', 'Can view User Widget', '9', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('41', 'Can add revision', '11', 'add_revision');
INSERT INTO `auth_permission` VALUES ('42', 'Can change revision', '11', 'change_revision');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete revision', '11', 'delete_revision');
INSERT INTO `auth_permission` VALUES ('44', 'Can add version', '12', 'add_version');
INSERT INTO `auth_permission` VALUES ('45', 'Can change version', '12', 'change_version');
INSERT INTO `auth_permission` VALUES ('46', 'Can delete version', '12', 'delete_version');
INSERT INTO `auth_permission` VALUES ('47', 'Can view revision', '11', 'view_revision');
INSERT INTO `auth_permission` VALUES ('48', 'Can view version', '12', 'view_version');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 学生', '13', 'add_student');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 学生', '13', 'change_student');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 学生', '13', 'delete_student');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 学生', '13', 'view_student');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$100000$3Xw0GCjAenSH$u4/IZjqH+cbL3aAttMvv9In5lmYYa1f+rS+U7KHXN9g=', '2019-02-25 16:46:11.858748', '1', '538530', 'chen', 'jingxu', '1667809009@qq.com', '1', '1', '2019-02-19 17:17:50.163546');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'demo', 'student');
INSERT INTO `django_content_type` VALUES ('11', 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES ('12', 'reversion', 'version');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-02-19 17:10:11.732907');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-02-19 17:10:23.984524');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-02-19 17:10:26.523366');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-02-19 17:10:26.702262');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-02-19 17:10:30.606041');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-02-19 17:10:31.338588');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-02-19 17:10:31.482505');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-02-19 17:10:31.534477');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-02-19 17:10:31.952234');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-02-19 17:10:31.984215');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-02-19 17:10:32.029191');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-02-19 17:10:32.758770');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2019-02-19 17:10:33.709221');
INSERT INTO `django_migrations` VALUES ('14', 'demo', '0001_initial', '2019-02-19 17:10:34.706667');
INSERT INTO `django_migrations` VALUES ('15', 'reversion', '0001_squashed_0004_auto_20160611_1202', '2019-02-19 17:10:41.868696');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2019-02-19 17:10:42.785146');
INSERT INTO `django_migrations` VALUES ('17', 'xadmin', '0001_initial', '2019-02-19 17:10:49.712276');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0002_log', '2019-02-19 17:10:52.118866');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0003_auto_20160715_0100', '2019-02-19 17:10:52.907411');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('8xe5sngb15u9x3ypex6yyhj4c06cohef', 'ZDI5ODczMWI4NmEwZGZjNWY5ZDljNTMzN2M0YzQ0NzgwMzRjY2NlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNzgzNzEyZDYyM2I0NWI0N2E3NmY1NTEzNmE0NWYwODZlYzU5NWQ4IiwiTElTVF9RVUVSWSI6W1siZGVtbyIsInN0dWRlbnQiXSwiIl19', '2019-03-11 16:46:22.697637');
INSERT INTO `django_session` VALUES ('ae0rvfom4ar6ylhxd5m9ukcq0v5pfdc9', 'NTcwNzNhYzE5MTU3NDA5NDU2YTcwNDJkZGZjZTEyZWUyMzUyYTcwZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNzgzNzEyZDYyM2I0NWI0N2E3NmY1NTEzNmE0NWYwODZlYzU5NWQ4IiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIiJdfQ==', '2019-03-05 17:23:18.013534');

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_auth_user_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `createTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '2');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------

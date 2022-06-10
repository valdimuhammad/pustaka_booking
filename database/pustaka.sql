/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : pustaka

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 11/06/2022 00:01:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking`  (
  `id_booking` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_booking`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booking
-- ----------------------------

-- ----------------------------
-- Table structure for booking_detail
-- ----------------------------
DROP TABLE IF EXISTS `booking_detail`;
CREATE TABLE `booking_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_booking` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_buku` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booking_detail
-- ----------------------------

-- ----------------------------
-- Table structure for buku
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul_buku` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` int NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_terbit` year NOT NULL,
  `isbn` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok` int NOT NULL,
  `dipinjam` int NOT NULL,
  `dibooking` int NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'book-default-cover.jpg',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 445 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES (1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 12, 0, 0, 'img1557402455.jpg');
INSERT INTO `buku` VALUES (2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 12, 0, 0, 'img1557402397.jpg');
INSERT INTO `buku` VALUES (3, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke Minori', 'Cultura', 2016, '874387583987', 12, 0, 0, 'img1557401465.jpg');
INSERT INTO `buku` VALUES (4, 'Bahasa Indonesia', 2, 'Umri Nur\'aini', 'Pusat Perbukuan', 2015, '757254724884', 12, 0, 0, 'img1557402703.jpg');
INSERT INTO `buku` VALUES (5, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 12, 0, 0, 'img1557403156.jpg');
INSERT INTO `buku` VALUES (6, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 12, 0, 0, 'img1557403502.jpg');
INSERT INTO `buku` VALUES (7, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 12, 0, 0, 'img1557403658.jpg');
INSERT INTO `buku` VALUES (8, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 13, 0, 0, 'img1557404613.jpg');
INSERT INTO `buku` VALUES (9, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 13, 0, 0, 'img1557404689.jpg');
INSERT INTO `buku` VALUES (10, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 13, 0, 0, 'img1557404775.jpg');
INSERT INTO `buku` VALUES (11, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 11, 0, 0, 'img1557404853.jpg');
INSERT INTO `buku` VALUES (12, 'Belajar Mudah Pemrograman Web dengan Framework Codeigniter', 1, 'Imam Nawawi', 'Graha Ilmu', 2019, '12314213432', 13, 0, 0, 'img1564635420.PNG');

-- ----------------------------
-- Table structure for detail_pinjam
-- ----------------------------
DROP TABLE IF EXISTS `detail_pinjam`;
CREATE TABLE `detail_pinjam`  (
  `no_pinjam` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_buku` int NOT NULL,
  `denda` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_pinjam
-- ----------------------------

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Komputer');
INSERT INTO `kategori` VALUES (2, 'Bahasa');
INSERT INTO `kategori` VALUES (3, 'Sains');
INSERT INTO `kategori` VALUES (4, 'Hobby');
INSERT INTO `kategori` VALUES (5, 'Komunikasi');
INSERT INTO `kategori` VALUES (6, 'Hukum');
INSERT INTO `kategori` VALUES (7, 'Agama');
INSERT INTO `kategori` VALUES (8, 'Populer');
INSERT INTO `kategori` VALUES (9, 'Komik');
INSERT INTO `kategori` VALUES (10, 'Dewasa');
INSERT INTO `kategori` VALUES (11, 'Kids');

-- ----------------------------
-- Table structure for pinjam
-- ----------------------------
DROP TABLE IF EXISTS `pinjam`;
CREATE TABLE `pinjam`  (
  `no_pinjam` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pinjam',
  `total_denda` int NOT NULL,
  PRIMARY KEY (`no_pinjam`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinjam
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'administrator');
INSERT INTO `role` VALUES (2, 'member');

-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tgl_booking` datetime NULL DEFAULT NULL,
  `id_user` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_buku` int NULL DEFAULT NULL,
  `judul_buku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penulis` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_terbit` year NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temp
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role_id` int NOT NULL,
  `is_active` int NOT NULL,
  `tanggal_input` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Admin', '', 'admin@gmail.com', 'default.jpg', '$2y$10$U.4M3m0cWNXtxLixKESQ2e6Z.ltKJA8rahnEd4a7M1g3hJKYD35tq', 1, 1, 1637256382);
INSERT INTO `user` VALUES (2, 'Member', '', 'member@gmail.com', 'default.jpg', '$2y$10$2bp03GCr8Wkzpu5qrERmZOqShpn6kmJ6BHfsGvpqMqnnC4rbLjria', 2, 1, 1637258675);

SET FOREIGN_KEY_CHECKS = 1;

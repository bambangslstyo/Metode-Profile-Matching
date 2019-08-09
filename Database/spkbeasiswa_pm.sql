/*
 Navicat Premium Data Transfer

 Source Server         : Bambang
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : spkbeasiswa_pm

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 12/12/2017 22:09:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_dethasil
-- ----------------------------
DROP TABLE IF EXISTS `tb_dethasil`;
CREATE TABLE `tb_dethasil`  (
  `nim` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kdKriteria` int(5) NOT NULL,
  `subKriteria` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilaiMhs` double NULL DEFAULT NULL,
  `nilaiProfil` double NULL DEFAULT NULL,
  `gap` double NULL DEFAULT NULL,
  `bobotGap` double NULL DEFAULT NULL,
  `jenis` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilaiJenis` double NULL DEFAULT NULL,
  INDEX `kdKriteria_fkh`(`kdKriteria`) USING BTREE,
  INDEX `nim_fkh`(`nim`) USING BTREE,
  INDEX `subKriteria_fkh`(`subKriteria`) USING BTREE,
  CONSTRAINT `kdKriteria_fkh` FOREIGN KEY (`kdKriteria`) REFERENCES `tb_kriteria` (`kdKriteria`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `nim_fkh` FOREIGN KEY (`nim`) REFERENCES `tb_mhs` (`nim`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `subKriteria_fkh` FOREIGN KEY (`subKriteria`) REFERENCES `tb_detkriteria` (`subKriteria`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dethasil
-- ----------------------------
INSERT INTO `tb_dethasil` VALUES ('2014020040', 1, '>= 3.5', 4, 3, 1, 4.5, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020040', 2, '>= 3,000,000 dan < 5,000,000', 3, 3, 0, 5, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020040', 3, 'Jumlah 3', 3, 3, 0, 5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020040', 4, 'Semester 4', 2, 2, 0, 5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020040', 5, 'Tidak Berorganisasi', 3, 4, -1, 4, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020038', 1, '>= 3 dan < 3.5', 3, 3, 0, 5, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020038', 2, '>= 5,000,000', 4, 3, 1, 4.5, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020038', 3, 'Jumlah >3', 4, 3, 1, 4.5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020038', 4, 'Semester 4', 2, 2, 0, 5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020038', 5, 'Tidak Berorganisasi', 3, 4, -1, 4, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020053', 1, '>= 3.5', 4, 3, 1, 4.5, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020053', 2, '>= 5,000,000', 4, 3, 1, 4.5, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020053', 3, 'Jumlah >3', 4, 3, 1, 4.5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020053', 4, 'Semester 5 dan 6', 3, 2, 1, 4.5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020053', 5, 'Berorganisasi', 4, 4, 0, 5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020054', 1, '>= 2.5 dan < 3', 2, 3, -1, 4, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020054', 2, '>= 1,500,000 dan < 3,000,000', 2, 3, -1, 4, 'Core Factor', 0.6);
INSERT INTO `tb_dethasil` VALUES ('2014020054', 3, 'Jumlah 2', 2, 3, -1, 4, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020054', 4, 'Semester 5 dan 6', 3, 2, 1, 4.5, 'Secondary Factor', 0.4);
INSERT INTO `tb_dethasil` VALUES ('2014020054', 5, 'Berorganisasi', 4, 4, 0, 5, 'Secondary Factor', 0.4);

-- ----------------------------
-- Table structure for tb_detkriteria
-- ----------------------------
DROP TABLE IF EXISTS `tb_detkriteria`;
CREATE TABLE `tb_detkriteria`  (
  `kdKriteria` int(5) NOT NULL,
  `nmKriteria` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subKriteria` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai` double NOT NULL,
  INDEX `kdKriteria_fk`(`kdKriteria`) USING BTREE,
  INDEX `nmKriteria_fk`(`nmKriteria`) USING BTREE,
  INDEX `subKriteria`(`subKriteria`) USING BTREE,
  INDEX `subKriteria_2`(`subKriteria`, `kdKriteria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_detkriteria
-- ----------------------------
INSERT INTO `tb_detkriteria` VALUES (1, 'IPK', '< 2.5', 1);
INSERT INTO `tb_detkriteria` VALUES (1, 'IPK', '>= 2.5 dan < 3', 2);
INSERT INTO `tb_detkriteria` VALUES (1, 'IPK', '>= 3 dan < 3.5', 3);
INSERT INTO `tb_detkriteria` VALUES (1, 'IPK', '>= 3.5', 4);
INSERT INTO `tb_detkriteria` VALUES (2, 'Penghasilan Orang Tua', '< 1,500,000', 1);
INSERT INTO `tb_detkriteria` VALUES (2, 'Penghasilan Orang Tua', '>= 1,500,000 dan < 3,000,000', 2);
INSERT INTO `tb_detkriteria` VALUES (2, 'Penghasilan Orang Tua', '>= 3,000,000 dan < 5,000,000', 3);
INSERT INTO `tb_detkriteria` VALUES (2, 'Penghasilan Orang Tua', '>= 5,000,000', 4);
INSERT INTO `tb_detkriteria` VALUES (3, 'Jumlah Tanggungan', 'Jumlah 1', 1);
INSERT INTO `tb_detkriteria` VALUES (3, 'Jumlah Tanggungan', 'Jumlah 2', 2);
INSERT INTO `tb_detkriteria` VALUES (3, 'Jumlah Tanggungan', 'Jumlah 3', 3);
INSERT INTO `tb_detkriteria` VALUES (3, 'Jumlah Tanggungan', 'Jumlah >3', 4);
INSERT INTO `tb_detkriteria` VALUES (4, 'Semester', 'Semester <= 2 atau > 8', 0);
INSERT INTO `tb_detkriteria` VALUES (4, 'Semester', 'Semester 3', 1);
INSERT INTO `tb_detkriteria` VALUES (4, 'Semester', 'Semester 4', 2);
INSERT INTO `tb_detkriteria` VALUES (4, 'Semester', 'Semester 5 dan 6', 3);
INSERT INTO `tb_detkriteria` VALUES (4, 'Semester', 'Semester 7 dan 8', 4);
INSERT INTO `tb_detkriteria` VALUES (5, 'Organisasi', 'Tidak Berorganisasi', 3);
INSERT INTO `tb_detkriteria` VALUES (5, 'Organisasi', 'Berorganisasi', 4);

-- ----------------------------
-- Table structure for tb_gap
-- ----------------------------
DROP TABLE IF EXISTS `tb_gap`;
CREATE TABLE `tb_gap`  (
  `idGap` int(11) NOT NULL AUTO_INCREMENT,
  `gap` double NOT NULL,
  `bobotGap` double NOT NULL,
  `ket` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idGap`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_gap
-- ----------------------------
INSERT INTO `tb_gap` VALUES (1, 0, 5, 'Tidak Ada Selisih, kompetensi sesuai dengan yang dibutuhkan');
INSERT INTO `tb_gap` VALUES (2, 1, 4.5, 'Kompetensi individu kelebihan 1 tingkat/level');
INSERT INTO `tb_gap` VALUES (3, -1, 4, 'Kompetensi individu kekurangan 1 tingkat/level');
INSERT INTO `tb_gap` VALUES (4, 2, 3.5, 'Kompetensi individu kelebihan 2 tingkat/level');
INSERT INTO `tb_gap` VALUES (5, -2, 3, 'Kompetensi individu kekurangan 2 tingkat/level');
INSERT INTO `tb_gap` VALUES (6, 3, 2.5, 'Kompetensi individu kelebihan 3 tingkat/level');
INSERT INTO `tb_gap` VALUES (7, -3, 2, 'Kompetensi individu kekurangan 3 tingkat/level');
INSERT INTO `tb_gap` VALUES (8, 4, 1.5, 'Kompetensi individu kelebihan 4 tingkat/level');
INSERT INTO `tb_gap` VALUES (9, -4, 1, 'Kompetensi individu kekurangan 4 tingkat/level');

-- ----------------------------
-- Table structure for tb_hasil
-- ----------------------------
DROP TABLE IF EXISTS `tb_hasil`;
CREATE TABLE `tb_hasil`  (
  `nim` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cf` double(5, 3) NULL DEFAULT NULL,
  `sf` double(5, 3) NULL DEFAULT NULL,
  `totNilai` double(5, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`nim`) USING BTREE,
  INDEX `nim_fkh`(`nim`) USING BTREE,
  CONSTRAINT `tb_hasil_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `tb_mhs` (`nim`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_hasil
-- ----------------------------
INSERT INTO `tb_hasil` VALUES ('2014020038', 4.750, 4.500, 4.650);
INSERT INTO `tb_hasil` VALUES ('2014020040', 4.750, 4.667, 4.717);
INSERT INTO `tb_hasil` VALUES ('2014020053', 4.500, 4.667, 4.567);
INSERT INTO `tb_hasil` VALUES ('2014020054', 4.000, 4.500, 4.200);

-- ----------------------------
-- Table structure for tb_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tb_kriteria`;
CREATE TABLE `tb_kriteria`  (
  `kdKriteria` int(5) NOT NULL AUTO_INCREMENT,
  `nmKriteria` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilaiJenis` double NOT NULL,
  PRIMARY KEY (`kdKriteria`) USING BTREE,
  INDEX `nmKriteria`(`nmKriteria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_kriteria
-- ----------------------------
INSERT INTO `tb_kriteria` VALUES (1, 'IPK', 'Core Factor', 0.6);
INSERT INTO `tb_kriteria` VALUES (2, 'Penghasilan Orang Tua', 'Core Factor', 0.6);
INSERT INTO `tb_kriteria` VALUES (3, 'Jumlah Tanggungan', 'Secondary Factor', 0.4);
INSERT INTO `tb_kriteria` VALUES (4, 'Semester', 'Secondary Factor', 0.4);
INSERT INTO `tb_kriteria` VALUES (5, 'Organisasi', 'Secondary Factor', 0.4);

-- ----------------------------
-- Table structure for tb_mhs
-- ----------------------------
DROP TABLE IF EXISTS `tb_mhs`;
CREATE TABLE `tb_mhs`  (
  `nim` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nmMhs` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenkel` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_mhs
-- ----------------------------
INSERT INTO `tb_mhs` VALUES ('2014020038', 'Ahmad', 'Laki-laki', 'Sistem Informasi');
INSERT INTO `tb_mhs` VALUES ('2014020040', 'Dwi', 'Laki-laki', 'Teknik Informatika');
INSERT INTO `tb_mhs` VALUES ('2014020053', 'Rahmat', 'Laki-laki', 'Sistem Komputer');
INSERT INTO `tb_mhs` VALUES ('2014020054', 'Hery', 'Laki-laki', 'Teknik Informatika');

-- ----------------------------
-- Table structure for tb_profile
-- ----------------------------
DROP TABLE IF EXISTS `tb_profile`;
CREATE TABLE `tb_profile`  (
  `kdKriteria` int(5) NOT NULL,
  `subKriteria` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilaiProfil` double NOT NULL,
  INDEX `kdKriteria_fkp`(`kdKriteria`) USING BTREE,
  INDEX `subKriteria_fkp`(`subKriteria`) USING BTREE,
  INDEX `nilaiProfil`(`nilaiProfil`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_profile
-- ----------------------------
INSERT INTO `tb_profile` VALUES (1, '>=3 dan <3.5', 3);
INSERT INTO `tb_profile` VALUES (2, '>= 3,000,000 dan < 5,000,000', 3);
INSERT INTO `tb_profile` VALUES (3, 'Jumlah >3', 3);
INSERT INTO `tb_profile` VALUES (4, 'Semeter 4', 2);
INSERT INTO `tb_profile` VALUES (5, 'Berorganisasi', 4);

SET FOREIGN_KEY_CHECKS = 1;

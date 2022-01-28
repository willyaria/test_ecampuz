/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.14-MariaDB : Database - db_ecampuz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `tb_mahasiswa` */

DROP TABLE IF EXISTS `tb_mahasiswa`;

CREATE TABLE `tb_mahasiswa` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_nim` varchar(8) DEFAULT NULL,
  `mhs_nama` varchar(30) DEFAULT NULL,
  `mhs_angkatan` year(4) DEFAULT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mahasiswa` */

insert  into `tb_mahasiswa`(`mhs_id`,`mhs_nim`,`mhs_nama`,`mhs_angkatan`) values (1,'20180001','Jono',2018),(2,'20180002','Taufik',2018),(3,'20180003','Maria',2018),(4,'20190001','Sari',2019),(5,'20190002','Bambang',2019);

/*Table structure for table `tb_mahasiswa_nilai` */

DROP TABLE IF EXISTS `tb_mahasiswa_nilai`;

CREATE TABLE `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_id` int(11) DEFAULT NULL,
  `mk_id` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`mhs_nilai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mahasiswa_nilai` */

insert  into `tb_mahasiswa_nilai`(`mhs_nilai_id`,`mhs_id`,`mk_id`,`nilai`) values (1,1,1,70),(2,1,1,80),(3,2,1,82),(4,2,2,74),(5,4,1,76),(6,4,2,80),(7,5,1,60);

/*Table structure for table `tb_matakuliah` */

DROP TABLE IF EXISTS `tb_matakuliah`;

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(11) NOT NULL AUTO_INCREMENT,
  `mk_kode` varchar(5) DEFAULT NULL,
  `mk_sks` int(1) DEFAULT NULL,
  `mk_nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_matakuliah` */

insert  into `tb_matakuliah`(`mk_id`,`mk_kode`,`mk_sks`,`mk_nama`) values (1,'MK202',3,'OOP'),(2,'MK303',2,'Basis Data');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

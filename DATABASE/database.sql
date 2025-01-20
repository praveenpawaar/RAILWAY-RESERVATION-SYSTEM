/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - railways
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`railways` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `railways`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` text,
  `r_id` text,
  `r_no` text,
  `selected_seats` text,
  `price` text,
  `status` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`id`,`user_id`,`r_id`,`r_no`,`selected_seats`,`price`,`status`,`date`) values (2,'3','2','12268','2','103','Accepted','waiting'),(3,'5','2','12268','4','103','Accepted','waiting'),(4,'5','1','12267','3','123','Accepted','waiting'),(5,'4','8','12049','3','150','Accepted','waiting');

/*Table structure for table `railways` */

DROP TABLE IF EXISTS `railways`;

CREATE TABLE `railways` (
  `id` int(11) NOT NULL auto_increment,
  `number` text,
  `name` text,
  `stype` text,
  `departure` text,
  `arrival` text,
  `runsdays` text,
  `seats` text,
  `available_seats` text,
  `price` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `railways` */

insert  into `railways`(`id`,`number`,`name`,`stype`,`departure`,`arrival`,`runsdays`,`seats`,`available_seats`,`price`) values (1,'12267',' 	MUMBAI CENTRAL - AHMEDABAD AC Duronto Exp','Duronto','23:25',' 05:55',' M,T,W,T,F,S,S 	','100','97','123'),(2,'12268','AHMEDABAD - MUMBAI CENT AC Duronto Exp','Duronto','23:40',' 06:00','M,T,W,T,F,S,S','120','114','103'),(3,'22201','KOLKATA SEALDAH - PURI Duronto Express','Duronto','20:00','04:00','M,W,F','470','470','148'),(4,'22204','SECUNDERABAD - VISAKHAPATNAM AC Duronto Express','Duronto','20:15','06:35','M,W,S','766','766','230'),(5,'22206','MADURAI - CHENNAI CENTRAL AC Duronto Express','Duronto','22:40','07:20','TUE,THU','540','540','340'),(6,'12426','JAMMU TAWI - NEW DELHI Rajdhani Express','Rajdhani','19:40','05:05','M,T,W,T,F,S,S','600','600','433'),(7,'12019','HOWRAH - RANCHI Shatabdi Express',' Shatabdi','06:05','13:15','M,T,W,T,F,S','200','200','130'),(8,'12049','Agra Cantt - Delhi H Nizamuddin Gatimaan Express','Shatabdi','17:50','19:30','M,T,W,T,S,S','200','197','150');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`mobile`,`address`,`username`,`password`) values (3,'venkat g','venkat@gmail.com','01234567890','4','venkat','123'),(4,'abc','abc@gmail.com','123457890','hyd','abc','123'),(5,'kishan','kishan@gmail.com','1234567890','hyderabad','kishan','123'),(6,'manoj','manager@gmail.com','1234567890','hyd','abc','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

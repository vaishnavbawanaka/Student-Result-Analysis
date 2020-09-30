/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - resultanalysis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`resultanalysis` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `resultanalysis`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `user1` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`user1`,`pwd`) values ('admin','admin');

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `no` varchar(40) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `gen` varchar(40) DEFAULT NULL,
  `sem` varchar(40) DEFAULT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `contactno` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `faculty` */

insert  into `faculty`(`id`,`name`,`no`,`pass`,`email`,`dob`,`gen`,`sem`,`fname`,`address`,`contactno`) values (2,'nikil','12345','123','nikilp306@gmail.com','1992-11-20','MALE',NULL,'nikil','1000projects','9052016340');

/*Table structure for table `first` */

DROP TABLE IF EXISTS `first`;

CREATE TABLE `first` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `no` varchar(40) DEFAULT NULL,
  `sem` int(40) DEFAULT NULL,
  `sub1` int(11) DEFAULT NULL,
  `sub2` int(40) DEFAULT NULL,
  `sub3` int(40) DEFAULT NULL,
  `sub4` int(40) DEFAULT NULL,
  `sub5` int(40) DEFAULT NULL,
  `sub6` int(40) DEFAULT NULL,
  `sub7` int(40) DEFAULT NULL,
  `sub8` int(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `first` */

insert  into `first`(`id`,`no`,`sem`,`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`sub6`,`sub7`,`sub8`,`email`) values (13,'14D91A0511',1,45,85,78,0,10,20,30,0,'ashwini.chaitankar28@gmail.com'),(17,'11611',1,61,59,56,68,61,68,51,43,'nikhith.1000projects@gmail.com');

/*Table structure for table `marks` */

DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `no` varchar(40) DEFAULT NULL,
  `sem` varchar(40) DEFAULT NULL,
  `sub1` varchar(40) DEFAULT NULL,
  `sub2` varchar(40) DEFAULT NULL,
  `sub3` varchar(40) DEFAULT NULL,
  `sub4` varchar(40) DEFAULT NULL,
  `sub5` varchar(40) DEFAULT NULL,
  `sub6` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

/*Table structure for table `second` */

DROP TABLE IF EXISTS `second`;

CREATE TABLE `second` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `no` varchar(40) DEFAULT NULL,
  `sem` int(40) DEFAULT NULL,
  `sub1` int(40) DEFAULT NULL,
  `sub2` int(40) DEFAULT NULL,
  `sub3` int(40) DEFAULT NULL,
  `sub4` int(40) DEFAULT NULL,
  `sub5` int(40) DEFAULT NULL,
  `sub6` int(40) DEFAULT NULL,
  `sub7` int(40) DEFAULT NULL,
  `sub8` int(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `second` */

insert  into `second`(`id`,`no`,`sem`,`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`sub6`,`sub7`,`sub8`,`email`) values (1,'14D91A0511',2,77,98,0,65,54,0,72,0,'ashwini.chaitankar28@gmail.com'),(5,'11611',2,97,84,81,88,79,85,71,59,'nikhith.1000projects@gmail.com');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `no` varchar(40) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `gen` varchar(40) DEFAULT NULL,
  `sem` varchar(40) DEFAULT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `contactno` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`no`,`pass`,`email`,`dob`,`gen`,`sem`,`fname`,`address`,`contactno`) values (10,'ASHWINI CHAITANKAR','14D91A0511','ashwini','ashwini.chaitankar28@gmail.com','1996-10-28','FEMALE','4-1','Rajendar Chaitankar','1104, old mig,hyd','8801173290'),(11,'G sravani','14D91A0534','sravani','Gsravani0668@gmail.com','1997-07-23','FEMALE','4-1','rajendar','mehdipatnam,10-11,hyd','8885133458'),(16,'nikith','11611','123','nikhith.1000projects@gmail.com','1994-04-19','MALE','3-1','nikil','1000projects,Hyderabad','9052016340');

/*Table structure for table `subjects` */

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `sub1` varchar(40) DEFAULT NULL,
  `sub2` varchar(40) DEFAULT NULL,
  `sub3` varchar(40) DEFAULT NULL,
  `sub4` varchar(40) DEFAULT NULL,
  `sub5` varchar(40) DEFAULT NULL,
  `sub6` varchar(40) DEFAULT NULL,
  `lab1` varchar(40) DEFAULT NULL,
  `lab2` varchar(40) DEFAULT NULL,
  `sem` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subjects` */

insert  into `subjects`(`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`sub6`,`lab1`,`lab2`,`sem`) values ('principles of programming language','Disaster management','software engineering','Compiler design','Operating systems','computer networks','CD lab','OS lab','1'),('MEFA','WT','DS','IS','OOAD','STM','WT lab','OOAD lab','2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

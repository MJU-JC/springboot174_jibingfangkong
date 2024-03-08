/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jibingfangkong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jibingfangkong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jibingfangkong`;

/*Table structure for table `churujilu` */

DROP TABLE IF EXISTS `churujilu`;

CREATE TABLE `churujilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `churujilu_types` int(11) DEFAULT NULL COMMENT '类型',
  `churujilu_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `churujilu_content` text COMMENT '备注',
  `churu_time` timestamp NULL DEFAULT NULL COMMENT '出入时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='出入记录';

/*Data for the table `churujilu` */

insert  into `churujilu`(`id`,`yonghu_id`,`churujilu_types`,`churujilu_photo`,`churujilu_content`,`churu_time`,`insert_time`,`create_time`) values (1,2,2,'http://localhost:8080/jibingfangkong/upload/wuzi1.jpg','备注1','2022-03-08 20:46:27','2022-03-08 20:46:27','2022-03-08 20:46:27'),(2,1,1,'http://localhost:8080/jibingfangkong/upload/wuzi2.jpg','备注2','2022-03-08 20:46:27','2022-03-08 20:46:27','2022-03-08 20:46:27'),(3,1,1,'http://localhost:8080/jibingfangkong/upload/wuzi3.jpg','备注3','2022-03-08 20:46:27','2022-03-08 20:46:27','2022-03-08 20:46:27'),(4,1,2,'http://localhost:8080/jibingfangkong/upload/wuzi4.jpg','备注4','2022-03-08 20:46:27','2022-03-08 20:46:27','2022-03-08 20:46:27'),(5,2,2,'http://localhost:8080/jibingfangkong/upload/wuzi5.jpg','备注5','2022-03-08 20:46:27','2022-03-08 20:46:27','2022-03-08 20:46:27'),(6,2,2,'http://localhost:8080/jibingfangkong/upload/1646745437347.jpg','<p>wu </p>','2022-03-08 00:00:00','2022-03-08 21:17:24','2022-03-08 21:17:24');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jibingfangkong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/jibingfangkong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/jibingfangkong/upload/config3.jpg');

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_photo` varchar(200) DEFAULT NULL COMMENT '打卡照片',
  `daka_content` text COMMENT '打卡备注',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='打卡';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_photo`,`daka_content`,`insert_time`,`create_time`) values (1,3,'http://localhost:8080/jibingfangkong/upload/wuzi1.jpg','打卡备注1','2022-03-08','2022-03-08 20:46:27'),(2,1,'http://localhost:8080/jibingfangkong/upload/wuzi2.jpg','打卡备注2','2022-03-08','2022-03-08 20:46:27'),(3,2,'http://localhost:8080/jibingfangkong/upload/wuzi3.jpg','打卡备注3','2022-03-08','2022-03-08 20:46:27'),(4,3,'http://localhost:8080/jibingfangkong/upload/wuzi4.jpg','打卡备注4','2022-03-08','2022-03-08 20:46:27'),(5,2,'http://localhost:8080/jibingfangkong/upload/wuzi5.jpg','打卡备注5','2022-03-08','2022-03-08 20:46:27');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-08 20:44:24'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-08 20:44:24'),(3,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2022-03-08 20:44:24'),(4,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2022-03-08 20:44:24'),(5,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2022-03-08 20:44:24'),(6,'wuzi_types','物资类型',4,'物资类型4',NULL,NULL,'2022-03-08 20:44:24'),(7,'wuzishenqing_paifa_types','派发地点',1,'派发地点1',NULL,NULL,'2022-03-08 20:44:24'),(8,'wuzishenqing_paifa_types','派发地点',2,'派发地点2',NULL,NULL,'2022-03-08 20:44:24'),(9,'wuzishenqing_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-08 20:44:24'),(10,'wuzishenqing_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-08 20:44:24'),(11,'wuzishenqing_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-08 20:44:24'),(12,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-08 20:44:24'),(13,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-08 20:44:24'),(14,'jiance_types','检测结果',1,'阴性',NULL,NULL,'2022-03-08 20:44:24'),(15,'jiance_types','检测结果',2,'阳性',NULL,NULL,'2022-03-08 20:44:24'),(16,'jiezhong_types','接种类型',1,'第一针',NULL,NULL,'2022-03-08 20:44:24'),(17,'jiezhong_types','接种类型',2,'第二针',NULL,NULL,'2022-03-08 20:44:24'),(18,'jiezhong_types','接种类型',3,'第三针',NULL,NULL,'2022-03-08 20:44:24'),(19,'jiezhong_types','接种类型',4,'加强针',NULL,NULL,'2022-03-08 20:44:24'),(20,'churujilu_types','出入类型',1,'出去',NULL,NULL,'2022-03-08 20:44:24'),(21,'churujilu_types','出入类型',2,'进来',NULL,NULL,'2022-03-08 20:44:24'),(22,'wuzi_types','物资类型',5,'物资类型5',NULL,'','2022-03-08 21:18:01');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/jibingfangkong/upload/gonggao1.jpg',1,'2022-03-08 20:46:27','公告详情1','2022-03-08 20:46:27'),(2,'公告名称2','http://localhost:8080/jibingfangkong/upload/gonggao2.jpg',1,'2022-03-08 20:46:27','公告详情2','2022-03-08 20:46:27'),(3,'公告名称3','http://localhost:8080/jibingfangkong/upload/gonggao3.jpg',2,'2022-03-08 20:46:27','公告详情3','2022-03-08 20:46:27'),(4,'公告名称4','http://localhost:8080/jibingfangkong/upload/gonggao4.jpg',1,'2022-03-08 20:46:27','公告详情4','2022-03-08 20:46:27'),(5,'公告名称5','http://localhost:8080/jibingfangkong/upload/gonggao5.jpg',2,'2022-03-08 20:46:27','公告详情5','2022-03-08 20:46:27');

/*Table structure for table `hesuanjiance` */

DROP TABLE IF EXISTS `hesuanjiance`;

CREATE TABLE `hesuanjiance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `jiance_types` int(11) NOT NULL COMMENT '检测结果  Search111 ',
  `hesuanjiance_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='核酸检测';

/*Data for the table `hesuanjiance` */

insert  into `hesuanjiance`(`id`,`yonghu_id`,`jiance_time`,`jiance_types`,`hesuanjiance_content`,`insert_time`,`create_time`) values (1,2,'2022-03-08 20:46:27',1,'备注1','2022-03-08 20:46:27','2022-03-08 20:46:27'),(2,1,'2022-03-08 20:46:27',1,'备注2','2022-03-08 20:46:27','2022-03-08 20:46:27'),(3,1,'2022-03-08 20:46:27',1,'备注3','2022-03-08 20:46:27','2022-03-08 20:46:27'),(4,3,'2022-03-08 20:46:27',1,'备注4','2022-03-08 20:46:27','2022-03-08 20:46:27'),(5,3,'2022-03-08 20:46:27',2,'备注5','2022-03-08 20:46:27','2022-03-08 20:46:27');

/*Table structure for table `jiezhongjilu` */

DROP TABLE IF EXISTS `jiezhongjilu`;

CREATE TABLE `jiezhongjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiezhongjilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '接种编号',
  `jiezhong_time` timestamp NULL DEFAULT NULL COMMENT '接种时间',
  `jiezhong_types` int(11) NOT NULL COMMENT '接种类型  Search111 ',
  `jiezhongjilu_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='接种记录';

/*Data for the table `jiezhongjilu` */

insert  into `jiezhongjilu`(`id`,`yonghu_id`,`jiezhongjilu_uuid_number`,`jiezhong_time`,`jiezhong_types`,`jiezhongjilu_content`,`insert_time`,`create_time`) values (1,2,'164674358746014','2022-03-08 20:46:27',3,'备注1','2022-03-08 20:46:27','2022-03-08 20:46:27'),(2,3,'16467435874611','2022-03-08 20:46:27',2,'备注2','2022-03-08 20:46:27','2022-03-08 20:46:27'),(3,2,'164674358746113','2022-03-08 20:46:27',2,'备注3','2022-03-08 20:46:27','2022-03-08 20:46:27'),(4,1,'16467435874616','2022-03-08 20:46:27',1,'备注4','2022-03-08 20:46:27','2022-03-08 20:46:27'),(5,2,'164674358746113','2022-03-08 20:46:27',3,'备注5','2022-03-08 20:46:27','2022-03-08 20:46:27'),(6,2,'1646745492130','2022-03-02 00:00:00',1,'<p>大师傅</p>','2022-03-08 21:18:26','2022-03-08 21:18:26'),(7,2,'1646745512473','2022-03-09 00:00:00',4,'<p>萨达</p>','2022-03-08 21:18:55','2022-03-08 21:18:55');

/*Table structure for table `shequyiqing` */

DROP TABLE IF EXISTS `shequyiqing`;

CREATE TABLE `shequyiqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shequyiqing_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '照片 ',
  `shequyiqing_content` text COMMENT '内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='社区疫情情况';

/*Data for the table `shequyiqing` */

insert  into `shequyiqing`(`id`,`yonghu_id`,`shequyiqing_name`,`gonggao_photo`,`shequyiqing_content`,`insert_time`,`create_time`) values (1,3,'标题1','http://localhost:8080/jibingfangkong/upload/wuzi1.jpg','内容1','2022-03-08 20:46:27','2022-03-08 20:46:27'),(2,1,'标题2','http://localhost:8080/jibingfangkong/upload/wuzi2.jpg','内容2','2022-03-08 20:46:27','2022-03-08 20:46:27'),(3,2,'标题3','http://localhost:8080/jibingfangkong/upload/wuzi3.jpg','内容3','2022-03-08 20:46:27','2022-03-08 20:46:27'),(4,3,'标题4','http://localhost:8080/jibingfangkong/upload/wuzi4.jpg','内容4','2022-03-08 20:46:27','2022-03-08 20:46:27'),(5,3,'标题5','http://localhost:8080/jibingfangkong/upload/wuzi5.jpg','内容5','2022-03-08 20:46:27','2022-03-08 20:46:27'),(6,1,'标题1111','http://localhost:8080/jibingfangkong/upload/1646745621044.jpg','<p>内容11111</p>','2022-03-08 21:20:24','2022-03-08 21:20:24');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','zcuk4ypqj3sdfduj0ba6dsr6i4amopr4','2022-03-08 20:48:06','2022-03-08 22:17:03'),(2,1,'a1','yonghu','用户','ecqa33cwfo40h9ou5mgt0990cvzzjakz','2022-03-08 20:48:22','2022-03-08 22:19:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `wuzi_content` text COMMENT '物资介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_name`,`wuzi_danwei`,`wuzi_photo`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_delete`,`wuzi_content`,`create_time`) values (1,'物资名称1','个','http://localhost:8080/jibingfangkong/upload/wuzi1.jpg',3,101,1,'物资介绍1','2022-03-08 20:46:27'),(2,'物资名称2','个','http://localhost:8080/jibingfangkong/upload/wuzi2.jpg',1,102,1,'物资介绍2','2022-03-08 20:46:27'),(3,'物资名称3','个','http://localhost:8080/jibingfangkong/upload/wuzi3.jpg',1,103,1,'物资介绍3','2022-03-08 20:46:27'),(4,'物资名称4','个','http://localhost:8080/jibingfangkong/upload/wuzi4.jpg',3,67,1,'物资介绍4','2022-03-08 20:46:27'),(5,'物资名称5','个','http://localhost:8080/jibingfangkong/upload/wuzi5.jpg',4,105,1,'物资介绍5','2022-03-08 20:46:27');

/*Table structure for table `wuzishenqing` */

DROP TABLE IF EXISTS `wuzishenqing`;

CREATE TABLE `wuzishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzishenqing_number` int(11) DEFAULT NULL COMMENT '申请数量',
  `wuzishenqing_content` text COMMENT '申请理由',
  `wuzishenqing_paifa_types` int(11) DEFAULT NULL COMMENT '派发地点 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `wuzishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `wuzishenqing_yesno_text` text COMMENT '回复意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzishenqing` */

insert  into `wuzishenqing`(`id`,`wuzi_id`,`yonghu_id`,`wuzishenqing_number`,`wuzishenqing_content`,`wuzishenqing_paifa_types`,`insert_time`,`wuzishenqing_yesno_types`,`wuzishenqing_yesno_text`,`update_time`,`create_time`) values (1,1,3,1,'申请理由1',2,'2022-03-08 20:46:27',1,NULL,NULL,'2022-03-08 20:46:27'),(2,2,2,309,'申请理由2',2,'2022-03-08 20:46:27',1,NULL,NULL,'2022-03-08 20:46:27'),(3,3,3,138,'申请理由3',2,'2022-03-08 20:46:27',1,NULL,NULL,'2022-03-08 20:46:27'),(4,4,3,37,'申请理由4',1,'2022-03-08 20:46:27',2,'啥地方','2022-03-08 20:46:27','2022-03-08 20:46:27'),(5,5,1,108,'申请理由5',2,'2022-03-08 20:46:27',1,NULL,NULL,'2022-03-08 20:46:27'),(6,5,1,5,'<p>撒发的</p>',1,'2022-03-08 21:20:44',1,'',NULL,'2022-03-08 21:20:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/jibingfangkong/upload/yonghu1.jpg',2,'1@qq.com','2022-03-08 20:46:27'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/jibingfangkong/upload/yonghu2.jpg',2,'2@qq.com','2022-03-08 20:46:27'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/jibingfangkong/upload/yonghu3.jpg',1,'3@qq.com','2022-03-08 20:46:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

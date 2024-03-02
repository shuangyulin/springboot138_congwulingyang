/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chongwulingyangxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chongwulingyangxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chongwulingyangxitong`;

/*Table structure for table `chongwulingyang` */

DROP TABLE IF EXISTS `chongwulingyang`;

CREATE TABLE `chongwulingyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwulingyang_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111',
  `chongwulingyang_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `chongwulingyang_photo` varchar(200) DEFAULT NULL COMMENT '宠物图片',
  `jieshu_types` int(11) DEFAULT NULL COMMENT '是否被认领',
  `chongwulingyang_content` text COMMENT '宠物详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='宠物领养';

/*Data for the table `chongwulingyang` */

insert  into `chongwulingyang`(`id`,`chongwulingyang_name`,`chongwulingyang_types`,`chongwulingyang_photo`,`jieshu_types`,`chongwulingyang_content`,`create_time`) values (1,'标题1',1,'http://localhost:8080/chongwulingyangxitong/upload/1641968329825.jpg',1,'<p><span style=\"color: rgb(96, 98, 102);\">宠物详情1</span></p>','2022-01-12 14:18:55'),(2,'标题2',2,'http://localhost:8080/chongwulingyangxitong/upload/1641968380264.jpg',1,'<p><span style=\"color: rgb(96, 98, 102);\">宠物详情2</span></p>','2022-01-12 14:19:45');

/*Table structure for table `chongwulingyangshenhe` */

DROP TABLE IF EXISTS `chongwulingyangshenhe`;

CREATE TABLE `chongwulingyangshenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwulingyang_id` int(11) DEFAULT NULL COMMENT '宠物领养',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '领养用户',
  `chongwurenlingshenhe_text` text COMMENT '认领凭据',
  `chongwulingyangshenhe_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='宠物领养审核';

/*Data for the table `chongwulingyangshenhe` */

insert  into `chongwulingyangshenhe`(`id`,`chongwulingyang_id`,`yonghu_id`,`chongwurenlingshenhe_text`,`chongwulingyangshenhe_yesno_types`,`create_time`) values (15,2,1,'认领理由1',2,'2022-01-12 16:23:45'),(16,1,3,'认领的理由1111111',2,'2022-01-12 17:22:48');

/*Table structure for table `chongwurenling` */

DROP TABLE IF EXISTS `chongwurenling`;

CREATE TABLE `chongwurenling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwurenling_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111',
  `chongwulingyang_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `chongwurenling_photo` varchar(200) DEFAULT NULL COMMENT '宠物图片',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '发布用户',
  `jieshu_types` int(11) DEFAULT NULL COMMENT '是否找到主人',
  `chongwurenling_content` text COMMENT '宠物详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='宠物认领';

/*Data for the table `chongwurenling` */

insert  into `chongwurenling`(`id`,`chongwurenling_name`,`chongwulingyang_types`,`chongwurenling_photo`,`yonghu_id`,`jieshu_types`,`chongwurenling_content`,`create_time`) values (1,'标题1',1,'http://localhost:8080/chongwulingyangxitong/upload/1641968687829.webp',1,1,'<p><span style=\"color: rgb(96, 98, 102);\">宠物详情1</span></p>','2022-01-12 14:24:57');

/*Table structure for table `chongwurenlingshenhe` */

DROP TABLE IF EXISTS `chongwurenlingshenhe`;

CREATE TABLE `chongwurenlingshenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwurenling_id` int(11) DEFAULT NULL COMMENT '宠物认领',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '认领用户',
  `chongwurenlingshenhe_text` text COMMENT '认领凭据',
  `chongwurenlingshenhe_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宠物认领审核';

/*Data for the table `chongwurenlingshenhe` */

insert  into `chongwurenlingshenhe`(`id`,`chongwurenling_id`,`yonghu_id`,`chongwurenlingshenhe_text`,`chongwurenlingshenhe_yesno_types`,`create_time`) values (3,1,3,'填写自己的认领请求信息 ',2,'2022-01-12 17:20:49');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/chongwulingyangxitong/upload/1641969286481.jpg'),(2,'picture2','http://localhost:8080/chongwulingyangxitong/upload/1641969293056.jpg'),(3,'picture3','http://localhost:8080/chongwulingyangxitong/upload/1641969300004.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-01-12 13:14:41'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-01-12 13:14:41'),(67,'jiaoxueshipin_types','视频类型名称',1,'视频类型1',NULL,NULL,'2022-01-12 13:14:41'),(68,'jiaoxueshipin_types','视频类型名称',2,'视频类型2',NULL,NULL,'2022-01-12 13:14:41'),(69,'jieshu_types','是否',1,'是',NULL,NULL,'2022-01-12 13:14:41'),(70,'jieshu_types','是否',2,'否',NULL,NULL,'2022-01-12 13:14:41'),(71,'chongwurenlingshenhe_yesno_types','申请状态',1,'未审核',NULL,NULL,'2022-01-12 13:14:41'),(72,'chongwurenlingshenhe_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-01-12 13:14:41'),(73,'chongwurenlingshenhe_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-01-12 13:14:41'),(74,'chongwulingyangshenhe_yesno_types','申请状态',1,'未审核',NULL,NULL,'2022-01-12 13:14:41'),(75,'chongwulingyangshenhe_yesno_types','申请状态',2,'通过',NULL,NULL,'2022-01-12 13:14:41'),(76,'chongwulingyangshenhe_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-01-12 13:14:41'),(77,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-12 13:14:41'),(78,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-12 13:14:41'),(79,'jiaoxueshipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-01-12 13:14:41'),(80,'jiaoxueshipin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-01-12 13:14:41'),(81,'jiaoxueshipin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-01-12 13:14:41'),(82,'chongwulingyang_types','宠物类型名称',1,'宠物类型1',NULL,NULL,NULL),(83,'chongwulingyang_types','宠物类型名称',2,'宠物类型2',NULL,NULL,NULL);

/*Table structure for table `ganxiexin` */

DROP TABLE IF EXISTS `ganxiexin`;

CREATE TABLE `ganxiexin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ganxiexin_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '发布用户',
  `ganxiexin_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='感谢信';

/*Data for the table `ganxiexin` */

insert  into `ganxiexin`(`id`,`ganxiexin_name`,`yonghu_id`,`ganxiexin_content`,`create_time`) values (3,'感谢信1',1,'<p><span style=\"color: rgb(96, 98, 102);\">内容1</span></p>','2022-01-12 14:32:10'),(4,'感谢信2',2,'<p><span style=\"color: rgb(96, 98, 102);\">内容2</span></p>','2022-01-12 14:32:23');

/*Table structure for table `jiaoxueshipin` */

DROP TABLE IF EXISTS `jiaoxueshipin`;

CREATE TABLE `jiaoxueshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxueshipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题  Search111',
  `jiaoxueshipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `jiaoxueshipin_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoxueshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(111) DEFAULT NULL COMMENT '赞',
  `cai_number` int(111) DEFAULT NULL COMMENT '踩',
  `jiaoxueshipin_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教学视频';

/*Data for the table `jiaoxueshipin` */

insert  into `jiaoxueshipin`(`id`,`jiaoxueshipin_name`,`jiaoxueshipin_types`,`jiaoxueshipin_photo`,`jiaoxueshipin_video`,`zan_number`,`cai_number`,`jiaoxueshipin_content`,`create_time`) values (1,'宠物喂养1',1,'http://localhost:8080/chongwulingyangxitong/upload/1641968868783.jpg','http://localhost:8080/chongwulingyangxitong/upload/1641968873333.mp4',0,0,'<p><span style=\"color: rgb(96, 98, 102);\"><img src=\"http://localhost:8080/chongwulingyangxitong/upload/1641969081294.jpg\">详情1</span></p>','2022-01-12 14:28:03'),(2,'宠物喂养2',2,'http://localhost:8080/chongwulingyangxitong/upload/1641969060215.jpg','http://localhost:8080/chongwulingyangxitong/upload/1641969063680.mp4',2,1,'<p><span style=\"color: rgb(96, 98, 102);\"><img src=\"http://localhost:8080/chongwulingyangxitong/upload/1641969089450.jpg\">详情2</span></p>','2022-01-12 14:31:09');

/*Table structure for table `jiaoxueshipin_collection` */

DROP TABLE IF EXISTS `jiaoxueshipin_collection`;

CREATE TABLE `jiaoxueshipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxueshipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoxueshipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='视频收藏';

/*Data for the table `jiaoxueshipin_collection` */

insert  into `jiaoxueshipin_collection`(`id`,`jiaoxueshipin_id`,`yonghu_id`,`jiaoxueshipin_collection_types`,`insert_time`,`create_time`) values (114,1,1,1,'2022-01-12 16:13:59','2022-01-12 16:13:59'),(124,2,3,2,'2022-01-12 17:24:26','2022-01-12 17:24:26'),(125,2,3,3,'2022-01-12 17:24:27','2022-01-12 17:24:27'),(126,2,3,1,'2022-01-12 17:24:31','2022-01-12 17:24:31');

/*Table structure for table `jiaoxueshipin_liuyan` */

DROP TABLE IF EXISTS `jiaoxueshipin_liuyan`;

CREATE TABLE `jiaoxueshipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoxueshipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoxueshipin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='视频留言';

/*Data for the table `jiaoxueshipin_liuyan` */

insert  into `jiaoxueshipin_liuyan`(`id`,`jiaoxueshipin_id`,`yonghu_id`,`jiaoxueshipin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'123',NULL,'2022-01-12 16:14:16',NULL,'2022-01-12 16:14:16'),(2,1,3,'留眼','33333333','2022-01-12 17:24:04','2022-01-12 17:26:12','2022-01-12 17:19:53');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告名称1',1,'http://localhost:8080/chongwulingyangxitong/upload/1641969156455.jpg','2022-01-12 14:32:40','<p><span style=\"color: rgb(96, 98, 102);\">公告详情1</span></p>','2022-01-12 14:32:40'),(4,'公告名称2',2,'http://localhost:8080/chongwulingyangxitong/upload/1641969166558.jpg','2022-01-12 14:32:54','<p><span style=\"color: rgb(96, 98, 102);\">公告详情2</span></p>','2022-01-12 14:32:54');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','7utr9p5b4g5j5bwpk8s2qz0ht5f8s9sp','2022-01-12 14:10:50','2022-01-12 18:25:02'),(2,1,'111','yonghu','用户','8asmlywzxu58h2cww1sjdonvvyabmzp1','2022-01-12 14:36:59','2022-01-12 18:33:38'),(3,2,'222','yonghu','用户','qetsrxwiwm0foav8h6b15k5htcg7fjbx','2022-01-12 16:57:01','2022-01-12 18:17:53'),(4,3,'123','yonghu','用户','o9iidxtcpqgbg95o0he6844pc68eq3xn','2022-01-12 17:19:59','2022-01-12 18:32:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '个人地址',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_address`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410884196811211111','15511221136','个人地址1','http://localhost:8080/chongwulingyangxitong/upload/1641968458525.jpg','2022-01-12 14:21:00'),(2,'222','123456',' 用户2',2,'410881199911214111','17548454847','个人地址2','http://localhost:8080/chongwulingyangxitong/upload/1641968522041.jpg','2022-01-12 14:22:36'),(3,'123','123456','用户123',2,'410887199911211111','13311133132','个人地址3','http://localhost:8080/chongwulingyangxitong/upload/1641979221967.jpg','2022-01-12 17:19:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

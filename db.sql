/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - naichadianguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`naichadianguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `naichadianguanlixitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617694733715 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1615605468780,'2021-03-13 11:17:48',1615339905628,'河南省郑州市管城回族区北下街街道北顺城街36号中原明珠广场','wang','17703789898','否'),(1615607168264,'2021-03-13 11:46:07',1615606983411,'河南省郑州市金水区经八路街道中州索克影城文化路5号院','张99','17703789999','是'),(1615612368138,'2021-03-13 13:12:47',1615612231851,'河南省郑州市金水区经八路街道文化路5号院','zhang7','17703786967','是'),(1617692865175,'2021-04-06 15:07:45',1614430386281,'河南省郑州市二七区解放路街道金博大城C座金博大城D座','张1','17703786969','是'),(1617694733714,'2021-04-06 15:38:53',1615339905628,'河南省郑州市金水区经八路街道西里路16号','张333','17703786969','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617247364248 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1617247364247,'2021-04-01 11:22:43','shangpinxinxi',1614430386281,1615601614200,'唇膏2号','http://localhost:8080/caizhuangshangcheng/upload/1615604712585.jpg',1,70,66);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (22,'picture2','http://localhost:8080/naichadianguanlixitong/upload/1617691310594.jpg'),(23,'picture2','http://localhost:8080/naichadianguanlixitong/upload/1617691318338.jpg'),(24,'picture2','http://localhost:8080/naichadianguanlixitong/upload/1617694274127.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617691886220 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1615600825605,'2021-03-13 10:00:25',1615600031356,1614430386281,'87878',NULL),(1615612075810,'2021-03-13 13:07:55',1615601614200,1615606983411,'9898',NULL),(1617691886219,'2021-04-06 14:51:25',1617690201563,1614430386281,'2222',NULL);

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (38,1615339905628,1615601614200,'使用',1,'2021-03-13 11:18:13','2021-03-13 11:18:13'),(39,1615339905628,1615601614200,'添加',3,'2021-03-13 11:18:13','2021-03-13 11:18:13'),(40,1615606983411,1615601614200,'添加',6,'2021-03-13 11:47:02','2021-03-13 11:47:03'),(41,1615606983411,1615601666986,'使用',6,'2021-03-13 11:47:56','2021-03-13 11:47:56'),(42,1615606983411,1615601666986,'添加',10,'2021-03-13 11:47:56','2021-03-13 11:47:56'),(43,1615612231851,1615601866792,'添加',18,'2021-03-13 13:13:51','2021-03-13 13:13:52'),(44,1615612231851,1615600031356,'添加',10,'2021-03-13 13:14:21','2021-03-13 13:14:22'),(45,1615612231851,1615600031356,'使用',18,'2021-03-13 13:14:21','2021-03-13 13:14:22'),(46,1615612231851,1615601614200,'添加',6,'2021-03-13 13:18:03','2021-03-13 13:18:03'),(47,1614430386281,1617690201563,'添加',2,'2021-04-06 15:08:53','2021-04-06 15:08:53'),(48,1615339905628,1617690201563,'添加',2,'2021-04-06 15:33:40','2021-04-06 15:33:40');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617694664919 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1617692002088,'2021-04-06 14:53:21',1614430386281,'a2','三十三','回复1'),(1617694242144,'2021-04-06 15:30:41',1615339905628,'a3','9999','777'),(1617694664918,'2021-04-06 15:37:44',1615339905628,'a3','99',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616758970541 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-09 22:39:58','新闻标题1','http://localhost:8080/caizhuangshangcheng/upload/news_picture1.jpg','内容1'),(82,'2021-03-09 22:39:58','新闻标题2','http://localhost:8080/caizhuangshangcheng/upload/news_picture2.jpg','内容2'),(83,'2021-03-09 22:39:58','新闻标题3','http://localhost:8080/caizhuangshangcheng/upload/news_picture3.jpg','内容3'),(84,'2021-03-09 22:39:58','新闻标题4','http://localhost:8080/caizhuangshangcheng/upload/news_picture4.jpg','内容4'),(85,'2021-03-09 22:39:58','新闻标题5','http://localhost:8080/caizhuangshangcheng/upload/news_picture5.jpg','内容5'),(1616758970540,'2021-03-26 19:42:49','新闻6','http://localhost:8080/caizhuangshangcheng/upload/1616758965552.jpg','新闻内容6\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617694420313 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1617692934310,'2021-04-06 15:08:53','2021461585328433732','shangpinxinxi',1614430386281,1617690201563,'娜露可日式奶茶','http://localhost:8080/naichadianguanlixitong/upload/1617690182559.webp',2,50,15,100,30,1,'已支付','河南省郑州市二七区解放路街道金博大城C座金博大城D座'),(1617694420312,'2021-04-06 15:33:40','20214615333986097632','shangpinxinxi',1615339905628,1617690201563,'娜露可日式奶茶','http://localhost:8080/naichadianguanlixitong/upload/1617690182559.webp',2,50,15,100,30,1,'已支付','河南省郑州市管城回族区北下街街道北顺城街36号中原明珠广场');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617693669453 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1617689559765,'2021-04-06 14:12:39','西藏酥油茶'),(1617689569016,'2021-04-06 14:12:48','台式奶茶'),(1617689576560,'2021-04-06 14:12:56','港式奶茶'),(1617689591161,'2021-04-06 14:13:11','美式奶茶'),(1617693669452,'2021-04-06 15:21:08','奶茶分类9');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617694164216 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1617690103350,'2021-04-06 14:21:43','1617690041','阿萨姆奶茶','西藏酥油茶','100','阿萨姆','大','111111111111\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690073370.webp','2021-04-06 15:25:49',4,100,10,1,1),(1617690201563,'2021-04-06 14:23:20','1617690138','娜露可日式奶茶','台式奶茶','96','娜露可','大','撒大大大萨达阿斯顿撒是的阿萨德奥迪as打\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690182559.webp','2021-04-06 15:34:54',12,50,15,1,1),(1617690252426,'2021-04-06 14:24:12','1617690205','coco奶茶','西藏酥油茶','20','coco','大','硕大的撒\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690237078.webp','2021-04-06 15:01:59',3,30,8,1,1),(1617690302645,'2021-04-06 14:25:02','1617690257','烧仙草奶茶','美式奶茶','50','烧仙草','大','是大大说 萨达as\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690288842.webp',NULL,0,12,8,1,1),(1617690350149,'2021-04-06 14:25:50','1617690306','黑糖珍珠豆奶茶','美式奶茶','100','喜茶','大','撒打算 是的ad\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690339327.webp',NULL,0,10,8,1,1),(1617690415317,'2021-04-06 14:26:54','1617690362','书亦烧仙草奶茶','港式奶茶','66','书亦','大','啥大厦撒旦法\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690397780.webp',NULL,0,15,8,1,1),(1617690470863,'2021-04-06 14:27:50','1617690425','芝芝莓莓奶茶','台式奶茶','100','芝芝莓莓','中','撒范德萨大萨达发送\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617690455635.webp',NULL,0,15,6,1,1),(1617694164215,'2021-04-06 15:29:23','1617694112','烧仙草果冻奶茶','西藏酥油茶','64','烧仙草','大','硕大的撒\r\n','http://localhost:8080/naichadianguanlixitong/upload/1617694124652.webp','2021-04-06 15:30:14',2,10,9,1,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1370604798379593730 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1370604798379593729,'202131313142144377714','质量不好','2021-03-13 13:17:03',1,1,'正品','2021-03-13 13:17:28','2021-03-13 13:17:03');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617694473680 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615612696593,'2021-03-13 13:18:16',1615612231851,1615601666986,'shangpinxinxi','唇膏3','http://localhost:8080/caizhuangshangcheng/upload/1615604703017.jpg'),(1617692970694,'2021-04-06 15:09:30',1614430386281,1617690201563,'shangpinxinxi','娜露可日式奶茶','http://localhost:8080/naichadianguanlixitong/upload/1617690182559.webp'),(1617694473679,'2021-04-06 15:34:33',1615339905628,1617690201563,'shangpinxinxi','娜露可日式奶茶','http://localhost:8080/naichadianguanlixitong/upload/1617690182559.webp');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'admin','users','管理员','cjkgqfiaiyb7i67get6enf8qfje08urp','2021-03-13 09:42:19','2021-04-06 16:19:48'),(10,1614430386281,'a2','yonghu','用户','uo11waeemznl07fufnsx6accgx01vxdq','2021-03-13 09:47:59','2021-04-06 15:51:18'),(11,1615339905628,'a3','yonghu','用户','m659lyyki6r622mxchdshdvzcdxf9d71','2021-03-13 11:02:07','2021-04-06 16:37:40'),(12,1615606135807,'a8','yonghu','用户','8sj25d8rn6j8aq1wvjjpkhrzaikh6jab','2021-03-13 11:29:02','2021-03-13 12:29:02'),(13,1615606983411,'a6','yonghu','用户','amw3b3ps83n1j6i8d7x875nkbxspweg8','2021-03-13 11:43:14','2021-03-13 14:07:46'),(14,1615612231851,'a7','yonghu','用户','cecxrcw0nr5hmopknlvu1ptw64ycrdhr','2021-03-13 13:10:46','2021-03-13 14:29:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617693622426 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a22','123456','男','13823888883','229992@qq.ccom',1256,114),(1614431342348,'2021-02-27 21:09:02','a4','a4','123456','男','a41','22850@qq.com',98,52),(1615339905628,'2021-03-10 09:31:45','a3','a3333','123456','男','13823888883','77389000222@qq.com',1910,5),(1615605788598,'2021-03-13 11:23:08','a5','张5','123456','女','17703786969','2@qq.ccom',0,0),(1615606983411,'2021-03-13 11:43:03','a6','张6','123456','男','13823888886','2@qq.ccom',814,10),(1615612231851,'2021-03-13 13:10:31','a7','张7','123456','男','17703786977','2@qq.ccom',536,16),(1617693622425,'2021-04-06 15:20:22','a9','张9','123456','男','13823888889','2@qq.ccom',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

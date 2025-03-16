-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm1m341
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536937239 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (31,'2021-03-12 07:55:08','班级1','教师姓名1','性别1','联系电话1'),(32,'2021-03-12 07:55:08','班级2','教师姓名2','性别2','联系电话2'),(33,'2021-03-12 07:55:08','班级3','教师姓名3','性别3','联系电话3'),(34,'2021-03-12 07:55:08','班级4','教师姓名4','性别4','联系电话4'),(35,'2021-03-12 07:55:08','班级5','教师姓名5','性别5','联系电话5'),(36,'2021-03-12 07:55:08','班级6','教师姓名6','性别6','联系电话6'),(1615536937238,'2021-03-12 08:15:36','二班','教师姓名1','男','13823888881');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm1m341/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm1m341/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm1m341/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxinxi`
--

DROP TABLE IF EXISTS `discusshuodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536778245 DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxinxi`
--

LOCK TABLES `discusshuodongxinxi` WRITE;
/*!40000 ALTER TABLE `discusshuodongxinxi` DISABLE KEYS */;
INSERT INTO `discusshuodongxinxi` VALUES (131,'2021-03-12 07:55:08',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-12 07:55:08',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-12 07:55:08',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-12 07:55:08',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-12 07:55:08',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-12 07:55:08',6,6,'用户名6','评论内容6','回复内容6'),(1615536778244,'2021-03-12 08:12:57',93,1615536735480,NULL,'好123',NULL);
/*!40000 ALTER TABLE `discusshuodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiucanxinxi`
--

DROP TABLE IF EXISTS `discussjiucanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiucanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536794126 DEFAULT CHARSET=utf8 COMMENT='就餐信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiucanxinxi`
--

LOCK TABLES `discussjiucanxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiucanxinxi` DISABLE KEYS */;
INSERT INTO `discussjiucanxinxi` VALUES (141,'2021-03-12 07:55:08',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-12 07:55:08',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-12 07:55:08',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-12 07:55:08',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-12 07:55:08',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-12 07:55:08',6,6,'用户名6','评论内容6','回复内容6'),(1615536794125,'2021-03-12 08:13:14',102,1615536735480,NULL,'好33',NULL);
/*!40000 ALTER TABLE `discussjiucanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyoueryuanxinxi`
--

DROP TABLE IF EXISTS `discussyoueryuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyoueryuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536759719 DEFAULT CHARSET=utf8 COMMENT='幼儿园信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyoueryuanxinxi`
--

LOCK TABLES `discussyoueryuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussyoueryuanxinxi` DISABLE KEYS */;
INSERT INTO `discussyoueryuanxinxi` VALUES (121,'2021-03-12 07:55:08',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-12 07:55:08',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-12 07:55:08',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-12 07:55:08',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-12 07:55:08',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-12 07:55:08',6,6,'用户名6','评论内容6','回复内容6'),(1615536759718,'2021-03-12 08:12:39',52,1615536735480,NULL,'号',NULL);
/*!40000 ALTER TABLE `discussyoueryuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) NOT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `huodongdizhi` varchar(200) DEFAULT NULL COMMENT '活动地址',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongbianhao` (`huodongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615537098846 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (91,'2021-03-12 07:55:08','活动编号1','活动名称1','活动内容1','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian1.jpg','活动地址1','2021-03-12',1,1),(92,'2021-03-12 07:55:08','活动编号2','活动名称2','活动内容2','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian2.jpg','活动地址2','2021-03-12',2,2),(93,'2021-03-12 07:55:08','活动编号3','活动名称3','活动内容3','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian3.jpg','活动地址3','2021-03-12',4,4),(94,'2021-03-12 07:55:08','活动编号4','活动名称4','活动内容4','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian4.jpg','活动地址4','2021-03-12',4,4),(95,'2021-03-12 07:55:08','活动编号5','活动名称5','活动内容5','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian5.jpg','活动地址5','2021-03-12',5,5),(96,'2021-03-12 07:55:08','活动编号6','活动名称6','活动内容6','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian6.jpg','活动地址6','2021-03-12',6,6),(1615537098845,'2021-03-12 08:18:18','123456','户外活动','散步','http://localhost:8080/jspm1m341/upload/1615537088438.jpg','体育馆','2021-02-06',0,0);
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujizhanghao` varchar(200) DEFAULT NULL COMMENT '手机账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `jiaofeixiangmu` varchar(200) NOT NULL COMMENT '缴费项目',
  `jiaofeijine` int(11) DEFAULT NULL COMMENT '缴费金额',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536922765 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (41,'2021-03-12 07:55:08','学号1','学生姓名1','性别1','班级1','手机账号1','家长姓名1','缴费项目1',1,'2021-03-12','未支付'),(42,'2021-03-12 07:55:08','学号2','学生姓名2','性别2','班级2','手机账号2','家长姓名2','缴费项目2',2,'2021-03-12','未支付'),(43,'2021-03-12 07:55:08','学号3','学生姓名3','性别3','班级3','手机账号3','家长姓名3','缴费项目3',3,'2021-03-12','未支付'),(44,'2021-03-12 07:55:08','学号4','学生姓名4','性别4','班级4','手机账号4','家长姓名4','缴费项目4',4,'2021-03-12','未支付'),(45,'2021-03-12 07:55:08','学号5','学生姓名5','性别5','班级5','手机账号5','家长姓名5','缴费项目5',5,'2021-03-12','未支付'),(46,'2021-03-12 07:55:08','学号6','学生姓名6','性别6','班级6','手机账号6','家长姓名6','缴费项目6',6,'2021-03-12','未支付'),(1615536922764,'2021-03-12 08:15:22','123','张四','女','班级1','12222222222','张三','学费',1000,'2021-02-04','已支付');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshixinxi`
--

DROP TABLE IF EXISTS `jiaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoxuenianling` int(11) DEFAULT NULL COMMENT '教学年龄',
  `jiaoxuezhuanye` varchar(200) DEFAULT NULL COMMENT '教学专业',
  `huoderongyu` longtext COMMENT '获得荣誉',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615537043408 DEFAULT CHARSET=utf8 COMMENT='教师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshixinxi`
--

LOCK TABLES `jiaoshixinxi` WRITE;
/*!40000 ALTER TABLE `jiaoshixinxi` DISABLE KEYS */;
INSERT INTO `jiaoshixinxi` VALUES (61,'2021-03-12 07:55:08','教师姓名1','男','13823888881',1,'教学专业1','获得荣誉1','http://localhost:8080/jspm1m341/upload/jiaoshixinxi_xiangpian1.jpg','2021-03-12'),(62,'2021-03-12 07:55:08','教师姓名2','男','13823888882',2,'教学专业2','获得荣誉2','http://localhost:8080/jspm1m341/upload/jiaoshixinxi_xiangpian2.jpg','2021-03-12'),(63,'2021-03-12 07:55:08','教师姓名3','男','13823888883',3,'教学专业3','获得荣誉3','http://localhost:8080/jspm1m341/upload/jiaoshixinxi_xiangpian3.jpg','2021-03-12'),(64,'2021-03-12 07:55:08','教师姓名4','男','13823888884',4,'教学专业4','获得荣誉4','http://localhost:8080/jspm1m341/upload/jiaoshixinxi_xiangpian4.jpg','2021-03-12'),(65,'2021-03-12 07:55:08','教师姓名5','男','13823888885',5,'教学专业5','获得荣誉5','http://localhost:8080/jspm1m341/upload/jiaoshixinxi_xiangpian5.jpg','2021-03-12'),(66,'2021-03-12 07:55:08','教师姓名6','男','13823888886',6,'教学专业6','获得荣誉6','http://localhost:8080/jspm1m341/upload/jiaoshixinxi_xiangpian6.jpg','2021-03-12'),(1615537043407,'2021-03-12 08:17:22','网二','男','16622235214',10,'语文','各种大奖','http://localhost:8080/jspm1m341/upload/1615537038287.png','2021-02-06');
/*!40000 ALTER TABLE `jiaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiucanxinxi`
--

DROP TABLE IF EXISTS `jiucanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiucanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `zaocancaishi` varchar(200) NOT NULL COMMENT '早餐菜式',
  `zaocanyuancailiao` longtext COMMENT '早餐原材料',
  `wucancaishi` varchar(200) NOT NULL COMMENT '午餐菜式',
  `wucanyuancailiao` longtext COMMENT '午餐原材料',
  `wancancaishi` varchar(200) NOT NULL COMMENT '晚餐菜式',
  `wancanyuancailiao` longtext COMMENT '晚餐原材料',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615537179922 DEFAULT CHARSET=utf8 COMMENT='就餐信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiucanxinxi`
--

LOCK TABLES `jiucanxinxi` WRITE;
/*!40000 ALTER TABLE `jiucanxinxi` DISABLE KEYS */;
INSERT INTO `jiucanxinxi` VALUES (101,'2021-03-12 07:55:08','信息编号1','早餐菜式1','早餐原材料1','午餐菜式1','午餐原材料1','晚餐菜式1','晚餐原材料1','http://localhost:8080/jspm1m341/upload/jiucanxinxi_xiangguantupian1.jpg','2021-03-12',1,1),(102,'2021-03-12 07:55:08','信息编号2','早餐菜式2','早餐原材料2','午餐菜式2','午餐原材料2','晚餐菜式2','晚餐原材料2','http://localhost:8080/jspm1m341/upload/jiucanxinxi_xiangguantupian2.jpg','2021-03-12',3,3),(103,'2021-03-12 07:55:08','信息编号3','早餐菜式3','早餐原材料3','午餐菜式3','午餐原材料3','晚餐菜式3','晚餐原材料3','http://localhost:8080/jspm1m341/upload/jiucanxinxi_xiangguantupian3.jpg','2021-03-12',3,3),(104,'2021-03-12 07:55:08','信息编号4','早餐菜式4','早餐原材料4','午餐菜式4','午餐原材料4','晚餐菜式4','晚餐原材料4','http://localhost:8080/jspm1m341/upload/jiucanxinxi_xiangguantupian4.jpg','2021-03-12',4,4),(105,'2021-03-12 07:55:08','信息编号5','早餐菜式5','早餐原材料5','午餐菜式5','午餐原材料5','晚餐菜式5','晚餐原材料5','http://localhost:8080/jspm1m341/upload/jiucanxinxi_xiangguantupian5.jpg','2021-03-12',5,5),(106,'2021-03-12 07:55:08','信息编号6','早餐菜式6','早餐原材料6','午餐菜式6','午餐原材料6','晚餐菜式6','晚餐原材料6','http://localhost:8080/jspm1m341/upload/jiucanxinxi_xiangguantupian6.jpg','2021-03-12',6,6),(1615537179921,'2021-03-12 08:19:38','1615537025','面包','面粉富含各自123','馒头','馒头123','烤肉','烤肉123','http://localhost:8080/jspm1m341/upload/1615537175350.jpg','2021-02-05',0,0);
/*!40000 ALTER TABLE `jiucanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqinshenqing`
--

DROP TABLE IF EXISTS `kaoqinshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqinshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinbianhao` varchar(200) DEFAULT NULL COMMENT '考勤编号',
  `kaoqinxiangmu` varchar(200) DEFAULT NULL COMMENT '考勤项目',
  `kaoqinneirong` varchar(200) DEFAULT NULL COMMENT '考勤内容',
  `shoujizhanghao` varchar(200) DEFAULT NULL COMMENT '手机账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `kaoqinzhuangtai` varchar(200) DEFAULT NULL COMMENT '考勤状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536863835 DEFAULT CHARSET=utf8 COMMENT='考勤申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqinshenqing`
--

LOCK TABLES `kaoqinshenqing` WRITE;
/*!40000 ALTER TABLE `kaoqinshenqing` DISABLE KEYS */;
INSERT INTO `kaoqinshenqing` VALUES (81,'2021-03-12 07:55:08','考勤编号1','考勤项目1','考勤内容1','手机账号1','家长姓名1','已考勤','是',''),(82,'2021-03-12 07:55:08','考勤编号2','考勤项目2','考勤内容2','手机账号2','家长姓名2','已考勤','是',''),(83,'2021-03-12 07:55:08','考勤编号3','考勤项目3','考勤内容3','手机账号3','家长姓名3','已考勤','是',''),(84,'2021-03-12 07:55:08','考勤编号4','考勤项目4','考勤内容4','手机账号4','家长姓名4','已考勤','是',''),(85,'2021-03-12 07:55:08','考勤编号5','考勤项目5','考勤内容5','手机账号5','家长姓名5','已考勤','是',''),(86,'2021-03-12 07:55:08','考勤编号6','考勤项目6','考勤内容6','手机账号6','家长姓名6','已考勤','是',''),(1615536863834,'2021-03-12 08:14:23','考勤编号6','考勤项目6','考勤内容6','12222222222','张三','已考勤','否',NULL);
/*!40000 ALTER TABLE `kaoqinshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqinxinxi`
--

DROP TABLE IF EXISTS `kaoqinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinbianhao` varchar(200) NOT NULL COMMENT '考勤编号',
  `kaoqinxiangmu` varchar(200) DEFAULT NULL COMMENT '考勤项目',
  `kaoqinneirong` longtext COMMENT '考勤内容',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoqinbianhao` (`kaoqinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615537059305 DEFAULT CHARSET=utf8 COMMENT='考勤信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqinxinxi`
--

LOCK TABLES `kaoqinxinxi` WRITE;
/*!40000 ALTER TABLE `kaoqinxinxi` DISABLE KEYS */;
INSERT INTO `kaoqinxinxi` VALUES (71,'2021-03-12 07:55:08','考勤编号1','考勤项目1','考勤内容1','2021-03-12'),(72,'2021-03-12 07:55:08','考勤编号2','考勤项目2','考勤内容2','2021-03-12'),(73,'2021-03-12 07:55:08','考勤编号3','考勤项目3','考勤内容3','2021-03-12'),(74,'2021-03-12 07:55:08','考勤编号4','考勤项目4','考勤内容4','2021-03-12'),(75,'2021-03-12 07:55:08','考勤编号5','考勤项目5','考勤内容5','2021-03-12'),(76,'2021-03-12 07:55:08','考勤编号6','考勤项目6','考勤内容6','2021-03-12'),(1615537059304,'2021-03-12 08:17:39','1615536969','日常考勤','打卡','2021-02-05');
/*!40000 ALTER TABLE `kaoqinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536772394 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615536755513,'2021-03-12 08:12:35',1615536735480,52,'youeryuanxinxi','名称2','http://localhost:8080/jspm1m341/upload/youeryuanxinxi_xiangguantupian2.jpg'),(1615536772393,'2021-03-12 08:12:51',1615536735480,93,'huodongxinxi','活动名称3','http://localhost:8080/jspm1m341/upload/huodongxinxi_huodongtupian3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','f0dze8enfylrvr853yk6a6xnfsnd6ndq','2021-03-12 08:09:33','2021-03-12 09:14:42'),(2,1615536735480,'12222222222','yonghu','用户','ytexu75qsl3tim89xwuqcu61l2w1gsz4','2021-03-12 08:12:23','2021-03-12 09:20:03');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-12 07:55:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxinxi`
--

DROP TABLE IF EXISTS `xueshengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujizhanghao` varchar(200) DEFAULT NULL COMMENT '手机账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536845529 DEFAULT CHARSET=utf8 COMMENT='学生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxinxi`
--

LOCK TABLES `xueshengxinxi` WRITE;
/*!40000 ALTER TABLE `xueshengxinxi` DISABLE KEYS */;
INSERT INTO `xueshengxinxi` VALUES (21,'2021-03-12 07:55:08','学号1','学生姓名1','男','班级1','手机账号1','家长姓名1','是',''),(22,'2021-03-12 07:55:08','学号2','学生姓名2','男','班级2','手机账号2','家长姓名2','是',''),(23,'2021-03-12 07:55:08','学号3','学生姓名3','男','班级3','手机账号3','家长姓名3','是',''),(24,'2021-03-12 07:55:08','学号4','学生姓名4','男','班级4','手机账号4','家长姓名4','是',''),(25,'2021-03-12 07:55:08','学号5','学生姓名5','男','班级5','手机账号5','家长姓名5','是',''),(26,'2021-03-12 07:55:08','学号6','学生姓名6','男','班级6','手机账号6','家长姓名6','是',''),(1615536845528,'2021-03-12 08:14:04','123','张四','女','班级1','12222222222','张三','是','');
/*!40000 ALTER TABLE `xueshengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoujizhanghao` varchar(200) NOT NULL COMMENT '手机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiazhangxingming` varchar(200) NOT NULL COMMENT '家长姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shoujizhanghao` (`shoujizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536735481 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-12 07:55:08','用户1','123456','家长姓名1','男',1,'440300199101010001','http://localhost:8080/jspm1m341/upload/yonghu_xiangpian1.jpg'),(12,'2021-03-12 07:55:08','用户2','123456','家长姓名2','男',20,'440300199202020002','http://localhost:8080/jspm1m341/upload/yonghu_xiangpian2.jpg'),(14,'2021-03-12 07:55:08','用户4','123456','家长姓名4','男',4,'440300199404040004','http://localhost:8080/jspm1m341/upload/yonghu_xiangpian4.jpg'),(15,'2021-03-12 07:55:08','用户5','123456','家长姓名5','男',5,'440300199505050005','http://localhost:8080/jspm1m341/upload/yonghu_xiangpian5.jpg'),(16,'2021-03-12 07:55:08','用户6','123456','家长姓名6','男',6,'440300199606060006','http://localhost:8080/jspm1m341/upload/yonghu_xiangpian6.jpg'),(1615536735480,'2021-03-12 08:12:15','12222222222','1','张三','男',35,'441563225589654125','http://localhost:8080/jspm1m341/upload/1615536819366.png');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youeryuanxinxi`
--

DROP TABLE IF EXISTS `youeryuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youeryuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `jianjie` longtext COMMENT '简介',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhaoshengrenshu` int(11) DEFAULT NULL COMMENT '招生人数',
  `chuangbanren` varchar(200) DEFAULT NULL COMMENT '创办人',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `chuangjianriqi` date DEFAULT NULL COMMENT '创建日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615536988650 DEFAULT CHARSET=utf8 COMMENT='幼儿园信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youeryuanxinxi`
--

LOCK TABLES `youeryuanxinxi` WRITE;
/*!40000 ALTER TABLE `youeryuanxinxi` DISABLE KEYS */;
INSERT INTO `youeryuanxinxi` VALUES (51,'2021-03-12 07:55:08','信息编号1','名称1','简介1','民营',1,'创办人1','http://localhost:8080/jspm1m341/upload/youeryuanxinxi_xiangguantupian1.jpg','2021-03-12',1,1),(52,'2021-03-12 07:55:08','信息编号2','名称2','简介2','民营',2,'创办人2','http://localhost:8080/jspm1m341/upload/youeryuanxinxi_xiangguantupian2.jpg','2021-03-12',3,3),(53,'2021-03-12 07:55:08','信息编号3','名称3','简介3','民营',3,'创办人3','http://localhost:8080/jspm1m341/upload/youeryuanxinxi_xiangguantupian3.jpg','2021-03-12',3,3),(54,'2021-03-12 07:55:08','信息编号4','名称4','简介4','民营',4,'创办人4','http://localhost:8080/jspm1m341/upload/youeryuanxinxi_xiangguantupian4.jpg','2021-03-12',4,4),(55,'2021-03-12 07:55:08','信息编号5','名称5','简介5','民营',5,'创办人5','http://localhost:8080/jspm1m341/upload/youeryuanxinxi_xiangguantupian5.jpg','2021-03-12',5,5),(1615536988649,'2021-03-12 08:16:27','1615536868','新1122','创建于1122','民营',100,'哈哈','http://localhost:8080/jspm1m341/upload/1615536983610.jpg','2021-02-05',0,0);
/*!40000 ALTER TABLE `youeryuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-13 22:33:10

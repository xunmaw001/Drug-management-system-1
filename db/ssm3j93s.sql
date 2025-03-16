-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm3j93s
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461458762 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-23 00:52:01',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-23 00:52:01',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-23 00:52:01',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-23 00:52:01',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-23 00:52:01',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-23 00:52:01',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616461458761,'2021-03-23 01:04:18',1616461418657,'广东省揭阳市榕城区中山街道大头爱宠水族馆中兴园','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461551404 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm3j93s/upload/1616461112611.jpg'),(2,'picture2','http://localhost:8080/ssm3j93s/upload/1616461121505.jpg'),(3,'picture3','http://localhost:8080/ssm3j93s/upload/1616461324006.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyaopinxinxi`
--

DROP TABLE IF EXISTS `discussyaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461784996 DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyaopinxinxi`
--

LOCK TABLES `discussyaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discussyaopinxinxi` DISABLE KEYS */;
INSERT INTO `discussyaopinxinxi` VALUES (141,'2021-03-23 00:52:01',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-23 00:52:01',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-23 00:52:01',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-23 00:52:01',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-23 00:52:01',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-23 00:52:01',6,6,'用户名6','评论内容6','回复内容6'),(1616461784995,'2021-03-23 01:09:44',1616461284309,1616461418657,'2','efghgj',NULL);
/*!40000 ALTER TABLE `discussyaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461598460 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (131,'2021-03-23 00:52:01',1,'用户名1','留言内容1','回复内容1'),(132,'2021-03-23 00:52:01',2,'用户名2','留言内容2','回复内容2'),(133,'2021-03-23 00:52:01',3,'用户名3','留言内容3','回复内容3'),(134,'2021-03-23 00:52:01',4,'用户名4','留言内容4','回复内容4'),(135,'2021-03-23 00:52:01',5,'用户名5','留言内容5','回复内容5'),(136,'2021-03-23 00:52:01',6,'用户名6','留言内容6','回复内容6'),(1616461598459,'2021-03-23 01:06:38',1616461418657,'2','建议增加药品种类','1');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461312346 DEFAULT CHARSET=utf8 COMMENT='医药指南';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2021-03-23 00:52:01','标题1','简介1','http://localhost:8080/ssm3j93s/upload/news_picture1.jpg','内容1'),(122,'2021-03-23 00:52:01','标题2','简介2','http://localhost:8080/ssm3j93s/upload/1616460911758.jpg','<p>内容2</p>'),(123,'2021-03-23 00:52:01','标题3','简介3','http://localhost:8080/ssm3j93s/upload/1616460921207.jpg','<p>内容3</p>'),(124,'2021-03-23 00:52:01','标题4','简介4','http://localhost:8080/ssm3j93s/upload/1616460946557.jpg','<p>内容4</p>'),(125,'2021-03-23 00:52:01','标题5','简介5','http://localhost:8080/ssm3j93s/upload/news_picture5.jpg','内容5'),(126,'2021-03-23 00:52:01','标题6','简介6','http://localhost:8080/ssm3j93s/upload/1616460933559.jpg','<p>内容6</p>'),(1616461312345,'2021-03-23 01:01:51','药品科普','药品基础知识','http://localhost:8080/ssm3j93s/upload/1616461298340.jpg','<p><img src=\"http://localhost:8080/ssm3j93s/upload/1616461310172.png\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1616461613280 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616461613279,'2021-03-23 01:06:52','2021323965299432930','yaopinxinxi',1616461418657,1616461284309,'氯他雷定片','http://localhost:8080/ssm3j93s/upload/1616461249125.jpg',3,15,15,45,45,1,'已完成','广东省揭阳市榕城区中山街道大头爱宠水族馆中兴园');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1616461554047 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616461554046,'2021-03-23 01:05:53',1616461418657,45,'yaopinxinxi','药品名称5','http://localhost:8080/ssm3j93s/upload/1616460885587.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'员工1','yuangong','员工','h3nfa7ui4apyyx256ltfi1mcpflnjjon','2021-03-23 00:53:27','2021-03-23 01:53:28'),(2,1,'abo','users','管理员','28nxn3wdhrmzeyp6to72eat6o34d7nlv','2021-03-23 00:54:06','2021-03-23 02:10:10'),(3,1616461189001,'1','yuangong','员工','3fhhcn7skxszgduezd07d5j96sz8vfbx','2021-03-23 01:02:11','2021-03-23 02:08:21'),(4,1616461418657,'2','yonghu','用户','teu0d3j8uoohfe3wybx5beiu9crvoi21','2021-03-23 01:03:43','2021-03-23 02:09:24');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-23 00:52:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinchuku`
--

DROP TABLE IF EXISTS `yaopinchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `changjia` varchar(200) DEFAULT NULL COMMENT '厂家',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `chukuriqi` date DEFAULT NULL COMMENT '出库日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461735548 DEFAULT CHARSET=utf8 COMMENT='药品出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinchuku`
--

LOCK TABLES `yaopinchuku` WRITE;
/*!40000 ALTER TABLE `yaopinchuku` DISABLE KEYS */;
INSERT INTO `yaopinchuku` VALUES (61,'2021-03-23 00:52:01','药品名称1','药品类别1','规格1','厂家1',1,'备注1','2021-03-23','员工工号1','员工姓名1'),(62,'2021-03-23 00:52:01','药品名称2','药品类别2','规格2','厂家2',2,'备注2','2021-03-23','员工工号2','员工姓名2'),(63,'2021-03-23 00:52:01','药品名称3','药品类别3','规格3','厂家3',3,'备注3','2021-03-23','员工工号3','员工姓名3'),(64,'2021-03-23 00:52:01','药品名称4','药品类别4','规格4','厂家4',4,'备注4','2021-03-23','员工工号4','员工姓名4'),(65,'2021-03-23 00:52:01','药品名称5','药品类别5','规格5','厂家5',5,'备注5','2021-03-23','员工工号5','员工姓名5'),(66,'2021-03-23 00:52:01','药品名称6','药品类别6','规格6','厂家6',6,'备注6','2021-03-23','员工工号6','员工姓名6'),(1616461714007,'2021-03-23 01:08:33','氯他雷定片','抗过敏药物','12片/盒','仁和',2,'销售出库','2021-03-23','1','张明'),(1616461735547,'2021-03-23 01:08:55','氯他雷定片','抗过敏药物','12片/盒','仁和',1,'销售出库','2021-03-23','1','张明');
/*!40000 ALTER TABLE `yaopinchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinleibie`
--

DROP TABLE IF EXISTS `yaopinleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinleibie` varchar(200) NOT NULL COMMENT '药品类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinleibie` (`yaopinleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461227007 DEFAULT CHARSET=utf8 COMMENT='药品类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinleibie`
--

LOCK TABLES `yaopinleibie` WRITE;
/*!40000 ALTER TABLE `yaopinleibie` DISABLE KEYS */;
INSERT INTO `yaopinleibie` VALUES (31,'2021-03-23 00:52:01','药品类别1'),(32,'2021-03-23 00:52:01','药品类别2'),(33,'2021-03-23 00:52:01','药品类别3'),(34,'2021-03-23 00:52:01','药品类别4'),(35,'2021-03-23 00:52:01','药品类别5'),(36,'2021-03-23 00:52:01','药品类别6'),(1616461202053,'2021-03-23 01:00:01','抗病毒药物'),(1616461210201,'2021-03-23 01:00:09','抗菌药物'),(1616461220963,'2021-03-23 01:00:20','抗过敏药物'),(1616461227006,'2021-03-23 01:00:26','感冒药物');
/*!40000 ALTER TABLE `yaopinleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinruku`
--

DROP TABLE IF EXISTS `yaopinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukudanhao` varchar(200) DEFAULT NULL COMMENT '入库单号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `changjia` varchar(200) DEFAULT NULL COMMENT '厂家',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `rukushijian` date DEFAULT NULL COMMENT '入库时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukudanhao` (`rukudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461352191 DEFAULT CHARSET=utf8 COMMENT='药品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinruku`
--

LOCK TABLES `yaopinruku` WRITE;
/*!40000 ALTER TABLE `yaopinruku` DISABLE KEYS */;
INSERT INTO `yaopinruku` VALUES (51,'2021-03-23 00:52:01','入库单号1','药品名称1','药品类别1','规格1','厂家1',1,'备注1','2021-03-23','员工工号1','员工姓名1'),(52,'2021-03-23 00:52:01','入库单号2','药品名称2','药品类别2','规格2','厂家2',2,'备注2','2021-03-23','员工工号2','员工姓名2'),(53,'2021-03-23 00:52:01','入库单号3','药品名称3','药品类别3','规格3','厂家3',3,'备注3','2021-03-23','员工工号3','员工姓名3'),(54,'2021-03-23 00:52:01','入库单号4','药品名称4','药品类别4','规格4','厂家4',4,'备注4','2021-03-23','员工工号4','员工姓名4'),(55,'2021-03-23 00:52:01','入库单号5','药品名称5','药品类别5','规格5','厂家5',5,'备注5','2021-03-23','员工工号5','员工姓名5'),(56,'2021-03-23 00:52:01','入库单号6','药品名称6','药品类别6','规格6','厂家6',6,'备注6','2021-03-23','员工工号6','员工姓名6'),(1616461352190,'2021-03-23 01:02:31','1616461343621','氯他雷定片','抗过敏药物','12片/盒','仁和',50,'采购入库','2021-03-23','1','张明');
/*!40000 ALTER TABLE `yaopinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `changjia` varchar(200) DEFAULT NULL COMMENT '厂家',
  `youxiaoqi` varchar(200) DEFAULT NULL COMMENT '有效期',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yaopinxiangqing` longtext COMMENT '药品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461284310 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (41,'2021-03-23 00:52:01','药品名称1','药品类别1','http://localhost:8080/ssm3j93s/upload/1616460857783.jpg','规格1','厂家1','有效期1',1,'<p>药品详情1</p>','2021-03-23 08:54:09',2,99.9),(42,'2021-03-23 00:52:01','药品名称2','药品类别2','http://localhost:8080/ssm3j93s/upload/1616460865058.jpg','规格2','厂家2','有效期2',2,'<p>药品详情2</p>','2021-03-23 08:54:21',3,99.9),(43,'2021-03-23 00:52:01','药品名称3','药品类别3','http://localhost:8080/ssm3j93s/upload/1616460873423.jpg','规格3','厂家3','有效期3',3,'<p>药品详情3</p>','2021-03-23 08:54:29',4,99.9),(44,'2021-03-23 00:52:01','药品名称4','药品类别4','http://localhost:8080/ssm3j93s/upload/yaopinxinxi_tupian4.jpg','规格4','厂家4','有效期4',4,'药品详情4','2021-03-23 08:54:37',5,99.9),(45,'2021-03-23 00:52:01','药品名称5','药品类别5','http://localhost:8080/ssm3j93s/upload/1616460885587.jpg','规格5','厂家5','有效期5',5,'<p>药品详情5</p>','2021-03-23 09:06:03',16,99.9),(46,'2021-03-23 00:52:01','药品名称6','药品类别6','http://localhost:8080/ssm3j93s/upload/1616460902787.jpg','规格6','厂家6','有效期6',6,'<p>药品详情6</p>','2021-03-23 08:54:58',8,99.9),(1616461284309,'2021-03-23 01:01:23','氯他雷定片','抗过敏药物','http://localhost:8080/ssm3j93s/upload/1616461249125.jpg','12片/盒','仁和','30个月',97,'<p>氯雷他定（loratadine），是第二代的抗组织胺药物，常用于治疗过敏症状。和第一代抗组织胺药相比，它的一大特性是无瞌睡作用。用于过敏性鼻炎、急性或慢性荨麻疹、过敏性结膜炎、花粉症及其他过敏性皮肤病。</p><p><img src=\"http://localhost:8080/ssm3j93s/upload/1616461281901.jpg\"></p>','2021-03-23 09:09:47',9,15);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461418658 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-23 00:52:00','用户1','123456','姓名1','男','http://localhost:8080/ssm3j93s/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-23 00:52:00','用户2','123456','姓名2','男','http://localhost:8080/ssm3j93s/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-23 00:52:00','用户3','123456','姓名3','男','http://localhost:8080/ssm3j93s/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-23 00:52:00','用户4','123456','姓名4','男','http://localhost:8080/ssm3j93s/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-23 00:52:00','用户5','123456','姓名5','男','http://localhost:8080/ssm3j93s/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-23 00:52:00','用户6','123456','姓名6','男','http://localhost:8080/ssm3j93s/upload/yonghu_touxiang6.jpg','13823888886',100),(1616461418657,'2021-03-23 01:03:38','2','2','陈一','女','http://localhost:8080/ssm3j93s/upload/1616461432941.jpg','12312312312',955);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461189002 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2021-03-23 00:52:00','员工1','123456','员工姓名1','男','http://localhost:8080/ssm3j93s/upload/yuangong_touxiang1.jpg','13823888881','440300199101010001',100),(22,'2021-03-23 00:52:00','员工2','123456','员工姓名2','男','http://localhost:8080/ssm3j93s/upload/yuangong_touxiang2.jpg','13823888882','440300199202020002',100),(23,'2021-03-23 00:52:00','员工3','123456','员工姓名3','男','http://localhost:8080/ssm3j93s/upload/yuangong_touxiang3.jpg','13823888883','440300199303030003',100),(24,'2021-03-23 00:52:00','员工4','123456','员工姓名4','男','http://localhost:8080/ssm3j93s/upload/yuangong_touxiang4.jpg','13823888884','440300199404040004',100),(25,'2021-03-23 00:52:00','员工5','123456','员工姓名5','男','http://localhost:8080/ssm3j93s/upload/yuangong_touxiang5.jpg','13823888885','440300199505050005',100),(26,'2021-03-23 00:52:00','员工6','123456','员工姓名6','男','http://localhost:8080/ssm3j93s/upload/yuangong_touxiang6.jpg','13823888886','440300199606060006',100),(1616461189001,'2021-03-23 00:59:49','1','11','张明','男','http://localhost:8080/ssm3j93s/upload/1616461180181.jpg','12345678978','123456789789456123',0);
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianzixun`
--

DROP TABLE IF EXISTS `zaixianzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zixunneirong` varchar(200) DEFAULT NULL COMMENT '咨询内容',
  `zixunshijian` date DEFAULT NULL COMMENT '咨询时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616461654582 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianzixun`
--

LOCK TABLES `zaixianzixun` WRITE;
/*!40000 ALTER TABLE `zaixianzixun` DISABLE KEYS */;
INSERT INTO `zaixianzixun` VALUES (71,'2021-03-23 00:52:01','标题1','咨询内容1','2021-03-23','用户名1','联系电话1','是',''),(72,'2021-03-23 00:52:01','标题2','咨询内容2','2021-03-23','用户名2','联系电话2','是',''),(73,'2021-03-23 00:52:01','标题3','咨询内容3','2021-03-23','用户名3','联系电话3','是',''),(74,'2021-03-23 00:52:01','标题4','咨询内容4','2021-03-23','用户名4','联系电话4','是',''),(75,'2021-03-23 00:52:01','标题5','咨询内容5','2021-03-23','用户名5','联系电话5','是',''),(76,'2021-03-23 00:52:01','标题6','咨询内容6','2021-03-23','用户名6','联系电话6','是',''),(1616461654581,'2021-03-23 01:07:34','氯他雷定片使用方法','氯他雷定片使用方法','2021-03-23','2','12312312312','是','饭后服用，一天三次');
/*!40000 ALTER TABLE `zaixianzixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-24 11:30:06

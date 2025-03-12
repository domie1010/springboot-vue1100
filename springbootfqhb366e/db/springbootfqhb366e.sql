-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootfqhb366e
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
-- Current Database: `springbootfqhb366e`
--

/*!40000 DROP DATABASE IF EXISTS `springbootfqhb366e`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootfqhb366e` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootfqhb366e`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2024-03-20 08:43:14','关于我们','ABOUT US','<p>当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。</p>','upload/1710924792882.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baogaoleixing`
--

DROP TABLE IF EXISTS `baogaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baogaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baogaoleixing` varchar(200) DEFAULT NULL COMMENT '报告类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='报告类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baogaoleixing`
--

LOCK TABLES `baogaoleixing` WRITE;
/*!40000 ALTER TABLE `baogaoleixing` DISABLE KEYS */;
INSERT INTO `baogaoleixing` VALUES (31,'2024-03-20 08:43:14','报告类型1'),(32,'2024-03-20 08:43:14','报告类型2'),(33,'2024-03-20 08:43:14','报告类型3'),(34,'2024-03-20 08:43:14','报告类型4'),(35,'2024-03-20 08:43:14','报告类型5'),(36,'2024-03-20 08:43:14','报告类型6'),(37,'2024-03-20 08:43:14','报告类型7'),(38,'2024-03-20 08:43:14','报告类型8'),(39,'2024-03-20 08:52:52','类型123');
/*!40000 ALTER TABLE `baogaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baogaoxinxi`
--

DROP TABLE IF EXISTS `baogaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baogaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baogaobianhao` varchar(200) DEFAULT NULL COMMENT '报告编号',
  `baogaomingcheng` varchar(200) DEFAULT NULL COMMENT '报告名称',
  `fengmian` longtext COMMENT '封面',
  `baogaoleixing` varchar(200) DEFAULT NULL COMMENT '报告类型',
  `wenjianfujian` longtext COMMENT '文件附件',
  `baogaoneirong` longtext COMMENT '报告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fuzerenzhanghao` varchar(200) DEFAULT NULL COMMENT '负责人账号',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baogaobianhao` (`baogaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='报告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baogaoxinxi`
--

LOCK TABLES `baogaoxinxi` WRITE;
/*!40000 ALTER TABLE `baogaoxinxi` DISABLE KEYS */;
INSERT INTO `baogaoxinxi` VALUES (41,'2024-03-20 08:43:14','1111111111','报告名称1','upload/baogaoxinxi_fengmian1.jpg,upload/baogaoxinxi_fengmian2.jpg,upload/baogaoxinxi_fengmian3.jpg','报告类型1','','报告内容1','2024-03-20 16:43:14','用户账号1','用户姓名1','负责人账号1','负责人姓名1','是',''),(42,'2024-03-20 08:43:14','2222222222','报告名称2','upload/baogaoxinxi_fengmian2.jpg,upload/baogaoxinxi_fengmian3.jpg,upload/baogaoxinxi_fengmian4.jpg','报告类型2','','报告内容2','2024-03-20 16:43:14','用户账号2','用户姓名2','负责人账号2','负责人姓名2','是',''),(43,'2024-03-20 08:43:14','3333333333','报告名称3','upload/baogaoxinxi_fengmian3.jpg,upload/baogaoxinxi_fengmian4.jpg,upload/baogaoxinxi_fengmian5.jpg','报告类型3','','报告内容3','2024-03-20 16:43:14','用户账号3','用户姓名3','负责人账号3','负责人姓名3','是',''),(44,'2024-03-20 08:43:14','4444444444','报告名称4','upload/baogaoxinxi_fengmian4.jpg,upload/baogaoxinxi_fengmian5.jpg,upload/baogaoxinxi_fengmian6.jpg','报告类型4','','报告内容4','2024-03-20 16:43:14','用户账号4','用户姓名4','负责人账号4','负责人姓名4','是',''),(45,'2024-03-20 08:43:14','5555555555','报告名称5','upload/baogaoxinxi_fengmian5.jpg,upload/baogaoxinxi_fengmian6.jpg,upload/baogaoxinxi_fengmian7.jpg','报告类型5','','报告内容5','2024-03-20 16:43:14','用户账号5','用户姓名5','负责人账号5','负责人姓名5','是',''),(46,'2024-03-20 08:43:14','6666666666','报告名称6','upload/baogaoxinxi_fengmian6.jpg,upload/baogaoxinxi_fengmian7.jpg,upload/baogaoxinxi_fengmian8.jpg','报告类型6','','报告内容6','2024-03-20 16:43:14','用户账号6','用户姓名6','负责人账号6','负责人姓名6','是',''),(47,'2024-03-20 08:43:14','7777777777','报告名称7','upload/baogaoxinxi_fengmian7.jpg,upload/baogaoxinxi_fengmian8.jpg,upload/baogaoxinxi_fengmian9.jpg','报告类型7','','报告内容7','2024-03-20 16:43:14','用户账号7','用户姓名7','负责人账号7','负责人姓名7','是',''),(48,'2024-03-20 08:43:14','8888888888','报告名称8','upload/baogaoxinxi_fengmian8.jpg,upload/baogaoxinxi_fengmian9.jpg,upload/baogaoxinxi_fengmian10.jpg','报告类型8','','报告内容8','2024-03-20 16:43:14','用户账号8','用户姓名8','负责人账号8','负责人姓名8','是',''),(50,'2024-03-20 08:56:51','1710924985341','报告423','upload/1710924997079.png','类型123','upload/1710925006158.doc','报告内容\n报告内容\n报告内容\n','2024-03-20 16:56:25','11','小爱','33','负责人33','是','好的');
/*!40000 ALTER TABLE `baogaoxinxi` ENABLE KEYS */;
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
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuzeren`
--

DROP TABLE IF EXISTS `fuzeren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuzeren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuzerenzhanghao` varchar(200) NOT NULL COMMENT '负责人账号',
  `fuzerenxingming` varchar(200) NOT NULL COMMENT '负责人姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuzerenzhanghao` (`fuzerenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710924763116 DEFAULT CHARSET=utf8 COMMENT='负责人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuzeren`
--

LOCK TABLES `fuzeren` WRITE;
/*!40000 ALTER TABLE `fuzeren` DISABLE KEYS */;
INSERT INTO `fuzeren` VALUES (21,'2024-03-20 08:43:14','负责人账号1','负责人姓名1','123456','13823888881','男','年龄1','upload/fuzeren_touxiang1.jpg'),(22,'2024-03-20 08:43:14','负责人账号2','负责人姓名2','123456','13823888882','男','年龄2','upload/fuzeren_touxiang2.jpg'),(23,'2024-03-20 08:43:14','负责人账号3','负责人姓名3','123456','13823888883','男','年龄3','upload/fuzeren_touxiang3.jpg'),(24,'2024-03-20 08:43:14','负责人账号4','负责人姓名4','123456','13823888884','男','年龄4','upload/fuzeren_touxiang4.jpg'),(25,'2024-03-20 08:43:14','负责人账号5','负责人姓名5','123456','13823888885','男','年龄5','upload/fuzeren_touxiang5.jpg'),(26,'2024-03-20 08:43:14','负责人账号6','负责人姓名6','123456','13823888886','男','年龄6','upload/fuzeren_touxiang6.jpg'),(27,'2024-03-20 08:43:14','负责人账号7','负责人姓名7','123456','13823888887','男','年龄7','upload/fuzeren_touxiang7.jpg'),(28,'2024-03-20 08:43:14','负责人账号8','负责人姓名8','123456','13823888888','男','年龄8','upload/fuzeren_touxiang8.jpg'),(1710924763115,'2024-03-20 08:52:43','33','负责人33','33','15874136980','女','35','upload/1710924761412.png');
/*!40000 ALTER TABLE `fuzeren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongxiangziliao`
--

DROP TABLE IF EXISTS `gongxiangziliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongxiangziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaobianhao` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `ziliaoleixing` varchar(200) DEFAULT NULL COMMENT '资料类型',
  `ziliaofengmian` longtext COMMENT '资料封面',
  `ziliaowenjian` longtext COMMENT '资料文件',
  `ziliaojieshao` longtext COMMENT '资料介绍',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `fuzerenzhanghao` varchar(200) DEFAULT NULL COMMENT '负责人账号',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziliaobianhao` (`ziliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='共享资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongxiangziliao`
--

LOCK TABLES `gongxiangziliao` WRITE;
/*!40000 ALTER TABLE `gongxiangziliao` DISABLE KEYS */;
INSERT INTO `gongxiangziliao` VALUES (61,'2024-03-20 08:43:14','1111111111','资料名称1','资料类型1','upload/gongxiangziliao_ziliaofengmian1.jpg,upload/gongxiangziliao_ziliaofengmian2.jpg,upload/gongxiangziliao_ziliaofengmian3.jpg','','资料介绍1','2024-03-20 16:43:14','负责人账号1','负责人姓名1'),(62,'2024-03-20 08:43:14','2222222222','资料名称2','资料类型2','upload/gongxiangziliao_ziliaofengmian2.jpg,upload/gongxiangziliao_ziliaofengmian3.jpg,upload/gongxiangziliao_ziliaofengmian4.jpg','','资料介绍2','2024-03-20 16:43:14','负责人账号2','负责人姓名2'),(63,'2024-03-20 08:43:14','3333333333','资料名称3','资料类型3','upload/gongxiangziliao_ziliaofengmian3.jpg,upload/gongxiangziliao_ziliaofengmian4.jpg,upload/gongxiangziliao_ziliaofengmian5.jpg','','资料介绍3','2024-03-20 16:43:14','负责人账号3','负责人姓名3'),(64,'2024-03-20 08:43:14','4444444444','资料名称4','资料类型4','upload/gongxiangziliao_ziliaofengmian4.jpg,upload/gongxiangziliao_ziliaofengmian5.jpg,upload/gongxiangziliao_ziliaofengmian6.jpg','','资料介绍4','2024-03-20 16:43:14','负责人账号4','负责人姓名4'),(65,'2024-03-20 08:43:14','5555555555','资料名称5','资料类型5','upload/gongxiangziliao_ziliaofengmian5.jpg,upload/gongxiangziliao_ziliaofengmian6.jpg,upload/gongxiangziliao_ziliaofengmian7.jpg','','资料介绍5','2024-03-20 16:43:14','负责人账号5','负责人姓名5'),(66,'2024-03-20 08:43:14','6666666666','资料名称6','资料类型6','upload/gongxiangziliao_ziliaofengmian6.jpg,upload/gongxiangziliao_ziliaofengmian7.jpg,upload/gongxiangziliao_ziliaofengmian8.jpg','','资料介绍6','2024-03-20 16:43:14','负责人账号6','负责人姓名6'),(67,'2024-03-20 08:43:14','7777777777','资料名称7','资料类型7','upload/gongxiangziliao_ziliaofengmian7.jpg,upload/gongxiangziliao_ziliaofengmian8.jpg,upload/gongxiangziliao_ziliaofengmian9.jpg','','资料介绍7','2024-03-20 16:43:14','负责人账号7','负责人姓名7'),(68,'2024-03-20 08:43:14','8888888888','资料名称8','资料类型8','upload/gongxiangziliao_ziliaofengmian8.jpg,upload/gongxiangziliao_ziliaofengmian9.jpg,upload/gongxiangziliao_ziliaofengmian10.jpg','','资料介绍8','2024-03-20 16:43:14','负责人账号8','负责人姓名8'),(69,'2024-03-20 08:54:59','1710924877861','名称21','类型123','upload/1710924887400.png','upload/1710924895361.doc','资料介绍\n资料介绍\n资料介绍\n','2024-03-20 16:54:37','33','负责人33');
/*!40000 ALTER TABLE `gongxiangziliao` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','4948ta6pu26qzmjy00odgmw9yvx49zhp','2024-03-20 08:51:58','2024-03-20 09:57:32'),(2,1710924741046,'11','yonghu','用户','8ez4v71vpjprrv3tdtbq7kw7tttr7lq2','2024-03-20 08:53:36','2024-03-20 09:56:20'),(3,1710924763115,'33','fuzeren','负责人','f0wyzvcjd5n7s97fhllseckglswvf7tf','2024-03-20 08:54:35','2024-03-20 09:57:12');
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
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
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
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-03-20 08:43:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710924741047 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (12,'2024-03-20 08:43:14','用户账号2','用户姓名2','123456','13823888882','男','年龄2','upload/yonghu_touxiang2.jpg'),(13,'2024-03-20 08:43:14','用户账号3','用户姓名3','123456','13823888883','男','年龄3','upload/yonghu_touxiang3.jpg'),(14,'2024-03-20 08:43:14','用户账号4','用户姓名4','123456','13823888884','男','年龄4','upload/yonghu_touxiang4.jpg'),(15,'2024-03-20 08:43:14','用户账号5','用户姓名5','123456','13823888885','男','年龄5','upload/yonghu_touxiang5.jpg'),(16,'2024-03-20 08:43:14','用户账号6','用户姓名6','123456','13823888886','男','年龄6','upload/yonghu_touxiang6.jpg'),(17,'2024-03-20 08:43:14','用户账号7','用户姓名7','123456','13823888887','男','年龄7','upload/yonghu_touxiang7.jpg'),(18,'2024-03-20 08:43:14','用户账号8','用户姓名8','123456','13823888888','男','年龄8','upload/yonghu_touxiang8.jpg'),(1710924741046,'2024-03-20 08:52:21','11','小爱','11','15878413395','女','25','upload/1710924739999.png');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziliaoleixing`
--

DROP TABLE IF EXISTS `ziliaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziliaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaoleixing` varchar(200) DEFAULT NULL COMMENT '资料类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='资料类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziliaoleixing`
--

LOCK TABLES `ziliaoleixing` WRITE;
/*!40000 ALTER TABLE `ziliaoleixing` DISABLE KEYS */;
INSERT INTO `ziliaoleixing` VALUES (51,'2024-03-20 08:43:14','资料类型1'),(52,'2024-03-20 08:43:14','资料类型2'),(53,'2024-03-20 08:43:14','资料类型3'),(54,'2024-03-20 08:43:14','资料类型4'),(55,'2024-03-20 08:43:14','资料类型5'),(56,'2024-03-20 08:43:14','资料类型6'),(57,'2024-03-20 08:43:14','资料类型7'),(58,'2024-03-20 08:43:14','资料类型8'),(59,'2024-03-20 08:53:02','类型123');
/*!40000 ALTER TABLE `ziliaoleixing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-21 12:46:01

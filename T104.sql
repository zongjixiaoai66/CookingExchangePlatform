/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t104`;
CREATE DATABASE IF NOT EXISTS `t104` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t104`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748755566 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-30 02:02:30', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-30 02:02:30', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-30 02:02:30', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-30 02:02:30', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-30 02:02:30', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-30 02:02:30', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1619748755565, '2021-04-30 02:12:34', 1619748681704, '广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼', '杨洋', '13613512522', '是');

DROP TABLE IF EXISTS `caipufenlei`;
CREATE TABLE IF NOT EXISTS `caipufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipufenlei` varchar(200) NOT NULL COMMENT '菜谱分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipufenlei` (`caipufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748409347 DEFAULT CHARSET=utf8mb3 COMMENT='菜谱分类';

DELETE FROM `caipufenlei`;
INSERT INTO `caipufenlei` (`id`, `addtime`, `caipufenlei`) VALUES
	(31, '2021-04-30 02:02:30', '菜谱分类1'),
	(32, '2021-04-30 02:02:30', '菜谱分类2'),
	(33, '2021-04-30 02:02:30', '菜谱分类3'),
	(34, '2021-04-30 02:02:30', '菜谱分类4'),
	(35, '2021-04-30 02:02:30', '菜谱分类5'),
	(36, '2021-04-30 02:02:30', '菜谱分类6'),
	(1619748376910, '2021-04-30 02:06:15', '汤'),
	(1619748397764, '2021-04-30 02:06:36', '粤菜'),
	(1619748409346, '2021-04-30 02:06:48', '湘菜');

DROP TABLE IF EXISTS `caipuxinxi`;
CREATE TABLE IF NOT EXISTS `caipuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipufenlei` varchar(200) DEFAULT NULL COMMENT '菜谱分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `nandu` varchar(200) DEFAULT NULL COMMENT '难度',
  `pengrenshizhang` varchar(200) DEFAULT NULL COMMENT '烹饪时长',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuancailiao` longtext COMMENT '原材料',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748489489 DEFAULT CHARSET=utf8mb3 COMMENT='菜谱信息';

DELETE FROM `caipuxinxi`;
INSERT INTO `caipuxinxi` (`id`, `addtime`, `caipinbianhao`, `caipinmingcheng`, `caipufenlei`, `kouwei`, `nandu`, `pengrenshizhang`, `tupian`, `yuancailiao`, `caipinjieshao`, `thumbsupnum`, `crazilynum`, `clicknum`) VALUES
	(41, '2021-04-30 02:02:30', '菜品编号1', '菜品名称1', '菜谱分类1', '口味1', '简单', '烹饪时长1', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian1.jpg', '原材料1', '菜品介绍1', 2, 1, 3),
	(42, '2021-04-30 02:02:30', '菜品编号2', '菜品名称2', '菜谱分类2', '口味2', '简单', '烹饪时长2', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian2.jpg', '原材料2', '菜品介绍2', 2, 2, 4),
	(43, '2021-04-30 02:02:30', '菜品编号3', '菜品名称3', '菜谱分类3', '口味3', '简单', '烹饪时长3', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian3.jpg', '原材料3', '菜品介绍3', 3, 3, 3),
	(44, '2021-04-30 02:02:30', '菜品编号4', '菜品名称4', '菜谱分类4', '口味4', '简单', '烹饪时长4', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian4.jpg', '原材料4', '菜品介绍4', 4, 4, 4),
	(45, '2021-04-30 02:02:30', '菜品编号5', '菜品名称5', '菜谱分类5', '口味5', '简单', '烹饪时长5', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian5.jpg', '原材料5', '菜品介绍5', 5, 5, 5),
	(46, '2021-04-30 02:02:30', '菜品编号6', '菜品名称6', '菜谱分类6', '口味6', '简单', '烹饪时长6', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian6.jpg', '原材料6', '菜品介绍6', 6, 6, 6),
	(1619748489488, '2021-04-30 02:08:09', '1619748969302', '排骨莲藕汤', '汤', '清淡', '中难度', '2小时', 'http://localhost:8080/springbooted1p6/upload/1619748460598.jpg', '排骨.莲藕厨艺交流平台', '<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src="http://localhost:8080/springbooted1p6/upload/1619748485860.jpg">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>', 1, 0, 3);

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708048834013 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1708048834012, '2024-02-16 02:00:33', 'shangpinxinxi', 21, 71, '商品名称1', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian1.jpg', 1, 99.9, 0);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbooted1p6/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbooted1p6/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbooted1p6/upload/picture3.jpg'),
	(6, 'homepage', 'http://localhost:8080/springbooted1p6/upload/1619748632417.jpg');

DROP TABLE IF EXISTS `discusscaipuxinxi`;
CREATE TABLE IF NOT EXISTS `discusscaipuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='菜谱信息评论表';

DELETE FROM `discusscaipuxinxi`;
INSERT INTO `discusscaipuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(141, '2021-04-30 02:02:30', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(142, '2021-04-30 02:02:30', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(143, '2021-04-30 02:02:30', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(144, '2021-04-30 02:02:30', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(145, '2021-04-30 02:02:30', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(146, '2021-04-30 02:02:30', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussjiankangwenzhang`;
CREATE TABLE IF NOT EXISTS `discussjiankangwenzhang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748848959 DEFAULT CHARSET=utf8mb3 COMMENT='健康文章评论表';

DELETE FROM `discussjiankangwenzhang`;
INSERT INTO `discussjiankangwenzhang` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(181, '2021-04-30 02:02:30', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(182, '2021-04-30 02:02:30', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(183, '2021-04-30 02:02:30', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(184, '2021-04-30 02:02:30', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(185, '2021-04-30 02:02:30', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(186, '2021-04-30 02:02:30', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1619748848958, '2021-04-30 02:14:08', 1619748622358, 1619748681704, '222', 'fds fds ', NULL);

DROP TABLE IF EXISTS `discussmeishirizhi`;
CREATE TABLE IF NOT EXISTS `discussmeishirizhi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748856954 DEFAULT CHARSET=utf8mb3 COMMENT='美食日志评论表';

DELETE FROM `discussmeishirizhi`;
INSERT INTO `discussmeishirizhi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(171, '2021-04-30 02:02:30', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(172, '2021-04-30 02:02:30', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(173, '2021-04-30 02:02:30', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(174, '2021-04-30 02:02:30', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(175, '2021-04-30 02:02:30', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(176, '2021-04-30 02:02:30', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1619748856953, '2021-04-30 02:14:16', 86, 1619748681704, '222', 'fd safds ', NULL);

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748725477 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(161, '2021-04-30 02:02:30', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(162, '2021-04-30 02:02:30', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(163, '2021-04-30 02:02:30', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(164, '2021-04-30 02:02:30', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(165, '2021-04-30 02:02:30', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(166, '2021-04-30 02:02:30', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1619748725476, '2021-04-30 02:12:04', 1619748587663, 1619748681704, '222', '3232', NULL);

DROP TABLE IF EXISTS `discussshicaixinxi`;
CREATE TABLE IF NOT EXISTS `discussshicaixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748705629 DEFAULT CHARSET=utf8mb3 COMMENT='食材信息评论表';

DELETE FROM `discussshicaixinxi`;
INSERT INTO `discussshicaixinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(151, '2021-04-30 02:02:30', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(152, '2021-04-30 02:02:30', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(153, '2021-04-30 02:02:30', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(154, '2021-04-30 02:02:30', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(155, '2021-04-30 02:02:30', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(156, '2021-04-30 02:02:30', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1619748705628, '2021-04-30 02:11:45', 1619748535300, 1619748681704, '222', '3232', NULL);

DROP TABLE IF EXISTS `jiankangwenzhang`;
CREATE TABLE IF NOT EXISTS `jiankangwenzhang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `wenzhangfengmian` varchar(200) DEFAULT NULL COMMENT '文章封面',
  `wenzhangleixing` varchar(200) DEFAULT NULL COMMENT '文章类型',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `wenzhangneirong` longtext COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748622359 DEFAULT CHARSET=utf8mb3 COMMENT='健康文章';

DELETE FROM `jiankangwenzhang`;
INSERT INTO `jiankangwenzhang` (`id`, `addtime`, `wenzhangbiaoti`, `wenzhangfengmian`, `wenzhangleixing`, `fabushijian`, `wenzhangneirong`) VALUES
	(91, '2021-04-30 02:02:30', '文章标题1', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian1.jpg', '饮食常识', '2021-04-30 10:02:30', '文章内容1'),
	(92, '2021-04-30 02:02:30', '文章标题2', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian2.jpg', '饮食常识', '2021-04-30 10:02:30', '文章内容2'),
	(93, '2021-04-30 02:02:30', '文章标题3', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian3.jpg', '饮食常识', '2021-04-30 10:02:30', '文章内容3'),
	(94, '2021-04-30 02:02:30', '文章标题4', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian4.jpg', '饮食常识', '2021-04-30 10:02:30', '文章内容4'),
	(95, '2021-04-30 02:02:30', '文章标题5', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian5.jpg', '饮食常识', '2021-04-30 10:02:30', '文章内容5'),
	(96, '2021-04-30 02:02:30', '文章标题6', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian6.jpg', '饮食常识', '2021-04-30 10:02:30', '文章内容6'),
	(1619748622358, '2021-04-30 02:10:22', '范德萨啊范德萨', 'http://localhost:8080/springbooted1p6/upload/1619748603588.jpg', '饮食常识', '2021-04-30 10:19:10', '<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src="http://localhost:8080/springbooted1p6/upload/1619748614940.jpg"><img src="http://localhost:8080/springbooted1p6/upload/1619748619092.jpg">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>');

DROP TABLE IF EXISTS `meishirizhi`;
CREATE TABLE IF NOT EXISTS `meishirizhi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rizhibianhao` varchar(200) DEFAULT NULL COMMENT '日志编号',
  `rizhibiaoti` varchar(200) DEFAULT NULL COMMENT '日志标题',
  `rizhifengmian` varchar(200) DEFAULT NULL COMMENT '日志封面',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `meishirizhi` longtext COMMENT '美食日志',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rizhibianhao` (`rizhibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748905388 DEFAULT CHARSET=utf8mb3 COMMENT='美食日志';

DELETE FROM `meishirizhi`;
INSERT INTO `meishirizhi` (`id`, `addtime`, `rizhibianhao`, `rizhibiaoti`, `rizhifengmian`, `yonghuzhanghao`, `yonghuxingming`, `fabushijian`, `meishirizhi`, `thumbsupnum`, `crazilynum`) VALUES
	(81, '2021-04-30 02:02:30', '日志编号1', '日志标题1', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian1.jpg', '用户账号1', '用户姓名1', '2021-04-30 10:02:30', '美食日志1', 1, 1),
	(82, '2021-04-30 02:02:30', '日志编号2', '日志标题2', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian2.jpg', '用户账号2', '用户姓名2', '2021-04-30 10:02:30', '美食日志2', 2, 2),
	(83, '2021-04-30 02:02:30', '日志编号3', '日志标题3', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian3.jpg', '用户账号3', '用户姓名3', '2021-04-30 10:02:30', '美食日志3', 3, 3),
	(84, '2021-04-30 02:02:30', '日志编号4', '日志标题4', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian4.jpg', '用户账号4', '用户姓名4', '2021-04-30 10:02:30', '美食日志4', 4, 4),
	(85, '2021-04-30 02:02:30', '日志编号5', '日志标题5', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian5.jpg', '用户账号5', '用户姓名5', '2021-04-30 10:02:30', '美食日志5', 5, 5),
	(86, '2021-04-30 02:02:30', '日志编号6', '日志标题6', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian6.jpg', '用户账号6', '用户姓名6', '2021-04-30 10:02:30', '美食日志6', 7, 6),
	(1619748905387, '2021-04-30 02:15:05', '1619749437343', '发VCD撒范德萨啊范德萨', 'http://localhost:8080/springbooted1p6/upload/1619748896133.jpg', '222', '杨洋', '2021-04-30 10:23:57', '<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src="http://localhost:8080/springbooted1p6/upload/1619748902633.jpg">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>', 0, 0);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748835330 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`, `tel`, `consignee`) VALUES
	(1619748766111, '2021-04-30 02:12:45', '2021430102216557188', 'shangpinxinxi', 1619748681704, 72, '商品名称2', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian2.jpg', 2, 99.9, 99.9, 199.8, 199.8, 1, '已取消', '广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼', '13613512522', '杨洋'),
	(1619748784004, '2021-04-30 02:13:03', '202143010221977087302', 'shangpinxinxi', 1619748681704, 75, '商品名称5', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian5.jpg', 2, 99.9, 99.9, 199.8, 199.8, 1, '已退款', '广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼', '13613512522', '杨洋'),
	(1619748804157, '2021-04-30 02:13:23', '202143010223926476632', 'shangpinxinxi', 1619748681704, 1619748587663, '洋葱', 'http://localhost:8080/springbooted1p6/upload/1619748566208.gif', 4, 10, 10, 40, 40, 1, '已支付', '广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼', '13613512522', '杨洋'),
	(1619748835329, '2021-04-30 02:13:54', '202143010231055321792', 'shangpinxinxi', 1619748681704, 73, '商品名称3', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian3.jpg', 2, 99.9, 99.9, 199.8, 199.8, 1, '已完成', '广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼', '13613512522', '杨洋');

DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748554779 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

DELETE FROM `shangpinfenlei`;
INSERT INTO `shangpinfenlei` (`id`, `addtime`, `shangpinfenlei`) VALUES
	(61, '2021-04-30 02:02:30', '商品分类1'),
	(62, '2021-04-30 02:02:30', '商品分类2'),
	(63, '2021-04-30 02:02:30', '商品分类3'),
	(64, '2021-04-30 02:02:30', '商品分类4'),
	(65, '2021-04-30 02:02:30', '商品分类5'),
	(66, '2021-04-30 02:02:30', '商品分类6'),
	(1619748544194, '2021-04-30 02:09:04', '食材'),
	(1619748554778, '2021-04-30 02:09:14', '工具');

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748587664 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinbianhao`, `shangpinfenlei`, `tupian`, `shangpinxiangqing`, `price`, `onelimittimes`, `alllimittimes`) VALUES
	(71, '2021-04-30 02:02:30', '商品名称1', '商品编号1', '商品分类1', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian1.jpg', '商品详情1', 99.9, 1, 99),
	(72, '2021-04-30 02:02:30', '商品名称2', '商品编号2', '商品分类2', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian2.jpg', '商品详情2', 99.9, 2, 97),
	(73, '2021-04-30 02:02:30', '商品名称3', '商品编号3', '商品分类3', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian3.jpg', '商品详情3', 99.9, 3, 97),
	(74, '2021-04-30 02:02:30', '商品名称4', '商品编号4', '商品分类4', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian4.jpg', '商品详情4', 99.9, 4, 99),
	(75, '2021-04-30 02:02:30', '商品名称5', '商品编号5', '商品分类5', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian5.jpg', '商品详情5', 99.9, 5, 97),
	(76, '2021-04-30 02:02:30', '商品名称6', '商品编号6', '商品分类6', 'http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian6.jpg', '商品详情6', 99.9, 6, 99),
	(1619748587663, '2021-04-30 02:09:47', '洋葱', '1619749114519', '食材', 'http://localhost:8080/springbooted1p6/upload/1619748566208.gif', '<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src="http://localhost:8080/springbooted1p6/upload/1619748584867.gif">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>', 10, 100, 996);

DROP TABLE IF EXISTS `shicaifenlei`;
CREATE TABLE IF NOT EXISTS `shicaifenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shicaifenlei` varchar(200) NOT NULL COMMENT '食材分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shicaifenlei` (`shicaifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748365056 DEFAULT CHARSET=utf8mb3 COMMENT='食材分类';

DELETE FROM `shicaifenlei`;
INSERT INTO `shicaifenlei` (`id`, `addtime`, `shicaifenlei`) VALUES
	(11, '2021-04-30 02:02:30', '食材分类1'),
	(12, '2021-04-30 02:02:30', '食材分类2'),
	(13, '2021-04-30 02:02:30', '食材分类3'),
	(14, '2021-04-30 02:02:30', '食材分类4'),
	(15, '2021-04-30 02:02:30', '食材分类5'),
	(16, '2021-04-30 02:02:30', '食材分类6'),
	(1619748351122, '2021-04-30 02:05:51', '肉'),
	(1619748365055, '2021-04-30 02:06:04', '蔬菜');

DROP TABLE IF EXISTS `shicaixinxi`;
CREATE TABLE IF NOT EXISTS `shicaixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shicaimingcheng` varchar(200) DEFAULT NULL COMMENT '食材名称',
  `shicaichandi` varchar(200) DEFAULT NULL COMMENT '食材产地',
  `shicaididian` varchar(200) DEFAULT NULL COMMENT '食材地点',
  `shicaireliang` varchar(200) DEFAULT NULL COMMENT '食材热量',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `shicaifengmian` varchar(200) DEFAULT NULL COMMENT '食材封面',
  `shiyongyiji` longtext COMMENT '食用宜忌',
  `xuangoujiqiao` longtext COMMENT '选购技巧',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748535301 DEFAULT CHARSET=utf8mb3 COMMENT='食材信息';

DELETE FROM `shicaixinxi`;
INSERT INTO `shicaixinxi` (`id`, `addtime`, `shicaimingcheng`, `shicaichandi`, `shicaididian`, `shicaireliang`, `fabushijian`, `shicaifengmian`, `shiyongyiji`, `xuangoujiqiao`, `thumbsupnum`, `crazilynum`) VALUES
	(51, '2021-04-30 02:02:30', '食材名称1', '食材产地1', '食材地点1', '食材热量1', '2021-04-30 10:02:30', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian1.jpg', '食用宜忌1', '选购技巧1', 1, 1),
	(52, '2021-04-30 02:02:30', '食材名称2', '食材产地2', '食材地点2', '食材热量2', '2021-04-30 10:02:30', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian2.jpg', '食用宜忌2', '选购技巧2', 2, 2),
	(53, '2021-04-30 02:02:30', '食材名称3', '食材产地3', '食材地点3', '食材热量3', '2021-04-30 10:02:30', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian3.jpg', '食用宜忌3', '选购技巧3', 5, 3),
	(54, '2021-04-30 02:02:30', '食材名称4', '食材产地4', '食材地点4', '食材热量4', '2021-04-30 10:02:30', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian4.jpg', '食用宜忌4', '选购技巧4', 4, 4),
	(55, '2021-04-30 02:02:30', '食材名称5', '食材产地5', '食材地点5', '食材热量5', '2021-04-30 10:02:30', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian5.jpg', '食用宜忌5', '选购技巧5', 5, 5),
	(56, '2021-04-30 02:02:30', '食材名称6', '食材产地6', '食材地点6', '食材热量6', '2021-04-30 10:02:30', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian6.jpg', '食用宜忌6', '选购技巧6', 6, 6),
	(1619748535300, '2021-04-30 02:08:54', '洋葱', '广西', '范德萨范德萨', '2566', '2021-04-30 10:17:30', 'http://localhost:8080/springbooted1p6/upload/1619748505037.gif', '<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台v厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src="http://localhost:8080/springbooted1p6/upload/1619748532543.gif">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台v</p>', '<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>', 1, 0);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708048847246 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1619748690343, '2021-04-30 02:11:30', 1619748681704, 1619748489488, 'caipuxinxi', '排骨莲藕汤', 'http://localhost:8080/springbooted1p6/upload/1619748460598.jpg'),
	(1619748698188, '2021-04-30 02:11:38', 1619748681704, 1619748535300, 'shicaixinxi', '洋葱', 'http://localhost:8080/springbooted1p6/upload/1619748505037.gif'),
	(1619748717926, '2021-04-30 02:11:57', 1619748681704, 1619748587663, 'shangpinxinxi', '洋葱', 'http://localhost:8080/springbooted1p6/upload/1619748566208.gif'),
	(1619748824800, '2021-04-30 02:13:44', 1619748681704, 53, 'shicaixinxi', '食材名称3', 'http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian3.jpg'),
	(1619748842860, '2021-04-30 02:14:02', 1619748681704, 1619748622358, 'jiankangwenzhang', '范德萨啊范德萨', 'http://localhost:8080/springbooted1p6/upload/1619748603588.jpg'),
	(1619748962450, '2021-04-30 02:16:02', 1619748681704, 1619748905387, 'meishirizhi', '发VCD撒范德萨啊范德萨', 'http://localhost:8080/springbooted1p6/upload/1619748896133.jpg'),
	(1708045711842, '2024-02-16 01:08:30', 21, 41, 'caipuxinxi', '菜品名称1', 'http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian1.jpg'),
	(1708048829394, '2024-02-16 02:00:29', 21, 1619748535300, 'shicaixinxi', '洋葱', 'http://localhost:8080/springbooted1p6/upload/1619748505037.gif'),
	(1708048840892, '2024-02-16 02:00:40', 21, 82, 'meishirizhi', '日志标题2', 'http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian2.jpg'),
	(1708048847245, '2024-02-16 02:00:46', 21, 91, 'jiankangwenzhang', '文章标题1', 'http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1619748307873, '111', 'yonghu', '用户', 'e09y1zrat2qdu4swa9cyoyk0wdhp9jdy', '2021-04-30 02:05:12', '2021-04-30 03:05:13'),
	(2, 1, 'abo', 'users', '管理员', 'tr01wtq25sol10q8jz57inaghjxqkk4a', '2021-04-30 02:05:39', '2024-02-16 02:58:53'),
	(3, 1619748681704, '222', 'yonghu', '用户', '8lrlde0pku00r2a963eavf5q1uj6so5d', '2021-04-30 02:11:28', '2021-04-30 03:15:57'),
	(4, 21, '用户1', 'yonghu', '用户', 'k7x943ppf06j22ub2jm8utnwp7wp4uxr', '2024-02-16 01:08:02', '2024-02-16 03:00:07');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-30 02:02:30');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748681705 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuzhanghao`, `yonghuxingming`, `mima`, `xingbie`, `nianling`, `lianxidianhua`, `dianziyouxiang`, `money`) VALUES
	(21, '2021-04-30 02:02:30', '用户1', '用户姓名1', '123456', '男', 1, '13823888881', '773890001@qq.com', 100),
	(22, '2021-04-30 02:02:30', '用户2', '用户姓名2', '123456', '男', 2, '13823888882', '773890002@qq.com', 100),
	(23, '2021-04-30 02:02:30', '用户3', '用户姓名3', '123456', '男', 3, '13823888883', '773890003@qq.com', 100),
	(24, '2021-04-30 02:02:30', '用户4', '用户姓名4', '123456', '男', 4, '13823888884', '773890004@qq.com', 100),
	(25, '2021-04-30 02:02:30', '用户5', '用户姓名5', '123456', '男', 5, '13823888885', '773890005@qq.com', 100),
	(26, '2021-04-30 02:02:30', '用户6', '用户姓名6', '123456', '男', 6, '13823888886', '773890006@qq.com', 100),
	(1619748307873, '2021-04-30 02:05:07', '111', '胡急', '111', NULL, 36, '13613512522', '55545@qq.com', 0),
	(1619748681704, '2021-04-30 02:11:21', '222', '杨洋', '222', '女', 23, '13613613522', '121212@qq.com', 2973.2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 olstore 的数据库结构
CREATE DATABASE IF NOT EXISTS `olstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `olstore`;

-- 导出  表 olstore.ec_article 结构
CREATE TABLE IF NOT EXISTS `ec_article` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ARTICLE_NAME` varchar(200) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `SUPPLIER` varchar(20) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `PRE_PRICE` double DEFAULT NULL,
  `LOCALITY` varchar(300) DEFAULT NULL,
  `PUTAWAY_DATE` date DEFAULT NULL,
  `STORAGE` int(11) DEFAULT NULL,
  `IMAGE` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `TYPE_NAME` varchar(100) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  olstore.ec_article 的数据：~11 rows (大约)
DELETE FROM `ec_article`;
/*!40000 ALTER TABLE `ec_article` DISABLE KEYS */;
INSERT INTO `ec_article` (`ID`, `ARTICLE_NAME`, `TITLE`, `SUPPLIER`, `PRICE`, `PRE_PRICE`, `LOCALITY`, `PUTAWAY_DATE`, `STORAGE`, `IMAGE`, `DESCRIPTION`, `TYPE_NAME`, `CREATE_DATE`) VALUES
	(1, '床上可折叠笔记本桌', '床上可折叠笔记本桌', 'BAMBKIN', 118, 120, '中国', '2018-07-05', 100, '5b693fed-e27a-4c52-861e-66ec5fc2054d.jpg', '夏天来了，那都不想去，不如就在家刷剧打游戏，好看的折叠笔记本电脑桌缓解了在家的烦闷。躺在床上看上一部好看的剧，和朋友打几局激情的游戏，吹着空调吃着西瓜，夏天就要这么过。', '杂物', NULL),
	(2, 'GUCCI 石英女表', 'GUCCI 石英女表', 'GUCCI', 4165, 4650, '瑞士', '2018-07-11', 10, 'ce0e6e06-7953-4b71-ba81-8263958ff163.jpg', '古驰石英女表，使用优质的石英机芯，让其拥有更好的性能，使用时间更加持久，表盘的设计非常简约大方，可以让我们搭配各种不同的穿衣风格，还有织物表带让其非常适合年轻的女性佩戴。', '手表', NULL),
	(4, '荣耀Play全面屏手机', '荣耀Play全面屏手机', '荣耀', 2399, 2500, '东莞', '2018-07-06', 999, '9d9cb71f-0cdb-4e93-8488-0c3a239125bc.jpg', '有模有样的游戏利器！一体化金属机身手感细腻，大视野全面屏玩游戏更出色，搭载GPU Turbo及4D智能震撼尽享稳定高帧率游戏体验，配合3D音效精准辨位玩游戏更沉浸。', '手机', NULL),
	(5, '禹昂 河北皇冠梨', '禹昂 河北皇冠梨', '禹昂', 29.9, 30, '河北深州', '2018-07-22', 1000, '32ddcf95-c158-4d06-9af5-5e4375c2e565.jpg', '禹昂河北皇冠梨，果实呈椭圆形十分饱满，黄色的果皮非常的光滑，果肉洁白，吃起来的口感十分细腻，松脆多汁，一口下去甘甜的梨汁能够帮助充盈你的味蕾，香甜无比。', '水果', '2018-07-06'),
	(6, 'Jeep纯棉短袖T恤', 'Jeep纯棉短袖T恤', 'Jeep', 259, 260, '中国', '2018-07-13', 300, '76effb38-adb1-4a79-8073-29770dcb59ce.jpg', '这款T恤简而不凡，经典的圆领设计，贴合颈部线条，更显美观大方，线条流畅的短袖剪裁，时髦又有型。前幅别致的logo印花图案，无时无刻不再彰显品牌的格调与气质。', '衣服', '2018-07-06'),
	(7, '天睞山东北姑娘果水果', '天睞山东北姑娘果', '天睞山', 49.5, 50, '中国', '2018-07-04', 100, '9176208e-090c-4cc9-9bfc-0458974f25b2.jpg', '源自东北的特产姑娘果，金黄饱满的小果子，看起来就十分诱人，吃在口中，甘汁四溢，爽脆的果籽，非常好吃。姑娘果富含蛋白质以及矿物元素，非常营养。', '水果', NULL),
	(8, '鲜菓篮红心火龙果', '鲜菓篮红心火龙果', '鲜菓篮', 52.8, 60, '中国', '2018-07-01', 200, 'eee39883-cc18-43d7-8b89-11dfe0ef2b31.jpg', '经过自然成熟的红心火龙果，果型饱满周正，鲜艳富有光泽的果皮，切开后能够看到里面细腻的果肉，清香扑鼻，吃在口中，汁水四溢，清甜可口。', '水果', '2018-07-07'),
	(9, '嘉华即融海盐曲奇', '嘉华即融海盐曲奇', '嘉华', 86, 88, '中国', '2018-07-03', 500, 'e4b9a57e-c8f4-4092-bc5d-d202abba0425.jpg', '一个个云朵小花般的造型，看起来九十分诱人，选择优质黄油与麦粉精心制作，吃在口中，酥松香甜，入口即化，尽情享受美味甜点为你带来的美好时光吧。', '零食', '2018-07-07'),
	(10, '白令贝壳面石英表', '白令贝壳面石英表', 'Bering', 1440, 2540, '中国', '2018-07-05', 50, '61a8d159-272b-43ea-a4d9-20c451fdf610.jpg', '海洋幻彩贝壳面的奇妙组合，凸显简约温婉，表壳采用精钢材料，彰显品牌格调，人工合成蓝宝石镜面，精密清晰，优雅双针设计勾勒简单慢时光，不锈钢编织细网表带，柔软贴合手腕，简约不失高雅。', '手表', '2018-07-07'),
	(11, 'KLASSE14情侣手表一对', 'KLASSE14情侣手表一对', 'KLASSE14', 2849, 3800, '中国', '2018-07-03', 20, '7500b08e-e30d-4aff-a74a-230916f9b300.jpg', '这款情侣对表采用凹陷表盘和折叠指针的独特工艺，潮流加持带给你时尚炫酷的出街感。男士选用柔软牛皮表带，营造沉稳型男魅力，女士精选金属表带，高贵中流露几分淑女气息。', '手表', '2018-07-07'),
	(12, '三星 Galaxy S 轻奢版手机', '三星 Galaxy S 轻奢版手机', '三星', 3299, 3560, '中国', '2018-07-06', 1000, '8c303e09-1cba-4e6d-97e3-2a860066978a.jpg', '三星 Galaxy S 轻奢版（SM-G8750）4GB+64GB 谜夜黑 移动联通电信4G手机 双卡双待。\r\nAI纯粹美拍+后置F1.7大光圈+虹膜识别+Bixby人工智能！', '手机', NULL);
/*!40000 ALTER TABLE `ec_article` ENABLE KEYS */;

-- 导出  表 olstore.ec_car_shop 结构
CREATE TABLE IF NOT EXISTS `ec_car_shop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fk_ec_article_id` int(11) NOT NULL,
  `article_num` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ec_car_shop_ec_article` (`fk_ec_article_id`),
  KEY `FK_ec_car_shop_ec_user` (`userId`),
  CONSTRAINT `FK_ec_car_shop_ec_user` FOREIGN KEY (`userId`) REFERENCES `ec_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_ec_car_shop_ec_article` FOREIGN KEY (`fk_ec_article_id`) REFERENCES `ec_article` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 正在导出表  olstore.ec_car_shop 的数据：~10 rows (大约)
DELETE FROM `ec_car_shop`;
/*!40000 ALTER TABLE `ec_car_shop` DISABLE KEYS */;
INSERT INTO `ec_car_shop` (`ID`, `fk_ec_article_id`, `article_num`, `CREATE_DATE`, `userId`) VALUES
	(1, 1, 1, NULL, 1),
	(2, 5, 1, NULL, 1),
	(3, 4, 1, NULL, 1),
	(4, 2, 1, NULL, 1),
	(5, 1, 1, NULL, 1),
	(6, 1, 1, NULL, 1),
	(7, 1, 1, NULL, 1),
	(8, 1, 1, NULL, 1),
	(14, 12, 1, NULL, 14),
	(17, 2, 1, NULL, 14);
/*!40000 ALTER TABLE `ec_car_shop` ENABLE KEYS */;

-- 导出  表 olstore.ec_order 结构
CREATE TABLE IF NOT EXISTS `ec_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_CODE` varchar(20) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `SEND_DATE` date DEFAULT NULL,
  `STATUS` varchar(6) DEFAULT '0',
  `AMOUNT` double DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ec_order_ec_user` (`USER_ID`),
  CONSTRAINT `FK_ec_order_ec_user` FOREIGN KEY (`USER_ID`) REFERENCES `ec_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  olstore.ec_order 的数据：~1 rows (大约)
DELETE FROM `ec_order`;
/*!40000 ALTER TABLE `ec_order` DISABLE KEYS */;
INSERT INTO `ec_order` (`ID`, `ORDER_CODE`, `CREATE_DATE`, `SEND_DATE`, `STATUS`, `AMOUNT`, `USER_ID`) VALUES
	(1, NULL, NULL, NULL, '0', NULL, NULL);
/*!40000 ALTER TABLE `ec_order` ENABLE KEYS */;

-- 导出  表 olstore.ec_order_item 结构
CREATE TABLE IF NOT EXISTS `ec_order_item` (
  `ORDER_ID` int(11) NOT NULL DEFAULT '0',
  `ARTICLE_ID` int(11) NOT NULL DEFAULT '0',
  `ORDER_NUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`,`ARTICLE_ID`),
  KEY `FK_ec_order_item_ec_article` (`ARTICLE_ID`),
  CONSTRAINT `FK_ec_order_item_ec_article` FOREIGN KEY (`ARTICLE_ID`) REFERENCES `ec_article` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  olstore.ec_order_item 的数据：~0 rows (大约)
DELETE FROM `ec_order_item`;
/*!40000 ALTER TABLE `ec_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_item` ENABLE KEYS */;

-- 导出  表 olstore.ec_user 结构
CREATE TABLE IF NOT EXISTS `ec_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_NAME` varchar(50) DEFAULT NULL,
  `PASS_WORD` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SEX` int(11) DEFAULT '1',
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `ROLE` int(11) DEFAULT '1',
  `CREATE_DATE` date DEFAULT NULL,
  `ACTIVE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- 正在导出表  olstore.ec_user 的数据：~9 rows (大约)
DELETE FROM `ec_user`;
/*!40000 ALTER TABLE `ec_user` DISABLE KEYS */;
INSERT INTO `ec_user` (`ID`, `LOGIN_NAME`, `PASS_WORD`, `NAME`, `SEX`, `EMAIL`, `PHONE`, `ADDRESS`, `ROLE`, `CREATE_DATE`, `ACTIVE`) VALUES
	(1, 'root', 'root', 'sx', 0, 'ee765f@qq.com', '166', '湖州', 1, NULL, '激活'),
	(4, 'sx', 'sx', 'sx', 0, 'ee765f@qq.com', '166', '湖州', 0, '2018-07-04', '激活'),
	(7, 'admi', 'sx', 'sx', 0, 'ee765f@qq.com', '166', '湖州', 0, '2018-07-04', '激活'),
	(8, 'shenxin', '324324', 'fdgfd', 1, 'dfg@qq.com', '6575463', 'vbgfdb', 1, '2018-07-06', NULL),
	(11, 'admin', 'admin', '程工', 1, 'admin@admin.com', '166', '东莞理工学院城市学院', 1, NULL, '激活'),
	(12, '11', '11', '11', 0, '1@2', '11', '11', 1, NULL, '激活'),
	(13, '1', '1', '1', 1, '1@2', '1', '1', 0, NULL, NULL),
	(14, 'llx', 'llx', '椰子鸡', 1, 'llx@qq.com', '6575463', '东莞理工学院城市学院', 0, NULL, NULL),
	(15, 'llxx', 'llxx', '椰子鸡x', 1, '1234@qq.com', '6575463x', '东莞理工学院城市学院x', 0, NULL, NULL);
/*!40000 ALTER TABLE `ec_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

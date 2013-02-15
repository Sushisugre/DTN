# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 127.0.0.1    Database: note
# ------------------------------------------------------
# Server version 5.0.22-community-nt

CREATE DATABASE `note` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `note`;

#
# Source for table catalog
#

CREATE TABLE `catalog` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `owner` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table catalog
#

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'泪流满面',1);
INSERT INTO `catalog` VALUES (2,'您好蛋疼啊',1);
INSERT INTO `catalog` VALUES (3,'我好DT啊',8);
INSERT INTO `catalog` VALUES (5,'从前有个人',8);
INSERT INTO `catalog` VALUES (7,'kankan',8);
INSERT INTO `catalog` VALUES (9,'试试看修改结果',8);
INSERT INTO `catalog` VALUES (10,'再试试',8);
INSERT INTO `catalog` VALUES (11,'可以添加吧！',12);
INSERT INTO `catalog` VALUES (12,'怎么搞的',8);
INSERT INTO `catalog` VALUES (13,'S4要奋斗',8);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table file
#

CREATE TABLE `file` (
  `Id` int(11) NOT NULL auto_increment,
  `type` varchar(255) NOT NULL default 'note',
  `title` mediumtext NOT NULL,
  `content` mediumtext,
  `permission` varchar(255) NOT NULL default '',
  `owner` int(11) NOT NULL default '1',
  `modifiedtime` datetime default NULL,
  PRIMARY KEY  (`Id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table file
#

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (26,'我好DT啊','分类--我好DT啊--fuck','','3',8,'2011-06-23 19:26:34');
INSERT INTO `file` VALUES (27,'我好DT啊','分类--我好DT啊2--再测试一下修改文件','<p>\r\n\t没问题了吗！</p>\r\n','3',8,'2011-06-30 15:37:28');
INSERT INTO `file` VALUES (29,'读马基了','分类--读马基了--fuck（马基考完了）','','3',8,'2011-06-23 19:27:34');
INSERT INTO `file` VALUES (30,'泪流满面','分类--泪流满面--s4','','3',1,'2011-06-23 19:29:40');
INSERT INTO `file` VALUES (32,'kankan','分类--kankan--1','','3',8,'2011-06-23 20:11:04');
INSERT INTO `file` VALUES (33,'kankan','分类--kankan--2','','3',8,'2011-06-23 20:11:38');
INSERT INTO `file` VALUES (39,'kankan','再测试一下','<p>\r\n\t阿斯顿飞了快斯蒂芬金龙卡及非了快减肥了ask的发</p>\r\n<p>\r\n\t撒了快递费建立福建省了福建省的范德萨</p>\r\n','3',8,'2011-06-23 22:11:43');
INSERT INTO `file` VALUES (44,'泪流满面','分类--泪流满面2--s4','<p>\r\n\t我是一个大白痴</p>\r\n','3',1,'2011-06-24 01:14:56');
INSERT INTO `file` VALUES (46,'my','雨-------顾城','<p>\r\n\t人们拒绝了这种悲哀&nbsp;<br />\r\n\t向天空举起彩色的盾牌&nbsp;</p>\r\n','3',8,'2011-06-25 03:07:19');
INSERT INTO `file` VALUES (48,'从前有个人','分类--kankan--2','<p>\r\n\t怎么又多出一个了啊 上传不是没问题的吗</p>\r\n','3',8,'2011-06-25 03:23:52');
INSERT INTO `file` VALUES (64,'my','雨-------顾城','<p>\r\n\t人们拒绝了这种悲哀&nbsp;<br />\r\n\t向天空举起彩色的盾牌&nbsp;</p>\r\n','3',8,'2011-06-25 04:35:22');
INSERT INTO `file` VALUES (65,'从前有个人','分类--kankan--先把编辑的问题解决掉！','','3',8,'2011-06-30 14:01:37');
INSERT INTO `file` VALUES (66,'我好DT啊','分类--我好DT啊2--ID去哪里了！','<p>\r\n\t再试一下..</p>\r\n','3',8,'2011-06-30 14:20:52');
INSERT INTO `file` VALUES (67,'我好DT啊','分类--我好DT啊2--草泥马啊','<p>\r\n\t难过的一笔</p>\r\n','3',8,'2011-06-30 15:21:51');
INSERT INTO `file` VALUES (68,'读马基了','马基什么时候出成绩---成功了？','<p>\r\n\t哈哈哈哈哈哈后</p>\r\n','3',8,'2011-06-30 18:44:11');
INSERT INTO `file` VALUES (69,'我好DT啊','在测试一个东西','<p>\r\n\t撒旦了健康法</p>\r\n<p>\r\n\t但是这样...又看得出来吗</p>\r\n','3',8,'2011-06-30 18:51:38');
INSERT INTO `file` VALUES (70,'我好DT啊','试试看能不能返回对应分类','<p>\r\n\t&nbsp;&nbsp;</p>\r\n','3',8,'2011-06-30 19:00:04');
INSERT INTO `file` VALUES (71,'我好DT啊','试试看struts里param没写值会怎么传递','<p>\r\n\t嗯！</p>\r\n','3',8,'2011-06-30 19:04:25');
INSERT INTO `file` VALUES (75,'我好DT啊','加油啊','<p>\r\n\t大师傅</p>\r\n','3',8,'2011-07-02 03:57:28');
INSERT INTO `file` VALUES (76,'default','迅雷是不是想shi……(Test)','<p>\r\n\t&nbsp;</p>\r\n<div class=\"share-photo-main getphoto\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); border-top-width: 1px; border-top-color: rgb(224, 224, 224); border-top-style: solid; position: relative; background-position: initial initial; background-repeat: initial initial; \">\r\n\t<div class=\"photo-img\" id=\"photoContainer\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; width: 720px; height: 450px; min-height: 450px; display: table-cell; vertical-align: middle; text-align: center; position: relative; cursor: pointer; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); background-position: initial initial; background-repeat: initial initial; \">\r\n\t\t<a href=\"http://photo.renren.com/photo/254747065/photo-4601017042\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 94, 172); cursor: pointer; text-decoration: none; \"><img id=\"photo\" src=\"http://fmn.rrimg.com/fmn046/20110701/1205/p_large_ftkh_029e00003e805c3f.jpg\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: middle; \" title=\"查看下一张\" /></a></div>\r\n</div>\r\n<div class=\"preview-photo\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 15px; padding-right: 0px; padding-bottom: 20px; padding-left: 40px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); background-position: initial initial; background-repeat: initial initial; \">\r\n\t<div class=\"photo-desc\" id=\"photoTitleEditorContainer\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; min-height: 30px; font-size: 12px; \">\r\n\t\t<p id=\"photoTitle\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">\r\n\t\t\t笑死我了</p>\r\n\t</div>\r\n</div>\r\n<p>\r\n\t&nbsp;</p>\r\n','3',8,'2011-07-02 15:31:44');
INSERT INTO `file` VALUES (77,'从前有个人','中国共产党是巨蟹座的','<p>\r\n\t中国共产党是巨蟹座的。(7.1.)<br />\r\n\t因此：<br />\r\n\t1、生性多愁善感，有忧郁和作白日梦的倾向，常会为过去那段美好的日子而缅怀不已，并容易生活在过去的阴影中。2、具有不屈不挠的意志，一旦拟定计划，必然付诸实际行动。为了私人利益，有时会过于大方，应避免不必要的奢侈。<br />\r\n\t3、易有极端的情绪化表现，情绪阴晴不定，常会没来由地大发脾气，对别人的问话，也会随自己的高兴予以反驳或根本拒绝回答；兴致好的时候，却变成最佳的听众，充分发挥体谅、设想周到的优点。<br />\r\n\t4、热爱事业，同时重情爱家，珍惜爱情，并真诚待友。<br />\r\n\t5、有包容心，一般不会为了一点芝麻小事而耿耿于怀，具有容人的雅量，很少拒人于千里之外，再加上其有礼貌、善交际、富幽默感之迷人个性及对人道主义的尊崇，会有许多朋友。<br />\r\n\t6、经常会在强悍的外表下，隐藏着一颗柔弱的内心，就像这星座的表征－－螃蟹，用硬如铁甲的外壳将自己密密地武装起来，保护起自己最柔弱醉人的部分。但当你成为了他亲近的人，你将会感受他坚硬伪装下无尽温柔和默默付出所带来的温暖。<br />\r\n\t<br />\r\n\t中国人民解放军是狮子座的。(8.1.)<br />\r\n\t因此：阳光灿烂，充满活力，感觉有用不完的能量；表现欲强烈，举手投足之间充满了闪耀的魅力，很轻易转变成大众瞩目的焦点。身上散发出来的热力很轻易感染周 围的生命，令大家随着一起舞动生活。对权力地位的追寻非常执着，以捍卫其领导地位，欲望也是他们不断向前的动力源泉。<br />\r\n\t<br />\r\n\t中国工人阶级是金牛座的。(5.1.)<br />\r\n\t因此：有良好的自卫本能。思想一成不变，比较罗嗦。性格平稳、有毅力和耐力，勤劳智慧，富有实干精神。为人处世小心谨慎，感情真诚专一。有极其敏锐的感官，内心怀有各种欲望。喜欢舒适的生活环境，大自然的壮丽景色、花草和动物。多疑多虑、嫉妒、悲观失望、沉默寡言、阴郁孤僻的性格特点。难改变自己的观念，固执已见，对事物极易产生偏激和狭隘的看法。<br />\r\n\t<br />\r\n\t中国儿童是双子座的。（6.1.）<br />\r\n\t因此：相当具有灵性、聪明、心智活跃敏锐，喜欢忙碌和追求新的概念及作事的方法，有活力、口才一流、活力充沛、胸怀大志、人缘很好，并且都有语言天份。对事物的 思考很快，改变主意也比一般人快。由于水星的影响，使双子座的人通常无法控制自己的思考力，很容易导致精神衰弱。有着双倍于别人的力量、思考力，却也需要比别人多一倍的时间去恢复。<br />\r\n\t<br />\r\n\t中国妇女是双鱼座的。（3.8.）<br />\r\n\t因此：对世界上发生的一 切，乃至虚无缥缈的事物都有浓厚的兴趣。安静、温柔、真挚和会体贴人，但思想深远莫测。对愿望、激情和仇恨不象有些星座的人那样充满绝对意识。心中很少有&quot;紧迫感&quot;的概念。身上总保持着一种天真、忠厚的气质。温情，灵活而且神秘。你的诗一般的思想意境，内在的敏感，神秘色彩和某些女性的性格特征，常唤起人们的遐想。喜欢幻想，并力图用幻想来逃避生活中的困难和烦恼。经常处在需要献身或作出牺牲的情况下。很容易受别人的蛊惑和影响。<br />\r\n\t<br />\r\n\t中华人民共和国是天秤座的。(10.1.)<br />\r\n\t因此：心地善良，有古道热肠和仁心，富同情心而看重感情，处事力求公正与中庸，不愿偏激。诚实温和，是个理想主义者，生性浪漫的恋爱高手，个性坚强、睿智、冷静、具有非常灵活而好质问的脑子，常有非凡的构想。<br />\r\n\t<br />\r\n\t<br />\r\n\t（以上资料均出自新浪星座和百度星座。本文谨献给仍然相信&ldquo;星座研究&rdquo;的孩纸们。）</p>\r\n','3',8,'2011-07-02 15:48:23');
INSERT INTO `file` VALUES (78,'S4要奋斗','刚出生的总是最萌的！','<p>\r\n\t&nbsp;</p>\r\n<div class=\"photo-img\" id=\"photoContainer\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); width: 720px; height: 450px; min-height: 450px; line-height: 450px; display: table-cell; vertical-align: middle; text-align: center; position: relative; cursor: url(http://s.xnimg.cn/imgpro/arrow/pre.cur), auto; background-position: initial initial; background-repeat: initial initial; \" title=\"点击查看上一张\">\r\n\t<img id=\"photo\" src=\"http://fmn.rrimg.com/fmn052/20110522/1655/p_large_zu8X_24190000ec395c71.jpg\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; vertical-align: middle; \" title=\"点击查看下一张\" /></div>\r\n<div class=\"photo-desc\" id=\"photoTitleEditorContainer\" style=\"margin-top: 15px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">\r\n\t<p id=\"photoTitle\" style=\"margin-top: 10px; margin-right: 40px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(51, 51, 51); \">\r\n\t\t刚出生的刺猬宝宝&nbsp;~哇哈好萌！！！</p>\r\n</div>\r\n<p>\r\n\t&nbsp;</p>\r\n','3',8,'2011-07-02 15:59:52');
INSERT INTO `file` VALUES (79,'default','在建一个凑20','','3',8,'2011-07-02 16:00:33');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table friends
#

CREATE TABLE `friends` (
  `Id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '1',
  `friendid` int(11) NOT NULL default '1',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table friends
#

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table group
#

CREATE TABLE `group` (
  `Id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table group
#

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table scratchpad
#

CREATE TABLE `scratchpad` (
  `Id` int(11) NOT NULL auto_increment,
  `type` varchar(255) NOT NULL default 'note',
  `title` mediumtext NOT NULL,
  `content` mediumtext,
  `permission` varchar(255) NOT NULL default '',
  `owner` int(11) NOT NULL default '1',
  PRIMARY KEY  (`Id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table scratchpad
#

LOCK TABLES `scratchpad` WRITE;
/*!40000 ALTER TABLE `scratchpad` DISABLE KEYS */;
/*!40000 ALTER TABLE `scratchpad` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tag
#

CREATE TABLE `tag` (
  `Id` int(11) NOT NULL auto_increment,
  `tagname` text NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table tag
#

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tagsort
#

CREATE TABLE `tagsort` (
  `Id` int(11) NOT NULL auto_increment,
  `fileid` int(11) NOT NULL default '1',
  `tagid` int(11) NOT NULL default '1',
  PRIMARY KEY  (`Id`),
  KEY `fileid` (`fileid`),
  KEY `tagid` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table tagsort
#

LOCK TABLES `tagsort` WRITE;
/*!40000 ALTER TABLE `tagsort` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagsort` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table user
#

CREATE TABLE `user` (
  `Id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL default 'sb',
  `password` varchar(255) NOT NULL default 'aaa',
  `nickname` varchar(255) default NULL,
  `space` int(11) unsigned NOT NULL default '5',
  `usedspace` int(11) unsigned NOT NULL default '0',
  `description` text,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table user
#

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sb','aaa','s4',5,0,NULL);
INSERT INTO `user` VALUES (8,'fuck','you','damn',5,0,NULL);
INSERT INTO `user` VALUES (9,'local','host','efi',5,0,NULL);
INSERT INTO `user` VALUES (10,'unresolved','symbol','suck',5,0,NULL);
INSERT INTO `user` VALUES (11,'298914226','fuck','阿坑',5,0,NULL);
INSERT INTO `user` VALUES (12,'struts2','hibernate','Spring',5,0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usergroup
#

CREATE TABLE `usergroup` (
  `Id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

#
# Dumping data for table usergroup
#

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table file
#

ALTER TABLE `file`
ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `user` (`Id`);

#
#  Foreign keys for table scratchpad
#

ALTER TABLE `scratchpad`
ADD CONSTRAINT `scratchpad_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `user` (`Id`);

#
#  Foreign keys for table tagsort
#

ALTER TABLE `tagsort`
ADD CONSTRAINT `tagsort_ibfk_1` FOREIGN KEY (`fileid`) REFERENCES `file` (`Id`),
ADD CONSTRAINT `tagsort_ibfk_2` FOREIGN KEY (`tagid`) REFERENCES `tag` (`Id`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

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
INSERT INTO `catalog` VALUES (1,'��������',1);
INSERT INTO `catalog` VALUES (2,'���õ��۰�',1);
INSERT INTO `catalog` VALUES (3,'�Һ�DT��',8);
INSERT INTO `catalog` VALUES (5,'��ǰ�и���',8);
INSERT INTO `catalog` VALUES (7,'kankan',8);
INSERT INTO `catalog` VALUES (9,'���Կ��޸Ľ��',8);
INSERT INTO `catalog` VALUES (10,'������',8);
INSERT INTO `catalog` VALUES (11,'������Ӱɣ�',12);
INSERT INTO `catalog` VALUES (12,'��ô���',8);
INSERT INTO `catalog` VALUES (13,'S4Ҫ�ܶ�',8);
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
INSERT INTO `file` VALUES (26,'�Һ�DT��','����--�Һ�DT��--fuck','','3',8,'2011-06-23 19:26:34');
INSERT INTO `file` VALUES (27,'�Һ�DT��','����--�Һ�DT��2--�ٲ���һ���޸��ļ�','<p>\r\n\tû��������</p>\r\n','3',8,'2011-06-30 15:37:28');
INSERT INTO `file` VALUES (29,'�������','����--�������--fuck����������ˣ�','','3',8,'2011-06-23 19:27:34');
INSERT INTO `file` VALUES (30,'��������','����--��������--s4','','3',1,'2011-06-23 19:29:40');
INSERT INTO `file` VALUES (32,'kankan','����--kankan--1','','3',8,'2011-06-23 20:11:04');
INSERT INTO `file` VALUES (33,'kankan','����--kankan--2','','3',8,'2011-06-23 20:11:38');
INSERT INTO `file` VALUES (39,'kankan','�ٲ���һ��','<p>\r\n\t��˹�ٷ��˿�˹�ٷҽ����������˿������ask�ķ�</p>\r\n<p>\r\n\t���˿�ݷѽ�������ʡ�˸���ʡ�ķ�����</p>\r\n','3',8,'2011-06-23 22:11:43');
INSERT INTO `file` VALUES (44,'��������','����--��������2--s4','<p>\r\n\t����һ����׳�</p>\r\n','3',1,'2011-06-24 01:14:56');
INSERT INTO `file` VALUES (46,'my','��-------�˳�','<p>\r\n\t���Ǿܾ������ֱ���&nbsp;<br />\r\n\t����վ����ɫ�Ķ���&nbsp;</p>\r\n','3',8,'2011-06-25 03:07:19');
INSERT INTO `file` VALUES (48,'��ǰ�и���','����--kankan--2','<p>\r\n\t��ô�ֶ��һ���˰� �ϴ�����û�������</p>\r\n','3',8,'2011-06-25 03:23:52');
INSERT INTO `file` VALUES (64,'my','��-------�˳�','<p>\r\n\t���Ǿܾ������ֱ���&nbsp;<br />\r\n\t����վ����ɫ�Ķ���&nbsp;</p>\r\n','3',8,'2011-06-25 04:35:22');
INSERT INTO `file` VALUES (65,'��ǰ�и���','����--kankan--�Ȱѱ༭������������','','3',8,'2011-06-30 14:01:37');
INSERT INTO `file` VALUES (66,'�Һ�DT��','����--�Һ�DT��2--IDȥ�����ˣ�','<p>\r\n\t����һ��..</p>\r\n','3',8,'2011-06-30 14:20:52');
INSERT INTO `file` VALUES (67,'�Һ�DT��','����--�Һ�DT��2--������','<p>\r\n\t�ѹ���һ��</p>\r\n','3',8,'2011-06-30 15:21:51');
INSERT INTO `file` VALUES (68,'�������','���ʲôʱ����ɼ�---�ɹ��ˣ�','<p>\r\n\t��������������</p>\r\n','3',8,'2011-06-30 18:44:11');
INSERT INTO `file` VALUES (69,'�Һ�DT��','�ڲ���һ������','<p>\r\n\t�����˽�����</p>\r\n<p>\r\n\t��������...�ֿ��ó�����</p>\r\n','3',8,'2011-06-30 18:51:38');
INSERT INTO `file` VALUES (70,'�Һ�DT��','���Կ��ܲ��ܷ��ض�Ӧ����','<p>\r\n\t&nbsp;&nbsp;</p>\r\n','3',8,'2011-06-30 19:00:04');
INSERT INTO `file` VALUES (71,'�Һ�DT��','���Կ�struts��paramûдֵ����ô����','<p>\r\n\t�ţ�</p>\r\n','3',8,'2011-06-30 19:04:25');
INSERT INTO `file` VALUES (75,'�Һ�DT��','���Ͱ�','<p>\r\n\t��ʦ��</p>\r\n','3',8,'2011-07-02 03:57:28');
INSERT INTO `file` VALUES (76,'default','Ѹ���ǲ�����shi����(Test)','<p>\r\n\t&nbsp;</p>\r\n<div class=\"share-photo-main getphoto\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); border-top-width: 1px; border-top-color: rgb(224, 224, 224); border-top-style: solid; position: relative; background-position: initial initial; background-repeat: initial initial; \">\r\n\t<div class=\"photo-img\" id=\"photoContainer\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; width: 720px; height: 450px; min-height: 450px; display: table-cell; vertical-align: middle; text-align: center; position: relative; cursor: pointer; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); background-position: initial initial; background-repeat: initial initial; \">\r\n\t\t<a href=\"http://photo.renren.com/photo/254747065/photo-4601017042\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 94, 172); cursor: pointer; text-decoration: none; \"><img id=\"photo\" src=\"http://fmn.rrimg.com/fmn046/20110701/1205/p_large_ftkh_029e00003e805c3f.jpg\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: middle; \" title=\"�鿴��һ��\" /></a></div>\r\n</div>\r\n<div class=\"preview-photo\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 15px; padding-right: 0px; padding-bottom: 20px; padding-left: 40px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); background-position: initial initial; background-repeat: initial initial; \">\r\n\t<div class=\"photo-desc\" id=\"photoTitleEditorContainer\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; min-height: 30px; font-size: 12px; \">\r\n\t\t<p id=\"photoTitle\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">\r\n\t\t\tЦ������</p>\r\n\t</div>\r\n</div>\r\n<p>\r\n\t&nbsp;</p>\r\n','3',8,'2011-07-02 15:31:44');
INSERT INTO `file` VALUES (77,'��ǰ�и���','�й��������Ǿ�з����','<p>\r\n\t�й��������Ǿ�з���ġ�(7.1.)<br />\r\n\t��ˣ�<br />\r\n\t1�����Զ���ƸУ����������������ε����򣬳���Ϊ��ȥ�Ƕ����õ����Ӷ��廳���ѣ������������ڹ�ȥ����Ӱ�С�2�����в������ӵ���־��һ���ⶨ�ƻ�����Ȼ����ʵ���ж���Ϊ��˽�����棬��ʱ����ڴ󷽣�Ӧ���ⲻ��Ҫ���ݳޡ�<br />\r\n\t3�����м��˵����������֣��������粻��������û���ɵش�Ƣ�����Ա��˵��ʻ���Ҳ�����Լ��ĸ������Է���������ܾ��ش����ºõ�ʱ��ȴ�����ѵ����ڣ���ַ������¡������ܵ����ŵ㡣<br />\r\n\t4���Ȱ���ҵ��ͬʱ���鰮�ң���ϧ���飬����ϴ��ѡ�<br />\r\n\t5���а����ģ�һ�㲻��Ϊ��һ��֥��С�¶������ڻ����������˵����������پ�����ǧ��֮�⣬�ټ���������ò���ƽ��ʡ�����Ĭ��֮���˸��Լ����˵��������磬����������ѡ�<br />\r\n\t6����������ǿ��������£�������һ�����������ģ������������ı��������з����Ӳ�����׵���ǽ��Լ����ܵ���װ�������������Լ����������˵Ĳ��֡��������Ϊ�����׽����ˣ��㽫���������Ӳαװ���޾������ĬĬ��������������ů��<br />\r\n\t<br />\r\n\t�й������ž���ʨ�����ġ�(8.1.)<br />\r\n\t��ˣ�������ã������������о����ò����������������ǿ�ң�����Ͷ��֮���������ҫ��������������ת��ɴ�����Ŀ�Ľ��㡣����ɢ�����������������׸�Ⱦ�� Χ����������������һ���趯�����Ȩ����λ��׷Ѱ�ǳ�ִ�ţ��Ժ������쵼��λ������Ҳ�����ǲ�����ǰ�Ķ���ԴȪ��<br />\r\n\t<br />\r\n\t�й����˽׼��ǽ�ţ���ġ�(5.1.)<br />\r\n\t��ˣ������õ��������ܡ�˼��һ�ɲ��䣬�Ƚ����¡��Ը�ƽ�ȡ��������������������ǻۣ�����ʵ�ɾ���Ϊ�˴���С�Ľ������������רһ���м�������ĸй٣����Ļ��и���������ϲ�����ʵ������������Ȼ��׳����ɫ�����ݺͶ�����ɶ��ǡ����ʡ�����ʧ������Ĭ���ԡ�������Ƨ���Ը��ص㡣�Ѹı��Լ��Ĺ����ִ�Ѽ��������Ｋ�ײ���ƫ���������Ŀ�����<br />\r\n\t<br />\r\n\t�й���ͯ��˫�����ġ���6.1.��<br />\r\n\t��ˣ��൱�������ԡ����������ǻ�Ծ����ϲ��æµ��׷���µĸ�����µķ������л������ڲ�һ�����������桢�ػ���־����Ե�ܺã����Ҷ���������ݡ�������� ˼���ܿ죬�ı�����Ҳ��һ���˿졣����ˮ�ǵ�Ӱ�죬ʹ˫��������ͨ���޷������Լ���˼�����������׵��¾���˥��������˫���ڱ��˵�������˼������ȴҲ��Ҫ�ȱ��˶�һ����ʱ��ȥ�ָ���<br />\r\n\t<br />\r\n\t�й���Ů��˫�����ġ���3.8.��<br />\r\n\t��ˣ��������Ϸ�����һ �У�����������翵����ﶼ��Ũ�����Ȥ�����������ᡢ��ֿ�ͻ������ˣ���˼����ԶĪ�⡣��Ը��������ͳ�޲�����Щ����������������������ʶ�����к�����&quot;���ȸ�&quot;�ĸ�������ܱ�����һ�����桢�Һ�����ʡ����飬���������ء����ʫһ���˼���⾳�����ڵ����У�����ɫ�ʺ�ĳЩŮ�Ե��Ը����������������ǵ����롣ϲ�����룬����ͼ�û������ӱ������е����Ѻͷ��ա�����������Ҫ�������������������¡��������ܱ��˵Ĺƻ��Ӱ�졣<br />\r\n\t<br />\r\n\t�л����񹲺͹���������ġ�(10.1.)<br />\r\n\t��ˣ��ĵ��������йŵ��ȳ������ģ���ͬ���Ķ����ظ��飬��������������ӹ����Ըƫ������ʵ�ºͣ��Ǹ����������ߣ������������������֣����Լ�ǿ����ǡ��侲�����зǳ����������ʵ����ӣ����зǷ��Ĺ��롣<br />\r\n\t<br />\r\n\t<br />\r\n\t���������Ͼ��������������Ͱٶ����������Ľ��׸���Ȼ����&ldquo;�����о�&rdquo;�ĺ�ֽ�ǡ���</p>\r\n','3',8,'2011-07-02 15:48:23');
INSERT INTO `file` VALUES (78,'S4Ҫ�ܶ�','�ճ������������ȵģ�','<p>\r\n\t&nbsp;</p>\r\n<div class=\"photo-img\" id=\"photoContainer\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(247, 247, 247); width: 720px; height: 450px; min-height: 450px; line-height: 450px; display: table-cell; vertical-align: middle; text-align: center; position: relative; cursor: url(http://s.xnimg.cn/imgpro/arrow/pre.cur), auto; background-position: initial initial; background-repeat: initial initial; \" title=\"����鿴��һ��\">\r\n\t<img id=\"photo\" src=\"http://fmn.rrimg.com/fmn052/20110522/1655/p_large_zu8X_24190000ec395c71.jpg\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; vertical-align: middle; \" title=\"����鿴��һ��\" /></div>\r\n<div class=\"photo-desc\" id=\"photoTitleEditorContainer\" style=\"margin-top: 15px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">\r\n\t<p id=\"photoTitle\" style=\"margin-top: 10px; margin-right: 40px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(51, 51, 51); \">\r\n\t\t�ճ����Ĵ�⬱���&nbsp;~�۹����ȣ�����</p>\r\n</div>\r\n<p>\r\n\t&nbsp;</p>\r\n','3',8,'2011-07-02 15:59:52');
INSERT INTO `file` VALUES (79,'default','�ڽ�һ����20','','3',8,'2011-07-02 16:00:33');
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
INSERT INTO `user` VALUES (11,'298914226','fuck','����',5,0,NULL);
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

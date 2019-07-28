-- phpMyAdmin SQL Dump
-- version 3.0.1.1
-- http://www.phpmyadmin.net
--
-- �������汾: 5.1.29
-- PHP �汾: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a'); 

CREATE TABLE IF NOT EXISTS `t_classInfo` (
  `classNo` varchar(20)  NOT NULL COMMENT 'classNo',
  `className` varchar(40)  NOT NULL COMMENT '�༶����',
  `college` varchar(30)  NOT NULL COMMENT '����ѧԺ',
  `specialName` varchar(30)  NOT NULL COMMENT '����רҵ',
  `bornDate` varchar(20)  NULL COMMENT '��������',
  `mainTeacher` varchar(20)  NOT NULL COMMENT '������',
  `classMemo` varchar(500)  NULL COMMENT '�༶��ע',
  PRIMARY KEY (`classNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_userInfo` (
  `user_name` varchar(30)  NOT NULL COMMENT 'user_name',
  `password` varchar(30)  NOT NULL COMMENT '��¼����',
  `classObj` varchar(20)  NOT NULL COMMENT '���ڰ༶',
  `name` varchar(20)  NOT NULL COMMENT '����',
  `gender` varchar(4)  NOT NULL COMMENT '�Ա�',
  `birthDate` varchar(20)  NULL COMMENT '��������',
  `userPhoto` varchar(60)  NOT NULL COMMENT 'ѧ����Ƭ',
  `telephone` varchar(20)  NOT NULL COMMENT '��ϵ�绰',
  `email` varchar(30)  NULL COMMENT '����',
  `address` varchar(80)  NULL COMMENT '��ͥ��ַ',
  `regTime` varchar(20)  NULL COMMENT 'ע��ʱ��',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_teacher` (
  `teacherNo` varchar(20)  NOT NULL COMMENT 'teacherNo',
  `password` varchar(20)  NOT NULL COMMENT '��¼����',
  `teacherName` varchar(20)  NOT NULL COMMENT '��ʦ����',
  `teacherSex` varchar(4)  NOT NULL COMMENT '��ʦ�Ա�',
  `birthDate` varchar(20)  NULL COMMENT '��������',
  `teacherPhoto` varchar(60)  NOT NULL COMMENT '��ʦ��Ƭ',
  `zhicheng` varchar(20)  NOT NULL COMMENT '��ʦְ��',
  `telephone` varchar(20)  NOT NULL COMMENT '��ϵ�绰',
  `teacherDesc` varchar(8000)  NOT NULL COMMENT '��ʦ����',
  PRIMARY KEY (`teacherNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_subjectType` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '���ͱ��',
  `typeName` varchar(20)  NOT NULL COMMENT '��������',
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_subject` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀid',
  `subjectName` varchar(40)  NOT NULL COMMENT '��Ŀ����',
  `subjectTypeObj` int(11) NOT NULL COMMENT '��Ŀ����',
  `sujectContent` varchar(8000)  NOT NULL COMMENT '��Ŀ����',
  `taskFile` varchar(60)  NOT NULL COMMENT '�������ļ�',
  `otherFile` varchar(60)  NOT NULL COMMENT '���������ļ�',
  `personNum` int(11) NOT NULL COMMENT '��ѡ����',
  `teacherObj` varchar(20)  NOT NULL COMMENT 'ָ����ʦ',
  `addTime` varchar(20)  NULL COMMENT '����ʱ��',
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_subSelect` (
  `selectId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ѡ��id',
  `subjectObj` int(11) NOT NULL COMMENT '������Ŀ',
  `userObj` varchar(30)  NOT NULL COMMENT 'ѡ��ѧ��',
  `selectTime` varchar(20)  NULL COMMENT 'ѡ��ʱ��',
  `shenHeState` varchar(20)  NOT NULL COMMENT '���״̬',
  PRIMARY KEY (`selectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_opus` (
  `opusId` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ɹ�id',
  `subjectObj` int(11) NOT NULL COMMENT '������Ŀ',
  `userObj` varchar(30)  NOT NULL COMMENT '�ύѧ��',
  `ktbg` varchar(60)  NOT NULL COMMENT '���ⱨ��',
  `wwwx` varchar(60)  NOT NULL COMMENT '�������׷���',
  `lwcg` varchar(60)  NOT NULL COMMENT '���ĳ���',
  `lwzg` varchar(60)  NOT NULL COMMENT '�����ո�',
  `otherFile` varchar(60)  NOT NULL COMMENT '�����ļ�',
  `chengji` varchar(20)  NULL COMMENT '���ĳɼ�',
  `evaluate` varchar(500)  NULL COMMENT '��ʦ����',
  PRIMARY KEY (`opusId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_video` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ƶid',
  `subjectObj` int(11) NOT NULL COMMENT '������Ŀ',
  `userObj` varchar(30)  NOT NULL COMMENT '���ѧ��',
  `videoFile` varchar(60)  NOT NULL COMMENT '�����Ƶ',
  `videoTime` varchar(20)  NOT NULL COMMENT '��Ƶʱ��',
  `videoDate` varchar(20)  NULL COMMENT '�������',
  `videoMemo` varchar(8000)  NULL COMMENT '������Ϣ',
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_leaveword` (
  `leaveWordId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `leaveTitle` varchar(80)  NOT NULL COMMENT '���Ա���',
  `leaveContent` varchar(2000)  NOT NULL COMMENT '��������',
  `userObj` varchar(30)  NOT NULL COMMENT '������',
  `leaveTime` varchar(20)  NULL COMMENT '����ʱ��',
  `replyContent` varchar(1000)  NULL COMMENT '��ʦ�ظ�',
  `replyTime` varchar(20)  NULL COMMENT '�ظ�ʱ��',
  PRIMARY KEY (`leaveWordId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `title` varchar(80)  NOT NULL COMMENT '���ű���',
  `content` varchar(5000)  NOT NULL COMMENT '��������',
  `publishDate` varchar(20)  NULL COMMENT '����ʱ��',
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE t_userInfo ADD CONSTRAINT FOREIGN KEY (classObj) REFERENCES t_classInfo(classNo);
ALTER TABLE t_subject ADD CONSTRAINT FOREIGN KEY (subjectTypeObj) REFERENCES t_subjectType(typeId);
ALTER TABLE t_subject ADD CONSTRAINT FOREIGN KEY (teacherObj) REFERENCES t_teacher(teacherNo);
ALTER TABLE t_subSelect ADD CONSTRAINT FOREIGN KEY (subjectObj) REFERENCES t_subject(subjectId);
ALTER TABLE t_subSelect ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);
ALTER TABLE t_opus ADD CONSTRAINT FOREIGN KEY (subjectObj) REFERENCES t_subject(subjectId);
ALTER TABLE t_opus ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);
ALTER TABLE t_video ADD CONSTRAINT FOREIGN KEY (subjectObj) REFERENCES t_subject(subjectId);
ALTER TABLE t_video ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);
ALTER TABLE t_leaveword ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);



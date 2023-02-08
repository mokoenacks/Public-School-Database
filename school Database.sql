DROP DATABASE IF EXISTS `public_school`;
CREATE DATABASE `public_school`;
USE `public_school`;

-- student section

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dob` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

INSERT INTO students VALUES(20231,'Sandile Mokoena','1998-11-10','male','1342,Shatale,Zone 1','082255836','sandilemokoena@gmail.com','password20231','clement snr mokoena','pennelope mokoena','1');
INSERT INTO students VALUES(20232,'Clement Mogane','1997-10-05','male','1245 ,Shatale,Zone 2','012345756','clementmokoena@gmail.com','password20232','pheto malele','kokei malele','1');
-- end of student section

-- teacher section-- 

CREATE TABLE IF NOT EXISTS `teachers` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dob` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

INSERT INTO teachers VALUES (1000,'Pheto Malele','1982-05-05','male','N54,Shatale,Zone1','0751258654','pheto@gmail.com','password1000');
INSERT INTO teachers VALUES (1001,'Taetso Mashego','1985-05-10','male','N54,Shatale,Zone1','0751258654','taetso@gmail.com','password1001');

-- end of teacher's section


-- parents section

CREATE TABLE IF NOT EXISTS `parents` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

INSERT INTO `parents` VALUES (01,'clement snr mokoena','mokoena@parents.com','parent01',20231,'father','0821155836','1342,Shatale,Zone 1','sql developer');
INSERT INTO `parents` VALUES (02,'pennelope mokoena','mokoena@parents.com','parent02',20231,'mother','0822255836','1342,Shatale,Zone 1','educator');

-- end of parent section


-- class section

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

INSERT INTO `class`  VALUES (1, 'grade 12a', '12',1000);
INSERT INTO `class`  VALUES (2, 'grade 10b', '10',1001);
INSERT INTO `class`  VALUES (3, 'grade 9b', '9', 1001);

-- end of class section--

-- subject section--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

INSERT INTO subjects VALUES (01,'Mathematics',1,1001);
INSERT INTO subjects VALUES (02,'Natural Science',2,1001);
INSERT INTO subjects VALUES (03,'Languages',3,1001);

-- end of subject section

-- Marks section--
CREATE TABLE IF NOT EXISTS `marks` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;

INSERT INTO `marks` (mark_id,student_id,subject_id,class_id,mark_obtained,comment) VALUES  (1,20231,01,1,60,'passed'); -- check default
INSERT INTO `marks` VALUES  (2,20232,01,1,70,150,'passed');

-- end of marks section
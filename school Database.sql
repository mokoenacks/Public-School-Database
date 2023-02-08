DROP DATABASE IF EXISTS `public_school`;
CREATE DATABASE `public_school`;
USE `public_school`;

CREATE TABLE `students`(
    `student_id` INT NOT NULL AUTO_INCREMENT,
    `student_name` VARCHAR(50) NOT NULL,
    `student_dob` DATE,
    `student_status` VARCHAR(50),
    `teacher_id` INT,
    `assigned_teacher` VARCHAR(50),
    PRIMARY KEY(`student_id`),
    FOREIGN KEY(`teacher_id`)
);

INSERT INTO students VALUES(20231,'Sandile Mokoena','1998-11-10','undergraduate',1000,'Pheto Malele');
INSERT INTO students VALUES(20232,'Clement Mogane','1997-10-05','senior',1001,'Pheto Malele');
INSERT INTO students VALUES(20233,'Kholofelo Mashego','1995-12-15','graduate',1002,'Pheto Malele');

CREATE TABLE `teachers`(
    `teacher_id` INT NOT NULL auto_increment,
    `teacher_name` VARCHAR(50) NOT NULL,
    `teacher_dob` DATE,
    `student_id` INT,
    `assigned_students` VARCHAR(50),
    `assigned_subjects` VARCHAR(50),
    PRIMARY KEY(`teacher_id`),
    CONSTRAINT FOREIGN KEY(`assigned_students`) REFERENCES `students` (`student_id`),
    CONSTRAINT FOREIGN KEY(`assigned_subjects`) REFERENCES `subjects` (`subject_id`)
)AUTO_INCREMENT=1;

INSERT INTO teachers VALUES (1000,'Pheto Malele','1982-05-05',20231,'Sandile Mokoena','Natural Science');
INSERT INTO teachers VALUES (1001,'Taetso Mashego','1985-05-10',20232,'Clement Mogane','Mathematics');
INSERT INTO teachers VALUES (1002,'Clement Mashego','1989-02-10',20233,'Kholofelo Mashego','Languages');

CREATE TABLE `subjects`(
    `subject_id` INT NOT NULL auto_increment,
    `subject_name` VARCHAR(50) NOT NULL,
    `assigned_students` VARCHAR(50),
    `student_id` INT,
    `assigned_teacher` VARCHAR(50),
    `teacher_id` INT ,
    PRIMARY KEY (`subject_id`),
    CONSTRAINT FOREIGN KEY(`assigned_students`) REFERENCES `students` (`student_id`),
    CONSTRAINT FOREIGN KEY(`assigned_teacher`) REFERENCES `teacher` (`teacher_id`)

)AUTO_INCREMENT=1;

INSERT INTO subjects VALUES (01,'Mathematics','Clement Mogane',20232,`Taetso Mashego`,1001);
INSERT INTO subjects VALUES (02,'Natural Science','Sandile Mokoena',20231,`Pheto Malele`,1001);
INSERT INTO subjects VALUES (03,'Languages','Kholofelo Mashego',20233,`Clement Mashego`,1001);

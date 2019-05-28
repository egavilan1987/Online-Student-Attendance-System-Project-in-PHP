CREATE DATABASE attendance;

USE attendance;

CREATE TABLE tbl_admin(
    admin_id INT(11) AUTO_INCREMENT,
    admin_user_name VARCHAR(100) NOT NULL,
    admin_password VARCHAR(150) NOT NULL,
    PRIMARY KEY(admin_id)
);

CREATE TABLE tbl_grade(
    grade_id INT(11) AUTO_INCREMENT,
    grade_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(grade_id)
);

CREATE TABLE tbl_teacher(
    teacher_id INT(11) AUTO_INCREMENT,
    teacher_name STRING NOT NULL,
    teacher_address STRING NOT NULL,
    teacher_email  VARCHAR(100) NOT NULL,
    teacher_password VARCHAR(100) NOT NULL,
    teacher_qualification VARCHAR(100) NOT NULL,
    teacher_doj DATE NOT NULL,
    teacher_image  VARCHAR(100),
    teacher_grade_id INT(11) NOT NULL,
    PRIMARY KEY(teacher_id)
);

CREATE TABLE tbl_attendance(
     attendance_id INT(11) AUTO_INCREMENT,
     student_id INT(11) NOT NULL,
     attendance_status VARCHAR(50) NOT NULL,
     attendace_date DATE NOT NULL,
     teacher_id INT(11) NOT NULL
     PRIMARY KEY(attendace_id)
);

CREATE TABLE tb_student(
     student_id INT(11) AUTO_INCREMENT
     student_name VARCHAR(150),
     student_rol_number INT(11),
     student_dob DATE NOT NULL,
     student_grade_id INT(11),
     PRIMARY KEY(student_id)
);

CREATE DATABASE mylibrary;
USE mylibrary;

CREATE TABLE user (
  doc_id int PRIMARY KEY,
  doc_type varchar(55) NOT NULL,
  name varchar(55) NOT NULL,
  lastname varchar(55) NOT NULL,
  email varchar(70) NOT NULL
);

CREATE TABLE student (
	id int AUTO_INCREMENT PRIMARY KEY,
    school_id int,
    constraint foreign key (school_id) references school(id),
    program_id int,
    constraint foreign key (program_id) references program(id),
    user_id int,
	CONSTRAINT FOREIGN KEY (user_id) REFERENCES user(doc_id)
    
);

CREATE TABLE teacher (
	id int PRIMARY KEY,
    active bool,
    school_id int,
    constraint foreign key (school_id) references school(id),
    id_user int,
	CONSTRAINT FOREIGN KEY (id_user) REFERENCES user(doc_id)
);

create table school (
	id int auto_increment primary key,
    name varchar(30)
);

create table program (
	id int auto_increment primary key,
    name varchar(30),
    school_id int,
    constraint foreign key (school_id) references school(id)
);



  

DROP TABLE user;
drop table school;
drop table program;
drop table student;
drop table teacher;
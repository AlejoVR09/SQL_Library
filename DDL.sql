CREATE DATABASE mylibrary;
USE mylibrary;

DROP TABLE users;
drop table school;
drop table program;
drop table student;
drop table teacher;
drop table book;

CREATE TABLE users (
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
	CONSTRAINT FOREIGN KEY (user_id) REFERENCES users(doc_id)
    
);

CREATE TABLE teacher (
	id int PRIMARY KEY,
    active bool,
    school_id int,
    constraint foreign key (school_id) references school(id),
    id_user int,
	CONSTRAINT FOREIGN KEY (id_user) REFERENCES users(doc_id)
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

create table author (		
	id int auto_increment primary key,
    name varchar(30)
);

create table editorial (
	id int auto_increment primary key,
    name varchar(30)
);  

create table category (
	id int auto_increment primary key,
    name varchar(30)
); 

create table library (
	id int auto_increment primary key,
    name varchar(30)
); 

create table book (
	isbn bigint primary key,
    name varchar(50),
    page_number int,
    published_year date,
    author_id int,
    constraint foreign key (author_id) references author(id),
    editorial_id int,
    constraint foreign key (editorial_id) references editorial(id),
    category_id int,
    constraint foreign key (category_id) references category(id),
    library_id int,
    constraint foreign key (library_id) references library(id)
);

create table loan (
	id int auto_increment primary key,
    took date,
    return_date date,
    user_id int,
    constraint foreign key (user_id) references users(doc_id),
    book_id bigint,
    constraint foreign key (book_id) references book(isbn),
    library_id int,
    constraint foreign key (library_id) references library(id)
);



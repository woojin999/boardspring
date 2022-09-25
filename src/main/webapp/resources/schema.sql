CREATE USER 'reviewuser'@'%' IDENTIFIED BY 'mysql';

CREATE DATABASE `reviewdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

GRANT Alter ON reviewdb.* TO 'reviewuser'@'%';
GRANT Create ON reviewdb.* TO 'reviewuser'@'%';
GRANT Create view ON reviewdb.* TO 'reviewuser'@'%';
GRANT Delete ON reviewdb.* TO 'reviewuser'@'%';
GRANT Drop ON reviewdb.* TO 'reviewuser'@'%';
GRANT Grant option ON reviewdb.* TO 'reviewuser'@'%';
GRANT Index ON reviewdb.* TO 'reviewuser'@'%';
GRANT Insert ON reviewdb.* TO 'reviewuser'@'%';
GRANT References ON reviewdb.* TO 'reviewuser'@'%';
GRANT Select ON reviewdb.* TO 'reviewuser'@'%';
GRANT Show view ON reviewdb.* TO 'reviewuser'@'%';
GRANT Trigger ON reviewdb.* TO 'reviewuser'@'%';
GRANT Update ON reviewdb.* TO 'reviewuser'@'%';
GRANT Alter routine ON reviewdb.* TO 'reviewuser'@'%';
GRANT Create routine ON reviewdb.* TO 'reviewuser'@'%';
GRANT Create temporary tables ON reviewdb.* TO 'reviewuser'@'%';
GRANT Execute ON reviewdb.* TO 'reviewuser'@'%';
GRANT Lock tables ON reviewdb.* TO 'reviewuser'@'%';
GRANT Grant option ON reviewdb.* TO 'reviewuser'@'%';

drop table if exists `member`;
create table `member` (
	mno bigint NOT NULL auto_increment,
	id varchar(100)	NOT NULL,
	pwd varchar(100) NOT NULL,
	nick_name varchar(100) NOT NULL,
	member_img varchar(1000) default '0',
	reg_at datetime	default current_timestamp,
	primary key(mno)
) default CHARSET=utf8mb4;

drop table if exists board;
create table board (
	bno bigint NOT NULL auto_increment,
	category varchar(100) NOT NULL,
	pname varchar(100) NOT NULL,
	shopname varchar(100) NOT NULL,
	purl varchar(100) NOT NULL,
	price int	NOT NULL,
	description text NOT NULL,
	read_count int default 0,
	writer bigint NOT NULL,
	product_img varchar(3000) NOT NULL,
	reg_at datetime default current_timestamp,
	mod_at datetime default current_timestamp,
	primary key(bno)
) default CHARSET=utf8mb4;

DROP TABLE IF EXISTS comment;
CREATE TABLE comment (
	cno bigint NOT NULL auto_increment,
	bno bigint NOT NULL references board(bno) on delete cascade,
	parent bigint default '0',
	content text NOT NULL,
	writer bigint NOT NULL,
	reg_at datetime default current_timestamp,
	mod_at datetime default current_timestamp,
	is_deleted char(1) default '0' NOT NULL,
	is_answer char(1) default '0' NOT NULL,
	primary key (cno)
) default CHARSET=utf8mb4;

DROP TABLE IF EXISTS image_file;
CREATE TABLE image_file (
	uuid varchar(256)	NOT NULL,
	save_dir varchar(1000)	NOT NULL,
	image_name varchar(1000)	NOT NULL,
	bno	bigint NOT NULL,
	mno	bigint NOT NULL,
	primary key(uuid)
) default CHARSET=utf8mb4;

DROP TABLE IF EXISTS `like`;
CREATE TABLE `like` (
	ino	bigint	NOT NULL auto_increment,
	bno	bigint	NOT NULL,
	mno	bigint	NOT NULL,
	primary key(ino)
) default CHARSET=utf8mb4;

DROP TABLE IF EXISTS report;
CREATE TABLE report (
	rno bigint not null auto_increment,
	mno bigint not null,
	target_mno bigint not null,
	report_title varchar(1000) not null,
	report_content text not null,
	reg_at datetime default current_timestamp,
	primary key (rno)
) default CHARSET=utf8mb4;



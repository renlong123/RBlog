drop database rblog if exists ;
create database rblog;

use rblog;

create table user_info(
  user_id int(10) auto_increment,
  user_realname varchar(50) not null,
  user_password varchar(50) not null,
  user_email varchar(50) not null,
  user_nikename varchar(50) not null,
  user_gender int(1) not null,
  user_registerdate DATE not null,
  user_headportait varchar(50),
  user_backgroundpic varchar(50),
  user_description varchar(255),
  primary key(user_id)
);

create table article_info(
  article_id int(10) auto_increment,
  article_title varchar(255) not null,
  article_content text not null,
  article_createdate date not null,
  article_lastmodify date not null,
  article_userid int(10) not null,
  article_categoryid int(10) not null,
  primary key(article_id)
);

create table category_info(
  category_id int(10) auto_increment,
  category_name varchar(50) not null,
  category_description varchar(255) not null,
  primary key(category_id)
);
create database socials;
use socials;

create table users
(
  id_user int Primary key,
  id_group int,
  first_name varchar(30),
  fam_name varchar(50),
  email text,
  pass varchar(15),
  about text,
  scheduleId int,
  calenderId int
);

create table group1
(
  id_group int primary key,
  title varchar(50)
);

create table files
(
  id_file int primary key,
  id_user int,
  date_modified date,
  title varchar(30),
  filename varchar(50)
);

create table pages
(
  id_page int primary key,
  id_user int,
  date_modified date,
  title varchar(50),
  body text,
  is_home enum('yes', 'no')
);

create table posts
(
  id_post int primary key,
  id_topic int,
  id_user int,
  date_created date,
  body text
);

create table topics
(
  id_topic int primary key,
  id_user int,
  date_modified date,
  title varchar(30)
);

create table schedule
(
 id_sch int primary key,
 time_start datetime,
 time_end datetime,
 weekday date,
 title varchar(30)
);

create table calendar
(
 id_cal int primary key,
 date_start date,
 date_end date,
 title varchar(50)
);

-- users foreign keys
alter table users add foreign key(scheduleId)
  references schedule(id_sch);
  
alter table users add foreign key(calenderId)
  references calendar(id_cal);

alter table users add foreign key(id_group)
  references group1(id_group);

-- ----------

alter table files add foreign key(id_user)
  references users(id_user);

alter table pages add foreign key(id_user)
  references users(id_user);

alter table posts add foreign key(id_user)
  references users(id_user);

alter table topics add foreign key(id_user)
  references users(id_user);

alter table posts add foreign key(id_topic)
  references topics(id_topic);

alter table users add foreign key(id_group) references group1(id_group)

-- Task

create database research;
use research;

create table Article
(
  ID INT Primary key,
  Title varchar(50) NOT NUll,
  PublishStatus varchar(20),
  Topic varchar(50) Not Null,
  Author varchar(50) Not Null,
  PublicationDate DATE
);

create table Topic
(
  Name varchar(50),
  Description TEXT
);

create table Author
(
  Username varchar(50),
  DisplayName TEXT
);

create table Course
(
  ShortName varchar(5),
  FullName varchar(30)
);

create table Relevant_For
(
 ArticleID INT,
 Course varchar(5),
 Primary key(ArticleID, Course)
);
-- adding primary key
alter table course add primary key(ShortName);
alter table author add primary key(Username);
alter table Topic add primary key(Name);

-- adding foreign key
alter table Article add foreign key(Topic)
  references Topic(Name);
  
alter table Article add foreign key(Author)
  references Author(Username);
  
alter table Relevant_For add foreign key(ArticleID)
  references Article(ID);

alter table Relevant_For add foreign key(Course)
  references Course(ShortName);
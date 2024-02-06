create database task;

use task;

create table student
(
 id INT,
 lastName varchar(15),
 dateOfBirth DATE,
 GPA DECIMAL(4,1),
 enrolled bool
 );
 
 drop database college;
 drop database company;
 
 -- Single line comment
 /*Multi line
 comment*/
 
 create database College;
 
 use college;
 
 create table Student(
     studentId INT Primary Key auto_increment,
     studentName varchar(15) NOT NULL,
     studentAge INT CHECK(studentAge>=18),
     studentLocation VARCHAR(15) DEFAULT 'London'
     );
     
     describe student;
     -- Inserting data in mysql
     insert into student (studentName, studentAge, studentLocation) values
     ('John', 25, 'Manchester');
     
     select * from Student;
     
     insert into student (studentName, studentAge, studentLocation) values
     ('Joe', 19, 'Liverpool');
     
      insert into student (studentName, studentAge) values
     ('Mark', 22);
     
     create table results
     (
      ID INT primary key auto_increment,
      NAME VARCHAR(15) NOT NULL,
      CLASS VARCHAR(10) NOT NULL,
      MARK INT CHECK(Mark >=0 and MARK <=100),
      GENDER VARCHAR(20) default 'Prefer not to repond'
     );
     
     describe results;
     
     insert into results (NAME, CLASS, MARK, GENDER) values 
     ('Big John', 'Four', 55, 'female');
     
     select * from results;
     
    -- new database
    create database world;
    use world;
    create table country(
    ID INT primary key,
    countrName VARCHAR(15) NOT NULL
    );
    
    create table city(
	cityID int primary key,
    cityName varchar(20) NOT NULL,
    countryID INT,
    foreign key (countryID) References Country(ID)
    );
    
     describe city;
 
 -- Updating Data
 -- UPDATE tableName SET columnName=value WHERE Condition
 
 use college;
 
 select * from results;
 update results SET NAME='Joe' WHERE ID=10;
 
 update results SET NAME='Harry', CLASS='Two', MARK= 95 WHERE NAME='Tes Qry';
 
 SET SQL_SAFE_UPDATES=0;
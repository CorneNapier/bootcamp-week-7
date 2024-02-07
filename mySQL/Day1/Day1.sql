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
     
  
 

 
 
 
 
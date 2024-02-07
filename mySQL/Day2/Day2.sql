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
 
 use college;
 
 create table Department (
  Deptno INT primary key,
  dname varchar(15) NOT NULL,
  loc varchar(15) NOT NULL
  );
  
  create table employee (
  Empno INT primary key,
  Ename VARCHAR(1) NOT NULL,
  Job VARCHAR(15) NOT NULL,
  Deptno INT,
  foreign key (Deptno) References Department(Deptno)
  );
 
 insert into department (Deptno, dname, loc) values 
 (30, 'Finance', 'New York');
 
 insert into employee (Empno, Ename, Job) values
 (103, 'C', 'Manager');
 
 select * from employee;
 select * from department;
 
 update employee set Deptno=20 WHERE Empno=103;

/*
CREATE two tables named (Student and Courses) with below columns:
Student:
1.  passportNumber: datatype = int
2.  studentName: datatype= varchar (10)
3.  studetnAge: datatype=int
Course:
1.  courseID: datatype = int (10)
2.  courseName: datatype = varchar (12)
3.  startDay: timeStamp
Constraint for Student table:
1.  the passportNumber should be primary key.
2.  The studentName can’t be null.
3.  The studentAge can’t be null. It will be taking 18 as a default value.
Constraint for Course Table:
1.  The courseID should be primary key and can not be null.
2.  The courseName should only take (HTML, CSS, JavaScript, Database, Phyton) values.  
Note:
1. insert 2 records in each table individually.
2. insert 5 records in each table with multipl
*/
create database Company;
use Company;

create table employee
(
  Fname varchar(50),
  Lname varchar(50),
  Ssn INT primary key,
  Bdate date,
  Address text,
  Sex varchar(20),
  Salary INT,
  Super_ssn int,
  Dno INT
);

create table department
(
  Dname varchar(50),
  Dnumber INT Primary Key,
  Mgr_ssn Int,
  Mgr_start_date date
);

create table dept_locations
(
  Dnumber Int,
  Dlocation varchar(50),
  Primary Key(Dnumber, Dlocation)
);

create table project
(
  Pname varchar(30),
  Pnumber Int primary key,
  Plocation varchar(30),
  Dnum int
);

create table works_on
(
  Essn Int,
  Pno int,
  Hours int,
  Primary Key(Essn, Pno)
);

create table dependent
(
  Essn int,
  Dependent_name varchar(30),
  Sex varchar(20),
  Bdate date,
  Relationship varchar(30),
  Primary Key(Essn, Dependent_name)
);

alter table employee add foreign key(Super_ssn)
  references employee(Ssn);
  
alter table department add foreign key(Mgr_ssn)
  references employee(Ssn);
  
alter table works_on add foreign key(Essn)
  references employee(Ssn);

alter table dependent add foreign key(Essn)
  references employee(Ssn);
  
alter table employee add foreign key(Dno)
  references department(Dnumber);

alter table dept_locations add foreign key(Dnumber)
  references department(Dnumber);

alter table project add foreign key(Dnum)
  references department(Dnumber);

alter table works_on add foreign key(Pno)
 references project(Pnumber);
  
  

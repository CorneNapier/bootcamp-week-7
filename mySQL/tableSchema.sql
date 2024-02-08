/* first create all tables with primary key
 once you have created all the tables then, add foreign key using alter command*/

 create database world;
 use world;
 create table Country
 (
   Code INT primary key,
   Name VARCHAR(50) NOT NULL,
   Continent VARCHAR(30),
   Population INT,
   Capital INT
 );
 
 create table City
 (
   ID INT PRIMARY KEY,
   Name VARCHAR(20) NOT NULL,
   CountryCode INT,
   Population DECIMAL(20,2)
 );
 
 create table CountryLanguage
 (
   CountryCode INT,
   Language VARCHAR(50),
   isOfficial boolean,
   Percentage decimal(4,1),
   PRIMARY KEY(CountryCode, Language) -- adding composite primary key
 );
 
 alter table Country ADD FOREIGN KEY (Capital)
  references CITY(ID);
  
  alter table City ADD FOREIGN KEY (CountryCode)
   references Country(Code);
   
alter table CountryLanguage ADD foreign key (CountryCode)
  references Country(Code);
  
/* Relationship types
One to One
One to Many
Many to Many */
 
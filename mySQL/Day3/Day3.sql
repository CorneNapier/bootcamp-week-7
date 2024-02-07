 /* Difference between truncate, delete and drop:
 The DROP command in SQL removes the table from the database, 
 the DELETE command removes one or more records from the table, 
 and the TRUNCATE command removes all the rows from the existing table.*/

use college;
 select * from student;
 
 insert into student(studentName, studentAge, studentLocation) values
 ('Pete', 31, 'Leeds'),
 ('Harry', 22, 'Portsmouth'),
 ('Sarah', 31, 'Southampton');
 
 -- DELETE FROM tableName WHERE condition
 Delete from student where studentName='Joe' and studentLocation='Liverpool';
  select * from student;
  
  -- TRUNCATE tableName
  truncate student;
   select * from student;
   delete from student; /* works like truncate however we can rollback data deleted with delete 
   but data deleted with truncate can't be rollback.*/
   
-- drop can delete database, table, and table column
drop table results;
   
   -- Task
   delete from employee where dob!= '1990-06-01' and (name='Tim' or id=2);
   
   -- alter command
   -- Is used to delete, rename, change the data type of a column and add a column
   -- can also be used to rename table, add/delete primary key and foreign key
   -- in other words it can manipulate the schema of a database
   
   use college;
   
   alter table student add column DOB date;
   describe student;
   
   alter table student DROP column DOB;
   describe student;
   
   -- used modify to change data type of column
   alter table student MODIFY column studentLocation VARCHAR(30);
   describe student;
   
   -- used rename to change column name
   alter table student rename column studentName to firstName;
   describe student;
   
   alter table student rename to Learners;
   describe learners;
   
   select * from learners;
   
   alter table learners drop primary key;
   -- cant drop primary key if its auto_increment. auto_increment is only for primary key
   
   alter table learners modify column studentId INT;
   -- removed auto_increment
   
   alter table learners drop primary key;
   describe learners;
   
   alter table learners add primary key(studentId);
   
   
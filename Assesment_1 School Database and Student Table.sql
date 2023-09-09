/*Question 2: Open school database, then select student table and use following SQL statements. 
---TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT---*/


Create Database School;

use School;

--- I will Create table Student using UI ---


/*(Q. 1 To display all the records form STUDENT table. SELECT * FROM student ;*/

select * from Student;


/* Q2. To display any name and date of birth from the table STUDENT. */

SELECT StdName, DOB FROM student;


/*Q3. To display all students record where percentage is greater of equal to 80 FROM student table.*/

SELECT * FROM student WHERE percentage >= 80;

/* Q4. To display student name, stream and percentage where percentage of student is more than 80*/

SELECT StdName, Stream, Percentage FROM STUDENT WHERE percentage > 80;

/* Q5. To display all records of science students whose percentage is more than 75 form student table */

Select * From Student where Stream= 'Science' and Percentage>75;



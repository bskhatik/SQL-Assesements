CREATE DATABASE assesment_1;
USE ASSESMENT_1;
CREATE TABLE Worker
( Worker_ID INT primary key NOT NULL,
 FIRST_NAME varchar (35),
 LAST_NAME VARCHAR(35),
 SALARY INT,
 JOINING_DATE timestamp,                                 -- here we have used timestamp to store date time in combine
 DEPARTMENT VARCHAR(35)
 );
Select * from worker;

-- i entered details of rows manualy thry ui (result grid)

ALTER TABLE WORKER
MODIFY COLUMN JOINING_DATE DATETIME;

SELECT Worker_ID, FIRST_NAME, LAST_NAME, SALARY, date_format(JOINING_DATE,'%m/%e/%Y %l:%i') as JOINING_DATE_FORMATED , DEPARTMENT FROM WORKER ;
-- here we have formated date datatype to show in 06/11/2014 9:00 format as shown in assesment data table

/* Q.1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
Ascending and DEPARTMENT Descending. */

select * from worker order by FIRST_NAME ASC,DEPARTMENT DESC;

/* 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
from the Worker table.*/

SELECT * FROM WORKER WHERE FIRST_NAME IN ("VIPUL", "SATISH");


/* 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
contains six alphabets. */
SELECT * FROM WORKER WHERE FIRST_NAME LIKE "_____h";     -- here we used underscore wildcard(_) five times before h to find above query


/* 4. Write an SQL query to print details of the Workers whose SALARY lies between 100000 to 500000 */
USE ASSESMENT_1;
SELECT * FROM WORKER WHERE SALARY>= 100000 AND SALARY<=500000 ; 
SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 AND 500000 ; 

/* 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. */
SELECT Worker_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT, COUNT(*)  FROM WORKER 
GROUP BY Worker_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT
HAVING COUNT(*)>1 ;

/* 6. Write an SQL query to show the top 6 records of a table. */

SELECT * FROM WORKER LIMIT 6;

/* 7. Write an SQL query to fetch the departments that have less than five people in them. */

SELECT DEPARTMENT , COUNT(*) AS "TOTAL PERSON IN DEPARTMENT" FROM WORKER
GROUP BY DEPARTMENT
HAVING COUNT(*)<5 ;

/* 8. Write an SQL query to show all departments along with the number of people in there.*/

SELECT DEPARTMENT, COUNT(*) AS"NUMBER OF PEOPLE WORKING IN DEPT" FROM WORKER
GROUP BY DEPARTMENT;

/* 9. Write an SQL query to print the name of employees having the highest salary in each
department. */

SELECT FIRST_NAME, LAST_NAME ,DEPARTMENT,SALARY FROM worker  WHERE (DEPARTMENT,SALARY)IN (SELECT DEPARTMENT, MAX(SALARY) FROM WORKER GROUP BY DEPARTMENT);




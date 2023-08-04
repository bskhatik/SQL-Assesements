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

select * from worker order by FIRST_NAME asc,DEPARTMENT desc;

/* 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
from the Worker table.*/

SELECT * FROM WORKER WHERE FIRST_NAME IN ("VIPUL", "SATISH");


/* 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
contains six alphabets. */
SELECT * FROM WORKER WHERE FIRST_NAME LIKE "_____h";     -- here we used underscore wildcard(_) five times before h to find above query





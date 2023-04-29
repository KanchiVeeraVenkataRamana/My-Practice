CREATE DATABASE PRACTICE;						  --- create a database first : create database database_name;

USE PRACTICE;									  --- use database : use database_name;

CREATE TABLE STUDENT_TABLE						  --- create a table : create table table_name;
(ID INT,STUDENT_NAME VARCHAR(30),MARKS INT);      --- (column_name1 datatype,column_name2,...,column_namen datatype)

SELECT * FROM STUDENT_TABLE;                      --- table shown : select * from table_name;

INSERT INTO STUDENT_TABLE(ID,STUDENT_NAME,MARKS)  ---table values insert: insert into table_name(column_name1,column_name2,...,column_name n);
VALUES(1,'CHANDU',98),							  ---                     values(value1,valu2,...value n);
(2,'SHYAM',93),
(3,'SAI RAGHAVA',99),
(4,'BHARTHI',94),
(5,'RATHNAM',99),
(6,'VENKY',92),
(7,'VINAY',93);

SELECT  STUDENT_NAME, MARKS FROM STUDENT_TABLE;   --shown the values form column names: select column_1,..column_n from table_name;

ALTER TABLE STUDENT_TABLE                         --create the column name: alter table table_name add column_name datatype;
ADD GENDER VARCHAR(40);

SELECT GENDER FROM STUDENT_TABLE				 --shown the null values: select column_name1,column_2,..,column_n from table_name
WHERE GENDER IS NULL;						     --                       where column_name is null;

ALTER TABLE STUDENT_TABLE						 --delete the column: alter table table_name 
DROP COLUMN GENDER;								 --                   drop column column_name;
SELECT * FROM STUDENT_TABLE;

EXEC sp_rename 'STUDENT_TABLE.ID',				-- rename the column name: exec sp_rename 'table_name.column_name',
'STUDENT_ID','Column';							--						   'new_column_name','Column';

UPDATE STUDENT_TABLE SET						-- update the values: update table_name set condition where condition;
STUDENT_NAME='RAMANA' WHERE MARKS=92;

DELETE FROM STUDENT_TABLE WHERE				    -- delete the one row: delete table_name where condition;
STUDENT_NAME='SAI RAGHAVA';
DELETE FROM STUDENT_TABLE WHERE
STUDENT_NAME='RATHNAM';

TRUNCATE TABLE STUDENT_TABLE;					-- all rows the data deleted: truncate table table_name;

DROP TABLE STUDENT_TABLE;						-- the entire table table was deleted: drop table table_name;


CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25),
    EMAIL VARCHAR(100)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT,EMAIL) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR','monikaarora1@gmail.com'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin','niharikaarora1@gmail.com'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR','vishalsinghal1@gmail.com'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin','amitabhsingh1@gmail.com'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin','vivekbhati1@gmail.com'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account','vipuldiwan1@gmail.com'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account','satishkumar1@gmail.com'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin','geetikachauhan1@gmail.com');

SELECT Salary
FROM Worker W1
WHERE 6-1 = (
 SELECT COUNT( DISTINCT ( W2.Salary ) )
 FROM Worker W2
 WHERE W2.Salary >= W1.Salary
 );
 
 Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary 
and W.WORKER_ID != W1.WORKER_ID;
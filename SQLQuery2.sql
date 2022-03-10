CREATE DATABASE Mytable;

CREATE TABLE myInfo(
eid INT IDENTITY,
ename VARCHAR(50),
email VARCHAR(50),
salary INT);

alter table myInfo add city varchar(40)

SELECT * FROM myInfo

SELECT ename , eid FROM myInfo;

SELECT ename , email FROM myInfo;

INSERT INTO myInfo(ename,email,salary,city) 
VALUES
('Aditya','aditya@gmail.com',20000,'Deoria'),
('Sanjay','Sanjay@gmail.com',21000,'Mohali'),
('Manoj','Manoj@gmail.com',20020,'Kanpur'),
('Surya','Surya@gmail.com',20000,'Lucknow'),
('Prabhakar','Prabhakar@gmail.com',20300,'Rajkot'),
('Abhay','Abhay@gmail.com',20050,'Indore'),
('Satish','Satish@gmail.com',20200,'Noida'),
('Vikas','Vikas@gmail.com',20005,'Delhi'),
('Pankaj','Pankaj@gmail.com',20800,'Punjab');

SELECT * FROM myInfo;

UPDATE myInfo set city='Mumbai' where eid=9;

SELECT ename, salary from myInfo where city='Mumbai';

SELECT ename, salary, city from myInfo where ename='Aditya' AND city='Deoria';

SELECT ename, salary, email from myInfo where ename='Aditya' AND city='Deoria';

SELECT ename, salary, email, city from myInfo where ename='Sanjay' OR city='Mirzapur';

SELECT sum(salary) from myInfo where ename='Sanjay' AND city='Mirzapur';

SELECT count(city), sum(salary) from myInfo where ename='Sanjay' OR city='Mirzapur';
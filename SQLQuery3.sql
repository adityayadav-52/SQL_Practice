create database Aditya;
use Aditya;

create table data(
eid int identity,
ename varchar(40),
city varchar(30),
salary int,
gender varchar(10)
);

select * from data;

insert into data(ename,city,salary,gender) values('Aditya','Deoria',30000,'Male'),
('Sanjay','Mirzapur',30200,'Male'),
('Rina','Agra',30100,'Female'),
('Tina','Lucknow',20000,'Female'),
('Rohan','Kanpur',10000,'Male'),
('Riya','Gorkhapur',15000,'Female'),
('Ravi','Mohali',21000,'Male'),
('Raj','Rajkot',24000,'Male'),
('Anjali','Mumbai',14000,'Female'),
('Sohan','Kaushambi',16000,'Male'),
('Ram','Delhi',15200,'Male'),
('Aditya','Deoria',21000,'Male'),
('Raj','Rajkot',24000,'Male'),
('Anjali','Mumbai',14000,'Female'),
('Sohan','Noida',16000,'Male'),
('Sita','Jabalpur',15200,'Female')

select * from data;

-- finding duplicate value using distinct 
select distinct gender,ename, salary from data;

select count(distinct gender) from data;

select * from data where gender='Female';
update data set ename='Janhvi' where eid=4;
update data set ename='Ranjan' where eid=5;

select ename,eid,salary,gender from data;
select ename,eid,salary,gender from data where city='Mumbai';

select * from data;

select * from data where salary>20000 and salary<300000;

select count(city) ename from data where city='Mumbai'; 

select * from data where salary>=10000 AND salary<=20000;

select * from data where salary between 20000 AND 30000;

-- select where 1st letter is a
select * from data where ename like 'a%';

-- select where s comes between ename anywhere
select * from data where ename like '%s%';

-- select where 2nd letter is a
select * from data where ename like '_a%';

select * from data where ename like 'a%' and ename like '%a';

select top 5 * from data;

select top 50 percent * from data;

-- select last 5 row
select top 5 * from data order by eid desc;

select * from data order by ename;

select * from data order by ename desc;
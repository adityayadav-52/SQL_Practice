create database JoinTable;
use JoinTable;

create table emp(
eid int,
ename varchar(40),
salary int,
gmail varchar(40),
desg varchar(30)
);

select * from emp;

create table department(
departid int,
departname varchar(30),
empid int
);

select * from emp;
select * from department;

insert into emp(eid, ename, salary, gmail, desg) values (11,'Aditya Yadav',12000,'aditya@gmail.com','hr'),
(22,'Sameer ',13000,'sameer@gmail.com','develpoment'),
(33,'Amit',14000,'amit@gmail.com','accountent'),
(44,'Sumit',15000,'sumit@gmail.com','operator'),
(55,'Sanjay',17000,'sanjay@gmail.com','hr')


insert into department(depart_id, departname, eid) values
(1,'.net','11'),
(2,'.net','22'),
(3,'.net','33'),
(4,'.net','44'),
(5,'.net','55')

update department set departname='javadeveloper' where depart_id=2;

update department set departname='Accountant' where depart_id=3;

update department set departname='Data Entry' where depart_id=4;

update department set departname='Head Hr' where depart_id=5;

update department set eid=22 where departname='Head Hr' ;

select * from emp inner join department on emp.eid=department.eid;

select emp.ename, department.departname from emp inner join department on emp.eid=department.eid;

select * from emp left join department on emp.eid=department.eid;

select * from emp right join department on emp.eid=department.eid;
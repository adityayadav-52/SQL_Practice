create database crud;

use crud;

create table employee(
Id int identity primary key not null,
Name varchar(30) not null,
Email varchar(30) not null,
Mobile int not null,
Salary int not null
);

select * from employee;

alter table employee alter column Mobile varchar(13);

insert into employee(Name, Email, Mobile, Salary) values('Aditya Yadav','aditya@gmail.com','9532388258',25000),
('Anjali','anjali@gmail.com','9532582542',22000)
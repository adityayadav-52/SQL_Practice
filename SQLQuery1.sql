create database studentinfo;

use studentinfo;

-- first table in my database

create table stuDetail(
sid int identity,
sname varchar(100),
fee int not null,
Roll varchar(20)
);


-- second table in my database

create table stuResult(
sid int identity,
sname varchar(100),
marks int not null,
result varchar(20)
);

-- insert a single row

insert into stuDetail(sname,fee,Roll) values('Aditya Yadav',2000,'A-201');

-- bulk insertion or inserting multiple row

insert into stuDetail(sname,fee,Roll) values
('Sanjay Singh',1500,'A-202'),
('Manoj Yadav',2500,'A-202'),
('Surya Prashad',1600,'A-202'),
('Prabhakar Tiwari',1700,'A-202');

select * from Mydetail;
select * from stuResult;

-- add a new column in table

alter table stuDetail add stuemail varchar(30)

-- rename the name of table

sp_rename 'stuDetail' , 'Mydetail';

-- rename the name column name

sp_rename 'Mydetail.Roll','RollNo';

-- delete the row that you are instreted

delete from Mydetail where sid=2

-- truncate the table its delete only table data not the schema of table

truncate table Mydetail;
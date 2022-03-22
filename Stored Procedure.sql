create database usmydb;

use usmydb;

create table record(id int, sname varchar(30),semail varchar(30));

create table totalamount(x int, y int);

insert into record(id,sname,semail) values
(1, 'Aditya','aditya@gmail.com'),
(2, 'Sanajay','sanjay@gmail.com'),
(3, 'Ram','ram@gmail.com');

create proc FINDDATA
AS
BEGIN
select * from record where id=2;
END

alter proc FINDDATA
AS
BEGIN
select * from record where id=2;
select * from record
END

alter proc FINDDATA
AS
BEGIN
select * from record
END

FINDDATA

create proc INSERTDATA
@id int,
@sname varchar(30),
@email varchar(30)
AS
BEGIN
insert into record(id,sname,semail) values (@id,@sname,@email)
END


INSERDATA 4,'Raju','raju@gmail.com'

INSERDATA @sname='Jay', @id=5, @email='jay@gmail.com'

alter proc INSERTDATA
@id int,
@sname varchar(30),
@email varchar(30)
AS
BEGIN
declare @existId int
select @existId=id from record where id=@id
if @existId>0
BEGIN
select 'id exist !'
END
else 
BEGIN
insert into record(id,sname,semail) values (@id,@sname,@email)
END
END

INSERTDATA @sname='Mohan', @id=8, @email='mohan@gmail.com'

FINDDATA

alter proc INSERTDATA
@id int,
@sname varchar(30),
@email varchar(30)
AS
BEGIN
declare @validname varchar(30)
select @validname=sname from record where sname=@sname

if @validname <> 'null'
BEGIN
select 'name already exist !'
END

else 
BEGIN
insert into record(id,sname,semail) values (@id,@sname,@email)
END

END
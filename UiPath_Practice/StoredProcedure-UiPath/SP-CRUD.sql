use rpa
_____________________________________________________________________
Student Table Creation
____________________________________________________________________
create table studentData(
id int not null,
name varchar(255),
location varchar(255),
primary key(id)
);

drop table studentData
_________________________________________________________________________
Fetch data from Student table
________________________________________________________________________________-

select * from studentData

insert into studentData(id, name, location) values (1, 'harsha','jalgaon')

insert into studentData(id, name, location) values (2, 'bhavana','pune')
insert into studentData(id, name, location) values (3, 'nayan','dhule')
____________________________________________________________________________________
stored procedure for select query
_________________________________________________________________________________
create procedure studentDataFetch
@id int
as
begin
	  select id,
	  name,
	  location
	  from studentData where id=@id
end

exec studentDataFetch 1
____________________________________________________________________________
stored procedure for insert query
______________________________________________________________________________
create procedure insertStudentData
@id int, @name varchar(255),@location varchar(255)
as
begin
	insert into studentData values (@id,@name,@location)
end

exec insertStudentData 5,nisha,pune
___________________________________________________________________________________
__stored procedure for delete query
__________________________________________________________________________________


create procedure deleteStudentData
@id int
as
begin
	 delete from studentData where id=@id
end


exec deleteStudentData 12
____________________________________________________________________________________
Stored Procedure for Update query
________________________________________________________________________
create procedure updateStudentData
@id int, @name varchar(255),@location varchar(255)
as
begin
	update studentData set name=@name,location=@location where id=@id
end

exec updateStudentData 4,aditya,pune


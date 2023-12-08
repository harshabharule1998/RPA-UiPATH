use rpa

create table person(
PersonID int,
Name varchar(255),
Location varchar(255)
);

select * from person
insert into person(PersonID, Name, Location) values (1, 'harsha','jalgaon')

insert into person(PersonID, Name, Location) values (2, 'bhavana','pune')
insert into person(PersonID, Name, Location) values (3, 'nayan','dhule')
insert into person(PersonID, Name, Location) values (4, 'priya','nashik')


create procedure getPersonData
as 
begin
select * from person
end


exec getPersonData 
_____________________________________________________________________________________________

________________________________________________________________________________
create table emp(
id int,
fname varchar(255),
lname varchar(255)
);

insert into emp values(1,'vikas','deshmukh')
insert into emp values(2,'ravi','patil')
insert into emp values(3,'gita','sonavne')

__________________________________________________________
OUT parameter in Stored Procedure  
______________________________________________________
alter proc GetEmpById(@id int,@EmpName varchar(50) output)
as
begin
select @EmpName=fname +' '+lname from emp where id=@id
end

declare @EmpName varchar(50)
exec GetEmpById 2,@EmpName out
Print @EmpName
______________________________________________________________________________

create table inoutExample(val int)

insert into inoutExample values(1)

select * from inoutExample

create procedure incrementValBy
@incrementedValue int in out
as
begin 
  update inoutExample set @incrementedValue=@incrementedValue+5
  end 

declare @incrementedValue int
exec incrementValBy1 2
print @incrementedValue

utInt
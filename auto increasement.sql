create table Persons1(
 ID int identity(1,1) primary key,
 LastName varchar(255) not null,
 FirstName varchar(255),
 Age int
)
insert into Persons1(LastName,FirstName,Age) values('Nguyen','Heidy',20)
select * From Persons1
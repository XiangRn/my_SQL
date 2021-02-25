create table Persons
(
  id int not null,
  LastName varchar(255) not null,
  FirstName varchar(255),
  Age int check(Age>=18),
)
create table PrDucts
(
 Id int,
 Name nvarchar(40),
 Price decimal
)
--thêm constraint check mà chưa thêm trực tiếp khi tạo bảng
alter table PrDucts
add constraint CK_Price check(Price>0)
insert into PrDucts values(1,'Product A',0)
insert into PrDucts values(2,'Product B',1)
update PrDucts set Price =1 where Id=1
insert into Persons values(1,'Heidy','Wang',20)
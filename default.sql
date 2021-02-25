drop table Person
-- nó sự thêm giá trị mặc định khi mình không nhập giá trị cột đó
create table Person
(
  Id int not null,
  LastName varchar(255) not null,
  FirstName varchar(255),
  Age int,
  City varchar(255) default 'Sandnes'
)
insert into Person(Id, LastName, FirstName, Age)
values(1,'Nguyen','Heidy',21)
select * From Person
-- print ra ngày hiện tại
select Getdate();
create table Orders_1
(
  Id int not null,
  OrderNumber int not null,
  OrderDate date,
)
--nếu constraint không add trực tiếp vào lúc tạo bảng
--thì có thể thêm constaint lúc sửa bảng
alter table Orders_1
add constraint DF_OrderDATE default getdate()
for OrderDate
insert into Orders_1(Id,OrderNumber) values(1,111)
select * from Orders_1
--drop constraint
alter table Orders_1
drop constraint DF_OrderDATE
insert into Orders_1(Id,OrderNumber) values(2,111)
select * from Orders_1
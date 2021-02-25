drop table OrderDetails1
create table OrderDetails1
(
  OrderId int foreign key references Orders1(OrderId),
  ProductId int,
  Quantity int,
  Price decimal,
  constraint PK_OrderDetails1_OrderId_ProductId primary key(OrderId, ProductId)

)
create table Orders1
(
  OrderId int primary key,
  CreatedDate datetime,
  CustomerId int,

)
--thêm khóa ngoại
alter table OrderDetails1
add foreign key (OrderId) references Orders1(OrderId)
--xóa khóa ngoại
alter table OrderDetails1
drop constraint FK__OrderDeta__Order__6E01572D
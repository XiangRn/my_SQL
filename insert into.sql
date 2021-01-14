insert into Customers VALUES(7,'Name 1','Contact Name 1','Address 1','City 1','10000','Country 1');
--không muốn add hết các cột mà chỉ muốn add vài cột thôi
--ví dụ add 2 cột
insert into Customers(CustomerId,CustomerName) VALUES(8,'Name 2')
--muốn add nhiều giá trị cùng 1 lúc
insert into Customers(CustomerId,CustomerName) values(9,'Name 3'),(10,'Name 4')
select * from Customers
select * from Products
select * from Products1
--add một tập của bảng Products1 sang bảng Products(insert 1 tập sang 1 bảng khác)
insert into Products(ProductId, ProductName )
select ProductId, ProductName from Products1
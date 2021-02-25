select * from Products where ProductId=1
select * from PrDucts where Id=1
alter table Products
drop constraint PK__Products__B40CC6CDF712D5F7
--tạo index
create clustered index IX_Products_Id
on Products(ProductId)
--drop index
drop index IX_Products_Id
on Products
--tạo nonclustered index
create nonclustered index IX_Products_NamePrice
on Products(ProductName,Price)
--select sử dụng nonclustered index
select * From Products where ProductName='Chais' and Price=18 
drop index IX_Products_NamePrice
on Products
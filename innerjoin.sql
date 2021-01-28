create table Categories
(
	Id int primary key,
	Name nvarchar(50)
)
insert into Categories values(1,'Kitchen');
insert into Categories values(2,'Living Room');
select * from Categories
--khi làm việc với nhiều cột trở lên, tên cột phải gắn kèm với tên bảng alias
--dữ liệu phải tồn tại trong cả 3 bảng thì nó mới chạy
--select p.ProductId,p.ProductName,p.Unit,c.Name as CategorieName,s.Name as SupplierName

select *
from Products  p  inner join Categories  c on p.CategoryId=c.Id
inner join Supplier s on s.Id=p.SupplierId
begin tran
delete from Categories where Id =1
delete from Supplier where Id =2
rollback
select * from Products

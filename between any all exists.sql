use Tedu
create table Supplier(
	Id int,
	Name nvarchar(50),
	Country nvarchar(50)
)

insert into Supplier values(1,'Suplier 1','Germany')
insert into Supplier values(2,'Suplier 2','France')
--print những country là germany and mexico
select * from Customers where Country in('Germany','Mexico')
--select ra 1 tập của 1 tập giá trị khác
select * from Customers where Country in (select Country from Supplier)
--between 
select * from Products where Price between 18 and 20
--lấy ra bảng suppler và cung cấp sp nhỏ hơn 20, exists keyword
select Name from Supplier where exists (select * from Products where Price between 18 and 20 and Supplier.Id=SupplierId)
create table OrderDetails
(
	Id int,
	OrderId int,
	ProductId int,
	Quantity int
)
insert into OrderDetails values(1,10248,11,12)
insert into OrderDetails values(2,10248,42,10)
insert into OrderDetails values(3,10248,72,5)
insert into OrderDetails values(4,10248,14,9)
insert into OrderDetails values(5,10248,51,40)
insert into OrderDetails values(6,10248,6,10)
select * from OrderDetails

--select ra những sp có hóa đơn số lượng là 10, any keyword
select * from Products where [Ma SP]=any(select ProductId from OrderDetails where Quantity in (10))


--select ra những sp có hóa đơn số lượng là 10, all keyword, all thì nó phải khớp tất cả các dữ liệu

select * from Products where [Ma SP]=all(select ProductId from OrderDetails where Quantity in (10))
update OrderDetails set ProductId = 6 where Id = 2

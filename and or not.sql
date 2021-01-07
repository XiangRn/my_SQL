use Tedu
select * from Customers
--toán tử and
select * from Customers where Country='Germany' and City='Berlin'
--toán tử or
select * from Customers where City='London' or Country='Sweden'
--toán tử not(select ra những country không phải là Mexico )
select * from Customers where not Country='Mexico'
--lấy ra những khách hàng nào mà có country là germany , nhưng lại có city là berlin hoặc là Munich

select * from Customers where Country='Germany' and(City ='Berlin' or City='Munich')

insert into Customers values(6,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Munich',' S-958 22','Germany')


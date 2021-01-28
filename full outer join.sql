select * from Customers
select * from Orders
--full outer join
select * from Customers c full join Orders o on c.CustomerId=o.CustomerId
--left outter join
select * from Customers c left join Orders o on c.CustomerId=o.CustomerId
--right outer join
select * from Customers c right join Orders o on c.CustomerId=o.CustomerId
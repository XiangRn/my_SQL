select * from Customers
select Country, Count(*) from Customers
group by Country
having COUNT(CustomerId)>1

select 
s.ShipperName,count(o.OrderID) as NumberOfOrders 
from Orders o 
left join Shippers s on o.ShipperID = s.ShipperID
group by s.ShipperName 
having COUNT(o.OrderID) > 0
order by count(o.OrderID) desc
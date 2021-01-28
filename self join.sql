--self join là so sánh cùng một bảng nhưng chưa thành 2 alias
select c1.CustomerName as Name1,c2.CustomerName as Name2 from Customers c1, Customers c2
where c1.City=c2.City and c1.CustomerId <>c2.CustomerId
order by Name2
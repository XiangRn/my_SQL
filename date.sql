select * from Orders
alter table Orders
alter column OrderDate date
insert into Orders values(2,3,2,GETDATE(),2,1300)
select * from Orders where OrderDate in(CAST( GETDATE() AS Date ))
select getdate(),dateadd(day,365,getdate())
select getdate(),dateadd(month,3,getdate())
--datediff tính số lượng ngày, tháng năm, phút giây
select datediff(month,GETDATE(),'2021-05-01')
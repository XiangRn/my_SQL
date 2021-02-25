declare @i int =0, @n int =10
while(@i<@n)
begin
  print @i
  set @i+=1
end
declare @j int =0
declare @m int
select @m= count(*) from Products
while(@j<@m)
begin
  declare @productname_price varchar(max)=''
  select @productname_price= ProductName + char(09)+ cast(Price as varchar(max)) +char(13) from Products where ProductId=@j+1
  print @productname_price
  set @j+=1
end

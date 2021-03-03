select * from Products

declare ProductsCursor cursor for select ProductId, ProductName from Products
open ProductsCursor
  declare @ProductName varchar(max), @Id int
  fetch next from ProductsCursor into @Id, @ProductName
  while @@FETCH_STATUS=0
  begin
  	select @ProductName=ProductName from Products where ProductId = @Id 	
  while @@FETCH_STATUS=0
  begin
    declare @Name varchar(max),@Unit varchar(max), @Id2 int
	select @Name=ProductName, @Unit=unit, @Id2=ProductId from Products where ProductId <> @Id
	if(@ProductName=@Name and @Unit is not NULL)
	begin
	begin tran
	update Products set Unit=@Unit where ProductId=@Id
 	end
	break
  end
  fetch next from ProductsCursor into @Id, @ProductName
  end
close ProductsCursor
deallocate ProductsCursor

rollback
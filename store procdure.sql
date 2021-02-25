--tạo procedure
create proc usp_MakeOrder
as--as có nghĩa là là toàn bộ thân của procedure đều nằm trong begin end
  begin
   insert into Orders_1 values(3,111,GETDATE())
   update PrDucts set Quantity -=1 where Id=1
  end
exec usp_MakeOrder-- số dòng trả về của usp_MakeOrder
--sửa procedured(có thể alter bao nhiêu lần cũng được)
alter proc usp_MakeOrder
@productId int,-- tạo biến cho procdure
@orderId int
as--as có nghĩa là là toàn bộ thân của procedure đều nằm trong begin end
  begin
  set nocount on;--không có kết quả trả về
   insert into Orders_1 values(@orderId,111,GETDATE())
   update PrDucts set Quantity -=1 where Id=1
  end
exec usp_MakeOrder 2 ,3
--xóa proc
drop proc usp_MakeOrder
--tạo proc phân trang
alter proc GetStudentPaging
@pageIndex int,
@pageSize int,
@totalRow int output
as
 begin
 select @totalRow = count(*)from Student
 select * from (
  select RowName= Row_number() over (order by Id),* from Student) as a
  where RowName>(@pageSize*(@pageIndex-1))and RowName<=(@pageSize*(@pageIndex))
 end
 declare @totalRow int;
 exec GetStudentPaging 2,2, @totalRow output;
 select @totalRow
